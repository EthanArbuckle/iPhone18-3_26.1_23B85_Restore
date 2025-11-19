@interface CEKDisplayLinkTarget
- (CEKDisplayLinkTarget)initWithHandler:(id)a3;
- (void)displayLinkDidFire:(id)a3;
@end

@implementation CEKDisplayLinkTarget

- (CEKDisplayLinkTarget)initWithHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CEKDisplayLinkTarget;
  v5 = [(CEKDisplayLinkTarget *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    handler = v5->_handler;
    v5->_handler = v6;

    v8 = v5;
  }

  return v5;
}

- (void)displayLinkDidFire:(id)a3
{
  v6 = a3;
  v4 = [(CEKDisplayLinkTarget *)self handler];

  if (v4)
  {
    v5 = [(CEKDisplayLinkTarget *)self handler];
    (v5)[2](v5, v6);
  }
}

@end