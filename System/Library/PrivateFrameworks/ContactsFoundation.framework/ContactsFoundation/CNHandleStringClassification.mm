@interface CNHandleStringClassification
- (BOOL)isEqual:(id)equal;
- (CNHandleStringClassification)initWithBuilder:(id)builder;
- (CNHandleStringClassification)initWithCoder:(id)coder;
- (CNHandleStringClassification)initWithEmailAddresses:(id)addresses phoneNumbers:(id)numbers unknown:(id)unknown;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNHandleStringClassification

- (CNHandleStringClassification)initWithBuilder:(id)builder
{
  builderCopy = builder;
  emailAddresses = [builderCopy emailAddresses];
  phoneNumbers = [builderCopy phoneNumbers];
  unknown = [builderCopy unknown];

  v8 = [(CNHandleStringClassification *)self initWithEmailAddresses:emailAddresses phoneNumbers:phoneNumbers unknown:unknown];
  return v8;
}

- (CNHandleStringClassification)initWithEmailAddresses:(id)addresses phoneNumbers:(id)numbers unknown:(id)unknown
{
  addressesCopy = addresses;
  numbersCopy = numbers;
  unknownCopy = unknown;
  v24.receiver = self;
  v24.super_class = CNHandleStringClassification;
  v11 = [(CNHandleStringClassification *)&v24 init];
  if (v11)
  {
    v12 = [addressesCopy copy];
    v13 = v12;
    v14 = MEMORY[0x1E695E0F0];
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v11->_emailAddresses, v15);

    v16 = [numbersCopy copy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v14;
    }

    objc_storeStrong(&v11->_phoneNumbers, v18);

    v19 = [unknownCopy copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v14;
    }

    objc_storeStrong(&v11->_unknown, v21);

    v22 = v11;
  }

  return v11;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"emailAddresses" object:self->_emailAddresses];
  v5 = [v3 appendName:@"phoneNumbers" object:self->_phoneNumbers];
  v6 = [v3 appendName:@"unknown" object:self->_unknown];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (emailAddresses = self->_emailAddresses, emailAddresses | equalCopy->_emailAddresses) && ![(NSArray *)emailAddresses isEqual:?]|| (phoneNumbers = self->_phoneNumbers, phoneNumbers | equalCopy->_phoneNumbers) && ![(NSArray *)phoneNumbers isEqual:?]|| (unknown = self->_unknown, unknown | equalCopy->_unknown) && ![(NSArray *)unknown isEqual:?])
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [CNHashBuilder arrayHash:self->_emailAddresses];
  v4 = [CNHashBuilder arrayHash:self->_phoneNumbers]- v3 + 32 * v3;
  return [CNHashBuilder arrayHash:self->_unknown]- v4 + 32 * v4 + 506447;
}

- (CNHandleStringClassification)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"_emailAddresses"];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"_phoneNumbers"];
  v10 = [coderCopy decodeObjectOfClasses:v7 forKey:@"_unknown"];

  v11 = [(CNHandleStringClassification *)self initWithEmailAddresses:v8 phoneNumbers:v9 unknown:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  emailAddresses = self->_emailAddresses;
  coderCopy = coder;
  [coderCopy encodeObject:emailAddresses forKey:@"_emailAddresses"];
  [coderCopy encodeObject:self->_phoneNumbers forKey:@"_phoneNumbers"];
  [coderCopy encodeObject:self->_unknown forKey:@"_unknown"];
}

@end