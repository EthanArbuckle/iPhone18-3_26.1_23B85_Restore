@interface SGSuggestionAction
+ (SGSuggestionAction)actionWithTitle:(id)title handler:(id)handler;
- (SGSuggestionAction)initWithTitle:(id)title handler:(id)handler;
@end

@implementation SGSuggestionAction

- (SGSuggestionAction)initWithTitle:(id)title handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v13.receiver = self;
  v13.super_class = SGSuggestionAction;
  v9 = [(SGSuggestionAction *)&v13 init];
  if (v9)
  {
    v10 = _Block_copy(handlerCopy);
    handler = v9->_handler;
    v9->_handler = v10;

    objc_storeStrong(&v9->_title, title);
  }

  return v9;
}

+ (SGSuggestionAction)actionWithTitle:(id)title handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v8 = [[self alloc] initWithTitle:titleCopy handler:handlerCopy];

  return v8;
}

@end