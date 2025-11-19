@interface HDCarouselServicesManager
- (HDCarouselServicesManager)init;
- (id)takeSessionAssertionForOwnerIdentifier:(id)a3 supportsAOT:(BOOL)a4;
@end

@implementation HDCarouselServicesManager

- (HDCarouselServicesManager)init
{
  v8.receiver = self;
  v8.super_class = HDCarouselServicesManager;
  v2 = [(HDCarouselServicesManager *)&v8 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x277D10AC0]);
    assertionManager = v2->_assertionManager;
    v2->_assertionManager = v5;

    [(HDAssertionManager *)v2->_assertionManager addObserver:v2 forAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierCarousel" queue:v2->_queue];
  }

  return v2;
}

- (id)takeSessionAssertionForOwnerIdentifier:(id)a3 supportsAOT:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (!self)
  {

    v12 = 0;
    return 0;
  }

  v8 = [_HDCarouselSessionAssertion alloc];
  if (v8)
  {
    v14.receiver = v8;
    v14.super_class = _HDCarouselSessionAssertion;
    v9 = [(HDCarouselServicesManager *)&v14 initWithAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierCarousel" ownerIdentifier:v7];
  }

  else
  {
    v9 = 0;
  }

  if ([(HDAssertionManager *)self->_assertionManager takeAssertion:v9])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (!v10)
  {
    return 0;
  }

  LOBYTE(v10[3]._assertionManager) = a4;
  return v9;
}

@end