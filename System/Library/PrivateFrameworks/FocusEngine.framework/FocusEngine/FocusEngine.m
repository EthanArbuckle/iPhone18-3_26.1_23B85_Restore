id _UITreeFirstCommonAncestor(void *a1, void *a2, const char *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_18;
  }

  if (v5 == v6)
  {
    v8 = v5;
    goto LABEL_18;
  }

  v9 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:514 capacity:20];
  v10 = 1;
  v11 = 1;
  v12 = v7;
  v13 = v5;
  while (!v11)
  {
    v13 = 0;
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_8:
    v12 = 0;
LABEL_12:
    v11 = v13 != 0;
    v10 = v12 != 0;
    if (!(v13 | v12))
    {
      v8 = 0;
      goto LABEL_17;
    }
  }

  if ([v9 containsObject:v13])
  {
    goto LABEL_16;
  }

  [v9 addObject:v13];
  v13 = [v13 a3];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (([v9 containsObject:v12] & 1) == 0)
  {
    [v9 addObject:v12];
    v12 = [v12 a3];
    goto LABEL_12;
  }

  v13 = v12;
LABEL_16:
  v8 = v13;
LABEL_17:

LABEL_18:

  return v8;
}

uint64_t __recursePreOrderDepthFirstTraversal(void *a1, const char *a2, uint64_t a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    Traversal = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v8;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
        if (v9 && !v9[2](v9, *(*(&v24 + 1) + 8 * v14), a3, &Traversal))
        {
          v17 = 0;
        }

        else
        {
          if ((Traversal & 1) == 0)
          {
            v16 = [v15 a2];
            Traversal = __recursePreOrderDepthFirstTraversal(v16, a2, a3 + 1, v9, v10);
          }

          v17 = 1;
        }

        v18 = Traversal;
        if (v10 && (Traversal & 1) == 0)
        {
          v10[2](v10, v15, a3, v17, &Traversal);
          v18 = Traversal;
        }

        if (v18)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v19 = Traversal;
    v8 = v21;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

id _UIFocusItemSafeCast(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_285EBE5B8])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _UIFocusEnvironmentParentEnvironment(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 parentFocusEnvironment];
  v3 = [v2 allowsWeakReference];

  if (v3)
  {
    v4 = [v1 parentFocusEnvironment];
    v5 = v4;
    if (v4)
    {
      _UIHostedFocusSystemsForHostEnvironment(v4);
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = v17 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            if ([v11 containsChildOfHostEnvironment:{v1, v14}])
            {
              v12 = v11;

              v5 = v12;
              goto LABEL_14;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _UIFocusEnvironmentRootAncestorEnvironment(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id<UIFocusEnvironment>  _Nonnull _UIFocusEnvironmentRootAncestorEnvironment(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v7 handleFailureInFunction:v8 file:@"UIFocusEnvironment.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v2 = v1;
  v3 = _UIFocusEnvironmentParentEnvironment(v2);

  v4 = v2;
  if (v3)
  {
    v5 = v2;
    do
    {
      v4 = v3;

      v3 = _UIFocusEnvironmentParentEnvironment(v4);

      v5 = v4;
    }

    while (v3);
  }

  return v4;
}

uint64_t _UIFocusEnvironmentIsAncestorOfEnvironment(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___UIFocusEnvironmentIsAncestorOfEnvironment_block_invoke;
    v8[3] = &unk_279014870;
    v9 = v3;
    v10 = &v11;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(v5, v8);
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  return v6 & 1;
}

void sub_24B8878C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIFocusEnvironmentEnumerateAncestorEnvironments(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v11 = 0;
    v6 = [v3 allowsWeakReference] ? v3 : 0;
    if (v6)
    {
      v7 = v3;
      while (1)
      {
        (v5)[2](v5, v7, &v11);
        v8 = _UIFocusEnvironmentParentEnvironment(v7);
        v9 = [v8 allowsWeakReference];

        if (!v9)
        {
          break;
        }

        v10 = _UIFocusEnvironmentParentEnvironment(v7);

        if (v10)
        {
          v7 = v10;
          if ((v11 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v10 = v7;
LABEL_13:
    }
  }
}

BOOL _UIFocusEnvironmentsHaveCommonHierarchy(void *a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v4 = a2;
    v5 = a1;
    v6 = _UITreeFirstCommonAncestor(v5, v4, sel_parentFocusEnvironment);

    v2 = v6 == v5 || v6 == v4;
  }

  return v2;
}

uint64_t _UIFocusEnvironmentShouldUpdateFocus(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _UIFocusEnvironmentShouldUpdateFocus(__strong id<UIFocusEnvironment> _Nonnull, UIFocusUpdateContext *__strong _Nonnull)"}];
    [v8 handleFailureInFunction:v9 file:@"UIFocusEnvironment.m" lineNumber:199 description:@"Attempted to validate a focus update with a nil context."];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 _shouldUpdateFocusInContext:v4];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v6 = 1;
      goto LABEL_9;
    }

    v5 = [v3 shouldUpdateFocusInContext:v4];
  }

  v6 = v5;
LABEL_9:

  return v6;
}

uint64_t _UIFocusEnvironmentInheritedFocusMovementStyle(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_UIFocusMovementStyle _UIFocusEnvironmentInheritedFocusMovementStyle(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"UIFocusEnvironment.m" lineNumber:214 description:{@"Cannot determine preferred focus movement style for nil focus environment.", 0}];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___UIFocusEnvironmentInheritedFocusMovementStyle_block_invoke;
  v6[3] = &unk_279014898;
  v6[4] = &v7;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v1, v6);
  v2 = v8[3];
  if (!v2)
  {
    v2 = 1;
    v8[3] = 1;
  }

  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_24B887CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UIFocusEnvironmentIsEligibleForFocusInteraction(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _UIFocusEnvironmentIsEligibleForFocusInteraction(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"UIFocusEnvironment.m" lineNumber:239 description:@"Cannot determine the focus interaction eligibility for a nil focus environment."];
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 _isEligibleForFocusInteraction];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t _UIFocusEnvironmentIsEligibleForFocusOcclusion(void *a1, _BYTE *a2)
{
  v3 = a1;
  if (!v3)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _UIFocusEnvironmentIsEligibleForFocusOcclusion(__strong id<UIFocusEnvironment> _Nonnull, BOOL * _Nullable)"}];
    [v7 handleFailureInFunction:v8 file:@"UIFocusEnvironment.m" lineNumber:251 description:@"Cannot determine the focus occlusion eligibility for a nil focus environment."];
  }

  IsEligibleForFocusInteraction = _UIFocusEnvironmentIsEligibleForFocusInteraction(v3);
  if (a2)
  {
    *a2 = IsEligibleForFocusInteraction;
  }

  if (IsEligibleForFocusInteraction)
  {
    v5 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = [v3 _isEligibleForFocusOcclusion];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _UIFocusEnvironmentPreferredFocusMapContainer(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id<_UIFocusRegionContainer>  _Nullable _UIFocusEnvironmentPreferredFocusMapContainer(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"UIFocusEnvironment.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___UIFocusEnvironmentPreferredFocusMapContainer_block_invoke;
  v6[3] = &unk_279014898;
  v6[4] = &v7;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v1, v6);
  v2 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_24B888050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double _UIFocusEnvironmentContainerFrameInCoordinateSpace(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _UIFocusItemSafeCast(v3);
  v12.origin.x = _UIFocusItemFrameInCoordinateSpace(v5, v4);
  x = v12.origin.x;
  if (CGRectIsNull(v12))
  {
    v7 = [v3 focusItemContainer];
    v8 = [v7 coordinateSpace];
    v9 = v8;
    if (v7 && v8)
    {
      [v8 bounds];
      [v4 convertRect:v9 fromCoordinateSpace:?];
      x = v10;
    }
  }

  return x;
}

uint64_t _UIFocusEnvironmentRotaryFocusMovementAxis(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [v1 _rotaryFocusMovementAxis];
    }

    else
    {
      v3 = v1;
      v4 = [v3 focusItemContainer];
      if (_UIFocusItemContainerIsScrollableContainer(v4) && _UIFocusEnvironmentPrefersFocusContainment(v3))
      {
        v5 = _UIFocusItemScrollableContainerPrimaryAxis(v4);
        if (v5 == 2)
        {
          v6 = 2;
        }

        else
        {
          v6 = -1;
        }

        if (v5 == 1)
        {
          v2 = 1;
        }

        else
        {
          v2 = v6;
        }
      }

      else
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

uint64_t _UIFocusEnvironmentPrefersFocusContainment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    IsScrollableContainer = [v1 _prefersFocusContainment];
  }

  else
  {
    v3 = [v1 focusItemContainer];

    IsScrollableContainer = _UIFocusItemContainerIsScrollableContainer(v3);
    v1 = v3;
  }

  return IsScrollableContainer;
}

uint64_t _UIFocusEnvironmentResolvedRotaryFocusMovementAxis(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = -1;
  if (!v3)
  {
    goto LABEL_11;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -1;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = ___UIFocusEnvironmentResolvedRotaryFocusMovementAxis_block_invoke;
  v19[3] = &unk_2790148C0;
  v19[4] = &v20;
  v19[5] = &v24;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v3, v19);
  if (v21[3] == -1)
  {
    if (_UIFocusInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIFocusInternalPreferencesRevisionOnce, &__block_literal_global_6);
    }

    v6 = _UIFocusInternalPreferencesRevisionVar;
    if (_UIFocusInternalPreferencesRevisionVar >= 1)
    {
      v8 = _UIFocusInternalPreference_FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis;
      if (_UIFocusInternalPreferencesRevisionVar != _UIFocusInternalPreference_FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis)
      {
        while (v6 >= v8)
        {
          _UIFocusInternalPreferenceSync(v6, &_UIFocusInternalPreference_FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis, @"FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis", _UIFocusInternalPreferenceUpdateBool);
          v8 = _UIFocusInternalPreference_FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis;
          if (v6 == _UIFocusInternalPreference_FocusEnvironmentUseAncestorScrollableSizeForFallbackRotaryAxis)
          {
            goto LABEL_6;
          }
        }

        if (byte_27F06272C)
        {
          v9 = _UIFocusNearestAncestorEnvironmentScrollableContainer(v4, 1);
          v10 = v9;
          if (v9)
          {
            v11 = [v9 scrollableContainer];
            [v11 visibleSize];
            v13 = v12;
            v15 = v14;

            if (v13 > v15)
            {
              v16 = 1;
LABEL_22:
              v21[3] = v16;
              v17 = [v10 owningEnvironment];
              v18 = v25[5];
              v25[5] = v17;

              goto LABEL_23;
            }

            if (v15 > v13)
            {
              v16 = 2;
              goto LABEL_22;
            }
          }

LABEL_23:
        }
      }
    }
  }

LABEL_6:
  v5 = v21[3];
  if (v5 == -1)
  {
    v5 = 0;
    v21[3] = 0;
  }

  if (a2)
  {
    *a2 = v25[5];
    v5 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

LABEL_11:
  return v5;
}

void sub_24B888604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id _UIFocusEnvironmentPreferredFocusEnvironments(void *a1)
{
  v1 = a1;
  v2 = objc_opt_respondsToSelector();
  v3 = MEMORY[0x277CBEBF8];
  if (v2)
  {
    v4 = [v1 preferredFocusEnvironments];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v3 = v6;
  }

  return v3;
}

id _UIFocusEnvironmentEffectivePreferredFocusEnvironments(void *a1, _BYTE *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<id<UIFocusEnvironment>> * _Nonnull _UIFocusEnvironmentEffectivePreferredFocusEnvironments(__strong id<UIFocusEnvironment> _Nonnull, BOOL * _Nullable)"}];
    [v12 handleFailureInFunction:v13 file:@"UIFocusEnvironment.m" lineNumber:485 description:@"Cannot determine effective preferred focus environments for a nil environment."];
  }

  v4 = _UIFocusEnvironmentPreferredFocusEnvironments(v3);
  v5 = [v4 count];
  v6 = dyld_program_sdk_at_least();
  if (!v5)
  {
    if (v6)
    {
      v15[0] = v3;
      v8 = MEMORY[0x277CBEA60];
      v9 = v15;
    }

    else
    {
      v14 = v3;
      v8 = MEMORY[0x277CBEA60];
      v9 = &v14;
    }

    v7 = [v8 arrayWithObjects:v9 count:1];
    goto LABEL_11;
  }

  if (v6 && [v4 indexOfObjectIdenticalTo:v3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 arrayByAddingObject:v3];
LABEL_11:
    v10 = v7;

    v4 = v10;
  }

  if (a2)
  {
    *a2 = 0;
  }

  return v4;
}

uint64_t _UIFocusEnvironmentAllowsFocusToLeaveViaHeading(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _allowsFocusToLeaveViaHeading:a2];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void sub_24B888FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _UIFocusRegionSearchContextAddChildItemsInEnvironmentContainer(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v30 = v7;
  v10 = v8;
  v11 = [v10 focusItemContainer];
  if (v11)
  {
    v12 = [v30 searchArea];
    v13 = [v12 coordinateSpace];
    v14 = _UIFocusEnvironmentContainerFrameInCoordinateSpace(v10, v13);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [v30 searchArea];
    LODWORD(v13) = [v21 intersectsRect:{v14, v16, v18, v20}];

    if (v13)
    {
      v22 = _UIFocusItemSafeCast(v10);
      v23 = [v30 searchInfo];
      v24 = [v23 treatFocusableItemAsLeaf];

      if (v24)
      {
        if (_UITVFocusItemAllowsFocusInChildrenWhenFocused(v22))
        {
          IsFocused = _UIFocusItemIsFocused(v22);
          v26 = 1;
          if (!v22 || IsFocused)
          {
            goto LABEL_12;
          }

          goto LABEL_10;
        }

        if (v22)
        {
LABEL_10:
          v27 = [v30 focusSystem];
          v28 = [v30 searchInfo];
          v26 = _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(v22, v27, v28) ^ 1;

LABEL_12:
          goto LABEL_13;
        }
      }

      v26 = 1;
      goto LABEL_12;
    }
  }

  v26 = 0;
LABEL_13:

  if (v9 && v26)
  {
    v29 = [_UIFocusEnvironmentContainerTuple tupleWithOwningEnvironment:v10 itemContainer:v9];
    _UIFocusItemContainerAddChildItemsInContextWithOptions(v29, v30, a4 & 0xFFFFFF);
  }
}

void _UIFocusRegionSearchContextSearchForFocusRegionsInEnvironment(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = _UIFocusItemSafeCast(v6);
  v8 = [v6 focusItemContainer];
  v9 = _UITVFocusItemAddsChildFocusItemsBeforeSelf(v7);
  v10 = [v5 searchArea];
  v11 = [v5 coordinateSpace];
  if (v9)
  {
    _UIFocusRegionSearchContextAddChildItemsInEnvironmentContainer(v5, v6, v8, a3 & 0xFFFFFF);
  }

  v36 = a3;
  if (v7)
  {
    if ((a3 & 1) != 0 && (_UITVFocusItemAddsChildFocusItemsButNotSelf(v7) & 1) == 0)
    {
      v12 = [v5 searchInfo];
      v13 = [v12 shouldIncludeFocusItem:v7];

      if (v13)
      {
        v14 = _UIFocusItemFrameInCoordinateSpace(v7, v11);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        if ([v10 intersectsRect:?])
        {
          v21 = [_UIFocusItemRegion alloc];
          v22 = [v5 focusSystem];
          v23 = [(_UIFocusItemRegion *)v21 initWithFrame:v11 coordinateSpace:v7 item:v22 focusSystem:v14, v16, v18, v20];

          [v5 addRegion:v23];
        }
      }
    }

    v24 = v5;
    v25 = v7;
    v26 = _UIFocusItemFocusSpeedBumpEdges(v25);
    if (v26)
    {
      v27 = v26;
      [v24 coordinateSpace];
      v35 = v11;
      v29 = v28 = v10;
      v39.origin.x = _UIFocusItemFrameInCoordinateSpace(v25, v29);
      v40 = CGRectInset(v39, -1.0, -1.0);
      v30 = [[_UIFocusSpeedBumpRegion alloc] initWithFrame:v29 coordinateSpace:v27 speedBumpEdges:v40.origin.x, v40.origin.y, v40.size.width, v40.size.height];
      [v24 addRegion:v30];

      v10 = v28;
      v11 = v35;
    }
  }

  else
  {
    v31 = v5;
  }

  if ((v9 & 1) == 0)
  {
    _UIFocusRegionSearchContextAddChildItemsInEnvironmentContainer(v5, v6, v8, v36 & 0xFFFFFF);
  }

  v32 = v5;
  v33 = v7;
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v34 = [v33 _focusItemGuides];
    [v32 addRegionsInContainers:v34];
  }

  v37 = v32;
  if ((_UIFocusItemContainerSupportsInvalidatingFocusCache(v8) & 1) == 0)
  {
    [v37 markContainerAsProvidingDynamicContent];
  }
}

uint64_t _UIEffectiveFocusRegionBoundariesForHeading(uint64_t result, char a2)
{
  if (result)
  {
    if (result == 15)
    {
      return 111;
    }

    else
    {
      v2 = result & 0x10;
      if ((result & 0x24) != 0)
      {
        v3 = result & 0x10 | 0x24;
      }

      else
      {
        v3 = result & 0x10;
      }

      if ((result & 0x41) != 0)
      {
        v3 |= 0x41uLL;
      }

      if (a2)
      {
        v2 = v3;
      }

      if ((result & 0x21) != 0)
      {
        v4 = v2 | 0x21;
      }

      else
      {
        v4 = v2;
      }

      if ((result & 0x44) != 0)
      {
        v4 |= 0x44uLL;
      }

      if ((a2 & 2) != 0)
      {
        v2 = v4;
      }

      if ((result & 0x28) != 0)
      {
        v5 = v2 | 0x28;
      }

      else
      {
        v5 = v2;
      }

      if ((result & 0x42) != 0)
      {
        v5 |= 0x42uLL;
      }

      if ((a2 & 0x24) != 0)
      {
        v2 = v5;
      }

      if ((result & 0x22) != 0)
      {
        v6 = v2 | 0x22;
      }

      else
      {
        v6 = v2;
      }

      if ((result & 0x48) != 0)
      {
        v6 |= 0x48uLL;
      }

      if ((a2 & 0x18) != 0)
      {
        return v6;
      }

      else
      {
        return v2;
      }
    }
  }

  return result;
}

void sub_24B88C514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24B88CDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B88E5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _enumeratePreferredFocusEnvironments(void *a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_35:
    v25 = [MEMORY[0x277CCA890] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _enumeratePreferredFocusEnvironments(_UIFocusEnvironmentPreferenceEnumerator *__strong, _UIFocusEnvironmentPreferenceEnumerationContext *__strong, void (^__strong)(__strong id<_UIFocusEnvironmentPreferenceEnumerationContext>, _UIFocusEnvironmentPreferenceEnumerationResult *), _UIFocusEnvironmentPreferenceEnumerationResult *)"}];
    [v25 handleFailureInFunction:v26 file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:475 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (a4)
    {
      goto LABEL_4;
    }

LABEL_36:
    v27 = [MEMORY[0x277CCA890] currentHandler];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _enumeratePreferredFocusEnvironments(_UIFocusEnvironmentPreferenceEnumerator *__strong, _UIFocusEnvironmentPreferenceEnumerationContext *__strong, void (^__strong)(__strong id<_UIFocusEnvironmentPreferenceEnumerationContext>, _UIFocusEnvironmentPreferenceEnumerationResult *), _UIFocusEnvironmentPreferenceEnumerationResult *)"}];
    [v27 handleFailureInFunction:v28 file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:476 description:{@"Invalid parameter not satisfying: %@", @"result"}];

    goto LABEL_4;
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _enumeratePreferredFocusEnvironments(_UIFocusEnvironmentPreferenceEnumerator *__strong, _UIFocusEnvironmentPreferenceEnumerationContext *__strong, void (^__strong)(__strong id<_UIFocusEnvironmentPreferenceEnumerationContext>, _UIFocusEnvironmentPreferenceEnumerationResult *), _UIFocusEnvironmentPreferenceEnumerationResult *)"}];
  [v23 handleFailureInFunction:v24 file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"enumerator"}];

  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_3:
  if (!a4)
  {
    goto LABEL_36;
  }

LABEL_4:
  v34 = 0;
  v10 = [v8 isInPreferredSubtree];
  if (v9 && (v10 & 1) != 0)
  {
    v9[2](v9, v8, &v34);
    if (v34 == 3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = [v8 debugStack];
    v12 = v11;
    if (v9 && v11)
    {
      v13 = [v8 isPreferredByItself];

      if (v13)
      {
        goto LABEL_13;
      }

      v12 = [v8 debugStack];
      v14 = [MEMORY[0x277D81798] messageWithString:@"Not visiting node. Outside of preferred subtree."];
      [v12 addMessage:v14];
    }
  }

LABEL_13:
  if ([v8 prefersNothingFocused])
  {
LABEL_14:
    *a4 = 3;
    goto LABEL_15;
  }

  if (v34 != 1)
  {
    if (v34 == 2)
    {
      *a4 = 2;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = [v8 preferredEnvironments];
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v29 = 0;
          [v8 pushEnvironment:v20];
          _enumeratePreferredFocusEnvironments(v7, v8, v9, &v29);
          [v8 popEnvironment];
          if ((v29 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            *a4 = v29;
            goto LABEL_29;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_29:

    if ([v8 isInPreferredSubtree] && *a4 != 3)
    {
      v21 = [v7 didVisitAllPreferencesForEnvironmentHandler];
      v22 = v21;
      if (v21)
      {
        (*(v21 + 16))(v21, v8, a4);
      }
    }
  }

LABEL_15:
}

void sub_24B8901B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_24B890968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_24B890C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_24B891048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _UIFocusMapDistanceToRegionBoundary(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, void *a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v19 = a3;
  [a6 snapshotFrameForRegion:a1];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [v19 heading];
  v29 = v28;
  if (a4)
  {
    if (a4 != 1)
    {
      v36 = 1.79769313e308;
      goto LABEL_27;
    }

    v62.origin.x = v21;
    v62.origin.y = v23;
    v62.size.width = v25;
    v62.size.height = v27;
    MidX = CGRectGetMidX(v62);
    v63.origin.x = v21;
    v63.origin.y = v23;
    v63.size.width = v25;
    v63.size.height = v27;
    MidY = CGRectGetMidY(v63);
    if ((a2 & 0x10) != 0)
    {
      goto LABEL_10;
    }

    if ((a2 & 0x20) != 0 && (v29 & 1) != 0 || (a2 & 0x40) != 0 && (v29 & 2) != 0)
    {
      v31 = 2;
    }

    else
    {
      v55 = (a2 & 0x20) == 0;
      if ((v29 & 2) == 0)
      {
        v55 = 1;
      }

      v31 = 1;
      if ((((a2 & 0x40) != 0) & v29) == 0 && v55)
      {
        v56 = v29 & 0x218;
        v57 = (a2 & 0x40) == 0 || v56 == 0;
        v58 = v57;
        v31 = 8;
        if ((((v29 & 0x124) != 0) & (a2 >> 5)) == 0 && v58)
        {
          v59 = (a2 & 0x20) == 0 || v56 == 0;
          v60 = v59;
          v31 = 4;
          if ((((v29 & 0x124) != 0) & (a2 >> 6)) == 0 && v60)
          {
            goto LABEL_10;
          }
        }
      }
    }

    MidX = _UIRectDeparturePointAlongFocusHeading(v31, v21, v23, v25, v27);
    MidY = v32;
LABEL_10:
    v33 = MidY;
    v64.origin.x = a7;
    v64.origin.y = a8;
    v64.size.width = a9;
    v64.size.height = a10;
    v34 = CGRectGetMidX(v64);
    v65.origin.x = a7;
    v65.origin.y = a8;
    v65.size.width = a9;
    v65.size.height = a10;
    v35 = CGRectGetMidY(v65);
    v36 = hypot(MidX - v34, v33 - v35);
    goto LABEL_27;
  }

  v37 = _UIRectDeparturePointAlongFocusHeading(v28, a7, a8, a9, a10);
  v39 = v38;
  v40 = (v29 & 3) != 0;
  if ((v29 & 0xC) == 0)
  {
    v40 = 0;
  }

  v41 = a5 == 2 && v40;
  if ((a2 & 0x10) != 0 || v41)
  {
    v66.origin.x = v21;
    v66.origin.y = v23;
    v66.size.width = v25;
    v66.size.height = v27;
    v47 = CGRectGetMidX(v66);
    v67.origin.x = v21;
    v67.origin.y = v23;
    v67.size.width = v25;
    v67.size.height = v27;
    v23 = CGRectGetMidY(v67);
    v21 = v47;
  }

  else
  {
    if ((a2 & 0x20) != 0)
    {
      v46 = (v29 >> 1) & 0x114 | (2 * v29) & 0x228 | (__rbit32(v29) >> 30);
      v42 = v21;
      v43 = v23;
      v44 = v25;
      v45 = v27;
    }

    else
    {
      if ((a2 & 0x40) == 0)
      {
        goto LABEL_25;
      }

      v42 = v21;
      v43 = v23;
      v44 = v25;
      v45 = v27;
      LOBYTE(v46) = v29;
    }

    v21 = _UIRectDeparturePointAlongFocusHeading(v46, v42, v43, v44, v45);
    v23 = v48;
  }

LABEL_25:
  _UIPointAxisAlignedDistanceAlongFocusHeading(v29, v37, v39, v21, v23);
  v36 = v49;
  if (v41)
  {
    v50 = atan2(v23 - v39, v21 - v37);
    [v19 _velocity];
    v52 = v51;
    [v19 _velocity];
    v36 = v36 * (vabdd_f64(atan2(v52, v53), v50) / 0.785398163 + 1.0);
  }

LABEL_27:

  return round(v36);
}

double _UIFocusShiftAndExpandRectAlongFocusMovement(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v10 = [v9 _isLinearMovement];
  v11 = [v9 heading];

  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  v36 = CGRectIntegral(v35);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  v16 = CGRectGetWidth(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v17 = -CGRectGetHeight(v37);
  v18 = 0.0;
  if (v11)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0.0;
  }

  if ((v11 & 8) != 0)
  {
    v20 = -v16;
  }

  else
  {
    v20 = 0.0;
  }

  if ((v11 & 2) == 0)
  {
    v17 = 0.0;
  }

  if ((v11 & 4) != 0)
  {
    v18 = -v16;
  }

  v21 = x + v18;
  v22 = width - (v20 + v18);
  v23 = y + v19;
  v24 = height - (v19 + v17);
  if (!v10)
  {
    v25 = _UIVectorForFocusHeading(v11);
    v33 = v26;
    rect = v21;
    v27 = v25;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v28 = v27 * CGRectGetWidth(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v29 = v33 * CGRectGetHeight(v39);
    v40.origin.x = rect;
    v40.origin.y = v23;
    v40.size.width = v22;
    v40.size.height = v24;
    v41 = CGRectOffset(v40, v28, v29);
    v21 = v41.origin.x;
    if (_UIFocusRectSmartIntersectsRect(v41.origin.x, v41.origin.y, v41.size.width, v41.size.height, x, y, width, height))
    {
      v31 = [MEMORY[0x277CCA890] currentHandler];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect _UIFocusShiftAndExpandRectAlongHeadingForNonLinearMovement(CGRect, UIFocusHeading)"}];
      [v31 handleFailureInFunction:v32 file:@"_UIFocusMovementPerformer.m" lineNumber:162 description:@"Shifting focus search rect in search direction returned an overlapping rect -- this is a UIKit bug."];
    }
  }

  return v21;
}

uint64_t _UIFocusRectSmartIntersectsRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (CGRectIsNull(*&a1))
  {
    return 0;
  }

  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  if (CGRectIsNull(v33))
  {
    return 0;
  }

  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  v35 = CGRectStandardize(v34);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = a7;
  v35.size.height = a8;
  v36 = CGRectStandardize(v35);
  v21 = v36.origin.x;
  v22 = v36.origin.y;
  v23 = v36.size.width;
  v24 = v36.size.height;
  v31 = y;
  v32 = x;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v25 = CGRectGetMinX(v36) + 0.0001;
  v37.origin.x = v21;
  v37.origin.y = v22;
  v37.size.width = v23;
  v37.size.height = v24;
  if (v25 <= CGRectGetMaxX(v37))
  {
    v38.origin.y = v31;
    v38.origin.x = x;
    v38.size.width = width;
    v38.size.height = height;
    v27 = CGRectGetMaxX(v38) + -0.0001;
    v39.origin.x = v21;
    v39.origin.y = v22;
    v39.size.width = v23;
    v39.size.height = v24;
    v26 = v27 >= CGRectGetMinX(v39);
  }

  else
  {
    v26 = 0;
  }

  v40.origin.x = x;
  v40.origin.y = v31;
  v40.size.width = width;
  v40.size.height = height;
  v28 = CGRectGetMinY(v40) + 0.0001;
  v41.origin.x = v21;
  v41.origin.y = v22;
  v41.size.width = v23;
  v41.size.height = v24;
  if (v28 <= CGRectGetMaxY(v41))
  {
    v42.origin.x = v32;
    v42.origin.y = v31;
    v42.size.width = width;
    v42.size.height = height;
    v30 = CGRectGetMaxY(v42) + -0.0001;
    v43.origin.x = v21;
    v43.origin.y = v22;
    v43.size.width = v23;
    v43.size.height = v24;
    v29 = v30 >= CGRectGetMinY(v43);
  }

  else
  {
    v29 = 0;
  }

  return v26 & v29;
}

void sub_24B898994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B899F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24B89C8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

uint64_t _OpaqueIsEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:{a2, v2, v3}];
  }
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24B8A1090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _UIFocusItemIsFocused(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _UIFocusItemIsFocused(__strong id<UIFocusItem> _Nonnull)"];
    [v6 handleFailureInFunction:v7 file:@"UIFocusItem.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v2 = [UIFocusSystem focusSystemForEnvironment:v1];
  v3 = [v2 focusedItem];
  v4 = v3 == v1;

  return v4;
}

uint64_t _UIFocusItemIsFocusedOrFocusable(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _UIFocusItemIsFocusedOrFocusable(__strong id<UIFocusItem> _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"UIFocusItem.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v2 = [UIFocusSystem focusSystemForEnvironment:v1];
  if (v2)
  {
    IsFocusedOrFocusableInFocusSystem = __UIFocusItemIsFocusedOrFocusableInFocusSystem(v1, v2, 0, 1);
  }

  else
  {
    IsFocusedOrFocusableInFocusSystem = 0;
  }

  return IsFocusedOrFocusableInFocusSystem;
}

uint64_t __UIFocusItemIsFocusedOrFocusableInFocusSystem(void *a1, void *a2, int a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL __UIFocusItemIsFocusedOrFocusableInFocusSystem(__strong id<UIFocusItem>, UIFocusSystem *__strong, BOOL, BOOL)"}];
    [v16 handleFailureInFunction:v17 file:@"UIFocusItem.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL __UIFocusItemIsFocusedOrFocusableInFocusSystem(__strong id<UIFocusItem>, UIFocusSystem *__strong, BOOL, BOOL)"}];
  [v18 handleFailureInFunction:v19 file:@"UIFocusItem.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

LABEL_3:
  if (_UIFocusItemCanBecomeFocused(v7, v9))
  {
    IsEligibleForFocusInteraction = _UIFocusEnvironmentIsEligibleForFocusInteraction(v7);
  }

  else
  {
    IsEligibleForFocusInteraction = 0;
  }

  v11 = 0;
  if ((IsEligibleForFocusInteraction & 1) == 0 && a4)
  {
    v12 = [v9 focusedItem];
    v11 = v12 == v7;
  }

  v13 = IsEligibleForFocusInteraction | v11;
  if (v13 == 1 && a3)
  {
    v14 = [UIFocusSystem focusSystemForEnvironment:v7];
    v13 = v14 == v9;
  }

  return v13;
}

uint64_t _UIFocusItemIsFocusedOrFocusableInFocusSystem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusedOrFocusableInFocusSystem(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull)"}];
    [v8 handleFailureInFunction:v9 file:@"UIFocusItem.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusedOrFocusableInFocusSystem(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull)"}];
    [v10 handleFailureInFunction:v11 file:@"UIFocusItem.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    goto LABEL_3;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  IsFocusedOrFocusableInFocusSystem = __UIFocusItemIsFocusedOrFocusableInFocusSystem(v3, v5, 1, 1);

  return IsFocusedOrFocusableInFocusSystem;
}

uint64_t _UIFocusItemIsFocusableInFocusSystem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusableInFocusSystem(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull)"}];
    [v8 handleFailureInFunction:v9 file:@"UIFocusItem.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusableInFocusSystem(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull)"}];
    [v10 handleFailureInFunction:v11 file:@"UIFocusItem.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

    goto LABEL_3;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  IsFocusedOrFocusableInFocusSystem = __UIFocusItemIsFocusedOrFocusableInFocusSystem(v3, v5, 1, 0);

  return IsFocusedOrFocusableInFocusSystem;
}

uint64_t _UIFocusItemCanBecomeFocused(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _UIFocusItemCanBecomeFocused(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull)"}];
    [v9 handleFailureInFunction:v10 file:@"UIFocusItem.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  if ([v3 canBecomeFocused])
  {
    v5 = [v4 behavior];
    v6 = [v5 disablesFocusabilityForItemsContainingFocus];

    if (v6)
    {
      v7 = [v4 _focusedItemIsContainedInEnvironment:v3 includeSelf:0] ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull, _UIFocusSearchInfo *__strong _Nonnull)"}];
    [v10 handleFailureInFunction:v11 file:@"UIFocusItem.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x277CCA890] currentHandler];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(__strong id<UIFocusItem> _Nonnull, UIFocusSystem *__strong _Nonnull, _UIFocusSearchInfo *__strong _Nonnull)"}];
  [v12 handleFailureInFunction:v13 file:@"UIFocusItem.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];

LABEL_3:
  v8 = 0;
  if (__UIFocusItemIsFocusedOrFocusableInFocusSystem(v5, v6, 1, 0))
  {
    v8 = [v7 shouldIncludeFocusItem:v5];
  }

  return v8;
}

uint64_t _UIFocusItemIsTransparentFocusItem(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 isTransparentFocusItem];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _UITVFocusItemAllowsFocusInChildrenWhenFocused(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 _tvAllowsFocusInChildrenWhenFocused];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _UITVFocusItemAddsChildFocusItemsBeforeSelf(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 _tvAddsChildFocusItemsBeforeSelf];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _UITVFocusItemAddsChildFocusItemsButNotSelf(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 _tvAddsChildFocusItemsButNotSelf];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _UIParentCoordinateSpaceForFocusItem(void *a1)
{
  v1 = a1;
  v2 = [v1 parentFocusEnvironment];
  v3 = [v2 focusItemContainer];
  v4 = [v3 coordinateSpace];

  if (!v4)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"id<UICoordinateSpace>  _Nonnull _UIParentCoordinateSpaceForFocusItem(__strong id<UIFocusItem> _Nonnull)"];
    v7 = [v1 debugDescription];
    v8 = [v1 parentFocusEnvironment];
    v9 = [v8 debugDescription];
    v10 = [v1 parentFocusEnvironment];
    v11 = [v10 focusItemContainer];
    v12 = [v11 debugDescription];
    [v5 handleFailureInFunction:v6 file:@"UIFocusItem.m" lineNumber:149 description:{@"UIFocusItem: %@ with parentFocusEnvironment: %@  focusItemContainer: %@ has no coordinate space.", v7, v9, v12}];
  }

  return v4;
}

double _UIFocusItemFrameInCoordinateSpace(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 _focusRegionFrameInCoordinateSpace:v5];
    v7 = v6;
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_8:
    v7 = *MEMORY[0x277CBF398];
    goto LABEL_9;
  }

  v8 = _UIParentCoordinateSpaceForFocusItem(v3);
  if (v8)
  {
    [v3 frame];
    [v8 convertRect:v5 toCoordinateSpace:?];
    v7 = v9;
  }

  else
  {
    v7 = *MEMORY[0x277CBF398];
  }

LABEL_9:
  return v7;
}

uint64_t _UIFocusItemDeferralModeForItem(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 focusItemDeferralMode];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _UIFocusItemFocusSpeedBumpEdges(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 _focusSpeedBumpEdges];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _UIFocusProcessIsBeingDebugged()
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  LODWORD(v3) = 0;
  *v33 = 0xE00000001;
  v34 = 1;
  v35 = getpid();
  v1 = 648;
  sysctl(v33, 4u, v2, &v1, 0, 0);
  return (v3 >> 11) & 1;
}

id _UIFocusUserDefaults()
{
  if (qword_27F062F98 != -1)
  {
    dispatch_once(&qword_27F062F98, &__block_literal_global_3);
  }

  v1 = _MergedGlobals_5;

  return v1;
}

id _UIFocusPreferencesOnce()
{
  if (qword_27F062FA8 != -1)
  {
    dispatch_once(&qword_27F062FA8, &__block_literal_global_4);
  }

  v1 = qword_27F062FA0;

  return v1;
}

void notificationHandler()
{
  if (_UIFocusInternalPreferencesRevisionVar <= 2147483645)
  {
    _UIFocusInternalPreferencesRevisionVar += 2;
  }

  v3 = _UIFocusUserDefaults();
  v1 = [v3 dictionaryRepresentation];
  v2 = _revisionDefaults;
  _revisionDefaults = v1;
}

uint64_t _UIFocusInternalPreferenceSync(int a1, _DWORD *a2, uint64_t a3, uint64_t (*a4)(_DWORD *))
{
  [_revisionDefaults objectForKey:?];
  if (objc_claimAutoreleasedReturnValue())
  {
    a1 += a4(a2);
  }

  *a2 = a1;

  return MEMORY[0x2821F96F8]();
}

__CFString *_UIFocusStringFromCGRect(double a1, double a2, double a3, double a4)
{
  v4 = CFStringCreateWithFormat(0, 0, @"{{%.*g, %.*g}, {%.*g, %.*g}}", 17, *&a1, 17, *&a2, 17, *&a3, 17, *&a4);

  return v4;
}

uint64_t SplitBracesAndComma(void *a1, CFStringRef *a2, CFStringRef *a3)
{
  v3 = a1;
  if (CFStringGetLength(@",") != 1)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void ParseBracesWithDelimiter(CFStringRef, CFStringRef, CFIndex *, CFIndex *, CFIndex *, NSInteger *)"}];
    [v19 handleFailureInFunction:v20 file:@"UIFocusGeometry.m" lineNumber:28 description:@"Parsing allows delimiter of length 1 only"];
  }

  if (qword_27F062FB8 != -1)
  {
    dispatch_once(&qword_27F062FB8, &__block_literal_global_4);
  }

  v24 = 0;
  MutableCopy = CFCharacterSetCreateMutableCopy(0, _MergedGlobals_6);
  CFCharacterSetAddCharactersInString(MutableCopy, @",");
  Length = CFStringGetLength(v3);
  result.location = 0;
  result.length = 0;
  CharacterAtIndex = CFStringGetCharacterAtIndex(@",", 0);
  if (Length < 1)
  {
    v7 = 0;
    location = -1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = CharacterAtIndex;
    v21 = &v24;
    location = -1;
    v12 = Length;
    while (1)
    {
      v26.location = v8;
      v26.length = v12;
      if (!CFStringFindCharacterFromSet(v3, MutableCopy, v26, 0, &result))
      {
        break;
      }

      if (result.location >= Length || result.length != 1)
      {
        break;
      }

      v14 = CFStringGetCharacterAtIndex(v3, result.location);
      if ((v14 & 0xFFFFFFDF) == 0x5B)
      {
        if (!v9)
        {
          location = result.location;
        }

        ++v9;
      }

      else if (v10 == v14)
      {
        if (v9 == 1)
        {
          if (v7 <= 0)
          {
            *v21++ = result.location;
            v7 = 1;
            v9 = 1;
          }

          else
          {
            v9 = 1;
            v7 = 1;
          }
        }
      }

      else if ((v14 & 0xFFFFFFDF) == 0x5D && !--v9)
      {
        v15 = result.location;
        goto LABEL_30;
      }

      v15 = -1;
      if (result.location + 1 < Length)
      {
        v12 += v8 + ~result.location;
        v8 = result.location + 1;
        if (v12 > 0)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  v15 = -1;
LABEL_30:
  CFRelease(MutableCopy);
  v16 = 0;
  if (location != -1 && v15 != -1 && v7 == 1 && location < v15)
  {
    v16 = 0;
    v17 = v24;
    if (v24 > location + 1 && v24 < v15 - 1)
    {
      v27.length = v24 + ~location;
      v27.location = location + 1;
      *a2 = CFStringCreateWithSubstring(0, v3, v27);
      v28.location = v17 + 1;
      v28.length = v15 + ~v17;
      *a3 = CFStringCreateWithSubstring(0, v3, v28);
      v16 = 1;
    }
  }

  return v16;
}

double _UIFocusDistanceBetweenRects(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (CGRectIsNull(*&a1))
  {
    return 1.79769313e308;
  }

  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  if (CGRectIsNull(v30))
  {
    return 1.79769313e308;
  }

  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  v40.origin.x = a5;
  v40.origin.y = a6;
  v40.size.width = a7;
  v40.size.height = a8;
  v17 = CGRectIntersectsRect(v31, v40);
  result = 0.0;
  if (!v17)
  {
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    MinX = CGRectGetMinX(v32);
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    MinY = CGRectGetMinY(v33);
    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    MaxX = CGRectGetMaxX(v34);
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    MaxY = CGRectGetMaxY(v35);
    v36.origin.x = a5;
    v36.origin.y = a6;
    v36.size.width = a7;
    v36.size.height = a8;
    v19 = CGRectGetMinX(v36);
    v37.origin.x = a5;
    v37.origin.y = a6;
    v37.size.width = a7;
    v37.size.height = a8;
    v20 = CGRectGetMinY(v37);
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = a7;
    v38.size.height = a8;
    v21 = CGRectGetMaxX(v38);
    v39.origin.x = a5;
    v39.origin.y = a6;
    v39.size.width = a7;
    v39.size.height = a8;
    v22 = CGRectGetMaxY(v39);
    if (v21 <= MinX && v22 <= MinY)
    {
      v23 = MinX - v21;
LABEL_9:
      v24 = MinY - v22;
      v25 = v23;
LABEL_14:

      return hypot(v25, v24);
    }

    if (v21 > MinX || MaxY > v20)
    {
      if (MaxX <= v19 && v22 <= MinY)
      {
        v23 = v19 - MaxX;
        goto LABEL_9;
      }

      if (MaxX > v19 || MaxY > v20)
      {
        if (v21 <= MinX)
        {
          return MinX - v21;
        }

        if (MaxX <= v19)
        {
          return v19 - MaxX;
        }

        if (v22 <= MinY)
        {
          return MinY - v22;
        }

        if (MaxY <= v20)
        {
          return v20 - MaxY;
        }

        return 1.79769313e308;
      }

      v25 = v19 - MaxX;
    }

    else
    {
      v25 = MinX - v21;
    }

    v24 = v20 - MaxY;
    goto LABEL_14;
  }

  return result;
}

double _UIVectorForFocusHeading(char a1)
{
  result = -1.0;
  v2 = 0.0;
  if ((a1 & 4) != 0)
  {
    v2 = -1.0;
  }

  if ((a1 & 8) != 0)
  {
    v2 = 1.0;
  }

  if ((a1 & 0x20) == 0)
  {
    result = v2;
  }

  if ((a1 & 0x10) != 0)
  {
    return 1.0;
  }

  return result;
}

double _UIRectDeparturePointAlongFocusHeading(char a1, double a2, double a3, double a4, double a5)
{
  if ((a1 & 0xC) != 0)
  {
    if ((a1 & 4) != 0)
    {
      MinX = CGRectGetMinX(*&a2);
    }

    else
    {
      MinX = CGRectGetMaxX(*&a2);
    }
  }

  else
  {
    MinX = CGRectGetMidX(*&a2);
  }

  v11 = MinX;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if ((a1 & 3) != 0)
  {
    if (a1)
    {
      CGRectGetMinY(*&v12);
    }

    else
    {
      CGRectGetMaxY(*&v12);
    }
  }

  else
  {
    CGRectGetMidY(*&v12);
  }

  return v11;
}

void _UIPointAxisAlignedDistanceAlongFocusHeading(char a1, double a2, double a3, double a4, double a5)
{
  if ((a1 & 3) != 0 && (a1 & 0xC) != 0)
  {
    hypot(a4 - a2, a5 - a3);
    _UIVectorForFocusHeading(a1);
  }
}

BOOL _UIRectIntersectsRectAlongFocusHeading(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if ((a1 & 3) != 0)
  {
    MinX = CGRectGetMinX(*&a2);
    v30.origin.x = a6;
    v30.origin.y = a7;
    v30.size.width = a8;
    v30.size.height = a9;
    if (MinX < CGRectGetMaxX(v30))
    {
      v31.origin.x = a2;
      v31.origin.y = a3;
      v31.size.width = a4;
      v31.size.height = a5;
      MaxX = CGRectGetMaxX(v31);
      v32.origin.x = a6;
      v32.origin.y = a7;
      v32.size.width = a8;
      v32.size.height = a9;
      v18 = CGRectGetMinX(v32);
      return MaxX > v18;
    }
  }

  else if ((a1 & 0xC) != 0)
  {
    MinY = CGRectGetMinY(*&a2);
    v33.origin.x = a6;
    v33.origin.y = a7;
    v33.size.width = a8;
    v33.size.height = a9;
    if (MinY < CGRectGetMaxY(v33))
    {
      v34.origin.x = a2;
      v34.origin.y = a3;
      v34.size.width = a4;
      v34.size.height = a5;
      MaxX = CGRectGetMaxY(v34);
      v35.origin.x = a6;
      v35.origin.y = a7;
      v35.size.width = a8;
      v35.size.height = a9;
      v18 = CGRectGetMinY(v35);
      return MaxX > v18;
    }
  }

  return 0;
}

uint64_t _UIFocusRectCompare(int a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v18 = a4 + a6 * 0.5;
  v28.origin.x = a7;
  v28.origin.y = a8;
  v28.size.width = a9;
  v28.size.height = a10;
  if ((CGRectGetMinY(v28) >= v18 || (v29.origin.x = a7, v29.origin.y = a8, v29.size.width = a9, v29.size.height = a10, v18 >= CGRectGetMaxY(v29)) || (v30.origin.x = a7, v30.origin.y = a8, v30.size.width = a9, v30.size.height = a10, v34.origin.x = a3, v34.size.width = a5, v34.origin.y = a4, v34.size.height = a6, CGRectContainsRect(v30, v34))) && ((v19 = a8 + a10 * 0.5, v31.origin.x = a3, v31.size.width = a5, v31.origin.y = a4, v31.size.height = a6, CGRectGetMinY(v31) >= v19) || (v32.origin.x = a3, v32.size.width = a5, v32.origin.y = a4, v32.size.height = a6, v19 >= CGRectGetMaxY(v32)) || (v33.origin.x = a3, v33.size.width = a5, v33.origin.y = a4, v33.size.height = a6, v35.origin.x = a7, v35.origin.y = a8, v35.size.width = a9, v35.size.height = a10, CGRectContainsRect(v33, v35))))
  {
    v20 = -1;
    if (v18 > v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = -1;
    }

    if (v18 <= v19)
    {
      v20 = 1;
    }

    if (a2)
    {
      return v20;
    }

    else
    {
      return v21;
    }
  }

  else
  {
    v23 = a3 + a5 * 0.5;
    v24 = a7 + a9 * 0.5;
    v25 = v23 >= v24;
    if (!a1)
    {
      v25 = v23 <= v24;
    }

    if (v25)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t _UIFocusItemCompare(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 parentFocusEnvironment];
  v6 = [v4 parentFocusEnvironment];
  v7 = _UIFocusEnvironmentFirstCommonAncestor(v5, v6);

  v8 = [UIFocusSystem focusSystemForEnvironment:v7];
  v9 = [v8 behavior];
  v10 = [v9 shouldUseAccessibilityCompareForItemGeometry];

  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [v3 accessibilityCompareGeometry:v4];
  }

  else
  {
    v12 = v7;
    v13 = v3;
    v14 = v4;
    v15 = v12;
    if (!v12)
    {
      v16 = [v13 parentFocusEnvironment];
      v17 = [v14 parentFocusEnvironment];
      v15 = _UIFocusEnvironmentFirstCommonAncestor(v16, v17);
    }

    v18 = [UIFocusSystem focusSystemForEnvironment:v15];
    v19 = [v18 focusItemContainer];
    v20 = [v19 coordinateSpace];

    [v13 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v14 frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    if (v20)
    {
      v60.origin.x = _UIFocusItemFrameInCoordinateSpace(v13, v20);
      v55 = v34;
      v56 = v36;
      v37 = v22;
      x = v60.origin.x;
      v39 = v30;
      v40 = v24;
      y = v60.origin.y;
      v57 = v32;
      v58 = v28;
      v42 = v26;
      width = v60.size.width;
      height = v60.size.height;
      IsNull = CGRectIsNull(v60);
      if (!IsNull)
      {
        v37 = x;
        v40 = y;
        v42 = width;
      }

      v46 = v58;
      if (!IsNull)
      {
        v46 = height;
      }

      v59 = v46;
      v61.origin.x = _UIFocusItemFrameInCoordinateSpace(v14, v20);
      v47 = v61.origin.x;
      v48 = v61.origin.y;
      v49 = v61.size.width;
      v50 = v61.size.height;
      v51 = CGRectIsNull(v61);
      if (!v51)
      {
        v39 = v47;
      }

      v22 = v37;
      v36 = v56;
      v52 = v57;
      if (!v51)
      {
        v52 = v48;
      }

      v24 = v40;
      v30 = v39;
      v34 = v55;
      if (!v51)
      {
        v34 = v49;
      }

      v26 = v42;
      if (!v51)
      {
        v36 = v50;
      }

      v32 = v52;
      v28 = v59;
    }

    v53 = [UIFocusSystem focusSystemForEnvironment:v12];
    v11 = _UIFocusRectCompare([v53 _shouldReverseLayoutDirectionForEnvironment:v12], objc_msgSend(v53, "_shouldReverseLinearWrappingForEnvironment:", v12), v22, v24, v26, v28, v30, v32, v34, v36);
  }

  return v11;
}

id _UIFocusGetNextItemFromList(void *a1, void *a2, __int16 a3, int a4)
{
  v7 = a1;
  v8 = a2;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<UIFocusItem>  _Nonnull _UIFocusGetNextItemFromList(id<UIFocusItem>  _Nullable __strong, NSArray<id<UIFocusItem>> *__strong _Nonnull, UIFocusHeading, BOOL)"}];
    [v13 handleFailureInFunction:v14 file:@"UIFocusGeometry.m" lineNumber:687 description:{@"Invalid parameter not satisfying: %@", @"list != nil"}];
  }

  if (![v8 count])
  {
    goto LABEL_11;
  }

  if ((a3 & 0x300) != 0)
  {
    if ((a3 & 0x100) == 0)
    {
LABEL_6:
      v9 = [v8 count] - 1;
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  if (!v7)
  {
    goto LABEL_22;
  }

  v10 = [v8 indexOfObject:v7];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  v9 = v10;
  if ((a3 & 0x10) != 0)
  {
    if (v10 >= [v8 count] - 1)
    {
      if (a4)
      {
        v9 = 0;
      }

      goto LABEL_23;
    }

    ++v9;
LABEL_7:
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x20) != 0)
  {
    if (v10)
    {
      v9 = v10 - 1;
      goto LABEL_7;
    }

    if (a4)
    {
      goto LABEL_6;
    }

LABEL_22:
    v9 = 0;
  }

LABEL_23:
  v11 = [v8 objectAtIndexedSubscript:v9];
LABEL_24:

  return v11;
}

void _UIFocusRectWithMinimumSize(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (!CGRectIsNull(*&a1))
  {
    v8.origin.x = a1;
    v8.origin.y = a2;
    v8.size.width = a3;
    v8.size.height = a4;
    CGRectStandardize(v8);
  }
}

__CFString *_UIStringFromFocusHeading(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x277CCAB68] string];
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___UIStringFromFocusHeading_block_invoke;
    v8[3] = &unk_279014DA0;
    v3 = v2;
    v9 = v3;
    v10 = v11;
    v4 = MEMORY[0x24C24D980](v8);
    v5 = v4;
    if (v1)
    {
      (*(v4 + 16))(v4, @"Up");
    }

    if ((v1 & 2) != 0)
    {
      (v5)[2](v5, @"Down");
    }

    if ((v1 & 4) != 0)
    {
      (v5)[2](v5, @"Left");
    }

    if ((v1 & 8) != 0)
    {
      (v5)[2](v5, @"Right");
    }

    if ((v1 & 0x20) != 0)
    {
      (v5)[2](v5, @"Previous");
    }

    if ((v1 & 0x10) != 0)
    {
      (v5)[2](v5, @"Next");
    }

    if ((v1 & 0x100) != 0)
    {
      (v5)[2](v5, @"First");
    }

    if ((v1 & 0x200) != 0)
    {
      (v5)[2](v5, @"Last");
    }

    v6 = v3;

    _Block_object_dispose(v11, 8);
  }

  else
  {
    v6 = @"None";
  }

  return v6;
}

void sub_24B8A4B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_UIStringFromGroupFilter(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"CurrentGroup";
  }

  if (a1 == 2)
  {
    return @"PrimaryItems";
  }

  else
  {
    return v1;
  }
}

CFCharacterSetRef __ParseBracesWithDelimiter_block_invoke()
{
  result = CFCharacterSetCreateWithCharactersInString(0, @"{[]}");
  _MergedGlobals_6 = result;
  return result;
}

uint64_t _UIFocusGroupCompare(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v76 = [MEMORY[0x277CCA890] currentHandler];
    v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSComparisonResult _UIFocusGroupCompare(_UIFocusGroup * _Nonnull __strong, _UIFocusGroup * _Nonnull __strong)"}];
    [v76 handleFailureInFunction:v77 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"group1"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v78 = [MEMORY[0x277CCA890] currentHandler];
  v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSComparisonResult _UIFocusGroupCompare(_UIFocusGroup * _Nonnull __strong, _UIFocusGroup * _Nonnull __strong)"}];
  [v78 handleFailureInFunction:v79 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"group2"}];

LABEL_3:
  v6 = [v3 parentGroup];
  v7 = [v5 parentGroup];

  if (v6 != v7)
  {
    v80 = [MEMORY[0x277CCA890] currentHandler];
    v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSComparisonResult _UIFocusGroupCompare(_UIFocusGroup * _Nonnull __strong, _UIFocusGroup * _Nonnull __strong)"}];
    [v80 handleFailureInFunction:v81 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:32 description:@"Comparing groups with different parents is invalid."];
  }

  v8 = [v3 coordinateSpace];
  v9 = [v5 coordinateSpace];
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
    v14 = v11;
    v15 = v10;
  }

  else
  {
    if (v10 && v11)
    {
      v13 = [v10 isEqual:v11];

      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v15 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSComparisonResult _UIFocusGroupCompare(_UIFocusGroup * _Nonnull __strong, _UIFocusGroup * _Nonnull __strong)"}];
    v10 = [v3 identifier];
    v12 = [v3 coordinateSpace];
    v82 = [v5 identifier];
    v83 = [v5 coordinateSpace];
    [v15 handleFailureInFunction:v14 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:34 description:{@"Trying to compare groups with different coordinate spaces. Group %@ uses %@ while group %@ uses %@.", v10, v12, v82, v83}];
  }

LABEL_12:
  v16 = [v3 owningEnvironment];
  v17 = [v5 owningEnvironment];
  v18 = v17;
  if (!v16)
  {
    v20 = 0;
    if (!v17)
    {
      goto LABEL_19;
    }

LABEL_17:
    v21 = [UIFocusSystem focusSystemForEnvironment:v18];

    if (v20 == v21)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v19 = [UIFocusSystem focusSystemForEnvironment:v16];
  v20 = v19;
  if (v18)
  {
    goto LABEL_17;
  }

  if (v19)
  {
LABEL_18:
    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSComparisonResult _UIFocusGroupCompare(_UIFocusGroup * _Nonnull __strong, _UIFocusGroup * _Nonnull __strong)"}];
    [v22 handleFailureInFunction:v23 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:40 description:@"Unable to compare focus groups from different focus systems."];
  }

LABEL_19:
  v24 = [v3 parentGroup];
  v25 = [v24 owningEnvironment];

  v26 = [v20 _shouldReverseLayoutDirectionForEnvironment:v25];
  v27 = [v20 _shouldReverseLinearWrappingForEnvironment:v25];
  [v3 boundingBox];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [v5 boundingBox];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v86.origin.x = v29;
  v86.origin.y = v31;
  v86.size.width = v33;
  v86.size.height = v35;
  if (CGRectIsNull(v86) || (v87.origin.x = v37, v87.origin.y = v39, v87.size.width = v41, v87.size.height = v43, CGRectIsNull(v87)) || ((v88.origin.x = v29, v88.origin.y = v31, v88.size.width = v33, v88.size.height = v35, v89 = CGRectStandardize(v88), x = v89.origin.x, y = v89.origin.y, width = v89.size.width, height = v89.size.height, v89.origin.x = v37, v89.origin.y = v39, v89.size.width = v41, v89.size.height = v43, v90 = CGRectStandardize(v89), v48 = v90.origin.x, v49 = v90.origin.y, v50 = v90.size.width, v51 = v90.size.height, v84 = y, v85 = x, v90.origin.x = x, v90.origin.y = y, v90.size.width = width, v90.size.height = height, v52 = CGRectGetMinX(v90) + 0.0001, v91.origin.x = v48, v91.origin.y = v49, v91.size.width = v50, v91.size.height = v51, v52 <= CGRectGetMaxX(v91)) ? (v92.origin.y = v84, v92.origin.x = x, v92.size.width = width, v92.size.height = height, v54 = CGRectGetMaxX(v92) + -0.0001, v93.origin.x = v48, v93.origin.y = v49, v93.size.width = v50, v93.size.height = v51, v53 = v54 >= CGRectGetMinX(v93)) : (v53 = 0), (v94.origin.x = x, v94.origin.y = v84, v94.size.width = width, v94.size.height = height, v55 = CGRectGetMinY(v94) + 0.0001, v95.origin.x = v48, v95.origin.y = v49, v95.size.width = v50, v95.size.height = v51, v55 > CGRectGetMaxY(v95)) || ((v96.origin.x = v85, v96.origin.y = v84, v96.size.width = width, v96.size.height = height, v56 = CGRectGetMaxY(v96) + -0.0001, v97.origin.x = v48, v97.origin.y = v49, v97.size.width = v50, v97.size.height = v51, v56 >= CGRectGetMinY(v97)) ? (v57 = v53) : (v57 = 0), !v57)))
  {
    [v3 boundingBox];
    v59 = v70;
    v61 = v71;
    v63 = v72;
    v65 = v73;
    [v5 boundingBox];
  }

  else
  {
    [v3 primaryRect];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    [v5 primaryRect];
  }

  v74 = _UIFocusRectCompare(v26, v27, v59, v61, v63, v65, v66, v67, v68, v69);

  return v74;
}

id _UIFocusGroupIdentifierForInstance(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull _UIFocusGroupIdentifierForInstance(id  _Nonnull __strong)"];
    [v7 handleFailureInFunction:v8 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"object"}];
  }

  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@: %p>", v4, v1];

  return v5;
}

id _UIFocusGroupUnresolvedIdentifierForEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 focusGroupIdentifier];
    goto LABEL_31;
  }

  v3 = v1;
  v4 = [UIFocusSystem focusSystemForEnvironment:v3];
  v5 = [v4 behavior];
  v6 = [v5 focusGroupContainmentBehavior];

  v7 = [v3 focusItemContainer];
  v8 = v7;
  if ((v6 & 8) == 0)
  {
    v2 = 0;
    if (!_UIFocusItemContainerIsScrollableContainer(v7) || (v6 & 6) == 0)
    {
      goto LABEL_30;
    }

    v9 = v3;
    v10 = _UIFocusItemScrollableContainerPrimaryAxis(v8);
    v11 = _UIFocusNearestAncestorEnvironmentScrollableContainer(v9, 1);
    v12 = v11;
    if (v11)
    {
      v13 = [v11 scrollableContainer];
      v14 = _UIFocusItemScrollableContainerPrimaryAxis(v13);

      if ((v6 & 4) == 0)
      {
LABEL_8:
        v2 = 0;
        if ((v6 & 2) == 0 || v12)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v14 = 0;
      if ((v6 & 4) == 0)
      {
        goto LABEL_8;
      }
    }

    if (v12 && v10 == v14)
    {
      v2 = 0;
LABEL_22:

      goto LABEL_29;
    }

LABEL_21:
    v2 = _UIFocusGroupIdentifierForInstance(v9);
    goto LABEL_22;
  }

  v15 = v3;
  v16 = _UIFocusEnvironmentRotaryFocusMovementAxis(v15);
  if (v16 != -1)
  {
    v17 = v16;
    if (_UIFocusInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIFocusInternalPreferencesRevisionOnce, &__block_literal_global_6);
    }

    v18 = _UIFocusInternalPreferencesRevisionVar;
    if (_UIFocusInternalPreferencesRevisionVar >= 1)
    {
      v21 = _UIFocusInternalPreference_FocusGroupSeparateNestedEqualRotaryMovementAxis;
      if (_UIFocusInternalPreferencesRevisionVar != _UIFocusInternalPreference_FocusGroupSeparateNestedEqualRotaryMovementAxis)
      {
        while (v18 >= v21)
        {
          _UIFocusInternalPreferenceSync(v18, &_UIFocusInternalPreference_FocusGroupSeparateNestedEqualRotaryMovementAxis, @"FocusGroupSeparateNestedEqualRotaryMovementAxis", _UIFocusInternalPreferenceUpdateBool);
          v21 = _UIFocusInternalPreference_FocusGroupSeparateNestedEqualRotaryMovementAxis;
          if (v18 == _UIFocusInternalPreference_FocusGroupSeparateNestedEqualRotaryMovementAxis)
          {
            goto LABEL_15;
          }
        }

        if (byte_27F062734)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_15:
    v19 = [v15 parentFocusEnvironment];
    v20 = _UIFocusEnvironmentResolvedRotaryFocusMovementAxis(v19, 0);

    if (v17 != v20)
    {
LABEL_28:
      v2 = _UIFocusGroupIdentifierForInstance(v15);
      goto LABEL_29;
    }
  }

  v2 = 0;
LABEL_29:

LABEL_30:
LABEL_31:

  return v2;
}

uint64_t _UIFocusGroupPriorityForItem(void *a1, id a2, id a3)
{
  v5 = a1;
  v6 = v5;
  v7 = 1000;
  if (v5 != a3)
  {
    v7 = 0;
  }

  if (v5 == a2)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v7;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v6 _systemDefaultFocusGroupPriority];
    if (v9 > v8)
    {
      v8 = v9;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v6 focusGroupPriority];
    if (v10 > v8)
    {
      v8 = v10;
    }
  }

  return v8;
}

double _UIRectThatJustBarelyIntersectsRect(double a1, CGFloat y, CGFloat width, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  x = a1;
  MaxX = CGRectGetMaxX(*&a1);
  v34 = a5;
  v37.origin.x = a5;
  v37.origin.y = a6;
  rect = a7;
  v37.size.width = a7;
  v37.size.height = a8;
  v16 = a8;
  v35 = a8;
  if (MaxX <= CGRectGetMinX(v37))
  {
    v18 = a6;
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = rect;
    v38.size.height = v16;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = a4;
    MinY = CGRectGetMinY(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = a4;
    v41.size.height = CGRectGetHeight(v40);
    v41.size.width = 90.0;
    v41.origin.x = MinX;
    v41.origin.y = MinY;
    v16 = v35;
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = a4;
    v42 = CGRectUnion(v41, v63);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
  }

  else
  {
    height = a4;
    v18 = a6;
  }

  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v21 = CGRectGetMinX(v43);
  v22 = v34;
  v44.origin.x = v34;
  v44.origin.y = v18;
  v44.size.width = rect;
  v44.size.height = v16;
  if (v21 >= CGRectGetMaxX(v44))
  {
    v45.origin.x = v34;
    v45.origin.y = v18;
    v45.size.width = rect;
    v45.size.height = v16;
    v23 = CGRectGetMaxX(v45) + -90.0;
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v24 = CGRectGetMinY(v46);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v48.size.height = CGRectGetHeight(v47);
    v48.size.width = 90.0;
    v48.origin.x = v23;
    v48.origin.y = v24;
    v22 = v34;
    v16 = v35;
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v49 = CGRectUnion(v48, v64);
    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;
  }

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MaxY = CGRectGetMaxY(v50);
  v51.origin.x = v22;
  v51.origin.y = v18;
  v51.size.width = rect;
  v51.size.height = v16;
  if (MaxY <= CGRectGetMinY(v51))
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v26 = CGRectGetMinX(v52);
    v53.origin.x = v22;
    v53.origin.y = v18;
    v53.size.width = rect;
    v53.size.height = v16;
    v27 = v22;
    v28 = CGRectGetMinY(v53);
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v55.size.width = CGRectGetWidth(v54);
    v55.size.height = 90.0;
    v55.origin.x = v26;
    v55.origin.y = v28;
    v22 = v27;
    v16 = v35;
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    v56 = CGRectUnion(v55, v65);
    x = v56.origin.x;
    y = v56.origin.y;
    width = v56.size.width;
    height = v56.size.height;
  }

  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v29 = CGRectGetMinY(v57);
  v58.origin.x = v22;
  v58.origin.y = v18;
  v58.size.width = rect;
  v58.size.height = v16;
  if (v29 >= CGRectGetMaxY(v58))
  {
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    v30 = CGRectGetMinX(v59);
    v60.origin.x = v22;
    v60.origin.y = v18;
    v60.size.width = rect;
    v60.size.height = v16;
    v31 = CGRectGetMaxY(v60) + -90.0;
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    v62.size.width = CGRectGetWidth(v61);
    v62.size.height = 90.0;
    v62.origin.x = v30;
    v62.origin.y = v31;
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    *&x = CGRectUnion(v62, v66);
  }

  return x;
}

_UIFocusRegionContainerProxy *_UIFocusRegionContainerFromEnvironmentAndContainer(uint64_t a1, uint64_t a2)
{
  v2 = [_UIFocusEnvironmentContainerTuple tupleWithOwningEnvironment:a1 itemContainer:a2];
  v3 = [v2 owningEnvironment];
  v4 = [v2 itemContainer];
  v5 = v4;
  if (v3 == v4 && [v4 conformsToProtocol:&unk_285EBE0C8])
  {
    v6 = v5;
  }

  else
  {
    v6 = [[_UIFocusRegionContainerProxy alloc] initWithEnvironmentContainer:v2];
  }

  v7 = v6;

  return v7;
}

id logger()
{
  if (logger_onceToken != -1)
  {
    dispatch_once(&logger_onceToken, &__block_literal_global_5);
  }

  v1 = logger_logger;

  return v1;
}

uint64_t __logger_block_invoke()
{
  logger_logger = os_log_create("com.apple.UIKit", "UIFocus");

  return MEMORY[0x2821F96F8]();
}

void sub_24B8A8598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B8A8774(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t _UIFocusGetFocusTreeLockVerboseLogging()
{
  if (_UIFocusInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIFocusInternalPreferencesRevisionOnce, &__block_literal_global_6);
  }

  v0 = _UIFocusInternalPreferencesRevisionVar;
  if (_UIFocusInternalPreferencesRevisionVar < 1 || (v3 = _UIFocusInternalPreference_FocusTreeLockVerboseLogging, _UIFocusInternalPreferencesRevisionVar == _UIFocusInternalPreference_FocusTreeLockVerboseLogging))
  {
    v1 = 1;
  }

  else
  {
    do
    {
      v1 = v0 >= v3;
      if (v0 < v3)
      {
        break;
      }

      _UIFocusInternalPreferenceSync(v0, &_UIFocusInternalPreference_FocusTreeLockVerboseLogging, @"FocusTreeLockVerboseLogging", _UIFocusInternalPreferenceUpdateBool);
      v3 = _UIFocusInternalPreference_FocusTreeLockVerboseLogging;
    }

    while (v0 != _UIFocusInternalPreference_FocusTreeLockVerboseLogging);
  }

  return byte_27F06273C || v1;
}

void sub_24B8A9DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UIFocusNearestAncestorEnvironmentScrollableContainer(void *a1, int a2)
{
  v3 = a1;
  if (!v3)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"_UIFocusEnvironmentScrollableContainerTuple * _Nullable _UIFocusNearestAncestorEnvironmentScrollableContainer(__strong id<UIFocusEnvironment> _Nonnull, BOOL)"}];
    [v14 handleFailureInFunction:v15 file:@"UIFocusItemContainer.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v4 = _UIFocusEnvironmentParentEnvironment(v3);
  if (!v4)
  {
LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v5 = v4;
  v6 = v3;
  while ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_19:
    v6 = v5;
    v5 = _UIFocusEnvironmentParentEnvironment(v5);
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  v7 = [v5 focusItemContainer];
  v8 = v7;
  if (v7 && _UIFocusItemContainerIsScrollableContainer(v7))
  {
    v9 = v8;
    if (_UIFocusEnvironmentPrefersFocusContainment(v5))
    {
      v12 = [_UIFocusEnvironmentScrollableContainerTuple tupleWithOwningEnvironment:v5 scrollableContainer:v9];

      goto LABEL_27;
    }
  }

  if (!a2 || (objc_opt_respondsToSelector() & 1) == 0 || (v10 = [v6 _focusFallbackScroller]) == 0)
  {
    v11 = v5;
    goto LABEL_18;
  }

  v11 = v10;
  if (!_UIFocusEnvironmentPrefersFocusContainment(v10))
  {
LABEL_18:

    v5 = v11;
    goto LABEL_19;
  }

  v9 = [v11 focusItemContainer];

  if (!v9)
  {
    v8 = 0;
    goto LABEL_18;
  }

  if (!_UIFocusItemContainerIsScrollableContainer(v9))
  {
    v8 = v9;
    goto LABEL_18;
  }

  v12 = [_UIFocusEnvironmentScrollableContainerTuple tupleWithOwningEnvironment:v11 scrollableContainer:v9];
LABEL_27:

LABEL_23:

  return v12;
}

uint64_t _UIFocusItemContainerIsScrollableContainer(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 conformsToProtocol:&unk_285EC74B8];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _UIFocusAncestorEnvironmentScrollableContainers(void *a1, int a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if (v3)
  {
    v5 = v3;
    do
    {
      v6 = _UIFocusNearestAncestorEnvironmentScrollableContainer(v5, a2);
      if (v6)
      {
        [v4 addObject:v6];
      }

      v5 = [v6 owningEnvironment];
    }

    while (v5);
  }

  v7 = [v4 array];

  return v7;
}

void _UIFocusItemContainerAddChildItemsInContextWithOptions(void *a1, void *a2, int a3)
{
  v124 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [v5 owningEnvironment];
  v8 = [v5 itemContainer];
  v107 = [v8 coordinateSpace];
  v9 = [v6 searchArea];
  v10 = [v6 coordinateSpace];
  v103 = v7;
  v11 = _UIFocusEnvironmentContainerFrameInCoordinateSpace(v7, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v10 bounds];
  v94 = v11;
  v95 = v13;
  v96 = v15;
  v97 = v17;
  if ((_UIFocusRectSmartIntersectsRect(v18, v19, v20, v21, v11, v13, v15, v17) & 1) == 0 && (a3 & 0x100) != 0)
  {
    v22 = v8;
    if (objc_opt_respondsToSelector())
    {
      v23 = [v22 _isLazyFocusItemContainer];

      if (v23)
      {
        v24 = [_UIFocusPromiseRegion alloc];
        v25 = v22;
        if (v25)
        {
          v26 = MEMORY[0x277CCACA8];
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = [v26 stringWithFormat:@"<%@: %p>", v28, v25];
        }

        else
        {
          v29 = @"(nil)";
        }

        v93 = [(_UIFocusPromiseRegion *)v24 initWithFrame:v10 coordinateSpace:v29 identifier:v11, v13, v15, v17];
        v113[0] = MEMORY[0x277D85DD0];
        v113[1] = 3221225472;
        v113[2] = ___UIFocusItemContainerAddChildItemsInContextWithOptions_block_invoke;
        v113[3] = &unk_279014E18;
        v114 = v5;
        [(_UIFocusPromiseRegion *)v93 setContentFulfillmentHandler:v113];
        obj = v93;
        [v6 addRegion:v93];
        v91 = v114;
        goto LABEL_45;
      }
    }

    else
    {
    }
  }

  v98 = a3;
  v100 = v9;
  v101 = v5;
  [v9 frame];
  v99 = v10;
  [v107 convertRect:v10 fromCoordinateSpace:?];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  [v8 focusItemsInRect:?];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v112 = 0u;
  v38 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v110;
    v102 = v8;
    do
    {
      v41 = 0;
      do
      {
        if (*v110 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v109 + 1) + 8 * v41);
        v43 = logger();
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);

        if (v44)
        {
          v45 = [v42 parentFocusEnvironment];
          v46 = [v45 focusItemContainer];

          if (v46 != v8)
          {
            v47 = logger();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v65 = @"(nil)";
              if (v42)
              {
                v66 = MEMORY[0x277CCACA8];
                v67 = v42;
                v68 = objc_opt_class();
                v69 = NSStringFromClass(v68);
                v65 = [v66 stringWithFormat:@"<%@: %p>", v69, v67];
              }

              v106 = v65;
              v70 = [v42 parentFocusEnvironment];
              v71 = @"(nil)";
              if (v70)
              {
                v72 = MEMORY[0x277CCACA8];
                v73 = objc_opt_class();
                v74 = NSStringFromClass(v73);
                v71 = [v72 stringWithFormat:@"<%@: %p>", v74, v70];
              }

              v105 = v70;
              v104 = v71;
              v75 = v8;
              v76 = @"(nil)";
              if (v8)
              {
                v77 = MEMORY[0x277CCACA8];
                v78 = objc_opt_class();
                v79 = NSStringFromClass(v78);
                v76 = [v77 stringWithFormat:@"<%@: %p>", v79, v75];
              }

              v80 = v76;
              v81 = v103;
              v82 = @"(nil)";
              if (v103)
              {
                v83 = MEMORY[0x277CCACA8];
                v84 = objc_opt_class();
                v85 = NSStringFromClass(v84);
                v82 = [v83 stringWithFormat:@"<%@: %p>", v85, v81];
              }

              *buf = 138413058;
              v116 = v106;
              v117 = 2112;
              v118 = v104;
              v119 = 2112;
              v120 = v80;
              v121 = 2112;
              v122 = v82;
              _os_log_error_impl(&dword_24B885000, v47, OS_LOG_TYPE_ERROR, "UIFocusItem: %@ has mismatched parentFocusEnvironment: %@  from focusItemContainer: %@ with owningEnvironment: %@", buf, 0x2Au);

              v8 = v102;
            }
          }
        }

        v48 = [v42 focusItemContainer];
        if (v48)
        {
          v49 = _UIFocusRegionContainerFromEnvironmentAndContainer(v42, v48);
          [v6 addRegionsInContainer:v49];
        }

        else
        {
          v49 = [v6 searchInfo];
          if ([(_UIFocusItemRegion *)v49 shouldIncludeFocusItem:v42])
          {
            [v42 frame];
            v54 = _UIFocusRectSmartIntersectsRect(v50, v51, v52, v53, v31, v33, v35, v37);

            if (!v54)
            {
              goto LABEL_23;
            }

            v55 = [_UIFocusItemRegion alloc];
            [v42 frame];
            v57 = v56;
            v59 = v58;
            v61 = v60;
            v63 = v62;
            v64 = [v6 focusSystem];
            v49 = [(_UIFocusItemRegion *)v55 initWithFrame:v107 coordinateSpace:v42 item:v64 focusSystem:v57, v59, v61, v63];

            [v6 addRegion:v49];
          }
        }

LABEL_23:
        ++v41;
      }

      while (v39 != v41);
      v86 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
      v39 = v86;
    }

    while (v86);
  }

  v87 = [v6 movementInfo];
  v88 = v8;
  v89 = v87;
  if (objc_opt_respondsToSelector())
  {
    v90 = [v88 _focusGuideBehaviorForFocusMovement:v89];
  }

  else
  {
    v90 = 0;
  }

  v9 = v100;
  v5 = v101;
  v10 = v99;

  if ((v98 & 0x10000) != 0)
  {
    if (v90 == 2)
    {
      v91 = [[_UIFocusGuideRegion alloc] initWithFrame:v99 coordinateSpace:v94, v95, v96, v97];
      [(_UIFocusGuideRegion *)v91 setOwningEnvironment:v103];
      [v6 addRegion:v91];
      goto LABEL_45;
    }

    if (v90 == 1)
    {
      v91 = [[_UIFocusRegionContainerProxy alloc] initWithEnvironmentContainer:v101];
      [(_UIFocusGuideRegion *)v91 setShouldCreateRegionForOwningItem:0];
      [(_UIFocusGuideRegion *)v91 setShouldCreateRegionForGuideBehavior:0];
      [(_UIFocusGuideRegion *)v91 setAllowsLazyLoading:0];
      v92 = [(_UIFocusGuideRegion *)[_UIFocusContainerGuideRegion alloc] initWithFrame:v99 coordinateSpace:v94, v95, v96, v97];
      [(_UIFocusContainerGuideRegion *)v92 setContentFocusRegionContainer:v91];
      [v6 addRegion:v92];

LABEL_45:
    }
  }
}

uint64_t _UIFocusItemContainerSupportsInvalidatingFocusCache(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v2 = [objc_opt_class() _supportsInvalidatingFocusCache];
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t _UIFocusItemScrollableContainerCanScrollX(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 _focusCanScrollX];
  }

  else
  {
    [v1 contentSize];
    v4 = v3;
    [v1 visibleSize];
    v2 = v4 > v5;
  }

  return v2;
}

uint64_t _UIFocusItemScrollableContainerCanScrollY(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 _focusCanScrollY];
  }

  else
  {
    [v1 contentSize];
    v4 = v3;
    [v1 visibleSize];
    v2 = v4 > v5;
  }

  return v2;
}

double _UIFocusItemScrollableContainerContentBounds(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 _focusScrollableContentBounds];
    v3 = v2;
  }

  else
  {
    v3 = *MEMORY[0x277CBF348];
    [v1 contentSize];
  }

  return v3;
}

uint64_t _UIFocusItemScrollableContainerPrimaryAxis(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 _focusPrimaryScrollableAxis];
  }

  else
  {
    v3 = v1;
    [v3 contentSize];
    v5 = v4;
    v7 = v6;
    CanScrollX = _UIFocusItemScrollableContainerCanScrollX(v3);
    CanScrollY = _UIFocusItemScrollableContainerCanScrollY(v3);

    if (CanScrollX && CanScrollY)
    {
      if (v5 <= v7)
      {
        if (v7 <= v5)
        {
          v2 = 0;
        }

        else
        {
          v2 = 2;
        }
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v10 = 2;
      if (!CanScrollY)
      {
        v10 = 0;
      }

      if (CanScrollX)
      {
        v2 = 1;
      }

      else
      {
        v2 = v10;
      }
    }
  }

  return v2;
}

id _UIFocusEngineCommonEnvironmentScrollableContainerForItems(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 item];
  if (v5 && (v6 = v5, [v4 item], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v3 ancestorEnvironmentScrollableContainers];
    v9 = [v4 ancestorEnvironmentScrollableContainers];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___UIFocusEngineCommonEnvironmentScrollableContainerForItems_block_invoke;
    v14[3] = &unk_279014E40;
    v10 = v8;
    v15 = v10;
    v11 = [v9 indexOfObjectPassingTest:v14];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v9 objectAtIndex:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t _UIFocusEngineScrollableContainerCanScroll(void *a1)
{
  v1 = a1;
  if ((_UIFocusItemScrollableContainerCanScrollX(v1) & 1) != 0 || _UIFocusItemScrollableContainerCanScrollY(v1))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [v1 _focusIsScrollableContainer];
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _UIFocusEngineFirstScrollableContainerTupleThatScrollsForItem(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [a1 ancestorEnvironmentScrollableContainers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        v6 = [v5 scrollableContainer];
        CanScroll = _UIFocusEngineScrollableContainerCanScroll(v6);

        if (CanScroll)
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

BOOL _UIFocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic()
{
  if (_UIFocusInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIFocusInternalPreferencesRevisionOnce, &__block_literal_global_6);
  }

  v0 = _UIFocusInternalPreferencesRevisionVar;
  if (_UIFocusInternalPreferencesRevisionVar < 1 || (v3 = _UIFocusInternalPreference_FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic, _UIFocusInternalPreferencesRevisionVar == _UIFocusInternalPreference_FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIFocusInternalPreferenceSync(v0, &_UIFocusInternalPreference_FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic, @"FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic", _UIFocusInternalPreferenceUpdateBool);
      v3 = _UIFocusInternalPreference_FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic;
    }

    while (v0 != _UIFocusInternalPreference_FocusEnvironmentUseLegacyIsFocusedOrContainsFocusLogic);
  }

  return byte_27F062744 && v1;
}

void sub_24B8AE2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24B8B308C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __addChildFocusGroupsRecursively(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  [v4 addObject:v3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v3 childGroups];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        __addChildFocusGroupsRecursively(*(*(&v10 + 1) + 8 * v9++), v4);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

id _UIHostedFocusSystemsForHostEnvironment(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSHashTable<_UIHostedFocusSystem *> * _Nullable _UIHostedFocusSystemsForHostEnvironment(__strong id<UIFocusEnvironment> _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"_UIHostedFocusSystem.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"hostEnvironment"}];
  }

  v2 = [_MergedGlobals_1 objectForKey:v1];

  return v2;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}