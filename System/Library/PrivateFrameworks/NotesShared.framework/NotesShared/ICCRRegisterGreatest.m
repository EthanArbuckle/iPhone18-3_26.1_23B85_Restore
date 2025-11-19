@interface ICCRRegisterGreatest
- (ICCRRegisterGreatest)initWithICCRCoder:(id)a3;
- (int64_t)compare:(id)a3 with:(id)a4;
- (void)encodeWithICCRCoder:(id)a3;
- (void)mergeWith:(id)a3;
- (void)mergeWithRegisterGreatest:(id)a3;
- (void)setContents:(id)a3;
@end

@implementation ICCRRegisterGreatest

- (void)encodeWithICCRCoder:(id)a3
{
  v6 = a3;
  v4 = [v6 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 2)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 2;
    operator new();
  }

  [(ICCRRegisterLatest *)self encodeIntoProtobufRegisterLatest:*(v4 + 40) coder:v6];
}

- (ICCRRegisterGreatest)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 2)
  {
    v6 = [(ICCRRegisterLatest *)self initWithProtobufRegisterLatest:*(v5 + 40) decoder:v4];
  }

  else
  {
    v7 = [v4 document];
    v6 = [(ICCRRegisterLatest *)self initWithContents:0 document:v7];
  }

  return v6;
}

- (int64_t)compare:(id)a3 with:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else if (v5)
  {
    if (v6)
    {
      v8 = [v5 compare:v6];
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

- (void)setContents:(id)a3
{
  v4 = a3;
  v5 = [(ICCRRegisterLatest *)self contents];
  v6 = [(ICCRRegisterGreatest *)self compare:v5 with:v4];

  if (v6 == -1)
  {
    v7.receiver = self;
    v7.super_class = ICCRRegisterGreatest;
    [(ICCRRegisterLatest *)&v7 setContents:v4];
  }
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v4);
  }

  [(ICCRRegisterGreatest *)self mergeWithRegisterGreatest:v5];
}

- (void)mergeWithRegisterGreatest:(id)a3
{
  v9 = a3;
  v4 = [(ICCRRegisterLatest *)self contents];
  v5 = [v9 contents];
  v6 = [(ICCRRegisterGreatest *)self compare:v4 with:v5];

  if (v6 == -1)
  {
    v7 = [v9 contents];
    [(ICCRRegisterLatest *)self _setContents:v7];

    v8 = [v9 timestamp];
    [(ICCRRegisterLatest *)self setTimestamp:v8];
  }
}

@end