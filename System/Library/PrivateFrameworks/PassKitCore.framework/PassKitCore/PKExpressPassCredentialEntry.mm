@interface PKExpressPassCredentialEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCredentialEntry:(id)a3;
- (PKExpressPassCredentialEntry)initWithCoder:(id)a3;
- (PKExpressPassCredentialEntry)initWithSelectionCriteria:(id)a3 readerIdentifier:(id)a4 associatedReaders:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKExpressPassCredentialEntry

- (PKExpressPassCredentialEntry)initWithSelectionCriteria:(id)a3 readerIdentifier:(id)a4 associatedReaders:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v16.receiver = self;
    v16.super_class = PKExpressPassCredentialEntry;
    v12 = [(PKExpressPassCredentialEntry *)&v16 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_selectionCriteria, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
    }

    self = p_isa;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (PKExpressPassCredentialEntry)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"selectionCriteria"];

  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
  v11 = objc_alloc(MEMORY[0x1E695DFD8]);
  v12 = objc_opt_class();
  v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v5 decodeObjectOfClasses:v13 forKey:@"associatedReaders"];

  v15 = [(PKExpressPassCredentialEntry *)self initWithSelectionCriteria:v9 readerIdentifier:v10 associatedReaders:v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  selectionCriteria = self->_selectionCriteria;
  v5 = a3;
  [v5 encodeObject:selectionCriteria forKey:@"selectionCriteria"];
  [v5 encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
  [v5 encodeObject:self->_associatedReaders forKey:@"associatedReaders"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKExpressPassCredentialEntry *)self isEqualToCredentialEntry:v5];
  }

  return v6;
}

- (BOOL)isEqualToCredentialEntry:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_17;
  }

  selectionCriteria = self->_selectionCriteria;
  v6 = v4[1];
  if (selectionCriteria)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (selectionCriteria != v6)
    {
      goto LABEL_17;
    }
  }

  else if (([(NSSet *)selectionCriteria isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

  readerIdentifier = self->_readerIdentifier;
  v9 = v4[2];
  if (!readerIdentifier || !v9)
  {
    if (readerIdentifier == v9)
    {
      goto LABEL_13;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  if (([(NSData *)readerIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  associatedReaders = self->_associatedReaders;
  v11 = v4[3];
  if (associatedReaders && v11)
  {
    v12 = [(NSSet *)associatedReaders isEqual:?];
  }

  else
  {
    v12 = associatedReaders == v11;
  }

LABEL_18:

  return v12;
}

- (unint64_t)hash
{
  [(NSSet *)self->_selectionCriteria count];
  [(NSData *)self->_readerIdentifier hash];
  [(NSSet *)self->_associatedReaders count];
  return SipHash();
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(NSData *)self->_readerIdentifier hexEncoding];
  v5 = [v3 initWithFormat:@"<PKExpressPassCredentialEntry: %p; Reader Identifier: %@; Criteria: %@, Associated Readers: %@>", self, v4, self->_selectionCriteria, self->_associatedReaders];

  return v5;
}

@end