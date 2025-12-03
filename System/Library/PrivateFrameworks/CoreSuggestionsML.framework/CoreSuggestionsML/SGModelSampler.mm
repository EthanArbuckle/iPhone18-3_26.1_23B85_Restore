@interface SGModelSampler
- (BOOL)shouldSampleForLabel:(id)label isDynamicLabel:(BOOL)dynamicLabel;
- (SGModelSampler)initWithPositiveRate:(double)rate dynamicLabelRate:(double)labelRate negativeRate:(double)negativeRate rng:(id)rng;
@end

@implementation SGModelSampler

- (BOOL)shouldSampleForLabel:(id)label isDynamicLabel:(BOOL)dynamicLabel
{
  dynamicLabelCopy = dynamicLabel;
  unsignedIntegerValue = [label unsignedIntegerValue];
  v7 = 8;
  if (dynamicLabelCopy)
  {
    v7 = 16;
  }

  if (!unsignedIntegerValue)
  {
    v7 = 24;
  }

  v8 = *(&self->super.isa + v7);
  rng = self->_rng;
  if (rng)
  {
    v10 = v8 == 1.0;
  }

  else
  {
    v10 = 1;
  }

  result = 1;
  if (!v10)
  {
    [(_PASRng *)rng nextFloat];
    if (v8 <= v11)
    {
      return 0;
    }
  }

  return result;
}

- (SGModelSampler)initWithPositiveRate:(double)rate dynamicLabelRate:(double)labelRate negativeRate:(double)negativeRate rng:(id)rng
{
  rngCopy = rng;
  v15.receiver = self;
  v15.super_class = SGModelSampler;
  v12 = [(SGModelSampler *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_positiveRate = rate;
    v12->_dynamicLabelRate = labelRate;
    v12->_negativeRate = negativeRate;
    objc_storeStrong(&v12->_rng, rng);
  }

  return v13;
}

@end