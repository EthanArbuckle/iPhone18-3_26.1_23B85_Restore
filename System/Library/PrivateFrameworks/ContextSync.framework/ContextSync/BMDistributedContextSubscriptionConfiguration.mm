@interface BMDistributedContextSubscriptionConfiguration
- (BMDistributedContextSubscriptionConfiguration)initWithOptions:(unint64_t)a3 lastChangedDate:(id)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation BMDistributedContextSubscriptionConfiguration

- (BMDistributedContextSubscriptionConfiguration)initWithOptions:(unint64_t)a3 lastChangedDate:(id)a4
{
  v5 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BMDistributedContextSubscriptionConfiguration;
  v8 = [(BMDistributedContextSubscriptionConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:(v5 >> 1) & 1];
    oneOffSubscription = v8->_oneOffSubscription;
    v8->_oneOffSubscription = v9;

    v11 = [MEMORY[0x277CCABB0] numberWithInt:v5 & 1];
    wakeState = v8->_wakeState;
    v8->_wakeState = v11;

    objc_storeStrong(&v8->_lastChangedDate, a4);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 oneOffSubscription];
    if ([v6 isEqual:self->_oneOffSubscription])
    {
      v7 = [v5 wakeState];
      v8 = [v7 isEqual:self->_wakeState];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end