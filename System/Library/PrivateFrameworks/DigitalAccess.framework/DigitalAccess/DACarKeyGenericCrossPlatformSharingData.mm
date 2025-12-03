@interface DACarKeyGenericCrossPlatformSharingData
+ (id)decodeWithData:(id)data error:(id *)error;
- (DACarKeyGenericCrossPlatformSharingData)initWithCoder:(id)coder;
- (DACarKeyGenericCrossPlatformSharingData)initWithDictionary:(id)dictionary;
- (DACarKeyGenericCrossPlatformSharingData)initWithSharingIdentifier:(id)identifier friendKeyIdentifier:(id)keyIdentifier sharingMessageType:(int64_t)type message:(id)message;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DACarKeyGenericCrossPlatformSharingData

- (DACarKeyGenericCrossPlatformSharingData)initWithSharingIdentifier:(id)identifier friendKeyIdentifier:(id)keyIdentifier sharingMessageType:(int64_t)type message:(id)message
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = DACarKeyGenericCrossPlatformSharingData;
  v14 = [(DACarKeyGenericCrossPlatformSharingData *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_sharingIdentifier, identifier);
    objc_storeStrong(&v15->_friendKeyIdentifier, keyIdentifier);
    v15->_messageType = type;
    objc_storeStrong(&v15->_message, message);
  }

  return v15;
}

- (DACarKeyGenericCrossPlatformSharingData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = DACarKeyGenericCrossPlatformSharingData;
  v5 = [(DACarKeyGenericCrossPlatformSharingData *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sharingId"];
    sharingIdentifier = v5->_sharingIdentifier;
    v5->_sharingIdentifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"friendKeyId"];
    friendKeyIdentifier = v5->_friendKeyIdentifier;
    v5->_friendKeyIdentifier = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"sharingDataType"];
    v5->_messageType = [v10 integerValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"sharingData"];
    v12 = kmlUtilDataForHexString(v11);
    message = v5->_message;
    v5->_message = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[DACarKeyGenericCrossPlatformSharingData allocWithZone:](DACarKeyGenericCrossPlatformSharingData init];
  if (v5)
  {
    v6 = [(NSString *)self->_sharingIdentifier copyWithZone:zone];
    sharingIdentifier = v5->_sharingIdentifier;
    v5->_sharingIdentifier = v6;

    v8 = [(NSString *)self->_friendKeyIdentifier copyWithZone:zone];
    friendKeyIdentifier = v5->_friendKeyIdentifier;
    v5->_friendKeyIdentifier = v8;

    v5->_messageType = self->_messageType;
    v10 = [(NSData *)self->_message copyWithZone:zone];
    message = v5->_message;
    v5->_message = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sharingIdentifier = [(DACarKeyGenericCrossPlatformSharingData *)self sharingIdentifier];
  [coderCopy encodeObject:sharingIdentifier forKey:@"sharingId"];

  friendKeyIdentifier = [(DACarKeyGenericCrossPlatformSharingData *)self friendKeyIdentifier];
  [coderCopy encodeObject:friendKeyIdentifier forKey:@"friendKeyId"];

  [coderCopy encodeInteger:-[DACarKeyGenericCrossPlatformSharingData messageType](self forKey:{"messageType"), @"sharingDataType"}];
  message = [(DACarKeyGenericCrossPlatformSharingData *)self message];
  [coderCopy encodeObject:message forKey:@"sharingData"];
}

- (DACarKeyGenericCrossPlatformSharingData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DACarKeyGenericCrossPlatformSharingData;
  v5 = [(DACarKeyGenericCrossPlatformSharingData *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingId"];
    sharingIdentifier = v5->_sharingIdentifier;
    v5->_sharingIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"friendKeyId"];
    friendKeyIdentifier = v5->_friendKeyIdentifier;
    v5->_friendKeyIdentifier = v8;

    v5->_messageType = [coderCopy decodeIntegerForKey:@"sharingDataType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingData"];
    message = v5->_message;
    v5->_message = v10;
  }

  return v5;
}

+ (id)decodeWithData:(id)data error:(id *)error
{
  v5 = decodeWithData_error__pred;
  dataCopy = data;
  if (v5 != -1)
  {
    +[DACarKeyGenericCrossPlatformSharingData decodeWithData:error:];
  }

  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:decodeWithData_error__allowedClasses fromData:dataCopy error:error];

  return v7;
}

uint64_t __64__DACarKeyGenericCrossPlatformSharingData_decodeWithData_error___block_invoke()
{
  decodeWithData_error__allowedClasses = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sharing ID            : %@\n", self->_sharingIdentifier];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Friend Key ID         : %@\n", self->_friendKeyIdentifier];
  [string appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Message Type          : %ld\n", self->_messageType];
  [string appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Message               : %@\n", self->_message];
  [string appendString:v7];

  return string;
}

- (id)asDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_sharingIdentifier forKeyedSubscript:@"sharingId"];
  [dictionary setObject:self->_friendKeyIdentifier forKeyedSubscript:@"friendKeyId"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_messageType];
  [dictionary setObject:v4 forKeyedSubscript:@"sharingDataType"];

  v5 = kmlUtilHexStringFromData(self->_message);
  [dictionary setObject:v5 forKeyedSubscript:@"sharingData"];

  return dictionary;
}

@end