@interface CSPageContentComponent
- (CSPageContentComponent)init;
- (void)setSuppressHorizontalBounce:(int64_t)a3;
@end

@implementation CSPageContentComponent

- (CSPageContentComponent)init
{
  v5.receiver = self;
  v5.super_class = CSPageContentComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:4];
    [(CSPageContentComponent *)v3 setSuppressHorizontalBounce:0x7FFFFFFFFFFFFFFFLL];
  }

  return v3;
}

- (void)setSuppressHorizontalBounce:(int64_t)a3
{
  if ([(CSComponent *)self flag]!= a3)
  {

    [(CSComponent *)self setFlag:a3];
  }
}

@end