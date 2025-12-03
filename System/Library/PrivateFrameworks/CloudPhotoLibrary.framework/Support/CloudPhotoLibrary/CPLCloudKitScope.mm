@interface CPLCloudKitScope
+ (id)descriptionForCloudKitScopeOptions:(int64_t)options;
+ (id)scopeFromTransportScope:(id)scope;
- (BOOL)isCoherent;
- (CPLCloudKitScope)fixedCloudKitScope;
- (CPLCloudKitScope)initWithCoder:(id)coder;
- (CPLCloudKitScope)initWithZone:(id)zone;
- (CPLCloudKitScope)initWithZone:(id)zone options:(int64_t)options;
- (CPLCloudKitScope)initWithZoneID:(id)d;
- (CPLCloudKitScope)initWithZoneID:(id)d currentUserID:(id)iD;
- (CPLCloudKitScope)initWithZoneID:(id)d options:(int64_t)options;
- (id)description;
- (id)recordIDWithRecordName:(id)name;
- (int64_t)databaseScope;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLCloudKitScope

+ (id)descriptionForCloudKitScopeOptions:(int64_t)options
{
  if (qword_1002C5218 == -1)
  {
    if (options)
    {
LABEL_3:
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      optionsCopy = options;
      v4 = objc_alloc_init(NSMutableArray);
      v5 = qword_1002C5210;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10005A224;
      v11[3] = &unk_100274BE0;
      v13 = &v15;
      optionsCopy2 = options;
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
    if (options)
    {
      goto LABEL_3;
    }
  }

  v9 = @"none";
LABEL_9:

  return v9;
}

- (CPLCloudKitScope)initWithZone:(id)zone options:(int64_t)options
{
  zoneCopy = zone;
  v21.receiver = self;
  v21.super_class = CPLCloudKitScope;
  v9 = [(CPLCloudKitScope *)&v21 init];
  if (v9)
  {
    zoneID = [zoneCopy zoneID];
    if (!zoneID)
    {
      sub_10019E614(a2, v9);
    }

    v11 = zoneID;
    databaseScope = [zoneID databaseScope];
    if (databaseScope == 2)
    {
      ownerName = [v11 ownerName];
      v19 = [ownerName isEqualToString:CKCurrentUserDefaultName];

      if ((v19 & 1) == 0)
      {
        sub_10019E4A0(a2, v9, v11);
      }
    }

    else if (databaseScope == 3)
    {
      ownerName2 = [v11 ownerName];
      v14 = [ownerName2 isEqualToString:CKCurrentUserDefaultName];

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

    else if (databaseScope == 1)
    {
      sub_10019E58C(a2, v9, v11);
    }

    objc_storeStrong(&v9->_zone, zone);
    v9->_options = options;
  }

  return v9;
}

- (CPLCloudKitScope)initWithZoneID:(id)d options:(int64_t)options
{
  dCopy = d;
  if (!dCopy)
  {
    sub_10019E6D0(a2, self);
  }

  v8 = dCopy;
  v9 = [[CKRecordZone alloc] initWithZoneID:dCopy];
  v10 = [(CPLCloudKitScope *)self initWithZone:v9 options:options];

  return v10;
}

- (CPLCloudKitScope)initWithZoneID:(id)d currentUserID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  ownerName = [dCopy ownerName];
  recordName = [iDCopy recordName];

  if ([ownerName isEqualToString:recordName])
  {
    sub_10019E78C(dCopy, &v13);
    v10 = 0;
    dCopy = v13;
  }

  else if ([ownerName isEqualToString:CKCurrentUserDefaultName])
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  v11 = [(CPLCloudKitScope *)self initWithZoneID:dCopy options:v10];

  return v11;
}

- (CPLCloudKitScope)initWithZone:(id)zone
{
  zoneCopy = zone;
  zoneID = [zoneCopy zoneID];
  ownerName = [zoneID ownerName];
  v7 = [ownerName isEqualToString:CKCurrentUserDefaultName];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  v9 = [(CPLCloudKitScope *)self initWithZone:zoneCopy options:v8];

  return v9;
}

- (CPLCloudKitScope)initWithZoneID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    sub_10019E8A4(a2, self);
  }

  v6 = dCopy;
  v7 = [[CKRecordZone alloc] initWithZoneID:dCopy];
  v8 = [(CPLCloudKitScope *)self initWithZone:v7];

  return v8;
}

- (CPLCloudKitScope)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CPLCloudKitScope;
  v5 = [(CPLCloudKitScope *)&v10 init];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"z"], v6 = objc_claimAutoreleasedReturnValue(), zone = v5->_zone, v5->_zone = v6, zone, v5->_options = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"o"), !v5->_zone))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  zone = self->_zone;
  coderCopy = coder;
  [coderCopy encodeObject:zone forKey:@"z"];
  [coderCopy encodeInteger:self->_options forKey:@"o"];
}

+ (id)scopeFromTransportScope:(id)scope
{
  scopeCopy = scope;
  if (qword_1002C5228 != -1)
  {
    sub_10019E960();
  }

  v4 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:scopeCopy classes:qword_1002C5220];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      zoneID = [(CPLCloudKitScope *)v5 zoneID];

      if (zoneID)
      {
        zoneID2 = [(CPLCloudKitScope *)v5 zoneID];
        ownerName = [zoneID2 ownerName];
        v9 = [ownerName isEqualToString:CKCurrentUserDefaultName];

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

- (id)recordIDWithRecordName:(id)name
{
  nameCopy = name;
  v5 = [CKRecordID alloc];
  zoneID = [(CKRecordZone *)self->_zone zoneID];
  v7 = [v5 initWithRecordName:nameCopy zoneID:zoneID];

  return v7;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  zoneID = [(CPLCloudKitScope *)self zoneID];
  cpl_zoneName = [zoneID cpl_zoneName];
  v7 = [objc_opt_class() descriptionForCloudKitScopeOptions:self->_options];
  v8 = [v3 initWithFormat:@"<%@ %@ (%@)>", v4, cpl_zoneName, v7];

  return v8;
}

- (CPLCloudKitScope)fixedCloudKitScope
{
  zoneID = [(CPLCloudKitScope *)self zoneID];
  v4 = zoneID;
  if (zoneID && [zoneID databaseScope] && (v5 = objc_msgSend(v4, "databaseScope"), v5 != -[CPLCloudKitScope databaseScope](self, "databaseScope")))
  {
    v8 = [CKRecordZoneID alloc];
    zoneName = [v4 zoneName];
    ownerName = [v4 ownerName];
    v11 = [v8 initWithZoneName:zoneName ownerName:ownerName];

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
  zoneID = [(CPLCloudKitScope *)self zoneID];
  v4 = zoneID;
  v6 = 1;
  if (zoneID)
  {
    if ([zoneID databaseScope])
    {
      databaseScope = [v4 databaseScope];
      if (databaseScope != [(CPLCloudKitScope *)self databaseScope])
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

@end