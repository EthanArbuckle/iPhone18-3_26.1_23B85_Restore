@interface CNUILikenessFingerprint
+ (id)fingerprintForContact:(id)a3;
+ (id)fingerprintForContacts:(id)a3 scope:(id)a4;
+ (id)fingerprintForScope:(id)a3;
+ (id)implForContact:(id)a3;
+ (id)publicFingerprintForContact:(id)a3;
+ (id)publicFingerprintForContacts:(id)a3 scope:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CNUILikenessFingerprint)initWithContact:(id)a3;
- (CNUILikenessFingerprint)initWithContacts:(id)a3 badges:(id)a4 scope:(id)a5 isResolutionIndependent:(BOOL)a6;
- (CNUILikenessFingerprint)initWithImpl:(id)a3;
@end

@implementation CNUILikenessFingerprint

+ (id)fingerprintForContact:(id)a3
{
  v4 = a3;
  if ([v4 hasBeenPersisted])
  {
    v5 = [v4 identifier];
    v6 = [a1 fingerprintForContactIdentifier:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD60] string];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", objc_msgSend(v4, "contactType")];;
    [v6 appendString:v7];

    v8 = [v4 givenName];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [v4 givenName];
      [v6 appendString:v10];

      [v6 appendString:@";"];
    }

    v11 = [v4 middleName];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v4 middleName];
      [v6 appendString:v13];

      [v6 appendString:@";"];
    }

    v14 = [v4 familyName];
    v15 = [v14 length];

    if (v15)
    {
      v16 = [v4 familyName];
      [v6 appendString:v16];

      [v6 appendString:@";"];
    }

    v17 = [v4 emailAddresses];
    v18 = [v17 count];

    if (v18)
    {
      v19 = [v4 emailAddresses];
      v20 = [v19 _cn_map:&__block_literal_global_4];
      v21 = [v20 componentsJoinedByString:@""];;
      [v6 appendString:v21];

      [v6 appendString:@";"];
    }

    v22 = [v4 phoneNumbers];
    v23 = [v22 count];

    if (v23)
    {
      v24 = [v4 phoneNumbers];
      v25 = [v24 _cn_map:&__block_literal_global_7_0];
      v26 = [v25 componentsJoinedByString:@""];;
      [v6 appendString:v26];

      [v6 appendString:@";"];
    }

    v27 = [v4 imageData];
    v28 = [v27 length];

    if (v28)
    {
      [v6 appendString:@"image:"];
      v29 = [v4 imageData];
    }

    else
    {
      v30 = [v4 thumbnailImageData];
      v31 = [v30 length];

      if (!v31)
      {
        goto LABEL_19;
      }

      [v6 appendString:@"thumbnail:"];
      v29 = [v4 thumbnailImageData];
    }

    v5 = v29;
    v32 = [a1 fingerprintForData:v29];
    [v6 appendString:v32];
  }

LABEL_19:

  return v6;
}

id __49__CNUILikenessFingerprint_fingerprintForContact___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  return v3;
}

+ (id)publicFingerprintForContact:(id)a3
{
  v4 = a3;
  if ([v4 hasBeenPersisted])
  {
    v5 = [v4 identifier];
    v6 = [a1 fingerprintForContactIdentifier:v5];
    goto LABEL_9;
  }

  v6 = [MEMORY[0x1E696AD60] string];
  v7 = [v4 imageData];
  v8 = [v7 length];

  if (v8)
  {
    [v6 appendString:@"image:"];
    v9 = [v4 imageData];
  }

  else
  {
    v10 = [v4 thumbnailImageData];
    v11 = [v10 length];

    if (!v11)
    {
      [v6 appendString:@"object:"];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v4];
      [v6 appendString:v15];

      [v6 appendString:@"identifier:"];
      v16 = MEMORY[0x1E696AEC0];
      v5 = [v4 identifier];
      v12 = [v16 stringWithFormat:@"%@", v5];
      goto LABEL_8;
    }

    [v6 appendString:@"thumbnail:"];
    v9 = [v4 thumbnailImageData];
  }

  v5 = v9;
  v12 = [a1 fingerprintForData:v9];
LABEL_8:
  v13 = v12;
  [v6 appendString:v12];

LABEL_9:

  return v6;
}

+ (id)fingerprintForContacts:(id)a3 scope:(id)a4
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__CNUILikenessFingerprint_fingerprintForContacts_scope___block_invoke;
  v18[3] = &__block_descriptor_40_e29___NSString_16__0__CNContact_8l;
  v18[4] = a1;
  v6 = a4;
  v7 = a3;
  v8 = [v7 _cn_map:v18];
  v9 = MEMORY[0x1E696AD98];
  v10 = [v7 count];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v11 stringValue];
  v13 = [v8 arrayByAddingObject:v12];

  v14 = [a1 fingerprintForScope:v6];

  v15 = [v13 arrayByAddingObject:v14];

  v16 = [v15 componentsJoinedByString:&stru_1F162C170];

  return v16;
}

+ (id)publicFingerprintForContacts:(id)a3 scope:(id)a4
{
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__CNUILikenessFingerprint_publicFingerprintForContacts_scope___block_invoke;
  v18[3] = &__block_descriptor_40_e29___NSString_16__0__CNContact_8l;
  v18[4] = a1;
  v6 = a4;
  v7 = a3;
  v8 = [v7 _cn_map:v18];
  v9 = MEMORY[0x1E696AD98];
  v10 = [v7 count];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v11 stringValue];
  v13 = [v8 arrayByAddingObject:v12];

  v14 = [a1 fingerprintForScope:v6];

  v15 = [v13 arrayByAddingObject:v14];

  v16 = [v15 componentsJoinedByString:&stru_1F162C170];

  return v16;
}

+ (id)fingerprintForScope:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 style];
  v6 = [v4 backgroundStyle];
  [v4 scale];
  v8 = v7;
  v9 = [v4 rightToLeft];
  v10 = [v4 maskedAvatarIndices];

  if (v10)
  {
    v11 = [v10 _cn_map:&__block_literal_global_243];
    v12 = [v11 componentsJoinedByString:{@", "}];
  }

  else
  {
    v12 = &stru_1F162C170;
  }

  v13 = @"RTL";
  if (!v9)
  {
    v13 = &stru_1F162C170;
  }

  v14 = [v3 stringWithFormat:@"%ld_%ld_@%.1f%@_[%@]", v5, v6, v8, v13, v12];

  return v14;
}

- (CNUILikenessFingerprint)initWithContact:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() implForContact:v4];

  v6 = [(CNUILikenessFingerprint *)self initWithImpl:v5];
  return v6;
}

- (CNUILikenessFingerprint)initWithContacts:(id)a3 badges:(id)a4 scope:(id)a5 isResolutionIndependent:(BOOL)a6
{
  v6 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__CNUILikenessFingerprint_initWithContacts_badges_scope_isResolutionIndependent___block_invoke;
  v18[3] = &unk_1E76E7D78;
  v10 = self;
  v19 = v10;
  v11 = a5;
  v12 = a4;
  v13 = [a3 _cn_map:v18];
  v14 = [v11 copy];

  [v14 setExcludePointSizeInEqualityCheck:v6];
  v15 = [[_CNUILikenessFingerprintGroupImpl alloc] initWithImpls:v13 scope:v14 badges:v12];

  v16 = [(CNUILikenessFingerprint *)v10 initWithImpl:v15];
  return v16;
}

id __81__CNUILikenessFingerprint_initWithContacts_badges_scope_isResolutionIndependent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() implForContact:v2];

  return v3;
}

- (CNUILikenessFingerprint)initWithImpl:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNUILikenessFingerprint;
  v6 = [(CNUILikenessFingerprint *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)implForContact:(id)a3
{
  v3 = a3;
  if ([v3 hasBeenPersisted])
  {
    v4 = [_CNUILikenessFingerprintPersistedContactImpl alloc];
    v5 = [v3 identifier];

    v6 = [(_CNUILikenessFingerprintPersistedContactImpl *)v4 initWithContactIdentifier:v5];
    v3 = v5;
  }

  else
  {
    v6 = [[_CNUILikenessFingerprintNonpersistedContactImpl alloc] initWithContact:v3];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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