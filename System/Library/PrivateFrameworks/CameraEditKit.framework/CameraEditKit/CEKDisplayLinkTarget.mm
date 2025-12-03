@interface CEKDisplayLinkTarget
- (CEKDisplayLinkTarget)initWithHandler:(id)handler;
- (void)displayLinkDidFire:(id)fire;
@end

@implementation CEKDisplayLinkTarget

- (CEKDisplayLinkTarget)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = CEKDisplayLinkTarget;
  v5 = [(CEKDisplayLinkTarget *)&v10 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    handler = v5->_handler;
    v5->_handler = v6;

    v8 = v5;
  }

  return v5;
}

- (void)displayLinkDidFire:(id)fire
{
  fireCopy = fire;
  handler = [(CEKDisplayLinkTarget *)self handler];

  if (handler)
  {
    handler2 = [(CEKDisplayLinkTarget *)self handler];
    (handler2)[2](handler2, fireCopy);
  }
}

@end