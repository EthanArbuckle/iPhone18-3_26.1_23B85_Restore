@interface PKPassAuxiliaryPassInformation
- (PKPassAuxiliaryPassInformation)initWithCoder:(id)coder;
- (PKPassAuxiliaryPassInformation)initWithInformation:(id)information bundle:(id)bundle privateBundle:(id)privateBundle passType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassAuxiliaryPassInformation

- (PKPassAuxiliaryPassInformation)initWithInformation:(id)information bundle:(id)bundle privateBundle:(id)privateBundle passType:(unint64_t)type
{
  v36 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  bundleCopy = bundle;
  privateBundleCopy = privateBundle;
  v34.receiver = self;
  v34.super_class = PKPassAuxiliaryPassInformation;
  v13 = [(PKPassAuxiliaryPassInformation *)&v34 init];
  if (v13)
  {
    v14 = [informationCopy PKStringForKey:@"identifier"];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [informationCopy PKStringForKey:@"title"];
    v17 = PKLocalizedPassStringForPassBundle(v16, bundleCopy, privateBundleCopy);
    title = v13->_title;
    v29 = v13;
    v13->_title = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = [informationCopy objectForKey:@"values"];
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

          v25 = [[PKPassAuxiliaryPassInformationItem alloc] initWithItemInformation:*(*(&v30 + 1) + 8 * i) bundle:bundleCopy privateBundle:privateBundleCopy passType:type];
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

- (PKPassAuxiliaryPassInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKPassAuxiliaryPassInformation;
  v5 = [(PKPassAuxiliaryPassInformation *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"values"];
    items = v5->_items;
    v5->_items = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_items forKey:@"values"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPassAuxiliaryPassInformation allocWithZone:](PKPassAuxiliaryPassInformation init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_title copyWithZone:zone];
  title = v5->_title;
  v5->_title = v8;

  v10 = [(NSArray *)self->_items copyWithZone:zone];
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