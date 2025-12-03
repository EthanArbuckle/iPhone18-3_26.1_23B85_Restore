@interface PKFieldMetadata
- (PKFieldMetadata)initWithAssociatedPassIdentifiers:(id)identifiers shouldIgnoreField:(BOOL)field foundExplicitlyRequestedPass:(BOOL)pass;
- (PKFieldMetadata)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFieldMetadata

- (PKFieldMetadata)initWithAssociatedPassIdentifiers:(id)identifiers shouldIgnoreField:(BOOL)field foundExplicitlyRequestedPass:(BOOL)pass
{
  identifiersCopy = identifiers;
  v13.receiver = self;
  v13.super_class = PKFieldMetadata;
  v10 = [(PKFieldMetadata *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_associatedPassIdentifiers, identifiers);
    v11->_shouldIgnoreField = field;
    v11->_foundExplicitlyRequestedPass = pass;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  associatedPassIdentifiers = self->_associatedPassIdentifiers;
  coderCopy = coder;
  [coderCopy encodeObject:associatedPassIdentifiers forKey:@"associatedPassIdentifiers"];
  [coderCopy encodeBool:self->_shouldIgnoreField forKey:@"shouldIgnoreField"];
  [coderCopy encodeBool:self->_foundExplicitlyRequestedPass forKey:@"foundExplicitlyRequestedPass"];
}

- (PKFieldMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKFieldMetadata;
  v5 = [(PKFieldMetadata *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"associatedPassIdentifiers"];
    associatedPassIdentifiers = v5->_associatedPassIdentifiers;
    v5->_associatedPassIdentifiers = v9;

    v5->_shouldIgnoreField = [coderCopy decodeBoolForKey:@"shouldIgnoreField"];
    v5->_foundExplicitlyRequestedPass = [coderCopy decodeBoolForKey:@"foundExplicitlyRequestedPass"];
  }

  return v5;
}

@end