@interface DNDSModeDetails
+ (id)detailsForInactiveDoNotDisturb;
- (BOOL)isEqual:(id)equal;
- (DNDSModeDetails)initWithInterruptionSuppression:(unint64_t)suppression;
- (id)description;
- (id)restrictedDetailsWithDetails:(id)details;
@end

@implementation DNDSModeDetails

+ (id)detailsForInactiveDoNotDisturb
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DNDSModeDetails_detailsForInactiveDoNotDisturb__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (detailsForInactiveDoNotDisturb_onceToken != -1)
  {
    dispatch_once(&detailsForInactiveDoNotDisturb_onceToken, block);
  }

  v2 = detailsForInactiveDoNotDisturb_inactiveDetails;

  return v2;
}

uint64_t __49__DNDSModeDetails_detailsForInactiveDoNotDisturb__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithInterruptionSuppression:0];
  v2 = detailsForInactiveDoNotDisturb_inactiveDetails;
  detailsForInactiveDoNotDisturb_inactiveDetails = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (DNDSModeDetails)initWithInterruptionSuppression:(unint64_t)suppression
{
  v5.receiver = self;
  v5.super_class = DNDSModeDetails;
  result = [(DNDSModeDetails *)&v5 init];
  if (result)
  {
    result->_interruptionSuppression = suppression;
  }

  return result;
}

- (id)restrictedDetailsWithDetails:(id)details
{
  detailsCopy = details;
  [(DNDSModeDetails *)self interruptionSuppression];
  [detailsCopy interruptionSuppression];

  v5 = [[DNDSModeDetails alloc] initWithInterruptionSuppression:DNDMostRestrictiveInterruptionSuppression()];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      interruptionSuppression = [(DNDSModeDetails *)self interruptionSuppression];
      interruptionSuppression2 = [(DNDSModeDetails *)v5 interruptionSuppression];

      v8 = interruptionSuppression == interruptionSuppression2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(DNDSModeDetails *)self interruptionSuppression];
  v5 = DNDStringFromInterruptionSuppression();
  v6 = [v3 stringWithFormat:@"<%@: %p interruptionSuppression: %@>", v4, self, v5];;

  return v6;
}

@end