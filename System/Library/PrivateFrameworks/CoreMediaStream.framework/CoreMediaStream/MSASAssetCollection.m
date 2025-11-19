@interface MSASAssetCollection
+ (id)MSASPAssetCollectionFromProtocolDictionary:(id)a3;
+ (id)assetCollectionWithAssetCollection:(id)a3;
- (BOOL)hasVideoAsset;
- (BOOL)isAutoloopVideo;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPhotoIris;
- (BOOL)isVideo;
- (MSASAssetCollection)initWithCoder:(id)a3;
- (MSASAssetCollection)initWithFileName:(id)a3 path:(id)a4;
- (NSString)email;
- (NSString)firstName;
- (NSString)fullName;
- (NSString)lastName;
- (id)MSASPProtocolDictionary;
- (id)description;
- (id)mediaAssetType;
- (void)encodeWithCoder:(id)a3;
- (void)setAssets:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setMetadataValue:(id)a3 forKey:(id)a4;
@end

@implementation MSASAssetCollection

- (id)mediaAssetType
{
  if ([(MSASAssetCollection *)self isVideo])
  {
    return @"video";
  }

  else
  {
    return @"unknown";
  }
}

- (BOOL)isAutoloopVideo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_metadata objectForKey:@"playback-style-identifier"];
  v4 = [v3 isEqualToString:@"autoloop"];

  objc_sync_exit(v2);
  return v4;
}

- (BOOL)isPhotoIris
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_metadata objectForKey:@"mediaGroupUUID"];
  v4 = v3 != 0;

  objc_sync_exit(v2);
  return v4;
}

- (BOOL)isVideo
{
  if ([(MSASAssetCollection *)self isPhotoIris])
  {
    return 0;
  }

  return [(MSASAssetCollection *)self hasVideoAsset];
}

- (BOOL)hasVideoAsset
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_assets;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isVideo])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setMetadata:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  objc_storeStrong(&v6->_metadata, a3);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(MSASAssetCollection *)v6 assets];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [v5 objectForKey:@"batchDateCreated"];
        [v11 setBatchCreationDate:v12];

        v13 = [v5 objectForKey:@"dateCreated"];
        [v11 setPhotoCreationDate:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)setMetadataValue:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  metadata = self->_metadata;
  if (metadata)
  {
    v8 = [(NSDictionary *)metadata mutableCopy];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = v8;
  if (v10)
  {
    [v8 setObject:v10 forKey:v6];
  }

  else
  {
    [v8 removeObjectForKey:v6];
  }

  [(MSASAssetCollection *)self setMetadata:v9];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    GUID = self->_GUID;
    v6 = [v4 GUID];

    v7 = [(NSString *)GUID isEqualToString:v6];
    return v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MSASAssetCollection;
    v9 = [(MSASAssetCollection *)&v10 isEqual:v4];

    return v9;
  }
}

- (MSASAssetCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MSASAssetCollection;
  v5 = [(MSASAssetCollection *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    [(MSASAssetCollection *)v5 setGUID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ctag"];
    [(MSASAssetCollection *)v5 setCtag:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"albumGUID"];
    [(MSASAssetCollection *)v5 setAlbumGUID:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileName"];
    [(MSASAssetCollection *)v5 setFileName:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    [(MSASAssetCollection *)v5 setPath:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    [(MSASAssetCollection *)v5 setTimestamp:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personID"];
    [(MSASAssetCollection *)v5 setPersonID:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    [(MSASAssetCollection *)v5 setFullName:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    [(MSASAssetCollection *)v5 setFirstName:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    [(MSASAssetCollection *)v5 setLastName:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    [(MSASAssetCollection *)v5 setEmail:v16];

    -[MSASAssetCollection setIsDeletable:](v5, "setIsDeletable:", [v4 decodeBoolForKey:@"isDeletable"]);
    -[MSASAssetCollection setIsMine:](v5, "setIsMine:", [v4 decodeBoolForKey:@"isMine"]);
    v17 = [v4 decodePropertyListForKey:@"userInfo"];
    [(MSASAssetCollection *)v5 setUserInfo:v17];

    v18 = [v4 decodePropertyListForKey:@"metadata"];
    [(MSASAssetCollection *)v5 setMetadata:v18];

    -[MSASAssetCollection setPhotoNumber:](v5, "setPhotoNumber:", [v4 decodeInt64ForKey:@"photoNumber"]);
    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"assets"];
    v23 = [(MSASAssetCollection *)v5 GUID];
    v24 = _copyAssetsIntoAssetCollection(v22, v5, v23);
    [(MSASAssetCollection *)v5 setAssets:v24];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v33 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MSASAssetCollection *)v4 GUID];

  if (v5)
  {
    v6 = [(MSASAssetCollection *)v4 GUID];
    [v33 encodeObject:v6 forKey:@"GUID"];
  }

  v7 = [(MSASAssetCollection *)v4 ctag];

  if (v7)
  {
    v8 = [(MSASAssetCollection *)v4 ctag];
    [v33 encodeObject:v8 forKey:@"ctag"];
  }

  v9 = [(MSASAssetCollection *)v4 albumGUID];

  if (v9)
  {
    v10 = [(MSASAssetCollection *)v4 albumGUID];
    [v33 encodeObject:v10 forKey:@"albumGUID"];
  }

  v11 = [(MSASAssetCollection *)v4 assets];

  if (v11)
  {
    v12 = [(MSASAssetCollection *)v4 assets];
    [v33 encodeObject:v12 forKey:@"assets"];
  }

  v13 = [(MSASAssetCollection *)v4 fileName];

  if (v13)
  {
    v14 = [(MSASAssetCollection *)v4 fileName];
    [v33 encodeObject:v14 forKey:@"fileName"];
  }

  v15 = [(MSASAssetCollection *)v4 path];

  if (v15)
  {
    v16 = [(MSASAssetCollection *)v4 path];
    [v33 encodeObject:v16 forKey:@"path"];
  }

  v17 = [(MSASAssetCollection *)v4 timestamp];

  if (v17)
  {
    v18 = [(MSASAssetCollection *)v4 timestamp];
    [v33 encodeObject:v18 forKey:@"timestamp"];
  }

  v19 = [(MSASAssetCollection *)v4 personID];

  if (v19)
  {
    v20 = [(MSASAssetCollection *)v4 personID];
    [v33 encodeObject:v20 forKey:@"personID"];
  }

  v21 = [(MSASAssetCollection *)v4 fullName];

  if (v21)
  {
    v22 = [(MSASAssetCollection *)v4 fullName];
    [v33 encodeObject:v22 forKey:@"fullName"];
  }

  v23 = [(MSASAssetCollection *)v4 firstName];

  if (v23)
  {
    v24 = [(MSASAssetCollection *)v4 firstName];
    [v33 encodeObject:v24 forKey:@"firstName"];
  }

  v25 = [(MSASAssetCollection *)v4 lastName];

  if (v25)
  {
    v26 = [(MSASAssetCollection *)v4 lastName];
    [v33 encodeObject:v26 forKey:@"lastName"];
  }

  v27 = [(MSASAssetCollection *)v4 email];

  if (v27)
  {
    v28 = [(MSASAssetCollection *)v4 email];
    [v33 encodeObject:v28 forKey:@"email"];
  }

  [v33 encodeBool:-[MSASAssetCollection isDeletable](v4 forKey:{"isDeletable"), @"isDeletable"}];
  [v33 encodeBool:-[MSASAssetCollection isMine](v4 forKey:{"isMine"), @"isMine"}];
  v29 = [(MSASAssetCollection *)v4 userInfo];

  if (v29)
  {
    v30 = [(MSASAssetCollection *)v4 userInfo];
    [v33 encodeObject:v30 forKey:@"userInfo"];
  }

  v31 = [(MSASAssetCollection *)v4 metadata];

  if (v31)
  {
    v32 = [(MSASAssetCollection *)v4 metadata];
    [v33 encodeObject:v32 forKey:@"metadata"];
  }

  [v33 encodeInt64:-[MSASAssetCollection photoNumber](v4 forKey:{"photoNumber"), @"photoNumber"}];
  objc_sync_exit(v4);
}

- (id)description
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = MSASAssetCollection;
  v3 = [(MSASAssetCollection *)&v22 description];
  v4 = [v3 mutableCopy];

  if (self->_GUID)
  {
    [v4 appendFormat:@" GUID: %@", self->_GUID];
  }

  if (self->_albumGUID)
  {
    [v4 appendFormat:@" album GUID: %@", self->_albumGUID];
  }

  if (self->_firstName)
  {
    lastName = self->_lastName;
    if (lastName)
    {
      [v4 appendFormat:@" first, last name: %@, %@", self->_firstName, lastName];
    }
  }

  if (self->_fullName)
  {
    [v4 appendFormat:@" full name = %@", self->_fullName];
  }

  if (self->_personID)
  {
    [v4 appendFormat:@" personID = %@", self->_personID];
  }

  if (self->_email)
  {
    [v4 appendFormat:@" email = %@", self->_email];
  }

  v6 = @"NO";
  if (self->_isMine)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_isDeletable)
  {
    v6 = @"YES";
  }

  [v4 appendFormat:@" isMine=%@ isDeletable=%@", v7, v6];
  [v4 appendFormat:@" photo number: %lld", self->_photoNumber];
  if (self->_timestamp)
  {
    [v4 appendFormat:@" Time: %@", self->_timestamp];
  }

  v8 = MSASPlatform();
  v9 = [v8 shouldLogAtLevel:7];

  if (v9)
  {
    [v4 appendFormat:@" Has comments: %d", -[MSASAssetCollection hasComments](self, "hasComments")];
    if ([(NSDictionary *)self->_metadata count])
    {
      [v4 appendFormat:@" collection metadata: %@", self->_metadata];
    }

    if ([(NSArray *)self->_assets count])
    {
      [v4 appendFormat:@" Assets:\n"];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = self->_assets;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v18 + 1) + 8 * i) description];
            [v4 appendFormat:@"%@\n", v15];
          }

          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v12);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setAssets:(id)a3
{
  v4 = a3;
  v7 = [(MSASAssetCollection *)self GUID];
  v5 = _copyAssetsIntoAssetCollection(v4, self, v7);

  assets = self->_assets;
  self->_assets = v5;
}

- (MSASAssetCollection)initWithFileName:(id)a3 path:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MSASAssetCollection;
  v9 = [(MSASAssetCollection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileName, a3);
    objc_storeStrong(&v10->_path, a4);
    v10->_photoNumber = -1;
  }

  return v10;
}

- (NSString)email
{
  p_email = &self->_email;
  email = self->_email;
  if (!email)
  {
    v5 = +[MSASPersonInfoManager sharedManager];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 emailForPersonID:self->_personID];
      if (v7)
      {
        objc_storeStrong(p_email, v7);
      }
    }

    email = *p_email;
  }

  return email;
}

- (NSString)lastName
{
  p_lastName = &self->_lastName;
  lastName = self->_lastName;
  if (!lastName)
  {
    v5 = +[MSASPersonInfoManager sharedManager];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 lastNameForPersonID:self->_personID];
      if (v7)
      {
        objc_storeStrong(p_lastName, v7);
      }
    }

    lastName = *p_lastName;
  }

  return lastName;
}

- (NSString)firstName
{
  p_firstName = &self->_firstName;
  firstName = self->_firstName;
  if (!firstName)
  {
    v5 = +[MSASPersonInfoManager sharedManager];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 firstNameForPersonID:self->_personID];
      if (v7)
      {
        objc_storeStrong(p_firstName, v7);
      }
    }

    firstName = *p_firstName;
  }

  return firstName;
}

- (NSString)fullName
{
  p_fullName = &self->_fullName;
  fullName = self->_fullName;
  if (!fullName)
  {
    v5 = +[MSASPersonInfoManager sharedManager];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 fullNameForPersonID:self->_personID];
      if (v7)
      {
        objc_storeStrong(p_fullName, v7);
      }
    }

    fullName = *p_fullName;
  }

  return fullName;
}

+ (id)assetCollectionWithAssetCollection:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSASAssetCollection);
  v5 = [v3 GUID];
  [(MSASAssetCollection *)v4 setGUID:v5];

  v6 = [v3 albumGUID];
  [(MSASAssetCollection *)v4 setAlbumGUID:v6];

  v7 = [v3 ctag];
  [(MSASAssetCollection *)v4 setCtag:v7];

  v8 = [v3 fileName];
  [(MSASAssetCollection *)v4 setFileName:v8];

  v9 = [v3 path];
  [(MSASAssetCollection *)v4 setPath:v9];

  v10 = [v3 timestamp];
  [(MSASAssetCollection *)v4 setTimestamp:v10];

  v11 = [v3 personID];
  [(MSASAssetCollection *)v4 setPersonID:v11];

  v12 = [v3 fullName];
  [(MSASAssetCollection *)v4 setFullName:v12];

  v13 = [v3 firstName];
  [(MSASAssetCollection *)v4 setFirstName:v13];

  v14 = [v3 lastName];
  [(MSASAssetCollection *)v4 setLastName:v14];

  v15 = [v3 email];
  [(MSASAssetCollection *)v4 setEmail:v15];

  -[MSASAssetCollection setIsDeletable:](v4, "setIsDeletable:", [v3 isDeletable]);
  -[MSASAssetCollection setIsMine:](v4, "setIsMine:", [v3 isMine]);
  v16 = [v3 userInfo];
  [(MSASAssetCollection *)v4 setUserInfo:v16];

  v17 = [v3 metadata];
  [(MSASAssetCollection *)v4 setMetadata:v17];

  v18 = [v3 assets];

  v19 = [(MSASAssetCollection *)v4 GUID];
  v20 = _copyAssetsIntoAssetCollection(v18, v4, v19);
  [(MSASAssetCollection *)v4 setAssets:v20];

  return v4;
}

- (id)MSASPProtocolDictionary
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(MSASAssetCollection *)self GUID];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"assetguid"];
  }

  v5 = [(MSASAssetCollection *)self fileName];
  if (v5)
  {
    v6 = v5;
    if (![(MSASAssetCollection *)self isVideo])
    {
      goto LABEL_7;
    }

    v7 = [v6 pathExtension];
    v8 = [v7 isEqualToString:@"mp4"];

    if ((v8 & 1) != 0 || ([v6 stringByDeletingPathExtension], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "stringByAppendingPathExtension:", @"mp4"), v10 = objc_claimAutoreleasedReturnValue(), v6, v9, (v6 = v10) != 0))
    {
LABEL_7:
      [v3 setObject:v6 forKey:@"filename"];
    }
  }

  v11 = [(MSASAssetCollection *)self metadata];
  if (v11)
  {
    [v3 setObject:v11 forKey:@"collectionmetadata"];
  }

  v12 = [(MSASAssetCollection *)self mediaAssetType];
  v13 = [v12 isEqualToString:@"unknown"];
  if (v12 && (v13 & 1) == 0)
  {
    [v3 setObject:v12 forKey:@"mediaAssetType"];
  }

  v14 = [(MSASAssetCollection *)self assets];
  v15 = [v14 count];

  if (v15)
  {
    v16 = MEMORY[0x277CBEB18];
    v17 = [(MSASAssetCollection *)self assets];
    v18 = [v16 arrayWithCapacity:{objc_msgSend(v17, "count")}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [(MSASAssetCollection *)self assets];
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v27 + 1) + 8 * i) MSASPProtocolDictionary];
          [v18 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v21);
    }

    if (v18)
    {
      [v3 setObject:v18 forKey:@"files"];
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)MSASPAssetCollectionFromProtocolDictionary:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = objc_alloc_init(MSASAssetCollection);
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v4 objectForKey:@"derivatives"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 objectForKey:@"derivatives"];
  }

  else
  {
    v8 = 0;
  }

  [v4 removeObjectForKey:@"derivatives"];
  v9 = [v4 objectForKey:@"files"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v78 = [v4 objectForKey:@"files"];
  }

  else
  {
    v78 = 0;
  }

  [v4 removeObjectForKey:@"files"];
  v10 = [v4 objectForKey:@"mediaAssetType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v4 objectForKey:@"mediaAssetType"];
  }

  else
  {
    v11 = 0;
  }

  v77 = v8;

  [v4 removeObjectForKey:@"mediaAssetType"];
  if (v11)
  {
    v12 = [v11 isEqualToString:@"video"];
  }

  else
  {
    v12 = 0;
  }

  v76 = v11;
  v13 = [v4 objectForKey:@"assetguid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v4 objectForKey:@"assetguid"];
  }

  else
  {
    v14 = 0;
  }

  [v4 removeObjectForKey:@"assetguid"];
  if (v14)
  {
    [(MSASAssetCollection *)v5 setGUID:v14];
  }

  v75 = v14;
  v15 = [v4 objectForKey:@"filename"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v4 objectForKey:@"filename"];
  }

  else
  {
    v16 = 0;
  }

  [v4 removeObjectForKey:@"filename"];
  if (v16)
  {
    [(MSASAssetCollection *)v5 setFileName:v16];
  }

  v74 = v16;
  v17 = [v4 objectForKey:@"servertimestamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v4 objectForKey:@"servertimestamp"];
  }

  else
  {
    v18 = 0;
  }

  [v4 removeObjectForKey:@"servertimestamp"];
  if (v18)
  {
    v19 = MEMORY[0x277CBEAA8];
    [v18 doubleValue];
    v20 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
    [(MSASAssetCollection *)v5 setTimestamp:v20];
  }

  v21 = [v4 objectForKey:@"personid"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v4 objectForKey:@"personid"];
  }

  else
  {
    v22 = 0;
  }

  [v4 removeObjectForKey:@"personid"];
  if (v22)
  {
    [(MSASAssetCollection *)v5 setPersonID:v22];
  }

  v72 = v22;
  v23 = [v4 objectForKey:@"firstname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [v4 objectForKey:@"firstname"];
  }

  else
  {
    v24 = 0;
  }

  v25 = v3;

  [v4 removeObjectForKey:@"firstname"];
  if (v24)
  {
    [(MSASAssetCollection *)v5 setFirstName:v24];
  }

  v71 = v24;
  v26 = [v4 objectForKey:@"lastname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [v4 objectForKey:@"lastname"];
  }

  else
  {
    v27 = 0;
  }

  [v4 removeObjectForKey:@"lastname"];
  if (v27)
  {
    [(MSASAssetCollection *)v5 setLastName:v27];
  }

  v28 = [v4 objectForKey:@"fullname"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [v4 objectForKey:@"fullname"];
  }

  else
  {
    v29 = 0;
  }

  [v4 removeObjectForKey:@"fullname"];
  if (v29)
  {
    [(MSASAssetCollection *)v5 setFullName:v29];
  }

  v30 = v25;
  v31 = [v4 objectForKey:@"email"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [v4 objectForKey:@"email"];
  }

  else
  {
    v32 = 0;
  }

  [v4 removeObjectForKey:@"email"];
  if (v32)
  {
    [(MSASAssetCollection *)v5 setEmail:v32];
  }

  v69 = v32;
  v73 = v18;
  v33 = v30;
  v34 = [v30 objectForKey:@"createdbyme"];
  objc_opt_class();
  v70 = v27;
  if (objc_opt_isKindOfClass())
  {
    v35 = [v30 objectForKey:@"createdbyme"];
    v36 = [v35 isEqualToString:@"1"];
  }

  else
  {
    v36 = [0 isEqualToString:@"1"];
  }

  [v4 removeObjectForKey:@"createdbyme"];
  [(MSASAssetCollection *)v5 setIsMine:v36];
  v37 = [v30 objectForKey:@"candelete"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = [v30 objectForKey:@"candelete"];
    v39 = [v38 isEqualToString:@"1"];
  }

  else
  {
    v39 = [0 isEqualToString:@"1"];
  }

  v40 = v78;

  [v4 removeObjectForKey:@"candelete"];
  [(MSASAssetCollection *)v5 setIsDeletable:v39];
  v41 = [v4 objectForKey:@"collectionmetadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = [v4 objectForKey:@"collectionmetadata"];
  }

  else
  {
    v42 = 0;
  }

  [v4 removeObjectForKey:@"collectionmetadata"];
  if (v42)
  {
    [(MSASAssetCollection *)v5 setMetadata:v42];
  }

  v43 = [v4 objectForKey:@"assetnumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = [v4 objectForKey:@"assetnumber"];
  }

  else
  {
    v44 = 0;
  }

  [v4 removeObjectForKey:@"assetnumber"];
  if (v44)
  {
    -[MSASAssetCollection setPhotoNumber:](v5, "setPhotoNumber:", [v44 longLongValue]);
  }

  v68 = v42;
  if (!v78)
  {
    v54 = v77;
    if (!v77)
    {
      goto LABEL_102;
    }

    v65 = v44;
    v66 = v5;
    v67 = v4;
    v45 = [MSAsset MSASPAssetFromProtocolDictionary:v4];
    if (v45)
    {
      [v6 addObject:v45];
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v55 = v77;
    v56 = [v55 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v80;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v80 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v79 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v61 = [MSAsset MSASPAssetFromProtocolDictionary:v60];
            if (v61)
            {
              [v6 addObject:v61];
            }
          }
        }

        v57 = [v55 countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v57);
    }

    goto LABEL_100;
  }

  v67 = v4;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v45 = v78;
  v46 = [v45 countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (v46)
  {
    v47 = v46;
    v65 = v44;
    v66 = v5;
    v64 = v33;
    v48 = *v84;
    v49 = MEMORY[0x277D86220];
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v84 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v51 = *(*(&v83 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v52 = [MSAsset MSASPAssetFromProtocolDictionary:v51];
          if (v52)
          {
            [v6 addObject:v52];
          }

          if (v12 != [v52 isVideo] && os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v53 = [v52 isVideo];
            *buf = 67109376;
            v89 = v53;
            v90 = 1024;
            v91 = v12;
            _os_log_error_impl(&dword_245B99000, v49, OS_LOG_TYPE_ERROR, "Found inconsistency of media asset type between asset (%d) and asset collection (%d)", buf, 0xEu);
          }
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v47);
    v33 = v64;
LABEL_100:
    v44 = v65;
    v5 = v66;
    v40 = v78;
  }

  v4 = v67;
  v54 = v77;
LABEL_102:
  [(MSASAssetCollection *)v5 setAssets:v6, v64];

  v62 = *MEMORY[0x277D85DE8];

  return v5;
}

@end