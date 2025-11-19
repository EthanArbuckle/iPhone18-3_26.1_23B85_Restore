@interface IDSOffGridEncryptionProperties
- (IDSOffGridEncryptionProperties)init;
- (IDSOffGridEncryptionProperties)initWithCoder:(id)a3;
- (IDSOffGridEncryptionProperties)initWithDictionary:(id)a3;
- (NSData)authTag;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSOffGridEncryptionProperties

- (IDSOffGridEncryptionProperties)init
{
  v3.receiver = self;
  v3.super_class = IDSOffGridEncryptionProperties;
  return [(IDSOffGridEncryptionProperties *)&v3 init];
}

- (IDSOffGridEncryptionProperties)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IDSOffGridEncryptionProperties;
  v5 = [(IDSOffGridEncryptionProperties *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rc"];
    ratchetCounter = v5->_ratchetCounter;
    v5->_ratchetCounter = v6;

    v8 = [v4 objectForKeyedSubscript:@"e-id"];
    encryptionKeyID = v5->_encryptionKeyID;
    v5->_encryptionKeyID = v8;

    v10 = [v4 objectForKeyedSubscript:@"at"];
    authTag = v5->_authTag;
    v5->_authTag = v10;

    v12 = [v4 objectForKeyedSubscript:@"segment-number"];
    segmentNumber = v5->_segmentNumber;
    v5->_segmentNumber = v12;

    v14 = [v4 objectForKeyedSubscript:@"segment-count"];
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(IDSOffGridEncryptionProperties *)self segmentNumber];
  v6 = [v4 segmentNumber];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(IDSOffGridEncryptionProperties *)self dictionaryRepresentation];
  v6 = [v4 initWithDictionary:v5];

  return v6;
}

- (NSData)authTag
{
  v3 = [(NSNumber *)self->_segmentNumber integerValue];
  if (v3 == [(NSNumber *)self->_totalSegments integerValue])
  {
    v4 = self->_authTag;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (IDSOffGridEncryptionProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rc"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"e-id"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"at"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"segment-number"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"segment-count"];

  v10 = objc_alloc_init(IDSOffGridEncryptionProperties);
  [(IDSOffGridEncryptionProperties *)v10 setRatchetCounter:v5];
  [(IDSOffGridEncryptionProperties *)v10 setEncryptionKeyID:v6];
  [(IDSOffGridEncryptionProperties *)v10 setAuthTag:v7];
  [(IDSOffGridEncryptionProperties *)v10 setSegmentNumber:v8];
  [(IDSOffGridEncryptionProperties *)v10 setTotalSegments:v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  ratchetCounter = self->_ratchetCounter;
  v5 = a3;
  [v5 encodeObject:ratchetCounter forKey:@"rc"];
  [v5 encodeObject:self->_encryptionKeyID forKey:@"e-id"];
  [v5 encodeObject:self->_authTag forKey:@"at"];
  [v5 encodeObject:self->_segmentNumber forKey:@"segment-number"];
  [v5 encodeObject:self->_totalSegments forKey:@"segment-count"];
}

@end