@interface PKPeerPaymentCounterpartImageData
+ (id)counterpartImageDataIdentifierFromRecordName:(id)a3;
+ (id)recordNameForCounterpartImageDataIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentCounterpartImageData)initWithAppearanceData:(id)a3;
- (PKPeerPaymentCounterpartImageData)initWithCloudStoreCoder:(id)a3;
- (PKPeerPaymentCounterpartImageData)initWithCoder:(id)a3;
- (PKPeerPaymentCounterpartImageData)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)recordTypesAndNamesForCodingType:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentCounterpartImageData

- (PKPeerPaymentCounterpartImageData)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentCounterpartImageData;
  v5 = [(PKPeerPaymentCounterpartImageData *)&v11 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKDataForKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v8;
  }

  return v5;
}

- (PKPeerPaymentCounterpartImageData)initWithAppearanceData:(id)a3
{
  v4 = a3;
  v5 = [v4 imageData];
  if (v5)
  {
    v14.receiver = self;
    v14.super_class = PKPeerPaymentCounterpartImageData;
    v6 = [(PKPeerPaymentCounterpartImageData *)&v14 init];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DF70] array];
      v8 = [v4 displayName];
      [v7 safelyAddObject:v8];

      [v7 safelyAddObject:v5];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", PKCombinedHash(17, v7)];
      identifier = v6->_identifier;
      v6->_identifier = v9;

      objc_storeStrong(&v6->_imageData, v5);
    }

    self = v6;
    v11 = self;
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Error: attempted to initialize PKPeerPaymentCounterpartImageData with nil image data", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (PKPeerPaymentCounterpartImageData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentCounterpartImageData;
  v5 = [(PKPeerPaymentCounterpartImageData *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_imageData forKey:@"imageData"];
}

- (PKPeerPaymentCounterpartImageData)initWithCloudStoreCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentCounterpartImageData;
  v5 = [(PKPeerPaymentCounterpartImageData *)&v21 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 recordsWithRecordType:@"CounterpartImage"];
  v7 = [v6 firstObject];

  v8 = [v7 pk_encryptedStringForKey:@"identifier"];
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

  v10 = [v7 objectForKey:@"imageData"];
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
  v13 = [v11 fileURL];
  v14 = [v12 initWithContentsOfURL:v13];

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

- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 recordsWithRecordType:@"CounterpartImage"];
  v8 = [v7 firstObject];

  v9 = [v8 encryptedValues];
  [v9 setObject:self->_identifier forKey:@"identifier"];
  v10 = NSTemporaryDirectory();
  v11 = [v10 stringByAppendingPathComponent:self->_identifier];

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  [v12 removeItemAtPath:v11 error:0];

  [(NSData *)self->_imageData writeToFile:v11 atomically:1];
  v13 = objc_alloc(MEMORY[0x1E695B878]);
  v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
  v15 = [v13 initWithFileURL:v14];

  if (v15)
  {
    [v8 setObject:v15 forKey:@"imageData"];
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

+ (id)recordNameForCounterpartImageDataIdentifier:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [a1 recordNamePrefix];
  v8 = [v6 initWithFormat:@"%@%@", v7, v5];

  return v8;
}

+ (id)counterpartImageDataIdentifierFromRecordName:(id)a3
{
  v4 = a3;
  v5 = [a1 recordNamePrefix];
  v6 = [v4 hasPrefix:v5];

  if (v6)
  {
    v7 = [a1 recordNamePrefix];
    v8 = [v4 substringFromIndex:{objc_msgSend(v7, "length")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [objc_opt_class() recordNamePrefix];
  v6 = [(PKPeerPaymentCounterpartImageData *)self primaryIdentifier];
  v7 = [v4 initWithFormat:@"%@%@", v5, v6, @"CounterpartImage"];
  v12 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_identifier == v4[1] && self->_imageData == v4[2];

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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_imageData];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PKPeerPaymentCounterpartImageData allocWithZone:?]];
  objc_storeStrong(&v4->_identifier, self->_identifier);
  objc_storeStrong(&v4->_imageData, self->_imageData);
  return v4;
}

@end