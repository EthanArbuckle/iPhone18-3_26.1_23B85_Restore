@interface CHMathResultWithContext
- (CHMathResultWithContext)initWithResult:(id)a3 declaredVariables:(id)a4;
@end

@implementation CHMathResultWithContext

- (CHMathResultWithContext)initWithResult:(id)a3 declaredVariables:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CHMathResultWithContext;
  v13 = [(CHMathResultWithContext *)&v17 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v6, v8, v9, v10, v11, v12);
    v15 = v13->_result;
    v13->_result = v14;

    objc_storeStrong(&v13->_declaredVariables, a4);
  }

  return v13;
}

@end