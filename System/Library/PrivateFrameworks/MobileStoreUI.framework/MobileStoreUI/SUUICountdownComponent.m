@interface SUUICountdownComponent
- (SUUICountdownComponent)initWithCustomPageContext:(id)a3;
@end

@implementation SUUICountdownComponent

- (SUUICountdownComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUUICountdownComponent;
  v5 = [(SUUIPageComponent *)&v11 initWithCustomPageContext:v4];
  if (v5)
  {
    v6 = [SUUICountdown alloc];
    v7 = [v4 componentDictionary];
    v8 = [(SUUICountdown *)v6 initWithCountdownDictionary:v7];
    countdown = v5->_countdown;
    v5->_countdown = v8;
  }

  return v5;
}

@end