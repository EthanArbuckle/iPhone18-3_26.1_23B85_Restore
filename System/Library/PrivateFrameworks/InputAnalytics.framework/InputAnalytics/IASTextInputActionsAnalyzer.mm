@interface IASTextInputActionsAnalyzer
+ (IASTextInputActionsAnalyzer)analyzerWithName:(id)name;
+ (id)getOrInitializeArrayFromArray:(id)array forKey:(unint64_t)key initCapacity:(unint64_t)capacity;
+ (id)getOrInitializeArrayFromDictionary:(id)dictionary forKey:(id)key initCapacity:(unint64_t)capacity;
+ (id)getOrInitializeDictionaryFrom:(id)from forKey:(unint64_t)key initCapacity:(int64_t)capacity;
- (BOOL)shouldBeGarbageCollected;
- (IASTextInputActionsAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue;
- (IASTextInputActionsAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue eventHandler:(id)handler;
- (id)computeSessionActionsStringOnSession:(id)session;
- (void)consumeAction:(id)action;
- (void)enumerateAnalytics;
- (void)enumerateTextInputActionsAnalytics:(id)analytics;
- (void)increaseCountForAppBundleId:(id)id forSource:(int64_t)source forActionType:(int64_t)type forFlagOptions:(int64_t)options forInputModeKey:(id)key byAnalyzerEntry:(id)entry;
- (void)reset;
@end

@implementation IASTextInputActionsAnalyzer

- (IASTextInputActionsAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue
{
  v15.receiver = self;
  v15.super_class = IASTextInputActionsAnalyzer;
  v5 = [(IASDailyGarbageCollectionAnalyzer *)&v15 initWithAnalyzerSessionId:id sessionManagerDelegate:delegate queue:queue];
  v6 = v5;
  if (v5)
  {
    name = v5->_name;
    v5->_name = @"TextInputActionsAnalyzer";

    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    v10 = objc_msgSend_initWithCapacity_(v8, v9, 1);
    entries = v6->_entries;
    v6->_entries = v10;

    objc_msgSend_setEventHandler_(v6, v12, &unk_1F4FDA450);
    v13 = sub_1D4620410();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462D6F0();
    }
  }

  return v6;
}

- (IASTextInputActionsAnalyzer)initWithAnalyzerSessionId:(id)id sessionManagerDelegate:(id)delegate queue:(id)queue eventHandler:(id)handler
{
  v15.receiver = self;
  v15.super_class = IASTextInputActionsAnalyzer;
  v6 = [(IASDailyGarbageCollectionAnalyzer *)&v15 initWithAnalyzerSessionId:id sessionManagerDelegate:delegate queue:queue eventHandler:handler];
  v7 = v6;
  if (v6)
  {
    name = v6->_name;
    v6->_name = @"TextInputActionsAnalyzer";

    v9 = objc_alloc(MEMORY[0x1E695DF90]);
    v11 = objc_msgSend_initWithCapacity_(v9, v10, 1);
    entries = v7->_entries;
    v7->_entries = v11;

    v13 = sub_1D4620410();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462D6F0();
    }
  }

  return v7;
}

+ (IASTextInputActionsAnalyzer)analyzerWithName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(objc_opt_class());
  v7 = objc_msgSend_copy(nameCopy, v5, v6);

  v8 = v4[17];
  v4[17] = v7;

  objc_msgSend_reset(v4, v9, v10);

  return v4;
}

+ (id)getOrInitializeArrayFromDictionary:(id)dictionary forKey:(id)key initCapacity:(unint64_t)capacity
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  v10 = objc_msgSend_valueForKey_(dictionaryCopy, v9, keyCopy);
  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    v10 = objc_msgSend_initWithCapacity_(v11, v12, capacity);
    if (capacity)
    {
      capacityCopy = capacity;
      do
      {
        v16 = objc_msgSend_null(MEMORY[0x1E695DFB0], v13, v14);
        objc_msgSend_addObject_(v10, v17, v16);

        --capacityCopy;
      }

      while (capacityCopy);
    }

    objc_msgSend_setObject_forKey_(dictionaryCopy, v13, v10, keyCopy);
    v18 = sub_1D4620410();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462D724();
    }
  }

  return v10;
}

+ (id)getOrInitializeArrayFromArray:(id)array forKey:(unint64_t)key initCapacity:(unint64_t)capacity
{
  arrayCopy = array;
  if (objc_msgSend_count(arrayCopy, v8, v9) <= key)
  {
    v11 = sub_1D4620410();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1D462D78C();
    }

    if (key >= 0x14)
    {
      sub_1D462D814();
    }

    while (objc_msgSend_count(arrayCopy, v12, v13) <= key)
    {
      v14 = objc_msgSend_null(MEMORY[0x1E695DFB0], v10, v16);
      objc_msgSend_addObject_(arrayCopy, v15, v14);
    }
  }

  v17 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v10, key);
  v20 = objc_msgSend_null(MEMORY[0x1E695DFB0], v18, v19);
  isEqual = objc_msgSend_isEqual_(v17, v21, v20);

  if (isEqual)
  {
    v24 = objc_alloc(MEMORY[0x1E695DF70]);
    v28 = objc_msgSend_initWithCapacity_(v24, v25, capacity);
    if (capacity)
    {
      capacityCopy = capacity;
      do
      {
        v30 = objc_msgSend_null(MEMORY[0x1E695DFB0], v26, v27);
        objc_msgSend_addObject_(v28, v31, v30);

        --capacityCopy;
      }

      while (capacityCopy);
    }

    objc_msgSend_setObject_atIndexedSubscript_(arrayCopy, v26, v28, key);
    v32 = sub_1D4620410();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462D884();
    }
  }

  else
  {
    v28 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v23, key);
  }

  return v28;
}

+ (id)getOrInitializeDictionaryFrom:(id)from forKey:(unint64_t)key initCapacity:(int64_t)capacity
{
  fromCopy = from;
  v9 = objc_msgSend_objectAtIndexedSubscript_(fromCopy, v8, key);
  v12 = objc_msgSend_null(MEMORY[0x1E695DFB0], v10, v11);
  isEqual = objc_msgSend_isEqual_(v9, v13, v12);

  if (isEqual)
  {
    v15 = objc_alloc(MEMORY[0x1E695DF90]);
    v17 = objc_msgSend_initWithCapacity_(v15, v16, capacity);

    objc_msgSend_setObject_atIndexedSubscript_(fromCopy, v18, v17, key);
    v19 = sub_1D4620410();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462D8EC();
    }

    v9 = v17;
  }

  return v9;
}

- (void)increaseCountForAppBundleId:(id)id forSource:(int64_t)source forActionType:(int64_t)type forFlagOptions:(int64_t)options forInputModeKey:(id)key byAnalyzerEntry:(id)entry
{
  v81 = *MEMORY[0x1E69E9840];
  idCopy = id;
  keyCopy = key;
  entryCopy = entry;
  if ((objc_msgSend_isAllZeroes(entryCopy, v17, v18) & 1) == 0)
  {
    if (keyCopy)
    {
      if (!idCopy)
      {
        idCopy = &stru_1F4FDAA18;
      }

      v20 = objc_msgSend_getOrInitializeArrayFromDictionary_forKey_initCapacity_(IASTextInputActionsAnalyzer, v19, self->_entries, idCopy, 15);
      v59 = objc_msgSend_getOrInitializeArrayFromArray_forKey_initCapacity_(IASTextInputActionsAnalyzer, v21, v20, source, 20);
      v58 = objc_msgSend_getOrInitializeArrayFromArray_forKey_initCapacity_(IASTextInputActionsAnalyzer, v22, v59, type, 8);
      v60 = objc_msgSend_getOrInitializeDictionaryFrom_forKey_initCapacity_(IASTextInputActionsAnalyzer, v23, v58, options, 1);
      v26 = objc_msgSend_objectForKeyedSubscript_(v60, v24, keyCopy);
      if (!v26)
      {
        v26 = objc_alloc_init(IASTextInputActionsAnalyzerEntry);
        objc_msgSend_setObject_forKeyedSubscript_(v60, v27, v26, keyCopy);
        v28 = sub_1D4620410();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v57 = objc_msgSend_analyzerSessionId(self, v29, v30);
          v55 = objc_msgSend_description(v57, v49, v50);
          *buf = 138478851;
          v62 = v55;
          v63 = 2048;
          sourceCopy2 = source;
          v65 = 2048;
          typeCopy2 = type;
          v67 = 2048;
          optionsCopy2 = options;
          v69 = 2113;
          v70 = keyCopy;
          _os_log_debug_impl(&dword_1D460F000, v28, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] New input mode key found - initializing new entry for source:%lu actionType:%lu flagOptions%lu inputMode:%{private}@", buf, 0x34u);
        }
      }

      objc_msgSend_increaseWithEntry_(v26, v25, entryCopy);
      v31 = sub_1D4620410();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v56 = objc_msgSend_analyzerSessionId(self, v32, v33);
        v37 = objc_msgSend_description(v56, v35, v36);
        v54 = objc_msgSend_netCharacters(entryCopy, v38, v39);
        v53 = objc_msgSend_userRemovedCharacters(entryCopy, v40, v41);
        v52 = objc_msgSend_netEmojiCharacters(entryCopy, v42, v43);
        v51 = objc_msgSend_userRemovedEmojiCharacters(entryCopy, v44, v45);
        v48 = objc_msgSend_inputActions(entryCopy, v46, v47);
        *buf = 138480131;
        v62 = v37;
        v63 = 2048;
        sourceCopy2 = source;
        v65 = 2048;
        typeCopy2 = type;
        v67 = 2048;
        optionsCopy2 = options;
        v69 = 2113;
        v70 = keyCopy;
        v71 = 2048;
        v72 = v54;
        v73 = 2048;
        v74 = v53;
        v75 = 2048;
        v76 = v52;
        v77 = 2048;
        v78 = v51;
        v79 = 2048;
        v80 = v48;
        _os_log_debug_impl(&dword_1D460F000, v31, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] Updated entry for source:%lu actionType:%lu flagOptions%lu inputMode:%{private}@ by netChars:%ld userRemovedChars:%ld netEmojiChars:%ld userRemovedEmojiChars:%ld actions:%ld", buf, 0x66u);
      }
    }

    else
    {
      v20 = sub_1D4620410();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1D462D954();
      }
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)consumeAction:(id)action
{
  v247 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (!actionCopy)
  {
    sub_1D462D994(a2, self, v5);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = actionCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v11 = v8;
  if (v8)
  {
    v12 = objc_msgSend_inputMode(v8, v9, v10);

    if (!v12)
    {
      v15 = objc_alloc_init(IATextInputActionsInputMode);
      objc_msgSend_setInputMode_(v11, v16, v15);

      v17 = sub_1D4620410();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1D462DA08();
      }
    }

    v18 = objc_msgSend_clientSideSessionErrors(v11, v13, v14);
    v21 = objc_msgSend_clientSideSessionErrors(v11, v19, v20);
    v24 = objc_msgSend_length(v21, v22, v23);
    v226[0] = MEMORY[0x1E69E9820];
    v226[1] = 3221225472;
    v226[2] = sub_1D461A8F4;
    v226[3] = &unk_1E848A518;
    v226[4] = self;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v18, v25, 0, v24, 2, v226);

    v27 = objc_msgSend_generateAnalyzerEntryFromAction_(IASTextInputActionsAnalyzerEntry, v26, v11);
    v30 = objc_msgSend_inputMode(v11, v28, v29);
    v33 = objc_msgSend_inputModeUniqueString(v30, v31, v32);

    v34 = sub_1D4620410();
    v224 = v33;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v223 = objc_msgSend_analyzerSessionId(self, v35, v36);
      v174 = objc_msgSend_description(v223, v172, v173);
      v219 = objc_msgSend_netCharacters(v27, v175, v176);
      v216 = objc_msgSend_userRemovedCharacters(v27, v177, v178);
      v181 = objc_msgSend_netEmojiCharacters(v27, v179, v180);
      v184 = objc_msgSend_userRemovedEmojiCharacters(v27, v182, v183);
      v187 = objc_msgSend_inputActions(v27, v185, v186);
      v190 = objc_msgSend_source(v11, v188, v189);
      v193 = objc_msgSend_textInputActionsType(v11, v191, v192);
      *buf = 138480131;
      v228 = v174;
      v229 = 2113;
      v230 = v11;
      v231 = 2048;
      v232 = v219;
      v233 = 2048;
      v234 = v216;
      v235 = 2048;
      v236 = v181;
      v237 = 2048;
      v238 = v184;
      v239 = 2048;
      v240 = v187;
      v241 = 2048;
      v242 = v190;
      v33 = v224;
      v243 = 2048;
      v244 = v193;
      v245 = 2113;
      v246 = v224;
      _os_log_debug_impl(&dword_1D460F000, v34, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] consumeAction(): %{private}@ netCharactersDelta:%ld userRemovedCharactersDelta:%ld netEmojiCharactersDelta:%ld sysRemovedObjectsDelta:%ld inputActionsDelta:%ld for source:%lu type:%lu inputMode:%{private}@", buf, 0x66u);
    }

    v39 = objc_msgSend_appBundleId(v11, v37, v38);
    v42 = objc_msgSend_source(v11, v40, v41);
    v45 = objc_msgSend_textInputActionsType(v11, v43, v44);
    v48 = objc_msgSend_flagOptions(v11, v46, v47);
    objc_msgSend_increaseCountForAppBundleId_forSource_forActionType_forFlagOptions_forInputModeKey_byAnalyzerEntry_(self, v49, v39, v42, v45, v48, v33, v27);

    v52 = objc_msgSend_inputMode(v11, v50, v51);
    v55 = objc_msgSend_language(v52, v53, v54);
    if (v55)
    {
    }

    else
    {
      v60 = objc_msgSend_inputMode(v11, v56, v57);
      v63 = objc_msgSend_region(v60, v61, v62);

      if (!v63)
      {
        goto LABEL_18;
      }
    }

    if (objc_msgSend_source(v11, v58, v59) == 4)
    {
      v64 = objc_msgSend_sessionErrors(self, v58, v59);
      v67 = objc_msgSend_inputMode(v11, v65, v66);
      v70 = objc_msgSend_language(v67, v68, v69);
      v72 = objc_msgSend_validateLanguage_(IASTextInputActionsErrorChecking, v71, v70);
      objc_msgSend_logErrorCodeIfNotNil_(v64, v73, v72);

      v76 = objc_msgSend_sessionErrors(self, v74, v75);
      v79 = objc_msgSend_inputMode(v11, v77, v78);
      v82 = objc_msgSend_region(v79, v80, v81);
      v84 = objc_msgSend_validateRegion_(IASTextInputActionsErrorChecking, v83, v82);
      objc_msgSend_logErrorCodeIfNotNil_(v76, v85, v84);
    }

LABEL_18:
    v86 = objc_msgSend_asDictationBegan(v11, v58, v59);
    v89 = v86;
    if (v86 && objc_msgSend_modelessUsedAtLeastOnceCount(v86, v87, v88))
    {
      self->_sessionIsModeless = 1;
    }

    v90 = objc_msgSend_largestSingleInsertionLength(v11, v87, v88);
    v93 = objc_msgSend_largestSingleDeletionLength(v11, v91, v92);
    v96 = objc_msgSend_netCharacterCount(v11, v94, v95);
    v99 = objc_msgSend_flagOptions(v11, v97, v98);
    if (objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v100, v99))
    {
      v90 = objc_msgSend_insertedEmojiCount(v11, v101, v102);
      v93 = objc_msgSend_removedEmojiCount(v11, v103, v104);
      v107 = objc_msgSend_insertedEmojiCount(v11, v105, v106);
      v96 = v107 - objc_msgSend_removedEmojiCount(v11, v108, v109);
      v110 = sub_1D4620410();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
      {
        v194 = objc_msgSend_analyzerSessionId(self, v111, v112);
        v220 = objc_msgSend_description(v194, v195, v196);
        *buf = 138478595;
        v228 = v220;
        v229 = 2048;
        v230 = v90;
        v231 = 2048;
        v232 = v93;
        v233 = 2048;
        v234 = v96;
        _os_log_debug_impl(&dword_1D460F000, v110, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] emoji search - override insertion %lu, deletion %lu, net %ld", buf, 0x2Au);
      }
    }

    if (v90 > self->_largestSessionInsertionLength)
    {
      v113 = sub_1D4620410();
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
      {
        v217 = objc_msgSend_analyzerSessionId(self, v114, v115);
        v221 = objc_msgSend_description(v217, v197, v198);
        largestSessionInsertionLength = self->_largestSessionInsertionLength;
        v201 = objc_msgSend_largestSingleInsertionLength(v11, v199, v200);
        *buf = 138478339;
        v228 = v221;
        v229 = 2048;
        v230 = largestSessionInsertionLength;
        v231 = 2048;
        v232 = v201;
        _os_log_debug_impl(&dword_1D460F000, v113, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] largestSessionInsertionLength %lu -> %lu", buf, 0x20u);
      }

      self->_largestSessionInsertionLength = v90;
    }

    v116 = v224;
    if (v93 > self->_largestSessionDeletionLength)
    {
      v117 = sub_1D4620410();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
      {
        v222 = objc_msgSend_analyzerSessionId(self, v118, v119);
        v204 = objc_msgSend_description(v222, v202, v203);
        largestSessionDeletionLength = self->_largestSessionDeletionLength;
        v218 = v204;
        v207 = objc_msgSend_largestSingleDeletionLength(v11, v205, v206);
        *buf = 138478339;
        v228 = v204;
        v229 = 2048;
        v230 = largestSessionDeletionLength;
        v116 = v224;
        v231 = 2048;
        v232 = v207;
        _os_log_debug_impl(&dword_1D460F000, v117, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] largestSessionDeletionLength %lu -> %lu", buf, 0x20u);
      }

      self->_largestSessionDeletionLength = v93;
    }

    v120 = objc_msgSend_flagOptions(v11, v101, v102);
    if ((objc_msgSend_isMarkedTextSetInFlagOptions_(IATextInputActionsUtils, v121, v120) & 1) == 0)
    {
      self->_sessionNetCharacters += v96;
    }

    if (objc_msgSend_isCapableOfTextInsertion(v11, v122, v123) && ((v126 = objc_msgSend_flagOptions(v11, v124, v125), !objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v127, v126)) || (v130 = objc_msgSend_flagOptions(v11, v128, v129), objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v131, v130)) && objc_msgSend_insertedEmojiCount(v11, v124, v125)))
    {
      self->_insertionObservedInSession = 1;
      v132 = sub_1D4620410();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
      {
        sub_1D462DAC8();
      }
    }

    else
    {
      if (self->_insertionObservedInSession)
      {
        goto LABEL_46;
      }

      v133 = objc_msgSend_flagOptions(v11, v124, v125);
      if (objc_msgSend_isEmojiSearchSetInFlagOptions_(IATextInputActionsUtils, v134, v133))
      {
        goto LABEL_46;
      }

      v135 = objc_msgSend_removedTextLength(v11, v124, v125);
      self->_charsRemovedBeforeFirstInsertionCount += v135 - objc_msgSend_removedEmojiCount(v11, v136, v137);
      self->_emojisRemovedBeforeFirstInsertionCount += objc_msgSend_removedEmojiCount(v11, v138, v139);
      v132 = sub_1D4620410();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
      {
        v208 = objc_msgSend_analyzerSessionId(self, v140, v141);
        v211 = objc_msgSend_description(v208, v209, v210);
        charsRemovedBeforeFirstInsertionCount = self->_charsRemovedBeforeFirstInsertionCount;
        emojisRemovedBeforeFirstInsertionCount = self->_emojisRemovedBeforeFirstInsertionCount;
        *buf = 138478339;
        v228 = v211;
        v229 = 2048;
        v230 = charsRemovedBeforeFirstInsertionCount;
        v231 = 2048;
        v232 = emojisRemovedBeforeFirstInsertionCount;
        _os_log_debug_impl(&dword_1D460F000, v132, OS_LOG_TYPE_DEBUG, "[%{private}@][IASTextInputActionsAnalyzer] Initial deletion %lu, %lu", buf, 0x20u);
      }
    }

LABEL_46:
    v142 = objc_msgSend_processBundleId(v11, v124, v125);
    if (v142)
    {
      v145 = v142;
      v146 = objc_msgSend_processBundleId(v11, v143, v144);
      v149 = objc_msgSend_length(v146, v147, v148);

      if (v149)
      {
        v150 = objc_msgSend_processBundleId(v11, v143, v144);
        mostRecentProcessId = self->_mostRecentProcessId;
        self->_mostRecentProcessId = v150;
      }
    }

    v152 = objc_msgSend_appBundleId(v11, v143, v144);
    if (v152)
    {
      v155 = v152;
      v156 = objc_msgSend_appBundleId(v11, v153, v154);
      v159 = objc_msgSend_length(v156, v157, v158);

      if (v159)
      {
        v160 = objc_msgSend_appBundleId(v11, v153, v154);
        mostRecentAppBundleId = self->_mostRecentAppBundleId;
        self->_mostRecentAppBundleId = v160;
      }
    }

    v162 = objc_msgSend_asEnd(v11, v153, v154);
    v165 = objc_msgSend_keyboardTrialParameters(v162, v163, v164);

    if (v165)
    {
      v168 = objc_msgSend_keyboardTrialParameters(v162, v166, v167);
      objc_msgSend_setKeyboardTrialParameters_(self, v169, v168);

      v170 = sub_1D4620410();
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
      {
        sub_1D462DAFC();
      }
    }

    v225.receiver = self;
    v225.super_class = IASTextInputActionsAnalyzer;
    [(IASDailyGarbageCollectionAnalyzer *)&v225 consumeAction:actionCopy];
  }

  v171 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  objc_msgSend_removeAllObjects(self->_entries, a2, v2);
  v6 = objc_msgSend_sessionErrors(self, v4, v5);
  objc_msgSend_clear(v6, v7, v8);

  self->_sessionIsModeless = 0;
  self->_largestSessionInsertionLength = 0;
  self->_largestSessionDeletionLength = 0;
  self->_sessionNetCharacters = 0;
  self->_insertionObservedInSession = 0;
  self->_charsRemovedBeforeFirstInsertionCount = 0;
  self->_emojisRemovedBeforeFirstInsertionCount = 0;
  v9 = sub_1D4620410();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462DB30();
  }
}

- (id)computeSessionActionsStringOnSession:(id)session
{
  sessionCopy = session;
  v6 = objc_alloc_init(IATextInputActionsSessionActionInformation);
  v7 = 13;
  v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v8, 13);
  do
  {
    v11 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v9, 0);
    objc_msgSend_addObject_(v10, v12, v11);

    --v7;
  }

  while (v7);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_1D461ACCC;
  v54[3] = &unk_1E848A568;
  v56 = a2;
  v54[4] = self;
  v13 = v10;
  v55 = v13;
  objc_msgSend_enumerateObjectsUsingBlock_(sessionCopy, v14, v54);
  objc_msgSend_setSessionActionsString_(v6, v15, &stru_1F4FDAA18);
  v49 = MEMORY[0x1E69E9820];
  v50 = 3221225472;
  v51 = sub_1D461AF1C;
  v52 = &unk_1E848A590;
  v16 = v6;
  v53 = v16;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v17, &v49);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v13, v18, 4, v49, v50, v51, v52);
  if (objc_msgSend_BOOLValue(v19, v20, v21))
  {
    objc_msgSend_setSessionHasOnlyPrimaryInput_(v16, v22, 0);
  }

  else
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(v13, v22, 5);
    if (objc_msgSend_BOOLValue(v23, v24, v25))
    {
      objc_msgSend_setSessionHasOnlyPrimaryInput_(v16, v26, 0);
    }

    else
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(v13, v26, 8);
      if (objc_msgSend_BOOLValue(v27, v28, v29))
      {
        objc_msgSend_setSessionHasOnlyPrimaryInput_(v16, v30, 0);
      }

      else
      {
        v31 = objc_msgSend_objectAtIndexedSubscript_(v13, v30, 9);
        if (objc_msgSend_BOOLValue(v31, v32, v33))
        {
          objc_msgSend_setSessionHasOnlyPrimaryInput_(v16, v34, 0);
        }

        else
        {
          v36 = objc_msgSend_sessionActionsString(v16, v34, v35);
          isEqualToString = objc_msgSend_isEqualToString_(v36, v37, @"U");
          objc_msgSend_setSessionHasOnlyPrimaryInput_(v16, v39, isEqualToString ^ 1u);
        }
      }
    }
  }

  v41 = objc_msgSend_objectAtIndexedSubscript_(v13, v40, 3);
  v44 = objc_msgSend_BOOLValue(v41, v42, v43);
  objc_msgSend_setSessionHasDictation_(v16, v45, v44);

  v46 = v53;
  v47 = v16;

  return v16;
}

- (void)enumerateAnalytics
{
  v5 = objc_msgSend_eventHandler(self, a2, v2);
  objc_msgSend_enumerateTextInputActionsAnalytics_(self, v4, v5);
}

- (void)enumerateTextInputActionsAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v5 = sub_1D4620410();
  v6 = v5;
  if (analyticsCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1D462DBD8();
    }

    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_1D461B248;
    mostRecentProcessId = self->_mostRecentProcessId;
    v21[4] = sub_1D461B258;
    if (!mostRecentProcessId)
    {
      mostRecentProcessId = @"nil";
    }

    v22 = mostRecentProcessId;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = sub_1D461B248;
    v19[4] = sub_1D461B258;
    v10 = objc_msgSend_sessionErrors(self, v8, v9);
    v20 = objc_msgSend_errorString(v10, v11, v12);

    entries = self->_entries;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1D461B260;
    v15[3] = &unk_1E848A658;
    v15[4] = self;
    v17 = v21;
    v18 = v19;
    v16 = analyticsCopy;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(entries, v14, v15);

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v21, 8);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1D462DC0C();
    }
  }
}

- (BOOL)shouldBeGarbageCollected
{
  v11.receiver = self;
  v11.super_class = IASTextInputActionsAnalyzer;
  shouldBeGarbageCollected = [(IASDailyGarbageCollectionAnalyzer *)&v11 shouldBeGarbageCollected];
  if (shouldBeGarbageCollected)
  {
    v6 = objc_msgSend_sessionErrors(self, v3, v4);
    objc_msgSend_logErrorCodeIfNotNil_(v6, v7, 0x1F4FDDE78);

    objc_msgSend_enumerateAnalytics(self, v8, v9);
  }

  return shouldBeGarbageCollected;
}

@end