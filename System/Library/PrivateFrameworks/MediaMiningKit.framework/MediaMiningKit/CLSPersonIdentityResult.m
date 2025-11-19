@interface CLSPersonIdentityResult
+ (id)personResultWithPerson:(id)a3 andConfidence:(float)a4;
- (BOOL)isSamePersonAsResult:(id)a3;
- (void)mergeWithResult:(id)a3;
@end

@implementation CLSPersonIdentityResult

- (void)mergeWithResult:(id)a3
{
  v8 = a3;
  v4 = [(CLSPersonIdentityResult *)self person];
  v5 = [v8 person];
  [v4 mergeWithPerson:v5];

  [v8 confidence];
  if (v6 > self->_confidence)
  {
    [v8 confidence];
    self->_confidence = v7;
  }
}

- (BOOL)isSamePersonAsResult:(id)a3
{
  v4 = a3;
  v5 = [(CLSPersonIdentityResult *)self person];
  v6 = [v4 person];

  LOBYTE(v4) = [v5 isSamePersonAs:v6];
  return v4;
}

+ (id)personResultWithPerson:(id)a3 andConfidence:(float)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CLSPersonIdentityResult);
  [(CLSPersonIdentityResult *)v6 setPerson:v5];

  *&v7 = a4;
  [(CLSPersonIdentityResult *)v6 setConfidence:v7];

  return v6;
}

@end