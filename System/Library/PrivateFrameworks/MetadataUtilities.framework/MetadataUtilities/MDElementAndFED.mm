@interface MDElementAndFED
- (MDElementAndFED)initWithElement:(id)element fed:(id)fed;
- (void)dealloc;
@end

@implementation MDElementAndFED

- (MDElementAndFED)initWithElement:(id)element fed:(id)fed
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MDElementAndFED;
  v6 = [(MDElementAndFED *)&v9 init];
  if (v6)
  {
    v6->_element = element;
    v6->_fed = fed;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = MDElementAndFED;
  [(MDElementAndFED *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

@end