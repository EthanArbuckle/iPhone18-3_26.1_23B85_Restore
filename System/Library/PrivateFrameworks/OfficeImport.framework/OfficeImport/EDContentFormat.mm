@interface EDContentFormat
+ (id)contentFormatWithFormatString:(id)a3;
+ (id)contentFormatWithFormatString:(id)a3 formatId:(unint64_t)a4;
+ (id)contentFormatWithNSString:(id)a3 formatId:(unint64_t)a4 builtIn:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContentFormat:(id)a3;
- (EDContentFormat)init;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation EDContentFormat

- (EDContentFormat)init
{
  v3.receiver = self;
  v3.super_class = EDContentFormat;
  result = [(EDContentFormat *)&v3 init];
  if (result)
  {
    result->mFormatId = -1;
    *&result->mBuiltIn = 0;
  }

  return result;
}

+ (id)contentFormatWithFormatString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = v3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(EDString *)self->mFormatString copy];
    v6 = v4[1];
    v4[1] = v5;

    v4[2] = self->mFormatId;
    *(v4 + 24) = self->mBuiltIn;
    *(v4 + 25) = 0;
    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqualToContentFormat:(id)a3
{
  v4 = a3;
  v5 = v4;
  mFormatId = self->mFormatId;
  if (mFormatId == -1 || ((v7 = v4[2], v7 != -1) ? (v8 = mFormatId == v7) : (v8 = 1), v8))
  {
    mFormatString = self->mFormatString;
    if (mFormatString == v5[1])
    {
      v10 = 1;
    }

    else
    {
      v10 = [(EDString *)mFormatString isEqual:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDContentFormat *)self isEqualToContentFormat:v5];
  }

  return v6;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDContentFormat;
  v2 = [(EDContentFormat *)&v4 description];

  return v2;
}

+ (id)contentFormatWithFormatString:(id)a3 formatId:(unint64_t)a4
{
  v5 = [a1 contentFormatWithFormatString:a3];
  v5[2] = a4;

  return v5;
}

+ (id)contentFormatWithNSString:(id)a3 formatId:(unint64_t)a4 builtIn:(BOOL)a5
{
  v8 = [EDString edStringWithString:a3];
  v9 = [a1 contentFormatWithFormatString:v8 formatId:a4];

  v9[24] = a5;

  return v9;
}

@end