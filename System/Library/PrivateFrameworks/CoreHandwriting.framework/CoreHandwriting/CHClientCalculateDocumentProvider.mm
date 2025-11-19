@interface CHClientCalculateDocumentProvider
- (CHClientCalculateDocumentProvider)initWithDeclaredVariables:(id)a3 recognizedExpressions:(id)a4;
@end

@implementation CHClientCalculateDocumentProvider

- (CHClientCalculateDocumentProvider)initWithDeclaredVariables:(id)a3 recognizedExpressions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CHClientCalculateDocumentProvider;
  v9 = [(CHClientCalculateDocumentProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_declaredVariables, a3);
    objc_storeStrong(&v10->_recognizedExpressions, a4);
  }

  return v10;
}

@end