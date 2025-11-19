@interface SGModelSampler
- (BOOL)shouldSampleForLabel:(id)a3 isDynamicLabel:(BOOL)a4;
- (SGModelSampler)initWithPositiveRate:(double)a3 dynamicLabelRate:(double)a4 negativeRate:(double)a5 rng:(id)a6;
@end

@implementation SGModelSampler

- (BOOL)shouldSampleForLabel:(id)a3 isDynamicLabel:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 unsignedIntegerValue];
  v7 = 8;
  if (v4)
  {
    v7 = 16;
  }

  if (!v6)
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

- (SGModelSampler)initWithPositiveRate:(double)a3 dynamicLabelRate:(double)a4 negativeRate:(double)a5 rng:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = SGModelSampler;
  v12 = [(SGModelSampler *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_positiveRate = a3;
    v12->_dynamicLabelRate = a4;
    v12->_negativeRate = a5;
    objc_storeStrong(&v12->_rng, a6);
  }

  return v13;
}

@end