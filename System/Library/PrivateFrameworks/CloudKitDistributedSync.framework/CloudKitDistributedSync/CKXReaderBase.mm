@interface CKXReaderBase
- (CKXReaderBase)initWithSchema:(id)a3;
@end

@implementation CKXReaderBase

- (CKXReaderBase)initWithSchema:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKXReaderBase;
  v6 = [(CKXReaderBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_schema, a3);
  }

  return v7;
}

@end