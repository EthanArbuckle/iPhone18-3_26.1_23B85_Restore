@interface FARequestConfigurator(FamilyCircleUI)
+ (void)addMessageEligibilityToPayload:()FamilyCircleUI;
- (id)_urlEndpointForEventType:()FamilyCircleUI;
- (id)urlProvider;
- (void)_urlForEventType:()FamilyCircleUI withCompletion:;
- (void)requestForContext:()FamilyCircleUI withCompletion:;
@end

@implementation FARequestConfigurator(FamilyCircleUI)

- (id)urlProvider
{
  v0 = objc_opt_new();

  return v0;
}

- (void)requestForContext:()FamilyCircleUI withCompletion:
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__FARequestConfigurator_FamilyCircleUI__requestForContext_withCompletion___block_invoke;
  aBlock[3] = &unk_2782F2F48;
  v18 = v7;
  v8 = v7;
  v9 = _Block_copy(aBlock);
  v10 = [v6 urlForContext];

  if (v10)
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_21BB35000, v11, OS_LOG_TYPE_DEFAULT, "Context has url override", v16, 2u);
    }

    v12 = [v6 urlForContext];
    v9[2](v9, v12, 0);
  }

  else
  {
    v13 = [v6 urlEndpoint];

    if (v13)
    {
      v14 = _FALogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_21BB35000, v14, OS_LOG_TYPE_DEFAULT, "Context has urlEndpoint override.", v16, 2u);
      }

      v12 = [a1 urlProvider];
      v15 = [v6 urlEndpoint];
      [v12 URLForEndpoint:v15 withCompletion:v9];
    }

    else
    {
      v12 = [v6 eventType];
      [a1 _urlForEventType:v12 withCompletion:v9];
    }
  }
}

- (void)_urlForEventType:()FamilyCircleUI withCompletion:
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _urlEndpointForEventType:v6];
  v9 = _FALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "Desired enpoint %@ for event type %@", &v12, 0x16u);
  }

  if (v8)
  {
    v10 = [a1 urlProvider];
    [v10 URLForEndpoint:v8 withCompletion:v7];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] fa_familyErrorWithCode:-1008];
    v7[2](v7, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_urlEndpointForEventType:()FamilyCircleUI
{
  v3 = _urlEndpointForEventType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [FARequestConfigurator(FamilyCircleUI) _urlEndpointForEventType:];
  }

  v5 = [_urlEndpointForEventType__eventTypeToEndpointMap objectForKeyedSubscript:v4];

  return v5;
}

+ (void)addMessageEligibilityToPayload:()FamilyCircleUI
{
  v4 = a3;
  if (+[FAMessagesInviteConfigurationController isAvailable])
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"0";
  }

  [v4 setValue:v3 forKey:*MEMORY[0x277D080B0]];
}

@end