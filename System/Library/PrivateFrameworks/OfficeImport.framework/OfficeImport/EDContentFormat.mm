@interface EDContentFormat
+ (id)contentFormatWithFormatString:(id)string;
+ (id)contentFormatWithFormatString:(id)string formatId:(unint64_t)id;
+ (id)contentFormatWithNSString:(id)string formatId:(unint64_t)id builtIn:(BOOL)in;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContentFormat:(id)format;
- (EDContentFormat)init;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
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

+ (id)contentFormatWithFormatString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = stringCopy;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqualToContentFormat:(id)format
{
  formatCopy = format;
  v5 = formatCopy;
  mFormatId = self->mFormatId;
  if (mFormatId == -1 || ((v7 = formatCopy[2], v7 != -1) ? (v8 = mFormatId == v7) : (v8 = 1), v8))
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDContentFormat *)self isEqualToContentFormat:v5];
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

+ (id)contentFormatWithFormatString:(id)string formatId:(unint64_t)id
{
  v5 = [self contentFormatWithFormatString:string];
  v5[2] = id;

  return v5;
}

+ (id)contentFormatWithNSString:(id)string formatId:(unint64_t)id builtIn:(BOOL)in
{
  v8 = [EDString edStringWithString:string];
  v9 = [self contentFormatWithFormatString:v8 formatId:id];

  v9[24] = in;

  return v9;
}

@end