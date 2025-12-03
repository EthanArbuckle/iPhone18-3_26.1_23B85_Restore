@interface PKTPSDiscoverabilitySignal
- (PKTPSDiscoverabilitySignal)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier context:(id)context;
- (void)donateSignalWithCompletion:(id)completion;
@end

@implementation PKTPSDiscoverabilitySignal

- (PKTPSDiscoverabilitySignal)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier context:(id)context
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = PKTPSDiscoverabilitySignal;
  v12 = [(PKTPSDiscoverabilitySignal *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_bundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v13->_context, context);
  }

  return v13;
}

- (void)donateSignalWithCompletion:(id)completion
{
  completionCopy = completion;
  bundleIdentifier = [(PKTPSDiscoverabilitySignal *)self bundleIdentifier];
  v5 = bundleIdentifier;
  if (bundleIdentifier)
  {
    bundleIdentifier2 = bundleIdentifier;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle bundleIdentifier];
  }

  discoverabilitySignal = [MEMORY[0x1E698F350] discoverabilitySignal];
  source = [discoverabilitySignal source];
  v10 = [objc_alloc(MEMORY[0x1E698F278]) initWithIdentifier:self->_identifier bundleID:bundleIdentifier2 context:self->_context];
  [source sendEvent:v10];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

@end