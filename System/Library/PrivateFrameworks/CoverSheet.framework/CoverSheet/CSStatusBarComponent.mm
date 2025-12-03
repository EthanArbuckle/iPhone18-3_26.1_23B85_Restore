@interface CSStatusBarComponent
- (CSStatusBarComponent)init;
- (void)setFakeStatusBar:(int64_t)bar;
- (void)setFakeStatusBarLevel:(id)level;
@end

@implementation CSStatusBarComponent

- (CSStatusBarComponent)init
{
  v5.receiver = self;
  v5.super_class = CSStatusBarComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:2];
    [(CSStatusBarComponent *)v3 setFakeStatusBar:0x7FFFFFFFFFFFFFFFLL];
  }

  return v3;
}

- (void)setFakeStatusBar:(int64_t)bar
{
  if ([(CSComponent *)self flag]!= bar)
  {

    [(CSComponent *)self setFlag:bar];
  }
}

- (void)setFakeStatusBarLevel:(id)level
{
  levelCopy = level;
  value = [(CSComponent *)self value];

  v5 = levelCopy;
  if (value != levelCopy)
  {
    [(CSComponent *)self setValue:levelCopy];
    v5 = levelCopy;
  }
}

@end