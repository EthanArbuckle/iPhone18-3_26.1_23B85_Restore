@interface CRKClassKitClassPropertyApplicatorResult
- (CRKClassKitClassPropertyApplicatorResult)initWithClassWasModified:(BOOL)modified;
@end

@implementation CRKClassKitClassPropertyApplicatorResult

- (CRKClassKitClassPropertyApplicatorResult)initWithClassWasModified:(BOOL)modified
{
  v5.receiver = self;
  v5.super_class = CRKClassKitClassPropertyApplicatorResult;
  result = [(CRKClassKitClassPropertyApplicatorResult *)&v5 init];
  if (result)
  {
    result->_classWasModified = modified;
  }

  return result;
}

@end