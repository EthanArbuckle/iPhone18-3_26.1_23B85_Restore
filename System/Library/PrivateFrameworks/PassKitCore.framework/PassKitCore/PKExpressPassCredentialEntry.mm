@interface PKExpressPassCredentialEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCredentialEntry:(id)entry;
- (PKExpressPassCredentialEntry)initWithCoder:(id)coder;
- (PKExpressPassCredentialEntry)initWithSelectionCriteria:(id)criteria readerIdentifier:(id)identifier associatedReaders:(id)readers;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKExpressPassCredentialEntry

- (PKExpressPassCredentialEntry)initWithSelectionCriteria:(id)criteria readerIdentifier:(id)identifier associatedReaders:(id)readers
{
  criteriaCopy = criteria;
  identifierCopy = identifier;
  readersCopy = readers;
  if (criteriaCopy)
  {
    v16.receiver = self;
    v16.super_class = PKExpressPassCredentialEntry;
    v12 = [(PKExpressPassCredentialEntry *)&v16 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_selectionCriteria, criteria);
      objc_storeStrong(p_isa + 2, identifier);
      objc_storeStrong(p_isa + 3, readers);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKExpressPassCredentialEntry)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = [v4 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"selectionCriteria"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
  v11 = objc_alloc(MEMORY[0x1E695DFD8]);
  v12 = objc_opt_class();
  v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"associatedReaders"];

  v15 = [(PKExpressPassCredentialEntry *)self initWithSelectionCriteria:v9 readerIdentifier:v10 associatedReaders:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  selectionCriteria = self->_selectionCriteria;
  coderCopy = coder;
  [coderCopy encodeObject:selectionCriteria forKey:@"selectionCriteria"];
  [coderCopy encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
  [coderCopy encodeObject:self->_associatedReaders forKey:@"associatedReaders"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKExpressPassCredentialEntry *)self isEqualToCredentialEntry:v5];
  }

  return v6;
}

- (BOOL)isEqualToCredentialEntry:(id)entry
{
  entryCopy = entry;
  if (!entryCopy)
  {
    goto LABEL_17;
  }

  selectionCriteria = self->_selectionCriteria;
  v6 = entryCopy[1];
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
  v9 = entryCopy[2];
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
  v11 = entryCopy[3];
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
  hexEncoding = [(NSData *)self->_readerIdentifier hexEncoding];
  v5 = [v3 initWithFormat:@"<PKExpressPassCredentialEntry: %p; Reader Identifier: %@; Criteria: %@, Associated Readers: %@>", self, hexEncoding, self->_selectionCriteria, self->_associatedReaders];

  return v5;
}

@end