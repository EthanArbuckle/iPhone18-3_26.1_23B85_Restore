@interface IKJSApplication
- (BOOL)isFeatureEnabled:(id)enabled;
- (BOOL)requestDocumentWithContext:(id)context response:(id)response;
- (NSDictionary)traitCollection;
- (id)asPrivateIKJSApplication;
- (void)dispatchErrorWithMessage:(id)message sourceURL:(id)l line:(id)line;
- (void)exitAppWithOptions:(id)options;
- (void)launchAppWithOptions:(id)options;
- (void)openURLWithOptions:(id)options;
- (void)reload:(id)reload :(id)a4;
- (void)resumeAppWithOptions:(id)options;
- (void)suspendAppWithOptions:(id)options;
- (void)traitCollectionChanged:(id)changed;
- (void)update;
- (void)updatedAppWithOptions:(id)options;
@end

@implementation IKJSApplication

- (id)asPrivateIKJSApplication
{
  if ([(IKJSApplication *)self conformsToProtocol:&unk_2866F2930])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)launchAppWithOptions:(id)options
{
  v10 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = MEMORY[0x277CBEA60];
  optionsCopy2 = options;
  v6 = [v4 arrayWithObjects:&optionsCopy count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onLaunch" withArguments:v6, optionsCopy, v10];
  kdebug_trace();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)suspendAppWithOptions:(id)options
{
  v10 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = MEMORY[0x277CBEA60];
  optionsCopy2 = options;
  v6 = [v4 arrayWithObjects:&optionsCopy count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onSuspend" withArguments:v6, optionsCopy, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)resumeAppWithOptions:(id)options
{
  v10 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = MEMORY[0x277CBEA60];
  optionsCopy2 = options;
  v6 = [v4 arrayWithObjects:&optionsCopy count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onResume" withArguments:v6, optionsCopy, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)openURLWithOptions:(id)options
{
  v10 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = MEMORY[0x277CBEA60];
  optionsCopy2 = options;
  v6 = [v4 arrayWithObjects:&optionsCopy count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onOpenURL" withArguments:v6, optionsCopy, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)exitAppWithOptions:(id)options
{
  v10 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = MEMORY[0x277CBEA60];
  optionsCopy2 = options;
  v6 = [v4 arrayWithObjects:&optionsCopy count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onExit" withArguments:v6, optionsCopy, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updatedAppWithOptions:(id)options
{
  v10 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = MEMORY[0x277CBEA60];
  optionsCopy2 = options;
  v6 = [v4 arrayWithObjects:&optionsCopy count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onUpdate" withArguments:v6, optionsCopy, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionChanged:(id)changed
{
  v10 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v4 = MEMORY[0x277CBEA60];
  changedCopy2 = changed;
  v6 = [v4 arrayWithObjects:&changedCopy count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onTraitCollectionChange" withArguments:v6, changedCopy, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)requestDocumentWithContext:(id)context response:(id)response
{
  v18[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  responseCopy = response;
  v8 = MEMORY[0x277CD4658];
  appContext = [(IKJSObject *)self appContext];
  jsContext = [appContext jsContext];
  v11 = [v8 valueWithObject:self inContext:jsContext];

  v12 = [v11 hasProperty:@"onDocumentRequest"];
  if (v12)
  {
    null = contextCopy;
    if (!contextCopy)
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v18[0] = null;
    v18[1] = responseCopy;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v15 = [(IKJSObject *)self invokeMethod:@"onDocumentRequest" withArguments:v14];

    if (!contextCopy)
    {
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)dispatchErrorWithMessage:(id)message sourceURL:(id)l line:(id)line
{
  lCopy = l;
  lineCopy = line;
  v9 = MEMORY[0x277CBEB18];
  messageCopy = message;
  v11 = [v9 arrayWithCapacity:3];
  [v11 addObject:messageCopy];

  v12 = [lCopy length];
  if (lineCopy && v12)
  {
    [v11 addObject:lCopy];
    [v11 addObject:lineCopy];
  }

  v13 = [v11 copy];
  v14 = [(IKJSObject *)self invokeMethod:@"onError" withArguments:v13];
}

- (void)reload:(id)reload :(id)a4
{
  v6 = a4;
  reloadCopy = reload;
  v13 = [reloadCopy objectForKeyedSubscript:@"when"];
  v8 = [v13 isEqualToString:@"onResume"];
  v9 = [reloadCopy objectForKeyedSubscript:@"minSuspensionTime"];

  if ([v9 length])
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  appContext = [(IKJSObject *)self appContext];
  [appContext handleReloadWithUrgencyType:v8 minInterval:v6 data:v11];
}

- (void)update
{
  appContext = [(IKJSObject *)self appContext];
  [appContext handleCacheUpdate];
}

- (NSDictionary)traitCollection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  appContext = [(IKJSObject *)self appContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__IKJSApplication_traitCollection__block_invoke;
  v6[3] = &unk_279799028;
  v6[4] = self;
  v6[5] = &v7;
  [appContext evaluateDelegateBlockSync:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__IKJSApplication_traitCollection__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) appContext];
  v2 = [v5 _appTraitCollection];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isFeatureEnabled:(id)enabled
{
  enabledCopy = enabled;
  appContext = [(IKJSObject *)self appContext];
  v6 = [appContext isFeatureEnabled:enabledCopy];

  return v6;
}

@end