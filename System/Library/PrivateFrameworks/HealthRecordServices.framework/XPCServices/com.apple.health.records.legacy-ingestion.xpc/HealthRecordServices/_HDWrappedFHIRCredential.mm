@interface _HDWrappedFHIRCredential
- (id)_initWithCredential:(id)credential;
- (void)didRefreshCredential:(id)credential;
@end

@implementation _HDWrappedFHIRCredential

- (id)_initWithCredential:(id)credential
{
  credentialCopy = credential;
  v9.receiver = self;
  v9.super_class = _HDWrappedFHIRCredential;
  v5 = [(_HDWrappedFHIRCredential *)&v9 init];
  if (v5)
  {
    v6 = [credentialCopy copy];
    originalCredential = v5->_originalCredential;
    v5->_originalCredential = v6;
  }

  return v5;
}

- (void)didRefreshCredential:(id)credential
{
  v4 = [credential copy];
  refreshedCredential = self->_refreshedCredential;
  self->_refreshedCredential = v4;

  self->_invalidated = 0;
}

@end