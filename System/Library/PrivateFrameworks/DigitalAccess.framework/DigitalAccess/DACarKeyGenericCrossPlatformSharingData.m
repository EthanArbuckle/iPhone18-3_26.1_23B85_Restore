@interface DACarKeyGenericCrossPlatformSharingData
+ (id)decodeWithData:(id)a3 error:(id *)a4;
- (DACarKeyGenericCrossPlatformSharingData)initWithCoder:(id)a3;
- (DACarKeyGenericCrossPlatformSharingData)initWithDictionary:(id)a3;
- (DACarKeyGenericCrossPlatformSharingData)initWithSharingIdentifier:(id)a3 friendKeyIdentifier:(id)a4 sharingMessageType:(int64_t)a5 message:(id)a6;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DACarKeyGenericCrossPlatformSharingData

- (DACarKeyGenericCrossPlatformSharingData)initWithSharingIdentifier:(id)a3 friendKeyIdentifier:(id)a4 sharingMessageType:(int64_t)a5 message:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DACarKeyGenericCrossPlatformSharingData;
  v14 = [(DACarKeyGenericCrossPlatformSharingData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sharingIdentifier, a3);
    objc_storeStrong(&v15->_friendKeyIdentifier, a4);
    v15->_messageType = a5;
    objc_storeStrong(&v15->_message, a6);
  }

  return v15;
}

- (DACarKeyGenericCrossPlatformSharingData)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DACarKeyGenericCrossPlatformSharingData;
  v5 = [(DACarKeyGenericCrossPlatformSharingData *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sharingId"];
    sharingIdentifier = v5->_sharingIdentifier;
    v5->_sharingIdentifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"friendKeyId"];
    friendKeyIdentifier = v5->_friendKeyIdentifier;
    v5->_friendKeyIdentifier = v8;

    v10 = [v4 objectForKeyedSubscript:@"sharingDataType"];
    v5->_messageType = [v10 integerValue];

    v11 = [v4 objectForKeyedSubscript:@"sharingData"];
    v12 = kmlUtilDataForHexString(v11);
    message = v5->_message;
    v5->_message = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[DACarKeyGenericCrossPlatformSharingData allocWithZone:](DACarKeyGenericCrossPlatformSharingData init];
  if (v5)
  {
    v6 = [(NSString *)self->_sharingIdentifier copyWithZone:a3];
    sharingIdentifier = v5->_sharingIdentifier;
    v5->_sharingIdentifier = v6;

    v8 = [(NSString *)self->_friendKeyIdentifier copyWithZone:a3];
    friendKeyIdentifier = v5->_friendKeyIdentifier;
    v5->_friendKeyIdentifier = v8;

    v5->_messageType = self->_messageType;
    v10 = [(NSData *)self->_message copyWithZone:a3];
    message = v5->_message;
    v5->_message = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DACarKeyGenericCrossPlatformSharingData *)self sharingIdentifier];
  [v4 encodeObject:v5 forKey:@"sharingId"];

  v6 = [(DACarKeyGenericCrossPlatformSharingData *)self friendKeyIdentifier];
  [v4 encodeObject:v6 forKey:@"friendKeyId"];

  [v4 encodeInteger:-[DACarKeyGenericCrossPlatformSharingData messageType](self forKey:{"messageType"), @"sharingDataType"}];
  v7 = [(DACarKeyGenericCrossPlatformSharingData *)self message];
  [v4 encodeObject:v7 forKey:@"sharingData"];
}

- (DACarKeyGenericCrossPlatformSharingData)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DACarKeyGenericCrossPlatformSharingData;
  v5 = [(DACarKeyGenericCrossPlatformSharingData *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingId"];
    sharingIdentifier = v5->_sharingIdentifier;
    v5->_sharingIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"friendKeyId"];
    friendKeyIdentifier = v5->_friendKeyIdentifier;
    v5->_friendKeyIdentifier = v8;

    v5->_messageType = [v4 decodeIntegerForKey:@"sharingDataType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingData"];
    message = v5->_message;
    v5->_message = v10;
  }

  return v5;
}

+ (id)decodeWithData:(id)a3 error:(id *)a4
{
  v5 = decodeWithData_error__pred;
  v6 = a3;
  if (v5 != -1)
  {
    +[DACarKeyGenericCrossPlatformSharingData decodeWithData:error:];
  }

  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:decodeWithData_error__allowedClasses fromData:v6 error:a4];

  return v7;
}

uint64_t __64__DACarKeyGenericCrossPlatformSharingData_decodeWithData_error___block_invoke()
{
  decodeWithData_error__allowedClasses = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sharing ID            : %@\n", self->_sharingIdentifier];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Friend Key ID         : %@\n", self->_friendKeyIdentifier];
  [v3 appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Message Type          : %ld\n", self->_messageType];
  [v3 appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Message               : %@\n", self->_message];
  [v3 appendString:v7];

  return v3;
}

- (id)asDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:self->_sharingIdentifier forKeyedSubscript:@"sharingId"];
  [v3 setObject:self->_friendKeyIdentifier forKeyedSubscript:@"friendKeyId"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_messageType];
  [v3 setObject:v4 forKeyedSubscript:@"sharingDataType"];

  v5 = kmlUtilHexStringFromData(self->_message);
  [v3 setObject:v5 forKeyedSubscript:@"sharingData"];

  return v3;
}

@end