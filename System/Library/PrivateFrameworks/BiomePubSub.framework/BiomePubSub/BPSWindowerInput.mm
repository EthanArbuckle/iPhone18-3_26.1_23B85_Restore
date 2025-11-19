@interface BPSWindowerInput
- (BPSWindowerInput)initWithAggregate:(id)a3 key:(id)a4 metadata:(id)a5;
@end

@implementation BPSWindowerInput

- (BPSWindowerInput)initWithAggregate:(id)a3 key:(id)a4 metadata:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BPSWindowerInput;
  v12 = [(BPSWindowerInput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_aggregate, a3);
    objc_storeStrong(&v13->_key, a4);
    objc_storeStrong(&v13->_metadata, a5);
  }

  return v13;
}

@end