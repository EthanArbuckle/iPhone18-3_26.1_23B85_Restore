@interface PKTPSDiscoverabilitySignal
- (PKTPSDiscoverabilitySignal)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 context:(id)a5;
- (void)donateSignalWithCompletion:(id)a3;
@end

@implementation PKTPSDiscoverabilitySignal

- (PKTPSDiscoverabilitySignal)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKTPSDiscoverabilitySignal;
  v12 = [(PKTPSDiscoverabilitySignal *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_bundleIdentifier, a4);
    objc_storeStrong(&v13->_context, a5);
  }

  return v13;
}

- (void)donateSignalWithCompletion:(id)a3
{
  v11 = a3;
  v4 = [(PKTPSDiscoverabilitySignal *)self bundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v7 bundleIdentifier];
  }

  v8 = [MEMORY[0x1E698F350] discoverabilitySignal];
  v9 = [v8 source];
  v10 = [objc_alloc(MEMORY[0x1E698F278]) initWithIdentifier:self->_identifier bundleID:v6 context:self->_context];
  [v9 sendEvent:v10];
  if (v11)
  {
    v11[2](v11, 0);
  }
}

@end