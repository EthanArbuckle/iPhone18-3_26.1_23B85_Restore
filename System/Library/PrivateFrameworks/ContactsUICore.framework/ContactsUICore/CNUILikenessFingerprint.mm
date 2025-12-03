@interface CNUILikenessFingerprint
+ (id)fingerprintForContact:(id)contact;
+ (id)fingerprintForContacts:(id)contacts scope:(id)scope;
+ (id)fingerprintForScope:(id)scope;
+ (id)implForContact:(id)contact;
+ (id)publicFingerprintForContact:(id)contact;
+ (id)publicFingerprintForContacts:(id)contacts scope:(id)scope;
- (BOOL)isEqual:(id)equal;
- (CNUILikenessFingerprint)initWithContact:(id)contact;
- (CNUILikenessFingerprint)initWithContacts:(id)contacts badges:(id)badges scope:(id)scope isResolutionIndependent:(BOOL)independent;
- (CNUILikenessFingerprint)initWithImpl:(id)impl;
@end

@implementation CNUILikenessFingerprint

+ (id)fingerprintForContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy hasBeenPersisted])
  {
    identifier = [contactCopy identifier];
    string = [self fingerprintForContactIdentifier:identifier];
  }

  else
  {
    string = [MEMORY[0x1E696AD60] string];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", objc_msgSend(contactCopy, "contactType")];;
    [string appendString:v7];

    givenName = [contactCopy givenName];
    v9 = [givenName length];

    if (v9)
    {
      givenName2 = [contactCopy givenName];
      [string appendString:givenName2];

      [string appendString:@";"];
    }

    middleName = [contactCopy middleName];
    v12 = [middleName length];

    if (v12)
    {
      middleName2 = [contactCopy middleName];
      [string appendString:middleName2];

      [string appendString:@";"];
    }

    familyName = [contactCopy familyName];
    v15 = [familyName length];

    if (v15)
    {
      familyName2 = [contactCopy familyName];
      [string appendString:familyName2];

      [string appendString:@";"];
    }

    emailAddresses = [contactCopy emailAddresses];
    v18 = [emailAddresses count];

    if (v18)
    {
      emailAddresses2 = [contactCopy emailAddresses];
      v20 = [emailAddresses2 _cn_map:&__block_literal_global_4];
      v21 = [v20 componentsJoinedByString:@""];;
      [string appendString:v21];

      [string appendString:@";"];
    }

    phoneNumbers = [contactCopy phoneNumbers];
    v23 = [phoneNumbers count];

    if (v23)
    {
      phoneNumbers2 = [contactCopy phoneNumbers];
      v25 = [phoneNumbers2 _cn_map:&__block_literal_global_7_0];
      v26 = [v25 componentsJoinedByString:@""];;
      [string appendString:v26];

      [string appendString:@";"];
    }

    imageData = [contactCopy imageData];
    v28 = [imageData length];

    if (v28)
    {
      [string appendString:@"image:"];
      imageData2 = [contactCopy imageData];
    }

    else
    {
      thumbnailImageData = [contactCopy thumbnailImageData];
      v31 = [thumbnailImageData length];

      if (!v31)
      {
        goto LABEL_19;
      }

      [string appendString:@"thumbnail:"];
      imageData2 = [contactCopy thumbnailImageData];
    }

    identifier = imageData2;
    v32 = [self fingerprintForData:imageData2];
    [string appendString:v32];
  }

LABEL_19:

  return string;
}

id __49__CNUILikenessFingerprint_fingerprintForContact___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  return v3;
}

+ (id)publicFingerprintForContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy hasBeenPersisted])
  {
    identifier = [contactCopy identifier];
    string = [self fingerprintForContactIdentifier:identifier];
    goto LABEL_9;
  }

  string = [MEMORY[0x1E696AD60] string];
  imageData = [contactCopy imageData];
  v8 = [imageData length];

  if (v8)
  {
    [string appendString:@"image:"];
    imageData2 = [contactCopy imageData];
  }

  else
  {
    thumbnailImageData = [contactCopy thumbnailImageData];
    v11 = [thumbnailImageData length];

    if (!v11)
    {
      [string appendString:@"object:"];
      contactCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", contactCopy];
      [string appendString:contactCopy];

      [string appendString:@"identifier:"];
      v16 = MEMORY[0x1E696AEC0];
      identifier = [contactCopy identifier];
      v12 = [v16 stringWithFormat:@"%@", identifier];
      goto LABEL_8;
    }

    [string appendString:@"thumbnail:"];
    imageData2 = [contactCopy thumbnailImageData];
  }

  identifier = imageData2;
  v12 = [self fingerprintForData:imageData2];
LABEL_8:
  v13 = v12;
  [string appendString:v12];

LABEL_9:

  return string;
}

+ (id)fingerprintForContacts:(id)contacts scope:(id)scope
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__CNUILikenessFingerprint_fingerprintForContacts_scope___block_invoke;
  v18[3] = &__block_descriptor_40_e29___NSString_16__0__CNContact_8l;
  v18[4] = self;
  scopeCopy = scope;
  contactsCopy = contacts;
  v8 = [contactsCopy _cn_map:v18];
  v9 = MEMORY[0x1E696AD98];
  v10 = [contactsCopy count];

  v11 = [v9 numberWithUnsignedInteger:v10];
  stringValue = [v11 stringValue];
  v13 = [v8 arrayByAddingObject:stringValue];

  v14 = [self fingerprintForScope:scopeCopy];

  v15 = [v13 arrayByAddingObject:v14];

  v16 = [v15 componentsJoinedByString:&stru_1F162C170];

  return v16;
}

+ (id)publicFingerprintForContacts:(id)contacts scope:(id)scope
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__CNUILikenessFingerprint_publicFingerprintForContacts_scope___block_invoke;
  v18[3] = &__block_descriptor_40_e29___NSString_16__0__CNContact_8l;
  v18[4] = self;
  scopeCopy = scope;
  contactsCopy = contacts;
  v8 = [contactsCopy _cn_map:v18];
  v9 = MEMORY[0x1E696AD98];
  v10 = [contactsCopy count];

  v11 = [v9 numberWithUnsignedInteger:v10];
  stringValue = [v11 stringValue];
  v13 = [v8 arrayByAddingObject:stringValue];

  v14 = [self fingerprintForScope:scopeCopy];

  v15 = [v13 arrayByAddingObject:v14];

  v16 = [v15 componentsJoinedByString:&stru_1F162C170];

  return v16;
}

+ (id)fingerprintForScope:(id)scope
{
  v3 = MEMORY[0x1E696AEC0];
  scopeCopy = scope;
  style = [scopeCopy style];
  backgroundStyle = [scopeCopy backgroundStyle];
  [scopeCopy scale];
  v8 = v7;
  rightToLeft = [scopeCopy rightToLeft];
  maskedAvatarIndices = [scopeCopy maskedAvatarIndices];

  if (maskedAvatarIndices)
  {
    v11 = [maskedAvatarIndices _cn_map:&__block_literal_global_243];
    v12 = [v11 componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = &stru_1F162C170;
  }

  v13 = @"RTL";
  if (!rightToLeft)
  {
    v13 = &stru_1F162C170;
  }

  v14 = [v3 stringWithFormat:@"%ld_%ld_@%.1f%@_[%@]", style, backgroundStyle, v8, v13, v12];

  return v14;
}

- (CNUILikenessFingerprint)initWithContact:(id)contact
{
  contactCopy = contact;
  v5 = [objc_opt_class() implForContact:contactCopy];

  v6 = [(CNUILikenessFingerprint *)self initWithImpl:v5];
  return v6;
}

- (CNUILikenessFingerprint)initWithContacts:(id)contacts badges:(id)badges scope:(id)scope isResolutionIndependent:(BOOL)independent
{
  independentCopy = independent;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__CNUILikenessFingerprint_initWithContacts_badges_scope_isResolutionIndependent___block_invoke;
  v18[3] = &unk_1E76E7D78;
  selfCopy = self;
  v19 = selfCopy;
  scopeCopy = scope;
  badgesCopy = badges;
  v13 = [contacts _cn_map:v18];
  v14 = [scopeCopy copy];

  [v14 setExcludePointSizeInEqualityCheck:independentCopy];
  v15 = [[_CNUILikenessFingerprintGroupImpl alloc] initWithImpls:v13 scope:v14 badges:badgesCopy];

  v16 = [(CNUILikenessFingerprint *)selfCopy initWithImpl:v15];
  return v16;
}

id __81__CNUILikenessFingerprint_initWithContacts_badges_scope_isResolutionIndependent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() implForContact:v2];

  return v3;
}

- (CNUILikenessFingerprint)initWithImpl:(id)impl
{
  implCopy = impl;
  v10.receiver = self;
  v10.super_class = CNUILikenessFingerprint;
  v6 = [(CNUILikenessFingerprint *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, impl);
    v8 = v7;
  }

  return v7;
}

+ (id)implForContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy hasBeenPersisted])
  {
    v4 = [_CNUILikenessFingerprintPersistedContactImpl alloc];
    identifier = [contactCopy identifier];

    v6 = [(_CNUILikenessFingerprintPersistedContactImpl *)v4 initWithContactIdentifier:identifier];
    contactCopy = identifier;
  }

  else
  {
    v6 = [[_CNUILikenessFingerprintNonpersistedContactImpl alloc] initWithContact:contactCopy];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(_CNUILikenessFingerprintImpl *)self->_impl isEqual:v7[1]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end