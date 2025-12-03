@interface IMTranscriptSharingItem
- (BOOL)isEqual:(id)equal;
- (IMTranscriptSharingItem)initWithCoder:(id)coder;
- (IMTranscriptSharingItem)initWithDictionary:(id)dictionary;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMTranscriptSharingItem

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = IMTranscriptSharingItem;
  v4 = [(IMItem *)&v9 copyWithZone:zone];
  otherUnformattedID = [(IMTranscriptSharingItem *)self otherUnformattedID];
  [v4 setOtherUnformattedID:otherUnformattedID];

  otherHandle = [(IMTranscriptSharingItem *)self otherHandle];
  [v4 setOtherHandle:otherHandle];

  otherCountryCode = [(IMTranscriptSharingItem *)self otherCountryCode];
  [v4 setOtherCountryCode:otherCountryCode];

  return v4;
}

- (IMTranscriptSharingItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = IMTranscriptSharingItem;
  v5 = [(IMItem *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"];
    [(IMTranscriptSharingItem *)v5 setOtherCountryCode:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"];
    [(IMTranscriptSharingItem *)v5 setOtherHandle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"];
    [(IMTranscriptSharingItem *)v5 setOtherUnformattedID:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IMTranscriptSharingItem;
  coderCopy = coder;
  [(IMItem *)&v8 encodeWithCoder:coderCopy];
  v5 = [(IMTranscriptSharingItem *)self otherCountryCode:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"otherCountryCode"];

  otherHandle = [(IMTranscriptSharingItem *)self otherHandle];
  [coderCopy encodeObject:otherHandle forKey:@"otherHandle"];

  otherUnformattedID = [(IMTranscriptSharingItem *)self otherUnformattedID];
  [coderCopy encodeObject:otherUnformattedID forKey:@"otherUnformattedID"];
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
      v25.receiver = self;
      v25.super_class = IMTranscriptSharingItem;
      if (![(IMItem *)&v25 isEqual:v5])
      {
        v10 = 0;
LABEL_23:

        goto LABEL_24;
      }

      otherCountryCode = self->_otherCountryCode;
      otherCountryCode = [(IMTranscriptSharingItem *)v5 otherCountryCode];
      if (otherCountryCode != otherCountryCode)
      {
        v8 = self->_otherCountryCode;
        otherCountryCode2 = [(IMTranscriptSharingItem *)v5 otherCountryCode];
        if (![(NSString *)v8 isEqualToString:otherCountryCode2])
        {
          v10 = 0;
          goto LABEL_21;
        }

        v23 = otherCountryCode2;
      }

      otherHandle = self->_otherHandle;
      otherHandle = [(IMTranscriptSharingItem *)v5 otherHandle];
      if (otherHandle != otherHandle)
      {
        v13 = self->_otherHandle;
        otherHandle2 = [(IMTranscriptSharingItem *)v5 otherHandle];
        if (![(NSString *)v13 isEqualToString:otherHandle2])
        {
          v10 = 0;
          goto LABEL_19;
        }

        v21 = otherHandle2;
      }

      otherUnformattedID = self->_otherUnformattedID;
      otherUnformattedID = [(IMTranscriptSharingItem *)v5 otherUnformattedID];
      v17 = otherUnformattedID;
      if (otherUnformattedID == otherUnformattedID)
      {

        v10 = 1;
      }

      else
      {
        v18 = self->_otherUnformattedID;
        otherUnformattedID2 = [(IMTranscriptSharingItem *)v5 otherUnformattedID];
        v10 = [(NSString *)v18 isEqualToString:otherUnformattedID2];
      }

      otherHandle2 = v22;
      if (otherHandle == otherHandle)
      {
LABEL_20:

        otherCountryCode2 = v23;
        if (otherCountryCode == otherCountryCode)
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
    v10 = [(IMItem *)&v24 isEqual:equalCopy];
  }

LABEL_24:

  return v10;
}

- (IMTranscriptSharingItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IMTranscriptSharingItem;
  v5 = [(IMItem *)&v10 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"otherCountryCode"];
    [(IMTranscriptSharingItem *)v5 setOtherCountryCode:v6];

    v7 = [dictionaryCopy objectForKey:@"otherHandle"];
    [(IMTranscriptSharingItem *)v5 setOtherHandle:v7];

    v8 = [dictionaryCopy objectForKey:@"otherUnformattedID"];
    [(IMTranscriptSharingItem *)v5 setOtherUnformattedID:v8];
  }

  return v5;
}

- (id)copyDictionaryRepresentation
{
  v9.receiver = self;
  v9.super_class = IMTranscriptSharingItem;
  copyDictionaryRepresentation = [(IMItem *)&v9 copyDictionaryRepresentation];
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

  objc_autoreleasePoolPop(v4);
  return copyDictionaryRepresentation;
}

@end