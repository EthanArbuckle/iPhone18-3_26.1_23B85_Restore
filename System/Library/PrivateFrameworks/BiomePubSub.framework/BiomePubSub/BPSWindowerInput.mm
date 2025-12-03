@interface BPSWindowerInput
- (BPSWindowerInput)initWithAggregate:(id)aggregate key:(id)key metadata:(id)metadata;
@end

@implementation BPSWindowerInput

- (BPSWindowerInput)initWithAggregate:(id)aggregate key:(id)key metadata:(id)metadata
{
  aggregateCopy = aggregate;
  keyCopy = key;
  metadataCopy = metadata;
  v15.receiver = self;
  v15.super_class = BPSWindowerInput;
  v12 = [(BPSWindowerInput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_aggregate, aggregate);
    objc_storeStrong(&v13->_key, key);
    objc_storeStrong(&v13->_metadata, metadata);
  }

  return v13;
}

@end