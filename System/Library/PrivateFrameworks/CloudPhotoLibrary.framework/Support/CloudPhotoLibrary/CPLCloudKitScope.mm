@interface CPLCloudKitScope
+ (id)descriptionForCloudKitScopeOptions:(int64_t)a3;
+ (id)scopeFromTransportScope:(id)a3;
- (BOOL)isCoherent;
- (CPLCloudKitScope)fixedCloudKitScope;
- (CPLCloudKitScope)initWithCoder:(id)a3;
- (CPLCloudKitScope)initWithZone:(id)a3;
- (CPLCloudKitScope)initWithZone:(id)a3 options:(int64_t)a4;
- (CPLCloudKitScope)initWithZoneID:(id)a3;
- (CPLCloudKitScope)initWithZoneID:(id)a3 currentUserID:(id)a4;
- (CPLCloudKitScope)initWithZoneID:(id)a3 options:(int64_t)a4;
- (id)description;
- (id)recordIDWithRecordName:(id)a3;
- (int64_t)databaseScope;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLCloudKitScope

+ (id)descriptionForCloudKitScopeOptions:(int64_t)a3
{
  if (qword_1002C5218 == -1)
  {
    if (a3)
    {
LABEL_3:
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = a3;
      v4 = objc_alloc_init(NSMutableArray);
      v5 = qword_1002C5210;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10005A224;
      v11[3] = &unk_100274BE0;
      v13 = &v15;
      v14 = a3;
      v6 = v4;
      v12 = v6;
      [v5 enumerateKeysAndObjectsUsingBlock:v11];
      if (v16[3])
      {
        v7 = [NSString alloc];
        v8 = [v6 componentsJoinedByString:@"|"];
        v9 = [v7 initWithFormat:@"%@|???(0x%lx)", v8, v16[3]];
      }

      else
      {
        v9 = [v6 componentsJoinedByString:@"|"];
      }

      _Block_object_dispose(&v15, 8);
      goto LABEL_9;
    }
  }

  else
  {
    sub_10019E48C();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = @"none";
LABEL_9:

  return v9;
}

- (CPLCloudKitScope)initWithZone:(id)a3 options:(int64_t)a4
{
  v8 = a3;
  v21.receiver = self;
  v21.super_class = CPLCloudKitScope;
  v9 = [(CPLCloudKitScope *)&v21 init];
  if (v9)
  {
    v10 = [v8 zoneID];
    if (!v10)
    {
      sub_10019E614(a2, v9);
    }

    v11 = v10;
    v12 = [v10 databaseScope];
    if (v12 == 2)
    {
      v18 = [v11 ownerName];
      v19 = [v18 isEqualToString:CKCurrentUserDefaultName];

      if ((v19 & 1) == 0)
      {
        sub_10019E4A0(a2, v9, v11);
      }
    }

    else if (v12 == 3)
    {
      v13 = [v11 ownerName];
      v14 = [v13 isEqualToString:CKCurrentUserDefaultName];

      if (v14)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v15 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v23 = v11;
            v24 = 2112;
            v25 = CKCurrentUserDefaultName;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Found %@ in shared database with %@ as owner name", buf, 0x16u);
          }
        }

        v16 = +[NSAssertionHandler currentHandler];
        v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitScope.m"];
        [v16 handleFailureInMethod:a2 object:v9 file:v17 lineNumber:77 description:{@"Found %@ in shared database with %@ as owner name", v11, CKCurrentUserDefaultName}];

        abort();
      }
    }

    else if (v12 == 1)
    {
      sub_10019E58C(a2, v9, v11);
    }

    objc_storeStrong(&v9->_zone, a3);
    v9->_options = a4;
  }

  return v9;
}

- (CPLCloudKitScope)initWithZoneID:(id)a3 options:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    sub_10019E6D0(a2, self);
  }

  v8 = v7;
  v9 = [[CKRecordZone alloc] initWithZoneID:v7];
  v10 = [(CPLCloudKitScope *)self initWithZone:v9 options:a4];

  return v10;
}

- (CPLCloudKitScope)initWithZoneID:(id)a3 currentUserID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 ownerName];
  v9 = [v7 recordName];

  if ([v8 isEqualToString:v9])
  {
    sub_10019E78C(v6, &v13);
    v10 = 0;
    v6 = v13;
  }

  else if ([v8 isEqualToString:CKCurrentUserDefaultName])
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  v11 = [(CPLCloudKitScope *)self initWithZoneID:v6 options:v10];

  return v11;
}

- (CPLCloudKitScope)initWithZone:(id)a3
{
  v4 = a3;
  v5 = [v4 zoneID];
  v6 = [v5 ownerName];
  v7 = [v6 isEqualToString:CKCurrentUserDefaultName];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  v9 = [(CPLCloudKitScope *)self initWithZone:v4 options:v8];

  return v9;
}

- (CPLCloudKitScope)initWithZoneID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_10019E8A4(a2, self);
  }

  v6 = v5;
  v7 = [[CKRecordZone alloc] initWithZoneID:v5];
  v8 = [(CPLCloudKitScope *)self initWithZone:v7];

  return v8;
}

- (CPLCloudKitScope)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPLCloudKitScope;
  v5 = [(CPLCloudKitScope *)&v10 init];
  if (v5 && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"z"], v6 = objc_claimAutoreleasedReturnValue(), zone = v5->_zone, v5->_zone = v6, zone, v5->_options = objc_msgSend(v4, "decodeIntegerForKey:", @"o"), !v5->_zone))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  zone = self->_zone;
  v5 = a3;
  [v5 encodeObject:zone forKey:@"z"];
  [v5 encodeInteger:self->_options forKey:@"o"];
}

+ (id)scopeFromTransportScope:(id)a3
{
  v3 = a3;
  if (qword_1002C5228 != -1)
  {
    sub_10019E960();
  }

  v4 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v3 classes:qword_1002C5220];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CPLCloudKitScope *)v5 zoneID];

      if (v6)
      {
        v7 = [(CPLCloudKitScope *)v5 zoneID];
        v8 = [v7 ownerName];
        v9 = [v8 isEqualToString:CKCurrentUserDefaultName];

        if (v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = 2;
        }

        v4 = [[CPLCloudKitScope alloc] initWithZone:v5 options:v10];
      }

      else
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          sub_10019E974(v5);
        }

        v4 = 0;
      }
    }
  }

  return v4;
}

- (int64_t)databaseScope
{
  if (([(CPLCloudKitScope *)self options]& 2) != 0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)recordIDWithRecordName:(id)a3
{
  v4 = a3;
  v5 = [CKRecordID alloc];
  v6 = [(CKRecordZone *)self->_zone zoneID];
  v7 = [v5 initWithRecordName:v4 zoneID:v6];

  return v7;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(CPLCloudKitScope *)self zoneID];
  v6 = [v5 cpl_zoneName];
  v7 = [objc_opt_class() descriptionForCloudKitScopeOptions:self->_options];
  v8 = [v3 initWithFormat:@"<%@ %@ (%@)>", v4, v6, v7];

  return v8;
}

- (CPLCloudKitScope)fixedCloudKitScope
{
  v3 = [(CPLCloudKitScope *)self zoneID];
  v4 = v3;
  if (v3 && [v3 databaseScope] && (v5 = objc_msgSend(v4, "databaseScope"), v5 != -[CPLCloudKitScope databaseScope](self, "databaseScope")))
  {
    v8 = [CKRecordZoneID alloc];
    v9 = [v4 zoneName];
    v10 = [v4 ownerName];
    v11 = [v8 initWithZoneName:v9 ownerName:v10];

    v6 = [[CPLCloudKitScope alloc] initWithZoneID:v11 options:[(CPLCloudKitScope *)self options]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isCoherent
{
  v3 = [(CPLCloudKitScope *)self zoneID];
  v4 = v3;
  v6 = 1;
  if (v3)
  {
    if ([v3 databaseScope])
    {
      v5 = [v4 databaseScope];
      if (v5 != [(CPLCloudKitScope *)self databaseScope])
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

@end