@interface BMDistributedContextSubscriptionConfiguration
- (BMDistributedContextSubscriptionConfiguration)initWithOptions:(unint64_t)options lastChangedDate:(id)date;
- (BOOL)isEqual:(id)equal;
@end

@implementation BMDistributedContextSubscriptionConfiguration

- (BMDistributedContextSubscriptionConfiguration)initWithOptions:(unint64_t)options lastChangedDate:(id)date
{
  optionsCopy = options;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = BMDistributedContextSubscriptionConfiguration;
  v8 = [(BMDistributedContextSubscriptionConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:(optionsCopy >> 1) & 1];
    oneOffSubscription = v8->_oneOffSubscription;
    v8->_oneOffSubscription = v9;

    v11 = [MEMORY[0x277CCABB0] numberWithInt:optionsCopy & 1];
    wakeState = v8->_wakeState;
    v8->_wakeState = v11;

    objc_storeStrong(&v8->_lastChangedDate, date);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    oneOffSubscription = [v5 oneOffSubscription];
    if ([oneOffSubscription isEqual:self->_oneOffSubscription])
    {
      wakeState = [v5 wakeState];
      v8 = [wakeState isEqual:self->_wakeState];
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