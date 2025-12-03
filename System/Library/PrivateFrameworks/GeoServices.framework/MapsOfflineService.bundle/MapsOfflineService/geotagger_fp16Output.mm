@interface geotagger_fp16Output
- (geotagger_fp16Output)initWithLogits:(id)logits;
- (id)featureValueForName:(id)name;
@end

@implementation geotagger_fp16Output

- (geotagger_fp16Output)initWithLogits:(id)logits
{
  logitsCopy = logits;
  v9.receiver = self;
  v9.super_class = geotagger_fp16Output;
  v6 = [(geotagger_fp16Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logits, logits);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"logits"])
  {
    logits = [(geotagger_fp16Output *)self logits];
    v5 = [MLFeatureValue featureValueWithMultiArray:logits];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end