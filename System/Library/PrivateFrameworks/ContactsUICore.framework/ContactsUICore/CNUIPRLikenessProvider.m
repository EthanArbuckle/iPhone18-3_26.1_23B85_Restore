@interface CNUIPRLikenessProvider
- (CNUIPRLikenessProvider)initWithPRLikeness:(id)a3;
- (unint64_t)_cnui_likenessType;
@end

@implementation CNUIPRLikenessProvider

- (CNUIPRLikenessProvider)initWithPRLikeness:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIPRLikenessProvider;
  v6 = [(CNUIPRLikenessProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_likeness, a3);
  }

  return v7;
}

- (unint64_t)_cnui_likenessType
{
  v2 = [(CNUIPRLikenessProvider *)self likeness];
  v3 = [v2 type];

  return v3;
}

@end