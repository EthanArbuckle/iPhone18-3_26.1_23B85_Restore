@interface IMLocationUpdateSentItem
- (BOOL)isEqual:(id)equal;
- (IMLocationUpdateSentItem)initWithCoder:(id)coder;
- (IMLocationUpdateSentItem)initWithDictionary:(id)dictionary;
- (id)copyDictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMLocationUpdateSentItem

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = IMLocationUpdateSentItem;
  v4 = [(IMItem *)&v9 copyWithZone:zone];
  otherUnformattedID = [(IMLocationUpdateSentItem *)self otherUnformattedID];
  [v4 setOtherUnformattedID:otherUnformattedID];

  otherHandle = [(IMLocationUpdateSentItem *)self otherHandle];
  [v4 setOtherHandle:otherHandle];

  otherCountryCode = [(IMLocationUpdateSentItem *)self otherCountryCode];
  [v4 setOtherCountryCode:otherCountryCode];

  return v4;
}

- (IMLocationUpdateSentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = IMLocationUpdateSentItem;
  v5 = [(IMItem *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherCountryCode"];
    [(IMLocationUpdateSentItem *)v5 setOtherCountryCode:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherHandle"];
    [(IMLocationUpdateSentItem *)v5 setOtherHandle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherUnformattedID"];
    [(IMLocationUpdateSentItem *)v5 setOtherUnformattedID:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IMLocationUpdateSentItem;
  coderCopy = coder;
  [(IMItem *)&v8 encodeWithCoder:coderCopy];
  v5 = [(IMLocationUpdateSentItem *)self otherCountryCode:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"otherCountryCode"];

  otherHandle = [(IMLocationUpdateSentItem *)self otherHandle];
  [coderCopy encodeObject:otherHandle forKey:@"otherHandle"];

  otherUnformattedID = [(IMLocationUpdateSentItem *)self otherUnformattedID];
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
      v25.super_class = IMLocationUpdateSentItem;
      if (![(IMItem *)&v25 isEqual:v5])
      {
        v10 = 0;
LABEL_23:

        goto LABEL_24;
      }

      otherCountryCode = self->_otherCountryCode;
      otherCountryCode = [(IMLocationUpdateSentItem *)v5 otherCountryCode];
      if (otherCountryCode != otherCountryCode)
      {
        v8 = self->_otherCountryCode;
        otherCountryCode2 = [(IMLocationUpdateSentItem *)v5 otherCountryCode];
        if (![(NSString *)v8 isEqualToString:otherCountryCode2])
        {
          v10 = 0;
          goto LABEL_21;
        }

        v23 = otherCountryCode2;
      }

      otherHandle = self->_otherHandle;
      otherHandle = [(IMLocationUpdateSentItem *)v5 otherHandle];
      if (otherHandle != otherHandle)
      {
        v13 = self->_otherHandle;
        otherHandle2 = [(IMLocationUpdateSentItem *)v5 otherHandle];
        if (![(NSString *)v13 isEqualToString:otherHandle2])
        {
          v10 = 0;
          goto LABEL_19;
        }

        v21 = otherHandle2;
      }

      otherUnformattedID = self->_otherUnformattedID;
      otherUnformattedID = [(IMLocationUpdateSentItem *)v5 otherUnformattedID];
      v17 = otherUnformattedID;
      if (otherUnformattedID == otherUnformattedID)
      {

        v10 = 1;
      }

      else
      {
        v18 = self->_otherUnformattedID;
        otherUnformattedID2 = [(IMLocationUpdateSentItem *)v5 otherUnformattedID];
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
    v24.super_class = IMLocationUpdateSentItem;
    v10 = [(IMItem *)&v24 isEqual:equalCopy];
  }

LABEL_24:

  return v10;
}

- (IMLocationUpdateSentItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IMLocationUpdateSentItem;
  v5 = [(IMItem *)&v10 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"otherCountryCode"];
    [(IMLocationUpdateSentItem *)v5 setOtherCountryCode:v6];

    v7 = [dictionaryCopy objectForKey:@"otherHandle"];
    [(IMLocationUpdateSentItem *)v5 setOtherHandle:v7];

    v8 = [dictionaryCopy objectForKey:@"otherUnformattedID"];
    [(IMLocationUpdateSentItem *)v5 setOtherUnformattedID:v8];
  }

  return v5;
}

- (id)copyDictionaryRepresentation
{
  v9.receiver = self;
  v9.super_class = IMLocationUpdateSentItem;
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