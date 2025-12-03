@interface EDHeaderFooter
+ (id)headerFooter;
- (id)description;
- (void)setFooterString:(id)string;
- (void)setHeaderString:(id)string;
@end

@implementation EDHeaderFooter

+ (id)headerFooter
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)setHeaderString:(id)string
{
  stringCopy = string;
  mHeaderString = self->mHeaderString;
  p_mHeaderString = &self->mHeaderString;
  if (mHeaderString != stringCopy)
  {
    v8 = stringCopy;
    objc_storeStrong(p_mHeaderString, string);
    stringCopy = v8;
  }
}

- (void)setFooterString:(id)string
{
  stringCopy = string;
  mFooterString = self->mFooterString;
  p_mFooterString = &self->mFooterString;
  if (mFooterString != stringCopy)
  {
    v8 = stringCopy;
    objc_storeStrong(p_mFooterString, string);
    stringCopy = v8;
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