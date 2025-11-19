@interface _HDWrappedFHIRCredential
- (id)_initWithCredential:(id)a3;
- (void)didRefreshCredential:(id)a3;
@end

@implementation _HDWrappedFHIRCredential

- (id)_initWithCredential:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HDWrappedFHIRCredential;
  v5 = [(_HDWrappedFHIRCredential *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    originalCredential = v5->_originalCredential;
    v5->_originalCredential = v6;
  }

  return v5;
}

- (void)didRefreshCredential:(id)a3
{
  v4 = [a3 copy];
  refreshedCredential = self->_refreshedCredential;
  self->_refreshedCredential = v4;

  self->_invalidated = 0;
}

@end