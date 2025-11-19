@interface MLDUnknownIntegrityFault
- (BOOL)attemptRecoveryUsingHandle:(sqlite3 *)a3 withError:(id *)a4;
- (MLDUnknownIntegrityFault)initWithFaultString:(id)a3;
- (id)description;
@end

@implementation MLDUnknownIntegrityFault

- (BOOL)attemptRecoveryUsingHandle:(sqlite3 *)a3 withError:(id *)a4
{
  if (a4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = NSLocalizedDescriptionKey;
    v10 = @"unhandleable integrity fault";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    *a4 = [NSError errorWithDomain:v6 code:-1 userInfo:v7];
  }

  return 0;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p %@>", v4, self, self->_faultString];

  return v5;
}

- (MLDUnknownIntegrityFault)initWithFaultString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MLDUnknownIntegrityFault;
  v5 = [(MLDUnknownIntegrityFault *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    faultString = v5->_faultString;
    v5->_faultString = v6;
  }

  return v5;
}

@end