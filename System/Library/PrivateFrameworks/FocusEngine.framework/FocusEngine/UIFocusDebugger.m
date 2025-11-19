@interface UIFocusDebugger
+ (id)_ancestryForEnvironment:(id)a3;
+ (id)_statusForFocusSystem:(id)a3 includeDeferralTarget:(BOOL)a4;
+ (id)_verboseStatus;
+ (id)checkFocusabilityForItem:(id)item;
+ (id)focusGroupsForEnvironment:(id)environment;
+ (id)help;
+ (id)preferredFocusEnvironmentsForEnvironment:(id)environment;
+ (id)simulateFocusUpdateRequestFromEnvironment:(id)environment;
+ (id)status;
@end

@implementation UIFocusDebugger

+ (id)help
{
  if ((_UIFocusProcessIsBeingDebugged() & 1) == 0 && dyld_program_sdk_at_least())
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"It looks like you are calling a UIFocusDebugger method outside of lldb. That is not allowed."];
  }

  v2 = [MEMORY[0x277CCAB68] string];
  [v2 appendString:@"\nFocus Debugging Utilities:"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __23__UIFocusDebugger_help__block_invoke;
  v7[3] = &unk_279014C48;
  v8 = v2;
  v3 = v2;
  v4 = MEMORY[0x24C24D980](v7);
  (v4)[2](v4, @"Status", @"po UIFocusDebugger.status()", @"po [UIFocusDebugger status]", @"Outputs information for the currently focused item.");
  (v4)[2](v4, @"Diagnosing Focusability Issues", @"po UIFocusDebugger.checkFocusability(for: <item reference>)", @"po [UIFocusDebugger checkFocusabilityForItem:<item reference>]", @"Outputs a diagnosis of the specified item's focusability, including any known issues that may be preventing focusability.");
  v5 = [_UIFocusDebuggerStringOutput outputWithString:v3];

  return v5;
}

void __23__UIFocusDebugger_help__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v12 = a5;
  v10 = a4;
  v11 = a3;
  [v9 appendFormat:@"\n\n%@:", a2];
  [*(a1 + 32) appendFormat:@"\n\tSwift: %@", v11];

  [*(a1 + 32) appendFormat:@"\n\tObjC:  %@", v10];
  [*(a1 + 32) appendFormat:@"\n\n\tOverview:\n\t%@", v12];
}

+ (id)status
{
  v18 = *MEMORY[0x277D85DE8];
  if ((_UIFocusProcessIsBeingDebugged() & 1) == 0 && dyld_program_sdk_at_least())
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"It looks like you are calling a UIFocusDebugger method outside of lldb. That is not allowed."];
  }

  v3 = [MEMORY[0x277D817A0] rootNode];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[UIFocusSystem _allFocusSystems];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 _hostFocusSystem];

        if (!v10)
        {
          v11 = [a1 _statusForFocusSystem:v9 includeDeferralTarget:0];
          [v3 addMessage:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)_verboseStatus
{
  v16 = *MEMORY[0x277D85DE8];
  if ((_UIFocusProcessIsBeingDebugged() & 1) == 0 && dyld_program_sdk_at_least())
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"It looks like you are calling a UIFocusDebugger method outside of lldb. That is not allowed."];
  }

  v3 = [MEMORY[0x277D817A0] rootNode];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = +[UIFocusSystem _allFocusSystems];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [a1 _statusForFocusSystem:*(*(&v11 + 1) + 8 * i) includeDeferralTarget:1];
        [v3 addMessage:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)_statusForFocusSystem:(id)a3 includeDeferralTarget:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ((_UIFocusProcessIsBeingDebugged() & 1) == 0 && dyld_program_sdk_at_least())
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"It looks like you are calling a UIFocusDebugger method outside of lldb. That is not allowed."];
  }

  v6 = [v5 focusedItem];
  v7 = MEMORY[0x277D817A0];
  v8 = v5;
  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"<%@: %p>", v11, v8];
  }

  else
  {
    v12 = @"(nil)";
  }

  v13 = [v7 messageWithStyle:0 string:v12];

  v14 = MEMORY[0x277D81798];
  v15 = [v8 _isEnabled];
  v16 = @"NO";
  if (v15)
  {
    v16 = @"YES";
  }

  v17 = [v14 messageWithFormat:@"enabled: %@", v16];
  [v13 addMessage:v17];

  v18 = MEMORY[0x277D81798];
  v19 = v6;
  if (v19)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v20 stringWithFormat:@"<%@: %p>", v22, v19];
  }

  else
  {
    v23 = @"(nil)";
  }

  v24 = [v18 messageWithFormat:@"focused item: %@", v23];
  [v13 addMessage:v24];

  if (v4)
  {
    v25 = MEMORY[0x277D81798];
    v26 = [v8 valueForKeyPath:@"_deferredFocusUpdateTarget"];
    if (v26)
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v27 stringWithFormat:@"<%@: %p>", v29, v26];
    }

    else
    {
      v30 = @"(nil)";
    }

    v31 = [v25 messageWithFormat:@"deferral target: %@", v30];
    [v13 addMessage:v31];
  }

  return v13;
}

+ (id)checkFocusabilityForItem:(id)item
{
  v5 = item;
  if (!v5)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"UIFocusDebugger.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v6 = [UIFocusSystem focusSystemForEnvironment:v5];
  v7 = v6;
  if (!v6)
  {
    v21 = @"This item is not part of any focus system, so focusability is not applicable.";
LABEL_16:
    v22 = [_UIFocusDebuggerStringOutput outputWithString:v21];
    goto LABEL_26;
  }

  v8 = [v6 focusedItem];

  if (v8 == v5)
  {
    v21 = @"This item is currently focused.";
    goto LABEL_16;
  }

  v9 = objc_alloc_init(_UIDebugIssueReport);
  v10 = [v5 canBecomeFocused];
  if ((v10 & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (-[_UIDebugIssueReport issues](v9, "issues"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count], v11, objc_msgSend(v5, "_diagnoseFocusabilityForReport:", v9), -[_UIDebugIssueReport issues](v9, "issues"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12 == v14))
    {
      v15 = [_UIDebugIssue issueWithDescription:@"This item returns NO from -canBecomeFocused."];
      [(_UIDebugIssueReport *)v9 addIssue:v15];
    }
  }

  IsEligibleForFocusInteraction = _UIFocusEnvironmentIsEligibleForFocusInteraction(v5);
  if (!IsEligibleForFocusInteraction || (objc_opt_respondsToSelector() & 1) != 0 && [v5 _shouldAlwaysDiagnoseFocusInteractionEligibility])
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(_UIDebugIssueReport *)v9 issues];
      v18 = [v17 count];

      [v5 _diagnoseFocusInteractionEligibilityForReport:v9];
      v19 = [(_UIDebugIssueReport *)v9 issues];
      v20 = v18 != [v19 count];
    }

    else
    {
      v20 = 0;
    }

    if (((IsEligibleForFocusInteraction | v20) & 1) == 0)
    {
      v23 = [_UIDebugIssue issueWithDescription:@"This item is not eligible for focus, but the reason is unknown."];
      [(_UIDebugIssueReport *)v9 addIssue:v23];
LABEL_24:

      goto LABEL_25;
    }
  }

  else
  {
    v20 = 0;
  }

  if (((v20 | v10 ^ 1) & 1) == 0)
  {
    v23 = [v7 _focusMapContainer];
    if (v23)
    {
      v24 = [[_UIFocusMap alloc] initWithFocusSystem:v7 rootContainer:v23 coordinateSpace:0 searchInfo:0 ignoresRootContainerClippingRect:0];
      [(_UIFocusMap *)v24 diagnoseFocusabilityForItem:v5 report:v9];
    }

    goto LABEL_24;
  }

LABEL_25:
  v25 = objc_alloc_init(_UIDebugIssueReportFormatter);
  [(_UIDebugIssueReportFormatter *)v25 setHeader:@"The following issues were found that would prevent this item from being focusable:"];
  [(_UIDebugIssueReportFormatter *)v25 setNoIssuesDescription:@"This item should be focusable.\n\nIf you are still having trouble focusing this item, consider the following:\n – This tool will not detect if this item is denied focus as the result of returning NO from -shouldUpdateFocusInContext:.\n – This tool will not detect if another item or guide is redirecting focus movement away from this item.\n – This tool may not detect if this item has dynamic conditions that affect its focusability."];
  v26 = [(_UIDebugIssueReportFormatter *)v25 stringFromReport:v9];
  v22 = [_UIFocusDebuggerStringOutput outputWithString:v26];

LABEL_26:

  return v22;
}

+ (id)simulateFocusUpdateRequestFromEnvironment:(id)environment
{
  v5 = environment;
  if ((_UIFocusProcessIsBeingDebugged() & 1) == 0 && dyld_program_sdk_at_least())
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"It looks like you are calling a UIFocusDebugger method outside of lldb. That is not allowed."];
  }

  if (!v5)
  {
    v52 = [MEMORY[0x277CCA890] currentHandler];
    [v52 handleFailureInMethod:a2 object:a1 file:@"UIFocusDebugger.m" lineNumber:245 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v6 = [UIFocusSystem focusSystemForEnvironment:v5];
  if (!v6)
  {
    v17 = [_UIFocusDebuggerStringOutput outputWithString:@"This environment is not part of any focus system, and so cannot request a focus update."];
    goto LABEL_30;
  }

  v54 = [[_UIFocusUpdateRequest alloc] initWithFocusSystem:v6 environment:v5];
  v7 = [[UIFocusUpdateContext alloc] _initWithFocusUpdateRequest:v54];
  v8 = objc_alloc_init(_UIDebugLogReport);
  [v7 _setPreferredFocusReport:v8];

  v9 = objc_alloc_init(_UIDebugIssueReport);
  [v7 _setValidationReport:v9];

  v10 = objc_alloc_init(_UIDebugLogReport);
  v11 = [v7 previouslyFocusedItem];
  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"<%@: %p>", v14, v11];

    v16 = [v12 stringWithFormat:@"(%@ is currently focused)", v15];
  }

  else
  {
    v16 = @"(Nothing is currently focused)";
  }

  v18 = v5;
  if (v5)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"<%@: %p>", v21, v18];
  }

  else
  {
    v22 = @"(nil)";
  }

  v55 = v11;

  v53 = v16;
  [(_UIDebugLogReport *)v10 addMessageWithFormat:@"Simulating a fake focus update request from %@... %@", v22, v16];

  [(_UIDebugLogReport *)v10 addLineBreak];
  v23 = objc_alloc_init(_UIDebugIssueReport);
  [v6 _debug_isEnvironmentEligibleForFocusUpdate:v18 debugReport:v23];
  v24 = [(_UIDebugIssueReport *)v23 issues];
  v25 = [v24 count];

  if (v25)
  {
    v26 = objc_alloc_init(_UIDebugIssueReportFormatter);
    [(_UIDebugIssueReportFormatter *)v26 setHeader:@"The following issues were found that would normally prevent this environment's request from being accepted by the focus system (these will be ignored for the purposes of this test):"];
    v27 = [(_UIDebugIssueReportFormatter *)v26 stringFromReport:v23];
    [(_UIDebugLogReport *)v10 addMessage:v27];

    [(_UIDebugLogReport *)v10 addLineBreak];
  }

  v28 = [v7 nextFocusedItem];
  v29 = +[(_UIDebugReportFormatter *)_UIDebugLogReportFormatter];
  v30 = [v7 _preferredFocusReport];
  v31 = [v29 stringFromReport:v30];
  [(_UIDebugLogReport *)v10 addMessage:v31];

  v32 = [v7 _isValidInFocusSystem:v6];
  v33 = [v7 _validationReport];
  v34 = [v33 issues];
  v35 = [v34 count];

  if (v35)
  {
    [(_UIDebugLogReport *)v10 addLineBreak];
    v36 = +[UIFocusUpdateContext _defaultValidationReportFormatter];
    v37 = [v7 _validationReport];
    v38 = [v36 stringFromReport:v37];
    [(_UIDebugLogReport *)v10 addMessage:v38];
  }

  [(_UIDebugLogReport *)v10 resetIndentLevel];
  [(_UIDebugLogReport *)v10 addLineBreak];
  if (!v32)
  {
    if (v28 == v55)
    {
      if (v55)
      {
        v45 = MEMORY[0x277CCACA8];
        v46 = v28;
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v43 = [v45 stringWithFormat:@"<%@: %p>", v48, v46];

        [(_UIDebugLogReport *)v10 addMessageWithFormat:@"Simulated Result: No change, %@ is still focused.", v43];
        goto LABEL_26;
      }

      v44 = @"Simulated Result: No change, nothing is still focused.";
    }

    else
    {
      v44 = @"Simulated Result: Failed to update focus.";
    }

LABEL_28:
    [(_UIDebugLogReport *)v10 addMessage:v44];
    goto LABEL_29;
  }

  if (!v28)
  {
    v44 = @"Simulated Result: Successfully updated focus to nil.";
    goto LABEL_28;
  }

  v39 = MEMORY[0x277CCACA8];
  v40 = v28;
  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  v43 = [v39 stringWithFormat:@"<%@: %p>", v42, v40];

  [(_UIDebugLogReport *)v10 addMessageWithFormat:@"Simulated Result: Successfully updated focus to %@.", v43];
LABEL_26:

LABEL_29:
  v49 = +[(_UIDebugReportFormatter *)_UIDebugLogReportFormatter];
  v50 = [v49 stringFromReport:v10];

  v17 = [_UIFocusDebuggerStringOutput outputWithString:v50];

LABEL_30:

  return v17;
}

+ (id)_ancestryForEnvironment:(id)a3
{
  v5 = a3;
  if ((_UIFocusProcessIsBeingDebugged() & 1) == 0 && dyld_program_sdk_at_least())
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"It looks like you are calling a UIFocusDebugger method outside of lldb. That is not allowed."];
  }

  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"UIFocusDebugger.m" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v6 = objc_alloc_init(_UIDebugLogReport);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__UIFocusDebugger__ancestryForEnvironment___block_invoke;
  v14[3] = &unk_279014C70;
  v15 = v6;
  v16 = v5;
  v7 = v5;
  v8 = v6;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v7, v14);
  v9 = +[(_UIDebugReportFormatter *)_UIDebugLogReportFormatter];
  v10 = [v9 stringFromReport:v8];

  v11 = [_UIFocusDebuggerStringOutput outputWithString:v10];

  return v11;
}

void __43__UIFocusDebugger__ancestryForEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, v10];
  }

  else
  {
    v8 = @"(nil)";
  }

  [v4 addMessage:v8];

  v9 = v10;
  if (*(a1 + 40) == v10)
  {
    [*(a1 + 32) incrementIndentLevel];
    v9 = v10;
  }
}

+ (id)focusGroupsForEnvironment:(id)environment
{
  v3 = environment;
  if ((_UIFocusProcessIsBeingDebugged() & 1) == 0 && dyld_program_sdk_at_least())
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"It looks like you are calling a UIFocusDebugger method outside of lldb. That is not allowed."];
  }

  v4 = [UIFocusSystem focusSystemForEnvironment:v3];
  v5 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:v4];
  v6 = [[_UIFocusMovementInfo alloc] initWithHeading:16 linearHeading:0 isInitial:1 shouldLoadScrollableContainer:0 looping:1 groupFilter:2 inputType:5];
  [(_UIFocusMovementRequest *)v5 setMovementInfo:v6];

  v7 = [v4 _movementPerformer];
  v8 = [v7 contextForFocusMovement:v5];

  v9 = objc_opt_new();
  v10 = [MEMORY[0x277D81798] messageWithStyle:1 string:@"Focus Group Hierarchy:"];
  [v9 addMessage:v10];

  v11 = [v8 _focusMapSearchInfo];
  v12 = [v11 focusGroupMap];
  v13 = [v12 focusGroups];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__UIFocusDebugger_focusGroupsForEnvironment___block_invoke;
  v19[3] = &unk_279014C98;
  v20 = v9;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__UIFocusDebugger_focusGroupsForEnvironment___block_invoke_2;
  v17[3] = &unk_279014CC0;
  v18 = v20;
  v14 = v20;
  __recursePreOrderDepthFirstTraversal(v13, sel_childGroups, 0, v19, v17);
  v15 = [v14 rootNode];

  return v15;
}

uint64_t __45__UIFocusDebugger_focusGroupsForEnvironment___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3 || ([v5 parentGroup], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v7 = MEMORY[0x277D817A0];
    v8 = [v6 description];
    v9 = [v7 messageWithString:v8];

    [*(a1 + 32) pushNode:v9];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id *__45__UIFocusDebugger_focusGroupsForEnvironment___block_invoke_2(id *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    return [result[4] popNode];
  }

  return result;
}

+ (id)preferredFocusEnvironmentsForEnvironment:(id)environment
{
  v3 = environment;
  if ((_UIFocusProcessIsBeingDebugged() & 1) == 0 && dyld_program_sdk_at_least())
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"It looks like you are calling a UIFocusDebugger method outside of lldb. That is not allowed."];
  }

  v4 = [MEMORY[0x277D817A0] rootNode];
  v5 = [UIFocusSystem focusSystemForEnvironment:v3];
  if (v5)
  {
    v6 = [MEMORY[0x277D81798] messageWithStyle:1 string:@"Preferred focus environments:"];
    [v4 addMessage:v6];

    v7 = objc_opt_new();
    v8 = [[_UIFocusEnvironmentPreferenceEnumerator alloc] initWithEnumerationMode:1];
    [(_UIFocusEnvironmentPreferenceEnumerator *)v8 setAllowsInferringPreferences:0];
    [(_UIFocusEnvironmentPreferenceEnumerator *)v8 setDebugLog:v4];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__UIFocusDebugger_preferredFocusEnvironmentsForEnvironment___block_invoke;
    v11[3] = &unk_279014CE8;
    v12 = v7;
    v13 = v5;
    v9 = v7;
    [(_UIFocusEnvironmentPreferenceEnumerator *)v8 enumeratePreferencesForEnvironment:v3 usingBlock:v11];
  }

  else
  {
    v8 = [MEMORY[0x277D81798] messageWithStyle:4 string:@"The environment is not connected to a focus system."];
    [v4 addMessage:v8];
  }

  return v4;
}

void __60__UIFocusDebugger_preferredFocusEnvironmentsForEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  if ([v13 isPreferredByItself])
  {
    *a3 = 1;
  }

  else
  {
    v5 = [v13 environment];
    v6 = [*(a1 + 32) containsObject:v5];
    v7 = _UIFocusItemSafeCast(v5);
    v8 = v7;
    if (v6)
    {
      v9 = @"Environment seen previously. Skipping.";
      v10 = @"!";
    }

    else
    {
      v10 = &stru_285EB2008;
      if (v7)
      {
        if (_UIFocusItemIsFocusedOrFocusableInFocusSystem(v7, *(a1 + 40)))
        {
          v10 = @"*";
          v9 = @"Environment is focusable.";
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    if ([(__CFString *)v9 length])
    {
      v11 = [MEMORY[0x277D81798] messageWithPrefix:v10 string:v9];
      v12 = [v13 debugStack];
      [v12 addMessage:v11];
    }

    [*(a1 + 32) addObject:v5];
    *a3 = v6;
  }
}

@end