@interface SGSuggestionAction
+ (SGSuggestionAction)actionWithTitle:(id)a3 handler:(id)a4;
- (SGSuggestionAction)initWithTitle:(id)a3 handler:(id)a4;
@end

@implementation SGSuggestionAction

- (SGSuggestionAction)initWithTitle:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SGSuggestionAction;
  v9 = [(SGSuggestionAction *)&v13 init];
  if (v9)
  {
    v10 = _Block_copy(v8);
    handler = v9->_handler;
    v9->_handler = v10;

    objc_storeStrong(&v9->_title, a3);
  }

  return v9;
}

+ (SGSuggestionAction)actionWithTitle:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 handler:v6];

  return v8;
}

@end