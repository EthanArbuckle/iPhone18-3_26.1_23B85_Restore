@interface ICCRWeakReference
- (ICCRDocument)document;
- (ICCRWeakReference)initWithContents:(id)contents document:(id)document;
- (ICCRWeakReference)initWithICCRCoder:(id)coder;
- (ICCRWeakReference)initWithIdentifier:(id)identifier document:(id)document;
- (NSString)description;
- (id)contents;
- (void)encodeWithICCRCoder:(id)coder;
@end

@implementation ICCRWeakReference

- (ICCRWeakReference)initWithContents:(id)contents document:(id)document
{
  contentsCopy = contents;
  documentCopy = document;
  if (contentsCopy)
  {
    v13.receiver = self;
    v13.super_class = ICCRWeakReference;
    v8 = [(ICCRWeakReference *)&v13 init];
    if (v8)
    {
      identity = [contentsCopy identity];
      identifier = v8->_identifier;
      v8->_identifier = identity;

      objc_storeWeak(&v8->_document, documentCopy);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ICCRWeakReference)initWithIdentifier:(id)identifier document:(id)document
{
  identifierCopy = identifier;
  documentCopy = document;
  v12.receiver = self;
  v12.super_class = ICCRWeakReference;
  v9 = [(ICCRWeakReference *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeWeak(&v10->_document, documentCopy);
  }

  return v10;
}

- (ICCRWeakReference)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 11)
  {
    document = [coderCopy document];
    objc_storeWeak(&self->_document, document);

    if (*(currentDocumentObjectForDecoding + 48) == 11)
    {
      v7 = *(currentDocumentObjectForDecoding + 40);
    }

    else
    {
      v7 = 0;
    }

    v8 = [coderCopy decodeUUIDFromUUIDIndex:v7];
    document2 = [coderCopy document];
    self = [(ICCRWeakReference *)self initWithIdentifier:v8 document:document2];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  identifier = [(ICCRWeakReference *)self identifier];
  v6 = [coderCopy encodeUUIDIndexFromUUID:identifier];
  if (*(currentDocumentObjectForEncoding + 48) != 11)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(currentDocumentObjectForEncoding + 48) = 11;
  }

  *(currentDocumentObjectForEncoding + 40) = v6;
}

- (id)contents
{
  document = [(ICCRWeakReference *)self document];
  objects = [document objects];
  identifier = [(ICCRWeakReference *)self identifier];
  v6 = [objects objectForKeyedSubscript:identifier];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(ICCRWeakReference *)self identifier];
  cR_shortDescription = [identifier CR_shortDescription];
  v8 = [v3 stringWithFormat:@"<%@ %p %@>", v5, self, cR_shortDescription];

  return v8;
}

- (ICCRDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

@end