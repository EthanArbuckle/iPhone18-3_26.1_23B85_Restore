@interface CSFTensorProperties
+ (id)propertyWithShape:(id)shape dataType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
@end

@implementation CSFTensorProperties

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  shape = [equalCopy shape];
  shape2 = [(CSFTensorProperties *)self shape];
  v7 = [shape isEqualToArray:shape2];

  dataType = [equalCopy dataType];
  if (dataType == [(CSFTensorProperties *)self dataType])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)propertyWithShape:(id)shape dataType:(unint64_t)type
{
  shapeCopy = shape;
  v6 = objc_alloc_init(CSFTensorProperties);
  [(CSFTensorProperties *)v6 setShape:shapeCopy];
  [(CSFTensorProperties *)v6 setDataType:type];

  return v6;
}

@end