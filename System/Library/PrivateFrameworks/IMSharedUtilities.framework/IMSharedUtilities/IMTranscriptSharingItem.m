@interface IMTranscriptSharingItem
- (BOOL)isEqual:(id)a3;
- (IMTranscriptSharingItem)initWithCoder:(id)a3;
- (IMTranscriptSharingItem)initWithDictionary:(id)a3;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMTranscriptSharingItem

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = IMTranscriptSharingItem;
  v4 = [(IMItem *)&v9 copyWithZone:a3];
  v5 = [(IMTranscriptSharingItem *)self otherUnformattedID];
  [v4 setOtherUnformattedID:v5];

  v6 = [(IMTranscriptSharingItem *)self otherHandle];
  [v4 setOtherHandle:v6];

  v7 = [(IMTranscriptSharingItem *)self otherCountryCode];
  [v4 setOtherCountryCode:v7];

  return v4;
}

- (IMTranscriptSharingItem)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IMTranscriptSharingItem;
  v5 = [(IMItem *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"];
    [(IMTranscriptSharingItem *)v5 setOtherCountryCode:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"];
    [(IMTranscriptSharingItem *)v5 setOtherHandle:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"];
    [(IMTranscriptSharingItem *)v5 setOtherUnformattedID:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = IMTranscriptSharingItem;
  v4 = a3;
  [(IMItem *)&v8 encodeWithCoder:v4];
  v5 = [(IMTranscriptSharingItem *)self otherCountryCode:v8.receiver];
  [v4 encodeObject:v5 forKey:@"otherCountryCode"];

  v6 = [(IMTranscriptSharingItem *)self otherHandle];
  [v4 encodeObject:v6 forKey:@"otherHandle"];

  v7 = [(IMTranscriptSharingItem *)self otherUnformattedID];
  [v4 encodeObject:v7 forKey:@"otherUnformattedID"];
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
      v25.receiver = self;
      v25.super_class = IMTranscriptSharingItem;
      if (![(IMItem *)&v25 isEqual:v5])
      {
        v10 = 0;
LABEL_23:

        goto LABEL_24;
      }

      otherCountryCode = self->_otherCountryCode;
      v7 = [(IMTranscriptSharingItem *)v5 otherCountryCode];
      if (otherCountryCode != v7)
      {
        v8 = self->_otherCountryCode;
        v9 = [(IMTranscriptSharingItem *)v5 otherCountryCode];
        if (![(NSString *)v8 isEqualToString:v9])
        {
          v10 = 0;
          goto LABEL_21;
        }

        v23 = v9;
      }

      otherHandle = self->_otherHandle;
      v12 = [(IMTranscriptSharingItem *)v5 otherHandle];
      if (otherHandle != v12)
      {
        v13 = self->_otherHandle;
        v14 = [(IMTranscriptSharingItem *)v5 otherHandle];
        if (![(NSString *)v13 isEqualToString:v14])
        {
          v10 = 0;
          goto LABEL_19;
        }

        v21 = v14;
      }

      otherUnformattedID = self->_otherUnformattedID;
      v16 = [(IMTranscriptSharingItem *)v5 otherUnformattedID];
      v17 = v16;
      if (otherUnformattedID == v16)
      {

        v10 = 1;
      }

      else
      {
        v18 = self->_otherUnformattedID;
        v19 = [(IMTranscriptSharingItem *)v5 otherUnformattedID];
        v10 = [(NSString *)v18 isEqualToString:v19];
      }

      v14 = v22;
      if (otherHandle == v12)
      {
LABEL_20:

        v9 = v23;
        if (otherCountryCode == v7)
        {
LABEL_22:

          goto LABEL_23;
        }

LABEL_21:

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v24.receiver = self;
    v24.super_class = IMTranscriptSharingItem;
    v10 = [(IMItem *)&v24 isEqual:v4];
  }

LABEL_24:

  return v10;
}

- (IMTranscriptSharingItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IMTranscriptSharingItem;
  v5 = [(IMItem *)&v10 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"otherCountryCode"];
    [(IMTranscriptSharingItem *)v5 setOtherCountryCode:v6];

    v7 = [v4 objectForKey:@"otherHandle"];
    [(IMTranscriptSharingItem *)v5 setOtherHandle:v7];

    v8 = [v4 objectForKey:@"otherUnformattedID"];
    [(IMTranscriptSharingItem *)v5 setOtherUnformattedID:v8];
  }

  return v5;
}

- (id)copyDictionaryRepresentation
{
  v9.receiver = self;
  v9.super_class = IMTranscriptSharingItem;
  v3 = [(IMItem *)&v9 copyDictionaryRepresentation];
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

  objc_autoreleasePoolPop(v4);
  return v3;
}

@end