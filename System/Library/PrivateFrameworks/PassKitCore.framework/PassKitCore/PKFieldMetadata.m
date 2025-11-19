@interface PKFieldMetadata
- (PKFieldMetadata)initWithAssociatedPassIdentifiers:(id)a3 shouldIgnoreField:(BOOL)a4 foundExplicitlyRequestedPass:(BOOL)a5;
- (PKFieldMetadata)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFieldMetadata

- (PKFieldMetadata)initWithAssociatedPassIdentifiers:(id)a3 shouldIgnoreField:(BOOL)a4 foundExplicitlyRequestedPass:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PKFieldMetadata;
  v10 = [(PKFieldMetadata *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_associatedPassIdentifiers, a3);
    v11->_shouldIgnoreField = a4;
    v11->_foundExplicitlyRequestedPass = a5;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  associatedPassIdentifiers = self->_associatedPassIdentifiers;
  v5 = a3;
  [v5 encodeObject:associatedPassIdentifiers forKey:@"associatedPassIdentifiers"];
  [v5 encodeBool:self->_shouldIgnoreField forKey:@"shouldIgnoreField"];
  [v5 encodeBool:self->_foundExplicitlyRequestedPass forKey:@"foundExplicitlyRequestedPass"];
}

- (PKFieldMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKFieldMetadata;
  v5 = [(PKFieldMetadata *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"associatedPassIdentifiers"];
    associatedPassIdentifiers = v5->_associatedPassIdentifiers;
    v5->_associatedPassIdentifiers = v9;

    v5->_shouldIgnoreField = [v4 decodeBoolForKey:@"shouldIgnoreField"];
    v5->_foundExplicitlyRequestedPass = [v4 decodeBoolForKey:@"foundExplicitlyRequestedPass"];
  }

  return v5;
}

@end