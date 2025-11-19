@interface EDHeaderFooter
+ (id)headerFooter;
- (id)description;
- (void)setFooterString:(id)a3;
- (void)setHeaderString:(id)a3;
@end

@implementation EDHeaderFooter

+ (id)headerFooter
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)setHeaderString:(id)a3
{
  v5 = a3;
  mHeaderString = self->mHeaderString;
  p_mHeaderString = &self->mHeaderString;
  if (mHeaderString != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mHeaderString, a3);
    v5 = v8;
  }
}

- (void)setFooterString:(id)a3
{
  v5 = a3;
  mFooterString = self->mFooterString;
  p_mFooterString = &self->mFooterString;
  if (mFooterString != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mFooterString, a3);
    v5 = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDHeaderFooter;
  v2 = [(EDHeaderFooter *)&v4 description];

  return v2;
}

@end