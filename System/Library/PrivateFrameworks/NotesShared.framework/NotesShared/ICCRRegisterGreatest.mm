@interface ICCRRegisterGreatest
- (ICCRRegisterGreatest)initWithICCRCoder:(id)coder;
- (int64_t)compare:(id)compare with:(id)with;
- (void)encodeWithICCRCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)mergeWithRegisterGreatest:(id)greatest;
- (void)setContents:(id)contents;
@end

@implementation ICCRRegisterGreatest

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 2)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 2;
    operator new();
  }

  [(ICCRRegisterLatest *)self encodeIntoProtobufRegisterLatest:*(currentDocumentObjectForEncoding + 40) coder:coderCopy];
}

- (ICCRRegisterGreatest)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 2)
  {
    v6 = [(ICCRRegisterLatest *)self initWithProtobufRegisterLatest:*(currentDocumentObjectForDecoding + 40) decoder:coderCopy];
  }

  else
  {
    document = [coderCopy document];
    v6 = [(ICCRRegisterLatest *)self initWithContents:0 document:document];
  }

  return v6;
}

- (int64_t)compare:(id)compare with:(id)with
{
  compareCopy = compare;
  withCopy = with;
  v7 = withCopy;
  if (compareCopy == withCopy)
  {
    v8 = 0;
  }

  else if (compareCopy)
  {
    if (withCopy)
    {
      v8 = [compareCopy compare:withCopy];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  contents = [(ICCRRegisterLatest *)self contents];
  v6 = [(ICCRRegisterGreatest *)self compare:contents with:contentsCopy];

  if (v6 == -1)
  {
    v7.receiver = self;
    v7.super_class = ICCRRegisterGreatest;
    [(ICCRRegisterLatest *)&v7 setContents:contentsCopy];
  }
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v4);
  }

  [(ICCRRegisterGreatest *)self mergeWithRegisterGreatest:withCopy];
}

- (void)mergeWithRegisterGreatest:(id)greatest
{
  greatestCopy = greatest;
  contents = [(ICCRRegisterLatest *)self contents];
  contents2 = [greatestCopy contents];
  v6 = [(ICCRRegisterGreatest *)self compare:contents with:contents2];

  if (v6 == -1)
  {
    contents3 = [greatestCopy contents];
    [(ICCRRegisterLatest *)self _setContents:contents3];

    timestamp = [greatestCopy timestamp];
    [(ICCRRegisterLatest *)self setTimestamp:timestamp];
  }
}

@end