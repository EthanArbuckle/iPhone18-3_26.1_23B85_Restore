@interface PKAccountBeneficiaryInfo
- (PKAccountBeneficiaryInfo)initWithCoder:(id)coder;
- (PKAccountBeneficiaryInfo)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PKAccountBeneficiaryInfo

- (PKAccountBeneficiaryInfo)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = PKAccountBeneficiaryInfo;
  v5 = [(PKAccountBeneficiaryInfo *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKArrayForKey:@"beneficiaries"];
    if (![v6 count])
    {
LABEL_14:

      v18 = 0;
      goto LABEL_15;
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v6;
    v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          v13 = [PKAccountBeneficiary alloc];
          v14 = [(PKAccountBeneficiary *)v13 initWithDictionary:v12, v20];
          if (!v14)
          {

            goto LABEL_14;
          }

          v15 = v14;
          [v7 addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = [v7 copy];
    beneficiaries = v5->_beneficiaries;
    v5->_beneficiaries = v16;
  }

  v18 = v5;
LABEL_15:

  return v18;
}

- (PKAccountBeneficiaryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKAccountBeneficiaryInfo;
  v5 = [(PKAccountBeneficiaryInfo *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"beneficiaries"];
    beneficiaries = v5->_beneficiaries;
    v5->_beneficiaries = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_beneficiaries;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) copy];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = v4[1];
  v4[1] = v12;

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSArray *)self->_beneficiaries description];
  [v3 appendFormat:@"%@: '%@'; ", @"beneficiaries", v4];

  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

@end