@interface CHSWidgetRelevanceAttribute
- (CHSWidgetRelevanceAttribute)init;
- (id)_init;
@end

@implementation CHSWidgetRelevanceAttribute

- (CHSWidgetRelevanceAttribute)init
{
  v3 = [(CHSWidgetRelevanceAttribute *)self isMemberOfClass:objc_opt_class()];
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  if (v3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"CHSWidgetRelevanceAttribute cannot be initialized directly with -init, initialize a subclass instead."}];
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v4 raise:v5 format:{@"%@ cannot be initialized directly with -init, use the designated initializer instead.", v7}];
  }

  return [(CHSWidgetRelevanceAttribute *)self _init];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CHSWidgetRelevanceAttribute;
  return [(CHSWidgetRelevanceAttribute *)&v3 init];
}

@end