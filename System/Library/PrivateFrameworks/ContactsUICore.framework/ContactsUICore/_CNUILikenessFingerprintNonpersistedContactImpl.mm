@interface _CNUILikenessFingerprintNonpersistedContactImpl
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_CNUILikenessFingerprintNonpersistedContactImpl)init;
- (_CNUILikenessFingerprintNonpersistedContactImpl)initWithContact:(id)contact;
- (_CNUILikenessFingerprintNonpersistedContactImpl)initWithContactType:(int64_t)type givenName:(id)name middleName:(id)middleName familyName:(id)familyName emailAddresses:(id)addresses phoneNumbers:(id)numbers imageData:(id)data thumbnailImageData:(id)self0;
- (unint64_t)hash;
@end

@implementation _CNUILikenessFingerprintNonpersistedContactImpl

- (_CNUILikenessFingerprintNonpersistedContactImpl)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (_CNUILikenessFingerprintNonpersistedContactImpl)initWithContact:(id)contact
{
  contactCopy = contact;
  contactType = [contactCopy contactType];
  givenName = [contactCopy givenName];
  middleName = [contactCopy middleName];
  familyName = [contactCopy familyName];
  emailAddresses = [contactCopy emailAddresses];
  v8 = [emailAddresses _cn_compactMap:&__block_literal_global_133];
  phoneNumbers = [contactCopy phoneNumbers];
  v10 = [phoneNumbers _cn_compactMap:&__block_literal_global_135];
  imageData = [contactCopy imageData];
  thumbnailImageData = [contactCopy thumbnailImageData];

  v13 = [(_CNUILikenessFingerprintNonpersistedContactImpl *)self initWithContactType:contactType givenName:givenName middleName:middleName familyName:familyName emailAddresses:v8 phoneNumbers:v10 imageData:imageData thumbnailImageData:thumbnailImageData];
  return v13;
}

- (_CNUILikenessFingerprintNonpersistedContactImpl)initWithContactType:(int64_t)type givenName:(id)name middleName:(id)middleName familyName:(id)familyName emailAddresses:(id)addresses phoneNumbers:(id)numbers imageData:(id)data thumbnailImageData:(id)self0
{
  nameCopy = name;
  middleNameCopy = middleName;
  familyNameCopy = familyName;
  addressesCopy = addresses;
  numbersCopy = numbers;
  dataCopy = data;
  imageDataCopy = imageData;
  v41.receiver = self;
  v41.super_class = _CNUILikenessFingerprintNonpersistedContactImpl;
  v23 = [(_CNUILikenessFingerprintNonpersistedContactImpl *)&v41 init];
  v24 = v23;
  if (v23)
  {
    v23->_contactType = type;
    v25 = [nameCopy copy];
    givenName = v24->_givenName;
    v24->_givenName = v25;

    v27 = [middleNameCopy copy];
    middleName = v24->_middleName;
    v24->_middleName = v27;

    v29 = [familyNameCopy copy];
    familyName = v24->_familyName;
    v24->_familyName = v29;

    v31 = [addressesCopy copy];
    emailAddresses = v24->_emailAddresses;
    v24->_emailAddresses = v31;

    v33 = [numbersCopy copy];
    phoneNumbers = v24->_phoneNumbers;
    v24->_phoneNumbers = v33;

    if ([dataCopy length])
    {
      v35 = 56;
      v36 = dataCopy;
    }

    else
    {
      if (![imageDataCopy length])
      {
LABEL_7:
        v39 = v24;
        goto LABEL_8;
      }

      v35 = 64;
      v36 = imageDataCopy;
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

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || self->_contactType != equalCopy->_contactType || (givenName = self->_givenName, givenName | equalCopy->_givenName) && ![(NSString *)givenName isEqual:?]|| (middleName = self->_middleName, middleName | equalCopy->_middleName) && ![(NSString *)middleName isEqual:?]|| (familyName = self->_familyName, familyName | equalCopy->_familyName) && ![(NSString *)familyName isEqual:?]|| (emailAddresses = self->_emailAddresses, emailAddresses | equalCopy->_emailAddresses) && ![(NSArray *)emailAddresses isEqual:?]|| (phoneNumbers = self->_phoneNumbers, phoneNumbers | equalCopy->_phoneNumbers) && ![(NSArray *)phoneNumbers isEqual:?]|| (imageDataPointer = self->_imageDataPointer, imageDataPointer | equalCopy->_imageDataPointer) && ![(NSValue *)imageDataPointer isEqual:?]|| (thumbnailImageDataPointer = self->_thumbnailImageDataPointer, thumbnailImageDataPointer | equalCopy->_thumbnailImageDataPointer) && ![(NSValue *)thumbnailImageDataPointer isEqual:?])
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