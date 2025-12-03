@interface CSHomeAffordanceComponent
- (CSHomeAffordanceComponent)init;
- (unint64_t)viewStyle;
- (void)setSuppressTeachableMomentsAnimation:(int64_t)animation;
- (void)setViewStyle:(unint64_t)style;
@end

@implementation CSHomeAffordanceComponent

- (CSHomeAffordanceComponent)init
{
  v5.receiver = self;
  v5.super_class = CSHomeAffordanceComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:12];
    [(CSHomeAffordanceComponent *)v3 setSuppressTeachableMomentsAnimation:0x7FFFFFFFFFFFFFFFLL];
  }

  return v3;
}

- (unint64_t)viewStyle
{
  value = [(CSComponent *)self value];
  v3 = value;
  if (value)
  {
    intValue = [value intValue];
  }

  else
  {
    intValue = 1;
  }

  return intValue;
}

- (void)setViewStyle:(unint64_t)style
{
  value = [(CSComponent *)self value];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
  v7 = [value isEqualToNumber:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:style];
    [(CSComponent *)self setValue:v8];
  }
}

- (void)setSuppressTeachableMomentsAnimation:(int64_t)animation
{
  if ([(CSComponent *)self flag]!= animation)
  {

    [(CSComponent *)self setFlag:animation];
  }
}

@end