@interface DACarKeySharingMessage
+ (id)decodeWithData:(id)data error:(id *)error;
- (DACarKeySharingMessage)initWithCoder:(id)coder;
- (DACarKeySharingMessage)initWithGenericCrossPlatformSharingData:(id)data additionalData:(id)additionalData privateData:(id)privateData;
- (DACarKeySharingMessage)initWithGenericDataDictionary:(id)dictionary additionalDataDictionary:(id)dataDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DACarKeySharingMessage

- (DACarKeySharingMessage)initWithGenericCrossPlatformSharingData:(id)data additionalData:(id)additionalData privateData:(id)privateData
{
  dataCopy = data;
  additionalDataCopy = additionalData;
  privateDataCopy = privateData;
  v15.receiver = self;
  v15.super_class = DACarKeySharingMessage;
  v12 = [(DACarKeySharingMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_genericData, data);
    objc_storeStrong(&v13->_additionalData, additionalData);
    objc_storeStrong(&v13->_privateData, privateData);
  }

  return v13;
}

- (DACarKeySharingMessage)initWithGenericDataDictionary:(id)dictionary additionalDataDictionary:(id)dataDictionary
{
  dictionaryCopy = dictionary;
  dataDictionaryCopy = dataDictionary;
  v15.receiver = self;
  v15.super_class = DACarKeySharingMessage;
  v8 = [(DACarKeySharingMessage *)&v15 init];
  if (v8)
  {
    if (dictionaryCopy)
    {
      v9 = [[DACarKeyGenericCrossPlatformSharingData alloc] initWithDictionary:dictionaryCopy];
    }

    else
    {
      v9 = 0;
    }

    genericData = v8->_genericData;
    v8->_genericData = v9;

    if (dataDictionaryCopy)
    {
      v11 = [[DACarKeyAdditionalCrossPlatformSharingData alloc] initWithDictionary:dataDictionaryCopy];
    }

    else
    {
      v11 = 0;
    }

    additionalData = v8->_additionalData;
    v8->_additionalData = v11;

    privateData = v8->_privateData;
    v8->_privateData = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[DACarKeySharingMessage allocWithZone:](DACarKeySharingMessage init];
  if (v5)
  {
    v6 = [(DACarKeyGenericCrossPlatformSharingData *)self->_genericData copyWithZone:zone];
    genericData = v5->_genericData;
    v5->_genericData = v6;

    v8 = [(DACarKeyAdditionalCrossPlatformSharingData *)self->_additionalData copyWithZone:zone];
    additionalData = v5->_additionalData;
    v5->_additionalData = v8;

    v10 = [(DACarKeyPrivateCrossPlatformSharingData *)self->_privateData copyWithZone:zone];
    privateData = v5->_privateData;
    v5->_privateData = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  genericData = [(DACarKeySharingMessage *)self genericData];
  [coderCopy encodeObject:genericData forKey:@"genericData"];

  additionalData = [(DACarKeySharingMessage *)self additionalData];
  [coderCopy encodeObject:additionalData forKey:@"additionalData"];

  privateData = [(DACarKeySharingMessage *)self privateData];
  [coderCopy encodeObject:privateData forKey:@"privateData"];
}

- (DACarKeySharingMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DACarKeySharingMessage;
  v5 = [(DACarKeySharingMessage *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genericData"];
    genericData = v5->_genericData;
    v5->_genericData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"additionalData"];
    additionalData = v5->_additionalData;
    v5->_additionalData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateData"];
    privateData = v5->_privateData;
    v5->_privateData = v10;
  }

  return v5;
}

+ (id)decodeWithData:(id)data error:(id *)error
{
  v5 = decodeWithData_error__pred_428;
  dataCopy = data;
  if (v5 != -1)
  {
    +[DACarKeySharingMessage decodeWithData:error:];
  }

  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:decodeWithData_error__allowedClasses_429 fromData:dataCopy error:error];

  return v7;
}

uint64_t __47__DACarKeySharingMessage_decodeWithData_error___block_invoke()
{
  decodeWithData_error__allowedClasses_429 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Generic Sharing Data       : %@\n", self->_genericData];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Additional Sharing Data    : %@\n", self->_additionalData];
  [string appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Private Sharing Data       : %@\n", self->_privateData];
  [string appendString:v6];

  return string;
}

@end