@interface CRKClassKitClassPropertyApplicatorResult
- (CRKClassKitClassPropertyApplicatorResult)initWithClassWasModified:(BOOL)a3;
@end

@implementation CRKClassKitClassPropertyApplicatorResult

- (CRKClassKitClassPropertyApplicatorResult)initWithClassWasModified:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CRKClassKitClassPropertyApplicatorResult;
  result = [(CRKClassKitClassPropertyApplicatorResult *)&v5 init];
  if (result)
  {
    result->_classWasModified = a3;
  }

  return result;
}

@end