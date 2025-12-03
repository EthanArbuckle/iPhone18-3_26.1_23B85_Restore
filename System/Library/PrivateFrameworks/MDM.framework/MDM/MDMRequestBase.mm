@interface MDMRequestBase
- (BOOL)_validateAccessRights:(unint64_t)rights requiredAccessRights:(unint64_t)accessRights error:(id *)error;
- (BOOL)isRequestAllowedWithError:(id *)error;
- (MDMRequestHandlerProtocol)delegate;
- (id)_notAuthorizedError;
@end

@implementation MDMRequestBase

- (BOOL)isRequestAllowedWithError:(id *)error
{
  if (-[MDMRequestBase isUserEnrollment](self, "isUserEnrollment") || (v5 = -[MDMRequestBase _validateAccessRights:requiredAccessRights:error:](self, "_validateAccessRights:requiredAccessRights:error:", -[MDMRequestBase accessRights](self, "accessRights"), [objc_opt_class() requiredAccessRights], error)))
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)_validateAccessRights:(unint64_t)rights requiredAccessRights:(unint64_t)accessRights error:(id *)error
{
  v6 = accessRights & rights;
  if ((accessRights & rights) != accessRights && error != 0)
  {
    *error = [(MDMRequestBase *)self _notAuthorizedError];
  }

  return v6 == accessRights;
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