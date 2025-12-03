@interface CHClientCalculateDocumentProvider
- (CHClientCalculateDocumentProvider)initWithDeclaredVariables:(id)variables recognizedExpressions:(id)expressions;
@end

@implementation CHClientCalculateDocumentProvider

- (CHClientCalculateDocumentProvider)initWithDeclaredVariables:(id)variables recognizedExpressions:(id)expressions
{
  variablesCopy = variables;
  expressionsCopy = expressions;
  v12.receiver = self;
  v12.super_class = CHClientCalculateDocumentProvider;
  v9 = [(CHClientCalculateDocumentProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_declaredVariables, variables);
    objc_storeStrong(&v10->_recognizedExpressions, expressions);
  }

  return v10;
}

@end