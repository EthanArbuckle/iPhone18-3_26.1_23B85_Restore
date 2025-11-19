@interface MDElementAndFED
- (MDElementAndFED)initWithElement:(id)a3 fed:(id)a4;
- (void)dealloc;
@end

@implementation MDElementAndFED

- (MDElementAndFED)initWithElement:(id)a3 fed:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MDElementAndFED;
  v6 = [(MDElementAndFED *)&v9 init];
  if (v6)
  {
    v6->_element = a3;
    v6->_fed = a4;
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