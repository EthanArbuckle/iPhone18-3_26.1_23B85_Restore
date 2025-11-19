@interface ICCRWeakReference
- (ICCRDocument)document;
- (ICCRWeakReference)initWithContents:(id)a3 document:(id)a4;
- (ICCRWeakReference)initWithICCRCoder:(id)a3;
- (ICCRWeakReference)initWithIdentifier:(id)a3 document:(id)a4;
- (NSString)description;
- (id)contents;
- (void)encodeWithICCRCoder:(id)a3;
@end

@implementation ICCRWeakReference

- (ICCRWeakReference)initWithContents:(id)a3 document:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v13.receiver = self;
    v13.super_class = ICCRWeakReference;
    v8 = [(ICCRWeakReference *)&v13 init];
    if (v8)
    {
      v9 = [v6 identity];
      identifier = v8->_identifier;
      v8->_identifier = v9;

      objc_storeWeak(&v8->_document, v7);
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (ICCRWeakReference)initWithIdentifier:(id)a3 document:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICCRWeakReference;
  v9 = [(ICCRWeakReference *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeWeak(&v10->_document, v8);
  }

  return v10;
}

- (ICCRWeakReference)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 11)
  {
    v6 = [v4 document];
    objc_storeWeak(&self->_document, v6);

    if (*(v5 + 48) == 11)
    {
      v7 = *(v5 + 40);
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 decodeUUIDFromUUIDIndex:v7];
    v9 = [v4 document];
    self = [(ICCRWeakReference *)self initWithIdentifier:v8 document:v9];

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithICCRCoder:(id)a3
{
  v7 = a3;
  v4 = [v7 currentDocumentObjectForEncoding];
  v5 = [(ICCRWeakReference *)self identifier];
  v6 = [v7 encodeUUIDIndexFromUUID:v5];
  if (*(v4 + 48) != 11)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v4 + 48) = 11;
  }

  *(v4 + 40) = v6;
}

- (id)contents
{
  v3 = [(ICCRWeakReference *)self document];
  v4 = [v3 objects];
  v5 = [(ICCRWeakReference *)self identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICCRWeakReference *)self identifier];
  v7 = [v6 CR_shortDescription];
  v8 = [v3 stringWithFormat:@"<%@ %p %@>", v5, self, v7];

  return v8;
}

- (ICCRDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

@end