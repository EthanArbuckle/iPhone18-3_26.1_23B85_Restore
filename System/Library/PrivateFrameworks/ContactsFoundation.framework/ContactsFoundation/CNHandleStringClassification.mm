@interface CNHandleStringClassification
- (BOOL)isEqual:(id)a3;
- (CNHandleStringClassification)initWithBuilder:(id)a3;
- (CNHandleStringClassification)initWithCoder:(id)a3;
- (CNHandleStringClassification)initWithEmailAddresses:(id)a3 phoneNumbers:(id)a4 unknown:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNHandleStringClassification

- (CNHandleStringClassification)initWithBuilder:(id)a3
{
  v4 = a3;
  v5 = [v4 emailAddresses];
  v6 = [v4 phoneNumbers];
  v7 = [v4 unknown];

  v8 = [(CNHandleStringClassification *)self initWithEmailAddresses:v5 phoneNumbers:v6 unknown:v7];
  return v8;
}

- (CNHandleStringClassification)initWithEmailAddresses:(id)a3 phoneNumbers:(id)a4 unknown:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = CNHandleStringClassification;
  v11 = [(CNHandleStringClassification *)&v24 init];
  if (v11)
  {
    v12 = [v8 copy];
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

    v16 = [v9 copy];
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

    v19 = [v10 copy];
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
  v7 = [v3 build];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (emailAddresses = self->_emailAddresses, emailAddresses | v4->_emailAddresses) && ![(NSArray *)emailAddresses isEqual:?]|| (phoneNumbers = self->_phoneNumbers, phoneNumbers | v4->_phoneNumbers) && ![(NSArray *)phoneNumbers isEqual:?]|| (unknown = self->_unknown, unknown | v4->_unknown) && ![(NSArray *)unknown isEqual:?])
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

- (CNHandleStringClassification)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"_emailAddresses"];
  v9 = [v5 decodeObjectOfClasses:v7 forKey:@"_phoneNumbers"];
  v10 = [v5 decodeObjectOfClasses:v7 forKey:@"_unknown"];

  v11 = [(CNHandleStringClassification *)self initWithEmailAddresses:v8 phoneNumbers:v9 unknown:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  emailAddresses = self->_emailAddresses;
  v5 = a3;
  [v5 encodeObject:emailAddresses forKey:@"_emailAddresses"];
  [v5 encodeObject:self->_phoneNumbers forKey:@"_phoneNumbers"];
  [v5 encodeObject:self->_unknown forKey:@"_unknown"];
}

@end