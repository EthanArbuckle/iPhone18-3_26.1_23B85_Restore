@interface _DKSource
+ (id)fromPBCodable:(id)a3;
+ (id)sourceForInteraction:(id)a3 bundleID:(id)a4;
+ (id)sourceForSearchableItem:(id)a3 bundleID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)syncDeviceID;
- (_DKSource)initWithCoder:(id)a3;
- (_DKSource)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 itemIdentifier:(id)a5 groupIdentifier:(id)a6 deviceIdentifier:(id)a7 userIdentifier:(id)a8 intentIdentifier:(id)a9;
- (id)toPBCodable;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DKSource

- (NSString)syncDeviceID
{
  v2 = [(_DKSource *)self deviceID];
  v3 = [_DKKnowledgeStorage sourceDeviceIdentityFromDeviceID:v2];

  return v3;
}

- (_DKSource)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 itemIdentifier:(id)a5 groupIdentifier:(id)a6 deviceIdentifier:(id)a7 userIdentifier:(id)a8 intentIdentifier:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = _DKSource;
  v18 = [(_DKSource *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sourceID, a3);
    objc_storeStrong(&v19->_bundleID, a4);
    objc_storeStrong(&v19->_itemID, a5);
    objc_storeStrong(&v19->_groupID, a6);
    objc_storeStrong(&v19->_deviceID, a7);
    objc_storeStrong(&v19->_userID, a8);
    objc_storeStrong(&v19->_intentID, a9);
  }

  return v19;
}

- (_DKSource)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _DKSource;
  v5 = [(_DKSource *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sourceID"];
    sourceID = v5->_sourceID;
    v5->_sourceID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_deviceID"];
    deviceID = v5->_deviceID;
    v5->_deviceID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userID"];
    userID = v5->_userID;
    v5->_userID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_intentID"];
    intentID = v5->_intentID;
    v5->_intentID = v18;

    v20 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sourceID = self->_sourceID;
  v5 = a3;
  [v5 encodeObject:sourceID forKey:@"_sourceID"];
  [v5 encodeObject:self->_bundleID forKey:@"_bundleID"];
  [v5 encodeObject:self->_itemID forKey:@"_itemID"];
  [v5 encodeObject:self->_groupID forKey:@"_groupID"];
  [v5 encodeObject:self->_deviceID forKey:@"_deviceID"];
  [v5 encodeObject:self->_userID forKey:@"_userID"];
  [v5 encodeObject:self->_intentID forKey:@"_intentID"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_DKSource *)self sourceID];
  v5 = [(_DKSource *)self bundleID];
  v6 = [(_DKSource *)self itemID];
  v7 = [(_DKSource *)self groupID];
  v8 = [(_DKSource *)self deviceID];
  v9 = [(_DKSource *)self userID];
  v10 = [(_DKSource *)self intentID];
  v11 = [v3 stringWithFormat:@"{%@, %@, %@, %@, %@, %@, %@}", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [(_DKSource *)self sourceID];
        v9 = [(_DKSource *)v7 sourceID];
        if (v8 != v9)
        {
          v10 = [(_DKSource *)self sourceID];
          v56 = [(_DKSource *)v7 sourceID];
          v57 = v10;
          if (![v10 isEqualToString:?])
          {
            v11 = 0;
            goto LABEL_38;
          }
        }

        v12 = [(_DKSource *)self bundleID];
        v13 = [(_DKSource *)v7 bundleID];
        if (v12 != v13)
        {
          v3 = [(_DKSource *)self bundleID];
          v54 = [(_DKSource *)v7 bundleID];
          if (![v3 isEqualToString:?])
          {
            v11 = 0;
LABEL_36:

LABEL_37:
            if (v8 == v9)
            {
LABEL_39:

              goto LABEL_40;
            }

LABEL_38:

            goto LABEL_39;
          }
        }

        v14 = [(_DKSource *)self itemID];
        v15 = [(_DKSource *)v7 itemID];
        v55 = v14;
        v16 = v14 == v15;
        v17 = v15;
        if (v16)
        {
          v52 = v15;
        }

        else
        {
          v18 = [(_DKSource *)self itemID];
          v48 = [(_DKSource *)v7 itemID];
          v49 = v18;
          if (![v18 isEqualToString:?])
          {
            v11 = 0;
            v25 = v17;
            v26 = v55;
LABEL_34:

LABEL_35:
            if (v12 == v13)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          v52 = v17;
        }

        v19 = [(_DKSource *)self groupID];
        v20 = [(_DKSource *)v7 groupID];
        v50 = v19;
        v51 = v3;
        v16 = v19 == v20;
        v21 = v20;
        if (!v16)
        {
          v22 = [(_DKSource *)self groupID];
          v42 = [(_DKSource *)v7 groupID];
          v43 = v22;
          if (![v22 isEqualToString:?])
          {
            v23 = v52;
            v11 = 0;
            v24 = v50;
LABEL_32:

LABEL_33:
            v26 = v55;
            v25 = v23;
            v16 = v55 == v23;
            v3 = v51;
            if (v16)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }
        }

        v27 = [(_DKSource *)self deviceID];
        v45 = [(_DKSource *)v7 deviceID];
        v46 = v27;
        v47 = v21;
        v44 = v13;
        if (v27 == v45)
        {
          v41 = v12;
          v30 = v52;
        }

        else
        {
          v28 = [(_DKSource *)self deviceID];
          v39 = [(_DKSource *)v7 deviceID];
          v40 = v28;
          v29 = [v28 isEqualToString:?];
          v30 = v52;
          if (!v29)
          {
            v11 = 0;
            v37 = v45;
            v36 = v46;
            goto LABEL_29;
          }

          v41 = v12;
        }

        v31 = [(_DKSource *)self userID];
        v32 = [(_DKSource *)v7 userID];
        v33 = v32;
        if (v31 == v32)
        {

          v11 = 1;
        }

        else
        {
          [(_DKSource *)self userID];
          v34 = v53 = v30;
          v35 = [(_DKSource *)v7 userID];
          v11 = [v34 isEqualToNumber:v35];

          v30 = v53;
        }

        v37 = v45;
        v36 = v46;
        v12 = v41;
        if (v46 == v45)
        {
          v23 = v30;
LABEL_31:

          v24 = v50;
          v21 = v47;
          v13 = v44;
          if (v50 == v47)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

LABEL_29:
        v23 = v30;

        goto LABEL_31;
      }
    }

    v11 = 0;
  }

LABEL_40:

  return v11;
}

+ (id)sourceForInteraction:(id)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [v7 groupIdentifier];
  v10 = [_DKSource alloc];
  v11 = [a1 intentsSourceID];
  v12 = [v7 intent];

  v13 = [v12 identifier];
  v14 = [(_DKSource *)v10 initWithIdentifier:v11 bundleIdentifier:v6 itemIdentifier:v8 groupIdentifier:v9 deviceIdentifier:0 userIdentifier:0 intentIdentifier:v13];

  return v14;
}

- (id)toPBCodable
{
  v3 = objc_alloc_init(_DKPRSource);
  v4 = [(_DKSource *)self sourceID];
  [(_DKPRSource *)v3 setSourceID:v4];

  v5 = [(_DKSource *)self bundleID];
  [(_DKPRSource *)v3 setBundleID:v5];

  v6 = [(_DKSource *)self itemID];
  [(_DKPRSource *)v3 setItemID:v6];

  v7 = [(_DKSource *)self groupID];
  [(_DKPRSource *)v3 setGroupID:v7];

  v8 = [(_DKSource *)self deviceID];
  [(_DKPRSource *)v3 setDeviceID:v8];

  v9 = [(_DKSource *)self userID];
  -[_DKPRSource setUserID:](v3, [v9 intValue]);

  return v3;
}

+ (id)fromPBCodable:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [_DKSource alloc];
    v6 = [(_DKPRSource *)v4 sourceID];
    v7 = [(_DKPRSource *)v4 bundleID];
    v8 = [(_DKPRSource *)v4 itemID];
    v9 = [(_DKPRSource *)v4 groupID];
    v10 = [(_DKPRSource *)v4 deviceID];
    v11 = MEMORY[0x1E696AD98];
    v12 = [(_DKPRSource *)v4 userID];

    v13 = [v11 numberWithInt:v12];
    v14 = [(_DKSource *)v5 initWithIdentifier:v6 bundleIdentifier:v7 itemIdentifier:v8 groupIdentifier:v9 deviceIdentifier:v10 userIdentifier:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)sourceForSearchableItem:(id)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 uniqueIdentifier];
  v9 = [v7 domainIdentifier];

  v10 = [_DKSource alloc];
  v11 = [a1 spotlightSourceID];
  v12 = [(_DKSource *)v10 initWithIdentifier:v11 bundleIdentifier:v6 itemIdentifier:v8 groupIdentifier:v9 deviceIdentifier:0 userIdentifier:0];

  return v12;
}

@end