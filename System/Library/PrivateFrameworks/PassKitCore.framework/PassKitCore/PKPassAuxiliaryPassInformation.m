@interface PKPassAuxiliaryPassInformation
- (PKPassAuxiliaryPassInformation)initWithCoder:(id)a3;
- (PKPassAuxiliaryPassInformation)initWithInformation:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassAuxiliaryPassInformation

- (PKPassAuxiliaryPassInformation)initWithInformation:(id)a3 bundle:(id)a4 privateBundle:(id)a5 passType:(unint64_t)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v34.receiver = self;
  v34.super_class = PKPassAuxiliaryPassInformation;
  v13 = [(PKPassAuxiliaryPassInformation *)&v34 init];
  if (v13)
  {
    v14 = [v10 PKStringForKey:@"identifier"];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [v10 PKStringForKey:@"title"];
    v17 = PKLocalizedPassStringForPassBundle(v16, v11, v12);
    title = v13->_title;
    v29 = v13;
    v13->_title = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = [v10 objectForKey:@"values"];
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[PKPassAuxiliaryPassInformationItem alloc] initWithItemInformation:*(*(&v30 + 1) + 8 * i) bundle:v11 privateBundle:v12 passType:a6];
          [v19 safelyAddObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v22);
    }

    v26 = [v19 copy];
    v13 = v29;
    items = v29->_items;
    v29->_items = v26;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_title hash]- v3 + 32 * v3;
  return [(NSArray *)self->_items hash]- v4 + 32 * v4 + 506447;
}

- (PKPassAuxiliaryPassInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPassAuxiliaryPassInformation;
  v5 = [(PKPassAuxiliaryPassInformation *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"values"];
    items = v5->_items;
    v5->_items = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_items forKey:@"values"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPassAuxiliaryPassInformation allocWithZone:](PKPassAuxiliaryPassInformation init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  title = v5->_title;
  v5->_title = v8;

  v10 = [(NSArray *)self->_items copyWithZone:a3];
  items = v5->_items;
  v5->_items = v10;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"title: '%@'; ", self->_title];
  [v3 appendFormat:@"items: '%@'; ", self->_items];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end