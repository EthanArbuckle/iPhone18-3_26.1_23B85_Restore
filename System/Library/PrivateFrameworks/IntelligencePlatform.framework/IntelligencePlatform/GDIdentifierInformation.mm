@interface GDIdentifierInformation
- (GDIdentifierInformation)initWithCoder:(id)coder;
- (GDIdentifierInformation)initWithNames:(id)names contactIdentifiers:(id)identifiers visualIdentifiers:(id)visualIdentifiers emails:(id)emails;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDIdentifierInformation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  names = [(GDIdentifierInformation *)self names];
  contactIdentifiers = [(GDIdentifierInformation *)self contactIdentifiers];
  visualIdentifiers = [(GDIdentifierInformation *)self visualIdentifiers];
  emails = [(GDIdentifierInformation *)self emails];
  v8 = [v3 stringWithFormat:@"<GDRankerItem: names: %@, contactIdentifiers: %@, visualIdentifiers: %@", names, contactIdentifiers, visualIdentifiers, emails];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GDIdentifierInformation allocWithZone:zone];
  names = self->_names;
  contactIdentifiers = self->_contactIdentifiers;
  visualIdentifiers = self->_visualIdentifiers;
  emails = self->_emails;

  return [(GDIdentifierInformation *)v4 initWithNames:names contactIdentifiers:contactIdentifiers visualIdentifiers:visualIdentifiers emails:emails];
}

- (GDIdentifierInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_names);
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:v8];

  if (v9 || ([coderCopy error], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = NSStringFromSelector(sel_visualIdentifiers);
    v14 = [coderCopy decodeObjectOfClasses:v12 forKey:v13];

    if (v14 || ([coderCopy error], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
    {
      v15 = MEMORY[0x1E695DFD8];
      v16 = objc_opt_class();
      v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
      v18 = NSStringFromSelector(sel_contactIdentifiers);
      v19 = [coderCopy decodeObjectOfClasses:v17 forKey:v18];

      if (v19 || ([coderCopy error], v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
      {
        v20 = MEMORY[0x1E695DFD8];
        v21 = objc_opt_class();
        v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
        v23 = NSStringFromSelector(sel_emails);
        v24 = [coderCopy decodeObjectOfClasses:v22 forKey:v23];

        if (v24 || ([coderCopy error], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
        {
          self = [(GDIdentifierInformation *)self initWithNames:v9 contactIdentifiers:v19 visualIdentifiers:v14 emails:v24];
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  names = self->_names;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_names);
  [coderCopy encodeObject:names forKey:v6];

  visualIdentifiers = self->_visualIdentifiers;
  v8 = NSStringFromSelector(sel_visualIdentifiers);
  [coderCopy encodeObject:visualIdentifiers forKey:v8];

  contactIdentifiers = self->_contactIdentifiers;
  v10 = NSStringFromSelector(sel_contactIdentifiers);
  [coderCopy encodeObject:contactIdentifiers forKey:v10];

  v11 = self->_contactIdentifiers;
  v12 = NSStringFromSelector(sel_emails);
  [coderCopy encodeObject:v11 forKey:v12];
}

- (GDIdentifierInformation)initWithNames:(id)names contactIdentifiers:(id)identifiers visualIdentifiers:(id)visualIdentifiers emails:(id)emails
{
  namesCopy = names;
  identifiersCopy = identifiers;
  visualIdentifiersCopy = visualIdentifiers;
  emailsCopy = emails;
  v24.receiver = self;
  v24.super_class = GDIdentifierInformation;
  v14 = [(GDIdentifierInformation *)&v24 init];
  if (v14)
  {
    v15 = [namesCopy copy];
    names = v14->_names;
    v14->_names = v15;

    v17 = [visualIdentifiersCopy copy];
    visualIdentifiers = v14->_visualIdentifiers;
    v14->_visualIdentifiers = v17;

    v19 = [identifiersCopy copy];
    contactIdentifiers = v14->_contactIdentifiers;
    v14->_contactIdentifiers = v19;

    v21 = [emailsCopy copy];
    emails = v14->_emails;
    v14->_emails = v21;
  }

  return v14;
}

@end