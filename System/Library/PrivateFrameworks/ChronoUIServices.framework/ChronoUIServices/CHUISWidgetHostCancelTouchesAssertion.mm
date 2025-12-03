@interface CHUISWidgetHostCancelTouchesAssertion
- (CHUISWidgetHostCancelTouchesAssertion)initWithAssertions:(id)assertions;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CHUISWidgetHostCancelTouchesAssertion

- (CHUISWidgetHostCancelTouchesAssertion)initWithAssertions:(id)assertions
{
  assertionsCopy = assertions;
  v9.receiver = self;
  v9.super_class = CHUISWidgetHostCancelTouchesAssertion;
  v5 = [(CHUISWidgetHostCancelTouchesAssertion *)&v9 init];
  if (v5)
  {
    v6 = [assertionsCopy copy];
    assertions = v5->_assertions;
    v5->_assertions = v6;
  }

  return v5;
}

- (void)dealloc
{
  if (![(CHUISWidgetHostCancelTouchesAssertion *)self isInvalidated])
  {
    [(CHUISWidgetHostCancelTouchesAssertion *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = CHUISWidgetHostCancelTouchesAssertion;
  [(CHUISWidgetHostCancelTouchesAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  if (![(CHUISWidgetHostCancelTouchesAssertion *)self isInvalidated])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    assertions = [(CHUISWidgetHostCancelTouchesAssertion *)self assertions];
    v4 = [assertions countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(assertions);
          }

          [*(*(&v8 + 1) + 8 * v6++) invalidate];
        }

        while (v4 != v6);
        v4 = [assertions countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    [(CHUISWidgetHostCancelTouchesAssertion *)self setInvalidated:1];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end