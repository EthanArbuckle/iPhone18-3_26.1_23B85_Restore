@interface MPCVocalAttenuationPolicyController
- (MPCVocalAttenuationPolicyController)initWithDelegate:(id)delegate parameters:(id)parameters;
- (MPCVocalAttenuationPolicyControllerDelegate)delegate;
- (id)blockingEvaluation;
- (void)_notifyDelegate;
- (void)_setupPoliciesWithParameters:(id)parameters;
- (void)resetPolicies;
- (void)vocalAttenuationPolicy:(id)policy didChangeEvaluation:(id)evaluation;
@end

@implementation MPCVocalAttenuationPolicyController

- (MPCVocalAttenuationPolicyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)vocalAttenuationPolicy:(id)policy didChangeEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  dispatch_assert_queue_V2(self->_accessQueue);
  blockingPolicies = [(MPCVocalAttenuationPolicyController *)self blockingPolicies];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__MPCVocalAttenuationPolicyController_vocalAttenuationPolicy_didChangeEvaluation___block_invoke;
  v12[3] = &unk_1E8231848;
  v7 = evaluationCopy;
  v13 = v7;
  v8 = [blockingPolicies indexOfObjectPassingTest:v12];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (-[MPCVocalAttenuationPolicyController blockingPolicies](self, "blockingPolicies"), v9 = objc_claimAutoreleasedReturnValue(), [v9 objectAtIndexedSubscript:v8], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    if (![v7 shouldDisableVocalAttenuation])
    {
      v10 = 0;
      goto LABEL_10;
    }

    blockingPolicies2 = [(MPCVocalAttenuationPolicyController *)self blockingPolicies];
    [blockingPolicies2 addObject:v7];
    v10 = 0;
    goto LABEL_8;
  }

  if ([v10 shouldDisableVocalAttenuation] && (objc_msgSend(v7, "shouldDisableVocalAttenuation") & 1) == 0)
  {
    blockingPolicies2 = [(MPCVocalAttenuationPolicyController *)self blockingPolicies];
    [blockingPolicies2 removeObject:v10];
LABEL_8:

    [(MPCVocalAttenuationPolicyController *)self _notifyDelegate];
  }

LABEL_10:
}

BOOL __82__MPCVocalAttenuationPolicyController_vocalAttenuationPolicy_didChangeEvaluation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 policyType];
  v7 = [*(a1 + 32) policyType];
  if (v6 == v7)
  {
    *a4 = 1;
  }

  return v6 == v7;
}

- (void)_setupPoliciesWithParameters:(id)parameters
{
  accessQueue = self->_accessQueue;
  parametersCopy = parameters;
  dispatch_assert_queue_V2(accessQueue);
  policies = self->_policies;
  v7 = [MPCVocalAttenuationThermalPressurePolicy alloc];
  thermalMonitor = [parametersCopy thermalMonitor];
  v9 = [(MPCVocalAttenuationThermalPressurePolicy *)v7 initWithThermalMonitor:thermalMonitor calloutQueue:self->_accessQueue delegate:self];
  [(NSMutableArray *)policies addObject:v9];

  v10 = self->_policies;
  v11 = [MPCVocalAttenuationLowPowerModePolicy alloc];
  lowPowerModeMonitor = [parametersCopy lowPowerModeMonitor];

  v12 = [(MPCVocalAttenuationLowPowerModePolicy *)v11 initWithPowerModeMonitor:lowPowerModeMonitor calloutQueue:self->_accessQueue delegate:self];
  [(NSMutableArray *)v10 addObject:v12];
}

- (void)_notifyDelegate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MPCVocalAttenuationPolicyController__notifyDelegate__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54__MPCVocalAttenuationPolicyController__notifyDelegate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 vocalAttenuationPolicyControllerDidChange:*(a1 + 32)];
}

- (id)blockingEvaluation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1205;
  v10 = __Block_byref_object_dispose__1206;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__MPCVocalAttenuationPolicyController_blockingEvaluation__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __57__MPCVocalAttenuationPolicyController_blockingEvaluation__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) blockingPolicies];
  v2 = [v5 firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)resetPolicies
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MPCVocalAttenuationPolicyController_resetPolicies__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __52__MPCVocalAttenuationPolicyController_resetPolicies__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) policies];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * i);
        if ([v6 canBeReset])
        {
          [v6 reset];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (MPCVocalAttenuationPolicyController)initWithDelegate:(id)delegate parameters:(id)parameters
{
  delegateCopy = delegate;
  parametersCopy = parameters;
  v21.receiver = self;
  v21.super_class = MPCVocalAttenuationPolicyController;
  v8 = [(MPCVocalAttenuationPolicyController *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    policies = v9->_policies;
    v9->_policies = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    blockingPolicies = v9->_blockingPolicies;
    v9->_blockingPolicies = v12;

    v14 = dispatch_queue_create("com.apple.MediaPlaybackCore.VAPoliciesQueue", 0);
    accessQueue = v9->_accessQueue;
    v9->_accessQueue = v14;

    v16 = v9->_accessQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__MPCVocalAttenuationPolicyController_initWithDelegate_parameters___block_invoke;
    v18[3] = &unk_1E82392C0;
    v19 = v9;
    v20 = parametersCopy;
    dispatch_async(v16, v18);
  }

  return v9;
}

@end