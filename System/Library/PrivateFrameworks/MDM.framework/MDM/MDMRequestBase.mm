@interface MDMRequestBase
- (BOOL)_validateAccessRights:(unint64_t)a3 requiredAccessRights:(unint64_t)a4 error:(id *)a5;
- (BOOL)isRequestAllowedWithError:(id *)a3;
- (MDMRequestHandlerProtocol)delegate;
- (id)_notAuthorizedError;
@end

@implementation MDMRequestBase

- (BOOL)isRequestAllowedWithError:(id *)a3
{
  if (-[MDMRequestBase isUserEnrollment](self, "isUserEnrollment") || (v5 = -[MDMRequestBase _validateAccessRights:requiredAccessRights:error:](self, "_validateAccessRights:requiredAccessRights:error:", -[MDMRequestBase accessRights](self, "accessRights"), [objc_opt_class() requiredAccessRights], a3)))
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)_validateAccessRights:(unint64_t)a3 requiredAccessRights:(unint64_t)a4 error:(id *)a5
{
  v6 = a4 & a3;
  if ((a4 & a3) != a4 && a5 != 0)
  {
    *a5 = [(MDMRequestBase *)self _notAuthorizedError];
  }

  return v6 == a4;
}

- (id)_notAuthorizedError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12007 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (MDMRequestHandlerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end