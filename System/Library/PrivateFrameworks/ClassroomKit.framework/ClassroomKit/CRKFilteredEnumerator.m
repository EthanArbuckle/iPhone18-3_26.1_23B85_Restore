@interface CRKFilteredEnumerator
- (BOOL)shouldRejectItem:(id)a3;
- (CRKFilteredEnumerator)initWithEnumerator:(id)a3 filterBlock:(id)a4;
- (id)nextObject;
@end

@implementation CRKFilteredEnumerator

- (CRKFilteredEnumerator)initWithEnumerator:(id)a3 filterBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRKFilteredEnumerator;
  v9 = [(CRKFilteredEnumerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enumerator, a3);
    v11 = MEMORY[0x245D3AAD0](v8);
    filterBlock = v10->_filterBlock;
    v10->_filterBlock = v11;
  }

  return v10;
}

- (id)nextObject
{
  v3 = 0;
  do
  {
    v4 = v3;
    v5 = [(CRKFilteredEnumerator *)self enumerator];
    v3 = [v5 nextObject];
  }

  while ([(CRKFilteredEnumerator *)self shouldRejectItem:v3]);

  return v3;
}

- (BOOL)shouldRejectItem:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(CRKFilteredEnumerator *)self filterBlock];
  LOBYTE(self) = (v5)[2](v5, v4);

  v6 = self ^ 1;
  return v6;
}

@end