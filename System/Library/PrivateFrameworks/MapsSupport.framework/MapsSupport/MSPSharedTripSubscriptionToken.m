@interface MSPSharedTripSubscriptionToken
- (MSPSharedTripSubscriptionToken)initWithSharedTripIdentifier:(id)a3 invalidationHandler:(id)a4;
- (void)dealloc;
@end

@implementation MSPSharedTripSubscriptionToken

- (MSPSharedTripSubscriptionToken)initWithSharedTripIdentifier:(id)a3 invalidationHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MSPSharedTripSubscriptionToken;
  v9 = [(MSPSharedTripSubscriptionToken *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sharedTripIdentifier, a3);
    v11 = [v8 copy];
    invalidationHandler = v10->_invalidationHandler;
    v10->_invalidationHandler = v11;
  }

  return v10;
}

- (void)dealloc
{
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    v4 = MEMORY[0x259C7AD60](invalidationHandler, a2);
    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    (v4)[2](v4, self, self->_sharedTripIdentifier);
  }

  v6.receiver = self;
  v6.super_class = MSPSharedTripSubscriptionToken;
  [(MSPSharedTripSubscriptionToken *)&v6 dealloc];
}

@end