@interface DACarKeySharingMessage
+ (id)decodeWithData:(id)a3 error:(id *)a4;
- (DACarKeySharingMessage)initWithCoder:(id)a3;
- (DACarKeySharingMessage)initWithGenericCrossPlatformSharingData:(id)a3 additionalData:(id)a4 privateData:(id)a5;
- (DACarKeySharingMessage)initWithGenericDataDictionary:(id)a3 additionalDataDictionary:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DACarKeySharingMessage

- (DACarKeySharingMessage)initWithGenericCrossPlatformSharingData:(id)a3 additionalData:(id)a4 privateData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DACarKeySharingMessage;
  v12 = [(DACarKeySharingMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_genericData, a3);
    objc_storeStrong(&v13->_additionalData, a4);
    objc_storeStrong(&v13->_privateData, a5);
  }

  return v13;
}

- (DACarKeySharingMessage)initWithGenericDataDictionary:(id)a3 additionalDataDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = DACarKeySharingMessage;
  v8 = [(DACarKeySharingMessage *)&v15 init];
  if (v8)
  {
    if (v6)
    {
      v9 = [[DACarKeyGenericCrossPlatformSharingData alloc] initWithDictionary:v6];
    }

    else
    {
      v9 = 0;
    }

    genericData = v8->_genericData;
    v8->_genericData = v9;

    if (v7)
    {
      v11 = [[DACarKeyAdditionalCrossPlatformSharingData alloc] initWithDictionary:v7];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[DACarKeySharingMessage allocWithZone:](DACarKeySharingMessage init];
  if (v5)
  {
    v6 = [(DACarKeyGenericCrossPlatformSharingData *)self->_genericData copyWithZone:a3];
    genericData = v5->_genericData;
    v5->_genericData = v6;

    v8 = [(DACarKeyAdditionalCrossPlatformSharingData *)self->_additionalData copyWithZone:a3];
    additionalData = v5->_additionalData;
    v5->_additionalData = v8;

    v10 = [(DACarKeyPrivateCrossPlatformSharingData *)self->_privateData copyWithZone:a3];
    privateData = v5->_privateData;
    v5->_privateData = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DACarKeySharingMessage *)self genericData];
  [v4 encodeObject:v5 forKey:@"genericData"];

  v6 = [(DACarKeySharingMessage *)self additionalData];
  [v4 encodeObject:v6 forKey:@"additionalData"];

  v7 = [(DACarKeySharingMessage *)self privateData];
  [v4 encodeObject:v7 forKey:@"privateData"];
}

- (DACarKeySharingMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DACarKeySharingMessage;
  v5 = [(DACarKeySharingMessage *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genericData"];
    genericData = v5->_genericData;
    v5->_genericData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"additionalData"];
    additionalData = v5->_additionalData;
    v5->_additionalData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateData"];
    privateData = v5->_privateData;
    v5->_privateData = v10;
  }

  return v5;
}

+ (id)decodeWithData:(id)a3 error:(id *)a4
{
  v5 = decodeWithData_error__pred_428;
  v6 = a3;
  if (v5 != -1)
  {
    +[DACarKeySharingMessage decodeWithData:error:];
  }

  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:decodeWithData_error__allowedClasses_429 fromData:v6 error:a4];

  return v7;
}

uint64_t __47__DACarKeySharingMessage_decodeWithData_error___block_invoke()
{
  decodeWithData_error__allowedClasses_429 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Generic Sharing Data       : %@\n", self->_genericData];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Additional Sharing Data    : %@\n", self->_additionalData];
  [v3 appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Private Sharing Data       : %@\n", self->_privateData];
  [v3 appendString:v6];

  return v3;
}

@end