@interface MTAgentNotification
+ (id)notificationWithType:(int64_t)type name:(id)name powerAssertionTimeout:(double)timeout;
- (MTAgentNotification)initWithType:(int64_t)type name:(id)name powerAssertionTimeout:(double)timeout;
- (void)dealloc;
- (void)releaseAssertion;
@end

@implementation MTAgentNotification

+ (id)notificationWithType:(int64_t)type name:(id)name powerAssertionTimeout:(double)timeout
{
  nameCopy = name;
  v9 = [[self alloc] initWithType:type name:nameCopy powerAssertionTimeout:timeout];

  return v9;
}

- (MTAgentNotification)initWithType:(int64_t)type name:(id)name powerAssertionTimeout:(double)timeout
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = MTAgentNotification;
  v9 = [(MTAgentNotification *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    if (timeout > 0.0)
    {
      v13 = [MTPowerAssertion alloc];
      nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", nameCopy];
      v15 = [(MTPowerAssertion *)v13 initWithName:nameCopy assertionTimeout:timeout];
      powerAssertion = v10->_powerAssertion;
      v10->_powerAssertion = v15;

      [(MTPowerAssertion *)v10->_powerAssertion takeAssertion];
    }
  }

  return v10;
}

- (void)releaseAssertion
{
  powerAssertion = self->_powerAssertion;
  if (powerAssertion)
  {
    [(MTPowerAssertion *)powerAssertion releaseAssertion];
    powerAssertion = self->_powerAssertion;
  }

  self->_powerAssertion = 0;
}

- (void)dealloc
{
  [(MTAgentNotification *)self releaseAssertion];
  v3.receiver = self;
  v3.super_class = MTAgentNotification;
  [(MTAgentNotification *)&v3 dealloc];
}

@end