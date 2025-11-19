@interface ICAppearanceInfo
+ (id)appearanceInfoWithType:(unint64_t)a3;
+ (void)enumerateAppearanceTypesUsingBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICAppearanceInfo

- (id)description
{
  if ([(ICAppearanceInfo *)self type])
  {
    v2 = @"ICAppearanceTypeDark";
  }

  else
  {
    v2 = @"ICAppearanceTypeDefault";
  }

  return v2;
}

+ (id)appearanceInfoWithType:(unint64_t)a3
{
  v4 = objc_alloc_init(ICAppearanceInfo);
  [(ICAppearanceInfo *)v4 setType:a3];

  return v4;
}

+ (void)enumerateAppearanceTypesUsingBlock:(id)a3
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    (*(a3 + 2))(a3, v5, &v6);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while ((v6 & 1) == 0);
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [(ICAppearanceInfo *)self type];
    result = ICHashWithHashKeys(v4, v5, v6, v7, v8, v9, v10, v11, 0);
  }

  self->_hash = result;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICDynamicCast();

  if (v5)
  {
    v6 = [(ICAppearanceInfo *)self type];
    v7 = v6 == [v5 type];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end