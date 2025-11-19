@interface NUBlockBasedURLModifier
+ (id)modifierWithBlock:(id)a3;
- (NUBlockBasedURLModifier)initWithBlock:(id)a3;
- (id)modifyURL:(id)a3;
@end

@implementation NUBlockBasedURLModifier

+ (id)modifierWithBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBlock:v4];

  return v5;
}

- (NUBlockBasedURLModifier)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NUBlockBasedURLModifier;
  v5 = [(NUBlockBasedURLModifier *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (id)modifyURL:(id)a3
{
  v4 = a3;
  v5 = [(NUBlockBasedURLModifier *)self block];

  v6 = v4;
  if (v5)
  {
    v7 = [(NUBlockBasedURLModifier *)self block];
    v6 = (v7)[2](v7, v4);
  }

  return v6;
}

@end