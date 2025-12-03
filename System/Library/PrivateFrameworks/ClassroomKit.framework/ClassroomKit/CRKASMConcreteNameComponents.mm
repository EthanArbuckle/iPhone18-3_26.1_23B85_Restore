@interface CRKASMConcreteNameComponents
+ (id)annotatedStringFromNameComponents:(id)components configurationBlock:(id)block cleanupBlock:(id)cleanupBlock;
+ (id)makeFullNameWithComponents:(id)components;
+ (id)makeMonogramWithComponents:(id)components;
+ (id)makeNameComponentsForPerson:(id)person;
+ (id)makePhoneticFullNameWithComponents:(id)components;
+ (id)sharedFormatter;
+ (id)stringFromNameComponents:(id)components configurationBlock:(id)block cleanupBlock:(id)cleanupBlock;
- (BOOL)isEqual:(id)equal;
- (CRKASMConcreteNameComponents)initWithPerson:(id)person;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CRKASMConcreteNameComponents

- (CRKASMConcreteNameComponents)initWithPerson:(id)person
{
  personCopy = person;
  v30.receiver = self;
  v30.super_class = CRKASMConcreteNameComponents;
  v5 = [(CRKASMConcreteNameComponents *)&v30 init];
  if (v5)
  {
    v6 = [objc_opt_class() makeNameComponentsForPerson:personCopy];
    givenName = [v6 givenName];
    v8 = [givenName copy];
    givenName = v5->_givenName;
    v5->_givenName = v8;

    phoneticRepresentation = [v6 phoneticRepresentation];
    givenName2 = [phoneticRepresentation givenName];
    v12 = [givenName2 copy];
    phoneticGivenName = v5->_phoneticGivenName;
    v5->_phoneticGivenName = v12;

    familyName = [v6 familyName];
    v15 = [familyName copy];
    familyName = v5->_familyName;
    v5->_familyName = v15;

    phoneticRepresentation2 = [v6 phoneticRepresentation];
    familyName2 = [phoneticRepresentation2 familyName];
    v19 = [familyName2 copy];
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

+ (id)makeNameComponentsForPerson:(id)person
{
  personCopy = person;
  v4 = objc_opt_new();
  givenName = [personCopy givenName];
  [v4 setGivenName:givenName];

  familyName = [personCopy familyName];
  [v4 setFamilyName:familyName];

  v7 = objc_opt_new();
  [v4 setPhoneticRepresentation:v7];

  phoneticGivenName = [personCopy phoneticGivenName];
  phoneticRepresentation = [v4 phoneticRepresentation];
  [phoneticRepresentation setGivenName:phoneticGivenName];

  phoneticFamilyName = [personCopy phoneticFamilyName];

  phoneticRepresentation2 = [v4 phoneticRepresentation];
  [phoneticRepresentation2 setFamilyName:phoneticFamilyName];

  return v4;
}

+ (id)makeFullNameWithComponents:(id)components
{
  componentsCopy = components;
  v4 = [objc_opt_class() stringFromNameComponents:componentsCopy configurationBlock:&__block_literal_global_23 cleanupBlock:&__block_literal_global_2];

  return v4;
}

+ (id)makePhoneticFullNameWithComponents:(id)components
{
  componentsCopy = components;
  v4 = [objc_opt_class() stringFromNameComponents:componentsCopy configurationBlock:&__block_literal_global_4 cleanupBlock:&__block_literal_global_6];

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

+ (id)makeMonogramWithComponents:(id)components
{
  componentsCopy = components;
  v4 = [objc_opt_class() stringFromNameComponents:componentsCopy configurationBlock:&__block_literal_global_8 cleanupBlock:&__block_literal_global_10_0];

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

+ (id)stringFromNameComponents:(id)components configurationBlock:(id)block cleanupBlock:(id)cleanupBlock
{
  cleanupBlockCopy = cleanupBlock;
  blockCopy = block;
  componentsCopy = components;
  sharedFormatter = [objc_opt_class() sharedFormatter];
  blockCopy[2](blockCopy, sharedFormatter);

  v11 = [sharedFormatter stringFromPersonNameComponents:componentsCopy];

  cleanupBlockCopy[2](cleanupBlockCopy, sharedFormatter);
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

+ (id)annotatedStringFromNameComponents:(id)components configurationBlock:(id)block cleanupBlock:(id)cleanupBlock
{
  cleanupBlockCopy = cleanupBlock;
  blockCopy = block;
  componentsCopy = components;
  sharedFormatter = [objc_opt_class() sharedFormatter];
  blockCopy[2](blockCopy, sharedFormatter);

  v11 = [sharedFormatter annotatedStringFromPersonNameComponents:componentsCopy];

  cleanupBlockCopy[2](cleanupBlockCopy, sharedFormatter);

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
  givenName = [(CRKASMConcreteNameComponents *)self givenName];
  v4 = [givenName hash];
  phoneticGivenName = [(CRKASMConcreteNameComponents *)self phoneticGivenName];
  v6 = [phoneticGivenName hash] ^ v4;
  familyName = [(CRKASMConcreteNameComponents *)self familyName];
  v8 = [familyName hash];
  phoneticFamilyName = [(CRKASMConcreteNameComponents *)self phoneticFamilyName];
  v10 = v6 ^ v8 ^ [phoneticFamilyName hash];
  fullName = [(CRKASMConcreteNameComponents *)self fullName];
  v12 = [fullName hash];
  phoneticFullName = [(CRKASMConcreteNameComponents *)self phoneticFullName];
  v14 = v12 ^ [phoneticFullName hash];
  monogram = [(CRKASMConcreteNameComponents *)self monogram];
  v16 = v10 ^ v14 ^ [monogram hash];
  attributedFullName = [(CRKASMConcreteNameComponents *)self attributedFullName];
  v18 = [attributedFullName hash];

  return v16 ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  phoneticGivenName = [CFSTR(""givenName phoneticGivenName];
  v6 = [phoneticGivenName mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_4;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  selfCopy = self;
  v9 = equalCopy;
  v10 = v7;
  if (selfCopy == v9)
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
          v18 = [(CRKASMConcreteNameComponents *)selfCopy valueForKey:v16];
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
  givenName = [(CRKASMConcreteNameComponents *)self givenName];
  phoneticGivenName = [(CRKASMConcreteNameComponents *)self phoneticGivenName];
  familyName = [(CRKASMConcreteNameComponents *)self familyName];
  phoneticFamilyName = [(CRKASMConcreteNameComponents *)self phoneticFamilyName];
  fullName = [(CRKASMConcreteNameComponents *)self fullName];
  phoneticFullName = [(CRKASMConcreteNameComponents *)self phoneticFullName];
  monogram = [(CRKASMConcreteNameComponents *)self monogram];
  attributedFullName = [(CRKASMConcreteNameComponents *)self attributedFullName];
  v12 = [v14 stringWithFormat:@"<%@: %p { givenName = %@, phoneticGivenName = %@, familyName = %@, phoneticFamilyName = %@, fullName = %@, phoneticFullName = %@, monogram = %@, attributedFullName = %@ }>", v3, self, givenName, phoneticGivenName, familyName, phoneticFamilyName, fullName, phoneticFullName, monogram, attributedFullName];

  return v12;
}

@end