@interface ICCRRegister
+ (id)registerWithType:(unint64_t)type contents:(id)contents document:(id)document;
- (ICCRDocument)document;
- (ICCRRegister)initWithDocument:(id)document;
- (ICCRRegister)initWithICCRCoder:(id)coder;
- (id)deltaSince:(id)since in:(id)in;
- (id)tombstone;
- (void)encodeWithICCRCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)walkGraph:(id)graph;
@end

@implementation ICCRRegister

+ (id)registerWithType:(unint64_t)type contents:(id)contents document:(id)document
{
  contentsCopy = contents;
  documentCopy = document;
  if (type > 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_alloc(*off_278195B60[type]) initWithContents:contentsCopy document:documentCopy];
  }

  return v9;
}

- (ICCRRegister)initWithDocument:(id)document
{
  documentCopy = document;
  v8.receiver = self;
  v8.super_class = ICCRRegister;
  v5 = [(ICCRRegister *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_document, documentCopy);
  }

  return v6;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v7);
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (id)tombstone
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Cannot tombstone a non-value / non-identified object." userInfo:0];
  objc_exception_throw(v2);
}

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (ICCRRegister)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (ICCRDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

@end