@interface CRKASMConcreteNameComponents
+ (id)annotatedStringFromNameComponents:(id)a3 configurationBlock:(id)a4 cleanupBlock:(id)a5;
+ (id)makeFullNameWithComponents:(id)a3;
+ (id)makeMonogramWithComponents:(id)a3;
+ (id)makeNameComponentsForPerson:(id)a3;
+ (id)makePhoneticFullNameWithComponents:(id)a3;
+ (id)sharedFormatter;
+ (id)stringFromNameComponents:(id)a3 configurationBlock:(id)a4 cleanupBlock:(id)a5;
- (BOOL)isEqual:(id)a3;
- (CRKASMConcreteNameComponents)initWithPerson:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CRKASMConcreteNameComponents

- (CRKASMConcreteNameComponents)initWithPerson:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CRKASMConcreteNameComponents;
  v5 = [(CRKASMConcreteNameComponents *)&v30 init];
  if (v5)
  {
    v6 = [objc_opt_class() makeNameComponentsForPerson:v4];
    v7 = [v6 givenName];
    v8 = [v7 copy];
    givenName = v5->_givenName;
    v5->_givenName = v8;

    v10 = [v6 phoneticRepresentation];
    v11 = [v10 givenName];
    v12 = [v11 copy];
    phoneticGivenName = v5->_phoneticGivenName;
    v5->_phoneticGivenName = v12;

    v14 = [v6 familyName];
    v15 = [v14 copy];
    familyName = v5->_familyName;
    v5->_familyName = v15;

    v17 = [v6 phoneticRepresentation];
    v18 = [v17 familyName];
    v19 = [v18 copy];
    phoneticFamilyName = v5->_phoneticFamilyName;
    v5->_phoneticFamilyName = v19;

    v21 = [objc_opt_class() makeFullNameWithComponents:v6];
    fullName = v5->_fullName;
    v5->_fullName = v21;

    v23 = [objc_opt_class() makePhoneticFullNameWithComponents:v6];
    phoneticFullName = v5->_phoneticFullName;
    v5->_phoneticFullName = v23;

    v25 = [objc_opt_class() makeMonogramWithComponents:v6];
    monogram = v5->_monogram;
    v5->_monogram = v25;

    v27 = [objc_opt_class() makeFamilyNameGivenNameWithComponents:v6];
    attributedFullName = v5->_attributedFullName;
    v5->_attributedFullName = v27;
  }

  return v5;
}

+ (id)makeNameComponentsForPerson:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 givenName];
  [v4 setGivenName:v5];

  v6 = [v3 familyName];
  [v4 setFamilyName:v6];

  v7 = objc_opt_new();
  [v4 setPhoneticRepresentation:v7];

  v8 = [v3 phoneticGivenName];
  v9 = [v4 phoneticRepresentation];
  [v9 setGivenName:v8];

  v10 = [v3 phoneticFamilyName];

  v11 = [v4 phoneticRepresentation];
  [v11 setFamilyName:v10];

  return v4;
}

+ (id)makeFullNameWithComponents:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() stringFromNameComponents:v3 configurationBlock:&__block_literal_global_23 cleanupBlock:&__block_literal_global_2];

  return v4;
}

+ (id)makePhoneticFullNameWithComponents:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() stringFromNameComponents:v3 configurationBlock:&__block_literal_global_4 cleanupBlock:&__block_literal_global_6];

  return v4;
}

void __67__CRKASMConcreteNameComponents_makePhoneticFullNameWithComponents___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setStyle:3];
  [v2 setPhonetic:1];
}

void __67__CRKASMConcreteNameComponents_makePhoneticFullNameWithComponents___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setStyle:0];
  [v2 setPhonetic:0];
}

+ (id)makeMonogramWithComponents:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() stringFromNameComponents:v3 configurationBlock:&__block_literal_global_8 cleanupBlock:&__block_literal_global_10_0];

  return v4;
}

void __59__CRKASMConcreteNameComponents_makeMonogramWithComponents___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 set_ignoresFallbacks:1];
  [v2 setStyle:4];
}

void __59__CRKASMConcreteNameComponents_makeMonogramWithComponents___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 set_ignoresFallbacks:0];
  [v2 setStyle:0];
}

+ (id)stringFromNameComponents:(id)a3 configurationBlock:(id)a4 cleanupBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() sharedFormatter];
  v8[2](v8, v10);

  v11 = [v10 stringFromPersonNameComponents:v9];

  v7[2](v7, v10);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_285643BE8;
  }

  v13 = v12;

  return v12;
}

+ (id)annotatedStringFromNameComponents:(id)a3 configurationBlock:(id)a4 cleanupBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() sharedFormatter];
  v8[2](v8, v10);

  v11 = [v10 annotatedStringFromPersonNameComponents:v9];

  v7[2](v7, v10);

  return v11;
}

+ (id)sharedFormatter
{
  if (sharedFormatter_onceToken != -1)
  {
    +[CRKASMConcreteNameComponents sharedFormatter];
  }

  v3 = sharedFormatter_formatter;

  return v3;
}

uint64_t __47__CRKASMConcreteNameComponents_sharedFormatter__block_invoke()
{
  sharedFormatter_formatter = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  v3 = [(CRKASMConcreteNameComponents *)self givenName];
  v4 = [v3 hash];
  v5 = [(CRKASMConcreteNameComponents *)self phoneticGivenName];
  v6 = [v5 hash] ^ v4;
  v7 = [(CRKASMConcreteNameComponents *)self familyName];
  v8 = [v7 hash];
  v9 = [(CRKASMConcreteNameComponents *)self phoneticFamilyName];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(CRKASMConcreteNameComponents *)self fullName];
  v12 = [v11 hash];
  v13 = [(CRKASMConcreteNameComponents *)self phoneticFullName];
  v14 = v12 ^ [v13 hash];
  v15 = [(CRKASMConcreteNameComponents *)self monogram];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(CRKASMConcreteNameComponents *)self attributedFullName];
  v18 = [v17 hash];

  return v16 ^ v18;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CFSTR(""givenName phoneticGivenName];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_4;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  v8 = self;
  v9 = v4;
  v10 = v7;
  if (v8 == v9)
  {
    v21 = 1;
  }

  else if ([(CRKASMConcreteNameComponents *)v9 isMemberOfClass:objc_opt_class()])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v10;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = v9;
          v18 = [(CRKASMConcreteNameComponents *)v8 valueForKey:v16];
          v19 = [(CRKASMConcreteNameComponents *)v17 valueForKey:v16];

          if (v18 | v19)
          {
            v20 = [v18 isEqual:v19];

            if (!v20)
            {
              v21 = 0;
              goto LABEL_16;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_16:
      v10 = v23;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (NSString)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [(CRKASMConcreteNameComponents *)self givenName];
  v5 = [(CRKASMConcreteNameComponents *)self phoneticGivenName];
  v6 = [(CRKASMConcreteNameComponents *)self familyName];
  v7 = [(CRKASMConcreteNameComponents *)self phoneticFamilyName];
  v8 = [(CRKASMConcreteNameComponents *)self fullName];
  v9 = [(CRKASMConcreteNameComponents *)self phoneticFullName];
  v10 = [(CRKASMConcreteNameComponents *)self monogram];
  v11 = [(CRKASMConcreteNameComponents *)self attributedFullName];
  v12 = [v14 stringWithFormat:@"<%@: %p { givenName = %@, phoneticGivenName = %@, familyName = %@, phoneticFamilyName = %@, fullName = %@, phoneticFullName = %@, monogram = %@, attributedFullName = %@ }>", v3, self, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end