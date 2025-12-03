@interface CLSPersonIdentityResult
+ (id)personResultWithPerson:(id)person andConfidence:(float)confidence;
- (BOOL)isSamePersonAsResult:(id)result;
- (void)mergeWithResult:(id)result;
@end

@implementation CLSPersonIdentityResult

- (void)mergeWithResult:(id)result
{
  resultCopy = result;
  person = [(CLSPersonIdentityResult *)self person];
  person2 = [resultCopy person];
  [person mergeWithPerson:person2];

  [resultCopy confidence];
  if (v6 > self->_confidence)
  {
    [resultCopy confidence];
    self->_confidence = v7;
  }
}

- (BOOL)isSamePersonAsResult:(id)result
{
  resultCopy = result;
  person = [(CLSPersonIdentityResult *)self person];
  person2 = [resultCopy person];

  LOBYTE(resultCopy) = [person isSamePersonAs:person2];
  return resultCopy;
}

+ (id)personResultWithPerson:(id)person andConfidence:(float)confidence
{
  personCopy = person;
  v6 = objc_alloc_init(CLSPersonIdentityResult);
  [(CLSPersonIdentityResult *)v6 setPerson:personCopy];

  *&v7 = confidence;
  [(CLSPersonIdentityResult *)v6 setConfidence:v7];

  return v6;
}

@end