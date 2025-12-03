@interface HMFStringIndentation
+ (id)indentationWithWidth:(unint64_t)width;
- (HMFStringIndentation)initWithWidth:(unint64_t)width;
- (id)description;
- (id)indentationByLevels:(int64_t)levels;
@end

@implementation HMFStringIndentation

- (id)description
{
  width = [(HMFStringIndentation *)self width];
  v4 = width + width * [(HMFStringIndentation *)self level];

  return [&stru_283EBDA30 stringByPaddingToLength:v4 withString:@" " startingAtIndex:0];
}

+ (id)indentationWithWidth:(unint64_t)width
{
  v3 = [[self alloc] initWithWidth:width];

  return v3;
}

- (HMFStringIndentation)initWithWidth:(unint64_t)width
{
  v6.receiver = self;
  v6.super_class = HMFStringIndentation;
  result = [(HMFStringIndentation *)&v6 init];
  if (result)
  {
    widthCopy = 4;
    if (width)
    {
      widthCopy = width;
    }

    result->_width = widthCopy;
  }

  return result;
}

- (id)indentationByLevels:(int64_t)levels
{
  if ([(HMFStringIndentation *)self level]+ levels)
  {
    v5 = [(HMFStringIndentation *)self level]+ levels;
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