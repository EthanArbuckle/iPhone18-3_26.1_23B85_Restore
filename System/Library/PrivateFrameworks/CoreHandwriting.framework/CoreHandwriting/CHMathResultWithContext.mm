@interface CHMathResultWithContext
- (CHMathResultWithContext)initWithResult:(id)result declaredVariables:(id)variables;
@end

@implementation CHMathResultWithContext

- (CHMathResultWithContext)initWithResult:(id)result declaredVariables:(id)variables
{
  resultCopy = result;
  variablesCopy = variables;
  v17.receiver = self;
  v17.super_class = CHMathResultWithContext;
  v13 = [(CHMathResultWithContext *)&v17 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(resultCopy, v8, v9, v10, v11, v12);
    v15 = v13->_result;
    v13->_result = v14;

    objc_storeStrong(&v13->_declaredVariables, variables);
  }

  return v13;
}

@end