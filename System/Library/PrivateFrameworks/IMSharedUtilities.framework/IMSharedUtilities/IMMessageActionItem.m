@interface IMMessageActionItem
- (BOOL)isEqual:(id)a3;
- (IMMessageActionItem)initWithCoder:(id)a3;
- (IMMessageActionItem)initWithDictionary:(id)a3;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = IMMessageActionItem;
  v4 = [(IMItem *)&v10 copyWithZone:a3];
  v5 = [(IMMessageActionItem *)self otherUnformattedID];
  [v4 setOtherUnformattedID:v5];

  v6 = [(IMMessageActionItem *)self otherHandle];
  [v4 setOtherHandle:v6];

  v7 = [(IMMessageActionItem *)self otherCountryCode];
  [v4 setOtherCountryCode:v7];

  v8 = [(IMMessageActionItem *)self originalMessageGUID];
  [v4 setOriginalMessageGUID:v8];

  [v4 setActionType:{-[IMMessageActionItem actionType](self, "actionType")}];
  return v4;
}

- (IMMessageActionItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IMMessageActionItem;
  v5 = [(IMItem *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"];
    [(IMMessageActionItem *)v5 setOtherCountryCode:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"];
    [(IMMessageActionItem *)v5 setOtherHandle:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"];
    [(IMMessageActionItem *)v5 setOtherUnformattedID:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalMessageGUID"];
    [(IMMessageActionItem *)v5 setOriginalMessageGUID:v9];

    v5->_actionType = [v4 decodeInt64ForKey:@"actionType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = IMMessageActionItem;
  v4 = a3;
  [(IMItem *)&v9 encodeWithCoder:v4];
  v5 = [(IMMessageActionItem *)self otherCountryCode:v9.receiver];
  [v4 encodeObject:v5 forKey:@"otherCountryCode"];

  v6 = [(IMMessageActionItem *)self otherHandle];
  [v4 encodeObject:v6 forKey:@"otherHandle"];

  v7 = [(IMMessageActionItem *)self otherUnformattedID];
  [v4 encodeObject:v7 forKey:@"otherUnformattedID"];

  v8 = [(IMMessageActionItem *)self originalMessageGUID];
  [v4 encodeObject:v8 forKey:@"originalMessageGUID"];

  [v4 encodeInt64:self->_actionType forKey:@"actionType"];
}

- (IMMessageActionItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IMMessageActionItem;
  v5 = [(IMItem *)&v12 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"actionType"];
    -[IMMessageActionItem setActionType:](v5, "setActionType:", [v6 longLongValue]);

    v7 = [v4 objectForKey:@"otherCountryCode"];
    [(IMMessageActionItem *)v5 setOtherCountryCode:v7];

    v8 = [v4 objectForKey:@"otherHandle"];
    [(IMMessageActionItem *)v5 setOtherHandle:v8];

    v9 = [v4 objectForKey:@"otherUnformattedID"];
    [(IMMessageActionItem *)v5 setOtherUnformattedID:v9];

    v10 = [v4 objectForKey:@"originalMessageGUID"];
    [(IMMessageActionItem *)v5 setOriginalMessageGUID:v10];
  }

  return v5;
}

- (id)copyDictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = IMMessageActionItem;
  v3 = [(IMItem *)&v11 copyDictionaryRepresentation];
  v4 = objc_autoreleasePoolPush();
  otherCountryCode = self->_otherCountryCode;
  if (otherCountryCode)
  {
    CFDictionarySetValue(v3, @"otherCountryCode", otherCountryCode);
  }

  otherHandle = self->_otherHandle;
  if (otherHandle)
  {
    CFDictionarySetValue(v3, @"otherHandle", otherHandle);
  }

  otherUnformattedID = self->_otherUnformattedID;
  if (otherUnformattedID)
  {
    CFDictionarySetValue(v3, @"otherUnformattedID", otherUnformattedID);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_actionType];
  if (v8)
  {
    CFDictionarySetValue(v3, @"actionType", v8);
  }

  originalMessageGUID = self->_originalMessageGUID;
  if (originalMessageGUID)
  {
    CFDictionarySetValue(v3, @"originalMessageGUID", originalMessageGUID);
  }

  objc_autoreleasePoolPop(v4);
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v32.receiver = self;
      v32.super_class = IMMessageActionItem;
      if (![(IMItem *)&v32 isEqual:v5])
      {
        v10 = 0;
LABEL_34:

        goto LABEL_35;
      }

      otherCountryCode = self->_otherCountryCode;
      v7 = [(IMMessageActionItem *)v5 otherCountryCode];
      if (otherCountryCode != v7)
      {
        v8 = self->_otherCountryCode;
        v9 = [(IMMessageActionItem *)v5 otherCountryCode];
        if (![(NSString *)v8 isEqualToString:v9])
        {
          v10 = 0;
          goto LABEL_32;
        }

        v30 = v9;
      }

      otherHandle = self->_otherHandle;
      v12 = [(IMMessageActionItem *)v5 otherHandle];
      if (otherHandle != v12)
      {
        v13 = self->_otherHandle;
        v14 = [(IMMessageActionItem *)v5 otherHandle];
        if (![(NSString *)v13 isEqualToString:v14])
        {
          v10 = 0;
          v9 = v30;
LABEL_30:

LABEL_31:
          if (otherCountryCode == v7)
          {
LABEL_33:

            goto LABEL_34;
          }

LABEL_32:

          goto LABEL_33;
        }

        v28 = v14;
      }

      otherUnformattedID = self->_otherUnformattedID;
      v16 = [(IMMessageActionItem *)v5 otherUnformattedID];
      v29 = otherUnformattedID;
      if (otherUnformattedID == v16)
      {
        v27 = otherHandle;
      }

      else
      {
        v17 = self->_otherUnformattedID;
        v18 = [(IMMessageActionItem *)v5 otherUnformattedID];
        if (![(NSString *)v17 isEqualToString:v18])
        {
          v10 = 0;
          v9 = v30;
LABEL_28:

LABEL_29:
          v14 = v28;
          if (otherHandle == v12)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        v26 = v18;
        v27 = otherHandle;
      }

      originalMessageGUID = self->_originalMessageGUID;
      v20 = [(IMMessageActionItem *)v5 originalMessageGUID];
      if (originalMessageGUID == v20 || (v21 = self->_originalMessageGUID, [(IMMessageActionItem *)v5 originalMessageGUID], v25 = objc_claimAutoreleasedReturnValue(), [(NSString *)v21 isEqualToString:?]))
      {
        otherHandle = v27;
        actionType = self->_actionType;
        v10 = actionType == [(IMMessageActionItem *)v5 actionType];
        if (originalMessageGUID == v20)
        {

          v23 = v29;
          v9 = v30;
LABEL_27:
          v18 = v26;
          if (v23 == v16)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        v9 = v30;
      }

      else
      {
        v10 = 0;
        v9 = v30;
        otherHandle = v27;
      }

      v23 = v29;
      goto LABEL_27;
    }

    v31.receiver = self;
    v31.super_class = IMMessageActionItem;
    v10 = [(IMItem *)&v31 isEqual:v4];
  }

LABEL_35:

  return v10;
}

@end