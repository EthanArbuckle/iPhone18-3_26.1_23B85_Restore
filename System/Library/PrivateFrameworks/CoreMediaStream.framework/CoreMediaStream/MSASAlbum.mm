@interface MSASAlbum
+ (MSASAlbum)albumWithAlbum:(id)album;
+ (id)album;
- (BOOL)isEqual:(id)equal;
- (BOOL)useForeignCtag;
- (MSASAlbum)initWithCoder:(id)coder;
- (NSString)ownerEmail;
- (NSString)ownerFirstName;
- (NSString)ownerFullName;
- (NSString)ownerLastName;
- (id)description;
- (id)metadataValueForKey:(id)key;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setMetadataValue:(id)value forKey:(id)key;
@end

@implementation MSASAlbum

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7.receiver = selfCopy;
  v7.super_class = MSASAlbum;
  v3 = [(MSASAlbum *)&v7 description];
  v4 = [v3 mutableCopy];

  if (selfCopy->_GUID)
  {
    [v4 appendFormat:@" GUID: %@", selfCopy->_GUID];
  }

  if (_thePlatform && [_thePlatform shouldLogAtLevel:7])
  {
    if (selfCopy->_ownerFullName && (os_trace_get_mode() & 0x1000000) != 0)
    {
      ownerEmail = selfCopy->_ownerEmail;
      [v4 appendFormat:@" owner: %@ (%@ %@)", selfCopy->_ownerFullName, ownerEmail, selfCopy->_ownerPersonID];
    }

    [v4 appendFormat:@" owner is whitelisted: %d", selfCopy->_ownerIsWhitelisted];
    if (selfCopy->_subscriptionDate)
    {
      [v4 appendFormat:@" subscription date: %@", selfCopy->_subscriptionDate];
    }

    if (selfCopy->_ctag)
    {
      [v4 appendFormat:@" ctag: %@", selfCopy->_ctag];
    }

    [v4 appendFormat:@" Relationship: %d", selfCopy->_relationshipState];
    if (selfCopy->_foreignCtag)
    {
      [v4 appendFormat:@" foreign ctag: %@", selfCopy->_foreignCtag];
    }

    if (selfCopy->_URLString)
    {
      [v4 appendFormat:@" URL: %@", selfCopy->_URLString];
    }

    if ([(NSDictionary *)selfCopy->_metadata count]&& (os_trace_get_mode() & 0x1000000) != 0)
    {
      [v4 appendFormat:@" metadata: %@", selfCopy->_metadata];
    }

    if (selfCopy->_publicURLString)
    {
      [v4 appendFormat:@" Public URL: %@", selfCopy->_publicURLString];
    }

    if (selfCopy->_isFamilySharedAlbum)
    {
      [v4 appendString:@" Family shared album"];
    }

    if (selfCopy->_clientOrgKey)
    {
      [v4 appendFormat:@" client org key: %@", selfCopy->_clientOrgKey];
    }
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ownerPersonID = selfCopy->_ownerPersonID;
  if (ownerPersonID)
  {
    [coderCopy encodeObject:ownerPersonID forKey:@"ownerPersonID"];
  }

  ownerFirstName = [(MSASAlbum *)selfCopy ownerFirstName];

  if (ownerFirstName)
  {
    ownerFirstName2 = [(MSASAlbum *)selfCopy ownerFirstName];
    [coderCopy encodeObject:ownerFirstName2 forKey:@"ownerFirstName"];
  }

  ownerLastName = [(MSASAlbum *)selfCopy ownerLastName];

  if (ownerLastName)
  {
    ownerLastName2 = [(MSASAlbum *)selfCopy ownerLastName];
    [coderCopy encodeObject:ownerLastName2 forKey:@"ownerLastName"];
  }

  ownerFullName = [(MSASAlbum *)selfCopy ownerFullName];

  if (ownerFullName)
  {
    ownerFullName2 = [(MSASAlbum *)selfCopy ownerFullName];
    [coderCopy encodeObject:ownerFullName2 forKey:@"ownerFullName"];
  }

  ownerEmail = [(MSASAlbum *)selfCopy ownerEmail];

  if (ownerEmail)
  {
    ownerEmail2 = [(MSASAlbum *)selfCopy ownerEmail];
    [coderCopy encodeObject:ownerEmail2 forKey:@"ownerEmail"];
  }

  subscriptionDate = [(MSASAlbum *)selfCopy subscriptionDate];

  if (subscriptionDate)
  {
    subscriptionDate2 = [(MSASAlbum *)selfCopy subscriptionDate];
    [coderCopy encodeObject:subscriptionDate2 forKey:@"subscriptionDate"];
  }

  [coderCopy encodeBool:selfCopy->_ownerIsWhitelisted forKey:@"ownerIsWhitelisted"];
  GUID = selfCopy->_GUID;
  if (GUID)
  {
    [coderCopy encodeObject:GUID forKey:@"GUID"];
  }

  ctag = selfCopy->_ctag;
  if (ctag)
  {
    [coderCopy encodeObject:ctag forKey:@"ctag"];
  }

  [coderCopy encodeInt:selfCopy->_relationshipState forKey:@"relationshipState"];
  foreignCtag = selfCopy->_foreignCtag;
  if (foreignCtag)
  {
    [coderCopy encodeObject:foreignCtag forKey:@"foreignCtag"];
  }

  URLString = selfCopy->_URLString;
  if (URLString)
  {
    [coderCopy encodeObject:URLString forKey:@"urlString"];
  }

  metadata = selfCopy->_metadata;
  if (metadata)
  {
    [coderCopy encodeObject:metadata forKey:@"metadata"];
  }

  context = selfCopy->_context;
  if (context)
  {
    [coderCopy encodeObject:context forKey:@"context"];
  }

  publicURLString = selfCopy->_publicURLString;
  if (publicURLString)
  {
    [coderCopy encodeObject:publicURLString forKey:@"publicURLString"];
  }

  [coderCopy encodeBool:selfCopy->_isFamilySharedAlbum forKey:@"familySharedAlbum"];
  clientOrgKey = selfCopy->_clientOrgKey;
  if (clientOrgKey)
  {
    [coderCopy encodeObject:clientOrgKey forKey:@"clientOrgKey"];
  }

  objc_sync_exit(selfCopy);
}

- (MSASAlbum)initWithCoder:(id)coder
{
  coderCopy = coder;
  v46.receiver = self;
  v46.super_class = MSASAlbum;
  v5 = [(MSASAlbum *)&v46 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerEmail"];
    ownerEmail = v5->_ownerEmail;
    v5->_ownerEmail = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerPersonID"];
    ownerPersonID = v5->_ownerPersonID;
    v5->_ownerPersonID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerFullName"];
    ownerFullName = v5->_ownerFullName;
    v5->_ownerFullName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerFirstName"];
    ownerFirstName = v5->_ownerFirstName;
    v5->_ownerFirstName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerLastName"];
    ownerLastName = v5->_ownerLastName;
    v5->_ownerLastName = v14;

    v5->_ownerIsWhitelisted = [coderCopy decodeBoolForKey:@"ownerIsWhitelisted"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionDate"];
    subscriptionDate = v5->_subscriptionDate;
    v5->_subscriptionDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    GUID = v5->_GUID;
    v5->_GUID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ctag"];
    ctag = v5->_ctag;
    v5->_ctag = v20;

    v5->_relationshipState = [coderCopy decodeIntForKey:@"relationshipState"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foreignCtag"];
    foreignCtag = v5->_foreignCtag;
    v5->_foreignCtag = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlString"];
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
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v34;

    v36 = MEMORY[0x277CBEB98];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"context"];
    context = v5->_context;
    v5->_context = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicURLString"];
    publicURLString = v5->_publicURLString;
    v5->_publicURLString = v41;

    v5->_isFamilySharedAlbum = [coderCopy decodeBoolForKey:@"familySharedAlbum"];
    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientOrgKey"];
    clientOrgKey = v5->_clientOrgKey;
    v5->_clientOrgKey = v43;
  }

  return v5;
}

- (id)metadataValueForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metadata = [(MSASAlbum *)selfCopy metadata];
  v7 = [metadata objectForKey:keyCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setMetadataValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metadata = [(MSASAlbum *)selfCopy metadata];
  if (metadata)
  {
    metadata2 = [(MSASAlbum *)selfCopy metadata];
    dictionary = [metadata2 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  if (valueCopy)
  {
    [dictionary setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    [dictionary removeObjectForKey:keyCopy];
  }

  [(MSASAlbum *)selfCopy setMetadata:dictionary];

  objc_sync_exit(selfCopy);
}

- (BOOL)useForeignCtag
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(MSASAlbum *)selfCopy relationshipState]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)hash
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_GUID hash];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    GUID = selfCopy->_GUID;
    gUID = [equalCopy GUID];
    v8 = [(NSString *)GUID isEqualToString:gUID];
  }

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = MSASAlbum;
    v8 = [(MSASAlbum *)&v10 isEqual:equalCopy];
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (NSString)ownerEmail
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_thePlatform && !selfCopy->_ownerEmail)
  {
    v3 = +[MSASPersonInfoManager sharedManager];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 emailForPersonID:selfCopy->_ownerPersonID];
      if (v5)
      {
        objc_storeStrong(&selfCopy->_ownerEmail, v5);
      }
    }
  }

  v6 = selfCopy->_ownerEmail;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSString)ownerLastName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_thePlatform && !selfCopy->_ownerLastName)
  {
    v3 = +[MSASPersonInfoManager sharedManager];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 lastNameForPersonID:selfCopy->_ownerPersonID];
      if (v5)
      {
        objc_storeStrong(&selfCopy->_ownerLastName, v5);
      }
    }
  }

  v6 = selfCopy->_ownerLastName;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSString)ownerFirstName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_thePlatform && !selfCopy->_ownerFirstName)
  {
    v3 = +[MSASPersonInfoManager sharedManager];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 firstNameForPersonID:selfCopy->_ownerPersonID];
      if (v5)
      {
        objc_storeStrong(&selfCopy->_ownerFirstName, v5);
      }
    }
  }

  v6 = selfCopy->_ownerFirstName;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSString)ownerFullName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_thePlatform && !selfCopy->_ownerFullName)
  {
    v3 = +[MSASPersonInfoManager sharedManager];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 fullNameForPersonID:selfCopy->_ownerPersonID];
      if (v5)
      {
        objc_storeStrong(&selfCopy->_ownerFullName, v5);
      }
    }
  }

  v6 = selfCopy->_ownerFullName;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (MSASAlbum)albumWithAlbum:(id)album
{
  albumCopy = album;
  v4 = objc_alloc_init(MSASAlbum);
  ownerEmail = [albumCopy ownerEmail];
  [(MSASAlbum *)v4 setOwnerEmail:ownerEmail];

  ownerPersonID = [albumCopy ownerPersonID];
  [(MSASAlbum *)v4 setOwnerPersonID:ownerPersonID];

  ownerFullName = [albumCopy ownerFullName];
  [(MSASAlbum *)v4 setOwnerFullName:ownerFullName];

  ownerFirstName = [albumCopy ownerFirstName];
  [(MSASAlbum *)v4 setOwnerFirstName:ownerFirstName];

  ownerLastName = [albumCopy ownerLastName];
  [(MSASAlbum *)v4 setOwnerLastName:ownerLastName];

  -[MSASAlbum setOwnerIsWhitelisted:](v4, "setOwnerIsWhitelisted:", [albumCopy ownerIsWhitelisted]);
  subscriptionDate = [albumCopy subscriptionDate];
  [(MSASAlbum *)v4 setSubscriptionDate:subscriptionDate];

  gUID = [albumCopy GUID];
  [(MSASAlbum *)v4 setGUID:gUID];

  ctag = [albumCopy ctag];
  [(MSASAlbum *)v4 setCtag:ctag];

  -[MSASAlbum setRelationshipState:](v4, "setRelationshipState:", [albumCopy relationshipState]);
  foreignCtag = [albumCopy foreignCtag];
  [(MSASAlbum *)v4 setForeignCtag:foreignCtag];

  uRLString = [albumCopy URLString];
  [(MSASAlbum *)v4 setURLString:uRLString];

  metadata = [albumCopy metadata];
  [(MSASAlbum *)v4 setMetadata:metadata];

  context = [albumCopy context];
  [(MSASAlbum *)v4 setContext:context];

  -[MSASAlbum setIsFamilySharedAlbum:](v4, "setIsFamilySharedAlbum:", [albumCopy isFamilySharedAlbum]);
  clientOrgKey = [albumCopy clientOrgKey];

  [(MSASAlbum *)v4 setClientOrgKey:clientOrgKey];

  return v4;
}

+ (id)album
{
  v2 = objc_alloc_init(MSASAlbum);

  return v2;
}

@end