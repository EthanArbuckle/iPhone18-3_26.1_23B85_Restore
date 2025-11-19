@interface HMFStringIndentation
+ (id)indentationWithWidth:(unint64_t)a3;
- (HMFStringIndentation)initWithWidth:(unint64_t)a3;
- (id)description;
- (id)indentationByLevels:(int64_t)a3;
@end

@implementation HMFStringIndentation

- (id)description
{
  v3 = [(HMFStringIndentation *)self width];
  v4 = v3 + v3 * [(HMFStringIndentation *)self level];

  return [&stru_283EBDA30 stringByPaddingToLength:v4 withString:@" " startingAtIndex:0];
}

+ (id)indentationWithWidth:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithWidth:a3];

  return v3;
}

- (HMFStringIndentation)initWithWidth:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = HMFStringIndentation;
  result = [(HMFStringIndentation *)&v6 init];
  if (result)
  {
    v5 = 4;
    if (a3)
    {
      v5 = a3;
    }

    result->_width = v5;
  }

  return result;
}

- (id)indentationByLevels:(int64_t)a3
{
  if ([(HMFStringIndentation *)self level]+ a3)
  {
    v5 = [(HMFStringIndentation *)self level]+ a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_alloc(objc_opt_class()) initWithWidth:{-[HMFStringIndentation width](self, "width")}];
  v6[2] = v5;

  return v6;
}

@end