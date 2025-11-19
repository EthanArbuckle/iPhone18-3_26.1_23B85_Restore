@interface _CNUILikenessFingerprintNonpersistedContactImpl
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_CNUILikenessFingerprintNonpersistedContactImpl)init;
- (_CNUILikenessFingerprintNonpersistedContactImpl)initWithContact:(id)a3;
- (_CNUILikenessFingerprintNonpersistedContactImpl)initWithContactType:(int64_t)a3 givenName:(id)a4 middleName:(id)a5 familyName:(id)a6 emailAddresses:(id)a7 phoneNumbers:(id)a8 imageData:(id)a9 thumbnailImageData:(id)a10;
- (unint64_t)hash;
@end

@implementation _CNUILikenessFingerprintNonpersistedContactImpl

- (_CNUILikenessFingerprintNonpersistedContactImpl)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (_CNUILikenessFingerprintNonpersistedContactImpl)initWithContact:(id)a3
{
  v3 = a3;
  v15 = [v3 contactType];
  v4 = [v3 givenName];
  v5 = [v3 middleName];
  v6 = [v3 familyName];
  v7 = [v3 emailAddresses];
  v8 = [v7 _cn_compactMap:&__block_literal_global_133];
  v9 = [v3 phoneNumbers];
  v10 = [v9 _cn_compactMap:&__block_literal_global_135];
  v11 = [v3 imageData];
  v12 = [v3 thumbnailImageData];

  v13 = [(_CNUILikenessFingerprintNonpersistedContactImpl *)self initWithContactType:v15 givenName:v4 middleName:v5 familyName:v6 emailAddresses:v8 phoneNumbers:v10 imageData:v11 thumbnailImageData:v12];
  return v13;
}

- (_CNUILikenessFingerprintNonpersistedContactImpl)initWithContactType:(int64_t)a3 givenName:(id)a4 middleName:(id)a5 familyName:(id)a6 emailAddresses:(id)a7 phoneNumbers:(id)a8 imageData:(id)a9 thumbnailImageData:(id)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v41.receiver = self;
  v41.super_class = _CNUILikenessFingerprintNonpersistedContactImpl;
  v23 = [(_CNUILikenessFingerprintNonpersistedContactImpl *)&v41 init];
  v24 = v23;
  if (v23)
  {
    v23->_contactType = a3;
    v25 = [v16 copy];
    givenName = v24->_givenName;
    v24->_givenName = v25;

    v27 = [v17 copy];
    middleName = v24->_middleName;
    v24->_middleName = v27;

    v29 = [v18 copy];
    familyName = v24->_familyName;
    v24->_familyName = v29;

    v31 = [v19 copy];
    emailAddresses = v24->_emailAddresses;
    v24->_emailAddresses = v31;

    v33 = [v20 copy];
    phoneNumbers = v24->_phoneNumbers;
    v24->_phoneNumbers = v33;

    if ([v21 length])
    {
      v35 = 56;
      v36 = v21;
    }

    else
    {
      if (![v22 length])
      {
LABEL_7:
        v39 = v24;
        goto LABEL_8;
      }

      v35 = 64;
      v36 = v22;
    }

    v37 = [MEMORY[0x1E696B098] valueWithPointer:v36];
    v38 = *(&v24->super.isa + v35);
    *(&v24->super.isa + v35) = v37;

    goto LABEL_7;
  }

LABEL_8:

  return v24;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"contactType" integerValue:self->_contactType];
  if ([(NSString *)self->_givenName length])
  {
    v5 = [v3 appendName:@"givenName" object:self->_givenName];
  }

  if ([(NSString *)self->_middleName length])
  {
    v6 = [v3 appendName:@"middleName" object:self->_middleName];
  }

  if ([(NSString *)self->_familyName length])
  {
    v7 = [v3 appendName:@"familyName" object:self->_familyName];
  }

  if ([(NSArray *)self->_emailAddresses count])
  {
    v8 = [(NSArray *)self->_emailAddresses componentsJoinedByString:@", "];
    v9 = [v3 appendName:@"emailAddresses" object:v8];
  }

  if ([(NSArray *)self->_phoneNumbers count])
  {
    v10 = [(NSArray *)self->_phoneNumbers componentsJoinedByString:@", "];
    v11 = [v3 appendName:@"phoneNumbers" object:v10];
  }

  if (self->_imageDataPointer)
  {
    v12 = [v3 appendName:@"imageData" object:?];
  }

  if (self->_thumbnailImageDataPointer)
  {
    v13 = [v3 appendName:@"thumbnailImageData" object:?];
  }

  v14 = [v3 build];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || self->_contactType != v4->_contactType || (givenName = self->_givenName, givenName | v4->_givenName) && ![(NSString *)givenName isEqual:?]|| (middleName = self->_middleName, middleName | v4->_middleName) && ![(NSString *)middleName isEqual:?]|| (familyName = self->_familyName, familyName | v4->_familyName) && ![(NSString *)familyName isEqual:?]|| (emailAddresses = self->_emailAddresses, emailAddresses | v4->_emailAddresses) && ![(NSArray *)emailAddresses isEqual:?]|| (phoneNumbers = self->_phoneNumbers, phoneNumbers | v4->_phoneNumbers) && ![(NSArray *)phoneNumbers isEqual:?]|| (imageDataPointer = self->_imageDataPointer, imageDataPointer | v4->_imageDataPointer) && ![(NSValue *)imageDataPointer isEqual:?]|| (thumbnailImageDataPointer = self->_thumbnailImageDataPointer, thumbnailImageDataPointer | v4->_thumbnailImageDataPointer) && ![(NSValue *)thumbnailImageDataPointer isEqual:?])
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  contactType = self->_contactType;
  if (contactType >= 0)
  {
    v4 = self->_contactType;
  }

  else
  {
    v4 = -contactType;
  }

  v5 = [MEMORY[0x1E6996730] objectHash:self->_givenName] - v4 + 32 * v4;
  v6 = [MEMORY[0x1E6996730] objectHash:self->_middleName] - v5 + 32 * v5;
  v7 = [MEMORY[0x1E6996730] objectHash:self->_familyName] - v6 + 32 * v6;
  v8 = [MEMORY[0x1E6996730] arrayHash:self->_emailAddresses] - v7 + 32 * v7;
  v9 = [MEMORY[0x1E6996730] arrayHash:self->_phoneNumbers] - v8 + 32 * v8;
  v10 = [MEMORY[0x1E6996730] objectHash:self->_imageDataPointer] - v9 + 32 * v9;
  return [MEMORY[0x1E6996730] objectHash:self->_thumbnailImageDataPointer] - v10 + 32 * v10 + 0xD2FD88B5F11;
}

@end