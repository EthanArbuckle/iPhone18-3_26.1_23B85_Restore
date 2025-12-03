@interface IMMessageActionItem
- (BOOL)isEqual:(id)equal;
- (IMMessageActionItem)initWithCoder:(id)coder;
- (IMMessageActionItem)initWithDictionary:(id)dictionary;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMMessageActionItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMMessageActionItem;
  v4 = [(IMItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ actionType:%d originalMessageGUID:%@", v4, self->_actionType, self->_originalMessageGUID];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = IMMessageActionItem;
  v4 = [(IMItem *)&v10 copyWithZone:zone];
  otherUnformattedID = [(IMMessageActionItem *)self otherUnformattedID];
  [v4 setOtherUnformattedID:otherUnformattedID];

  otherHandle = [(IMMessageActionItem *)self otherHandle];
  [v4 setOtherHandle:otherHandle];

  otherCountryCode = [(IMMessageActionItem *)self otherCountryCode];
  [v4 setOtherCountryCode:otherCountryCode];

  originalMessageGUID = [(IMMessageActionItem *)self originalMessageGUID];
  [v4 setOriginalMessageGUID:originalMessageGUID];

  [v4 setActionType:{-[IMMessageActionItem actionType](self, "actionType")}];
  return v4;
}

- (IMMessageActionItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IMMessageActionItem;
  v5 = [(IMItem *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"];
    [(IMMessageActionItem *)v5 setOtherCountryCode:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"];
    [(IMMessageActionItem *)v5 setOtherHandle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"];
    [(IMMessageActionItem *)v5 setOtherUnformattedID:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalMessageGUID"];
    [(IMMessageActionItem *)v5 setOriginalMessageGUID:v9];

    v5->_actionType = [coderCopy decodeInt64ForKey:@"actionType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = IMMessageActionItem;
  coderCopy = coder;
  [(IMItem *)&v9 encodeWithCoder:coderCopy];
  v5 = [(IMMessageActionItem *)self otherCountryCode:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"otherCountryCode"];

  otherHandle = [(IMMessageActionItem *)self otherHandle];
  [coderCopy encodeObject:otherHandle forKey:@"otherHandle"];

  otherUnformattedID = [(IMMessageActionItem *)self otherUnformattedID];
  [coderCopy encodeObject:otherUnformattedID forKey:@"otherUnformattedID"];

  originalMessageGUID = [(IMMessageActionItem *)self originalMessageGUID];
  [coderCopy encodeObject:originalMessageGUID forKey:@"originalMessageGUID"];

  [coderCopy encodeInt64:self->_actionType forKey:@"actionType"];
}

- (IMMessageActionItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IMMessageActionItem;
  v5 = [(IMItem *)&v12 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"actionType"];
    -[IMMessageActionItem setActionType:](v5, "setActionType:", [v6 longLongValue]);

    v7 = [dictionaryCopy objectForKey:@"otherCountryCode"];
    [(IMMessageActionItem *)v5 setOtherCountryCode:v7];

    v8 = [dictionaryCopy objectForKey:@"otherHandle"];
    [(IMMessageActionItem *)v5 setOtherHandle:v8];

    v9 = [dictionaryCopy objectForKey:@"otherUnformattedID"];
    [(IMMessageActionItem *)v5 setOtherUnformattedID:v9];

    v10 = [dictionaryCopy objectForKey:@"originalMessageGUID"];
    [(IMMessageActionItem *)v5 setOriginalMessageGUID:v10];
  }

  return v5;
}

- (id)copyDictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = IMMessageActionItem;
  copyDictionaryRepresentation = [(IMItem *)&v11 copyDictionaryRepresentation];
  v4 = objc_autoreleasePoolPush();
  otherCountryCode = self->_otherCountryCode;
  if (otherCountryCode)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"otherCountryCode", otherCountryCode);
  }

  otherHandle = self->_otherHandle;
  if (otherHandle)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"otherHandle", otherHandle);
  }

  otherUnformattedID = self->_otherUnformattedID;
  if (otherUnformattedID)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"otherUnformattedID", otherUnformattedID);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_actionType];
  if (v8)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"actionType", v8);
  }

  originalMessageGUID = self->_originalMessageGUID;
  if (originalMessageGUID)
  {
    CFDictionarySetValue(copyDictionaryRepresentation, @"originalMessageGUID", originalMessageGUID);
  }

  objc_autoreleasePoolPop(v4);
  return copyDictionaryRepresentation;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v32.receiver = self;
      v32.super_class = IMMessageActionItem;
      if (![(IMItem *)&v32 isEqual:v5])
      {
        v10 = 0;
LABEL_34:

        goto LABEL_35;
      }

      otherCountryCode = self->_otherCountryCode;
      otherCountryCode = [(IMMessageActionItem *)v5 otherCountryCode];
      if (otherCountryCode != otherCountryCode)
      {
        v8 = self->_otherCountryCode;
        otherCountryCode2 = [(IMMessageActionItem *)v5 otherCountryCode];
        if (![(NSString *)v8 isEqualToString:otherCountryCode2])
        {
          v10 = 0;
          goto LABEL_32;
        }

        v30 = otherCountryCode2;
      }

      otherHandle = self->_otherHandle;
      otherHandle = [(IMMessageActionItem *)v5 otherHandle];
      if (otherHandle != otherHandle)
      {
        v13 = self->_otherHandle;
        otherHandle2 = [(IMMessageActionItem *)v5 otherHandle];
        if (![(NSString *)v13 isEqualToString:otherHandle2])
        {
          v10 = 0;
          otherCountryCode2 = v30;
LABEL_30:

LABEL_31:
          if (otherCountryCode == otherCountryCode)
          {
LABEL_33:

            goto LABEL_34;
          }

LABEL_32:

          goto LABEL_33;
        }

        v28 = otherHandle2;
      }

      otherUnformattedID = self->_otherUnformattedID;
      otherUnformattedID = [(IMMessageActionItem *)v5 otherUnformattedID];
      v29 = otherUnformattedID;
      if (otherUnformattedID == otherUnformattedID)
      {
        v27 = otherHandle;
      }

      else
      {
        v17 = self->_otherUnformattedID;
        otherUnformattedID2 = [(IMMessageActionItem *)v5 otherUnformattedID];
        if (![(NSString *)v17 isEqualToString:otherUnformattedID2])
        {
          v10 = 0;
          otherCountryCode2 = v30;
LABEL_28:

LABEL_29:
          otherHandle2 = v28;
          if (otherHandle == otherHandle)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        v26 = otherUnformattedID2;
        v27 = otherHandle;
      }

      originalMessageGUID = self->_originalMessageGUID;
      originalMessageGUID = [(IMMessageActionItem *)v5 originalMessageGUID];
      if (originalMessageGUID == originalMessageGUID || (v21 = self->_originalMessageGUID, [(IMMessageActionItem *)v5 originalMessageGUID], v25 = objc_claimAutoreleasedReturnValue(), [(NSString *)v21 isEqualToString:?]))
      {
        otherHandle = v27;
        actionType = self->_actionType;
        v10 = actionType == [(IMMessageActionItem *)v5 actionType];
        if (originalMessageGUID == originalMessageGUID)
        {

          v23 = v29;
          otherCountryCode2 = v30;
LABEL_27:
          otherUnformattedID2 = v26;
          if (v23 == otherUnformattedID)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        otherCountryCode2 = v30;
      }

      else
      {
        v10 = 0;
        otherCountryCode2 = v30;
        otherHandle = v27;
      }

      v23 = v29;
      goto LABEL_27;
    }

    v31.receiver = self;
    v31.super_class = IMMessageActionItem;
    v10 = [(IMItem *)&v31 isEqual:equalCopy];
  }

LABEL_35:

  return v10;
}

@end