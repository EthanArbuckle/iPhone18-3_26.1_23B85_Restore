@interface geotagger_fp16Input
- (geotagger_fp16Input)initWithInput_ids:(id)a3 attention_mask:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation geotagger_fp16Input

- (geotagger_fp16Input)initWithInput_ids:(id)a3 attention_mask:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = geotagger_fp16Input;
  v9 = [(geotagger_fp16Input *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input_ids, a3);
    objc_storeStrong(&v10->_attention_mask, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"input_ids"])
  {
    v5 = [(geotagger_fp16Input *)self input_ids];
LABEL_5:
    v6 = v5;
    v7 = [MLFeatureValue featureValueWithMultiArray:v5];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"attention_mask"])
  {
    v5 = [(geotagger_fp16Input *)self attention_mask];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end