@interface DABabysitterRegistrationToken
- (DABabysitterRegistrationToken)initWithBlock:(id)a3;
- (void)dealloc;
@end

@implementation DABabysitterRegistrationToken

- (DABabysitterRegistrationToken)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DABabysitterRegistrationToken;
  v5 = [(DABabysitterRegistrationToken *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D0F110](v4);
    unregisterBlock = v5->_unregisterBlock;
    v5->_unregisterBlock = v6;
  }

  return v5;
}

- (void)dealloc
{
  unregisterBlock = self->_unregisterBlock;
  if (unregisterBlock)
  {
    v4 = MEMORY[0x245D0F110](unregisterBlock, a2);
    v5 = self->_unregisterBlock;
    self->_unregisterBlock = 0;

    v4[2](v4);
  }

  v6.receiver = self;
  v6.super_class = DABabysitterRegistrationToken;
  [(DABabysitterRegistrationToken *)&v6 dealloc];
}

@end