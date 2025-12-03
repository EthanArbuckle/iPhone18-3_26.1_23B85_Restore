@interface IDSOffGridEncryptionProperties
- (IDSOffGridEncryptionProperties)init;
- (IDSOffGridEncryptionProperties)initWithCoder:(id)coder;
- (IDSOffGridEncryptionProperties)initWithDictionary:(id)dictionary;
- (NSData)authTag;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSOffGridEncryptionProperties

- (IDSOffGridEncryptionProperties)init
{
  v3.receiver = self;
  v3.super_class = IDSOffGridEncryptionProperties;
  return [(IDSOffGridEncryptionProperties *)&v3 init];
}

- (IDSOffGridEncryptionProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = IDSOffGridEncryptionProperties;
  v5 = [(IDSOffGridEncryptionProperties *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rc"];
    ratchetCounter = v5->_ratchetCounter;
    v5->_ratchetCounter = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"e-id"];
    encryptionKeyID = v5->_encryptionKeyID;
    v5->_encryptionKeyID = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"at"];
    authTag = v5->_authTag;
    v5->_authTag = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"segment-number"];
    segmentNumber = v5->_segmentNumber;
    v5->_segmentNumber = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"segment-count"];
    totalSegments = v5->_totalSegments;
    v5->_totalSegments = v14;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  ratchetCounter = self->_ratchetCounter;
  if (ratchetCounter)
  {
    CFDictionarySetValue(v3, @"rc", ratchetCounter);
  }

  encryptionKeyID = self->_encryptionKeyID;
  if (encryptionKeyID)
  {
    CFDictionarySetValue(v4, @"e-id", encryptionKeyID);
  }

  authTag = self->_authTag;
  if (authTag)
  {
    CFDictionarySetValue(v4, @"at", authTag);
  }

  segmentNumber = self->_segmentNumber;
  if (segmentNumber)
  {
    CFDictionarySetValue(v4, @"segment-number", segmentNumber);
  }

  totalSegments = self->_totalSegments;
  if (totalSegments)
  {
    CFDictionarySetValue(v4, @"segment-count", totalSegments);
  }

  v10 = [(__CFDictionary *)v4 copy];

  return v10;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  segmentNumber = [(IDSOffGridEncryptionProperties *)self segmentNumber];
  segmentNumber2 = [compareCopy segmentNumber];

  v7 = [segmentNumber compare:segmentNumber2];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  dictionaryRepresentation = [(IDSOffGridEncryptionProperties *)self dictionaryRepresentation];
  v6 = [v4 initWithDictionary:dictionaryRepresentation];

  return v6;
}

- (NSData)authTag
{
  integerValue = [(NSNumber *)self->_segmentNumber integerValue];
  if (integerValue == [(NSNumber *)self->_totalSegments integerValue])
  {
    v4 = self->_authTag;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (IDSOffGridEncryptionProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rc"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"e-id"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"at"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"segment-number"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"segment-count"];

  v10 = objc_alloc_init(IDSOffGridEncryptionProperties);
  [(IDSOffGridEncryptionProperties *)v10 setRatchetCounter:v5];
  [(IDSOffGridEncryptionProperties *)v10 setEncryptionKeyID:v6];
  [(IDSOffGridEncryptionProperties *)v10 setAuthTag:v7];
  [(IDSOffGridEncryptionProperties *)v10 setSegmentNumber:v8];
  [(IDSOffGridEncryptionProperties *)v10 setTotalSegments:v9];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  ratchetCounter = self->_ratchetCounter;
  coderCopy = coder;
  [coderCopy encodeObject:ratchetCounter forKey:@"rc"];
  [coderCopy encodeObject:self->_encryptionKeyID forKey:@"e-id"];
  [coderCopy encodeObject:self->_authTag forKey:@"at"];
  [coderCopy encodeObject:self->_segmentNumber forKey:@"segment-number"];
  [coderCopy encodeObject:self->_totalSegments forKey:@"segment-count"];
}

@end