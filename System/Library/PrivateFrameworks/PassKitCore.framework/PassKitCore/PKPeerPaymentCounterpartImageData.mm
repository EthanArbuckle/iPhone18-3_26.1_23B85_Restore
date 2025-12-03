@interface PKPeerPaymentCounterpartImageData
+ (id)counterpartImageDataIdentifierFromRecordName:(id)name;
+ (id)recordNameForCounterpartImageDataIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentCounterpartImageData)initWithAppearanceData:(id)data;
- (PKPeerPaymentCounterpartImageData)initWithCloudStoreCoder:(id)coder;
- (PKPeerPaymentCounterpartImageData)initWithCoder:(id)coder;
- (PKPeerPaymentCounterpartImageData)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)recordTypesAndNamesForCodingType:(unint64_t)type;
- (unint64_t)hash;
- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentCounterpartImageData

- (PKPeerPaymentCounterpartImageData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentCounterpartImageData;
  v5 = [(PKPeerPaymentCounterpartImageData *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKDataForKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v8;
  }

  return v5;
}

- (PKPeerPaymentCounterpartImageData)initWithAppearanceData:(id)data
{
  dataCopy = data;
  imageData = [dataCopy imageData];
  if (imageData)
  {
    v14.receiver = self;
    v14.super_class = PKPeerPaymentCounterpartImageData;
    v6 = [(PKPeerPaymentCounterpartImageData *)&v14 init];
    if (v6)
    {
      array = [MEMORY[0x1E695DF70] array];
      displayName = [dataCopy displayName];
      [array safelyAddObject:displayName];

      [array safelyAddObject:imageData];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", PKCombinedHash(17, array)];
      identifier = v6->_identifier;
      v6->_identifier = v9;

      objc_storeStrong(&v6->_imageData, imageData);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Error: attempted to initialize PKPeerPaymentCounterpartImageData with nil image data", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (PKPeerPaymentCounterpartImageData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentCounterpartImageData;
  v5 = [(PKPeerPaymentCounterpartImageData *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_imageData forKey:@"imageData"];
}

- (PKPeerPaymentCounterpartImageData)initWithCloudStoreCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentCounterpartImageData;
  v5 = [(PKPeerPaymentCounterpartImageData *)&v21 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [coderCopy recordsWithRecordType:@"CounterpartImage"];
  firstObject = [v6 firstObject];

  v8 = [firstObject pk_encryptedStringForKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v8;

  if (!v5->_identifier)
  {
    v11 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v17 = "Cannot create a PKPeerPaymentCounterpartImageData with no identifier from CloudKit.";
LABEL_11:
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, v17, v20, 2u);
    }

LABEL_15:

    v16 = 0;
    goto LABEL_16;
  }

  v10 = [firstObject objectForKey:@"imageData"];
  if (!v10)
  {
    v11 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v17 = "Cannot create a PKPeerPaymentCounterpartImageData with no asset data from CloudKit.";
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v11 = v10;
  v12 = objc_alloc(MEMORY[0x1E695DEF0]);
  fileURL = [v11 fileURL];
  v14 = [v12 initWithContentsOfURL:fileURL];

  if (!v14)
  {
    v18 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Cannot create a PKPeerPaymentCounterpartImageData with nil data", v20, 2u);
    }

    goto LABEL_15;
  }

  imageData = v5->_imageData;
  v5->_imageData = v14;

LABEL_6:
  v16 = v5;
LABEL_16:

  return v16;
}

- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type
{
  coderCopy = coder;
  v6 = objc_autoreleasePoolPush();
  v7 = [coderCopy recordsWithRecordType:@"CounterpartImage"];
  firstObject = [v7 firstObject];

  encryptedValues = [firstObject encryptedValues];
  [encryptedValues setObject:self->_identifier forKey:@"identifier"];
  v10 = NSTemporaryDirectory();
  v11 = [v10 stringByAppendingPathComponent:self->_identifier];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtPath:v11 error:0];

  [(NSData *)self->_imageData writeToFile:v11 atomically:1];
  v13 = objc_alloc(MEMORY[0x1E695B878]);
  v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
  v15 = [v13 initWithFileURL:v14];

  if (v15)
  {
    [firstObject setObject:v15 forKey:@"imageData"];
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(0xAuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Could not set CKAsset for the CKRecord because it is nil.", v17, 2u);
    }
  }

  objc_autoreleasePoolPop(v6);
}

+ (id)recordNameForCounterpartImageDataIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  v6 = [v4 alloc];
  recordNamePrefix = [self recordNamePrefix];
  identifierCopy = [v6 initWithFormat:@"%@%@", recordNamePrefix, identifierCopy];

  return identifierCopy;
}

+ (id)counterpartImageDataIdentifierFromRecordName:(id)name
{
  nameCopy = name;
  recordNamePrefix = [self recordNamePrefix];
  v6 = [nameCopy hasPrefix:recordNamePrefix];

  if (v6)
  {
    recordNamePrefix2 = [self recordNamePrefix];
    v8 = [nameCopy substringFromIndex:{objc_msgSend(recordNamePrefix2, "length")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)type
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  recordNamePrefix = [objc_opt_class() recordNamePrefix];
  primaryIdentifier = [(PKPeerPaymentCounterpartImageData *)self primaryIdentifier];
  v7 = [v4 initWithFormat:@"%@%@", recordNamePrefix, primaryIdentifier, @"CounterpartImage"];
  v12 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_identifier == equalCopy[1] && self->_imageData == equalCopy[2];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"imageData: '%@'; ", self->_imageData];
  [v3 appendFormat:@">"];

  return v3;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_imageData];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PKPeerPaymentCounterpartImageData allocWithZone:?]];
  objc_storeStrong(&v4->_identifier, self->_identifier);
  objc_storeStrong(&v4->_imageData, self->_imageData);
  return v4;
}

@end