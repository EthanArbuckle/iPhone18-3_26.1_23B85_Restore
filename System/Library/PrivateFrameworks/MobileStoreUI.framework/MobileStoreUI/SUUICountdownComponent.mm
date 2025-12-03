@interface SUUICountdownComponent
- (SUUICountdownComponent)initWithCustomPageContext:(id)context;
@end

@implementation SUUICountdownComponent

- (SUUICountdownComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SUUICountdownComponent;
  v5 = [(SUUIPageComponent *)&v11 initWithCustomPageContext:contextCopy];
  if (v5)
  {
    v6 = [SUUICountdown alloc];
    componentDictionary = [contextCopy componentDictionary];
    v8 = [(SUUICountdown *)v6 initWithCountdownDictionary:componentDictionary];
    countdown = v5->_countdown;
    v5->_countdown = v8;
  }

  return v5;
}

@end