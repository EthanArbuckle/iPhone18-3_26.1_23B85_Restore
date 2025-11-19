@interface MSASAlbum
+ (MSASAlbum)albumWithAlbum:(id)a3;
+ (id)album;
- (BOOL)isEqual:(id)a3;
- (BOOL)useForeignCtag;
- (MSASAlbum)initWithCoder:(id)a3;
- (NSString)ownerEmail;
- (NSString)ownerFirstName;
- (NSString)ownerFullName;
- (NSString)ownerLastName;
- (id)description;
- (id)metadataValueForKey:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setMetadataValue:(id)a3 forKey:(id)a4;
@end

@implementation MSASAlbum

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v7.receiver = v2;
  v7.super_class = MSASAlbum;
  v3 = [(MSASAlbum *)&v7 description];
  v4 = [v3 mutableCopy];

  if (v2->_GUID)
  {
    [v4 appendFormat:@" GUID: %@", v2->_GUID];
  }

  if (_thePlatform && [_thePlatform shouldLogAtLevel:7])
  {
    if (v2->_ownerFullName && (os_trace_get_mode() & 0x1000000) != 0)
    {
      ownerEmail = v2->_ownerEmail;
      [v4 appendFormat:@" owner: %@ (%@ %@)", v2->_ownerFullName, ownerEmail, v2->_ownerPersonID];
    }

    [v4 appendFormat:@" owner is whitelisted: %d", v2->_ownerIsWhitelisted];
    if (v2->_subscriptionDate)
    {
      [v4 appendFormat:@" subscription date: %@", v2->_subscriptionDate];
    }

    if (v2->_ctag)
    {
      [v4 appendFormat:@" ctag: %@", v2->_ctag];
    }

    [v4 appendFormat:@" Relationship: %d", v2->_relationshipState];
    if (v2->_foreignCtag)
    {
      [v4 appendFormat:@" foreign ctag: %@", v2->_foreignCtag];
    }

    if (v2->_URLString)
    {
      [v4 appendFormat:@" URL: %@", v2->_URLString];
    }

    if ([(NSDictionary *)v2->_metadata count]&& (os_trace_get_mode() & 0x1000000) != 0)
    {
      [v4 appendFormat:@" metadata: %@", v2->_metadata];
    }

    if (v2->_publicURLString)
    {
      [v4 appendFormat:@" Public URL: %@", v2->_publicURLString];
    }

    if (v2->_isFamilySharedAlbum)
    {
      [v4 appendString:@" Family shared album"];
    }

    if (v2->_clientOrgKey)
    {
      [v4 appendFormat:@" client org key: %@", v2->_clientOrgKey];
    }
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v24 = a3;
  v4 = self;
  objc_sync_enter(v4);
  ownerPersonID = v4->_ownerPersonID;
  if (ownerPersonID)
  {
    [v24 encodeObject:ownerPersonID forKey:@"ownerPersonID"];
  }

  v6 = [(MSASAlbum *)v4 ownerFirstName];

  if (v6)
  {
    v7 = [(MSASAlbum *)v4 ownerFirstName];
    [v24 encodeObject:v7 forKey:@"ownerFirstName"];
  }

  v8 = [(MSASAlbum *)v4 ownerLastName];

  if (v8)
  {
    v9 = [(MSASAlbum *)v4 ownerLastName];
    [v24 encodeObject:v9 forKey:@"ownerLastName"];
  }

  v10 = [(MSASAlbum *)v4 ownerFullName];

  if (v10)
  {
    v11 = [(MSASAlbum *)v4 ownerFullName];
    [v24 encodeObject:v11 forKey:@"ownerFullName"];
  }

  v12 = [(MSASAlbum *)v4 ownerEmail];

  if (v12)
  {
    v13 = [(MSASAlbum *)v4 ownerEmail];
    [v24 encodeObject:v13 forKey:@"ownerEmail"];
  }

  v14 = [(MSASAlbum *)v4 subscriptionDate];

  if (v14)
  {
    v15 = [(MSASAlbum *)v4 subscriptionDate];
    [v24 encodeObject:v15 forKey:@"subscriptionDate"];
  }

  [v24 encodeBool:v4->_ownerIsWhitelisted forKey:@"ownerIsWhitelisted"];
  GUID = v4->_GUID;
  if (GUID)
  {
    [v24 encodeObject:GUID forKey:@"GUID"];
  }

  ctag = v4->_ctag;
  if (ctag)
  {
    [v24 encodeObject:ctag forKey:@"ctag"];
  }

  [v24 encodeInt:v4->_relationshipState forKey:@"relationshipState"];
  foreignCtag = v4->_foreignCtag;
  if (foreignCtag)
  {
    [v24 encodeObject:foreignCtag forKey:@"foreignCtag"];
  }

  URLString = v4->_URLString;
  if (URLString)
  {
    [v24 encodeObject:URLString forKey:@"urlString"];
  }

  metadata = v4->_metadata;
  if (metadata)
  {
    [v24 encodeObject:metadata forKey:@"metadata"];
  }

  context = v4->_context;
  if (context)
  {
    [v24 encodeObject:context forKey:@"context"];
  }

  publicURLString = v4->_publicURLString;
  if (publicURLString)
  {
    [v24 encodeObject:publicURLString forKey:@"publicURLString"];
  }

  [v24 encodeBool:v4->_isFamilySharedAlbum forKey:@"familySharedAlbum"];
  clientOrgKey = v4->_clientOrgKey;
  if (clientOrgKey)
  {
    [v24 encodeObject:clientOrgKey forKey:@"clientOrgKey"];
  }

  objc_sync_exit(v4);
}

- (MSASAlbum)initWithCoder:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = MSASAlbum;
  v5 = [(MSASAlbum *)&v46 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerEmail"];
    ownerEmail = v5->_ownerEmail;
    v5->_ownerEmail = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerPersonID"];
    ownerPersonID = v5->_ownerPersonID;
    v5->_ownerPersonID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerFullName"];
    ownerFullName = v5->_ownerFullName;
    v5->_ownerFullName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerFirstName"];
    ownerFirstName = v5->_ownerFirstName;
    v5->_ownerFirstName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerLastName"];
    ownerLastName = v5->_ownerLastName;
    v5->_ownerLastName = v14;

    v5->_ownerIsWhitelisted = [v4 decodeBoolForKey:@"ownerIsWhitelisted"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionDate"];
    subscriptionDate = v5->_subscriptionDate;
    v5->_subscriptionDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    GUID = v5->_GUID;
    v5->_GUID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ctag"];
    ctag = v5->_ctag;
    v5->_ctag = v20;

    v5->_relationshipState = [v4 decodeIntForKey:@"relationshipState"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foreignCtag"];
    foreignCtag = v5->_foreignCtag;
    v5->_foreignCtag = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urlString"];
    URLString = v5->_URLString;
    v5->_URLString = v24;

    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [v26 setWithObjects:{v27, v28, v29, v30, v31, v32, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v34;

    v36 = MEMORY[0x277CBEB98];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"context"];
    context = v5->_context;
    v5->_context = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicURLString"];
    publicURLString = v5->_publicURLString;
    v5->_publicURLString = v41;

    v5->_isFamilySharedAlbum = [v4 decodeBoolForKey:@"familySharedAlbum"];
    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientOrgKey"];
    clientOrgKey = v5->_clientOrgKey;
    v5->_clientOrgKey = v43;
  }

  return v5;
}

- (id)metadataValueForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MSASAlbum *)v5 metadata];
  v7 = [v6 objectForKey:v4];

  objc_sync_exit(v5);

  return v7;
}

- (void)setMetadataValue:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(MSASAlbum *)v7 metadata];
  if (v8)
  {
    v9 = [(MSASAlbum *)v7 metadata];
    v10 = [v9 mutableCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
  }

  if (v11)
  {
    [v10 setObject:v11 forKey:v6];
  }

  else
  {
    [v10 removeObjectForKey:v6];
  }

  [(MSASAlbum *)v7 setMetadata:v10];

  objc_sync_exit(v7);
}

- (BOOL)useForeignCtag
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MSASAlbum *)v2 relationshipState]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)hash
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSString *)v2->_GUID hash];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    GUID = v5->_GUID;
    v7 = [v4 GUID];
    v8 = [(NSString *)GUID isEqualToString:v7];
  }

  else
  {
    v10.receiver = v5;
    v10.super_class = MSASAlbum;
    v8 = [(MSASAlbum *)&v10 isEqual:v4];
  }

  objc_sync_exit(v5);

  return v8;
}

- (NSString)ownerEmail
{
  v2 = self;
  objc_sync_enter(v2);
  if (_thePlatform && !v2->_ownerEmail)
  {
    v3 = +[MSASPersonInfoManager sharedManager];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 emailForPersonID:v2->_ownerPersonID];
      if (v5)
      {
        objc_storeStrong(&v2->_ownerEmail, v5);
      }
    }
  }

  v6 = v2->_ownerEmail;
  objc_sync_exit(v2);

  return v6;
}

- (NSString)ownerLastName
{
  v2 = self;
  objc_sync_enter(v2);
  if (_thePlatform && !v2->_ownerLastName)
  {
    v3 = +[MSASPersonInfoManager sharedManager];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 lastNameForPersonID:v2->_ownerPersonID];
      if (v5)
      {
        objc_storeStrong(&v2->_ownerLastName, v5);
      }
    }
  }

  v6 = v2->_ownerLastName;
  objc_sync_exit(v2);

  return v6;
}

- (NSString)ownerFirstName
{
  v2 = self;
  objc_sync_enter(v2);
  if (_thePlatform && !v2->_ownerFirstName)
  {
    v3 = +[MSASPersonInfoManager sharedManager];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 firstNameForPersonID:v2->_ownerPersonID];
      if (v5)
      {
        objc_storeStrong(&v2->_ownerFirstName, v5);
      }
    }
  }

  v6 = v2->_ownerFirstName;
  objc_sync_exit(v2);

  return v6;
}

- (NSString)ownerFullName
{
  v2 = self;
  objc_sync_enter(v2);
  if (_thePlatform && !v2->_ownerFullName)
  {
    v3 = +[MSASPersonInfoManager sharedManager];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 fullNameForPersonID:v2->_ownerPersonID];
      if (v5)
      {
        objc_storeStrong(&v2->_ownerFullName, v5);
      }
    }
  }

  v6 = v2->_ownerFullName;
  objc_sync_exit(v2);

  return v6;
}

+ (MSASAlbum)albumWithAlbum:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSASAlbum);
  v5 = [v3 ownerEmail];
  [(MSASAlbum *)v4 setOwnerEmail:v5];

  v6 = [v3 ownerPersonID];
  [(MSASAlbum *)v4 setOwnerPersonID:v6];

  v7 = [v3 ownerFullName];
  [(MSASAlbum *)v4 setOwnerFullName:v7];

  v8 = [v3 ownerFirstName];
  [(MSASAlbum *)v4 setOwnerFirstName:v8];

  v9 = [v3 ownerLastName];
  [(MSASAlbum *)v4 setOwnerLastName:v9];

  -[MSASAlbum setOwnerIsWhitelisted:](v4, "setOwnerIsWhitelisted:", [v3 ownerIsWhitelisted]);
  v10 = [v3 subscriptionDate];
  [(MSASAlbum *)v4 setSubscriptionDate:v10];

  v11 = [v3 GUID];
  [(MSASAlbum *)v4 setGUID:v11];

  v12 = [v3 ctag];
  [(MSASAlbum *)v4 setCtag:v12];

  -[MSASAlbum setRelationshipState:](v4, "setRelationshipState:", [v3 relationshipState]);
  v13 = [v3 foreignCtag];
  [(MSASAlbum *)v4 setForeignCtag:v13];

  v14 = [v3 URLString];
  [(MSASAlbum *)v4 setURLString:v14];

  v15 = [v3 metadata];
  [(MSASAlbum *)v4 setMetadata:v15];

  v16 = [v3 context];
  [(MSASAlbum *)v4 setContext:v16];

  -[MSASAlbum setIsFamilySharedAlbum:](v4, "setIsFamilySharedAlbum:", [v3 isFamilySharedAlbum]);
  v17 = [v3 clientOrgKey];

  [(MSASAlbum *)v4 setClientOrgKey:v17];

  return v4;
}

+ (id)album
{
  v2 = objc_alloc_init(MSASAlbum);

  return v2;
}

@end