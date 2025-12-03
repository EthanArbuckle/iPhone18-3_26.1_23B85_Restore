@interface CKXReaderBase
- (CKXReaderBase)initWithSchema:(id)schema;
@end

@implementation CKXReaderBase

- (CKXReaderBase)initWithSchema:(id)schema
{
  schemaCopy = schema;
  v9.receiver = self;
  v9.super_class = CKXReaderBase;
  v6 = [(CKXReaderBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_schema, schema);
  }

  return v7;
}

@end