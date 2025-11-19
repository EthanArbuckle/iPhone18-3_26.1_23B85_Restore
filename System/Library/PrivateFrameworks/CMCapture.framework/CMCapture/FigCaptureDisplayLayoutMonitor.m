@interface FigCaptureDisplayLayoutMonitor
+ (id)sharedContinuityDisplayLayoutMonitor;
+ (id)sharedDisplayLayoutMonitor;
+ (id)sharedExternalDisplayLayoutMonitor;
+ (void)initialize;
- (BOOL)isOnHomeScreen;
- (BOOL)isOnLockScreen;
- (FigCaptureDisplayLayout)currentLayout;
- (FigCaptureDisplayLayoutMonitor)initWithFBSDisplayLayoutMonitorCreateFunction:(void *)a3 displayType:(int64_t)a4;
- (NSString)debugDescription;
- (NSString)description;
- (id)osStatePropertyList;
- (uint64_t)_displayIdentityForDisplayInfo:(uint64_t)a1;
- (uint64_t)_isFBSDisplayLayoutOnHomeScreen:(uint64_t)result;
- (uint64_t)_isFBSDisplayLayoutOnLockScreen:(uint64_t)result;
- (uint64_t)_parseFBSDisplayLayout:(uint64_t)result;
- (uint64_t)_stopMonitoringDisplayWithIdentity:(uint64_t)result;
- (void)_addLayoutObserver:(int)a3 withImmediateCallback:;
- (void)_startMonitoringDisplayWithIdentity:(uint64_t)a1;
- (void)_updateObserversWithLayout:(uint64_t)a1;
- (void)dealloc;
- (void)externalDisplayDidConnect:(id)a3;
- (void)externalDisplayWillDisconnect:(id)a3;
- (void)removeLayoutObserver:(id)a3;
@end

@implementation FigCaptureDisplayLayoutMonitor

- (NSString)debugDescription
{
  displayType = self->_displayType;
  if (displayType > 2)
  {
    return 0;
  }

  else
  {
    return &off_1E7999778[displayType]->isa;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureDisplayLayoutMonitor debugDescription](self, "debugDescription")];
}

+ (id)sharedDisplayLayoutMonitor
{
  if ((os_variant_is_darwinos() & 1) == 0 && qword_1ED844F68 != -1)
  {
    dispatch_once(&qword_1ED844F68, &__block_literal_global_84);
  }

  return _MergedGlobals_8;
}

+ (id)sharedContinuityDisplayLayoutMonitor
{
  if ((os_variant_is_darwinos() & 1) == 0 && qword_1ED844F88 != -1)
  {
    dispatch_once(&qword_1ED844F88, &__block_literal_global_19);
  }

  return qword_1ED844F80;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

FigCaptureDisplayLayoutMonitor *__60__FigCaptureDisplayLayoutMonitor_sharedDisplayLayoutMonitor__block_invoke()
{
  result = [[FigCaptureDisplayLayoutMonitor alloc] initWithFBSDisplayLayoutMonitorCreateFunction:fcdlm_createLayoutMonitorForMainDisplay displayType:0];
  _MergedGlobals_8 = result;
  return result;
}

FigCaptureDisplayLayoutMonitor *__68__FigCaptureDisplayLayoutMonitor_sharedExternalDisplayLayoutMonitor__block_invoke()
{
  result = [[FigCaptureDisplayLayoutMonitor alloc] initWithFBSDisplayLayoutMonitorCreateFunction:fcdlm_createLayoutMonitorForExternalDisplay displayType:1];
  qword_1ED844F70 = result;
  return result;
}

FigCaptureDisplayLayoutMonitor *__70__FigCaptureDisplayLayoutMonitor_sharedContinuityDisplayLayoutMonitor__block_invoke()
{
  result = [[FigCaptureDisplayLayoutMonitor alloc] initWithFBSDisplayLayoutMonitorCreateFunction:fcdlm_createLayoutMonitorForContinuityDisplay displayType:2];
  qword_1ED844F80 = result;
  return result;
}

- (FigCaptureDisplayLayoutMonitor)initWithFBSDisplayLayoutMonitorCreateFunction:(void *)a3 displayType:(int64_t)a4
{
  v19.receiver = self;
  v19.super_class = FigCaptureDisplayLayoutMonitor;
  v6 = [(FigCaptureDisplayLayoutMonitor *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_displayType = a4;
    v6->_layoutObserversLock = FigSimpleMutexCreate();
    v7->_layoutObservers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7->_layoutLock = FigSimpleMutexCreate();
    v7->_layout = [[FigCaptureDisplayLayout alloc] _init];
    -[FigCaptureDisplayLayout setTimestamp:](v7->_layout, "setTimestamp:", [MEMORY[0x1E695DF00] date]);
    [(FigCaptureDisplayLayout *)v7->_layout setDisplayType:v7->_displayType];
    if (dword_1ED8440F0)
    {
      v18 = 0;
      v17 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    objc_initWeak(location, v7);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __92__FigCaptureDisplayLayoutMonitor_initWithFBSDisplayLayoutMonitorCreateFunction_displayType___block_invoke;
    v14[3] = &unk_1E7999730;
    objc_copyWeak(&v15, location);
    v7->_displayConnected = v7->_displayType == 0;
    v7->_layoutMonitor = (a3)(v14);
    displayType = v7->_displayType;
    if (displayType == 1)
    {
      v10 = objc_alloc_init(MEMORY[0x1E69D4218]);
      v7->_externalDisplayService = v10;
      [(SBSExternalDisplayService *)v10 addObserver:v7];
      displayType = v7->_displayType;
    }

    if (displayType > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E7999778[displayType];
    }

    v7->_osStateHandle = -[FigCaptureOSStateHandle initWithTitle:queue:dataProvider:]([FigCaptureOSStateHandle alloc], "initWithTitle:queue:dataProvider:", [MEMORY[0x1E696AEC0] stringWithFormat:@"LayoutMonitor - %@", v11, v13], 0, v7);
    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  return v7;
}

uint64_t __92__FigCaptureDisplayLayoutMonitor_initWithFBSDisplayLayoutMonitorCreateFunction_displayType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  Weak = objc_loadWeak((a1 + 32));

  return [(FigCaptureDisplayLayoutMonitor *)Weak _parseFBSDisplayLayout:a3];
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();

  v3.receiver = self;
  v3.super_class = FigCaptureDisplayLayoutMonitor;
  [(FigCaptureDisplayLayoutMonitor *)&v3 dealloc];
}

- (void)removeLayoutObserver:(id)a3
{
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  layoutObservers = self->_layoutObservers;
  v6 = [(NSMutableArray *)layoutObservers countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(layoutObservers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 referencedObject];

        objc_autoreleasePoolPop(v11);
        if (v12 == a3)
        {
          if (v10)
          {
            [(NSMutableArray *)self->_layoutObservers removeObject:v10];
          }

          goto LABEL_12;
        }
      }

      v7 = [(NSMutableArray *)layoutObservers countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
  FigSimpleMutexUnlock();
  FigSimpleMutexUnlock();
}

- (FigCaptureDisplayLayout)currentLayout
{
  FigSimpleMutexLock();
  v3 = self->_layout;
  FigSimpleMutexUnlock();
  return v3;
}

- (BOOL)isOnHomeScreen
{
  v3 = [(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout];

  return [(FigCaptureDisplayLayoutMonitor *)self _isFBSDisplayLayoutOnHomeScreen:v3];
}

- (BOOL)isOnLockScreen
{
  v3 = [(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout];

  return [(FigCaptureDisplayLayoutMonitor *)self _isFBSDisplayLayoutOnLockScreen:v3];
}

- (void)_startMonitoringDisplayWithIdentity:(uint64_t)a1
{
  if (a1)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3052000000;
    v14[3] = __Block_byref_object_copy__30;
    v14[4] = __Block_byref_object_dispose__30;
    v14[5] = a1;
    v4 = *(a1 + 8);
    if (v4 == 1)
    {
      v5 = [a2 isExternal];
    }

    else
    {
      if (v4)
      {
LABEL_12:
        _Block_object_dispose(v14, 8);
        return;
      }

      v5 = [a2 isMainDisplay];
    }

    if (v5)
    {
      if ([a2 isExternal])
      {
        v6 = SBSCreateLayoutServiceEndpointForExternalDisplay();
        if (v6)
        {
          if (dword_1ED8440F0)
          {
            v13 = 0;
            v12 = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __70__FigCaptureDisplayLayoutMonitor__startMonitoringDisplayWithIdentity___block_invoke;
          v11[3] = &unk_1E7999758;
          v11[4] = v14;
          v8 = [MEMORY[0x1E699FAF8] configurationWithEndpoint:{v6, v9, v10}];
          [v8 setNeedsUserInteractivePriority:1];
          [v8 setTransitionHandler:v11];
          FigSimpleMutexLock();
          *(a1 + 40) = 1;
          [*(a1 + 64) invalidate];

          *(a1 + 64) = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v8];
          FigSimpleMutexUnlock();
        }
      }
    }

    goto LABEL_12;
  }
}

- (id)osStatePropertyList
{
  v3 = [MEMORY[0x1E695DF70] array];
  FigSimpleMutexLock();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  layoutObservers = self->_layoutObservers;
  v5 = [(NSMutableArray *)layoutObservers countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(layoutObservers);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 referencedObject];
        [v3 addObject:{objc_msgSend(v11, "description")}];

        objc_autoreleasePoolPop(v10);
      }

      v6 = [(NSMutableArray *)layoutObservers countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v6);
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  displayConnected = self->_displayConnected;
  v13 = [(FigCaptureDisplayLayout *)self->_layout description];
  if ([(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout])
  {
    v14 = [objc_msgSend(-[FBSDisplayLayoutMonitor currentLayout](self->_layoutMonitor "currentLayout")];
  }

  else
  {
    v14 = @"nil";
  }

  FigSimpleMutexUnlock();
  v17[0] = [MEMORY[0x1E696AD98] numberWithBool:{displayConnected, @"connected"}];
  v17[1] = v3;
  v16[1] = @"observers";
  v16[2] = @"layout";
  v16[3] = @"FBSDisplayLayout";
  v17[2] = v13;
  v17[3] = v14;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
}

+ (id)sharedExternalDisplayLayoutMonitor
{
  if ((os_variant_is_darwinos() & 1) == 0 && qword_1ED844F78 != -1)
  {
    dispatch_once(&qword_1ED844F78, &__block_literal_global_17_0);
  }

  return qword_1ED844F70;
}

- (uint64_t)_parseFBSDisplayLayout:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v57 = [MEMORY[0x1E695DF70] array];
  v54 = [MEMORY[0x1E695DF70] array];
  v59 = [MEMORY[0x1E695DF70] array];
  v46 = [MEMORY[0x1E695DF70] array];
  result = [MEMORY[0x1E695DF70] array];
  v47 = result;
  if (dword_1ED8440F0)
  {
    v73 = 0;
    v72 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    v5 = *(v3 + 8);
    if (!v5)
    {
      result = [objc_msgSend(a2 "displayConfiguration")];
      if (result)
      {
        goto LABEL_13;
      }

      v5 = *(v3 + 8);
    }

    if (v5 == 1)
    {
      result = [objc_msgSend(a2 "displayConfiguration")];
      if (result)
      {
        goto LABEL_13;
      }

      v5 = *(v3 + 8);
    }

    if (v5 != 2)
    {
      return result;
    }

    result = [objc_msgSend(a2 "displayConfiguration")];
    if (!result)
    {
      return result;
    }
  }

LABEL_13:
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v6 = [a2 elements];
  v7 = [v6 countByEnumeratingWithState:&v68 objects:v67 count:16];
  v60 = v3;
  if (!v7)
  {
    v9 = 0;
LABEL_25:
    FigSimpleMutexLock();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v16 = [a2 elements];
    v17 = [v16 countByEnumeratingWithState:&v63 objects:v62 count:16];
    if (!v17)
    {
      OUTLINED_FUNCTION_7_51();
      goto LABEL_64;
    }

    v18 = v17;
    OUTLINED_FUNCTION_7_51();
    v19 = *v64;
    v55 = *MEMORY[0x1E699F8B0];
    v53 = *MEMORY[0x1E699F8A8];
    v52 = *MEMORY[0x1E699F8A0];
    v51 = *MEMORY[0x1E699F898];
    v50 = *MEMORY[0x1E69D43B8];
    v49 = *MEMORY[0x1E69D4408];
    v48 = *MEMORY[0x1E69D4418];
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v64 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v63 + 1) + 8 * i);
        [v21 frame];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        [a2 bounds];
        v75.origin.x = v30;
        v75.origin.y = v31;
        v75.size.width = v32;
        v75.size.height = v33;
        v74.origin.x = v23;
        v74.origin.y = v25;
        v74.size.width = v27;
        v74.size.height = v29;
        v34 = CGRectEqualToRect(v74, v75);
        if ([v21 isUIApplicationElement])
        {
          if ([v21 level] < v9)
          {
            v35 = [v21 bundleIdentifier];
            v36 = v59;
LABEL_34:
            [v36 addObject:v35];
            continue;
          }

          if ([v21 layoutRole] == 5)
          {
            if (([v21 sb_isStashedPIP] & 1) == 0)
            {
              v35 = [v21 bundleIdentifier];
              v36 = v47;
              goto LABEL_34;
            }
          }

          else
          {
            if (([v57 containsObject:{objc_msgSend(v21, "bundleIdentifier")}] & 1) == 0 && (objc_msgSend(v54, "containsObject:", objc_msgSend(v21, "bundleIdentifier")) & 1) == 0)
            {
              v38 = [v21 bundleIdentifier];
              if (v34)
              {
                v39 = v57;
              }

              else
              {
                v39 = v54;
              }

              [v39 addObject:v38];
            }

            if ([v21 level] > v58)
            {
              v58 = [v21 level];
            }

            if ([v21 sb_isTransitioning])
            {
              v35 = [v21 bundleIdentifier];
              v36 = v46;
              goto LABEL_34;
            }
          }
        }

        else
        {
          v37 = [v21 bundleIdentifier];
          if ([v37 length])
          {
            if (!v34)
            {
              continue;
            }
          }

          else
          {
            v37 = [v21 identifier];
            if (!v34)
            {
              continue;
            }
          }

          if (!*(v60 + 56))
          {
            v61[0] = v55;
            v61[1] = v53;
            v61[2] = v52;
            v61[3] = v51;
            v61[4] = @"com.apple.CMViewSrvc";
            v61[5] = v50;
            v61[6] = v49;
            v61[7] = v48;
            v61[8] = @"SBControlCenterModuleTransientOverlayViewController";
            v61[9] = 0x1F2185450;
            v61[10] = 0x1F2185470;
            *(v60 + 56) = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:11];
          }

          if ([v37 hasPrefix:@"SUIS-ProximityReaderSceneUI-ProximityReader:"])
          {
            v56 = 1;
          }

          else if ([v37 hasPrefix:@"SUIS-ProximityReaderSceneUI-ProximityReaderIDVerifier:"])
          {
            v45 = 1;
          }

          else if ([*(v60 + 56) containsObject:v37])
          {
            v44 |= [v37 isEqualToString:v55];
          }

          else if ([v21 level] >= v43)
          {
            v42 = v37;
            v43 = [v21 level];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v63 objects:v62 count:16];
      v3 = v60;
      if (!v18)
      {
LABEL_64:
        if (v43 > v58 || (v56 & 1) != 0 || (v45 & 1) != 0)
        {
          [v59 addObjectsFromArray:v57];
          [v59 addObjectsFromArray:v54];
          [v59 addObjectsFromArray:v47];
          [v57 removeAllObjects];
          [v54 removeAllObjects];
          [v47 removeAllObjects];
          if (!((v42 == 0) | (v56 | v45) & 1))
          {
            [v57 addObject:v42];
          }
        }

        [v57 count];
        [v54 count];

        *(v3 + 48) = [[FigCaptureDisplayLayout alloc] _init];
        [a2 timestamp];
        [OUTLINED_FUNCTION_6_53() setTimestamp:?];
        [*(v3 + 48) setDisplayType:*(v3 + 8)];
        [v57 arrayByAddingObjectsFromArray:v54];
        [OUTLINED_FUNCTION_6_53() setForegroundApps:?];
        [MEMORY[0x1E695DEC8] arrayWithArray:v59];
        [OUTLINED_FUNCTION_6_53() setObscuredApps:?];
        [MEMORY[0x1E695DEC8] arrayWithArray:v46];
        [OUTLINED_FUNCTION_6_53() setTransitioningApps:?];
        [MEMORY[0x1E695DEC8] arrayWithArray:v47];
        [OUTLINED_FUNCTION_6_53() setPipApps:?];
        [*(v3 + 48) setOnHomeScreen:{-[FigCaptureDisplayLayoutMonitor _isFBSDisplayLayoutOnHomeScreen:](v3, a2)}];
        [*(v3 + 48) setOnLockScreen:{-[FigCaptureDisplayLayoutMonitor _isFBSDisplayLayoutOnLockScreen:](v3, a2)}];
        [*(v3 + 48) setSiriVisible:v44 & 1];
        [*(v3 + 48) setPaymentServiceVisible:v56 & 1];
        [*(v3 + 48) setPaymentServiceIDVerifierVisible:v45 & 1];
        if (*(v3 + 8) == 2)
        {
          *(v3 + 40) = a2 != 0;
        }

        [(FigCaptureDisplayLayoutMonitor *)v3 _updateObserversWithLayout:?];
        return FigSimpleMutexUnlock();
      }
    }
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v69;
  v12 = *MEMORY[0x1E69D43B8];
  v13 = *MEMORY[0x1E699F8A0];
  do
  {
    v14 = 0;
    do
    {
      if (*v69 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v68 + 1) + 8 * v14);
      if ([objc_msgSend(v15 "identifier")])
      {
        v10 = 1;
      }

      else if ([objc_msgSend(v15 "identifier")])
      {
        v9 = [v15 level];
      }

      ++v14;
    }

    while (v8 != v14);
    result = [v6 countByEnumeratingWithState:&v68 objects:v67 count:16];
    v8 = result;
  }

  while (result);
  v3 = v60;
  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }

  return result;
}

- (void)_addLayoutObserver:(int)a3 withImmediateCallback:
{
  if (a1)
  {
    v6 = [[FigWeakReference alloc] initWithReferencedObject:a2];
    FigSimpleMutexLock();
    [*(a1 + 24) addObject:v6];
    FigSimpleMutexUnlock();

    if (a3)
    {
      FigSimpleMutexLock();
      [a2 layoutMonitor:a1 didUpdateLayout:*(a1 + 48)];

      FigSimpleMutexUnlock();
    }
  }
}

- (uint64_t)_isFBSDisplayLayoutOnHomeScreen:(uint64_t)result
{
  if (result)
  {
    if ([objc_msgSend(a2 "elements")] == 1 || objc_msgSend(objc_msgSend(a2, "elements"), "count") == 2)
    {
      v3 = OUTLINED_FUNCTION_10_37();
      OUTLINED_FUNCTION_43();
      v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        v8 = *MEMORY[0x1E69D43D8];
        v9 = *MEMORY[0x1E69D43D0];
LABEL_6:
        v10 = 0;
        while (1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(v12 + 8 * v10);
          if (([objc_msgSend(v11 "identifier")] & 1) == 0)
          {
            result = [objc_msgSend(v11 "identifier")];
            if (!result)
            {
              break;
            }
          }

          if (v6 == ++v10)
          {
            OUTLINED_FUNCTION_43();
            v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
            if (v6)
            {
              goto LABEL_6;
            }

            return 1;
          }
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_isFBSDisplayLayoutOnLockScreen:(uint64_t)result
{
  if (result)
  {
    result = [a2 displayBacklightLevel];
    if (result)
    {
      v2 = OUTLINED_FUNCTION_10_37();
      OUTLINED_FUNCTION_43();
      v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
      if (v4)
      {
        v5 = v4;
        v6 = *v15;
        v7 = *MEMORY[0x1E699F8A0];
        v8 = 0x8000000000000000;
        v9 = 0x8000000000000000;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v15 != v6)
            {
              objc_enumerationMutation(v2);
            }

            v11 = *(v14 + 8 * i);
            v12 = [objc_msgSend(v11 "identifier")];
            v13 = [v11 level];
            if (v12)
            {
              v8 = v13;
            }

            else if (v13 > v9)
            {
              v9 = [v11 level];
            }
          }

          OUTLINED_FUNCTION_43();
          v5 = [v2 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v5);
      }

      else
      {
        v8 = 0x8000000000000000;
        v9 = 0x8000000000000000;
      }

      return v8 > v9;
    }
  }

  return result;
}

- (uint64_t)_stopMonitoringDisplayWithIdentity:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 8);
    if (v3 == 1)
    {
      result = [a2 isExternal];
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (v3)
      {
        return result;
      }

      result = [a2 isMainDisplay];
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    if (dword_1ED8440F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    *(v2 + 40) = 0;
    [*(v2 + 64) invalidate];

    *(v2 + 64) = 0;
    *(v2 + 48) = [[FigCaptureDisplayLayout alloc] _init];
    [*(v2 + 48) setTimestamp:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
    [*(v2 + 48) setDisplayType:*(v2 + 8)];
    [(FigCaptureDisplayLayoutMonitor *)v2 _updateObserversWithLayout:?];
    return FigSimpleMutexUnlock();
  }

  return result;
}

- (void)_updateObserversWithLayout:(uint64_t)a1
{
  if (a1)
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (dword_1ED8440F0)
    {
      v74 = 0;
      v73 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v5 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_5_24(v5))
      {
        v67 = 136315650;
        v68 = "[FigCaptureDisplayLayoutMonitor _updateObserversWithLayout:]";
        v69 = 2114;
        v70 = a1;
        v71 = 2114;
        v72 = a2;
        LODWORD(v32) = 32;
        v30 = &v67;
        OUTLINED_FUNCTION_5_0();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    v6 = [*(a1 + 24) copy];
    v7 = FigSimpleMutexUnlock();
    v15 = OUTLINED_FUNCTION_17_0(v7, v8, v9, v10, v11, v12, v13, v14, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, 0);
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (MEMORY[0] != v17)
          {
            objc_enumerationMutation(v6);
          }

          v19 = *(8 * i);
          v20 = objc_autoreleasePoolPush();
          v21 = [v19 referencedObject];
          [v21 layoutMonitor:a1 didUpdateLayout:a2];

          objc_autoreleasePoolPop(v20);
        }

        v16 = OUTLINED_FUNCTION_17_0(v22, v23, v24, v25, v26, v27, v28, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v66);
      }

      while (v16);
    }
  }
}

- (uint64_t)_displayIdentityForDisplayInfo:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E699FB10]);
  v5 = [v4 connectedIdentities];
  OUTLINED_FUNCTION_43();
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(8 * i);
        v12 = *(a1 + 8);
        if (v12 == 1)
        {
          if (![*(8 * i) isExternal])
          {
            continue;
          }
        }

        else if (v12 || ([*(8 * i) isMainDisplay] & 1) == 0)
        {
          continue;
        }

        if ([objc_msgSend(a2 "identifier")])
        {
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_43();
      v8 = [v5 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }

  v11 = 0;
LABEL_16:
  [v4 invalidate];

  return v11;
}

- (void)externalDisplayDidConnect:(id)a3
{
  if (dword_1ED8440F0)
  {
    v4 = OUTLINED_FUNCTION_4_62();
    v5 = OUTLINED_FUNCTION_36_0(v4);
    if (OUTLINED_FUNCTION_5_24(v5))
    {
      OUTLINED_FUNCTION_2_78();
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = OUTLINED_FUNCTION_3_19();
  v8 = [(FigCaptureDisplayLayoutMonitor *)v6 _displayIdentityForDisplayInfo:v7];
  if (self)
  {
    displayType = self->_displayType;
    if (displayType == 1)
    {
      if (![v8 isExternal])
      {
        return;
      }

      goto LABEL_9;
    }

    if (!displayType && ([v8 isMainDisplay] & 1) != 0)
    {
LABEL_9:
      v10 = OUTLINED_FUNCTION_3_19();
      [(FigCaptureDisplayLayoutMonitor *)v10 _startMonitoringDisplayWithIdentity:v11];
    }
  }
}

- (void)externalDisplayWillDisconnect:(id)a3
{
  if (dword_1ED8440F0)
  {
    v4 = OUTLINED_FUNCTION_4_62();
    v5 = OUTLINED_FUNCTION_36_0(v4);
    if (OUTLINED_FUNCTION_5_24(v5))
    {
      OUTLINED_FUNCTION_2_78();
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = OUTLINED_FUNCTION_3_19();
  v8 = [(FigCaptureDisplayLayoutMonitor *)v6 _displayIdentityForDisplayInfo:v7];
  if (self)
  {
    displayType = self->_displayType;
    if (displayType == 1)
    {
      if (![v8 isExternal])
      {
        return;
      }
    }

    else if (displayType || ([v8 isMainDisplay] & 1) == 0)
    {
      return;
    }

    v10 = OUTLINED_FUNCTION_3_19();
    [(FigCaptureDisplayLayoutMonitor *)v10 _stopMonitoringDisplayWithIdentity:v11];
  }
}

@end