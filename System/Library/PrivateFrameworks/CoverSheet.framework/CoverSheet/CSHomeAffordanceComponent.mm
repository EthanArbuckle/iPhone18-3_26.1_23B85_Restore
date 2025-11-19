@interface CSHomeAffordanceComponent
- (CSHomeAffordanceComponent)init;
- (unint64_t)viewStyle;
- (void)setSuppressTeachableMomentsAnimation:(int64_t)a3;
- (void)setViewStyle:(unint64_t)a3;
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
  v2 = [(CSComponent *)self value];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setViewStyle:(unint64_t)a3
{
  v5 = [(CSComponent *)self value];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 isEqualToNumber:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(CSComponent *)self setValue:v8];
  }
}

- (void)setSuppressTeachableMomentsAnimation:(int64_t)a3
{
  if ([(CSComponent *)self flag]!= a3)
  {

    [(CSComponent *)self setFlag:a3];
  }
}

@end