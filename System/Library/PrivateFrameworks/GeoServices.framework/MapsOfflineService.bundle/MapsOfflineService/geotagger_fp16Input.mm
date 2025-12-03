@interface geotagger_fp16Input
- (geotagger_fp16Input)initWithInput_ids:(id)input_ids attention_mask:(id)attention_mask;
- (id)featureValueForName:(id)name;
@end

@implementation geotagger_fp16Input

- (geotagger_fp16Input)initWithInput_ids:(id)input_ids attention_mask:(id)attention_mask
{
  input_idsCopy = input_ids;
  attention_maskCopy = attention_mask;
  v12.receiver = self;
  v12.super_class = geotagger_fp16Input;
  v9 = [(geotagger_fp16Input *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input_ids, input_ids);
    objc_storeStrong(&v10->_attention_mask, attention_mask);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"input_ids"])
  {
    input_ids = [(geotagger_fp16Input *)self input_ids];
LABEL_5:
    v6 = input_ids;
    v7 = [MLFeatureValue featureValueWithMultiArray:input_ids];

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"attention_mask"])
  {
    input_ids = [(geotagger_fp16Input *)self attention_mask];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end