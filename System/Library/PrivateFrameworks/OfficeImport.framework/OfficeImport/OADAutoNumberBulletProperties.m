@interface OADAutoNumberBulletProperties
- (BOOL)isEqual:(id)a3;
- (OADAutoNumberBulletProperties)initWithAutoNumberSchemeType:(int)a3 startIndex:(unint64_t)a4;
@end

@implementation OADAutoNumberBulletProperties

- (OADAutoNumberBulletProperties)initWithAutoNumberSchemeType:(int)a3 startIndex:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = OADAutoNumberBulletProperties;
  result = [(OADAutoNumberBulletProperties *)&v7 init];
  if (result)
  {
    result->mSchemeType = a3;
    result->mStartIndex = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->mSchemeType == v4[2] && self->mStartIndex == *(v4 + 2);

  return v5;
}

@end