@interface IKJSApplication
- (BOOL)isFeatureEnabled:(id)a3;
- (BOOL)requestDocumentWithContext:(id)a3 response:(id)a4;
- (NSDictionary)traitCollection;
- (id)asPrivateIKJSApplication;
- (void)dispatchErrorWithMessage:(id)a3 sourceURL:(id)a4 line:(id)a5;
- (void)exitAppWithOptions:(id)a3;
- (void)launchAppWithOptions:(id)a3;
- (void)openURLWithOptions:(id)a3;
- (void)reload:(id)a3 :(id)a4;
- (void)resumeAppWithOptions:(id)a3;
- (void)suspendAppWithOptions:(id)a3;
- (void)traitCollectionChanged:(id)a3;
- (void)update;
- (void)updatedAppWithOptions:(id)a3;
@end

@implementation IKJSApplication

- (id)asPrivateIKJSApplication
{
  if ([(IKJSApplication *)self conformsToProtocol:&unk_2866F2930])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)launchAppWithOptions:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onLaunch" withArguments:v6, v9, v10];
  kdebug_trace();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)suspendAppWithOptions:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onSuspend" withArguments:v6, v9, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)resumeAppWithOptions:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onResume" withArguments:v6, v9, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)openURLWithOptions:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onOpenURL" withArguments:v6, v9, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)exitAppWithOptions:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onExit" withArguments:v6, v9, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updatedAppWithOptions:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onUpdate" withArguments:v6, v9, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionChanged:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(IKJSObject *)self invokeMethod:@"onTraitCollectionChange" withArguments:v6, v9, v10];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)requestDocumentWithContext:(id)a3 response:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CD4658];
  v9 = [(IKJSObject *)self appContext];
  v10 = [v9 jsContext];
  v11 = [v8 valueWithObject:self inContext:v10];

  v12 = [v11 hasProperty:@"onDocumentRequest"];
  if (v12)
  {
    v13 = v6;
    if (!v6)
    {
      v13 = [MEMORY[0x277CBEB68] null];
    }

    v18[0] = v13;
    v18[1] = v7;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v15 = [(IKJSObject *)self invokeMethod:@"onDocumentRequest" withArguments:v14];

    if (!v6)
    {
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)dispatchErrorWithMessage:(id)a3 sourceURL:(id)a4 line:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CBEB18];
  v10 = a3;
  v11 = [v9 arrayWithCapacity:3];
  [v11 addObject:v10];

  v12 = [v15 length];
  if (v8 && v12)
  {
    [v11 addObject:v15];
    [v11 addObject:v8];
  }

  v13 = [v11 copy];
  v14 = [(IKJSObject *)self invokeMethod:@"onError" withArguments:v13];
}

- (void)reload:(id)a3 :(id)a4
{
  v6 = a4;
  v7 = a3;
  v13 = [v7 objectForKeyedSubscript:@"when"];
  v8 = [v13 isEqualToString:@"onResume"];
  v9 = [v7 objectForKeyedSubscript:@"minSuspensionTime"];

  if ([v9 length])
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [(IKJSObject *)self appContext];
  [v12 handleReloadWithUrgencyType:v8 minInterval:v6 data:v11];
}

- (void)update
{
  v2 = [(IKJSObject *)self appContext];
  [v2 handleCacheUpdate];
}

- (NSDictionary)traitCollection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(IKJSObject *)self appContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__IKJSApplication_traitCollection__block_invoke;
  v6[3] = &unk_279799028;
  v6[4] = self;
  v6[5] = &v7;
  [v3 evaluateDelegateBlockSync:v6];

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

- (BOOL)isFeatureEnabled:(id)a3
{
  v4 = a3;
  v5 = [(IKJSObject *)self appContext];
  v6 = [v5 isFeatureEnabled:v4];

  return v6;
}

@end