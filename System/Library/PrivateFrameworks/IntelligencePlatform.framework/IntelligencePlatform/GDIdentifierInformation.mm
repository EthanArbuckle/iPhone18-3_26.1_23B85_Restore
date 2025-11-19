@interface GDIdentifierInformation
- (GDIdentifierInformation)initWithCoder:(id)a3;
- (GDIdentifierInformation)initWithNames:(id)a3 contactIdentifiers:(id)a4 visualIdentifiers:(id)a5 emails:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDIdentifierInformation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GDIdentifierInformation *)self names];
  v5 = [(GDIdentifierInformation *)self contactIdentifiers];
  v6 = [(GDIdentifierInformation *)self visualIdentifiers];
  v7 = [(GDIdentifierInformation *)self emails];
  v8 = [v3 stringWithFormat:@"<GDRankerItem: names: %@, contactIdentifiers: %@, visualIdentifiers: %@", v4, v5, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GDIdentifierInformation allocWithZone:a3];
  names = self->_names;
  contactIdentifiers = self->_contactIdentifiers;
  visualIdentifiers = self->_visualIdentifiers;
  emails = self->_emails;

  return [(GDIdentifierInformation *)v4 initWithNames:names contactIdentifiers:contactIdentifiers visualIdentifiers:visualIdentifiers emails:emails];
}

- (GDIdentifierInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = NSStringFromSelector(sel_names);
  v9 = [v4 decodeObjectOfClasses:v7 forKey:v8];

  if (v9 || ([v4 error], v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = NSStringFromSelector(sel_visualIdentifiers);
    v14 = [v4 decodeObjectOfClasses:v12 forKey:v13];

    if (v14 || ([v4 error], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
    {
      v15 = MEMORY[0x1E695DFD8];
      v16 = objc_opt_class();
      v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
      v18 = NSStringFromSelector(sel_contactIdentifiers);
      v19 = [v4 decodeObjectOfClasses:v17 forKey:v18];

      if (v19 || ([v4 error], v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
      {
        v20 = MEMORY[0x1E695DFD8];
        v21 = objc_opt_class();
        v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
        v23 = NSStringFromSelector(sel_emails);
        v24 = [v4 decodeObjectOfClasses:v22 forKey:v23];

        if (v24 || ([v4 error], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
        {
          self = [(GDIdentifierInformation *)self initWithNames:v9 contactIdentifiers:v19 visualIdentifiers:v14 emails:v24];
          v25 = self;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  names = self->_names;
  v5 = a3;
  v6 = NSStringFromSelector(sel_names);
  [v5 encodeObject:names forKey:v6];

  visualIdentifiers = self->_visualIdentifiers;
  v8 = NSStringFromSelector(sel_visualIdentifiers);
  [v5 encodeObject:visualIdentifiers forKey:v8];

  contactIdentifiers = self->_contactIdentifiers;
  v10 = NSStringFromSelector(sel_contactIdentifiers);
  [v5 encodeObject:contactIdentifiers forKey:v10];

  v11 = self->_contactIdentifiers;
  v12 = NSStringFromSelector(sel_emails);
  [v5 encodeObject:v11 forKey:v12];
}

- (GDIdentifierInformation)initWithNames:(id)a3 contactIdentifiers:(id)a4 visualIdentifiers:(id)a5 emails:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = GDIdentifierInformation;
  v14 = [(GDIdentifierInformation *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    names = v14->_names;
    v14->_names = v15;

    v17 = [v12 copy];
    visualIdentifiers = v14->_visualIdentifiers;
    v14->_visualIdentifiers = v17;

    v19 = [v11 copy];
    contactIdentifiers = v14->_contactIdentifiers;
    v14->_contactIdentifiers = v19;

    v21 = [v13 copy];
    emails = v14->_emails;
    v14->_emails = v21;
  }

  return v14;
}

@end