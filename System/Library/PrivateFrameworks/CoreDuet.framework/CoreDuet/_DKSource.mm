@interface _DKSource
+ (id)fromPBCodable:(id)codable;
+ (id)sourceForInteraction:(id)interaction bundleID:(id)d;
+ (id)sourceForSearchableItem:(id)item bundleID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)syncDeviceID;
- (_DKSource)initWithCoder:(id)coder;
- (_DKSource)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier itemIdentifier:(id)itemIdentifier groupIdentifier:(id)groupIdentifier deviceIdentifier:(id)deviceIdentifier userIdentifier:(id)userIdentifier intentIdentifier:(id)intentIdentifier;
- (id)toPBCodable;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DKSource

- (NSString)syncDeviceID
{
  deviceID = [(_DKSource *)self deviceID];
  v3 = [_DKKnowledgeStorage sourceDeviceIdentityFromDeviceID:deviceID];

  return v3;
}

- (_DKSource)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier itemIdentifier:(id)itemIdentifier groupIdentifier:(id)groupIdentifier deviceIdentifier:(id)deviceIdentifier userIdentifier:(id)userIdentifier intentIdentifier:(id)intentIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  itemIdentifierCopy = itemIdentifier;
  groupIdentifierCopy = groupIdentifier;
  deviceIdentifierCopy = deviceIdentifier;
  userIdentifierCopy = userIdentifier;
  intentIdentifierCopy = intentIdentifier;
  v26.receiver = self;
  v26.super_class = _DKSource;
  v18 = [(_DKSource *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sourceID, identifier);
    objc_storeStrong(&v19->_bundleID, bundleIdentifier);
    objc_storeStrong(&v19->_itemID, itemIdentifier);
    objc_storeStrong(&v19->_groupID, groupIdentifier);
    objc_storeStrong(&v19->_deviceID, deviceIdentifier);
    objc_storeStrong(&v19->_userID, userIdentifier);
    objc_storeStrong(&v19->_intentID, intentIdentifier);
  }

  return v19;
}

- (_DKSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = _DKSource;
  v5 = [(_DKSource *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceID"];
    sourceID = v5->_sourceID;
    v5->_sourceID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_deviceID"];
    deviceID = v5->_deviceID;
    v5->_deviceID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_userID"];
    userID = v5->_userID;
    v5->_userID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_intentID"];
    intentID = v5->_intentID;
    v5->_intentID = v18;

    v20 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourceID = self->_sourceID;
  coderCopy = coder;
  [coderCopy encodeObject:sourceID forKey:@"_sourceID"];
  [coderCopy encodeObject:self->_bundleID forKey:@"_bundleID"];
  [coderCopy encodeObject:self->_itemID forKey:@"_itemID"];
  [coderCopy encodeObject:self->_groupID forKey:@"_groupID"];
  [coderCopy encodeObject:self->_deviceID forKey:@"_deviceID"];
  [coderCopy encodeObject:self->_userID forKey:@"_userID"];
  [coderCopy encodeObject:self->_intentID forKey:@"_intentID"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  sourceID = [(_DKSource *)self sourceID];
  bundleID = [(_DKSource *)self bundleID];
  itemID = [(_DKSource *)self itemID];
  groupID = [(_DKSource *)self groupID];
  deviceID = [(_DKSource *)self deviceID];
  userID = [(_DKSource *)self userID];
  intentID = [(_DKSource *)self intentID];
  v11 = [v3 stringWithFormat:@"{%@, %@, %@, %@, %@, %@, %@}", sourceID, bundleID, itemID, groupID, deviceID, userID, intentID];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        sourceID = [(_DKSource *)self sourceID];
        sourceID2 = [(_DKSource *)v7 sourceID];
        if (sourceID != sourceID2)
        {
          sourceID3 = [(_DKSource *)self sourceID];
          sourceID4 = [(_DKSource *)v7 sourceID];
          v57 = sourceID3;
          if (![sourceID3 isEqualToString:?])
          {
            v11 = 0;
            goto LABEL_38;
          }
        }

        bundleID = [(_DKSource *)self bundleID];
        bundleID2 = [(_DKSource *)v7 bundleID];
        if (bundleID != bundleID2)
        {
          bundleID3 = [(_DKSource *)self bundleID];
          bundleID4 = [(_DKSource *)v7 bundleID];
          if (![bundleID3 isEqualToString:?])
          {
            v11 = 0;
LABEL_36:

LABEL_37:
            if (sourceID == sourceID2)
            {
LABEL_39:

              goto LABEL_40;
            }

LABEL_38:

            goto LABEL_39;
          }
        }

        itemID = [(_DKSource *)self itemID];
        itemID2 = [(_DKSource *)v7 itemID];
        v55 = itemID;
        v16 = itemID == itemID2;
        v17 = itemID2;
        if (v16)
        {
          v52 = itemID2;
        }

        else
        {
          itemID3 = [(_DKSource *)self itemID];
          itemID4 = [(_DKSource *)v7 itemID];
          v49 = itemID3;
          if (![itemID3 isEqualToString:?])
          {
            v11 = 0;
            v25 = v17;
            v26 = v55;
LABEL_34:

LABEL_35:
            if (bundleID == bundleID2)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          v52 = v17;
        }

        groupID = [(_DKSource *)self groupID];
        groupID2 = [(_DKSource *)v7 groupID];
        v50 = groupID;
        v51 = bundleID3;
        v16 = groupID == groupID2;
        v21 = groupID2;
        if (!v16)
        {
          groupID3 = [(_DKSource *)self groupID];
          groupID4 = [(_DKSource *)v7 groupID];
          v43 = groupID3;
          if (![groupID3 isEqualToString:?])
          {
            v23 = v52;
            v11 = 0;
            v24 = v50;
LABEL_32:

LABEL_33:
            v26 = v55;
            v25 = v23;
            v16 = v55 == v23;
            bundleID3 = v51;
            if (v16)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }
        }

        deviceID = [(_DKSource *)self deviceID];
        deviceID2 = [(_DKSource *)v7 deviceID];
        v46 = deviceID;
        v47 = v21;
        v44 = bundleID2;
        if (deviceID == deviceID2)
        {
          v41 = bundleID;
          v30 = v52;
        }

        else
        {
          deviceID3 = [(_DKSource *)self deviceID];
          deviceID4 = [(_DKSource *)v7 deviceID];
          v40 = deviceID3;
          v29 = [deviceID3 isEqualToString:?];
          v30 = v52;
          if (!v29)
          {
            v11 = 0;
            v37 = deviceID2;
            v36 = v46;
            goto LABEL_29;
          }

          v41 = bundleID;
        }

        userID = [(_DKSource *)self userID];
        userID2 = [(_DKSource *)v7 userID];
        v33 = userID2;
        if (userID == userID2)
        {

          v11 = 1;
        }

        else
        {
          [(_DKSource *)self userID];
          v34 = v53 = v30;
          userID3 = [(_DKSource *)v7 userID];
          v11 = [v34 isEqualToNumber:userID3];

          v30 = v53;
        }

        v37 = deviceID2;
        v36 = v46;
        bundleID = v41;
        if (v46 == deviceID2)
        {
          v23 = v30;
LABEL_31:

          v24 = v50;
          v21 = v47;
          bundleID2 = v44;
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

+ (id)sourceForInteraction:(id)interaction bundleID:(id)d
{
  dCopy = d;
  interactionCopy = interaction;
  identifier = [interactionCopy identifier];
  groupIdentifier = [interactionCopy groupIdentifier];
  v10 = [_DKSource alloc];
  intentsSourceID = [self intentsSourceID];
  intent = [interactionCopy intent];

  identifier2 = [intent identifier];
  v14 = [(_DKSource *)v10 initWithIdentifier:intentsSourceID bundleIdentifier:dCopy itemIdentifier:identifier groupIdentifier:groupIdentifier deviceIdentifier:0 userIdentifier:0 intentIdentifier:identifier2];

  return v14;
}

- (id)toPBCodable
{
  v3 = objc_alloc_init(_DKPRSource);
  sourceID = [(_DKSource *)self sourceID];
  [(_DKPRSource *)v3 setSourceID:sourceID];

  bundleID = [(_DKSource *)self bundleID];
  [(_DKPRSource *)v3 setBundleID:bundleID];

  itemID = [(_DKSource *)self itemID];
  [(_DKPRSource *)v3 setItemID:itemID];

  groupID = [(_DKSource *)self groupID];
  [(_DKPRSource *)v3 setGroupID:groupID];

  deviceID = [(_DKSource *)self deviceID];
  [(_DKPRSource *)v3 setDeviceID:deviceID];

  userID = [(_DKSource *)self userID];
  -[_DKPRSource setUserID:](v3, [userID intValue]);

  return v3;
}

+ (id)fromPBCodable:(id)codable
{
  codableCopy = codable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = codableCopy;
    v5 = [_DKSource alloc];
    sourceID = [(_DKPRSource *)v4 sourceID];
    bundleID = [(_DKPRSource *)v4 bundleID];
    itemID = [(_DKPRSource *)v4 itemID];
    groupID = [(_DKPRSource *)v4 groupID];
    deviceID = [(_DKPRSource *)v4 deviceID];
    v11 = MEMORY[0x1E696AD98];
    userID = [(_DKPRSource *)v4 userID];

    v13 = [v11 numberWithInt:userID];
    v14 = [(_DKSource *)v5 initWithIdentifier:sourceID bundleIdentifier:bundleID itemIdentifier:itemID groupIdentifier:groupID deviceIdentifier:deviceID userIdentifier:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)sourceForSearchableItem:(id)item bundleID:(id)d
{
  dCopy = d;
  itemCopy = item;
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  domainIdentifier = [itemCopy domainIdentifier];

  v10 = [_DKSource alloc];
  spotlightSourceID = [self spotlightSourceID];
  v12 = [(_DKSource *)v10 initWithIdentifier:spotlightSourceID bundleIdentifier:dCopy itemIdentifier:uniqueIdentifier groupIdentifier:domainIdentifier deviceIdentifier:0 userIdentifier:0];

  return v12;
}

@end