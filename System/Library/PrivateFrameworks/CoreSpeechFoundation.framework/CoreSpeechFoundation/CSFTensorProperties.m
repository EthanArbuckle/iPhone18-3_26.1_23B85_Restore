@interface CSFTensorProperties
+ (id)propertyWithShape:(id)a3 dataType:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation CSFTensorProperties

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 shape];
  v6 = [(CSFTensorProperties *)self shape];
  v7 = [v5 isEqualToArray:v6];

  v8 = [v4 dataType];
  if (v8 == [(CSFTensorProperties *)self dataType])
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)propertyWithShape:(id)a3 dataType:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CSFTensorProperties);
  [(CSFTensorProperties *)v6 setShape:v5];
  [(CSFTensorProperties *)v6 setDataType:a4];

  return v6;
}

@end