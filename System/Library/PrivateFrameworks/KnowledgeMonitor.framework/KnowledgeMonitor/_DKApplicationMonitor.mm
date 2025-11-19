@interface _DKApplicationMonitor
- (BOOL)ignoreAppExtension:(id)a3;
- (_DKApplicationMonitor)init;
- (id)_elementFromDisplayLayoutElement:(id)a3 displayLayout:(id)a4 context:(id)a5 changeType:(int)a6;
- (id)_newElementFromExistingDisplayElement:(id)a3 newTimestamp:(id)a4 newChangeType:(int)a5;
- (id)displayLayoutTransitionHandler;
- (id)elementsForDisplayLayout:(id)a3;
- (id)processUpdateHandler;
- (void)_updateCurrentElementsWithDisplayElement:(id)a3;
- (void)displayMonitor:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5;
- (void)donateElementsFromDisplayLayout:(id)a3 withContext:(id)a4;
- (void)obtainCurrentValue;
- (void)platformSpecificStart;
- (void)platformSpecificStop;
- (void)processMonitor:(id)a3 didUpdateState:(id)a4 forProcess:(id)a5;
- (void)updateFocalApplication:(id)a3 timestamp:(id)a4 displayType:(unint64_t)a5 transitionReason:(id)a6 transaction:(id)a7;
- (void)updateFocusStream;
@end

@implementation _DKApplicationMonitor

- (void)donateElementsFromDisplayLayout:(id)a3 withContext:(id)a4
{
  v101 = *MEMORY[0x277D85DE8];
  v67 = a3;
  v66 = a4;
  v6 = [(_DKApplicationMonitor *)self displayElementStream];

  if (v6)
  {
    v7 = [(_DKApplicationMonitor *)self currentFrontBoardElements];

    if (!v7)
    {
      v8 = objc_opt_new();
      [(_DKApplicationMonitor *)self setCurrentFrontBoardElements:v8];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v100 = 0;
      v9 = [(_DKApplicationMonitor *)self displayElementStream];
      v10 = [v9 publisher];
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke;
      v94[3] = &unk_27856F740;
      v94[4] = self;
      v94[5] = buf;
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke_6;
      v93[3] = &unk_27856F768;
      v93[4] = self;
      v93[5] = buf;
      v11 = [v10 sinkWithCompletion:v94 receiveInput:v93];

      _Block_object_dispose(buf, 8);
    }

    v12 = [v67 elements];
    v62 = [v12 _pas_filteredArrayWithTest:&__block_literal_global_13];

    v13 = [v62 sortedArrayUsingComparator:&__block_literal_global_11];
    v14 = objc_opt_new();
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v89 objects:v98 count:16];
    if (v16)
    {
      v17 = *v90;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v90 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [*(*(&v89 + 1) + 8 * i) identifier];
          [v14 addObject:v19];
        }

        v16 = [v15 countByEnumeratingWithState:&v89 objects:v98 count:16];
      }

      while (v16);
    }

    v64 = objc_opt_new();
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = v15;
    v20 = [obj countByEnumeratingWithState:&v85 objects:v97 count:16];
    if (v20)
    {
      v21 = *v86;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v86 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v85 + 1) + 8 * j);
          v24 = [(_DKApplicationMonitor *)self currentFrontBoardElements];
          v25 = [v23 identifier];
          v26 = [v24 objectForKeyedSubscript:v25];

          if (v26)
          {
            v27 = 2;
          }

          else
          {
            v27 = 1;
          }

          v28 = [(_DKApplicationMonitor *)self _elementFromDisplayLayoutElement:v23 displayLayout:v67 context:v66 changeType:v27];
          if (v26 && [v26 dk_isDuplicateOf:v28])
          {
            v29 = [(_DKMonitor *)self log];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [(_DKApplicationMonitor(BMFrontBoardDisplayElement) *)&v83 donateElementsFromDisplayLayout:v84 withContext:v29];
            }
          }

          else
          {
            [v64 addObject:v28];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v85 objects:v97 count:16];
      }

      while (v20);
    }

    v30 = objc_opt_new();
    v31 = [(_DKApplicationMonitor *)self currentFrontBoardElements];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke_15;
    v78[3] = &unk_27856F7D0;
    v60 = v14;
    v79 = v60;
    v80 = self;
    v32 = v67;
    v81 = v32;
    v61 = v30;
    v82 = v61;
    [v31 enumerateKeysAndObjectsUsingBlock:v78];

    v33 = [(_DKApplicationMonitor *)self displayElementSource];
    v34 = v33;
    if (v33)
    {
      v68 = v33;
    }

    else
    {
      v36 = [(_DKApplicationMonitor *)self displayElementStream];
      v68 = [v36 source];
      [(_DKApplicationMonitor *)self setDisplayElementSource:v68];
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v65 = v64;
    v37 = [v65 countByEnumeratingWithState:&v74 objects:v96 count:16];
    if (v37)
    {
      v38 = *v75;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v75 != v38)
          {
            objc_enumerationMutation(v65);
          }

          v40 = *(*(&v74 + 1) + 8 * k);
          v41 = [v32 timestamp];
          [v41 timeIntervalSinceReferenceDate];
          [v68 sendEvent:v40 timestamp:?];

          [(_DKApplicationMonitor *)self _updateCurrentElementsWithDisplayElement:v40];
          v42 = [(_DKMonitor *)self log];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            [v40 changeType];
            v43 = BMFrontBoardDisplayElementChangeTypeAsString();
            v44 = [v40 identifier];
            v45 = [v40 bundleIdentifier];
            *buf = 138412802;
            *&buf[4] = v43;
            *&buf[12] = 2112;
            *&buf[14] = v44;
            *&buf[22] = 2112;
            v100 = v45;
            _os_log_debug_impl(&dword_22595A000, v42, OS_LOG_TYPE_DEBUG, "BMFrontBoardDisplayElement - Writing %@ event for identifier: %@ bundleIdentifier: %@", buf, 0x20u);
          }
        }

        v37 = [v65 countByEnumeratingWithState:&v74 objects:v96 count:16];
      }

      while (v37);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v46 = v61;
    v47 = [v46 countByEnumeratingWithState:&v70 objects:v95 count:16];
    if (v47)
    {
      v48 = *v71;
      do
      {
        for (m = 0; m != v47; ++m)
        {
          if (*v71 != v48)
          {
            objc_enumerationMutation(v46);
          }

          v50 = *(*(&v70 + 1) + 8 * m);
          v51 = [v32 timestamp];
          [v51 timeIntervalSinceReferenceDate];
          [v68 sendEvent:v50 timestamp:?];

          [(_DKApplicationMonitor *)self _updateCurrentElementsWithDisplayElement:v50];
          v52 = [(_DKMonitor *)self log];
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            [v50 changeType];
            v53 = BMFrontBoardDisplayElementChangeTypeAsString();
            v54 = [v50 identifier];
            v55 = [v50 bundleIdentifier];
            *buf = 138412802;
            *&buf[4] = v53;
            *&buf[12] = 2112;
            *&buf[14] = v54;
            *&buf[22] = 2112;
            v100 = v55;
            _os_log_debug_impl(&dword_22595A000, v52, OS_LOG_TYPE_DEBUG, "BMFrontBoardDisplayElement - Writing %@ event for identifier: %@ bundleIdentifier: %@", buf, 0x20u);
          }
        }

        v47 = [v46 countByEnumeratingWithState:&v70 objects:v95 count:16];
      }

      while (v47);
    }

    v56 = [(_DKMonitor *)self log];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      [_DKApplicationMonitor(BMFrontBoardDisplayElement) donateElementsFromDisplayLayout:v56 withContext:?];
    }

    v57 = [(_DKApplicationMonitor *)self currentFrontBoardElements];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke_17;
    v69[3] = &unk_27856F7F8;
    v69[4] = self;
    [v57 enumerateKeysAndObjectsUsingBlock:v69];

    v58 = [(_DKMonitor *)self log];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      [_DKApplicationMonitor(BMFrontBoardDisplayElement) donateElementsFromDisplayLayout:v58 withContext:?];
    }

    v35 = v62;
  }

  else
  {
    v35 = [(_DKMonitor *)self log];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, v35, OS_LOG_TYPE_INFO, "BMFrontBoardDisplayElement - Waiting for first unlock before donating event", buf, 2u);
    }
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (void)_updateCurrentElementsWithDisplayElement:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];

  if (!v5)
  {
    v7 = [(_DKMonitor *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_DKApplicationMonitor(BMFrontBoardDisplayElement) *)v4 _updateCurrentElementsWithDisplayElement:v7];
    }

    goto LABEL_9;
  }

  v6 = [v4 changeType];
  if ((v6 - 1) < 2)
  {
    v7 = [(_DKApplicationMonitor *)self currentFrontBoardElements];
    v8 = [v4 identifier];
    [v7 setObject:v4 forKeyedSubscript:v8];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  if (v6 == 3)
  {
    v7 = [(_DKApplicationMonitor *)self currentFrontBoardElements];
    v8 = [v4 identifier];
    [v7 removeObjectForKey:v8];
    goto LABEL_8;
  }

LABEL_10:
}

- (id)_newElementFromExistingDisplayElement:(id)a3 newTimestamp:(id)a4 newChangeType:(int)a5
{
  v6 = MEMORY[0x277CF1190];
  v37 = a4;
  v7 = a3;
  v35 = [v6 alloc];
  v34 = [v7 display];
  v30 = [v34 type];
  v33 = [v7 display];
  v8 = [v33 name];
  v32 = [v7 display];
  v9 = [v32 deviceName];
  v31 = [v7 display];
  v10 = [v31 hardwareIdentifier];
  v11 = [v7 display];
  v12 = [v11 interfaceOrientation];
  v13 = [v7 display];
  v14 = [v13 backlightStatus];
  v15 = [v7 display];
  v16 = [v15 transitionReasons];
  v36 = [v35 initWithType:v30 name:v8 deviceName:v9 hardwareIdentifier:v10 interfaceOrientation:v12 backlightStatus:v14 transitionReasons:v16];

  v17 = objc_alloc(MEMORY[0x277CF1188]);
  v18 = [v7 identifier];
  v19 = [v7 bundleIdentifier];
  v20 = [v7 elementType];
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "layoutRole")}];
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "level")}];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "hasKeyboardFocus")}];
  v24 = MEMORY[0x277CCABB0];
  v25 = [v7 isUIApplicationElement];

  v26 = [v24 numberWithBool:v25];
  LODWORD(v29) = a5;
  v27 = [v17 initWithAbsoluteTimestamp:v37 identifier:v18 bundleIdentifier:v19 elementType:v20 layoutRole:v21 level:v22 hasKeyboardFocus:v23 isUIApplicationElement:v26 display:v36 changeType:v29];

  return v27;
}

- (id)_elementFromDisplayLayoutElement:(id)a3 displayLayout:(id)a4 context:(id)a5 changeType:(int)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 interfaceOrientation];
  if ((v11 - 1) < 4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v41 = v12;
  if ([v9 displayBacklightLevel])
  {
    if ([v9 displayBacklightLevel] < 1 || objc_msgSend(v9, "displayBacklightLevel") >= 101)
    {
      v39 = 0;
      goto LABEL_11;
    }

    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v39 = v13;
LABEL_11:
  v14 = objc_opt_new();
  v15 = MEMORY[0x277CBEB98];
  v16 = [v10 transitionReason];
  v17 = [v15 setWithObjects:{v16, 0}];
  [v14 unionSet:v17];

  v18 = [v10 transitionReasons];

  if (v18)
  {
    [v14 unionSet:v18];
  }

  else
  {
    v19 = [MEMORY[0x277CBEB98] set];
    [v14 unionSet:v19];
  }

  v20 = objc_alloc(MEMORY[0x277CF1190]);
  v21 = [v9 displayConfiguration];
  v22 = [v21 name];
  v23 = [v9 displayConfiguration];
  v24 = [v23 deviceName];
  v25 = [v9 displayConfiguration];
  v26 = [v25 hardwareIdentifier];
  v43 = v14;
  v27 = [v14 array];
  v42 = [v20 initWithType:1 name:v22 deviceName:v24 hardwareIdentifier:v26 interfaceOrientation:v41 backlightStatus:v39 transitionReasons:v27];

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v8 isSpringBoardElement])
  {
    v40 = 2;
  }

  else
  {
    v40 = [v8 isMemberOfClass:objc_opt_class()];
  }

  if (objc_opt_respondsToSelector())
  {
    v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "layoutRole")}];
  }

  else
  {
    v38 = 0;
  }

  v28 = objc_alloc(MEMORY[0x277CF1188]);
  v29 = [v9 timestamp];
  v30 = [v8 identifier];
  v31 = [v8 bundleIdentifier];
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "level")}];
  v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "hasKeyboardFocus")}];
  v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isUIApplicationElement")}];
  LODWORD(v37) = a6;
  v35 = [v28 initWithAbsoluteTimestamp:v29 identifier:v30 bundleIdentifier:v31 elementType:v40 layoutRole:v38 level:v32 hasKeyboardFocus:v33 isUIApplicationElement:v34 display:v42 changeType:v37];

  return v35;
}

- (_DKApplicationMonitor)init
{
  v12.receiver = self;
  v12.super_class = _DKApplicationMonitor;
  v2 = [(_DKApplicationMonitorBase *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    guardedData = v2->_guardedData;
    v2->_guardedData = v5;

    v7 = BiomeLibrary();
    v8 = [v7 FrontBoard];
    v9 = [v8 DisplayElement];
    displayElementStream = v2->_displayElementStream;
    v2->_displayElementStream = v9;
  }

  return v2;
}

- (void)platformSpecificStart
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  activeExtensions = self->_activeExtensions;
  self->_activeExtensions = v3;

  lastFocalApplication = self->_lastFocalApplication;
  self->_lastFocalApplication = &stru_2838F0870;

  guardedData = self->_guardedData;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46___DKApplicationMonitor_platformSpecificStart__block_invoke;
  v12[3] = &unk_27856F868;
  v12[4] = self;
  [(_PASLock *)guardedData runWithLockAcquired:v12];
  v7 = objc_alloc_init(MEMORY[0x277D0AD38]);
  [(_DKApplicationMonitor *)self setDisplayMonitor:v7];

  v8 = [(_DKApplicationMonitor *)self displayMonitor];
  [v8 addObserver:self];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46___DKApplicationMonitor_platformSpecificStart__block_invoke_3;
  v11[3] = &unk_27856F6A0;
  v11[4] = self;
  v9 = [MEMORY[0x277D46F80] monitorWithConfiguration:v11];
  processMonitor = self->_processMonitor;
  self->_processMonitor = v9;
}

- (void)platformSpecificStop
{
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  processMonitor = self->_processMonitor;
  self->_processMonitor = 0;

  v4 = [(_DKApplicationMonitor *)self displayMonitor];
  [v4 removeObserver:self];

  [(_DKApplicationMonitor *)self setDisplayMonitor:0];
  [(_PASLock *)self->_guardedData runWithLockAcquired:&__block_literal_global_16];
  activeExtensions = self->_activeExtensions;
  self->_activeExtensions = 0;

  lastFocalApplication = self->_lastFocalApplication;
  self->_lastFocalApplication = 0;
}

- (void)displayMonitor:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = SBSCreateLayoutServiceEndpointForExternalDisplay();
  v13 = [MEMORY[0x277D0AD20] configurationWithEndpoint:v12];
  if (v13)
  {
    v14 = [(_DKMonitor *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, v14, OS_LOG_TYPE_INFO, "DKApplicationMonitor: External monitor detected", buf, 2u);
    }

    v15 = [(_DKApplicationMonitor *)self displayLayoutTransitionHandler];
    [v13 setTransitionHandler:v15];

    [v13 setNeedsUserInteractivePriority:1];
    v16 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v13];
    guardedData = self->_guardedData;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77___DKApplicationMonitor_displayMonitor_didConnectIdentity_withConfiguration___block_invoke;
    v19[3] = &unk_27856F8B0;
    v20 = v16;
    v21 = self;
    v18 = v16;
    [(_PASLock *)guardedData runWithLockAcquired:v19];
  }

  objc_autoreleasePoolPop(v11);
}

- (void)obtainCurrentValue
{
  v3 = objc_autoreleasePoolPush();
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  guardedData = self->_guardedData;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43___DKApplicationMonitor_obtainCurrentValue__block_invoke;
  v5[3] = &unk_27856F8D8;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)guardedData runWithLockAcquired:v5];
  [(_DKApplicationMonitorBase *)self updateContextStoreWithFocalApplication:v7[5] launchReason:&stru_2838F0870];
  _Block_object_dispose(&v6, 8);

  objc_autoreleasePoolPop(v3);
}

- (id)elementsForDisplayLayout:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 displayBacklightLevel])
    {
      v6 = [v5 elements];
      v7 = [v6 _pas_filteredArrayWithTest:&__block_literal_global_205];

      v8 = [(_DKMonitor *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&dword_22595A000, v8, OS_LOG_TYPE_INFO, "Layout monitor filtered elements: %@", &v11, 0xCu);
      }
    }

    else
    {
      v8 = [(_DKMonitor *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_22595A000, v8, OS_LOG_TYPE_INFO, "Screen is off", &v11, 2u);
      }

      v7 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)updateFocusStream
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__8;
  v31 = __Block_byref_object_dispose__8;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8;
  v9 = __Block_byref_object_dispose__8;
  v10 = 0;
  guardedData = self->_guardedData;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42___DKApplicationMonitor_updateFocusStream__block_invoke;
  v4[3] = &unk_27856F900;
  v4[4] = &v27;
  v4[5] = &v23;
  v4[6] = &v17;
  v4[7] = &v11;
  v4[8] = &v5;
  [(_PASLock *)guardedData runWithLockAcquired:v4];
  [(_DKApplicationMonitor *)self updateFocalApplication:v28[5] timestamp:v18[5] displayType:v24[3] transitionReason:v12[5] transaction:v6[5]];
  _Block_object_dispose(&v5, 8);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

- (void)updateFocalApplication:(id)a3 timestamp:(id)a4 displayType:(unint64_t)a5 transitionReason:(id)a6 transaction:(id)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v49 = v11;
    _os_log_impl(&dword_22595A000, v15, OS_LOG_TYPE_INFO, "Frontmost application: %@", buf, 0xCu);
  }

  v16 = v14;
  [(_DKApplicationMonitorBase *)self updateContextStoreWithFocalApplication:v11 launchReason:v13];
  v46 = 0;
  v47 = 0;
  [(_DKApplicationMonitorBase *)self lookupApplication:v11 shortVersionString:&v47 exactBundleVersion:&v46];
  v17 = v47;
  v18 = v46;
  v45 = [(_DKApplicationMonitorBase *)self _eventWithTimestamp:v12 bundleIdentifier:v11 launchReason:v13 shortVersionString:v17 exactBundleVersion:v18];
  if (v11)
  {
    v19 = [(_DKMonitor *)self currentEvent];
    if (!v19)
    {
      goto LABEL_6;
    }

    v20 = v19;
    v21 = [(_DKMonitor *)self eventComparator];
    [(_DKMonitor *)self currentEvent];
    v42 = self;
    v22 = v11;
    v23 = v13;
    v24 = v18;
    v25 = v17;
    v26 = v16;
    v28 = v27 = v12;
    v29 = (v21)[2](v21, v28, v45);

    v12 = v27;
    v16 = v26;
    v17 = v25;
    v18 = v24;
    v13 = v23;
    v11 = v22;
    self = v42;

    if (v29)
    {
LABEL_6:
      v43 = v12;
      v30 = [(_DKMonitor *)self currentEvent];
      v31 = [v30 value];
      v32 = [v31 stringValue];

      v12 = v43;
      v33 = [&unk_2838F7820 containsObject:v32];
      if (([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
      {
        [(_DKMonitor *)self setCurrentEvent:v45 inferHistoricalState:v33 ^ 1u];
        if (([v32 isEqual:v11] & 1) == 0 && (objc_msgSend(&unk_2838F7838, "containsObject:", v11) & 1) == 0)
        {
          if ([v32 length])
          {
            [(_DKApplicationMonitorBase *)self updateBiomeAppInFocusWithStopEventAtTimestamp:v43 reason:0];
            v34 = [(_DKMonitor *)self log];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v49 = v32;
              _os_log_impl(&dword_22595A000, v34, OS_LOG_TYPE_INFO, "BMAppInFocus stopped %@", buf, 0xCu);
            }
          }

          if ([v11 length])
          {
            if (a5)
            {
              v35 = 4 * (a5 == 1);
            }

            else
            {
              v35 = 1;
            }

            if (([v11 hasPrefix:@"com.apple.springboard"] & 1) != 0 || objc_msgSend(&unk_2838F7850, "containsObject:", v11))
            {
              v36 = 3;
            }

            else
            {
              v36 = 1;
            }

            v37 = objc_alloc(MEMORY[0x277CF0FD8]);
            LODWORD(v41) = v35;
            v12 = v43;
            v38 = [v37 initWithLaunchReason:v13 type:v36 starting:MEMORY[0x277CBEC38] absoluteTimestamp:v43 bundleID:v11 parentBundleID:0 extensionHostID:0 shortVersionString:v17 exactVersionString:v18 dyldPlatform:0 isNativeArchitecture:0 displayType:v41];
            [(_DKApplicationMonitorBase *)self updateBiomeWithAppInFocusStartEvent:v38];
            v39 = [(_DKMonitor *)self log];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v49 = v11;
              _os_log_impl(&dword_22595A000, v39, OS_LOG_TYPE_INFO, "BMAppInFocus started %@", buf, 0xCu);
            }
          }
        }
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (id)displayLayoutTransitionHandler
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke;
  v5[3] = &unk_27856F978;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = MEMORY[0x22AA6AF50](v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (BOOL)ignoreAppExtension:(id)a3
{
  v3 = ignoreAppExtension__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [_DKApplicationMonitor ignoreAppExtension:];
  }

  v5 = [ignoreAppExtension__ignoreList containsObject:v4];

  return v5;
}

- (void)processMonitor:(id)a3 didUpdateState:(id)a4 forProcess:(id)a5
{
  v70[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v8 identity];
  v10 = [v9 embeddedApplicationIdentifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v8 xpcServiceIdentifier];
    v14 = v13;
    if (v13)
    {
      v12 = v13;
    }

    else
    {
      v15 = [v8 bundle];
      v12 = [v15 identifier];
    }
  }

  if ([v8 isXPCService] && !-[_DKApplicationMonitor ignoreAppExtension:](self, "ignoreAppExtension:", v12))
  {
    v60 = 0;
    v16 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v12 error:&v60];
    v17 = v60;
    if (v17)
    {
      v18 = [(_DKMonitor *)self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_DKApplicationMonitor processMonitor:v12 didUpdateState:v17 forProcess:v18];
      }

      v19 = 0;
    }

    else
    {
      v20 = [v16 containingBundleRecord];
      v19 = [v20 bundleIdentifier];

      v21 = [v8 hostProcess];
      v22 = [v21 bundle];
      v18 = [v22 identifier];

      if (([(__CFString *)v19 isEqual:@"com.apple.PosterBoard"]& 1) == 0 && ([(__CFString *)v19 isEqual:@"com.apple.PaperBoard"]& 1) == 0 && ([v18 isEqual:@"com.apple.PosterBoard"]& 1) == 0 && ([v18 isEqual:@"com.apple.PaperBoard"]& 1) == 0)
      {
        if (!-[NSObject isEqual:](v18, "isEqual:", @"com.apple.springboard") || ([v12 lowercaseString], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "containsString:", @"poster"), v23, (v24 & 1) == 0))
        {
          v25 = [v7 state];
          v57 = [v25 isRunning];

          v26 = [v7 state];
          v27 = [v26 endowmentNamespaces];
          v55 = [v27 containsObject:@"com.apple.frontboard.visibility"];

          v28 = v57 & v55;
          v52 = v57 & v55;
          v29 = [MEMORY[0x277CBEAA8] date];
          v58 = objc_alloc(MEMORY[0x277CF0FD8]);
          v30 = [MEMORY[0x277CCABB0] numberWithBool:v28];
          LODWORD(v45) = 0;
          v31 = v58;
          v59 = v29;
          v56 = [v31 initWithLaunchReason:0 type:2 starting:v30 absoluteTimestamp:v29 bundleID:v12 parentBundleID:v19 extensionHostID:v18 shortVersionString:0 exactVersionString:0 dyldPlatform:0 isNativeArchitecture:0 displayType:v45];

          v32 = [(NSMutableDictionary *)self->_activeExtensions objectForKeyedSubscript:v12];
          v33 = v32;
          if (v52 == 1)
          {

            if (!v33)
            {
              appInFocusSource = self->_appInFocusSource;
              [v59 timeIntervalSinceReferenceDate];
              [(BMSource *)appInFocusSource sendEvent:v56 timestamp:?];
              [(NSMutableDictionary *)self->_activeExtensions setObject:v59 forKeyedSubscript:v12];
            }
          }

          else
          {

            if (v33)
            {
              v53 = self->_appInFocusSource;
              [v59 timeIntervalSinceReferenceDate];
              [(BMSource *)v53 sendEvent:v56 timestamp:?];
              v54 = [(NSMutableDictionary *)self->_activeExtensions objectForKeyedSubscript:v12];
              v51 = v59;
              v49 = MEMORY[0x277CFE1D8];
              v50 = [MEMORY[0x277CFE298] appInFocusStream];
              v35 = [MEMORY[0x277CFE1A8] withBundle:v12];
              v46 = v35;
              v48 = [MEMORY[0x277CFE178] extensionHostIdentifier];
              v69[0] = v48;
              v36 = &stru_2838F0870;
              if (v18)
              {
                v36 = v18;
              }

              v70[0] = v36;
              v47 = [MEMORY[0x277CFE178] extensionContainingBundleIdentifier];
              v69[1] = v47;
              v37 = &stru_2838F0870;
              if (v19)
              {
                v37 = v19;
              }

              v70[1] = v37;
              v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
              v39 = [v49 eventWithStream:v50 startDate:v54 endDate:v51 value:v35 metadata:v38];

              v40 = v39;
              if (v39)
              {
                [(_DKMonitor *)self setCurrentEvent:v39 inferHistoricalState:1];
                [(NSMutableDictionary *)self->_activeExtensions removeObjectForKey:v12];
              }

              else
              {
                v41 = [(_DKMonitor *)self log];
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  v43 = [MEMORY[0x277CFE298] appInFocusStream];
                  v44 = [MEMORY[0x277CFE1A8] withBundle:v12];
                  *buf = 138413058;
                  v62 = v43;
                  v63 = 2112;
                  v64 = v54;
                  v65 = 2112;
                  v66 = v51;
                  v67 = 2112;
                  v68 = v44;
                  _os_log_error_impl(&dword_22595A000, v41, OS_LOG_TYPE_ERROR, "Failed to create _DKEvent: {%@, %@, %@, %@}", buf, 0x2Au);

                  v40 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (id)processUpdateHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45___DKApplicationMonitor_processUpdateHandler__block_invoke;
  v4[3] = &unk_27856F6F0;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x22AA6AF50](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (void)processMonitor:(uint64_t)a1 didUpdateState:(uint64_t)a2 forProcess:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22595A000, log, OS_LOG_TYPE_ERROR, "Failed to look up extension record for identifier %@, error, %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end