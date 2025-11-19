@interface MTAgentNotification
+ (id)notificationWithType:(int64_t)a3 name:(id)a4 powerAssertionTimeout:(double)a5;
- (MTAgentNotification)initWithType:(int64_t)a3 name:(id)a4 powerAssertionTimeout:(double)a5;
- (void)dealloc;
- (void)releaseAssertion;
@end

@implementation MTAgentNotification

+ (id)notificationWithType:(int64_t)a3 name:(id)a4 powerAssertionTimeout:(double)a5
{
  v8 = a4;
  v9 = [[a1 alloc] initWithType:a3 name:v8 powerAssertionTimeout:a5];

  return v9;
}

- (MTAgentNotification)initWithType:(int64_t)a3 name:(id)a4 powerAssertionTimeout:(double)a5
{
  v8 = a4;
  v18.receiver = self;
  v18.super_class = MTAgentNotification;
  v9 = [(MTAgentNotification *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = a3;
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    if (a5 > 0.0)
    {
      v13 = [MTPowerAssertion alloc];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v8];
      v15 = [(MTPowerAssertion *)v13 initWithName:v14 assertionTimeout:a5];
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