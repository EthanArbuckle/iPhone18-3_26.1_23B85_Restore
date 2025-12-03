@interface XRBlockHandledIssueResponder
- (XRBlockHandledIssueResponder)initWithHandler:(id)handler;
@end

@implementation XRBlockHandledIssueResponder

- (XRBlockHandledIssueResponder)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = XRBlockHandledIssueResponder;
  v5 = [(XRBlockHandledIssueResponder *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x24C1C5B20](handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

@end