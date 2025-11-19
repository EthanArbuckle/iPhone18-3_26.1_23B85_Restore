@interface CHRecognitionSession
+ (double)autoRefineTriggerFactor;
+ (id)alignReflowableTokens:(id)a3 resultTokens:(id)a4 strokeIdentifiers:(id)a5 outStrokeIdentifiers:(id *)a6;
+ (id)createMathRecognizerRunningRemote:(BOOL)a3 priority:(int64_t)a4;
+ (id)createRecognizerForLocale:(id)a3 sessionMode:(int64_t)a4 remote:(BOOL)a5 priority:(int64_t)a6;
+ (id)createRecognizerForLocales:(id)a3 sessionMode:(int64_t)a4 remote:(BOOL)a5 priority:(int64_t)a6;
+ (id)effectiveLocalesFromLocales:(id)a3;
+ (id)strokeIdentifiersInFullContextForStrokeIdentifiers:(id)a3 sortedStrokeGroups:(id)a4 clusteredStrokeGroups:(id)a5 unusedStrokeIdentifiers:(id *)a6;
+ (id)strokeIdentifiersInProximalGroupsForStrokeIdentifiers:(id)a3 sortedStrokeGroups:(id)a4 clusteredStrokeGroups:(id)a5 unusedStrokeIdentifiers:(id *)a6;
+ (void)updateStyleInventoryWithRemovedStrokeIdentifiers:(id)a3;
- (BOOL)q_needsForegroundRecognition;
- (BOOL)q_wantsAutoRefine;
- (CHCalculateDocumentProvider)latestCalculateDocumentProvider;
- (CHCanvasAttachmentProvider)latestCanvasAttachmentProvider;
- (CHRecognitionSession)initWithCoder:(id)a3;
- (CHRecognitionSession)initWithMode:(int64_t)a3;
- (CHRecognitionSession)initWithMode:(int64_t)a3 recognitionSessionResult:(id)a4 dataSource:(id)a5;
- (CHRecognitionSession)initWithMode:(int64_t)a3 withVersion:(id)a4;
- (CHRecognitionSessionResult)lastRecognitionResult;
- (CHStrokeProvider)latestStrokeProvider;
- (CHTextInputQuery)activeTextInputQuery;
- (NSData)sessionData;
- (id)contextLookupResultsAtLocation:(CGPoint)a3 completion:(id)a4 shouldCancel:(id)a5;
- (id)contextLookupResultsWithSelectedStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5;
- (id)contextLookupResultsWithSelectionPath:(CGPath *)a3 completion:(id)a4 shouldCancel:(id)a5;
- (id)contextualTextResultsForContextStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5;
- (id)documentLayoutAnalyzer;
- (id)evaluationResultForStrokeGroupIdentifier:(int64_t)a3;
- (id)indexableContent;
- (id)lastRecognitionResultWaitingForPendingTasks;
- (id)lineWrapper;
- (id)mathRecognizer;
- (id)mathTranscriptionWithEvaluationResultForStrokeGroup:(id)a3 outStrokeIdentifiers:(id *)a4 outStrokes:(id *)a5;
- (id)recognitionOptionForKey:(id)a3;
- (id)recognizableDrawingForStrokeGroupQueryItem:(id)a3;
- (id)recognizerForLocale:(id)a3;
- (id)refinedTokensForContextStrokes:(id)a3 styleControlParameter:(id)a4 completion:(id)a5 shouldCancel:(id)a6;
- (id)refinedTokensForSingleLineContextStrokes:(id)a3 styleControlParameter:(id)a4 transcription:(id)a5 completion:(id)a6 shouldCancel:(id)a7;
- (id)refinementOfContextStrokes:(id)a3 styleControlParameter:(id)a4 completion:(id)a5 shouldCancel:(id)a6;
- (id)reflowableTextLinesForContextStrokes:(id)a3 point:(CGPoint)a4 completion:(id)a5 shouldCancel:(id)a6;
- (id)remoteTextSynthesizer;
- (id)strokePointTransformationsForContextStrokes:(id)a3 parameters:(id)a4 completionWithTelemetry:(id)a5 shouldCancel:(id)a6;
- (id)structuredContextualTextResultsWithTextResults:(id)a3;
- (id)styleSampleOptionsForPoint:(CGPoint)a3 shouldCancel:(id)a4;
- (id)synthesizeTokensForString:(id)a3 point:(CGPoint)a4 synthesisOptions:(id)a5 completion:(id)a6 shouldCancel:(id)a7;
- (id)synthesizeTokensForString:(id)a3 replacingStrokes:(id)a4 completion:(id)a5 shouldCancel:(id)a6;
- (id)textCorrectionRecognizerForLocales:(id)a3;
- (id)textSynthesizer;
- (id)textSynthesizerWithLocaleFallback;
- (id)tokenStrokeIdentifiersForContextStrokes:(id)a3 point:(CGPoint)a4 tokenizationLevel:(int64_t)a5 completion:(id)a6 shouldCancel:(id)a7;
- (id)tokenStrokeIdentifiersWithCoveringStroke:(id)a3 completion:(id)a4 shouldCancel:(id)a5;
- (int64_t)status;
- (void)_setLastRecognitionResult:(id)a3;
- (void)_setLatestCalculateDocumentProvider:(id)a3;
- (void)_setLatestCanvasAttachmentProvider:(id)a3;
- (void)_setLatestStrokeProvider:(id)a3;
- (void)_setSessionVersion:(id)a3;
- (void)_setStatus:(int64_t)a3;
- (void)cancelOngoingRequests;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)rebuildRecognitionResults;
- (void)registerChangeObserver:(id)a3;
- (void)registerInputDrawingClient:(id)a3;
- (void)setActive;
- (void)setDataSource:(id)a3;
- (void)setForceLocaleNumberFormat:(BOOL)a3;
- (void)setIdle;
- (void)setNeedsRecognitionUpdateImmediately:(BOOL)a3;
- (void)setPreferredLocales:(id)a3;
- (void)setSkipMathOperatorsInference:(BOOL)a3;
- (void)setSkipMathTransliterations:(BOOL)a3;
- (void)setSkipPopulatingStyleInventory:(BOOL)a3;
- (void)unregisterChangeObserver:(id)a3;
- (void)unregisterInputDrawingClient:(id)a3;
- (void)waitForPendingRecognitionTasks;
@end

@implementation CHRecognitionSession

- (CHRecognitionSession)initWithMode:(int64_t)a3
{
  v94.receiver = self;
  v94.super_class = CHRecognitionSession;
  v4 = [(CHRecognitionSession *)&v94 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(v4 + 42);
    *(v4 + 42) = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = *(v4 + 28);
    *(v4 + 28) = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = *(v4 + 26);
    *(v4 + 26) = v9;

    v16 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v11, v12, v13, v14, v15);
    v17 = *(v4 + 35);
    *(v4 + 35) = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = *(v4 + 36);
    *(v4 + 36) = v18;

    if (!a3)
    {
      *(v4 + 23) = 1;
    }

    *(v4 + 2) = 1;
    *(v4 + 20) = a3;
    v20 = [CHRecognitionSessionVersion alloc];
    v24 = objc_msgSend_initWithSessionVersion_sessionResultVersion_(v20, v21, 1, 5, v22, v23);
    v25 = *(v4 + 14);
    *(v4 + 14) = v24;

    *(v4 + 23) = 0;
    *(v4 + 24) = 0;
    *(v4 + 12) = 0x7FFFFFFFFFFFFFFFLL;
    if (!*(v4 + 39))
    {
LABEL_13:
      if (!*(v4 + 40))
      {
        goto LABEL_22;
      }

      if (qword_1EA84DC48 == -1)
      {
        v33 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v33 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
LABEL_17:

          if (!*(v4 + 40))
          {
            goto LABEL_22;
          }

          if (qword_1EA84DC48 == -1)
          {
            v34 = qword_1EA84DC50[0];
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
LABEL_21:

LABEL_22:
              if (!*(v4 + 37))
              {
                goto LABEL_31;
              }

              if (qword_1EA84DC48 == -1)
              {
                v35 = qword_1EA84DC50[0];
                if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_26;
                }
              }

              else
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                v35 = qword_1EA84DC50[0];
                if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
LABEL_26:

                  if (!*(v4 + 37))
                  {
                    goto LABEL_31;
                  }

                  if (qword_1EA84DC48 == -1)
                  {
                    v36 = qword_1EA84DC50[0];
                    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
                    {
LABEL_30:

LABEL_31:
                      if (!*(v4 + 38))
                      {
                        goto LABEL_40;
                      }

                      if (qword_1EA84DC48 == -1)
                      {
                        v37 = qword_1EA84DC50[0];
                        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_35;
                        }
                      }

                      else
                      {
                        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                        v37 = qword_1EA84DC50[0];
                        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                        {
LABEL_35:

                          if (!*(v4 + 38))
                          {
                            goto LABEL_40;
                          }

                          if (qword_1EA84DC48 == -1)
                          {
                            v38 = qword_1EA84DC50[0];
                            if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
                            {
LABEL_39:

LABEL_40:
                              if (!*(v4 + 41))
                              {
                                goto LABEL_49;
                              }

                              if (qword_1EA84DC48 == -1)
                              {
                                v39 = qword_1EA84DC50[0];
                                if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_44;
                                }
                              }

                              else
                              {
                                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                                v39 = qword_1EA84DC50[0];
                                if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                                {
LABEL_44:

                                  if (!*(v4 + 41))
                                  {
                                    goto LABEL_49;
                                  }

                                  if (qword_1EA84DC48 == -1)
                                  {
                                    v40 = qword_1EA84DC50[0];
                                    if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
                                    {
LABEL_48:

LABEL_49:
                                      if (a3 == 1)
                                      {
                                        *(v4 + 38) = 25;
                                        v47 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
                                        v48 = dispatch_queue_attr_make_with_qos_class(v47, QOS_CLASS_USER_INITIATED, 0);

                                        *buf = MEMORY[0x1E69E9820];
                                        v96 = 3221225472;
                                        v97 = sub_18391CFE8;
                                        v98 = &unk_1E6DDBE10;
                                        v99 = v48;
                                        v49 = qword_1EA84D1E8;
                                        v42 = v48;
                                        if (v49 != -1)
                                        {
                                          dispatch_once(&qword_1EA84D1E8, buf);
                                        }

                                        objc_storeStrong(v4 + 37, qword_1EA84D1E0);
                                        v50 = dispatch_queue_create("com.apple.CoreHandwriting.RecognitionSession", v42);
                                        v51 = *(v4 + 39);
                                        *(v4 + 39) = v50;

                                        v52 = dispatch_queue_create("com.apple.CoreHandwriting.RecognitionSessionObservers", v42);
                                        v53 = *(v4 + 40);
                                        *(v4 + 40) = v52;

                                        v46 = v99;
                                      }

                                      else
                                      {
                                        if (a3)
                                        {
LABEL_58:
                                          *(v4 + 145) = 0;
                                          *(v4 + 149) = 256;
                                          v54 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v26, v27, v28, v29, v30);
                                          v55 = *(v4 + 15);
                                          *(v4 + 15) = v54;

                                          v60 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v56, (v4[147] & 1) == 0, v57, v58, v59);
                                          objc_msgSend_setObject_forKeyedSubscript_(*(v4 + 15), v61, v60, CHGroupingPostProcessingManagerOptionExplicitOperators, v62, v63);

                                          v68 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v64, v4[148], v65, v66, v67);
                                          objc_msgSend_setObject_forKeyedSubscript_(*(v4 + 15), v69, v68, @"CHRecognitionTaskSkipPopulatingInventory", v70, v71);

                                          v76 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v72, v4[150], v73, v74, v75);
                                          objc_msgSend_setObject_forKeyedSubscript_(*(v4 + 15), v77, v76, qword_1EA84BB58, v78, v79);

                                          v84 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v80, v4[146], v81, v82, v83);
                                          objc_msgSend_setObject_forKeyedSubscript_(*(v4 + 15), v85, v84, qword_1EA84BB60, v86, v87);

                                          objc_msgSend_setObject_forKeyedSubscript_(*(v4 + 15), v88, *(v4 + 25), CHRecognitionOptionModelInputLocales, v89, v90);
                                          v91 = objc_alloc_init(CHSessionStateTracker);
                                          v92 = *(v4 + 17);
                                          *(v4 + 17) = v91;

                                          return v4;
                                        }

                                        *(v4 + 38) = 21;
                                        v41 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
                                        v42 = dispatch_queue_attr_make_with_qos_class(v41, QOS_CLASS_DEFAULT, -15);

                                        *buf = MEMORY[0x1E69E9820];
                                        v96 = 3221225472;
                                        v97 = sub_18391CE90;
                                        v98 = &unk_1E6DDBE10;
                                        v99 = v4;
                                        if (qword_1EA84D1D8 != -1)
                                        {
                                          dispatch_once(&qword_1EA84D1D8, buf);
                                        }

                                        objc_storeStrong(v4 + 38, qword_1EA84D1C0);
                                        objc_storeStrong(v4 + 41, qword_1EA84D1C8);
                                        objc_storeStrong(v4 + 37, qword_1EA84D1B8);
                                        v43 = dispatch_queue_create("com.apple.CoreHandwriting.RecognitionSession", v42);
                                        v44 = *(v4 + 39);
                                        *(v4 + 39) = v43;

                                        v45 = dispatch_queue_create("com.apple.CoreHandwriting.RecognitionSessionObservers", v42);
                                        v46 = *(v4 + 40);
                                        *(v4 + 40) = v45;
                                      }

                                      goto LABEL_58;
                                    }
                                  }

                                  else
                                  {
                                    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                                    v40 = qword_1EA84DC50[0];
                                    if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
                                    {
                                      goto LABEL_48;
                                    }
                                  }

                                  *buf = 0;
                                  _os_log_impl(&dword_18366B000, v40, OS_LOG_TYPE_FAULT, "Queue setup can only be performed once.", buf, 2u);
                                  goto LABEL_48;
                                }
                              }

                              *buf = 0;
                              _os_log_impl(&dword_18366B000, v39, OS_LOG_TYPE_ERROR, "Queue setup can only be performed once.", buf, 2u);
                              goto LABEL_44;
                            }
                          }

                          else
                          {
                            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                            v38 = qword_1EA84DC50[0];
                            if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
                            {
                              goto LABEL_39;
                            }
                          }

                          *buf = 0;
                          _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_FAULT, "Queue setup can only be performed once.", buf, 2u);
                          goto LABEL_39;
                        }
                      }

                      *buf = 0;
                      _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_ERROR, "Queue setup can only be performed once.", buf, 2u);
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    v36 = qword_1EA84DC50[0];
                    if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_30;
                    }
                  }

                  *buf = 0;
                  _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_FAULT, "Queue setup can only be performed once.", buf, 2u);
                  goto LABEL_30;
                }
              }

              *buf = 0;
              _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_ERROR, "Queue setup can only be performed once.", buf, 2u);
              goto LABEL_26;
            }
          }

          else
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            v34 = qword_1EA84DC50[0];
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_21;
            }
          }

          *buf = 0;
          _os_log_impl(&dword_18366B000, v34, OS_LOG_TYPE_FAULT, "Queue setup can only be performed once.", buf, 2u);
          goto LABEL_21;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_ERROR, "Queue setup can only be performed once.", buf, 2u);
      goto LABEL_17;
    }

    if (qword_1EA84DC48 == -1)
    {
      v31 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v31 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        if (!*(v4 + 39))
        {
          goto LABEL_13;
        }

        if (qword_1EA84DC48 == -1)
        {
          v32 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
LABEL_12:

            goto LABEL_13;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v32 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_12;
          }
        }

        *buf = 0;
        _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_FAULT, "Queue setup can only be performed once.", buf, 2u);
        goto LABEL_12;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v31, OS_LOG_TYPE_ERROR, "Queue setup can only be performed once.", buf, 2u);
    goto LABEL_8;
  }

  return v4;
}

- (CHRecognitionSession)initWithMode:(int64_t)a3 recognitionSessionResult:(id)a4 dataSource:(id)a5
{
  v7 = a5;
  v12 = objc_msgSend_initWithMode_(self, v8, a3, v9, v10, v11);
  v17 = v12;
  if (v12)
  {
    objc_msgSend_setDataSource_(v12, v13, v7, v14, v15, v16);
    v23 = objc_msgSend_strokeProviderSnapshot(v7, v18, v19, v20, v21, v22);
    objc_msgSend__setLatestStrokeProvider_(v17, v24, v23, v25, v26, v27);
    if (objc_msgSend_mode(v17, v28, v29, v30, v31, v32))
    {
      if (objc_msgSend_mode(v17, v33, v34, v35, v36, v37) != 1)
      {
LABEL_19:

        goto LABEL_20;
      }

      if (objc_opt_respondsToSelector())
      {
        v43 = objc_msgSend_calculateDocumentProviderSnapshot(v7, v38, v39, v40, v41, v42);
        objc_msgSend__setLatestCalculateDocumentProvider_(v17, v44, v43, v45, v46, v47);
      }

      else
      {
        v43 = 0;
        objc_msgSend__setLatestCalculateDocumentProvider_(v17, v38, 0, v40, v41, v42);
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v43 = objc_msgSend_calculateDocumentProviderSnapshot(v7, v48, v49, v50, v51, v52);
      }

      else
      {
        v43 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v58 = objc_msgSend_canvasAttachmentProviderSnapshot(v7, v53, v54, v55, v56, v57);
      }

      else
      {
        v58 = 0;
      }

      objc_msgSend__setLatestCalculateDocumentProvider_(v17, v53, v43, v55, v56, v57);
      objc_msgSend__setLatestCanvasAttachmentProvider_(v17, v59, v58, v60, v61, v62);
      sub_18391CD30(v17);
      cachedFastGroupingRecognitionResult = v17->_cachedFastGroupingRecognitionResult;
      if (cachedFastGroupingRecognitionResult)
      {
        v17->_cachedFastGroupingRecognitionResult = 0;
      }

      partialRecognitionResult = v17->_partialRecognitionResult;
      if (partialRecognitionResult)
      {
        v17->_partialRecognitionResult = 0;
      }
    }

    goto LABEL_19;
  }

LABEL_20:

  return v17;
}

- (void)dealloc
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18391D208;
  v5[3] = &unk_1E6DDBE10;
  v5[4] = self;
  v3 = MEMORY[0x1865E6810](v5, a2);
  sub_18391D028(self, v3);

  v4.receiver = self;
  v4.super_class = CHRecognitionSession;
  [(CHRecognitionSession *)&v4 dealloc];
}

- (void)setIdle
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DCC0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEBUG, "Session is idle", v9, 2u);
  }

  objc_msgSend_setIdle(self->_stateTracker, v4, v5, v6, v7, v8);
}

- (void)setActive
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DCC0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEBUG, "Session is active", v9, 2u);
  }

  objc_msgSend_setActive(self->_stateTracker, v4, v5, v6, v7, v8);
}

- (void)_setSessionVersion:(id)a3
{
  v5 = a3;
  sessionVersion = self->_sessionVersion;
  p_sessionVersion = &self->_sessionVersion;
  if (sessionVersion != v5)
  {
    v8 = v5;
    objc_storeStrong(p_sessionVersion, a3);
    v5 = v8;
  }
}

- (void)setPreferredLocales:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18391E158;
  v11[3] = &unk_1E6DDC840;
  v5 = v4;
  v12 = v5;
  v13 = self;
  v14 = &v15;
  sub_18391D028(self, v11);
  if (*(v16 + 24) == 1)
  {
    objc_msgSend_setNeedsRecognitionUpdate(self, v6, v7, v8, v9, v10);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)setDataSource:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18391E844;
  v10[3] = &unk_1E6DDC840;
  v5 = v4;
  v11 = v5;
  v12 = self;
  v13 = &v14;
  sub_18391D028(self, v10);
  if (*(v15 + 24) == 1)
  {
    objc_msgSend_setNeedsRecognitionUpdateImmediately_(self, v6, 1, v7, v8, v9);
  }

  _Block_object_dispose(&v14, 8);
}

- (CHRecognitionSessionResult)lastRecognitionResult
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18391E9B8;
  v9 = sub_18391E9C8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18391E9D0;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18391D028(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_setLastRecognitionResult:(id)a3
{
  v5 = a3;
  if (self->_lastRecognitionResult != v5)
  {
    objc_storeStrong(&self->_lastRecognitionResult, a3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_18391EAA0;
    v6[3] = &unk_1E6DDFF10;
    v6[4] = self;
    sub_18391EAAC(self, v6);
  }
}

- (CHStrokeProvider)latestStrokeProvider
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18391E9B8;
  v9 = sub_18391E9C8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18391EC74;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18391D028(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_setLatestStrokeProvider:(id)a3
{
  v5 = a3;
  latestStrokeProvider = self->_latestStrokeProvider;
  p_latestStrokeProvider = &self->_latestStrokeProvider;
  if (latestStrokeProvider != v5)
  {
    v8 = v5;
    objc_storeStrong(p_latestStrokeProvider, a3);
    v5 = v8;
  }
}

- (CHCalculateDocumentProvider)latestCalculateDocumentProvider
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18391E9B8;
  v9 = sub_18391E9C8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18391EDF4;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18391D028(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_setLatestCalculateDocumentProvider:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_latestCalculateDocumentProvider = &self->_latestCalculateDocumentProvider;
  if (self->_latestCalculateDocumentProvider != v5)
  {
    objc_storeStrong(&self->_latestCalculateDocumentProvider, a3);
    if (objc_opt_respondsToSelector())
    {
      v12 = objc_msgSend_expressionEvaluationResults(*p_latestCalculateDocumentProvider, v7, v8, v9, v10, v11);
      v18 = objc_msgSend_count(v12, v13, v14, v15, v16, v17);
    }

    else
    {
      v18 = 0;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v19 = qword_1EA84DC60;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_msgSend_declaredVariables(*p_latestCalculateDocumentProvider, v20, v21, v22, v23, v24);
      v31 = objc_msgSend_count(v25, v26, v27, v28, v29, v30);
      v37 = objc_msgSend_recognizedExpressions(*p_latestCalculateDocumentProvider, v32, v33, v34, v35, v36);
      v43 = 134218752;
      v44 = self;
      v45 = 2048;
      v46 = v31;
      v47 = 2048;
      v48 = objc_msgSend_count(v37, v38, v39, v40, v41, v42);
      v49 = 2048;
      v50 = v18;
      _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p received updated calculate document provider. Declared variables: %lu, Recognized expressions: %lu, Evaluation results: %lu", &v43, 0x2Au);
    }
  }
}

- (CHCanvasAttachmentProvider)latestCanvasAttachmentProvider
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18391E9B8;
  v9 = sub_18391E9C8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18391F11C;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18391D028(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_setLatestCanvasAttachmentProvider:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_latestCanvasAttachmentProvider != v5)
  {
    objc_storeStrong(&self->_latestCanvasAttachmentProvider, a3);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v6 = qword_1EA84DC60;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_msgSend_attachments(self->_latestCanvasAttachmentProvider, v7, v8, v9, v10, v11);
      v18 = 134218240;
      v19 = self;
      v20 = 2048;
      v21 = objc_msgSend_count(v12, v13, v14, v15, v16, v17);
      _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p received updated canvas attachment provider with %lu attachments.", &v18, 0x16u);
    }
  }
}

- (CHTextInputQuery)activeTextInputQuery
{
  WeakRetained = objc_loadWeakRetained(&self->_activeTextInputQuery);

  return WeakRetained;
}

- (int64_t)status
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18391F37C;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18391D028(self, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_setStatus:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_status != a3)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v5 = qword_1EA84DC60;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      status = self->_status;
      *buf = 134218496;
      v9 = status;
      v10 = 2048;
      v11 = a3;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "RecognitionTask: Session status transitioning from %ld to %ld for session %p", buf, 0x20u);
    }

    self->_status = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_18391F4F0;
    v7[3] = &unk_1E6DDFF10;
    v7[4] = self;
    sub_18391EAAC(self, v7);
  }
}

- (id)indexableContent
{
  v3 = [CHIndexableContentQuery alloc];
  v8 = objc_msgSend_initWithRecognitionSession_(v3, v4, self, v5, v6, v7);
  objc_msgSend_start(v8, v9, v10, v11, v12, v13);
  objc_msgSend_waitForPendingUpdates(v8, v14, v15, v16, v17, v18);
  v24 = objc_msgSend_indexableContent(v8, v19, v20, v21, v22, v23);

  return v24;
}

- (void)cancelOngoingRequests
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC60;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEFAULT, "Starting cancelOngoingRequests for session", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18391FB5C;
  v6[3] = &unk_1E6DDBE10;
  v6[4] = self;
  v4 = MEMORY[0x1865E6810](v6);
  sub_18391D028(self, v4);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v5 = qword_1EA84DC60;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = qword_1EA84DC60;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
LABEL_7:
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEFAULT, "Ending cancelOngoingRequests for session %p", buf, 0xCu);
  }

LABEL_8:
}

- (void)rebuildRecognitionResults
{
  v7 = objc_msgSend_dataSource(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_strokeProviderSnapshot(v7, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_mode(self, v14, v15, v16, v17, v18);
  if (!v19)
  {
    if (objc_opt_respondsToSelector())
    {
      v43 = 0;
      v49 = objc_msgSend_calculateDocumentProviderSnapshot(v7, v50, v51, v52, v53, v54);
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (v19 != 1)
  {
LABEL_8:
    v43 = 0;
    goto LABEL_9;
  }

  v25 = objc_msgSend_activeTextInputQuery(self, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_textInputTargetsDataSource(v25, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_textInputTargets(v31, v32, v33, v34, v35, v36);
  v43 = objc_msgSend_copy(v37, v38, v39, v40, v41, v42);

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_9:
    v55 = 0;
    goto LABEL_10;
  }

  v49 = objc_msgSend_calculateDocumentProviderSnapshot(v7, v44, v45, v46, v47, v48);
LABEL_7:
  v55 = v49;
LABEL_10:
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = sub_18391FF90;
  v60[3] = &unk_1E6DDFF60;
  v60[4] = self;
  v56 = v13;
  v61 = v56;
  v57 = v7;
  v62 = v57;
  v63 = v55;
  v64 = v43;
  v58 = v43;
  v59 = v55;
  sub_18391D028(self, v60);
}

- (NSData)sessionData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18391E9B8;
  v9 = sub_18391E9C8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_183922E84;
  v4[3] = &unk_1E6DDCCD0;
  v4[4] = &v5;
  sub_18391D028(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (void)updateStyleInventoryWithRemovedStrokeIdentifiers:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(CHRemoteTextSynthesizer);
  v6 = MEMORY[0x1E695DFA8];
  v12 = objc_msgSend_count(v4, v7, v8, v9, v10, v11);
  v17 = objc_msgSend_setWithCapacity_(v6, v13, v12, v14, v15, v16);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_183923344;
  v36[3] = &unk_1E6DDF070;
  v18 = v17;
  v37 = v18;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v19, v36, v20, v21, v22);
  v35 = 0;
  updated = objc_msgSend_updateStyleInventoryWithRemovedStrokeIdentifiers_error_(v5, v23, v18, &v35, v24, v25);
  v27 = v35;
  if ((updated & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v28 = qword_1EA84DC60;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_msgSend_localizedDescription(v27, v29, v30, v31, v32, v33);
      *buf = 134218498;
      v39 = a1;
      v40 = 2112;
      v41 = v4;
      v42 = 2112;
      v43 = v34;
      _os_log_impl(&dword_18366B000, v28, OS_LOG_TYPE_ERROR, "RecognitionSession %p couldn't remove strokes from the inventory with identifiers: %@. Error: %@", buf, 0x20u);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v139 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC88;
  v6 = os_signpost_id_generate(v5);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC88;
  v8 = v7;
  v126 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CHRecognitionSessionEncodeWithCoder", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v9 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognitionSessionEncodeWithCoder", buf, 2u);
  }

  v15 = objc_msgSend_mode(self, v10, v11, v12, v13, v14);
  objc_msgSend_encodeInteger_forKey_(v4, v16, v15, @"mode", v17, v18);
  v24 = objc_msgSend_sessionVersion(self, v19, v20, v21, v22, v23);
  objc_msgSend_encodeObject_forKey_(v4, v25, v24, @"version", v26, v27);

  v33 = objc_msgSend_lastRecognitionResult(self, v28, v29, v30, v31, v32);
  objc_msgSend_encodeObject_forKey_(v4, v34, v33, @"lastRecognitionResult", v35, v36);

  v42 = objc_msgSend_preferredLocales(self, v37, v38, v39, v40, v41);
  objc_msgSend_encodeObject_forKey_(v4, v43, v42, @"preferredLocales", v44, v45);

  v51 = objc_msgSend_recognitionEnvironment(self, v46, v47, v48, v49, v50);
  objc_msgSend_encodeInteger_forKey_(v4, v52, v51, @"recognitionEnvironment", v53, v54);
  v60 = objc_msgSend_priority(self, v55, v56, v57, v58, v59);
  objc_msgSend_encodeInteger_forKey_(v4, v61, v60, @"priority", v62, v63);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v64 = qword_1EA84DC60;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v124 = v6;
    v125 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(self->_preferredLocales, v65, @", ", &unk_1EF1BF438, v66, v67);
    v73 = objc_msgSend_recognitionEnvironment(self, v68, v69, v70, v71, v72);
    v79 = objc_msgSend_priority(self, v74, v75, v76, v77, v78);
    v123 = objc_msgSend_lastRecognitionResult(self, v80, v81, v82, v83, v84);
    v90 = objc_msgSend_orderedStrokeIdentifiers(v123, v85, v86, v87, v88, v89);
    v96 = objc_msgSend_count(v90, v91, v92, v93, v94, v95);
    v102 = objc_msgSend_lastRecognitionResult(self, v97, v98, v99, v100, v101);
    v108 = objc_msgSend_strokeGroupingResult(v102, v103, v104, v105, v106, v107);
    v114 = objc_msgSend_strokeGroups(v108, v109, v110, v111, v112, v113);
    v120 = objc_msgSend_count(v114, v115, v116, v117, v118, v119);
    *buf = 134219266;
    v128 = self;
    v129 = 2112;
    v130 = v125;
    v131 = 2048;
    v132 = v73;
    v133 = 2048;
    v134 = v79;
    v135 = 2048;
    v136 = v96;
    v137 = 2048;
    v138 = v120;
    _os_log_impl(&dword_18366B000, v64, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p has been serialized with preferredLocales: %@, recognitionEnvironment: %ld, priority: %ld. Last result covers %ld strokes, %ld groups.", buf, 0x3Eu);

    v6 = v124;
  }

  if (qword_1EA84DC48 == -1)
  {
    v121 = qword_1EA84DC88;
    if (v126 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v121 = qword_1EA84DC88;
    if (v126 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_20;
    }
  }

  if (os_signpost_enabled(v121))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v121, OS_SIGNPOST_INTERVAL_END, v6, "CHRecognitionSessionEncodeWithCoder", "", buf, 2u);
  }

LABEL_20:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v122 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v122, OS_LOG_TYPE_DEFAULT, "END CHRecognitionSessionEncodeWithCoder", buf, 2u);
  }
}

- (CHRecognitionSession)initWithCoder:(id)a3
{
  v130[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"version", v7, v8);
  if (objc_msgSend_isValidSessionVersion(v9, v10, v11, v12, v13, v14))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v15 = qword_1EA84DC88;
    v16 = os_signpost_id_generate(v15);

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v17 = qword_1EA84DC88;
    v18 = v17;
    spid = v16;
    v19 = v16 - 1;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "CHRecognitionSessionInitWithCoder", "", buf, 2u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v20 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_DEFAULT, "BEGIN CHRecognitionSessionInitWithCoder", buf, 2u);
    }

    v25 = objc_msgSend_decodeIntegerForKey_(v4, v21, @"mode", v22, v23, v24);
    v26 = MEMORY[0x1E695DFD8];
    v130[0] = objc_opt_class();
    v130[1] = objc_opt_class();
    v30 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v130, 2, v28, v29);
    v35 = objc_msgSend_setWithArray_(v26, v31, v30, v32, v33, v34);
    v39 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v36, v35, @"preferredLocales", v37, v38);

    v44 = objc_msgSend_decodeIntegerForKey_(v4, v40, @"recognitionEnvironment", v41, v42, v43);
    v49 = objc_msgSend_decodeIntegerForKey_(v4, v45, @"priority", v46, v47, v48);
    v53 = objc_msgSend_initWithMode_withVersion_(self, v50, v25, v9, v51, v52);
    objc_msgSend_setPreferredLocales_(v53, v54, v39, v55, v56, v57);
    objc_msgSend_setRecognitionEnvironment_(v53, v58, v44, v59, v60, v61);
    objc_msgSend_setPriority_(v53, v62, v49, v63, v64, v65);
    if (objc_msgSend_isValidSessionResultVersion(v53[14], v66, v67, v68, v69, v70))
    {
      v71 = objc_opt_class();
      v75 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v72, v71, @"lastRecognitionResult", v73, v74);
      objc_msgSend__setLastRecognitionResult_(v53, v76, v75, v77, v78, v79);
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v86 = qword_1EA84DC60;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v92 = objc_msgSend_sessionResultVersion(v53[14], v87, v88, v89, v90, v91);
        *buf = 134218240;
        v123 = v92;
        v124 = 2048;
        v125 = 5;
        _os_log_impl(&dword_18366B000, v86, OS_LOG_TYPE_DEFAULT, "Last recognition result not loaded because session result version %ld does not match the current result version %ld.", buf, 0x16u);
      }

      v93 = [CHRecognitionSessionVersion alloc];
      v75 = objc_msgSend_initWithSessionVersion_sessionResultVersion_(v93, v94, 1, 5, v95, v96);
      objc_msgSend__setSessionVersion_(v53, v97, v75, v98, v99, v100);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v101 = qword_1EA84DC60;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      v105 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v53[21], v102, @", ", &unk_1EF1BF458, v103, v104);
      v111 = objc_msgSend_recognitionEnvironment(v53, v106, v107, v108, v109, v110);
      v117 = objc_msgSend_priority(v53, v112, v113, v114, v115, v116);
      *buf = 134218754;
      v123 = v53;
      v124 = 2112;
      v125 = v105;
      v126 = 2048;
      v127 = v111;
      v128 = 2048;
      v129 = v117;
      _os_log_impl(&dword_18366B000, v101, OS_LOG_TYPE_DEFAULT, "RecognitionSession %p has been deserialized with preferredLocales: %@, recognitionEnvironment: %ld, priority: %ld, and lastRecognitionResult.", buf, 0x2Au);
    }

    if (qword_1EA84DC48 == -1)
    {
      v118 = qword_1EA84DC88;
      if (v19 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v118 = qword_1EA84DC88;
      if (v19 <= 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_31:
        if (os_signpost_enabled(v118))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_18366B000, v118, OS_SIGNPOST_INTERVAL_END, spid, "CHRecognitionSessionInitWithCoder", "", buf, 2u);
        }
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v119 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v119, OS_LOG_TYPE_DEFAULT, "END CHRecognitionSessionInitWithCoder", buf, 2u);
    }

    self = v53;
    v85 = self;
    goto LABEL_38;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v39 = qword_1EA84DC60;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v123 = objc_msgSend_sessionVersion(v9, v80, v81, v82, v83, v84);
    v124 = 2048;
    v125 = 1;
    _os_log_impl(&dword_18366B000, v39, OS_LOG_TYPE_DEFAULT, "Nil RecognitionSession has been returned because session version %ld does not match the current session version %ld.", buf, 0x16u);
  }

  v85 = 0;
LABEL_38:

  return v85;
}

- (id)recognitionOptionForKey:(id)a3
{
  v6 = objc_msgSend_objectForKey_(self->_recognitionOptions, a2, a3, v3, v4, v5);

  return v6;
}

- (id)lineWrapper
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18391E9B8;
  v9 = sub_18391E9C8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_183924424;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18391D028(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

+ (id)createRecognizerForLocale:(id)a3 sessionMode:(int64_t)a4 remote:(BOOL)a5 priority:(int64_t)a6
{
  v7 = a5;
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v18[0] = v10;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v11, v18, 1, v12, v13);
  RecognizerForLocales_sessionMode_remote_priority = objc_msgSend_createRecognizerForLocales_sessionMode_remote_priority_(a1, v15, v14, a4, v7, a6);

  return RecognizerForLocales_sessionMode_remote_priority;
}

+ (id)createRecognizerForLocales:(id)a3 sessionMode:(int64_t)a4 remote:(BOOL)a5 priority:(int64_t)a6
{
  v7 = a5;
  v129 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (a4 == 1)
  {
    v10 = 4;
  }

  else
  {
    v10 = 6;
  }

  v118 = v9;
  v11 = objc_opt_class();
  objc_msgSend_effectiveRecognitionLocales_recognitionMode_(v11, v12, v9, v10, v13, v14);
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v15 = v120 = 0u;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v119, v128, 16, v17);
  v117 = a6;
  if (v18)
  {
    v19 = *v120;
    v20 = 3;
    if (a4 == 1)
    {
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v120 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v119 + 1) + 8 * i);
          v23 = objc_opt_class();
          if (objc_msgSend_shouldForceNoAlternativeRecognitionCandidates_(v23, v24, v22, v25, v26, v27))
          {
            v20 = 1;
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v28, &v119, v128, 16, v29);
      }

      while (v18);
    }

    else
    {
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v120 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v31 = *(*(&v119 + 1) + 8 * j);
          v32 = objc_opt_class();
          objc_msgSend_shouldForceNoAlternativeRecognitionCandidates_(v32, v33, v31, v34, v35, v36);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v37, &v119, v128, 16, v38);
      }

      while (v18);
    }
  }

  else
  {
    v20 = 3;
  }

  if (v7)
  {
    v39 = objc_opt_class();
    v43 = objc_msgSend_newRemoteRecognizerWithMode_locales_(v39, v40, v10, v118, v41, v42);
    objc_msgSend_setPriority_(v43, v44, v117, v45, v46, v47);
  }

  else
  {
    v53 = objc_alloc_init(CHRecognizerOptions);
    objc_msgSend_setEnableCachingIfAvailable_(v53, v54, 0, v55, v56, v57);
    objc_msgSend_setEnableGen2ModelIfAvailable_(v53, v58, 1, v59, v60, v61);
    objc_msgSend_setEnableGen2CharacterLMIfAvailable_(v53, v62, a4 == 1, v63, v64, v65);
    v71 = objc_msgSend_firstObject(v15, v66, v67, v68, v69, v70);
    if (objc_msgSend_count(v15, v72, v73, v74, v75, v76) >= 2)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v77 = qword_1EA84DC60;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v83 = objc_msgSend_count(v15, v78, v79, v80, v81, v82);
        v89 = objc_msgSend_localeIdentifier(v71, v84, v85, v86, v87, v88);
        *buf = 134218242;
        v125 = v83;
        v126 = 2112;
        v127 = v89;
        _os_log_impl(&dword_18366B000, v77, OS_LOG_TYPE_ERROR, "Requested creating in-process recognizer with %ld locales. Only the top one will be honored: %@", buf, 0x16u);
      }
    }

    v90 = objc_opt_class();
    v123 = v71;
    v94 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v91, &v123, 1, v92, v93);
    v99 = objc_msgSend_defaultActiveCharacterSetForLocales_(v90, v95, v94, v96, v97, v98);

    v100 = [CHRecognizer alloc];
    v43 = objc_msgSend_initWithMode_locale_recognizerOptions_(v100, v101, v10, v71, v53, v102);
    v107 = objc_msgSend_objectForKeyedSubscript_(v99, v103, v71, v104, v105, v106);
    objc_msgSend_setActiveCharacterSet_(v43, v108, v107, v109, v110, v111);
  }

  objc_msgSend_setMinimumDrawingSize_(v43, v48, v49, v50, v51, v52, 3.0, 3.0, v117);
  objc_msgSend_setMaxRecognitionResultCount_(v43, v112, v20, v113, v114, v115);

  return v43;
}

+ (id)createMathRecognizerRunningRemote:(BOOL)a3 priority:(int64_t)a4
{
  if (a3)
  {
    v5 = [CHRemoteMathRecognizer alloc];
    v10 = objc_msgSend_initWithEnableCachingIfAvailable_(v5, v6, 1, v7, v8, v9);
    objc_msgSend_setPriority_(v10, v11, a4, v12, v13, v14);
    if (!v10)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v20 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_ERROR, "Failed to initialize CHRemoteMathRecognizer", buf, 2u);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v21 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_19;
        }

        goto LABEL_9;
      }

      v21 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
LABEL_9:
        v32 = 0;
        v22 = "Failed to initialize CHRemoteMathRecognizer";
        v23 = &v32;
LABEL_18:
        _os_log_impl(&dword_18366B000, v21, OS_LOG_TYPE_FAULT, v22, v23, 2u);
      }

LABEL_19:

      v10 = 0;
    }
  }

  else
  {
    v10 = objc_alloc_init(CHMathRecognizer);
    if (!v10)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v24 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_ERROR, "Failed to initialize CHMathRecognizer", v31, 2u);
      }

      if (qword_1EA84DC48 == -1)
      {
        v21 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_19;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v21 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_19;
        }
      }

      LOWORD(v30) = 0;
      v22 = "Failed to initialize CHMathRecognizer";
      v23 = &v30;
      goto LABEL_18;
    }
  }

  objc_msgSend_setMinimumDrawingSize_(v10, v15, v16, v17, v18, v19, 3.0, 3.0, v30);
  objc_msgSend_setMaxRecognitionResultCount_(v10, v25, 1, v26, v27, v28);
  return v10;
}

- (id)recognizableDrawingForStrokeGroupQueryItem:(id)a3
{
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = sub_18391E9B8;
  v94 = sub_18391E9C8;
  v95 = 0;
  v84 = a3;
  v9 = objc_msgSend_strokeGroupIdentifier(v84, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_dataSource(self, v10, v11, v12, v13, v14);
  v85 = objc_msgSend_strokeProviderSnapshot(v15, v16, v17, v18, v19, v20);
  if (self->_mode || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = objc_msgSend_calculateDocumentProviderSnapshot(v15, v21, v22, v23, v24, v25);
  }

  v27 = [CHRecognitionSessionTask alloc];
  v33 = objc_msgSend_mode(self, v28, v29, v30, v31, v32);
  textRecognitionLocales = self->__textRecognitionLocales;
  preferredLocales = self->_preferredLocales;
  lastRecognitionResult = self->_lastRecognitionResult;
  taskQueueQoSClass = self->__taskQueueQoSClass;
  v43 = objc_msgSend_recognitionEnvironment(self, v38, v39, v40, v41, v42);
  v83 = 0;
  v82 = 0;
  v81 = taskQueueQoSClass;
  isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine = objc_msgSend_initWithSessionMode_locales_preferredLocales_strokeProvider_calculateDocumentProvider_inputResult_recognitionQOSClass_recognitionEnvironment_isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine_(v27, v44, v33, textRecognitionLocales, preferredLocales, v85, v26, lastRecognitionResult, v81, v43, v82, 0, 0, 0, self->_recognitionOptions, 0, v83);
  objc_msgSend_setDisableMathTextSwapping_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v46, self->_disableMathTextSwapping, v47, v48, v49);
  objc_msgSend_setLeverageAllProvidedVariables_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v50, self->_leverageAllProvidedVariables, v51, v52, v53);
  objc_msgSend_setDelegate_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v54, self, v55, v56, v57);
  objc_msgSend_setStrokeGroupingOnly_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v58, 1, v59, v60, v61);
  objc_msgSend_setSaveInputDrawings_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v62, 1, v63, v64, v65);
  v70 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v66, v9, v67, v68, v69);
  objc_msgSend_setForceRecognitionStrokeGroupIdentifiers_(isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine, v71, v70, v72, v73, v74);

  tasksWorkQueueForeground = self->__tasksWorkQueueForeground;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1839250A0;
  block[3] = &unk_1E6DDC840;
  v87 = isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine;
  v88 = v9;
  v89 = &v90;
  v76 = v9;
  v77 = isHighResponsivenessTask_strokeGroupingRequirement_principalLineRequirement_subjectStrokeIdentifiers_recognitionOptions_partialResultBlock_wantsAutoRefine;
  v78 = tasksWorkQueueForeground;
  dispatch_sync(v78, block);
  v79 = v91[5];

  _Block_object_dispose(&v90, 8);

  return v79;
}

- (void)registerChangeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_183925460;
  v6[3] = &unk_1E6DDC818;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  sub_18391D028(self, v6);
}

- (void)unregisterChangeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_183925518;
  v6[3] = &unk_1E6DDC818;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  sub_18391D028(self, v6);
}

- (id)remoteTextSynthesizer
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18391E9B8;
  v9 = sub_18391E9C8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18392562C;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18391D028(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)textSynthesizer
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18391E9B8;
  v9 = sub_18391E9C8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1839257DC;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18391D028(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)textSynthesizerWithLocaleFallback
{
  v7 = objc_msgSend_textSynthesizer(self, a2, v2, v3, v4, v5);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_18391E9B8;
  v19 = sub_18391E9C8;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_183925A3C;
  v11[3] = &unk_1E6DE0000;
  v13 = self;
  v14 = &v15;
  v12 = v7;
  v8 = v7;
  sub_18391D028(self, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (CHRecognitionSession)initWithMode:(int64_t)a3 withVersion:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_initWithMode_(self, v7, a3, v8, v9, v10);
  v16 = v11;
  if (v11)
  {
    objc_msgSend__setSessionVersion_(v11, v12, v6, v13, v14, v15);
  }

  return v16;
}

- (void)setNeedsRecognitionUpdateImmediately:(BOOL)a3
{
  v8 = objc_msgSend_dataSource(self, a2, a3, v3, v4, v5);
  v14 = objc_msgSend_strokeProviderSnapshot(v8, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_mode(self, v15, v16, v17, v18, v19);
  if (!v20)
  {
    if (objc_opt_respondsToSelector())
    {
      v57 = objc_msgSend_calculateDocumentProviderSnapshot(v8, v52, v53, v54, v55, v56);
    }

    else
    {
      v57 = 0;
    }

    v44 = 0;
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_canvasAttachmentProviderSnapshot(v8, v58, v59, v60, v61, v62);
      v50 = v51 = v57;
      goto LABEL_14;
    }

    v51 = v57;
LABEL_13:
    v50 = 0;
    goto LABEL_14;
  }

  if (v20 != 1)
  {
    v44 = 0;
    goto LABEL_8;
  }

  v26 = objc_msgSend_activeTextInputQuery(self, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_textInputTargetsDataSource(v26, v27, v28, v29, v30, v31);
  v38 = objc_msgSend_textInputTargets(v32, v33, v34, v35, v36, v37);
  v44 = objc_msgSend_copy(v38, v39, v40, v41, v42, v43);

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_8:
    v51 = 0;
    goto LABEL_13;
  }

  v50 = 0;
  v51 = objc_msgSend_calculateDocumentProviderSnapshot(v8, v45, v46, v47, v48, v49);
LABEL_14:
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = sub_183925E28;
  v68[3] = &unk_1E6DE0028;
  v68[4] = self;
  v63 = v14;
  v69 = v63;
  v64 = v8;
  v70 = v64;
  v71 = v51;
  v72 = v50;
  v73 = v44;
  v74 = a3;
  v65 = v44;
  v66 = v50;
  v67 = v51;
  sub_18391D028(self, v68);
}

- (void)setSkipMathOperatorsInference:(BOOL)a3
{
  self->__skipMathOperatorsInference = a3;
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, !a3, v3, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(self->_recognitionOptions, v7, v10, CHGroupingPostProcessingManagerOptionExplicitOperators, v8, v9);
}

- (void)setSkipPopulatingStyleInventory:(BOOL)a3
{
  self->__skipPopulatingStyleInventory = a3;
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, v3, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(self->_recognitionOptions, v7, v10, @"CHRecognitionTaskSkipPopulatingInventory", v8, v9);
}

- (void)setForceLocaleNumberFormat:(BOOL)a3
{
  self->__forceLocaleNumberFormat = a3;
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, v3, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(self->_recognitionOptions, v7, v10, qword_1EA84BB58, v8, v9);
}

- (void)setSkipMathTransliterations:(BOOL)a3
{
  self->__skipMathTransliterations = a3;
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a3, v3, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(self->_recognitionOptions, v7, v10, qword_1EA84BB60, v8, v9);
}

+ (id)effectiveLocalesFromLocales:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DF70];
  v65 = v3;
  v10 = objc_msgSend_count(v3, v5, v6, v7, v8, v9);
  v68 = objc_msgSend_arrayWithCapacity_(v4, v11, v10, v12, v13, v14);
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v65;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v71, v75, 16, v16);
  if (v21)
  {
    v22 = *v72;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v72 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v71 + 1) + 8 * i);
        if (objc_msgSend_isLocaleSupported_(a1, v17, v24, v18, v19, v20))
        {
          v26 = objc_msgSend_languageCode(v24, v17, v25, v18, v19, v20);
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v69[2] = sub_183926720;
          v69[3] = &unk_1E6DDD638;
          v27 = v26;
          v70 = v27;
          v36 = objc_msgSend_indexOfObjectPassingTest_(v68, v28, v69, v29, v30, v31);
          if (v36 == 0x7FFFFFFFFFFFFFFFLL)
          {
            objc_msgSend_addObject_(v68, v32, v24, v33, v34, v35);
          }

          else
          {
            v37 = objc_msgSend_objectAtIndexedSubscript_(v68, v32, v36, v33, v34, v35);
            v43 = objc_msgSend_countryCode(v37, v38, v39, v40, v41, v42);
            if (objc_msgSend_length(v43, v44, v45, v46, v47, v48))
            {
            }

            else
            {
              v54 = objc_msgSend_countryCode(v24, v49, v50, v51, v52, v53);
              v60 = objc_msgSend_length(v54, v55, v56, v57, v58, v59) == 0;

              if (!v60)
              {
                objc_msgSend_replaceObjectAtIndex_withObject_(v68, v61, v36, v24, v62, v63);
              }
            }
          }
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v71, v75, 16, v20);
    }

    while (v21);
  }

  return v68;
}

+ (double)autoRefineTriggerFactor
{
  v7 = 1.0;
  if (os_variant_has_internal_diagnostics())
  {
    v8 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v2, v3, v4, v5, v6);
    v13 = objc_msgSend_objectForKey_(v8, v9, @"CHAutoRefineTriggerFactor", v10, v11, v12);

    if (v13)
    {
      v19 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v14, v15, v16, v17, v18);
      objc_msgSend_floatForKey_(v19, v20, @"CHAutoRefineTriggerFactor", v21, v22, v23);
      v25 = v24;

      return v25;
    }
  }

  return v7;
}

- (void)waitForPendingRecognitionTasks
{
  v3 = dispatch_semaphore_create(0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1839268F0;
  v5[3] = &unk_1E6DDC818;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  sub_18391D028(self, v5);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)lastRecognitionResultWaitingForPendingTasks
{
  objc_msgSend_waitForPendingRecognitionTasks(self, a2, v2, v3, v4, v5);

  return objc_msgSend_lastRecognitionResult(self, v7, v8, v9, v10, v11);
}

- (void)registerInputDrawingClient:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  sessionQueue = self->__sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_183926BEC;
  block[3] = &unk_1E6DDC840;
  block[4] = self;
  v6 = v4;
  v13 = v6;
  v14 = &v15;
  dispatch_sync(sessionQueue, block);
  if (*(v16 + 24) == 1)
  {
    objc_msgSend_rebuildRecognitionResults(self, v7, v8, v9, v10, v11);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)unregisterInputDrawingClient:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  sessionQueue = self->__sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_183926E30;
  block[3] = &unk_1E6DDC840;
  block[4] = self;
  v6 = v4;
  v13 = v6;
  v14 = &v15;
  dispatch_sync(sessionQueue, block);
  if (*(v16 + 24) == 1)
  {
    objc_msgSend_rebuildRecognitionResults(self, v7, v8, v9, v10, v11);
  }

  _Block_object_dispose(&v15, 8);
}

- (id)documentLayoutAnalyzer
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18391E9B8;
  v9 = sub_18391E9C8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_183929B08;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18391D028(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)recognizerForLocale:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_18391E9B8;
  v15 = sub_18391E9C8;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_183929FC0;
  v8[3] = &unk_1E6DDC378;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  sub_18391D028(self, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)textCorrectionRecognizerForLocales:(id)a3
{
  v4 = a3;
  objc_opt_self();
  v8 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(v4, v5, @".", &unk_1EF1BF3F8, v6, v7);

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_18391E9B8;
  v21 = sub_18391E9C8;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18392A48C;
  v13[3] = &unk_1E6DE00A0;
  v16 = &v17;
  v13[4] = self;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  v10 = v8;
  sub_18391D028(self, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)mathRecognizer
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18391E9B8;
  v9 = sub_18391E9C8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18392A708;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18391D028(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)evaluationResultForStrokeGroupIdentifier:(int64_t)a3
{
  v36 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = objc_msgSend_expressionEvaluationResults(self->_latestCalculateDocumentProvider, v5, v6, v7, v8, v9, 0);
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v31, v35, 16, v12);
    if (v18)
    {
      v19 = *v32;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v10);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          v22 = objc_msgSend_strokeGroupIdentifier(v21, v13, v14, v15, v16, v17);
          v28 = objc_msgSend_integerValue(v22, v23, v24, v25, v26, v27) == a3;

          if (v28)
          {
            v29 = v21;
            goto LABEL_13;
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v31, v35, 16, v17);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v29 = 0;
LABEL_13:
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)mathTranscriptionWithEvaluationResultForStrokeGroup:(id)a3 outStrokeIdentifiers:(id *)a4 outStrokes:(id *)a5
{
  v179 = *MEMORY[0x1E69E9840];
  v171 = a3;
  v12 = objc_msgSend_lastRecognitionResult(self, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_uniqueIdentifier(v171, v13, v14, v15, v16, v17);
  v23 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v12, v19, v18, v20, v21, v22);

  if (!v23 || (objc_msgSend_mathResult(v23, v24, v25, v26, v27, v28), v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
  {
    v52 = 0;
    v36 = 0;
    goto LABEL_13;
  }

  v30 = objc_msgSend_mathResult(v23, v24, v25, v26, v27, v28);
  v36 = objc_msgSend_preferredTranscription(v30, v31, v32, v33, v34, v35);

  v42 = objc_msgSend_strokeIdentifiers(v171, v37, v38, v39, v40, v41);
  v48 = objc_msgSend_latestStrokeProvider(self, v43, v44, v45, v46, v47);
  v52 = objc_msgSend_sortedStrokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v49, v42, v48, v50, v51);

  v58 = objc_msgSend_uniqueIdentifier(v171, v53, v54, v55, v56, v57);
  v63 = objc_msgSend_evaluationResultForStrokeGroupIdentifier_(self, v59, v58, v60, v61, v62);
  v69 = v63;
  if (v63)
  {
    v70 = MEMORY[0x1E695DF70];
    v71 = objc_msgSend_string(v63, v64, v65, v66, v67, v68);
    v77 = objc_msgSend_length(v71, v72, v73, v74, v75, v76);
    v82 = objc_msgSend_arrayWithCapacity_(v70, v78, v77, v79, v80, v81);

    v88 = objc_msgSend_string(v69, v83, v84, v85, v86, v87);
    v94 = objc_msgSend_string(v69, v89, v90, v91, v92, v93);
    v100 = objc_msgSend_length(v94, v95, v96, v97, v98, v99);
    v176[0] = MEMORY[0x1E69E9820];
    v176[1] = 3221225472;
    v176[2] = sub_18392AFA4;
    v176[3] = &unk_1E6DDBF00;
    v101 = v82;
    v177 = v101;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v88, v102, 0, v100, 2, v176);

    v107 = objc_msgSend_componentsJoinedByString_(v101, v103, @" ", v104, v105, v106);
    if (objc_msgSend_hasPrefix_(v36, v108, @"\\begin{array}{lr}", v109, v110, v111) && objc_msgSend_hasSuffix_(v36, v112, @"\\hline \\end{array}", v113, v114, v115))
    {
      v117 = objc_msgSend_length(v36, v112, v116, v113, v114, v115);
      v123 = objc_msgSend_length(@"\\end{array}", v118, v119, v120, v121, v122);
      v128 = objc_msgSend_substringToIndex_(v36, v124, v117 - v123, v125, v126, v127);
      v133 = objc_msgSend_stringByAppendingFormat_(v128, v129, @"%@ %@", v130, v131, v132, v107, @"\\end{array}");

      v36 = v133;
    }

    else
    {
      if (!objc_msgSend_hasSuffix_(v36, v112, @"=", v113, v114, v115))
      {
LABEL_11:
        v139 = objc_msgSend_strokes(v69, v134, v135, v136, v137, v138);
        v144 = objc_msgSend_arrayByAddingObjectsFromArray_(v52, v140, v139, v141, v142, v143);

        v52 = v144;
        goto LABEL_12;
      }

      objc_msgSend_stringByAppendingFormat_(v36, v134, @" %@", v136, v137, v138, v107);
      v36 = v128 = v36;
    }

    goto LABEL_11;
  }

LABEL_12:

LABEL_13:
  if (a4)
  {
    v145 = objc_msgSend_array(MEMORY[0x1E695DF70], v24, v25, v26, v27, v28);
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v146 = v52;
    v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v147, &v172, v178, 16, v148);
    if (v154)
    {
      v155 = *v173;
      do
      {
        for (i = 0; i != v154; ++i)
        {
          if (*v173 != v155)
          {
            objc_enumerationMutation(v146);
          }

          v157 = objc_msgSend_strokeIdentifier(*(*(&v172 + 1) + 8 * i), v149, v150, v151, v152, v153);
          objc_msgSend_addObject_(v145, v158, v157, v159, v160, v161);
        }

        v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v146, v149, &v172, v178, 16, v153);
      }

      while (v154);
    }

    *a4 = objc_msgSend_copy(v145, v162, v163, v164, v165, v166);
  }

  if (a5)
  {
    v167 = v52;
    *a5 = v52;
  }

  v168 = v36;

  return v36;
}

- (id)tokenStrokeIdentifiersForContextStrokes:(id)a3 point:(CGPoint)a4 tokenizationLevel:(int64_t)a5 completion:(id)a6 shouldCancel:(id)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v20 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v16, 1, v17, v18, v19);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_18392B178;
  v29[3] = &unk_1E6DE00C8;
  v29[4] = self;
  v22 = v13;
  v30 = v22;
  v34 = x;
  v35 = y;
  v36 = a5;
  v23 = v15;
  v32 = v23;
  v24 = v20;
  v31 = v24;
  v25 = v14;
  v33 = v25;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"OnDemandGrouping", v29);
  v26 = v33;
  v27 = v24;

  return v24;
}

- (id)reflowableTextLinesForContextStrokes:(id)a3 point:(CGPoint)a4 completion:(id)a5 shouldCancel:(id)a6
{
  y = a4.y;
  x = a4.x;
  v42 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v14 = qword_1EA84DC60;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = objc_msgSend_count(v11, v15, v16, v17, v18, v19);
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "reflowable text lines query with context strokes %ld", buf, 0xCu);
  }

  v24 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v20, 100, v21, v22, v23);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_18392B6A4;
  v33[3] = &unk_1E6DE00F0;
  v33[4] = self;
  v26 = v11;
  v34 = v26;
  v38 = x;
  v39 = y;
  v27 = v13;
  v36 = v27;
  v28 = v24;
  v35 = v28;
  v29 = v12;
  v37 = v29;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"ReflowableTextLines", v33);
  v30 = v37;
  v31 = v28;

  return v28;
}

+ (id)strokeIdentifiersInProximalGroupsForStrokeIdentifiers:(id)a3 sortedStrokeGroups:(id)a4 clusteredStrokeGroups:(id)a5 unusedStrokeIdentifiers:(id *)a6
{
  v121 = *MEMORY[0x1E69E9840];
  v93 = a3;
  v100 = a4;
  v92 = a5;
  v95 = objc_msgSend_set(MEMORY[0x1E695DFA8], v8, v9, v10, v11, v12);
  v98 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15, v16, v17);
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v18 = v93;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v105, v118, 16, v20);
  if (v21)
  {
    v22 = *v106;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v106 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v105 + 1) + 8 * i);
        v25 = objc_opt_class();
        v33 = objc_msgSend_strokeGroupContainingStrokeIdentifier_strokeGroups_(v25, v26, v24, v100, v27, v28);
        if (v33)
        {
          objc_msgSend_addObject_(v98, v29, v33, v30, v31, v32);
        }

        else
        {
          objc_msgSend_addObject_(v95, v29, v24, v30, v31, v32);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v34, &v105, v118, 16, v35);
    }

    while (v21);
  }

  v91 = v98;
  v99 = v92;
  objc_opt_self();
  v97 = objc_msgSend_array(MEMORY[0x1E695DF70], v36, v37, v38, v39, v40);
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v91;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v113, v120, 16, v42);
  if (v43)
  {
    v44 = *v114;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v114 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v18;
        v47 = *(*(&v113 + 1) + 8 * j);
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v48 = v99;
        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v109, v119, 16, v50);
        if (v55)
        {
          v56 = *v110;
          while (2)
          {
            for (k = 0; k != v55; ++k)
            {
              if (*v110 != v56)
              {
                objc_enumerationMutation(v48);
              }

              v58 = *(*(&v109 + 1) + 8 * k);
              if (objc_msgSend_containsObject_(v58, v51, v47, v52, v53, v54, v91))
              {
                objc_msgSend_addObjectsFromArray_(v97, v51, v58, v52, v53, v54);
                goto LABEL_26;
              }
            }

            v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v109, v119, 16, v54);
            if (v55)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:

        v18 = v46;
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v59, &v113, v120, 16, v60);
    }

    while (v43);
  }

  v66 = objc_msgSend_set(MEMORY[0x1E695DFA8], v61, v62, v63, v64, v65);
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v67 = v97;
  v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v68, &v101, v117, 16, v69);
  if (v75)
  {
    v76 = *v102;
    do
    {
      for (m = 0; m != v75; ++m)
      {
        if (*v102 != v76)
        {
          objc_enumerationMutation(v67);
        }

        v78 = objc_msgSend_strokeIdentifiers(*(*(&v101 + 1) + 8 * m), v70, v71, v72, v73, v74, v91);
        v84 = objc_msgSend_allObjects(v78, v79, v80, v81, v82, v83);
        objc_msgSend_addObjectsFromArray_(v66, v85, v84, v86, v87, v88);
      }

      v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v67, v70, &v101, v117, 16, v74);
    }

    while (v75);
  }

  if (a6)
  {
    v89 = v95;
    *a6 = v95;
  }

  return v66;
}

+ (id)strokeIdentifiersInFullContextForStrokeIdentifiers:(id)a3 sortedStrokeGroups:(id)a4 clusteredStrokeGroups:(id)a5 unusedStrokeIdentifiers:(id *)a6
{
  v136 = *MEMORY[0x1E69E9840];
  v103 = a3;
  v110 = a4;
  v102 = a5;
  v106 = objc_msgSend_set(MEMORY[0x1E695DFA8], v8, v9, v10, v11, v12);
  v18 = objc_msgSend_set(MEMORY[0x1E695DFA8], v13, v14, v15, v16, v17);
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  obj = v103;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v127, v135, 16, v20);
  if (v21)
  {
    v22 = *v128;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v128 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v127 + 1) + 8 * i);
        v25 = objc_opt_class();
        v33 = objc_msgSend_strokeGroupContainingStrokeIdentifier_strokeGroups_(v25, v26, v24, v110, v27, v28);
        if (v33)
        {
          objc_msgSend_addObject_(v18, v29, v33, v30, v31, v32);
        }

        else
        {
          objc_msgSend_addObject_(v106, v29, v24, v30, v31, v32);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v127, v135, 16, v35);
    }

    while (v21);
  }

  v109 = objc_msgSend_array(MEMORY[0x1E695DF70], v36, v37, v38, v39, v40);
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v107 = v102;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v41, &v123, v134, 16, v42);
  if (v43)
  {
    v44 = *v124;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v124 != v44)
        {
          objc_enumerationMutation(v107);
        }

        v46 = *(*(&v123 + 1) + 8 * j);
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v47 = v18;
        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v119, v133, 16, v49);
        if (v54)
        {
          v55 = *v120;
          while (2)
          {
            for (k = 0; k != v54; ++k)
            {
              if (*v120 != v55)
              {
                objc_enumerationMutation(v47);
              }

              if (objc_msgSend_containsObject_(v46, v50, *(*(&v119 + 1) + 8 * k), v51, v52, v53))
              {
                objc_msgSend_addObject_(v109, v50, v46, v51, v52, v53);
                goto LABEL_26;
              }
            }

            v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v119, v133, 16, v53);
            if (v54)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v57, &v123, v134, 16, v58);
    }

    while (v43);
  }

  v59 = objc_opt_class();
  v101 = objc_msgSend_expandedStrokeGroupClusters_allClusters_(v59, v60, v109, v107, v61, v62);
  v68 = objc_msgSend_set(MEMORY[0x1E695DFA8], v63, v64, v65, v66, v67);
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v104 = v101;
  v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v69, &v115, v132, 16, v70);
  if (v71)
  {
    v105 = *v116;
    do
    {
      for (m = 0; m != v71; ++m)
      {
        if (*v116 != v105)
        {
          objc_enumerationMutation(v104);
        }

        v73 = *(*(&v115 + 1) + 8 * m);
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v74 = v73;
        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v111, v131, 16, v76);
        if (v82)
        {
          v83 = *v112;
          do
          {
            for (n = 0; n != v82; ++n)
            {
              if (*v112 != v83)
              {
                objc_enumerationMutation(v74);
              }

              v85 = objc_msgSend_strokeIdentifiers(*(*(&v111 + 1) + 8 * n), v77, v78, v79, v80, v81);
              v91 = objc_msgSend_allObjects(v85, v86, v87, v88, v89, v90);
              objc_msgSend_addObjectsFromArray_(v68, v92, v91, v93, v94, v95);
            }

            v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v77, &v111, v131, 16, v81);
          }

          while (v82);
        }
      }

      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v96, &v115, v132, 16, v97);
    }

    while (v71);
  }

  if (a6)
  {
    v98 = v106;
    *a6 = v106;
  }

  return v68;
}

- (id)contextLookupResultsAtLocation:(CGPoint)a3 completion:(id)a4 shouldCancel:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v15 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v11, 100, v12, v13, v14);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_18392EF4C;
  v23[3] = &unk_1E6DE0168;
  v17 = v10;
  v25 = v17;
  v23[4] = self;
  v18 = v15;
  v24 = v18;
  v27 = x;
  v28 = y;
  v19 = v9;
  v26 = v19;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"ContextLookupAtLocation", v23);
  v20 = v26;
  v21 = v18;

  return v18;
}

- (id)structuredContextualTextResultsWithTextResults:(id)a3
{
  v436 = *MEMORY[0x1E69E9840];
  v375 = a3;
  v8 = objc_msgSend_strokeGroupingResult(self->_lastRecognitionResult, v3, v4, v5, v6, v7);
  v382 = objc_msgSend_textStrokeGroupClusters(v8, v9, v10, v11, v12, v13);

  v394 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v14, v15, v16, v17, v18);
  v421 = 0u;
  v422 = 0u;
  v419 = 0u;
  v420 = 0u;
  obj = v375;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v419, v435, 16, v20);
  if (v21)
  {
    v390 = *v420;
    do
    {
      v27 = 0;
      v387 = v21;
      do
      {
        if (*v420 != v390)
        {
          objc_enumerationMutation(obj);
        }

        v28 = 0;
        v392 = v27;
        v29 = *(*(&v419 + 1) + 8 * v27);
        while (v28 < objc_msgSend_count(v382, v22, v23, v24, v25, v26))
        {
          v417 = 0u;
          v418 = 0u;
          v415 = 0u;
          v416 = 0u;
          v30 = objc_msgSend_objectAtIndexedSubscript_(v382, v22, v28, v24, v25, v26);
          v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v415, v434, 16, v32);
          if (v38)
          {
            v39 = *v416;
            do
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v416 != v39)
                {
                  objc_enumerationMutation(v30);
                }

                v41 = *(*(&v415 + 1) + 8 * i);
                v42 = objc_msgSend_strokeGroup(v29, v33, v34, v35, v36, v37);
                LODWORD(v41) = objc_msgSend_isEquivalentToStrokeGroup_(v41, v43, v42, v44, v45, v46);

                if (v41)
                {
                  v47 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v33, v28, v35, v36, v37);
                  v52 = objc_msgSend_objectForKeyedSubscript_(v394, v48, v47, v49, v50, v51);

                  if (!v52)
                  {
                    v58 = objc_msgSend_array(MEMORY[0x1E695DF70], v53, v54, v55, v56, v57);
                    v63 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v59, v28, v60, v61, v62);
                    objc_msgSend_setObject_forKeyedSubscript_(v394, v64, v58, v63, v65, v66);

                    v52 = v58;
                  }

                  v67 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v53, v28, v55, v56, v57);
                  v72 = objc_msgSend_objectForKeyedSubscript_(v394, v68, v67, v69, v70, v71);
                  objc_msgSend_addObject_(v72, v73, v29, v74, v75, v76);
                }
              }

              v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v415, v434, 16, v37);
            }

            while (v38);
          }

          ++v28;
        }

        v27 = v392 + 1;
      }

      while (v392 + 1 != v387);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v419, v435, 16, v26);
    }

    while (v21);
  }

  v82 = objc_msgSend_allKeys(v394, v77, v78, v79, v80, v81);
  v371 = objc_msgSend_sortedArrayUsingSelector_(v82, v83, sel_compare_, v84, v85, v86);

  v385 = objc_msgSend_array(MEMORY[0x1E695DF70], v87, v88, v89, v90, v91);
  v413 = 0u;
  v414 = 0u;
  v411 = 0u;
  v412 = 0u;
  v378 = v371;
  v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v378, v92, &v411, v433, 16, v93);
  if (v98)
  {
    v99 = *v412;
    do
    {
      for (j = 0; j != v98; ++j)
      {
        if (*v412 != v99)
        {
          objc_enumerationMutation(v378);
        }

        v101 = objc_msgSend_objectForKeyedSubscript_(v394, v94, *(*(&v411 + 1) + 8 * j), v95, v96, v97);
        v102 = [CHContextualTextResults alloc];
        v107 = objc_msgSend_initWithTextResults_(v102, v103, v101, v104, v105, v106);
        objc_msgSend_addObject_(v385, v108, v107, v109, v110, v111);
      }

      v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v378, v94, &v411, v433, 16, v97);
    }

    while (v98);
  }

  if (objc_msgSend_count(obj, v112, v113, v114, v115, v116) && !objc_msgSend_count(v385, v117, v118, v119, v120, v121))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v122 = qword_1EA84DC60;
    if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v122, OS_LOG_TYPE_ERROR, "No textStrokeGroupClusters containing selected textResults in finding structuredContextualTextResults", buf, 2u);
    }

    v409 = 0u;
    v410 = 0u;
    v407 = 0u;
    v408 = 0u;
    v123 = obj;
    v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v123, v124, &v407, v432, 16, v125);
    if (v126)
    {
      v127 = *v408;
      do
      {
        for (k = 0; k != v126; ++k)
        {
          if (*v408 != v127)
          {
            objc_enumerationMutation(v123);
          }

          v129 = *(*(&v407 + 1) + 8 * k);
          v130 = [CHContextualTextResults alloc];
          v431 = v129;
          v134 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v131, &v431, 1, v132, v133);
          v139 = objc_msgSend_initWithTextResults_(v130, v135, v134, v136, v137, v138);

          objc_msgSend_addObject_(v385, v140, v139, v141, v142, v143);
        }

        v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v123, v144, &v407, v432, 16, v145);
      }

      while (v126);
    }
  }

  v386 = objc_msgSend_array(MEMORY[0x1E695DF70], v117, v118, v119, v120, v121);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v377 = objc_msgSend_array(MEMORY[0x1E695DF70], v150, v151, v152, v153, v154);
  v405 = 0u;
  v406 = 0u;
  v403 = 0u;
  v404 = 0u;
  v393 = v385;
  v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v393, v155, &v403, v430, 16, v156);
  if (v162)
  {
    v163 = *v404;
    do
    {
      for (m = 0; m != v162; ++m)
      {
        if (*v404 != v163)
        {
          objc_enumerationMutation(v393);
        }

        v165 = *(*(&v403 + 1) + 8 * m);
        if (objc_msgSend_isMathForContextLookup(v165, v157, v158, v159, v160, v161))
        {
          objc_msgSend_addObject_(v386, v166, v165, v168, v169, v170);
        }

        else
        {
          objc_msgSend_bounds(v165, v166, v167, v168, v169, v170);
          v440.origin.x = x;
          v440.origin.y = y;
          v440.size.width = width;
          v440.size.height = height;
          v439 = CGRectUnion(v438, v440);
          x = v439.origin.x;
          y = v439.origin.y;
          width = v439.size.width;
          height = v439.size.height;
          objc_msgSend_addObject_(v377, v171, v165, v172, v173, v174);
        }
      }

      v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v393, v157, &v403, v430, 16, v161);
    }

    while (v162);
  }

  v381 = objc_msgSend_array(MEMORY[0x1E695DF70], v175, v176, v177, v178, v179);
  v401 = 0u;
  v402 = 0u;
  v399 = 0u;
  v400 = 0u;
  v391 = v377;
  v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(v391, v180, &v399, v429, 16, v181);
  if (v182)
  {
    v379 = *v400;
    do
    {
      v383 = v182;
      for (n = 0; n != v383; ++n)
      {
        if (*v400 != v379)
        {
          objc_enumerationMutation(v391);
        }

        v189 = *(*(&v399 + 1) + 8 * n);
        objc_msgSend_bounds(v189, v183, v184, v185, v186, v187);
        v191 = v190;
        v193 = v192;
        v195 = v194;
        v197 = v196;
        v198 = objc_alloc(MEMORY[0x1E69D9DD8]);
        v388 = objc_msgSend_initWithNormalizedTopLeft_topRight_bottomRight_bottomLeft_size_(v198, v199, v200, v201, v202, v203, (v191 - x) / width, (v193 - y) / height, (v191 + v195 - x) / width, (v193 - y) / height, (v191 + v195 - x) / width, (v193 + v197 - y) / height, (v191 - x) / width, (v193 + v197 - y) / height, *&width, *&height);
        v209 = objc_msgSend_textResults(v189, v204, v205, v206, v207, v208);
        v214 = objc_msgSend_objectAtIndexedSubscript_(v209, v210, 0, v211, v212, v213);
        v220 = objc_msgSend_textResult(v214, v215, v216, v217, v218, v219);
        v231 = objc_msgSend_locale(v220, v221, v222, v223, v224, v225);
        if (v231)
        {
          v232 = objc_msgSend_textResults(v189, v226, v227, v228, v229, v230);
          v237 = objc_msgSend_objectAtIndexedSubscript_(v232, v233, 0, v234, v235, v236);
          v243 = objc_msgSend_textResult(v237, v238, v239, v240, v241, v242);
          v249 = objc_msgSend_locale(v243, v244, v245, v246, v247, v248);
        }

        else
        {
          v249 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v226, @"en_US", v228, v229, v230);
        }

        v255 = objc_msgSend_topTranscription(v189, v250, v251, v252, v253, v254);
        v259 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v255, v256, @"\n", @" ", v257, v258);

        v260 = [CHLineWrappableLine alloc];
        v263 = objc_msgSend_initWithQuad_text_locale_(v260, v261, v388, v259, v249, v262);
        objc_msgSend_addObject_(v381, v264, v263, v265, v266, v267);
      }

      v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(v391, v183, &v399, v429, 16, v187);
    }

    while (v182);
  }

  v268 = [CHLineWrappableGroup alloc];
  v372 = objc_msgSend_initWithLines_(v268, v269, v381, v270, v271, v272);
  v278 = objc_msgSend_lineWrapper(self, v273, v274, v275, v276, v277);
  v428 = v372;
  v282 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v279, &v428, 1, v280, v281);
  v374 = objc_msgSend_lineWrappingResultForGroups_options_error_(v278, v283, v282, 0, 0, v284);

  v397 = 0u;
  v398 = 0u;
  v395 = 0u;
  v396 = 0u;
  v290 = objc_msgSend_lineWrappableGroups(v374, v285, v286, v287, v288, v289);
  v380 = v290;
  v293 = objc_msgSend_countByEnumeratingWithState_objects_count_(v290, v291, &v395, v427, 16, v292);
  v299 = 0;
  if (v293)
  {
    v384 = *v396;
    do
    {
      v389 = v293;
      for (ii = 0; ii != v389; ++ii)
      {
        if (*v396 != v384)
        {
          objc_enumerationMutation(v380);
        }

        v301 = *(*(&v395 + 1) + 8 * ii);
        v307 = objc_msgSend_array(MEMORY[0x1E695DF70], v294, v295, v296, v297, v298);
        for (jj = 0; ; ++jj)
        {
          v309 = objc_msgSend_subregions(v301, v302, v303, v304, v305, v306);
          v315 = jj < objc_msgSend_count(v309, v310, v311, v312, v313, v314);

          if (!v315)
          {
            break;
          }

          if (v299 < objc_msgSend_count(v393, v316, v317, v318, v319, v320))
          {
            v325 = objc_msgSend_objectAtIndexedSubscript_(v391, v321, v299, v322, v323, v324);
            v331 = objc_msgSend_textResults(v325, v326, v327, v328, v329, v330);
            objc_msgSend_addObjectsFromArray_(v307, v332, v331, v333, v334, v335);

            goto LABEL_75;
          }

          if (qword_1EA84DC48 == -1)
          {
            v325 = qword_1EA84DC60;
            if (!os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_75;
            }

LABEL_74:
            *buf = 0;
            _os_log_impl(&dword_18366B000, v325, OS_LOG_TYPE_ERROR, "structuredContextualTextResults: Number of wrapping result lines doesn't match wrappable textResults count", buf, 2u);
            goto LABEL_75;
          }

          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v325 = qword_1EA84DC60;
          if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_74;
          }

LABEL_75:

          ++v299;
        }

        v336 = [CHContextualTextResults alloc];
        v341 = objc_msgSend_initWithTextResults_(v336, v337, v307, v338, v339, v340);
        objc_msgSend_addObject_(v386, v342, v341, v343, v344, v345);
      }

      v290 = v380;
      v293 = objc_msgSend_countByEnumeratingWithState_objects_count_(v380, v294, &v395, v427, 16, v298);
    }

    while (v293);
  }

  if (v299 != objc_msgSend_count(v391, v346, v347, v348, v349, v350))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v356 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v356, OS_LOG_TYPE_ERROR))
    {
      v362 = objc_msgSend_count(v393, v357, v358, v359, v360, v361);
      *buf = 134218240;
      v424 = v299;
      v425 = 2048;
      v426 = v362;
      _os_log_impl(&dword_18366B000, v356, OS_LOG_TYPE_ERROR, "structuredContextualTextResults: Number of wrapping result lines should match that of wrappable textResults count: %lu != %lu", buf, 0x16u);
    }
  }

  if (v299 != objc_msgSend_count(v391, v351, v352, v353, v354, v355))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v363 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v363, OS_LOG_TYPE_FAULT))
    {
      v369 = objc_msgSend_count(v393, v364, v365, v366, v367, v368);
      *buf = 134218240;
      v424 = v299;
      v425 = 2048;
      v426 = v369;
      _os_log_impl(&dword_18366B000, v363, OS_LOG_TYPE_FAULT, "structuredContextualTextResults: Number of wrapping result lines should match that of wrappable textResults count: %lu != %lu", buf, 0x16u);
    }
  }

  return v386;
}

- (id)contextLookupResultsWithSelectedStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v11, 100, v12, v13, v14);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_183933838;
  v24[3] = &unk_1E6DE0208;
  v17 = v10;
  v28 = v17;
  v18 = v15;
  v25 = v18;
  v19 = v8;
  v26 = v19;
  v27 = self;
  v20 = v9;
  v29 = v20;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"ContextLookupWithSelectedStrokes", v24);
  v21 = v29;
  v22 = v18;

  return v18;
}

- (id)contextLookupResultsWithSelectionPath:(CGPath *)a3 completion:(id)a4 shouldCancel:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v10, 100, v11, v12, v13);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_183933AF4;
  v22[3] = &unk_1E6DE01B8;
  v16 = v9;
  v24 = v16;
  v22[4] = self;
  v17 = v14;
  v23 = v17;
  v26 = a3;
  v18 = v8;
  v25 = v18;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"ContextLookupWithPath", v22);
  v19 = v25;
  v20 = v17;

  return v17;
}

- (id)contextualTextResultsForContextStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v11 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_DEFAULT, "contextualTextResultsForContextStrokes", buf, 2u);
  }

  v16 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v12, 100, v13, v14, v15);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_183934394;
  v25[3] = &unk_1E6DE0208;
  v18 = v16;
  v26 = v18;
  v27 = self;
  v19 = v8;
  v28 = v19;
  v20 = v10;
  v29 = v20;
  v21 = v9;
  v30 = v21;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"ContextualTextResults", v25);
  v22 = v30;
  v23 = v18;

  return v18;
}

- (id)tokenStrokeIdentifiersWithCoveringStroke:(id)a3 completion:(id)a4 shouldCancel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v11, 100, v12, v13, v14);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_183934628;
  v24[3] = &unk_1E6DE0208;
  v24[4] = self;
  v17 = v8;
  v25 = v17;
  v18 = v10;
  v27 = v18;
  v19 = v15;
  v26 = v19;
  v20 = v9;
  v28 = v20;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"StrokesCoveredByStroke", v24);
  v21 = v28;
  v22 = v19;

  return v19;
}

- (id)strokePointTransformationsForContextStrokes:(id)a3 parameters:(id)a4 completionWithTelemetry:(id)a5 shouldCancel:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v14, 100, v15, v16, v17);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1839363E4;
  v28[3] = &unk_1E6DE0318;
  v28[4] = self;
  v20 = v10;
  v29 = v20;
  v21 = v13;
  v32 = v21;
  v22 = v12;
  v33 = v22;
  v23 = v11;
  v30 = v23;
  v24 = v18;
  v31 = v24;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"StrokePointTransformations", v28);
  v25 = v31;
  v26 = v24;

  return v24;
}

+ (id)alignReflowableTokens:(id)a3 resultTokens:(id)a4 strokeIdentifiers:(id)a5 outStrokeIdentifiers:(id *)a6
{
  v352 = *MEMORY[0x1E69E9840];
  v302 = a3;
  v8 = a4;
  v336 = a5;
  v305 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12, v13);
  v304 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16, v17, v18);
  v337 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
  v348 = 0u;
  v349 = 0u;
  v346 = 0u;
  v347 = 0u;
  obj = v302;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v346, v351, 16, v25);
  if (!v26)
  {

    v335 = 0;
    v33 = &stru_1EF1C0318;
    if (!a6)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v32 = 0;
  v335 = 0;
  v307 = *v347;
  v308 = v26;
  v33 = &stru_1EF1C0318;
  do
  {
    for (i = 0; i != v308; ++i)
    {
      if (*v347 != v307)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v346 + 1) + 8 * i);
      if (v335)
      {
        v35 = objc_msgSend_string(v335, v27, v28, v29, v30, v31);
        if (objc_msgSend_hasPrecedingSpace(v34, v36, v37, v38, v39, v40))
        {
          v46 = objc_msgSend_stringByAppendingString_(v35, v41, @" ", v43, v44, v45);

          v35 = v46;
        }

        v47 = objc_msgSend_string(v34, v41, v42, v43, v44, v45);
        v332 = objc_msgSend_stringByAppendingString_(v35, v48, v47, v49, v50, v51);

        objc_msgSend_bounds(v335, v52, v53, v54, v55, v56);
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;
        objc_msgSend_bounds(v34, v65, v66, v67, v68, v69);
        v355.origin.x = v70;
        v355.origin.y = v71;
        v355.size.width = v72;
        v355.size.height = v73;
        v353.origin.x = v58;
        v353.origin.y = v60;
        v353.size.width = v62;
        v353.size.height = v64;
        v354 = CGRectUnion(v353, v355);
        x = v354.origin.x;
        y = v354.origin.y;
        width = v354.size.width;
        height = v354.size.height;
        objc_msgSend_principalLines(v335, v78, v79, v80, v81, v82);
        objc_msgSend_bounds(v335, v83, v84, v85, v86, v87);
        v96 = v95;
        v98 = v97;
        v99 = v338;
        v329 = *&v338;
        v100 = 1.0;
        if (v93 == 0.0)
        {
          v101 = 1.0;
        }

        else
        {
          v101 = v93;
        }

        if (v94 != 0.0)
        {
          v100 = v94;
        }

        v330 = v100;
        v327 = *(&v340 + 1);
        v328 = *&v340;
        v325 = *(&v342 + 1);
        v326 = *&v342;
        v323 = *(&v344 + 1);
        v324 = *&v344;
        if (v34)
        {
          objc_msgSend_principalLines(v34, v88, v89, v90, v91, v92);
        }

        else
        {
          v344 = 0u;
          v345 = 0u;
          v342 = 0u;
          v343 = 0u;
          v340 = 0u;
          v341 = 0u;
          v338 = 0u;
          v339 = 0u;
        }

        objc_msgSend_bounds(v34, v88, v89, v90, v91, v92);
        v111 = v110;
        v319 = v112;
        v320 = v101;
        v321 = v98;
        v322 = v96;
        v317 = *(&v339 + 1);
        v318 = *&v339;
        if (v108 == 0.0)
        {
          v113 = 1.0;
        }

        else
        {
          v113 = v108;
        }

        if (v109 == 0.0)
        {
          v114 = 1.0;
        }

        else
        {
          v114 = v109;
        }

        v315 = *(&v341 + 1);
        v316 = *&v341;
        v313 = *(&v343 + 1);
        v314 = *&v343;
        v311 = *(&v345 + 1);
        v312 = *&v345;
        if (width == 0.0)
        {
          v115 = 1.0;
        }

        else
        {
          v115 = width;
        }

        v116 = height == 0.0;
        v117 = height;
        if (height == 0.0)
        {
          height = 1.0;
        }

        v309 = v117;
        v310 = width;
        v118 = 1.0 / v117;
        if (v116)
        {
          v119 = 1.0;
        }

        else
        {
          v119 = v118;
        }

        v120 = objc_opt_class();
        v121 = objc_opt_class();
        v333 = objc_msgSend_textSize(v335, v122, v123, v124, v125, v126);
        objc_msgSend_bounds(v335, v127, v128, v129, v130, v131);
        v137 = objc_msgSend_scaledSize_scale_(v121, v132, v333, v133, v134, v135, v136);
        v350[0] = v137;
        v138 = objc_opt_class();
        v144 = objc_msgSend_textSize(v34, v139, v140, v141, v142, v143);
        objc_msgSend_bounds(v34, v145, v146, v147, v148, v149);
        v155 = objc_msgSend_scaledSize_scale_(v138, v150, v144, v151, v152, v153, v154);
        v350[1] = v155;
        v159 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v156, v350, 2, v157, v158);
        v164 = objc_msgSend_averageTextSize_(v120, v160, v159, v161, v162, v163);
        v331 = objc_msgSend_scaledSize_scale_(CHTextSize, v165, v164, v166, v167, v168, v119);

        v174 = objc_msgSend_drawing(v335, v169, v170, v171, v172, v173);
        v180 = objc_msgSend_drawing(v34, v175, v176, v177, v178, v179);
        objc_msgSend_appendDrawing_(v174, v181, v180, v182, v183, v184);

        v190 = objc_msgSend_principalPoints(v335, v185, v186, v187, v188, v189);
        v196 = objc_msgSend_principalPoints(v34, v191, v192, v193, v194, v195);
        v201 = objc_msgSend_arrayByAddingObjectsFromArray_(v190, v197, v196, v198, v199, v200);

        v202 = [CHReflowableSynthesisResultToken alloc];
        v208 = objc_msgSend_drawing(v335, v203, v204, v205, v206, v207);
        *&v338 = (v322 + v329 * v320 - x) / v115;
        *(&v338 + 1) = (v321 + *(&v99 + 1) * v330 - y) / height;
        *&v339 = (v319 + v318 * v113 - x) / v115;
        *(&v339 + 1) = (v111 + v317 * v114 - y) / height;
        *&v340 = (v322 + v328 * v320 - x) / v115;
        *(&v340 + 1) = (v321 + v327 * v330 - y) / height;
        *&v341 = (v319 + v316 * v113 - x) / v115;
        *(&v341 + 1) = (v111 + v315 * v114 - y) / height;
        *&v342 = (v322 + v326 * v320 - x) / v115;
        *(&v342 + 1) = (v321 + v325 * v330 - y) / height;
        *&v343 = (v319 + v314 * v113 - x) / v115;
        *(&v343 + 1) = (v111 + v313 * v114 - y) / height;
        *&v344 = (v322 + v324 * v320 - x) / v115;
        *(&v344 + 1) = (v321 + v323 * v330 - y) / height;
        *&v345 = (v319 + v312 * v113 - x) / v115;
        *(&v345 + 1) = (v111 + v311 * v114 - y) / height;
        hasPrecedingSpace = objc_msgSend_hasPrecedingSpace(v335, v209, v210, v211, v212, v213);
        v216 = objc_msgSend_initWithDrawing_string_principalLines_principalPoints_textSize_bounds_hasPrecedingSpace_(v202, v215, v208, v332, &v338, v201, v331, hasPrecedingSpace, x, y, v310, v309);

        v102 = v216;
      }

      else
      {
        v102 = v34;
      }

      v335 = v102;
      if (objc_msgSend_hasPrecedingSpace(v102, v103, v104, v105, v106, v107))
      {
        v222 = @" ";
      }

      else
      {
        v222 = &stru_1EF1C0318;
      }

      v223 = objc_msgSend_string(v335, v217, v218, v219, v220, v221);
      v228 = objc_msgSend_stringByAppendingString_(v222, v224, v223, v225, v226, v227);
      while (1)
      {

        v234 = objc_msgSend_length(v33, v229, v230, v231, v232, v233);
        if (v234 >= objc_msgSend_length(v228, v235, v236, v237, v238, v239) || v32 >= objc_msgSend_count(v8, v240, v241, v242, v243, v244))
        {
          break;
        }

        v223 = objc_msgSend_objectAtIndexedSubscript_(v8, v240, v32, v242, v243, v244);
        if ((objc_msgSend_properties(v223, v245, v246, v247, v248, v249) & 0x20) != 0)
        {
          v255 = objc_msgSend_stringByAppendingString_(v33, v250, @" ", v252, v253, v254);

          v33 = v255;
        }

        v256 = objc_msgSend_string(v223, v250, v251, v252, v253, v254);
        v261 = objc_msgSend_stringByAppendingString_(v33, v257, v256, v258, v259, v260);

        v267 = objc_msgSend_strokeIndexes(v223, v262, v263, v264, v265, v266);
        v272 = objc_msgSend_objectsAtIndexes_(v336, v268, v267, v269, v270, v271);

        objc_msgSend_addObjectsFromArray_(v337, v273, v272, v274, v275, v276);
        ++v32;
        v33 = v261;
      }

      if (objc_msgSend_isEqualToString_(v33, v240, v228, v242, v243, v244))
      {
        objc_msgSend_addObject_(v305, v277, v335, v278, v279, v280);
        objc_msgSend_addObject_(v304, v281, v337, v282, v283, v284);

        v33 = &stru_1EF1C0318;
        v290 = objc_msgSend_array(MEMORY[0x1E695DF70], v285, v286, v287, v288, v289);

        v335 = 0;
        v337 = v290;
      }
    }

    v308 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v346, v351, 16, v31);
  }

  while (v308);

  if (v335)
  {
    objc_msgSend_addObject_(v305, v291, v335, v292, v293, v294);
    objc_msgSend_addObject_(v304, v295, v337, v296, v297, v298);
    if (!a6)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v335 = 0;
  if (a6)
  {
LABEL_52:
    v299 = v304;
    *a6 = v304;
  }

LABEL_53:
  v300 = v305;

  return v305;
}

- (id)refinedTokensForSingleLineContextStrokes:(id)a3 styleControlParameter:(id)a4 transcription:(id)a5 completion:(id)a6 shouldCancel:(id)a7
{
  v69 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v57 = v14;
  v21 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v17, 100, v18, v19, v20);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v22 = qword_1EA84DC60;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_msgSend_count(v12, v23, v24, v25, v26, v27);
    v34 = objc_msgSend_latestStrokeProvider(self, v29, v30, v31, v32, v33);
    v40 = objc_msgSend_orderedStrokes(v34, v35, v36, v37, v38, v39);
    *buf = 134218240;
    v66 = v28;
    v67 = 2048;
    v68 = objc_msgSend_count(v40, v41, v42, v43, v44, v45);
    _os_log_impl(&dword_18366B000, v22, OS_LOG_TYPE_DEFAULT, "Session scheduling a synthesis for AutoRefine with strokes to replace = %ld, strokes in provider = %ld", buf, 0x16u);
  }

  v46 = v21;
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = sub_18393C224;
  v58[3] = &unk_1E6DE0400;
  v48 = v16;
  v63 = v48;
  v49 = v15;
  v64 = v49;
  v58[4] = self;
  v56 = v12;
  v59 = v56;
  v50 = v57;
  v60 = v50;
  v51 = v13;
  v61 = v51;
  v52 = v46;
  v62 = v52;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"RefinedTokensForSingleLineContextStroke", v58);
  v53 = v62;
  v54 = v52;

  return v52;
}

- (id)refinedTokensForContextStrokes:(id)a3 styleControlParameter:(id)a4 completion:(id)a5 shouldCancel:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v14, 100, v15, v16, v17);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_18393CC50;
  v28[3] = &unk_1E6DE0318;
  v28[4] = self;
  v20 = v10;
  v29 = v20;
  v21 = v13;
  v32 = v21;
  v22 = v11;
  v30 = v22;
  v23 = v18;
  v31 = v23;
  v24 = v12;
  v33 = v24;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"RefinedTokensForContextStroke", v28);
  v25 = v33;
  v26 = v23;

  return v23;
}

- (id)refinementOfContextStrokes:(id)a3 styleControlParameter:(id)a4 completion:(id)a5 shouldCancel:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v14, 100, v15, v16, v17);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_18393D420;
  v28[3] = &unk_1E6DE0318;
  v28[4] = self;
  v20 = v10;
  v29 = v20;
  v21 = v13;
  v32 = v21;
  v22 = v11;
  v30 = v22;
  v23 = v18;
  v31 = v23;
  v24 = v12;
  v33 = v24;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"RefinementOfContextStrokes", v28);
  v25 = v33;
  v26 = v23;

  return v23;
}

- (id)styleSampleOptionsForPoint:(CGPoint)a3 shouldCancel:(id)a4
{
  y = a3.y;
  x = a3.x;
  v243 = *MEMORY[0x1E69E9840];
  v211 = a4;
  if (!self || !self->_lastRecognitionResult)
  {
    v79 = 0;
    v209 = 0;
    if (qword_1EA84DC48 == -1)
    {
LABEL_45:
      v203 = qword_1EA84DC60;
      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
      {
        *v239 = 134218240;
        v240 = x;
        v241 = 2048;
        v242 = y;
        _os_log_impl(&dword_18366B000, v203, OS_LOG_TYPE_DEFAULT, "Style Sampling: No style sample in surrounding context of point: x: @%f y: @%f, fallback to default style", v239, 0x16u);
      }

      v195 = 0;
      goto LABEL_48;
    }

LABEL_52:
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    goto LABEL_45;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v214 = self;
  v7 = qword_1EA84DC60;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v234 = x;
    v235 = 2048;
    v236 = y;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEBUG, "Style Sampling: evaluate if stroke group near the point: x: @%f y: @%f is acceptable", buf, 0x16u);
  }

  v213 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11, v12);
  v18 = objc_msgSend_strokeGroupingResult(v214->_lastRecognitionResult, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_strokeGroupOrdering(v214, v19, v20, v21, v22, v23);
  v28 = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v18, v25, v24, 1, v26, v27);
  v33 = objc_msgSend_strokeGroupClosestToPoint_strokeGroups_(CHStrokeGroup, v29, v28, v30, v31, v32, x, y);

  lastRecognitionResult = v214->_lastRecognitionResult;
  v40 = objc_msgSend_uniqueIdentifier(v33, v35, v36, v37, v38, v39);
  v45 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(lastRecognitionResult, v41, v40, v42, v43, v44);
  v51 = objc_msgSend_strokeClassificationResult(v214->_lastRecognitionResult, v46, v47, v48, v49, v50);
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v57 = objc_msgSend_inputStrokeIdentifiers(v45, v52, v53, v54, v55, v56);
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v227, v239, 16, v59);
  if (v65)
  {
    v66 = *v228;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v228 != v66)
        {
          objc_enumerationMutation(v57);
        }

        v68 = *(*(&v227 + 1) + 8 * i);
        v69 = objc_msgSend_textSynthesizer(v214, v60, v61, v62, v63, v64);
        isGroupAcceptableForInventory_textSynthesizer_strokeProvider_recognitionResult_strokeClassificationResult_allowSyntheticStrokes = objc_msgSend_isGroupAcceptableForInventory_textSynthesizer_strokeProvider_recognitionResult_strokeClassificationResult_allowSyntheticStrokes_(CHRecognitionSessionTask, v70, v33, v69, v214->_latestStrokeProvider, v45, v51, 1);

        if (isGroupAcceptableForInventory_textSynthesizer_strokeProvider_recognitionResult_strokeClassificationResult_allowSyntheticStrokes)
        {
          objc_msgSend_addObject_(v213, v72, v68, v74, v75, v76);
        }

        else
        {
          v77 = objc_msgSend_preferredTranscription(v45, v72, v73, v74, v75, v76);
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v78 = qword_1EA84DC60;
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138740483;
            v234 = *&v77;
            v235 = 2048;
            v236 = x;
            v237 = 2048;
            v238 = y;
            _os_log_impl(&dword_18366B000, v78, OS_LOG_TYPE_DEFAULT, "Style Sampling: stroke group with recognition result: %{sensitive}@ near the point: x: @%f y: @%f rejected since it does not pass the style inventory gating criteria", buf, 0x20u);
          }
        }
      }

      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v60, &v227, v239, 16, v64);
    }

    while (v65);
  }

  v79 = v213;
  if (!v213)
  {
    v209 = 0;
LABEL_44:
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  v80 = sub_18392C888(v214, v213, 0, 0, 0, 0, 0, v211);
  v86 = v80;
  if (!v80)
  {
    v209 = 0;
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  v209 = v80;
  if (!objc_msgSend_count(v80, v81, v82, v83, v84, v85))
  {
    goto LABEL_44;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v87 = qword_1EA84DC60;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    *v239 = 134218240;
    v240 = x;
    v241 = 2048;
    v242 = y;
    _os_log_impl(&dword_18366B000, v87, OS_LOG_TYPE_DEFAULT, "Style Sampling: Finding an input style sample from the text group in surrounding context of point: x: @%f y: @%f", v239, 0x16u);
  }

  v207 = objc_msgSend_array(MEMORY[0x1E695DF70], v88, v89, v90, v91, v92);
  v97 = objc_msgSend_objectAtIndexedSubscript_(v86, v93, 0, v94, v95, v96);
  v103 = objc_msgSend_textResult(v97, v98, v99, v100, v101, v102);
  v221[0] = MEMORY[0x1E69E9820];
  v221[1] = 3221225472;
  v221[2] = sub_18393E87C;
  v221[3] = &unk_1E6DE0340;
  v225 = x;
  v226 = y;
  v205 = v213;
  v222 = v205;
  v223 = v214;
  v208 = v207;
  v224 = v208;
  objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v103, v104, v221, v105, v106, v107);

  v111 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x1E696AEB0], v108, @"distance", 1, v109, v110);
  v232 = v111;
  v115 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v112, &v232, 1, v113, v114);
  v206 = objc_msgSend_sortedArrayUsingDescriptors_(v208, v116, v115, v117, v118, v119);

  v212 = objc_msgSend_array(MEMORY[0x1E695DF70], v120, v121, v122, v123, v124);
  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v125 = v206;
  v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v125, v126, &v217, v231, 16, v127);
  if (v132)
  {
    v133 = 0;
    v210 = *v218;
LABEL_30:
    v134 = 0;
    while (1)
    {
      if (*v218 != v210)
      {
        objc_enumerationMutation(v125);
      }

      v135 = *(*(&v217 + 1) + 8 * v134);
      v136 = MEMORY[0x1E695DFD8];
      v137 = objc_msgSend_objectForKeyedSubscript_(v135, v128, @"strokeIdentifiers", v129, v130, v131);
      v142 = objc_msgSend_setWithArray_(v136, v138, v137, v139, v140, v141);
      v148 = objc_msgSend_latestStrokeProvider(v214, v143, v144, v145, v146, v147);
      v152 = objc_msgSend_sortedStrokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v149, v142, v148, v150, v151);

      v154 = objc_msgSend_createDrawingForStrokes_interpolationType_resolution_cancellationBlock_(CHStrokeUtilities, v153, v152, 1, 2, v211);
      v159 = objc_msgSend_objectForKeyedSubscript_(v135, v155, @"transcription", v156, v157, v158);
      v165 = objc_msgSend_set(MEMORY[0x1E695DFD8], v160, v161, v162, v163, v164);
      v167 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v166, v159, v154, 0, v165);

      v172 = objc_msgSend_objectForKeyedSubscript_(v135, v168, @"transcription", v169, v170, v171);
      v178 = objc_msgSend_countCharacters(v172, v173, v174, v175, v176, v177);

      objc_msgSend_addObject_(v212, v179, v167, v180, v181, v182);
      v133 += v178;

      if (v133 >= 15)
      {
        break;
      }

      if (v132 == ++v134)
      {
        v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v125, v128, &v217, v231, 16, v131);
        if (v132)
        {
          goto LABEL_30;
        }

        break;
      }
    }
  }

  v215 = 0;
  v216 = 0;
  objc_msgSend_decomposeSamples_drawings_contents_(CHSynthesisStyleInventory, v183, v212, &v216, &v215, v184);
  v185 = v216;
  v186 = v215;
  v191 = objc_msgSend_componentsJoinedByString_(v186, v187, @" ", v188, v189, v190);
  v195 = objc_msgSend_synthesisOptionsWithDrawings_contents_(CHSynthesisRequestOptions, v192, v185, v186, v193, v194);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v196 = qword_1EA84DC60;
  if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
  {
    v202 = objc_msgSend_length(v191, v197, v198, v199, v200, v201);
    *v239 = 138740227;
    v240 = *&v191;
    v241 = 2048;
    v242 = *&v202;
    _os_log_impl(&dword_18366B000, v196, OS_LOG_TYPE_DEFAULT, "Style Sampling: Found input style sample: %{sensitive}@ from surrounding text with length: %lu", v239, 0x16u);
  }

  v79 = v205;
  v203 = v208;
LABEL_48:

  return v195;
}

- (id)synthesizeTokensForString:(id)a3 point:(CGPoint)a4 synthesisOptions:(id)a5 completion:(id)a6 shouldCancel:(id)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  v14 = a5;
  v48 = a6;
  v15 = a7;
  v16 = MEMORY[0x1E696AE38];
  v22 = objc_msgSend_length(v13, v17, v18, v19, v20, v21);
  v47 = objc_msgSend_progressWithTotalUnitCount_(v16, v23, v22, v24, v25, v26);
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = sub_18391E9B8;
  v68[4] = sub_18391E9C8;
  v69 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = sub_18391E9B8;
  v66[4] = sub_18391E9C8;
  v67 = 0;
  v32 = objc_msgSend_array(MEMORY[0x1E695DF70], v27, v28, v29, v30, v31);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = sub_18393EE34;
  v60[3] = &unk_1E6DE0368;
  v64 = v66;
  v60[4] = self;
  v33 = v15;
  v63 = v33;
  v34 = v32;
  v61 = v34;
  v65 = v68;
  v46 = v14;
  v62 = v46;
  v35 = MEMORY[0x1865E6810](v60);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_18393FB14;
  v49[3] = &unk_1E6DE03D8;
  v49[4] = self;
  v37 = v13;
  v50 = v37;
  v56 = v68;
  v58 = x;
  v59 = y;
  v38 = v33;
  v57 = v66;
  v53 = v38;
  v54 = v35;
  v39 = v47;
  v51 = v39;
  v40 = v48;
  v55 = v40;
  v52 = v34;
  v41 = v34;
  v42 = v35;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"SynthesizeTokensForString", v49);
  v43 = v52;
  v44 = v39;

  _Block_object_dispose(v66, 8);
  _Block_object_dispose(v68, 8);

  return v44;
}

- (id)synthesizeTokensForString:(id)a3 replacingStrokes:(id)a4 completion:(id)a5 shouldCancel:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v14, 100, v15, v16, v17);
  v24 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
  highResponsivenessQueue = self->__highResponsivenessQueue;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_183941418;
  v35[3] = &unk_1E6DE0400;
  v35[4] = self;
  v26 = v11;
  v36 = v26;
  v27 = v13;
  v40 = v27;
  v28 = v10;
  v37 = v28;
  v38 = v24;
  v29 = v18;
  v39 = v29;
  v30 = v12;
  v41 = v30;
  v31 = v24;
  sub_18391DBB8(self, highResponsivenessQueue, @"HighResponsiveness", @"SynthesizeTokensReplacingStrokesForString", v35);
  v32 = v41;
  v33 = v29;

  return v29;
}

- (BOOL)q_wantsAutoRefine
{
  v33 = *MEMORY[0x1E69E9840];
  label = dispatch_queue_get_label(0);
  if (strcmp(label, "com.apple.CoreHandwriting.RecognitionSession"))
  {
    if (qword_1EA84DC48 == -1)
    {
      v4 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v4 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *buf = 136315650;
    v28 = "[CHRecognitionSession(Impl) q_wantsAutoRefine]";
    v29 = 2080;
    v30 = "com.apple.CoreHandwriting.RecognitionSession";
    v31 = 2080;
    v32 = dispatch_queue_get_label(0);
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "Method %s should be running on queue %s, found %s.", buf, 0x20u);
    goto LABEL_5;
  }

LABEL_6:
  v5 = dispatch_queue_get_label(0);
  if (!strcmp(v5, "com.apple.CoreHandwriting.RecognitionSession"))
  {
    goto LABEL_11;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v6 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
LABEL_9:
    v7 = dispatch_queue_get_label(0);
    *buf = 136315650;
    v28 = "[CHRecognitionSession(Impl) q_wantsAutoRefine]";
    v29 = 2080;
    v30 = "com.apple.CoreHandwriting.RecognitionSession";
    v31 = 2080;
    v32 = v7;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_FAULT, "Method %s should be running on queue %s, found %s.", buf, 0x20u);
  }

LABEL_10:

LABEL_11:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (self)
  {
    changeObserversTable = self->__changeObserversTable;
  }

  else
  {
    changeObserversTable = 0;
  }

  v9 = changeObserversTable;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16, v11);
  if (v12)
  {
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_wantsAutoRefineUpdates(v15, v16, v17, v18, v19, v20, v22))
        {
          LOBYTE(v12) = 1;
          goto LABEL_23;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v16, &v22, v26, 16, v20);
    }

    while (v12);
  }

LABEL_23:

  return v12;
}

- (BOOL)q_needsForegroundRecognition
{
  v33 = *MEMORY[0x1E69E9840];
  label = dispatch_queue_get_label(0);
  if (strcmp(label, "com.apple.CoreHandwriting.RecognitionSession"))
  {
    if (qword_1EA84DC48 == -1)
    {
      v4 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v4 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }

    *buf = 136315650;
    v28 = "[CHRecognitionSession(Impl) q_needsForegroundRecognition]";
    v29 = 2080;
    v30 = "com.apple.CoreHandwriting.RecognitionSession";
    v31 = 2080;
    v32 = dispatch_queue_get_label(0);
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_ERROR, "Method %s should be running on queue %s, found %s.", buf, 0x20u);
    goto LABEL_5;
  }

LABEL_6:
  v5 = dispatch_queue_get_label(0);
  if (!strcmp(v5, "com.apple.CoreHandwriting.RecognitionSession"))
  {
    goto LABEL_11;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v6 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
LABEL_9:
    v7 = dispatch_queue_get_label(0);
    *buf = 136315650;
    v28 = "[CHRecognitionSession(Impl) q_needsForegroundRecognition]";
    v29 = 2080;
    v30 = "com.apple.CoreHandwriting.RecognitionSession";
    v31 = 2080;
    v32 = v7;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_FAULT, "Method %s should be running on queue %s, found %s.", buf, 0x20u);
  }

LABEL_10:

LABEL_11:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (self)
  {
    changeObserversTable = self->__changeObserversTable;
  }

  else
  {
    changeObserversTable = 0;
  }

  v9 = changeObserversTable;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v26, 16, v11);
  if (v12)
  {
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_needsForegroundRecognition(v15, v16, v17, v18, v19, v20, v22))
        {
          LOBYTE(v12) = 1;
          goto LABEL_23;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v16, &v22, v26, 16, v20);
    }

    while (v12);
  }

LABEL_23:

  return v12;
}

@end