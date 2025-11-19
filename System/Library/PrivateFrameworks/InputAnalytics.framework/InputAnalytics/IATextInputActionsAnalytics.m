@interface IATextInputActionsAnalytics
- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)a3;
- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)a3 withEventHandler:(id)a4;
- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)a3 withServiceName:(id)a4;
- (IATextInputActionsMetadataObserving)analyticsDelegate;
- (id)_instanceOfActionClass:(Class)a3;
- (void)_didDeleteBackwardAction:(id)a3;
- (void)_didDeleteBackwardTextDetails:(id)a3 withType:(int64_t)a4 shouldOverrideInputActionCountToZero:(BOOL)a5 withInputMode:(id)a6 forceNotMarkedText:(BOOL)a7;
- (void)_didDeletionKeyPressOfKey:(id)a3 withType:(int64_t)a4;
- (void)_didInsertTextAction:(id)a3;
- (void)_didInsertionKeyPressOfKey:(id)a3 withType:(int64_t)a4;
- (void)_didReplacementForText:(id)a3 withText:(id)a4 allowNilText:(BOOL)a5 allowEmptyText:(BOOL)a6 allowNilReplacement:(BOOL)a7 withSource:(int64_t)a8 withType:(int64_t)a9 withInputActionCount:(int64_t)a10;
- (void)didAutocorrectReplacementForText:(id)a3 withText:(id)a4;
- (void)didAutocorrectTapOnCompletionReplacementForText:(id)a3 withText:(id)a4;
- (void)didCalloutBarReplacementForText:(id)a3 withText:(id)a4;
- (void)didCandidateBarAction;
- (void)didCandidateBarReplacementForText:(id)a3 withText:(id)a4;
- (void)didChangeToSelection:(_NSRange)a3 relativeRangeBefore:(_NSRange)a4;
- (void)didCommitText:(id)a3;
- (void)didCompositionReplacementForText:(id)a3 withText:(id)a4;
- (void)didConversionForMarkedText:(id)a3 withText:(id)a4;
- (void)didCopy:(id)a3;
- (void)didCut:(id)a3;
- (void)didDecompositionReplacementForText:(id)a3 withText:(id)a4;
- (void)didDeleteBackwardText:(id)a3;
- (void)didDeleteBackwardText:(id)a3 withType:(int64_t)a4;
- (void)didDeleteBackwardText:(id)a3 withType:(int64_t)a4 withInputMode:(id)a5;
- (void)didDeletionKeyPress;
- (void)didDeletionKeyPressOfKey:(id)a3 withType:(int64_t)a4;
- (void)didDictationBegin:(BOOL)a3 usesMultiModalDictation:(BOOL)a4;
- (void)didDictationEnd;
- (void)didGlomojiTap:(id)a3 newInputMode:(id)a4;
- (void)didGlomojiTap:(unint64_t)a3 originalInputMode:(id)a4 newInputMode:(id)a5;
- (void)didInlineCompletionReplacementForText:(id)a3 withText:(id)a4;
- (void)didInlineCompletionTapOnCompletionReplacementForText:(id)a3 withText:(id)a4;
- (void)didInsertText:(id)a3 withType:(int64_t)a4 relativeRangeBefore:(_NSRange)a5 withNumAlternatives:(int64_t)a6 selectedTextBefore:(id)a7 withInputMode:(id)a8;
- (void)didInsertionKeyPress;
- (void)didInsertionKeyPressOfKey:(id)a3 withType:(int64_t)a4;
- (void)didKBMenuAppear:(id)a3;
- (void)didKBMenuAppear:(unint64_t)a3 originalInputMode:(id)a4;
- (void)didKBMenuDismiss:(unint64_t)a3;
- (void)didKBMenuInteraction:(unint64_t)a3 selectedAction:(unint64_t)a4 newInputMode:(id)a5;
- (void)didKeyboardDockItemButtonPress:(unint64_t)a3 buttonType:(unint64_t)a4 buttonSize:(CGSize)a5 touchDown:(CGPoint)a6 touchUp:(CGPoint)a7 touchDuration:(double)a8 inputSource:(int64_t)a9 inputType:(int64_t)a10 uiInterfaceOrientation:(int64_t)a11;
- (void)didOther;
- (void)didPaste:(id)a3;
- (void)didRedo;
- (void)didReplaceWithCandidate:(int64_t)a3;
- (void)didRevisionBubbleReplacementForText:(id)a3 withText:(id)a4;
- (void)didRevisionBubbleTap;
- (void)didSessionBegin;
- (void)didSessionEnd;
- (void)didUndo;
- (void)dispatchToAnalyticsQueue:(id)a3;
- (void)flushAndSetLastAction:(id)a3;
- (void)invalidateConnection;
- (void)mergeOrConsumeAction:(id)a3;
- (void)populateActionInputMode:(id)a3 withInputMode:(id)a4;
@end

@implementation IATextInputActionsAnalytics

- (void)didSessionBegin
{
  v3 = sub_1D461074C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C470();
  }

  v4 = objc_opt_class();
  v6 = objc_msgSend__instanceOfActionClass_(self, v5, v4);
  v9 = objc_msgSend_asBegan(v6, v7, v8);

  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1D46106E0;
  v12[3] = &unk_1E84897C8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(queue, v12);
}

- (IATextInputActionsMetadataObserving)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_xpcEnabled(IAUtility, v5, v6);
  v8 = sub_1D461074C();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_1D460F000, v8, OS_LOG_TYPE_INFO, "initWithAnalyticsMetadataObserver service", buf, 2u);
    }

    v11 = objc_msgSend_initWithAnalyticsMetadataObserver_withServiceName_(self, v10, v4, @"com.apple.inputanalyticsd");
  }

  else
  {
    if (v9)
    {
      *v15 = 0;
      _os_log_impl(&dword_1D460F000, v8, OS_LOG_TYPE_INFO, "initWithAnalyticsMetadataObserver in-process", v15, 2u);
    }

    v11 = objc_msgSend_initWithAnalyticsMetadataObserver_withEventHandler_(self, v12, v4, &unk_1F4FDA350);
  }

  v13 = v11;

  return v13;
}

- (void)invalidateConnection
{
  v3 = sub_1D461074C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D460F000, v3, OS_LOG_TYPE_INFO, "invalidateConnection called", buf, 2u);
  }

  objc_msgSend_invalidateConnection(self->_xpcClient, v4, v5);
  xpcClient = self->_xpcClient;
  self->_xpcClient = 0;

  v7 = sub_1D461074C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D460F000, v7, OS_LOG_TYPE_INFO, "invalidateConnection completed", v8, 2u);
  }
}

- (id)_instanceOfActionClass:(Class)a3
{
  v5 = objc_msgSend_analyticsDelegate(self, a2, a3);

  if (!v5)
  {
    v6 = sub_1D461074C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1D462C3AC();
    }
  }

  v7 = objc_opt_class();
  if (objc_msgSend_isSubclassOfClass_(a3, v8, v7))
  {
    v9 = objc_alloc_init(a3);
    v12 = objc_msgSend_analyticsDelegate(self, v10, v11);
    v15 = objc_msgSend_sessionIdentifier(v12, v13, v14);
    objc_msgSend_setSessionIdentifier_(self, v16, v15);

    v19 = objc_msgSend_sessionIdentifier(self, v17, v18);
    objc_msgSend_setTextInputSessionId_(v9, v20, v19);

    v23 = objc_msgSend_analyticsDelegate(self, v21, v22);
    v26 = objc_msgSend_source(v23, v24, v25);
    objc_msgSend_setSource_(v9, v27, v26);

    v30 = objc_msgSend_analyticsDelegate(self, v28, v29);
    v33 = objc_msgSend_flagOptions(v30, v31, v32);
    objc_msgSend_setFlagOptions_(v9, v34, v33);

    v37 = objc_msgSend_analyticsDelegate(self, v35, v36);
    v40 = objc_msgSend_appBundleId(v37, v38, v39);
    objc_msgSend_setAppBundleId_(v9, v41, v40);

    v44 = objc_msgSend_analyticsDelegate(self, v42, v43);
    v47 = objc_msgSend_processBundleId(v44, v45, v46);
    objc_msgSend_setProcessBundleId_(v9, v48, v47);

    v51 = objc_msgSend_string(MEMORY[0x1E696AD60], v49, v50);
    objc_msgSend_setClientSideSessionErrors_(v9, v52, v51);

    v55 = objc_msgSend_analyticsDelegate(self, v53, v54);
    v58 = objc_msgSend_inputMode(v55, v56, v57);
    objc_msgSend_populateActionInputMode_withInputMode_(self, v59, v9, v58);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)flushAndSetLastAction:(id)a3
{
  v5 = a3;
  if (self->_lastAction)
  {
    if (self->_useAnalyticsDaemon)
    {
      v6 = sub_1D461074C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_1D460F000, v6, OS_LOG_TYPE_INFO, "flushAndSetLastAction calling sendSignal:toChannel:withNullableSessionID:withPayload:", v15, 2u);
      }

      v9 = objc_msgSend_textInputSessionId(v5, v7, v8);
      v12 = objc_msgSend_toDictionary(self->_lastAction, v10, v11);
      objc_msgSend_sendSignal_toChannel_withNullableSessionID_withPayload_(IASignalAnalytics, v13, @"DidAction", @"LegacyTextInputActions", v9, v12);
    }

    if (self->_useLocalAnalytics)
    {
      objc_msgSend_consumeAction_(self->_localServer, v4, self->_lastAction);
    }
  }

  lastAction = self->_lastAction;
  self->_lastAction = v5;
}

- (void)mergeOrConsumeAction:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = v5;
  if (v5)
  {
    if (objc_msgSend_flagOptions(v5, v6, v7) >= 9)
    {
      v11 = sub_1D461074C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1D462C3E8(v8, v11, v12);
      }
    }

    if (self->_useAnalyticsDaemon)
    {
      v13 = objc_msgSend_asBegan(v8, v9, v10);

      if (v13)
      {
        v14 = sub_1D461074C();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LOWORD(v43) = 0;
          _os_log_impl(&dword_1D460F000, v14, OS_LOG_TYPE_INFO, "mergeOrConsumeAction calling sendSignal:toChannel:withNullableSessionID:withPayload:", &v43, 2u);
        }

        v17 = objc_msgSend_textInputSessionId(v8, v15, v16);
        v20 = objc_msgSend_toDictionary(v8, v18, v19);
        objc_msgSend_sendSignal_toChannel_withNullableSessionID_withPayload_(IASignalAnalytics, v21, @"DidSessionBegin", @"LegacyTextInputActions", v17, v20);
      }
    }

    v22 = objc_msgSend_asEnd(v8, v9, v10);
    v25 = v22;
    if (v22)
    {
      if (self->_useLocalAnalytics)
      {
        v26 = objc_msgSend_keyboardTrialParameters(v22, v23, v24);
        objc_msgSend_setKeyboardTrialParameters_(self->_localServer, v27, v26);
      }

      objc_msgSend_flushAndSetLastAction_(self, v23, v25);
      objc_msgSend_flushAndSetLastAction_(self, v28, 0);
      if (self->_useAnalyticsDaemon)
      {
        v29 = sub_1D461074C();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          LOWORD(v43) = 0;
          _os_log_impl(&dword_1D460F000, v29, OS_LOG_TYPE_INFO, "mergeOrConsumeAction calling sendSignal:toChannel:withNullableSessionID:withPayload:", &v43, 2u);
        }

        v32 = objc_msgSend_textInputSessionId(v25, v30, v31);
        v35 = objc_msgSend_toDictionary(v25, v33, v34);
        objc_msgSend_sendSignal_toChannel_withNullableSessionID_withPayload_(IASignalAnalytics, v36, @"DidSessionEnd", @"LegacyTextInputActions", v32, v35);
      }
    }

    else
    {
      lastAction = self->_lastAction;
      if (lastAction)
      {
        v38 = objc_msgSend_mergeActionIfPossible_(lastAction, v23, v8);
        v39 = sub_1D461074C();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v42 = self->_lastAction;
          v43 = 134218499;
          v44 = v38;
          v45 = 2113;
          v46 = v42;
          v47 = 2113;
          v48 = v8;
          _os_log_debug_impl(&dword_1D460F000, v39, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] mergeOrConsumeAction: Merge result %lu lastAction:%{private}@ newAction:%{private}@", &v43, 0x20u);
        }

        if (!v38)
        {
          objc_msgSend_flushAndSetLastAction_(self, v40, v8);
        }
      }

      else
      {
        objc_storeStrong(&self->_lastAction, a3);
      }
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)populateActionInputMode:(id)a3 withInputMode:(id)a4
{
  v41 = a3;
  v6 = a4;
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_copy(v6, v7, v8);
    objc_msgSend_setInputMode_(v41, v11, v10);

    v14 = objc_msgSend_analyticsDelegate(self, v12, v13);
    v17 = objc_msgSend_flagOptions(v14, v15, v16);
    LODWORD(v10) = objc_msgSend_isWebSetInFlagOptions_(IATextInputActionsUtils, v18, v17);

    if (v10)
    {
      v21 = objc_msgSend_inputMode(v41, v19, v20);
      v24 = objc_msgSend_keyboardType(v21, v22, v23);
      v27 = objc_msgSend_length(v24, v25, v26);

      v30 = objc_msgSend_inputMode(v41, v28, v29);
      v33 = v30;
      if (v27)
      {
        v34 = objc_msgSend_keyboardType(v30, v31, v32);
        v36 = objc_msgSend_stringByAppendingString_(v34, v35, @"Web");
        v39 = objc_msgSend_inputMode(v41, v37, v38);
        objc_msgSend_setKeyboardType_(v39, v40, v36);
      }

      else
      {
        objc_msgSend_setKeyboardType_(v30, v31, @"Web");
      }
    }
  }
}

- (void)didSessionEnd
{
  v3 = sub_1D461074C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C4A4();
  }

  v4 = objc_opt_class();
  v6 = objc_msgSend__instanceOfActionClass_(self, v5, v4);
  v9 = objc_msgSend_asEnd(v6, v7, v8);

  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);
  v13 = objc_msgSend_keyboardTrialParameters(WeakRetained, v11, v12);
  objc_msgSend_setKeyboardTrialParameters_(v9, v14, v13);

  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1D46135E8;
  v17[3] = &unk_1E84897C8;
  v17[4] = self;
  v18 = v9;
  v16 = v9;
  dispatch_async(queue, v17);
}

- (void)didOther
{
  v2 = sub_1D461074C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C4D8();
  }
}

- (void)didInsertText:(id)a3 withType:(int64_t)a4 relativeRangeBefore:(_NSRange)a5 withNumAlternatives:(int64_t)a6 selectedTextBefore:(id)a7 withInputMode:(id)a8
{
  length = a5.length;
  v56 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a7;
  v15 = a8;
  v16 = sub_1D461074C();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v49 = objc_msgSend_description(v15, v18, v19);
      v50 = 138478339;
      v51 = v13;
      v52 = 2113;
      v53 = v14;
      v54 = 2113;
      v55 = v49;
      _os_log_debug_impl(&dword_1D460F000, v17, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] didInsertText:%{private}@ selectedTextBefore:%{private}@ withInputMode:%{private}@", &v50, 0x20u);
    }

    if (objc_msgSend_length(v14, v20, v21))
    {
      objc_msgSend__didDeleteBackwardText_withType_shouldOverrideInputActionCountToZero_withInputMode_forceNotMarkedText_(self, v22, v14, a4, 1, v15, 1);
    }

    else if (!v14 && length)
    {
      objc_msgSend__didDeleteBackwardCount_withType_shouldOverrideInputActionCountToZero_withInputMode_forceNotMarkedText_(self, v22, length, a4, 1, v15, 1);
    }

    v23 = objc_opt_class();
    v25 = objc_msgSend__instanceOfActionClass_(self, v24, v23);
    v17 = objc_msgSend_asInsertion(v25, v26, v27);

    objc_msgSend_setTextInputActionsType_(v17, v28, a4);
    objc_msgSend_setWithAlternativesCount_(v17, v29, a6 > 0);
    objc_msgSend_populateActionInputMode_withInputMode_(self, v30, v17, v15);
    v32 = objc_msgSend_getDetailsForString_(IAStringDetails, v31, v13);
    v35 = objc_msgSend_characters(v32, v33, v34);
    objc_msgSend_setInsertedTextLength_(v17, v36, v35);
    v39 = objc_msgSend_emojiCharacters(v32, v37, v38);
    objc_msgSend_setInsertedEmojiCount_(v17, v40, v39);
    if (objc_msgSend_textIsTooLong(v32, v41, v42))
    {
      v45 = objc_msgSend_clientSideSessionErrors(v17, v43, v44);
      objc_msgSend_appendString_(v45, v46, @"T");
    }

    objc_msgSend__didInsertTextAction_(self, v47, v17);
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1D462C50C();
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)_didInsertTextAction:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_flagOptions(v4, v5, v6);
  if (objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v8, v7))
  {
    if (objc_msgSend_source(v4, v9, v10) == 5)
    {
      objc_msgSend_setSource_(v4, v11, 4);
      if (objc_msgSend_insertedEmojiCount(v4, v12, v13) == 1 && objc_msgSend_insertedTextLength(v4, v14, v15) == 1)
      {
        objc_msgSend_setInputActionCountFromMergedActions_(v4, v16, 1);
      }
    }
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1D4613A08;
  v19[3] = &unk_1E84897C8;
  v19[4] = self;
  v20 = v4;
  v18 = v4;
  dispatch_async(queue, v19);
}

- (void)_didDeleteBackwardTextDetails:(id)a3 withType:(int64_t)a4 shouldOverrideInputActionCountToZero:(BOOL)a5 withInputMode:(id)a6 forceNotMarkedText:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v12 = a3;
  v13 = a6;
  if (v12)
  {
    v14 = objc_opt_class();
    v16 = objc_msgSend__instanceOfActionClass_(self, v15, v14);
    v19 = objc_msgSend_asDeletion(v16, v17, v18);

    objc_msgSend_setTextInputActionsType_(v19, v20, a4);
    v23 = objc_msgSend_characters(v12, v21, v22);
    objc_msgSend_setRemovedTextLength_(v19, v24, v23);
    v27 = objc_msgSend_emojiCharacters(v12, v25, v26);
    objc_msgSend_setRemovedEmojiCount_(v19, v28, v27);
    if (objc_msgSend_textIsTooLong(v12, v29, v30))
    {
      v33 = objc_msgSend_clientSideSessionErrors(v19, v31, v32);
      objc_msgSend_appendString_(v33, v34, @"T");
    }

    objc_msgSend_populateActionInputMode_withInputMode_(self, v31, v19, v13);
    if (v9)
    {
      v37 = objc_msgSend_inputActionCount(v19, v35, v36);
      objc_msgSend_setInputActionCountFromMergedActions_(v19, v38, -v37);
    }

    if (v7)
    {
      v39 = objc_msgSend_flagOptions(v19, v35, v36);
      objc_msgSend_setFlagOptions_(v19, v40, v39 & 0xFFFFFFFFFFFFFFFDLL);
    }

    objc_msgSend__didDeleteBackwardAction_(self, v35, v19);
  }

  else
  {
    v41 = sub_1D461074C();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1D462C59C();
    }
  }
}

- (void)didDeleteBackwardText:(id)a3
{
  v4 = a3;
  v5 = sub_1D461074C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C5D8();
  }

  objc_msgSend_didDeleteBackwardText_withType_(self, v6, v4, 1);
}

- (void)didDeleteBackwardText:(id)a3 withType:(int64_t)a4
{
  v6 = a3;
  v7 = sub_1D461074C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C64C();
  }

  objc_msgSend__didDeleteBackwardText_withType_shouldOverrideInputActionCountToZero_withInputMode_forceNotMarkedText_(self, v8, v6, a4, 0, 0, 0);
}

- (void)didDeleteBackwardText:(id)a3 withType:(int64_t)a4 withInputMode:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = sub_1D461074C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_msgSend_stringForType_(IATextInputActionsUtils, v11, a4);
    v17 = objc_msgSend_description(v9, v15, v16);
    v18 = 138740483;
    v19 = v8;
    v20 = 2113;
    v21 = v14;
    v22 = 2113;
    v23 = v17;
    _os_log_debug_impl(&dword_1D460F000, v10, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] didDeleteBackwardText:%{sensitive}@ withType:%{private}@ withInputMode:'%{private}@'", &v18, 0x20u);
  }

  objc_msgSend__didDeleteBackwardText_withType_shouldOverrideInputActionCountToZero_withInputMode_forceNotMarkedText_(self, v12, v8, a4, 0, v9, 0);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)_didDeleteBackwardAction:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1D4613FC4;
  v7[3] = &unk_1E84897C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)didChangeToSelection:(_NSRange)a3 relativeRangeBefore:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3.length;
  v7 = a3.location;
  v31 = *MEMORY[0x1E69E9840];
  if (a3.length != a4.length || a3.location != a4.location)
  {
    v9 = sub_1D461074C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218752;
      v24 = v7;
      v25 = 2048;
      v26 = v6;
      v27 = 2048;
      v28 = location;
      v29 = 2048;
      v30 = length;
      _os_log_debug_impl(&dword_1D460F000, v9, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] didChangeToSelection:(%lu, %lu) rangeBefore:(%lu, %lu)", buf, 0x2Au);
    }

    v10 = objc_opt_class();
    v12 = objc_msgSend__instanceOfActionClass_(self, v11, v10);
    v15 = objc_msgSend_asSelection(v12, v13, v14);

    objc_msgSend_setRelativeRangeBefore_(v15, v16, location, length);
    objc_msgSend_setRangeAfter_(v15, v17, v7, v6);
    queue = self->_queue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1D4614188;
    v21[3] = &unk_1E84897C8;
    v21[4] = self;
    v22 = v15;
    v19 = v15;
    dispatch_async(queue, v21);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)didCopy:(id)a3
{
  v4 = sub_1D461074C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C790();
  }

  v5 = objc_opt_class();
  v7 = objc_msgSend__instanceOfActionClass_(self, v6, v5);
  v10 = objc_msgSend_asCopy(v7, v8, v9);

  objc_msgSend_setTextInputActionsType_(v10, v11, 11);
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1D4614294;
  v14[3] = &unk_1E84897C8;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  dispatch_async(queue, v14);
}

- (void)didCut:(id)a3
{
  v4 = sub_1D461074C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C7C4();
  }

  v5 = objc_opt_class();
  v7 = objc_msgSend__instanceOfActionClass_(self, v6, v5);
  v10 = objc_msgSend_asCut(v7, v8, v9);

  objc_msgSend_setTextInputActionsType_(v10, v11, 10);
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1D46143A0;
  v14[3] = &unk_1E84897C8;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  dispatch_async(queue, v14);
}

- (void)didPaste:(id)a3
{
  v4 = sub_1D461074C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C7F8();
  }

  v5 = objc_opt_class();
  v7 = objc_msgSend__instanceOfActionClass_(self, v6, v5);
  v10 = objc_msgSend_asPaste(v7, v8, v9);

  objc_msgSend_setTextInputActionsType_(v10, v11, 12);
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1D46144AC;
  v14[3] = &unk_1E84897C8;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  dispatch_async(queue, v14);
}

- (void)didUndo
{
  v3 = sub_1D461074C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C82C();
  }

  v4 = objc_opt_class();
  v6 = objc_msgSend__instanceOfActionClass_(self, v5, v4);
  v9 = objc_msgSend_asUndo(v6, v7, v8);

  objc_msgSend_setTextInputActionsType_(v9, v10, 13);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1D46145B8;
  v13[3] = &unk_1E84897C8;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  dispatch_async(queue, v13);
}

- (void)didRedo
{
  v3 = sub_1D461074C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C860();
  }

  v4 = objc_opt_class();
  v6 = objc_msgSend__instanceOfActionClass_(self, v5, v4);
  v9 = objc_msgSend_asRedo(v6, v7, v8);

  objc_msgSend_setTextInputActionsType_(v9, v10, 14);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1D46146C4;
  v13[3] = &unk_1E84897C8;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  dispatch_async(queue, v13);
}

- (void)_didReplacementForText:(id)a3 withText:(id)a4 allowNilText:(BOOL)a5 allowEmptyText:(BOOL)a6 allowNilReplacement:(BOOL)a7 withSource:(int64_t)a8 withType:(int64_t)a9 withInputActionCount:(int64_t)a10
{
  v16 = a3;
  v19 = a4;
  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = &stru_1F4FDAA18;
  }

  if (v16 || a5)
  {
    if (objc_msgSend_length(v20, v17, v18) || a6)
    {
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = &stru_1F4FDAA18;
      }

      if (v19 || a7)
      {
        v23 = objc_opt_class();
        v25 = objc_msgSend__instanceOfActionClass_(self, v24, v23);
        v28 = objc_msgSend_asReplaceText(v25, v26, v27);

        objc_msgSend_setSource_(v28, v29, a8);
        objc_msgSend_setTextInputActionsType_(v28, v30, a9);
        v32 = objc_msgSend_getDetailsForString_(IAStringDetails, v31, v20);
        v35 = objc_msgSend_characters(v32, v33, v34);
        objc_msgSend_setRemovedTextLength_(v28, v36, v35);
        v39 = objc_msgSend_emojiCharacters(v32, v37, v38);
        objc_msgSend_setRemovedEmojiCount_(v28, v40, v39);
        if (objc_msgSend_textIsTooLong(v32, v41, v42))
        {
          v45 = objc_msgSend_clientSideSessionErrors(v28, v43, v44);
          objc_msgSend_appendString_(v45, v46, @"T");
        }

        v48 = objc_msgSend_getDetailsForString_(IAStringDetails, v47, v21);
        v51 = objc_msgSend_characters(v48, v49, v50);
        objc_msgSend_setInsertedTextLength_(v28, v52, v51);
        v55 = objc_msgSend_emojiCharacters(v48, v53, v54);
        objc_msgSend_setInsertedEmojiCount_(v28, v56, v55);
        if (objc_msgSend_textIsTooLong(v48, v57, v58))
        {
          v61 = objc_msgSend_clientSideSessionErrors(v28, v59, v60);
          objc_msgSend_appendString_(v61, v62, @"T");
        }

        v63 = objc_msgSend_inputActionCount(v28, v59, v60);
        objc_msgSend_setInputActionCountFromMergedActions_(v28, v64, a10 - v63);
        queue = self->_queue;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = sub_1D46149B0;
        v67[3] = &unk_1E84897C8;
        v67[4] = self;
        v68 = v28;
        v66 = v28;
        dispatch_async(queue, v67);
      }

      else
      {
        v21 = sub_1D461074C();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1D462C97C();
        }
      }
    }

    else
    {
      v22 = sub_1D461074C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1D462C914();
      }

      v21 = v19;
    }
  }

  else
  {
    v21 = sub_1D461074C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1D462C894();
    }

    v20 = v19;
  }
}

- (void)didCandidateBarReplacementForText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1D461074C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462C9F8();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v9, v6, v7, 1, 1, 0, 7, 1, 1);
}

- (void)didCalloutBarReplacementForText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1D461074C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CA60();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v9, v6, v7, 0, 0, 0, 8, 1, 1);
}

- (void)didAutocorrectReplacementForText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1D461074C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CAC8();
  }

  v11 = objc_msgSend_analyticsDelegate(self, v9, v10);
  v14 = objc_msgSend_source(v11, v12, v13);
  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v15, v6, v7, 0, 0, 1, v14, 6, 1);
}

- (void)didAutocorrectTapOnCompletionReplacementForText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1D461074C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CB30();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v9, v6, v7, 0, 0, 1, 12, 6, 1);
}

- (void)didInlineCompletionReplacementForText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1D461074C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CB98();
  }

  v11 = objc_msgSend_analyticsDelegate(self, v9, v10);
  v14 = objc_msgSend_source(v11, v12, v13);
  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v15, v6, v7, 1, 1, 0, v14, 15, 1);
}

- (void)didInlineCompletionTapOnCompletionReplacementForText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1D461074C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CC00();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v9, v6, v7, 1, 1, 0, 12, 15, 1);
}

- (void)didRevisionBubbleReplacementForText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1D461074C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CC68();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v9, v6, v7, 0, 0, 0, 11, 1, 0);
}

- (void)didRevisionBubbleTap
{
  v3 = sub_1D461074C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CCD0();
  }

  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v4, &stru_1F4FDAA18, &stru_1F4FDAA18, 0, 1, 0, 11, 1, 1);
}

- (void)didCandidateBarAction
{
  v3 = objc_opt_class();
  v5 = objc_msgSend__instanceOfActionClass_(self, v4, v3);
  v8 = objc_msgSend_asReplaceText(v5, v6, v7);

  objc_msgSend_setTextInputActionsType_(v8, v9, 1);
  objc_msgSend_setSource_(v8, v10, 7);
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1D4614FD8;
  v13[3] = &unk_1E84897C8;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)didReplaceWithCandidate:(int64_t)a3
{
  v5 = sub_1D461074C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CD04(a3, v5);
  }

  v6 = objc_opt_class();
  v8 = objc_msgSend__instanceOfActionClass_(self, v7, v6);
  v11 = objc_msgSend_asReplaceWithCandidate(v8, v9, v10);

  objc_msgSend_setReplaceWithCandidateType_(v11, v12, a3);
  v15 = objc_msgSend_inputActionCount(v11, v13, v14);
  objc_msgSend_setInputActionCountFromMergedActions_(v11, v16, -v15);
  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1D4615100;
  v19[3] = &unk_1E84897C8;
  v19[4] = self;
  v20 = v11;
  v18 = v11;
  dispatch_async(queue, v19);
}

- (void)didCompositionReplacementForText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1D461074C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CD9C();
  }

  v11 = objc_msgSend_analyticsDelegate(self, v9, v10);
  v14 = objc_msgSend_source(v11, v12, v13);
  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v15, v6, v7, 0, 0, 0, v14, 17, 1);
}

- (void)didDecompositionReplacementForText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1D461074C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462CE04();
  }

  v11 = objc_msgSend_analyticsDelegate(self, v9, v10);
  v14 = objc_msgSend_source(v11, v12, v13);
  objc_msgSend__didReplacementForText_withText_allowNilText_allowEmptyText_allowNilReplacement_withSource_withType_withInputActionCount_(self, v15, v6, v7, 0, 0, 0, v14, 18, 1);
}

- (void)didConversionForMarkedText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = v7;
  if (v6 && v7)
  {
    if (objc_msgSend_length(v6, v8, v9) && objc_msgSend_length(v10, v11, v12))
    {
      v15 = objc_msgSend_analyticsDelegate(self, v13, v14);
      v18 = objc_msgSend_source(v15, v16, v17);

      if (v18 <= 0xC && ((1 << v18) & 0x10B8) != 0)
      {
        v21 = objc_msgSend_analyticsDelegate(self, v19, v20);
        v24 = objc_msgSend_flagOptions(v21, v22, v23);
        isMarkedTextSetInFlagOptions = objc_msgSend_isMarkedTextSetInFlagOptions_(IATextInputActionsUtils, v25, v24);

        if (isMarkedTextSetInFlagOptions)
        {
          v27 = sub_1D461074C();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1D462CE6C();
          }
        }

        v28 = objc_opt_class();
        v30 = objc_msgSend__instanceOfActionClass_(self, v29, v28);
        v33 = objc_msgSend_asInsertion(v30, v31, v32);

        objc_msgSend_setTextInputActionsType_(v33, v34, 7);
        v36 = objc_msgSend_getDetailsForString_(IAStringDetails, v35, v10);
        v39 = objc_msgSend_characters(v36, v37, v38);
        objc_msgSend_setInsertedTextLength_(v33, v40, v39);
        v43 = objc_msgSend_emojiCharacters(v36, v41, v42);
        objc_msgSend_setInsertedEmojiCount_(v33, v44, v43);
        if (objc_msgSend_textIsTooLong(v36, v45, v46))
        {
          v49 = objc_msgSend_clientSideSessionErrors(v33, v47, v48);
          objc_msgSend_appendString_(v49, v50, @"T");
        }

        v51 = objc_msgSend_inputActionCount(v33, v47, v48);
        objc_msgSend_setInputActionCountFromMergedActions_(v33, v52, 1 - v51);
        queue = self->_queue;
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = sub_1D4615550;
        v55[3] = &unk_1E84897C8;
        v55[4] = self;
        v56 = v33;
        v54 = v33;
        dispatch_async(queue, v55);

        goto LABEL_18;
      }

      v36 = sub_1D461074C();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v36 = sub_1D461074C();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }
    }

    sub_1D462CED4();
    goto LABEL_18;
  }

  v36 = sub_1D461074C();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    sub_1D462CF3C();
  }

LABEL_18:
}

- (void)didCommitText:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 && objc_msgSend_length(v4, v5, v6))
  {
    v8 = sub_1D461074C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462CFA4();
    }

    v9 = objc_opt_class();
    v11 = objc_msgSend__instanceOfActionClass_(self, v10, v9);
    v14 = objc_msgSend_asCommitText(v11, v12, v13);

    v16 = objc_msgSend_getDetailsForString_(IAStringDetails, v15, v7);
    v19 = objc_msgSend_characters(v16, v17, v18);
    objc_msgSend_setInsertedTextLength_(v14, v20, v19);
    v23 = objc_msgSend_emojiCharacters(v16, v21, v22);
    objc_msgSend_setInsertedEmojiCount_(v14, v24, v23);
    if (objc_msgSend_textIsTooLong(v16, v25, v26))
    {
      v29 = objc_msgSend_clientSideSessionErrors(v14, v27, v28);
      objc_msgSend_appendString_(v29, v30, @"T");
    }

    queue = self->_queue;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1D4615710;
    v33[3] = &unk_1E84897C8;
    v33[4] = self;
    v34 = v14;
    v32 = v14;
    dispatch_async(queue, v33);
  }

  else
  {
    v16 = sub_1D461074C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1D462D050();
    }
  }
}

- (void)didKeyboardDockItemButtonPress:(unint64_t)a3 buttonType:(unint64_t)a4 buttonSize:(CGSize)a5 touchDown:(CGPoint)a6 touchUp:(CGPoint)a7 touchDuration:(double)a8 inputSource:(int64_t)a9 inputType:(int64_t)a10 uiInterfaceOrientation:(int64_t)a11
{
  y = a7.y;
  x = a7.x;
  v18 = a6.y;
  v19 = a6.x;
  height = a5.height;
  width = a5.width;
  v71 = *MEMORY[0x1E69E9840];
  v24 = sub_1D461074C();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v48 = objc_msgSend_stringForKeyboardDockItemButtonPressResult_(IATextInputActionsUtils, v25, a3);
    v50 = objc_msgSend_stringForKeyboardDockItemButtonType_(IATextInputActionsUtils, v49, a4);
    *buf = 138479875;
    v54 = v48;
    v55 = 2113;
    v56 = v50;
    v57 = 2048;
    v58 = width;
    v59 = 2048;
    v60 = height;
    v61 = 2048;
    v62 = v19;
    v63 = 2048;
    v64 = v18;
    v65 = 2048;
    v66 = x;
    v67 = 2048;
    v68 = y;
    v69 = 2048;
    v70 = a8;
    _os_log_debug_impl(&dword_1D460F000, v24, OS_LOG_TYPE_DEBUG, "[IATextInputActionsAnalytics] didKeyboardDockItemButtonPress:%{private}@ buttonType:%{private}@ buttonSize:(%fw %fh) touchDown:(%f,%f) touchUp:(%f,%f) touchDuration:%f", buf, 0x5Cu);
  }

  v26 = objc_opt_class();
  v28 = objc_msgSend__instanceOfActionClass_(self, v27, v26);
  v31 = objc_msgSend_asKeyboardDockItemButtonPress(v28, v29, v30);

  objc_msgSend_setSource_(v31, v32, a9);
  objc_msgSend_setTextInputActionsType_(v31, v33, a10);
  objc_msgSend_setButtonPressResult_(v31, v34, a3);
  objc_msgSend_setButtonType_(v31, v35, a4);
  objc_msgSend_setUiOrientation_(v31, v36, a11);
  objc_msgSend_setButtonSize_(v31, v37, v38, width, height);
  objc_msgSend_setTouchDownPoint_(v31, v39, v40, v19, v18);
  objc_msgSend_setTouchUpPoint_(v31, v41, v42, x, y);
  objc_msgSend_setTouchDuration_(v31, v43, v44, a8);
  queue = self->_queue;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = sub_1D46159C4;
  v51[3] = &unk_1E84897C8;
  v51[4] = self;
  v52 = v31;
  v46 = v31;
  dispatch_async(queue, v51);

  v47 = *MEMORY[0x1E69E9840];
}

- (void)didGlomojiTap:(id)a3 newInputMode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_1D4620EF8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D08C();
  }

  v9 = objc_opt_class();
  v11 = objc_msgSend__instanceOfActionClass_(self, v10, v9);
  v14 = objc_msgSend_asGlomojiTap(v11, v12, v13);

  objc_msgSend_setGlomojiType_(v14, v15, 0);
  objc_msgSend_setOriginalInputMode_(v14, v16, v7);

  objc_msgSend_setUpdatedInputMode_(v14, v17, v6);
  queue = self->_queue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1D4615B0C;
  v20[3] = &unk_1E84897C8;
  v20[4] = self;
  v21 = v14;
  v19 = v14;
  dispatch_async(queue, v20);
}

- (void)didGlomojiTap:(unint64_t)a3 originalInputMode:(id)a4 newInputMode:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = sub_1D4620EF8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D08C();
  }

  v11 = objc_opt_class();
  v13 = objc_msgSend__instanceOfActionClass_(self, v12, v11);
  v16 = objc_msgSend_asGlomojiTap(v13, v14, v15);

  objc_msgSend_setGlomojiType_(v16, v17, a3);
  objc_msgSend_setOriginalInputMode_(v16, v18, v9);

  objc_msgSend_setUpdatedInputMode_(v16, v19, v8);
  queue = self->_queue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1D4615C58;
  v22[3] = &unk_1E84897C8;
  v22[4] = self;
  v23 = v16;
  v21 = v16;
  dispatch_async(queue, v22);
}

- (void)didKBMenuAppear:(id)a3
{
  v4 = a3;
  v5 = sub_1D4620EF8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D0C0();
  }

  v6 = objc_opt_class();
  v8 = objc_msgSend__instanceOfActionClass_(self, v7, v6);
  v11 = objc_msgSend_asKBMenuAppear(v8, v9, v10);

  objc_msgSend_setGlomojiType_(v11, v12, 0);
  objc_msgSend_setOriginalInputMode_(v11, v13, v4);

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1D4615D7C;
  v16[3] = &unk_1E84897C8;
  v16[4] = self;
  v17 = v11;
  v15 = v11;
  dispatch_async(queue, v16);
}

- (void)didKBMenuAppear:(unint64_t)a3 originalInputMode:(id)a4
{
  v6 = a4;
  v7 = sub_1D4620EF8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D0C0();
  }

  v8 = objc_opt_class();
  v10 = objc_msgSend__instanceOfActionClass_(self, v9, v8);
  v13 = objc_msgSend_asKBMenuAppear(v10, v11, v12);

  objc_msgSend_setGlomojiType_(v13, v14, a3);
  objc_msgSend_setOriginalInputMode_(v13, v15, v6);

  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1D4615EAC;
  v18[3] = &unk_1E84897C8;
  v18[4] = self;
  v19 = v13;
  v17 = v13;
  dispatch_async(queue, v18);
}

- (void)didKBMenuInteraction:(unint64_t)a3 selectedAction:(unint64_t)a4 newInputMode:(id)a5
{
  v8 = a5;
  v9 = sub_1D4620EF8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D0F4();
  }

  v10 = objc_opt_class();
  v12 = objc_msgSend__instanceOfActionClass_(self, v11, v10);
  v15 = objc_msgSend_asKBMenuInteraction(v12, v13, v14);

  objc_msgSend_setKBMenuInteractionSource_(v15, v16, a3);
  objc_msgSend_setKBMenuSelectedAction_(v15, v17, a4);
  objc_msgSend_setUpdatedInputMode_(v15, v18, v8);

  queue = self->_queue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1D4615FEC;
  v21[3] = &unk_1E84897C8;
  v21[4] = self;
  v22 = v15;
  v20 = v15;
  dispatch_async(queue, v21);
}

- (void)didKBMenuDismiss:(unint64_t)a3
{
  v5 = sub_1D4620EF8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D128();
  }

  v6 = objc_opt_class();
  v8 = objc_msgSend__instanceOfActionClass_(self, v7, v6);
  v11 = objc_msgSend_asKBMenuDismiss(v8, v9, v10);

  objc_msgSend_setKBMenuDismissSource_(v11, v12, a3);
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1D46160FC;
  v15[3] = &unk_1E84897C8;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  dispatch_async(queue, v15);
}

- (void)didDictationBegin:(BOOL)a3 usesMultiModalDictation:(BOOL)a4
{
  v7 = sub_1D461074C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D15C();
  }

  v8 = objc_opt_class();
  v10 = objc_msgSend__instanceOfActionClass_(self, v9, v8);
  v13 = objc_msgSend_asDictationBegan(v10, v11, v12);

  objc_msgSend_setSource_(v13, v14, 1);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1D4616220;
  block[3] = &unk_1E8489810;
  v20 = a3;
  v21 = a4;
  v18 = v13;
  v19 = self;
  v16 = v13;
  dispatch_async(queue, block);
}

- (void)didDictationEnd
{
  v3 = sub_1D461074C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D190();
  }

  v4 = objc_opt_class();
  v6 = objc_msgSend__instanceOfActionClass_(self, v5, v4);
  v9 = objc_msgSend_asDictationEnded(v6, v7, v8);

  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1D4616380;
  v12[3] = &unk_1E84897C8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  dispatch_async(queue, v12);
}

- (void)_didInsertionKeyPressOfKey:(id)a3 withType:(int64_t)a4
{
  v6 = objc_opt_class();
  v8 = objc_msgSend__instanceOfActionClass_(self, v7, v6);
  v19 = objc_msgSend_asInsertion(v8, v9, v10);

  objc_msgSend_setTextInputActionsType_(v19, v11, a4);
  objc_msgSend_setInsertedTextLength_(v19, v12, 0);
  objc_msgSend_setInsertedEmojiCount_(v19, v13, 0);
  v16 = objc_msgSend_inputActionCount(v19, v14, v15);
  objc_msgSend_setInputActionCountFromMergedActions_(v19, v17, 1 - v16);
  objc_msgSend__didInsertTextAction_(self, v18, v19);
}

- (void)didInsertionKeyPress
{
  v3 = sub_1D461074C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D1C4();
  }

  objc_msgSend__didInsertionKeyPressOfKey_withType_(self, v4, 0, 1);
}

- (void)didInsertionKeyPressOfKey:(id)a3 withType:(int64_t)a4
{
  v6 = a3;
  v7 = sub_1D461074C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D1F8();
  }

  objc_msgSend__didInsertionKeyPressOfKey_withType_(self, v8, v6, a4);
}

- (void)_didDeletionKeyPressOfKey:(id)a3 withType:(int64_t)a4
{
  v6 = objc_opt_class();
  v8 = objc_msgSend__instanceOfActionClass_(self, v7, v6);
  v19 = objc_msgSend_asDeletion(v8, v9, v10);

  objc_msgSend_setTextInputActionsType_(v19, v11, a4);
  objc_msgSend_setRemovedTextLength_(v19, v12, 0);
  objc_msgSend_setRemovedEmojiCount_(v19, v13, 0);
  v16 = objc_msgSend_inputActionCount(v19, v14, v15);
  objc_msgSend_setInputActionCountFromMergedActions_(v19, v17, 1 - v16);
  objc_msgSend__didDeleteBackwardAction_(self, v18, v19);
}

- (void)didDeletionKeyPress
{
  v3 = sub_1D461074C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D298();
  }

  objc_msgSend__didDeletionKeyPressOfKey_withType_(self, v4, 0, 1);
}

- (void)didDeletionKeyPressOfKey:(id)a3 withType:(int64_t)a4
{
  v6 = a3;
  v7 = sub_1D461074C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462D2CC();
  }

  objc_msgSend__didDeletionKeyPressOfKey_withType_(self, v8, v6, a4);
}

- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)a3 withEventHandler:(id)a4
{
  v20.receiver = self;
  v20.super_class = IATextInputActionsAnalytics;
  v5 = a4;
  v6 = a3;
  v7 = [(IATextInputActionsAnalytics *)&v20 init];
  *&v7->_useAnalyticsDaemon = 256;
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v9 = dispatch_queue_create("com.apple.inputAnalytics.IATextInputActionsAnalytics", v8);
  queue = v7->_queue;
  v7->_queue = v9;

  lastAction = v7->_lastAction;
  v7->_lastAction = 0;

  objc_storeWeak(&v7->_analyticsDelegate, v6);
  v12 = [IATextInputActionsServer alloc];
  v15 = objc_msgSend_queue(v7, v13, v14, v20.receiver, v20.super_class);
  v17 = objc_msgSend_initWithQueue_eventHandler_(v12, v16, v15, v5);

  localServer = v7->_localServer;
  v7->_localServer = v17;

  return v7;
}

- (IATextInputActionsAnalytics)initWithAnalyticsMetadataObserver:(id)a3 withServiceName:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = IATextInputActionsAnalytics;
  v5 = a4;
  v6 = a3;
  v7 = [(IATextInputActionsAnalytics *)&v25 init];
  *&v7->_useAnalyticsDaemon = 1;
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v9 = dispatch_queue_create("com.apple.inputAnalytics.IATextInputActionsAnalytics", v8);
  queue = v7->_queue;
  v7->_queue = v9;

  lastAction = v7->_lastAction;
  v7->_lastAction = 0;

  objc_storeWeak(&v7->_analyticsDelegate, v6);
  v12 = [IAXPCClient alloc];
  v14 = objc_msgSend_initWithServiceName_(v12, v13, v5, v25.receiver, v25.super_class);

  xpcClient = v7->_xpcClient;
  v7->_xpcClient = v14;

  v16 = sub_1D461074C();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = v7->_xpcClient;
    v22 = objc_msgSend_server(v19, v20, v21);
    *buf = 138478339;
    v27 = v18;
    v28 = 2048;
    v29 = v19;
    v30 = 2048;
    v31 = v22;
    _os_log_impl(&dword_1D460F000, v16, OS_LOG_TYPE_INFO, "initialized new %{private}@ xpc client 0x%lx with server 0x%lx", buf, 0x20u);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dispatchToAnalyticsQueue:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1D4616AA4;
  block[3] = &unk_1E8489838;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

@end