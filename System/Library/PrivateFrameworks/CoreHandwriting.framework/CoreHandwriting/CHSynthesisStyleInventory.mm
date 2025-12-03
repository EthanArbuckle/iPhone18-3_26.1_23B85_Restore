@interface CHSynthesisStyleInventory
+ (BOOL)clear;
+ (BOOL)isSimpleMathPattern:(id)pattern;
+ (BOOL)shouldBypassGating;
+ (id)_defaultInventoryStorageURL;
+ (id)_formatVersion;
+ (id)_groupContainerURL;
+ (id)_mathCharacterSet;
+ (id)concatenateStyleSamples:(id)samples;
+ (id)concatenatedSampleWithDrawings:(id)drawings transcriptions:(id)transcriptions;
+ (id)normalizeAndAlignStyleSamples:(id)samples;
+ (id)relativePath;
+ (id)remainingCharacterSetFromPromptCharacterSet:(id)set withSample:(id)sample;
+ (id)statusWithInventory:(id)inventory;
+ (id)styleSamplesWithDrawings:(id)drawings transcriptions:(id)transcriptions;
+ (int64_t)maxStyleSampleLengthForPrompt:(id)prompt script:(int64_t)script;
+ (void)decomposeSamples:(id)samples drawings:(id *)drawings contents:(id *)contents;
- (BOOL)_unsafeHasLowSampleCountForCharacters:(id)characters minimumSampleCount:(int64_t)count;
- (BOOL)_unsafeSupportsPersonalizationForScript:(int64_t)script;
- (BOOL)containsSampleWithStrokeIdentifiers:(id)identifiers;
- (BOOL)containsSampleWithTranscription:(id)transcription strokeIdentifiers:(id)identifiers;
- (BOOL)hasAllDigits;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTokenAcceptable:(id)acceptable script:(int64_t)script;
- (BOOL)needsStylePredictionUpdateForScript:(int64_t)script;
- (BOOL)save;
- (BOOL)shouldForceInventoryDefaultStyleWithOptions:(id)options;
- (BOOL)supportsPersonalizationForScript:(int64_t)script;
- (CHSynthesisModelHashes)synthesisModelHashes;
- (CHSynthesisStyleInventory)init;
- (CHSynthesisStyleInventory)initWithCoder:(id)coder;
- (CHSynthesisStyleInventory)initWithStyles:(id)styles sampleCountByCharacter:(id)character storageURL:(id)l synthesisModelHashes:(id)hashes currentSamplingTimestep:(int64_t)timestep characterStyleTimestamp:(double)timestamp fastPathCharacterStyles:(id)characterStyles characterInventoryVersion:(int64_t)self0;
- (CHSynthesisStyleInventory)initWithURL:(id)l;
- (NSDate)lastSavedDate;
- (double)lastCharacterStyleTimestamp;
- (id).cxx_construct;
- (id)_unsafeSamplesWithStylePrediction;
- (id)characterCoverage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)coverageMaskWithPrompt:(id)prompt script:(int64_t)script coveredCharacters:(id)characters;
- (id)defaultStyleSamplesForPrompt:(id)prompt script:(int64_t)script maxStyleSampleLength:(int64_t)length;
- (id)defaultUserStyleSampleForScript:(int64_t)script;
- (id)fastPathCharacterStylesWithVariations;
- (id)highestCharacterCoverageStyleSampleForPrompt:(id)prompt script:(int64_t)script styles:(id)styles;
- (id)nearestInventorySamplesToSample:(id)sample prompt:(id)prompt maxStyleSampleLength:(int64_t)length;
- (id)personalizedStyleSamplesForInputSample:(id)sample prompt:(id)prompt script:(int64_t)script samplingAlgorithm:(unint64_t)algorithm maxStyleSampleLength:(int64_t)length;
- (id)samplesWithoutStylePrediction;
- (id)shortStringHeuristicStyleSampleForPrompt:(id)prompt script:(int64_t)script styles:(id)styles maxNumOfSamples:(unint64_t)samples;
- (id)styleCharCoverageForInputSample:(id)sample prompt:(id)prompt script:(int64_t)script maxStyleSampleLength:(int64_t)length;
- (id)styleSampleOptionsForRequest:(id)request script:(int64_t)script;
- (id)styleSamplesForInputSample:(id)sample prompt:(id)prompt script:(int64_t)script samplingAlgorithm:(unint64_t)algorithm;
- (id)styleSamplesForInputSample:(id)sample prompt:(id)prompt script:(int64_t)script samplingAlgorithm:(unint64_t)algorithm maxNumOfSamples:(unint64_t)samples;
- (unint64_t)countOfStyleSamples;
- (unint64_t)countOfStyleSamplesForScript:(int64_t)script;
- (void)_safelyRunBlock:(id)block;
- (void)_unsafeAddSample:(id)sample;
- (void)_unsafeRemoveSample:(id)sample;
- (void)_unsafeUpdateCharacterCoverageWithAddedSample:(id)sample;
- (void)_unsafeUpdateCharacterCoverageWithRemovedSample:(id)sample;
- (void)addSample:(id)sample;
- (void)addSampleOfSynthesizedCharacter:(id)character transcription:(id)transcription key:(unsigned int)key version:(int64_t)version;
- (void)addSamplesIfNeededWithTokenizedMathResult:(id)result drawing:(id)drawing strokeIdentifiers:(id)identifiers;
- (void)addSamplesIfNeededWithTokenizedTextResult:(id)result drawing:(id)drawing script:(int64_t)script strokeIdentifiers:(id)identifiers;
- (void)addSamplesWithArray:(id)array;
- (void)cleanupFastPathCharacters;
- (void)clearSamplesEmbeddingVectorForScript:(int64_t)script;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateStyleSamplesUsingBlock:(id)block;
- (void)removeSample:(id)sample;
- (void)removeSamplesContainingStrokeIdentifiers:(id)identifiers;
- (void)removeStyleSamplesIfNeeded;
- (void)removeStyleSamplesIfNeededWithMaximumSize:(int64_t)size minimumSampleCountByCharacter:(int64_t)character;
- (void)reset;
- (void)resetCurrentSamplingTimestep;
- (void)saveIfNeeded;
- (void)setSupportsPersonalizationForScript:(int64_t)script value:(BOOL)value;
- (void)updateSamplingCountForSample:(id)sample;
- (void)updateStylePredictionsWithSamplesToUpdate:(id)update toRemove:(id)remove;
- (void)updateSynthesisModelHashKo:(id)ko;
- (void)updateSynthesisModelHashLatin:(id)latin;
- (void)updateSynthesisModelHashZhJa:(id)ja;
@end

@implementation CHSynthesisStyleInventory

+ (id)_groupContainerURL
{
  if (qword_1EA84CEB0 == -1)
  {
    v3 = qword_1EA84CEA8;
  }

  else
  {
    dispatch_once(&qword_1EA84CEB0, &unk_1EF1BCA30);
    v3 = qword_1EA84CEA8;
  }

  return v3;
}

+ (id)relativePath
{
  if (os_variant_has_internal_diagnostics())
  {
    v7 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v2, v3, v4, v5, v6);
    v12 = objc_msgSend_dictionaryForKey_(v7, v8, @"com.apple.corehandwriting", v9, v10, v11);

    v17 = objc_msgSend_objectForKey_(v12, v13, @"CHCustomStyleInventoryPath", v14, v15, v16);
    if (objc_msgSend_length(v17, v18, v19, v20, v21, v22))
    {
      v23 = v17;
    }

    else
    {
      v23 = @"synthesis/styleInventory.dat";
    }

    v24 = v23;
  }

  else
  {
    v24 = @"synthesis/styleInventory.dat";
  }

  return v24;
}

+ (id)_defaultInventoryStorageURL
{
  v6 = objc_msgSend__groupContainerURL(CHSynthesisStyleInventory, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_relativePath(CHSynthesisStyleInventory, v7, v8, v9, v10, v11);
  v17 = objc_msgSend_URLByAppendingPathComponent_(v6, v13, v12, v14, v15, v16);

  return v17;
}

+ (id)_formatVersion
{
  if (qword_1EA84CEC0 == -1)
  {
    v3 = qword_1EA84CEB8;
  }

  else
  {
    dispatch_once(&qword_1EA84CEC0, &unk_1EF1BCA50);
    v3 = qword_1EA84CEB8;
  }

  return v3;
}

+ (BOOL)shouldBypassGating
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    v8 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v3, v4, v5, v6, v7);
    v13 = objc_msgSend_dictionaryForKey_(v8, v9, @"com.apple.corehandwriting", v10, v11, v12);

    v18 = objc_msgSend_objectForKey_(v13, v14, @"kCHInventoryBypassGating", v15, v16, v17);
    v24 = objc_msgSend_BOOLValue(v18, v19, v20, v21, v22, v23);

    LOBYTE(has_internal_diagnostics) = v24;
  }

  return has_internal_diagnostics;
}

+ (id)_mathCharacterSet
{
  if (qword_1EA84CED0 == -1)
  {
    v3 = qword_1EA84CEC8;
  }

  else
  {
    dispatch_once(&qword_1EA84CED0, &unk_1EF1BCA70);
    v3 = qword_1EA84CEC8;
  }

  return v3;
}

+ (int64_t)maxStyleSampleLengthForPrompt:(id)prompt script:(int64_t)script
{
  promptCopy = prompt;
  v9 = objc_msgSend_synthesisLengthForString_script_(CHSynthesisStyleSample, v6, promptCopy, script, v7, v8);
  if (v9 >= objc_msgSend__shortConfigLength(CHSynthesisStyleInventory, v10, v11, v12, v13, v14))
  {
    v20 = objc_msgSend__longConfigLength(CHSynthesisStyleInventory, v15, v16, v17, v18, v19);
  }

  else
  {
    v20 = objc_msgSend__shortConfigLength(CHSynthesisStyleInventory, v15, v16, v17, v18, v19);
  }

  v21 = v20;

  return v21;
}

+ (BOOL)clear
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend__defaultInventoryStorageURL(CHSynthesisStyleInventory, a2, v2, v3, v4, v5);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC98;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "Clearing synthesis style inventory at %@", buf, 0xCu);
  }

  if ((objc_msgSend_checkResourceIsReachableAndReturnError_(v6, v8, 0, v9, v10, v11) & 1) == 0)
  {
    v21 = 1;
    goto LABEL_13;
  }

  v17 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v12, v13, v14, v15, v16);
  v31 = 0;
  v21 = objc_msgSend_removeItemAtURL_error_(v17, v18, v6, &v31, v19, v20);
  v22 = v31;

  if ((v21 & 1) == 0)
  {
    if (qword_1EA84DC48 == -1)
    {
      v23 = qword_1EA84DC98;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v23 = qword_1EA84DC98;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }
    }

    v29 = objc_msgSend_absoluteString(v6, v24, v25, v26, v27, v28);
    *buf = 138412546;
    v33 = v29;
    v34 = 2112;
    v35 = v22;
    _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "Style inventory could not be deleted from URL: %@, error: %@", buf, 0x16u);

    goto LABEL_10;
  }

LABEL_11:

LABEL_13:
  return v21;
}

+ (id)remainingCharacterSetFromPromptCharacterSet:(id)set withSample:(id)sample
{
  sampleCopy = sample;
  v11 = objc_msgSend_mutableCopy(set, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_characterCoverage(sampleCopy, v12, v13, v14, v15, v16);
  objc_msgSend_minusSet_(v11, v18, v17, v19, v20, v21);

  return v11;
}

- (CHSynthesisStyleInventory)init
{
  v7 = objc_msgSend__defaultInventoryStorageURL(CHSynthesisStyleInventory, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_initWithURL_(self, v8, v7, v9, v10, v11);

  return v12;
}

- (CHSynthesisStyleInventory)initWithURL:(id)l
{
  v124 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v119 = 0;
  v10 = objc_msgSend_checkResourceIsReachableAndReturnError_(lCopy, v6, &v119, v7, v8, v9);
  v11 = v119;
  v16 = v11;
  if (v10)
  {
    v17 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], v12, lCopy, v13, v14, v15);
    v18 = MEMORY[0x1E696ACD0];
    v19 = objc_opt_class();
    v118 = v16;
    v22 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v18, v20, v19, v17, &v118, v21);
    v23 = v118;

    if (v22)
    {
      v24 = v22;

      v25 = v24;
      goto LABEL_26;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v26 = qword_1EA84DC98;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v32 = objc_msgSend_absoluteString(lCopy, v27, v28, v29, v30, v31);
      *buf = 138412546;
      v121 = v32;
      v122 = 2112;
      v123 = v23;
      _os_log_impl(&dword_18366B000, v26, OS_LOG_TYPE_ERROR, "Error loading Synthesis style inventory from URL %@, error: %@", buf, 0x16u);
    }
  }

  else
  {
    v23 = v11;
  }

  v117.receiver = self;
  v117.super_class = CHSynthesisStyleInventory;
  v33 = [(CHSynthesisStyleInventory *)&v117 init];
  if (!v33)
  {
LABEL_20:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v76 = qword_1EA84DC98;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v121 = v23;
      _os_log_impl(&dword_18366B000, v76, OS_LOG_TYPE_ERROR, "Synthesis style inventory was not initialized. error: %@", buf, 0xCu);
    }

    v25 = 0;
    v24 = 0;
    goto LABEL_36;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v34 = qword_1EA84DC98;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v34, OS_LOG_TYPE_DEBUG, "Initializing empty inventory", buf, 2u);
  }

  v40 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v35, v36, v37, v38, v39);
  styles = v33->_styles;
  v33->_styles = v40;

  v42 = [CHSynthesisModelHashes alloc];
  v45 = objc_msgSend_initWithLatinHash_zhJaHash_koHash_(v42, v43, 0, 0, 0, v44);
  synthesisModelHashes = v33->_synthesisModelHashes;
  v33->_synthesisModelHashes = v45;

  v52 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v47, v48, v49, v50, v51);
  sampleCountByCharacter = v33->_sampleCountByCharacter;
  v33->_sampleCountByCharacter = v52;

  v33->_characterStyleTimestamp = 0.0;
  v59 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v54, v55, v56, v57, v58);
  fastPathCharacterStyles = v33->_fastPathCharacterStyles;
  v33->_fastPathCharacterStyles = v59;

  v33->_characterInventoryVersion = 1;
  v66 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v61, v62, v63, v64, v65);
  v72 = objc_msgSend_URLByDeletingLastPathComponent(lCopy, v67, v68, v69, v70, v71);
  v116 = 0;
  objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v66, v73, v72, 1, 0, &v116);
  v74 = v116;

  if (v74)
  {
    if (qword_1EA84DC48 == -1)
    {
      v75 = qword_1EA84DC98;
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v75 = qword_1EA84DC98;
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }
    }

    *buf = 138412290;
    v121 = v74;
    _os_log_impl(&dword_18366B000, v75, OS_LOG_TYPE_ERROR, "Synthesis style inventory folder path could not be created. error: %@", buf, 0xCu);
    goto LABEL_19;
  }

  v24 = 0;
  v25 = v33;
LABEL_26:
  objc_storeStrong(&v25->_inventoryStorageURL, l);
  v82 = objc_msgSend_now(MEMORY[0x1E695DF00], v77, v78, v79, v80, v81);
  lastSavedDate = v25->_lastSavedDate;
  v25->_lastSavedDate = v82;

  v89 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v84, v85, v86, v87, v88);
  supportsPersonalization = v25->_supportsPersonalization;
  v25->_supportsPersonalization = v89;

  v91 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v92 = dispatch_queue_create("com.apple.CoreHandwriting.CHSynthesisStyleInventoryQueue", v91);
  workQueue = v25->__workQueue;
  v25->__workQueue = v92;

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v94 = qword_1EA84DC98;
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    v100 = objc_msgSend_absoluteString(v25->_inventoryStorageURL, v95, v96, v97, v98, v99);
    *buf = 138412290;
    v121 = v100;
    _os_log_impl(&dword_18366B000, v94, OS_LOG_TYPE_DEFAULT, "Synthesis style inventory URL %@", buf, 0xCu);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v101 = qword_1EA84DC98;
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v101 = qword_1EA84DC98;
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
LABEL_32:
    v107 = objc_msgSend_count(v25->_styles, v102, v103, v104, v105, v106);
    *buf = 134217984;
    v121 = v107;
    _os_log_impl(&dword_18366B000, v101, OS_LOG_TYPE_DEFAULT, "Loading synthesis style inventory containing %lu samples", buf, 0xCu);
  }

LABEL_33:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v76 = qword_1EA84DC98;
    if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v76 = qword_1EA84DC98;
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
  {
LABEL_35:
    v113 = objc_msgSend_count(v25->_fastPathCharacterStyles, v108, v109, v110, v111, v112);
    *buf = 134217984;
    v121 = v113;
    _os_log_impl(&dword_18366B000, v76, OS_LOG_TYPE_DEBUG, "Loading synthesis fast path character style inventory containing %lu samples", buf, 0xCu);
  }

LABEL_36:

  v114 = v25;
  return v114;
}

- (CHSynthesisStyleInventory)initWithStyles:(id)styles sampleCountByCharacter:(id)character storageURL:(id)l synthesisModelHashes:(id)hashes currentSamplingTimestep:(int64_t)timestep characterStyleTimestamp:(double)timestamp fastPathCharacterStyles:(id)characterStyles characterInventoryVersion:(int64_t)self0
{
  stylesCopy = styles;
  characterCopy = character;
  lCopy = l;
  hashesCopy = hashes;
  characterStylesCopy = characterStyles;
  v69.receiver = self;
  v69.super_class = CHSynthesisStyleInventory;
  v27 = [(CHSynthesisStyleInventory *)&v69 init];
  if (v27)
  {
    v28 = objc_msgSend_mutableCopy(stylesCopy, v22, v23, v24, v25, v26);
    styles = v27->_styles;
    v27->_styles = v28;

    v35 = objc_msgSend_mutableCopy(characterCopy, v30, v31, v32, v33, v34);
    sampleCountByCharacter = v27->_sampleCountByCharacter;
    v27->_sampleCountByCharacter = v35;

    v42 = objc_msgSend_copy(lCopy, v37, v38, v39, v40, v41);
    inventoryStorageURL = v27->_inventoryStorageURL;
    v27->_inventoryStorageURL = v42;

    v49 = objc_msgSend_copy(hashesCopy, v44, v45, v46, v47, v48);
    synthesisModelHashes = v27->_synthesisModelHashes;
    v27->_synthesisModelHashes = v49;

    v27->_currentSamplingTimestep = timestep;
    v27->_characterStyleTimestamp = timestamp;
    v56 = objc_msgSend_mutableCopy(characterStylesCopy, v51, v52, v53, v54, v55);
    fastPathCharacterStyles = v27->_fastPathCharacterStyles;
    v27->_fastPathCharacterStyles = v56;

    v27->_characterInventoryVersion = version;
    v63 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v58, v59, v60, v61, v62);
    supportsPersonalization = v27->_supportsPersonalization;
    v27->_supportsPersonalization = v63;

    v65 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v66 = dispatch_queue_create("com.apple.CoreHandwriting.CHSynthesisStyleInventoryQueue", v65);
    workQueue = v27->__workQueue;
    v27->__workQueue = v66;
  }

  return v27;
}

- (CHSynthesisStyleInventory)initWithCoder:(id)coder
{
  v105 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v99.receiver = self;
  v99.super_class = CHSynthesisStyleInventory;
  v5 = [(CHSynthesisStyleInventory *)&v99 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"formatVersion", v8, v9);
  v11 = objc_opt_class();
  v17 = objc_msgSend__formatVersion(v11, v12, v13, v14, v15, v16);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v18, v17, v19, v20, v21);

  if (isEqualToString)
  {
    v23 = MEMORY[0x1E695DFD8];
    v100[0] = objc_opt_class();
    v100[1] = objc_opt_class();
    v100[2] = objc_opt_class();
    v100[3] = objc_opt_class();
    v100[4] = objc_opt_class();
    v100[5] = objc_opt_class();
    v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, v100, 6, v25, v26);
    v32 = objc_msgSend_setWithArray_(v23, v28, v27, v29, v30, v31);

    v36 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v33, v32, @"styleSamples", v34, v35);
    styles = v5->_styles;
    v5->_styles = v36;

    v41 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v38, v32, @"sampleCountByCharacter", v39, v40);
    sampleCountByCharacter = v5->_sampleCountByCharacter;
    v5->_sampleCountByCharacter = v41;

    v43 = objc_opt_class();
    v47 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v44, v43, @"inventoryStorageURL", v45, v46);
    inventoryStorageURL = v5->_inventoryStorageURL;
    v5->_inventoryStorageURL = v47;

    v49 = objc_opt_class();
    v53 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v50, v49, @"synthesisModelHashes", v51, v52);
    synthesisModelHashes = v5->_synthesisModelHashes;
    v5->_synthesisModelHashes = v53;

    if (!v5->_synthesisModelHashes)
    {
      v59 = [CHSynthesisModelHashes alloc];
      v62 = objc_msgSend_initWithLatinHash_zhJaHash_koHash_(v59, v60, 0, 0, 0, v61);
      v63 = v5->_synthesisModelHashes;
      v5->_synthesisModelHashes = v62;
    }

    v5->_currentSamplingTimestep = objc_msgSend_decodeIntegerForKey_(coderCopy, v55, @"currentSamplingTimestep", v56, v57, v58);
    v5->_characterStyleTimestamp = objc_msgSend_decodeIntegerForKey_(coderCopy, v64, @"characterStyleTimestamp", v65, v66, v67);
    v71 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v68, v32, @"fastPathCharacterStyles", v69, v70);
    fastPathCharacterStyles = v5->_fastPathCharacterStyles;
    v5->_fastPathCharacterStyles = v71;

    v5->_characterInventoryVersion = objc_msgSend_decodeIntegerForKey_(coderCopy, v73, @"fastPathCharacterInventoryVersion", v74, v75, v76);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v77 = qword_1EA84DC98;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      characterInventoryVersion = v5->_characterInventoryVersion;
      *buf = 134217984;
      v102 = characterInventoryVersion;
      _os_log_impl(&dword_18366B000, v77, OS_LOG_TYPE_DEBUG, "Fast path character inventory version=%li.", buf, 0xCu);
    }

    if (v5->_characterInventoryVersion > 0)
    {
      goto LABEL_14;
    }

    if (qword_1EA84DC48 == -1)
    {
      v79 = qword_1EA84DC98;
      if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        objc_msgSend_cleanupFastPathCharacters(v5, v81, v82, v83, v84, v85);
        v5->_characterInventoryVersion = 1;
LABEL_14:
        v86 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v87 = dispatch_queue_create("com.apple.CoreHandwriting.CHSynthesisStyleInventoryQueue", v86);
        workQueue = v5->__workQueue;
        v5->__workQueue = v87;

LABEL_15:
        v89 = v5;
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v79 = qword_1EA84DC98;
      if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }
    }

    v80 = v5->_characterInventoryVersion;
    *buf = 134218240;
    v102 = v80;
    v103 = 2048;
    v104 = 1;
    _os_log_impl(&dword_18366B000, v79, OS_LOG_TYPE_DEFAULT, "Fast path character inventory is outdated (version=%li, required=%li). Dropping it.", buf, 0x16u);
    goto LABEL_13;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v90 = qword_1EA84DC98;
  if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
  {
    v91 = objc_opt_class();
    v97 = objc_msgSend__formatVersion(v91, v92, v93, v94, v95, v96);
    *buf = 138412546;
    v102 = v10;
    v103 = 2112;
    v104 = v97;
    _os_log_impl(&dword_18366B000, v90, OS_LOG_TYPE_ERROR, "Archive version not supported: %@. current version: %@", buf, 0x16u);
  }

  v89 = 0;
LABEL_21:

  return v89;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v10 = objc_msgSend__formatVersion(v4, v5, v6, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v10, @"formatVersion", v12, v13);

  objc_msgSend_encodeObject_forKey_(coderCopy, v14, self->_styles, @"styleSamples", v15, v16);
  objc_msgSend_encodeObject_forKey_(coderCopy, v17, self->_sampleCountByCharacter, @"sampleCountByCharacter", v18, v19);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, self->_inventoryStorageURL, @"inventoryStorageURL", v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, self->_synthesisModelHashes, @"synthesisModelHashes", v24, v25);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v26, self->_currentSamplingTimestep, @"currentSamplingTimestep", v27, v28);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v29, self->_characterStyleTimestamp, @"characterStyleTimestamp", v30, v31);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, self->_fastPathCharacterStyles, @"fastPathCharacterStyles", v33, v34);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v35, self->_characterInventoryVersion, @"fastPathCharacterInventoryVersion", v36, v37);
}

- (NSDate)lastSavedDate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_18376FBD4;
  v12 = sub_18376FBE4;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18376FBEC;
  v7[3] = &unk_1E6DDC7F0;
  v7[4] = self;
  v7[5] = &v8;
  objc_msgSend__safelyRunBlock_(self, a2, v7, v2, v3, v4);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)resetCurrentSamplingTimestep
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18376FC70;
  v5[3] = &unk_1E6DDBE10;
  v5[4] = self;
  objc_msgSend__safelyRunBlock_(self, a2, v5, v2, v3, v4);
}

- (void)updateSamplingCountForSample:(id)sample
{
  sampleCopy = sample;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18376FE78;
  v10[3] = &unk_1E6DDC818;
  v10[4] = self;
  v11 = sampleCopy;
  v5 = sampleCopy;
  objc_msgSend__safelyRunBlock_(self, v6, v10, v7, v8, v9);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSynthesisStyleInventory alloc];
  v10 = objc_msgSend_styles(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_sampleCountByCharacter(self, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_inventoryStorageURL(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_synthesisModelHashes(self, v23, v24, v25, v26, v27);
  v34 = objc_msgSend_currentSamplingTimestep(self, v29, v30, v31, v32, v33);
  objc_msgSend_characterStyleTimestamp(self, v35, v36, v37, v38, v39);
  v41 = v40;
  v47 = objc_msgSend_fastPathCharacterStyles(self, v42, v43, v44, v45, v46);
  v53 = objc_msgSend_characterInventoryVersion(self, v48, v49, v50, v51, v52);
  v55 = objc_msgSend_initWithStyles_sampleCountByCharacter_storageURL_synthesisModelHashes_currentSamplingTimestep_characterStyleTimestamp_fastPathCharacterStyles_characterInventoryVersion_(v4, v54, v10, v16, v22, v28, v34, v47, v41, v53);

  return v55;
}

- (BOOL)save
{
  v92 = *MEMORY[0x1E69E9840];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC88;
  v4 = os_signpost_id_generate(v3);

  if (qword_1EA84DC48 == -1)
  {
    v5 = qword_1EA84DC88;
    v6 = v4 - 1;
    if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v5 = qword_1EA84DC88;
    v6 = v4 - 1;
    if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CHStyleInventorySave", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "BEGIN CHStyleInventorySave", buf, 2u);
  }

  *buf = 0;
  v83 = buf;
  v84 = 0x3032000000;
  v85 = sub_18376FBD4;
  v86 = sub_18376FBE4;
  v87 = 0;
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = sub_183770970;
  v81[3] = &unk_1E6DDC7F0;
  v81[4] = self;
  v81[5] = buf;
  objc_msgSend__safelyRunBlock_(self, v8, v81, v9, v10, v11);
  v12 = *(v83 + 5);
  v80 = 0;
  v15 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v13, v12, 1, &v80, v14);
  v21 = v80;
  if (v15)
  {
    v22 = objc_msgSend_inventoryStorageURL(*(v83 + 5), v16, v17, v18, v19, v20);
    v26 = objc_msgSend_writeToURL_atomically_(v15, v23, v22, 1, v24, v25);

    if ((v26 & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v32 = qword_1EA84DC98;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_msgSend_inventoryStorageURL(*(v83 + 5), v33, v34, v35, v36, v37);
        *v88 = 138412290;
        v89 = v38;
        _os_log_impl(&dword_18366B000, v32, OS_LOG_TYPE_ERROR, "Could not write inventory to URL: %@", v88, 0xCu);
      }
    }

    v39 = objc_msgSend_inventoryStorageURL(*(v83 + 5), v27, v28, v29, v30, v31);
    v79 = v21;
    v44 = objc_msgSend_checkResourceIsReachableAndReturnError_(v39, v40, &v79, v41, v42, v43);
    v45 = v79;

    v51 = v45;
    if ((v44 & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v52 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v58 = objc_msgSend_inventoryStorageURL(*(v83 + 5), v53, v54, v55, v56, v57);
        *v88 = 138412546;
        v89 = v58;
        v90 = 2112;
        v91 = v45;
        _os_log_impl(&dword_18366B000, v52, OS_LOG_TYPE_ERROR, "Error inventory file not reachable at url: %@, error %@", v88, 0x16u);
      }
    }

    v59 = objc_msgSend_inventoryStorageURL(*(v83 + 5), v46, v47, v48, v49, v50);
    v78 = v45;
    v64 = objc_msgSend_checkResourceIsReachableAndReturnError_(v59, v60, &v78, v61, v62, v63);
    v65 = v78;

    if ((v64 & 1) == 0)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v66 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
      {
        v72 = objc_msgSend_inventoryStorageURL(*(v83 + 5), v67, v68, v69, v70, v71);
        *v88 = 138412546;
        v89 = v72;
        v90 = 2112;
        v91 = v65;
        _os_log_impl(&dword_18366B000, v66, OS_LOG_TYPE_FAULT, "Error inventory file not reachable at url: %@, error %@", v88, 0x16u);
      }
    }

    if (qword_1EA84DC48 == -1)
    {
      v73 = qword_1EA84DC88;
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_32;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v73 = qword_1EA84DC88;
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_32:
        if (os_signpost_enabled(v73))
        {
          *v88 = 0;
          _os_signpost_emit_with_name_impl(&dword_18366B000, v73, OS_SIGNPOST_INTERVAL_END, v4, "CHStyleInventorySave", "", v88, 2u);
        }
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v74 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *v88 = 0;
      _os_log_impl(&dword_18366B000, v74, OS_LOG_TYPE_DEFAULT, "END CHStyleInventorySave", v88, 2u);
    }

    v21 = v65;
    goto LABEL_52;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v75 = qword_1EA84DC98;
  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
  {
    *v88 = 138412290;
    v89 = v21;
    _os_log_impl(&dword_18366B000, v75, OS_LOG_TYPE_ERROR, "Could not encode inventory. error: %@", v88, 0xCu);
  }

  if (qword_1EA84DC48 == -1)
  {
    v76 = qword_1EA84DC88;
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_45;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v76 = qword_1EA84DC88;
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_45:
      if (os_signpost_enabled(v76))
      {
        *v88 = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v76, OS_SIGNPOST_INTERVAL_END, v4, "CHStyleInventorySave", "", v88, 2u);
      }
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v74 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    *v88 = 0;
    _os_log_impl(&dword_18366B000, v74, OS_LOG_TYPE_DEFAULT, "END CHStyleInventorySave", v88, 2u);
  }

  v26 = 0;
LABEL_52:

  _Block_object_dispose(buf, 8);
  return v26;
}

- (void)saveIfNeeded
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_183770A28;
  v5[3] = &unk_1E6DDBE10;
  v5[4] = self;
  objc_msgSend__safelyRunBlock_(self, a2, v5, v2, v3, v4);
}

- (BOOL)containsSampleWithTranscription:(id)transcription strokeIdentifiers:(id)identifiers
{
  transcriptionCopy = transcription;
  identifiersCopy = identifiers;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_183770CB8;
  v15[3] = &unk_1E6DDD968;
  v15[4] = self;
  v16 = identifiersCopy;
  v17 = transcriptionCopy;
  v18 = &v19;
  v8 = transcriptionCopy;
  v9 = identifiersCopy;
  objc_msgSend__safelyRunBlock_(self, v10, v15, v11, v12, v13);
  LOBYTE(self) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return self;
}

- (BOOL)containsSampleWithStrokeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_183770E7C;
  v11[3] = &unk_1E6DDC840;
  v11[4] = self;
  v12 = identifiersCopy;
  v13 = &v14;
  v5 = identifiersCopy;
  objc_msgSend__safelyRunBlock_(self, v6, v11, v7, v8, v9);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (void)removeSamplesContainingStrokeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (objc_msgSend_count(identifiersCopy, v5, v6, v7, v8, v9))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_183770FC8;
    v14[3] = &unk_1E6DDC818;
    v14[4] = self;
    v15 = identifiersCopy;
    objc_msgSend__safelyRunBlock_(self, v10, v14, v11, v12, v13);
  }
}

- (void)reset
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC98;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEFAULT, "Inventory data ingestion: Resetting the style inventory", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_183771244;
  v8[3] = &unk_1E6DDBE10;
  v8[4] = self;
  objc_msgSend__safelyRunBlock_(self, v4, v8, v5, v6, v7);
}

- (void)_unsafeAddSample:(id)sample
{
  v155 = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC98;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_transcription(sampleCopy, v6, v7, v8, v9, v10);
    v151 = 138739971;
    v152 = v11;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEFAULT, "Inventory data ingestion: Initiating style sample addition with string: %{sensitive}@", &v151, 0xCu);
  }

  if (!sampleCopy)
  {
    if (qword_1EA84DC48 == -1)
    {
      v33 = qword_1EA84DC98;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v33 = qword_1EA84DC98;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }
    }

    LOWORD(v151) = 0;
    _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: rejecting nil sample", &v151, 2u);
    goto LABEL_20;
  }

  v17 = objc_msgSend_transcription(sampleCopy, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_strokeIdentifiers(sampleCopy, v18, v19, v20, v21, v22);
  v27 = objc_msgSend_containsSampleWithTranscription_strokeIdentifiers_(self, v24, v17, v23, v25, v26);

  if (!v27)
  {
    v46 = objc_msgSend_strokeIdentifiers(sampleCopy, v28, v29, v30, v31, v32);
    objc_msgSend_removeSamplesContainingStrokeIdentifiers_(self, v47, v46, v48, v49, v50);

    v56 = objc_msgSend_transcription(sampleCopy, v51, v52, v53, v54, v55);
    v62 = objc_msgSend_drawing(sampleCopy, v57, v58, v59, v60, v61);
    v68 = objc_msgSend_script(sampleCopy, v63, v64, v65, v66, v67);
    v74 = objc_msgSend_strokeIdentifiers(sampleCopy, v69, v70, v71, v72, v73);
    v33 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v75, v56, v62, v68, v74);

    v81 = objc_msgSend_currentSamplingTimestep(self, v76, v77, v78, v79, v80);
    objc_msgSend_setCreationTimestep_(v33, v82, v81, v83, v84, v85);
    v91 = objc_msgSend_styles(self, v86, v87, v88, v89, v90);
    v97 = objc_msgSend_strokeIdentifiers(v33, v92, v93, v94, v95, v96);
    objc_msgSend_setObject_forKeyedSubscript_(v91, v98, v33, v97, v99, v100);

    objc_msgSend__unsafeUpdateCharacterCoverageWithAddedSample_(self, v101, v33, v102, v103, v104);
    objc_msgSend_setHasInventoryChanged_(self, v105, 1, v106, v107, v108);
    if (qword_1EA84DC48 == -1)
    {
      v109 = qword_1EA84DC98;
      if (!os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v109 = qword_1EA84DC98;
      if (!os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:

        if (qword_1EA84DC48 == -1)
        {
          v116 = qword_1EA84DC98;
          if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
          {
LABEL_19:

            goto LABEL_20;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v116 = qword_1EA84DC98;
          if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }
        }

        v122 = objc_msgSend_characterCoverage(self, v117, v118, v119, v120, v121);
        v128 = objc_msgSend_count(v122, v123, v124, v125, v126, v127);
        v134 = objc_msgSend_characterCoverage(self, v129, v130, v131, v132, v133);
        v140 = objc_msgSend_allObjects(v134, v135, v136, v137, v138, v139);
        v145 = objc_msgSend_sortedArrayUsingSelector_(v140, v141, sel_compare_, v142, v143, v144);
        v150 = objc_msgSend_componentsJoinedByString_(v145, v146, @",", v147, v148, v149);
        v151 = 134218242;
        v152 = v128;
        v153 = 2112;
        v154 = v150;
        _os_log_impl(&dword_18366B000, v116, OS_LOG_TYPE_DEFAULT, "Inventory Style character coverage (len %ld): %@", &v151, 0x16u);

        goto LABEL_19;
      }
    }

    v115 = objc_msgSend_transcription(v33, v110, v111, v112, v113, v114);
    v151 = 138739971;
    v152 = v115;
    _os_log_impl(&dword_18366B000, v109, OS_LOG_TYPE_DEFAULT, "Inventory data ingestion: Adding style sample with string: %{sensitive}@", &v151, 0xCu);

    goto LABEL_16;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v33 = qword_1EA84DC98;
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  v33 = qword_1EA84DC98;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
LABEL_9:
    v39 = objc_msgSend_transcription(sampleCopy, v34, v35, v36, v37, v38);
    v45 = objc_msgSend_strokeIdentifiers(sampleCopy, v40, v41, v42, v43, v44);
    v151 = 138740227;
    v152 = v39;
    v153 = 2112;
    v154 = v45;
    _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: preventing style sample from being added multiple times since it already exists (string: %{sensitive}@, stroke identifiers: %@)", &v151, 0x16u);
  }

LABEL_20:
}

- (void)addSample:(id)sample
{
  sampleCopy = sample;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1837719C8;
  v10[3] = &unk_1E6DDC818;
  v10[4] = self;
  v11 = sampleCopy;
  v5 = sampleCopy;
  objc_msgSend__safelyRunBlock_(self, v6, v10, v7, v8, v9);
}

- (void)addSamplesWithArray:(id)array
{
  arrayCopy = array;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_183771A80;
  v10[3] = &unk_1E6DDC818;
  v11 = arrayCopy;
  selfCopy = self;
  v5 = arrayCopy;
  objc_msgSend__safelyRunBlock_(self, v6, v10, v7, v8, v9);
}

- (void)removeSample:(id)sample
{
  sampleCopy = sample;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_183771C40;
  v10[3] = &unk_1E6DDC818;
  v10[4] = self;
  v11 = sampleCopy;
  v5 = sampleCopy;
  objc_msgSend__safelyRunBlock_(self, v6, v10, v7, v8, v9);
}

- (void)_unsafeRemoveSample:(id)sample
{
  v56 = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  objc_msgSend__unsafeUpdateCharacterCoverageWithRemovedSample_(self, v5, sampleCopy, v6, v7, v8);
  v14 = objc_msgSend_styles(self, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_strokeIdentifiers(sampleCopy, v15, v16, v17, v18, v19);
  objc_msgSend_removeObjectForKey_(v14, v21, v20, v22, v23, v24);

  v30 = objc_msgSend_supportsPersonalization(self, v25, v26, v27, v28, v29);
  v31 = MEMORY[0x1E696AD98];
  v37 = objc_msgSend_script(sampleCopy, v32, v33, v34, v35, v36);
  v42 = objc_msgSend_numberWithInteger_(v31, v38, v37, v39, v40, v41);
  objc_msgSend_removeObjectForKey_(v30, v43, v42, v44, v45, v46);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v47 = qword_1EA84DC98;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v53 = objc_msgSend_transcription(sampleCopy, v48, v49, v50, v51, v52);
    v54 = 138739971;
    v55 = v53;
    _os_log_impl(&dword_18366B000, v47, OS_LOG_TYPE_DEFAULT, "Inventory data ingestion: removing style sample with string: %{sensitive}@", &v54, 0xCu);
  }
}

- (id)characterCoverage
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_18376FBD4;
  v12 = sub_18376FBE4;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_183771F58;
  v7[3] = &unk_1E6DDC7F0;
  v7[4] = self;
  v7[5] = &v8;
  objc_msgSend__safelyRunBlock_(self, a2, v7, v2, v3, v4);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)_unsafeUpdateCharacterCoverageWithAddedSample:(id)sample
{
  v73 = *MEMORY[0x1E69E9840];
  objc_msgSend_characterCoverage(sample, a2, sample, v3, v4, v5);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  obj = v69 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v68, v72, 16, v8);
  if (v14)
  {
    v15 = *v69;
    do
    {
      v16 = 0;
      do
      {
        if (*v69 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v68 + 1) + 8 * v16);
        v18 = objc_msgSend_sampleCountByCharacter(self, v9, v10, v11, v12, v13);
        v23 = objc_msgSend_objectForKey_(v18, v19, v17, v20, v21, v22);
        v24 = v23 == 0;

        if (v24)
        {
          v30 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v25, 0, v27, v28, v29);
          v36 = objc_msgSend_sampleCountByCharacter(self, v31, v32, v33, v34, v35);
          objc_msgSend_setObject_forKeyedSubscript_(v36, v37, v30, v17, v38, v39);
        }

        v40 = MEMORY[0x1E696AD98];
        v41 = objc_msgSend_sampleCountByCharacter(self, v25, v26, v27, v28, v29);
        v46 = objc_msgSend_objectForKeyedSubscript_(v41, v42, v17, v43, v44, v45);
        v52 = objc_msgSend_integerValue(v46, v47, v48, v49, v50, v51);
        v57 = objc_msgSend_numberWithInteger_(v40, v53, v52 + 1, v54, v55, v56);
        v63 = objc_msgSend_sampleCountByCharacter(self, v58, v59, v60, v61, v62);
        objc_msgSend_setObject_forKeyedSubscript_(v63, v64, v57, v17, v65, v66);

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v68, v72, 16, v13);
    }

    while (v14);
  }
}

- (void)_unsafeUpdateCharacterCoverageWithRemovedSample:(id)sample
{
  v173 = *MEMORY[0x1E69E9840];
  objc_msgSend_characterCoverage(sample, a2, sample, v3, v4, v5);
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  obj = v165 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v164, v172, 16, v8);
  if (v14)
  {
    v15 = *v165;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v165 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v164 + 1) + 8 * i);
        v18 = objc_msgSend_sampleCountByCharacter(self, v9, v10, v11, v12, v13);
        v23 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v17, v20, v21, v22);
        v24 = v23 == 0;

        if (v24)
        {
          if (qword_1EA84DC48 == -1)
          {
            v30 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_10;
            }
          }

          else
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            v30 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
LABEL_10:
              v36 = objc_msgSend_sampleCountByCharacter(self, v31, v32, v33, v34, v35);
              *buf = 138412546;
              v169 = v17;
              v170 = 2112;
              v171 = v36;
              _os_log_impl(&dword_18366B000, v30, OS_LOG_TYPE_ERROR, "Character %@ not is not present in the sampleCountByCharacter dictionary %@", buf, 0x16u);
            }
          }
        }

        v37 = objc_msgSend_sampleCountByCharacter(self, v25, v26, v27, v28, v29);
        v42 = objc_msgSend_objectForKeyedSubscript_(v37, v38, v17, v39, v40, v41);
        v43 = v42 == 0;

        if (!v43)
        {
          goto LABEL_17;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v49 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_16;
          }

LABEL_15:
          v55 = objc_msgSend_sampleCountByCharacter(self, v50, v51, v52, v53, v54);
          *buf = 138412546;
          v169 = v17;
          v170 = 2112;
          v171 = v55;
          _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_FAULT, "Character %@ not is not present in the sampleCountByCharacter dictionary %@", buf, 0x16u);

          goto LABEL_16;
        }

        v49 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_15;
        }

LABEL_16:

LABEL_17:
        v56 = MEMORY[0x1E696AD98];
        v57 = objc_msgSend_sampleCountByCharacter(self, v44, v45, v46, v47, v48);
        v62 = objc_msgSend_objectForKeyedSubscript_(v57, v58, v17, v59, v60, v61);
        v68 = objc_msgSend_integerValue(v62, v63, v64, v65, v66, v67);
        v73 = objc_msgSend_numberWithInteger_(v56, v69, v68 - 1, v70, v71, v72);
        v79 = objc_msgSend_sampleCountByCharacter(self, v74, v75, v76, v77, v78);
        objc_msgSend_setObject_forKeyedSubscript_(v79, v80, v73, v17, v81, v82);

        v88 = objc_msgSend_sampleCountByCharacter(self, v83, v84, v85, v86, v87);
        v93 = objc_msgSend_objectForKeyedSubscript_(v88, v89, v17, v90, v91, v92);
        v99 = objc_msgSend_integerValue(v93, v94, v95, v96, v97, v98);

        if (v99 >= 0)
        {
          goto LABEL_22;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v105 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

LABEL_20:
          v111 = objc_msgSend_sampleCountByCharacter(self, v106, v107, v108, v109, v110);
          v116 = objc_msgSend_objectForKeyedSubscript_(v111, v112, v17, v113, v114, v115);
          *buf = 138412546;
          v169 = v17;
          v170 = 2112;
          v171 = v116;
          _os_log_impl(&dword_18366B000, v105, OS_LOG_TYPE_ERROR, "Sample count for character %@ is negative %@", buf, 0x16u);

          goto LABEL_21;
        }

        v105 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

LABEL_21:

LABEL_22:
        v117 = objc_msgSend_sampleCountByCharacter(self, v100, v101, v102, v103, v104);
        v122 = objc_msgSend_objectForKeyedSubscript_(v117, v118, v17, v119, v120, v121);
        v128 = objc_msgSend_integerValue(v122, v123, v124, v125, v126, v127);

        if (v128 >= 0)
        {
          goto LABEL_27;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v134 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_26;
          }

LABEL_25:
          v140 = objc_msgSend_sampleCountByCharacter(self, v135, v136, v137, v138, v139);
          v145 = objc_msgSend_objectForKeyedSubscript_(v140, v141, v17, v142, v143, v144);
          *buf = 138412546;
          v169 = v17;
          v170 = 2112;
          v171 = v145;
          _os_log_impl(&dword_18366B000, v134, OS_LOG_TYPE_FAULT, "Sample count for character %@ is negative %@", buf, 0x16u);

          goto LABEL_26;
        }

        v134 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_25;
        }

LABEL_26:

LABEL_27:
        v146 = objc_msgSend_sampleCountByCharacter(self, v129, v130, v131, v132, v133);
        v151 = objc_msgSend_objectForKeyedSubscript_(v146, v147, v17, v148, v149, v150);
        v157 = objc_msgSend_integerValue(v151, v152, v153, v154, v155, v156) == 0;

        if (v157)
        {
          v158 = objc_msgSend_sampleCountByCharacter(self, v9, v10, v11, v12, v13);
          objc_msgSend_removeObjectForKey_(v158, v159, v17, v160, v161, v162);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v164, v172, 16, v13);
    }

    while (v14);
  }
}

- (BOOL)_unsafeHasLowSampleCountForCharacters:(id)characters minimumSampleCount:(int64_t)count
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  charactersCopy = characters;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(charactersCopy, v7, &v32, v36, 16, v8);
  if (v14)
  {
    v15 = *v33;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(charactersCopy);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = objc_msgSend_sampleCountByCharacter(self, v9, v10, v11, v12, v13, v32);
        v23 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v17, v20, v21, v22);
        v29 = objc_msgSend_integerValue(v23, v24, v25, v26, v27, v28) > count;

        if (!v29)
        {
          v30 = 1;
          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(charactersCopy, v9, &v32, v36, 16, v13);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0;
LABEL_11:

  return v30;
}

- (BOOL)isTokenAcceptable:(id)acceptable script:(int64_t)script
{
  v95 = *MEMORY[0x1E69E9840];
  acceptableCopy = acceptable;
  v11 = acceptableCopy;
  if (script == 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = 3;
  }

  if (script == 1)
  {
    v13 = (objc_msgSend_properties(acceptableCopy, v6, v7, v8, v9, v10) >> 2) & 1;
  }

  else
  {
    LODWORD(v13) = 1;
  }

  v14 = objc_msgSend_string(v11, v6, v7, v8, v9, v10);
  isSimpleMathPattern = objc_msgSend_isSimpleMathPattern_(CHSynthesisStyleInventory, v15, v14, v16, v17, v18);

  if ((v13 | isSimpleMathPattern))
  {
    v25 = objc_msgSend_string(v11, v20, v21, v22, v23, v24);
    v31 = objc_msgSend_length(v25, v26, v27, v28, v29, v30);

    if (v31 >= v12)
    {
      objc_msgSend_recognitionScore(v11, v32, v33, v34, v35, v36);
      if (v69 >= 0.850000024)
      {
        if (objc_msgSend_isTopOriginal(v11, v64, v65, v66, v67, v68))
        {
          v62 = 1;
          goto LABEL_18;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v37 = qword_1EA84DC98;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v88 = objc_msgSend_string(v11, v83, v84, v85, v86, v87);
          v89 = 138739971;
          v90 = v88;
          _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: rejecting token it has been post processed. token string: %{sensitive}@", &v89, 0xCu);
        }
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v37 = qword_1EA84DC98;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          objc_msgSend_recognitionScore(v11, v70, v71, v72, v73, v74);
          v76 = v75;
          v82 = objc_msgSend_string(v11, v77, v78, v79, v80, v81);
          v89 = 134218499;
          v90 = v76;
          v91 = 2048;
          v92 = 0x3FEB333340000000;
          v93 = 2117;
          v94 = v82;
          _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: rejecting token due to recognition score (%2.2f) smaller than threshold %2.2f. token string: %{sensitive}@", &v89, 0x20u);
        }
      }
    }

    else
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v37 = qword_1EA84DC98;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v43 = objc_msgSend_string(v11, v38, v39, v40, v41, v42);
        v49 = objc_msgSend_length(v43, v44, v45, v46, v47, v48);
        v55 = objc_msgSend_string(v11, v50, v51, v52, v53, v54);
        v89 = 134218499;
        v90 = v49;
        v91 = 2048;
        v92 = v12;
        v93 = 2117;
        v94 = v55;
        _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: rejecting token due to length (%ld) smaller than %ld. token string: %{sensitive}@", &v89, 0x20u);
      }
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v37 = qword_1EA84DC98;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v61 = objc_msgSend_string(v11, v56, v57, v58, v59, v60);
      v89 = 138739971;
      v90 = v61;
      _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_DEBUG, "Inventory data ingestion: rejecting token as it is out of lexicon and not a accepted math pattern. token string: %{sensitive}@", &v89, 0xCu);
    }
  }

  v62 = 0;
LABEL_18:

  return v62;
}

- (void)addSamplesIfNeededWithTokenizedTextResult:(id)result drawing:(id)drawing script:(int64_t)script strokeIdentifiers:(id)identifiers
{
  resultCopy = result;
  drawingCopy = drawing;
  identifiersCopy = identifiers;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_183773048;
  v20[3] = &unk_1E6DDD9E0;
  v21 = resultCopy;
  v22 = identifiersCopy;
  v24 = drawingCopy;
  scriptCopy = script;
  selfCopy = self;
  v13 = drawingCopy;
  v14 = identifiersCopy;
  v15 = resultCopy;
  objc_msgSend__safelyRunBlock_(self, v16, v20, v17, v18, v19);
}

+ (BOOL)isSimpleMathPattern:(id)pattern
{
  patternCopy = pattern;
  v9 = objc_msgSend__mathCharacterSet(CHSynthesisStyleInventory, v4, v5, v6, v7, v8);
  v10 = sub_1837A4F0C(patternCopy, v9);

  return v10;
}

- (void)addSamplesIfNeededWithTokenizedMathResult:(id)result drawing:(id)drawing strokeIdentifiers:(id)identifiers
{
  resultCopy = result;
  drawingCopy = drawing;
  identifiersCopy = identifiers;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_183773888;
  v18[3] = &unk_1E6DDC868;
  v19 = resultCopy;
  v20 = identifiersCopy;
  selfCopy = self;
  v22 = drawingCopy;
  v11 = drawingCopy;
  v12 = identifiersCopy;
  v13 = resultCopy;
  objc_msgSend__safelyRunBlock_(self, v14, v18, v15, v16, v17);
}

- (void)updateStylePredictionsWithSamplesToUpdate:(id)update toRemove:(id)remove
{
  updateCopy = update;
  removeCopy = remove;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_183773DD8;
  v14[3] = &unk_1E6DDC890;
  v15 = updateCopy;
  selfCopy = self;
  v17 = removeCopy;
  v8 = removeCopy;
  v9 = updateCopy;
  objc_msgSend__safelyRunBlock_(self, v10, v14, v11, v12, v13);
}

- (id)samplesWithoutStylePrediction
{
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_183774194;
  v16[3] = &unk_1E6DDC818;
  v16[4] = self;
  v8 = v7;
  v17 = v8;
  objc_msgSend__safelyRunBlock_(self, v9, v16, v10, v11, v12);
  v13 = v17;
  v14 = v8;

  return v8;
}

- (id)_unsafeSamplesWithStylePrediction
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2, v3, v4, v5);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = objc_msgSend_styles(self, v8, v9, v10, v11, v12, 0);
  v19 = objc_msgSend_allValues(v13, v14, v15, v16, v17, v18);

  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v38, v42, 16, v21);
  if (v27)
  {
    v28 = *v39;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v19);
        }

        v30 = *(*(&v38 + 1) + 8 * i);
        if (objc_msgSend_hasEmbeddingVector(v30, v22, v23, v24, v25, v26))
        {
          objc_msgSend_addObject_(v7, v22, v30, v24, v25, v26);
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v38, v42, 16, v26);
    }

    while (v27);
  }

  v36 = objc_msgSend_copy(v7, v31, v32, v33, v34, v35);

  return v36;
}

- (BOOL)needsStylePredictionUpdateForScript:(int64_t)script
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_183774610;
  v8[3] = &unk_1E6DDDB20;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = script;
  objc_msgSend__safelyRunBlock_(self, a2, v8, v3, v4, v5);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

+ (id)normalizeAndAlignStyleSamples:(id)samples
{
  v101 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  v4 = MEMORY[0x1E695DF70];
  v10 = objc_msgSend_count(samplesCopy, v5, v6, v7, v8, v9, samplesCopy);
  v15 = objc_msgSend_arrayWithCapacity_(v4, v11, v10, v12, v13, v14);
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = samplesCopy;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v96, v100, 16, v17);
  if (v23)
  {
    v24 = *v97;
    MaxX = 0.0;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v97 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v96 + 1) + 8 * i);
        v28 = objc_msgSend_drawing(v27, v18, v19, v20, v21, v22);
        v34 = objc_msgSend_transcription(v27, v29, v30, v31, v32, v33);
        v40 = objc_msgSend_script(v27, v35, v36, v37, v38, v39);
        v43 = objc_msgSend_normalizeDrawing_transcription_script_(CHSynthesisStyleSample, v41, v28, v34, v40, v42);

        v49 = objc_msgSend_script(v27, v44, v45, v46, v47, v48);
        if (v49 < 2)
        {
          goto LABEL_9;
        }

        if (v49 != 2)
        {
          v55 = 0.0;
          if (v49 != 3)
          {
            goto LABEL_11;
          }

LABEL_9:
          objc_msgSend_normalizationTextHeight(CHSynthesisStyleSample, v50, v51, v52, v53, v54);
          v55 = v56;
          goto LABEL_11;
        }

        objc_msgSend_normalizationTextHeight(CHSynthesisStyleSample, v50, v51, v52, v53, v54);
        v55 = v57 / 3.0;
LABEL_11:
        objc_msgSend_bounds(v43, v50, v51, v52, v53, v54);
        MinX = CGRectGetMinX(v103);
        v64 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v43, v59, v60, v61, v62, v63, MaxX + v55 - MinX, 0.0, 1.0);

        v70 = objc_msgSend_transcription(v27, v65, v66, v67, v68, v69);
        v76 = objc_msgSend_script(v27, v71, v72, v73, v74, v75);
        v82 = objc_msgSend_strokeIdentifiers(v27, v77, v78, v79, v80, v81);
        v84 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v83, v70, v64, v76, v82);
        objc_msgSend_addObject_(v15, v85, v84, v86, v87, v88);

        objc_msgSend_bounds(v64, v89, v90, v91, v92, v93);
        MaxX = CGRectGetMaxX(v104);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v96, v100, 16, v22);
    }

    while (v23);
  }

  return v15;
}

+ (id)concatenateStyleSamples:(id)samples
{
  v134 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  if (objc_msgSend_count(samplesCopy, v3, v4, v5, v6, v7))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v8 = qword_1EA84DC98;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v133 = objc_msgSend_count(samplesCopy, v9, v10, v11, v12, v13);
      _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_DEFAULT, "Style Sampling: concatenating %lu samples", buf, 0xCu);
    }

    v14 = objc_alloc_init(CHDrawing);
    v20 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17, v18, v19);
    v26 = objc_msgSend_set(MEMORY[0x1E695DFA8], v21, v22, v23, v24, v25);
    v32 = objc_msgSend_firstObject(samplesCopy, v27, v28, v29, v30, v31);
    v38 = objc_msgSend_script(v32, v33, v34, v35, v36, v37);

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    obj = samplesCopy;
    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v127, v131, 16, v40);
    if (v46)
    {
      v47 = *v128;
      do
      {
        v48 = 0;
        do
        {
          if (*v128 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v127 + 1) + 8 * v48);
          v50 = objc_msgSend_drawing(v49, v41, v42, v43, v44, v45);
          v56 = objc_msgSend_strokeCount(v50, v51, v52, v53, v54, v55) == 0;

          if (v56)
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v62 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v62, OS_LOG_TYPE_ERROR, "Style Sampling: Concatenating style samples: Drawing must have > 0 strokes", buf, 2u);
            }
          }

          v63 = objc_msgSend_drawing(v49, v57, v58, v59, v60, v61);
          v69 = objc_msgSend_strokeCount(v63, v64, v65, v66, v67, v68) == 0;

          if (v69)
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v75 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v75, OS_LOG_TYPE_FAULT, "Style Sampling: Concatenating style samples: Drawing must have > 0 strokes", buf, 2u);
            }
          }

          v76 = objc_msgSend_drawing(v49, v70, v71, v72, v73, v74);
          objc_msgSend_appendDrawing_(v14, v77, v76, v78, v79, v80);

          v86 = objc_msgSend_transcription(v49, v81, v82, v83, v84, v85);
          objc_msgSend_addObject_(v20, v87, v86, v88, v89, v90);

          v96 = objc_msgSend_strokeIdentifiers(v49, v91, v92, v93, v94, v95);
          objc_msgSend_unionSet_(v26, v97, v96, v98, v99, v100);

          if (v38 != objc_msgSend_script(v49, v101, v102, v103, v104, v105))
          {
            v38 = 0;
          }

          ++v48;
        }

        while (v46 != v48);
        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v127, v131, 16, v45);
      }

      while (v46);
    }

    if (v38 == 2)
    {
      objc_msgSend_componentsJoinedByString_(v20, v106, &stru_1EF1C0318, v107, v108, v109);
    }

    else
    {
      objc_msgSend_componentsJoinedByString_(v20, v106, @" ", v107, v108, v109);
    }
    v110 = ;
    v115 = objc_msgSend_objectAtIndexedSubscript_(obj, v111, 0, v112, v113, v114);
    v121 = objc_msgSend_script(v115, v116, v117, v118, v119, v120);

    v123 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v122, v110, v14, v121, v26);
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v14 = qword_1EA84DC98;
    if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, &v14->super, OS_LOG_TYPE_DEFAULT, "Style sampling: Concatenating Style Samples: Empty array is passed!", buf, 2u);
    }

    v123 = 0;
  }

  return v123;
}

+ (void)decomposeSamples:(id)samples drawings:(id *)drawings contents:(id *)contents
{
  samplesCopy = samples;
  v8 = MEMORY[0x1E695DF70];
  v14 = objc_msgSend_count(samplesCopy, v9, v10, v11, v12, v13);
  v19 = objc_msgSend_arrayWithCapacity_(v8, v15, v14, v16, v17, v18);
  v20 = MEMORY[0x1E695DF70];
  v26 = objc_msgSend_count(samplesCopy, v21, v22, v23, v24, v25);
  v31 = objc_msgSend_arrayWithCapacity_(v20, v27, v26, v28, v29, v30);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_183775228;
  v40[3] = &unk_1E6DDD990;
  v32 = v19;
  v41 = v32;
  v33 = v31;
  v42 = v33;
  objc_msgSend_enumerateObjectsUsingBlock_(samplesCopy, v34, v40, v35, v36, v37);
  if (drawings)
  {
    if (samplesCopy)
    {
      v38 = v32;
    }

    else
    {
      v38 = 0;
    }

    *drawings = v38;
  }

  if (contents)
  {
    if (samplesCopy)
    {
      v39 = v33;
    }

    else
    {
      v39 = 0;
    }

    *contents = v39;
  }
}

+ (id)styleSamplesWithDrawings:(id)drawings transcriptions:(id)transcriptions
{
  drawingsCopy = drawings;
  transcriptionsCopy = transcriptions;
  v7 = MEMORY[0x1E695DF70];
  v13 = objc_msgSend_count(drawingsCopy, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_arrayWithCapacity_(v7, v14, v13, v15, v16, v17);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_183775418;
  v28[3] = &unk_1E6DDDA30;
  v19 = transcriptionsCopy;
  v29 = v19;
  v20 = v18;
  v30 = v20;
  objc_msgSend_enumerateObjectsUsingBlock_(drawingsCopy, v21, v28, v22, v23, v24);
  v25 = v30;
  v26 = v20;

  return v20;
}

+ (id)concatenatedSampleWithDrawings:(id)drawings transcriptions:(id)transcriptions
{
  v6 = objc_msgSend_styleSamplesWithDrawings_transcriptions_(CHSynthesisStyleInventory, a2, drawings, transcriptions, v4, v5);
  v11 = objc_msgSend_concatenateStyleSamples_(CHSynthesisStyleInventory, v7, v6, v8, v9, v10);

  return v11;
}

- (id)nearestInventorySamplesToSample:(id)sample prompt:(id)prompt maxStyleSampleLength:(int64_t)length
{
  v72 = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  promptCopy = prompt;
  v61 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13, v14);
  v20 = objc_msgSend_script(sampleCopy, v15, v16, v17, v18, v19);
  v24 = objc_msgSend_characterCoverageWithString_script_(CHSynthesisStyleSample, v21, promptCopy, v20, v22, v23);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v25 = qword_1EA84DC98;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v31 = objc_msgSend_transcription(sampleCopy, v26, v27, v28, v29, v30);
    v37 = objc_msgSend_transcription(sampleCopy, v32, v33, v34, v35, v36);
    *buf = 138740227;
    v69 = v31;
    v70 = 2048;
    v71 = objc_msgSend_length(v37, v38, v39, v40, v41, v42);
    _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_DEFAULT, "Style Sampling: Get nearest neighbors in style from the inventory for input style sample: %{sensitive}@ with length: %lu", buf, 0x16u);
  }

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = sub_183775904;
  v62[3] = &unk_1E6DDDA58;
  v62[4] = self;
  v43 = sampleCopy;
  v63 = v43;
  v44 = v24;
  v64 = v44;
  lengthCopy = length;
  v45 = promptCopy;
  v65 = v45;
  v46 = v61;
  v66 = v46;
  objc_msgSend__safelyRunBlock_(self, v47, v62, v48, v49, v50);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v51 = qword_1EA84DC98;
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v51 = qword_1EA84DC98;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
LABEL_7:
    v57 = objc_msgSend_count(v46, v52, v53, v54, v55, v56);
    *buf = 134217984;
    v69 = v57;
    _os_log_impl(&dword_18366B000, v51, OS_LOG_TYPE_DEFAULT, "Style Sampling: Found %lu nearest neighbors in style from the inventory", buf, 0xCu);
  }

LABEL_8:

  v58 = v66;
  v59 = v46;

  return v46;
}

- (id)highestCharacterCoverageStyleSampleForPrompt:(id)prompt script:(int64_t)script styles:(id)styles
{
  v76 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  stylesCopy = styles;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC98;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    *&buf[4] = promptCopy;
    *&buf[12] = 2048;
    *&buf[14] = objc_msgSend_length(promptCopy, v11, v12, v13, v14, v15);
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_DEFAULT, "Style Sampling: get highest character coverage style sample for prompt: %{sensitive}@ with length: %lu", buf, 0x16u);
  }

  v19 = objc_msgSend_characterCoverageWithString_script_(CHSynthesisStyleSample, v16, promptCopy, script, v17, v18);
  v25 = objc_msgSend_characterCoverage(self, v20, v21, v22, v23, v24);
  v30 = objc_msgSend_intersectsSet_(v19, v26, v25, v27, v28, v29);

  if (v30)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v73 = sub_18376FBD4;
    v74 = sub_18376FBE4;
    v75 = 0;
    v60 = MEMORY[0x1E69E9820];
    v61 = 3221225472;
    v62 = sub_18377686C;
    v63 = &unk_1E6DDC8B8;
    v64 = stylesCopy;
    scriptCopy = script;
    v65 = promptCopy;
    v66 = v19;
    v67 = buf;
    objc_msgSend__safelyRunBlock_(self, v31, &v60, v32, v33, v34);
    if (qword_1EA84DC48 == -1)
    {
      v35 = qword_1EA84DC98;
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        v53 = *(*&buf[8] + 40);
        if (v53)
        {
          v54 = objc_msgSend_copy(v53, v48, v49, v50, v51, v52);
          v69 = v54;
          v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v55, &v69, 1, v56, v57);
        }

        else
        {
          v58 = 0;
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v35 = qword_1EA84DC98;
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    v41 = objc_msgSend_transcription(*(*&buf[8] + 40), v36, v37, v38, v39, v40, v60, v61, v62, v63, v64, v65);
    v47 = objc_msgSend_length(v41, v42, v43, v44, v45, v46);
    *v70 = 134217984;
    v71 = v47;
    _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_DEFAULT, "Style Sampling: found highest character coverage style sample with length: %lu", v70, 0xCu);

    goto LABEL_9;
  }

  v58 = 0;
LABEL_14:

  return v58;
}

- (id)shortStringHeuristicStyleSampleForPrompt:(id)prompt script:(int64_t)script styles:(id)styles maxNumOfSamples:(unint64_t)samples
{
  v60 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  stylesCopy = styles;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v12 = qword_1EA84DC98;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    *&buf[4] = promptCopy;
    *&buf[12] = 2048;
    *&buf[14] = objc_msgSend_length(promptCopy, v13, v14, v15, v16, v17);
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_DEFAULT, "Style Sampling: get highest character coverage style sample for prompt: %{sensitive}@ with length: %lu", buf, 0x16u);
  }

  v21 = objc_msgSend_characterCoverageWithString_script_(CHSynthesisStyleSample, v18, promptCopy, script, v19, v20);
  v27 = objc_msgSend_characterCoverage(self, v22, v23, v24, v25, v26);
  v32 = objc_msgSend_intersectsSet_(v21, v28, v27, v29, v30, v31);

  if (v32)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v57 = sub_18376FBD4;
    v58 = sub_18376FBE4;
    v59 = 0;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = sub_183776D88;
    v50[3] = &unk_1E6DDDA80;
    v51 = stylesCopy;
    scriptCopy = script;
    samplesCopy = samples;
    v52 = v21;
    v53 = buf;
    objc_msgSend__safelyRunBlock_(self, v33, v50, v34, v35, v36);
    v42 = objc_msgSend_reverseObjectEnumerator(*(*&buf[8] + 40), v37, v38, v39, v40, v41);
    v48 = objc_msgSend_allObjects(v42, v43, v44, v45, v46, v47);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (id)defaultUserStyleSampleForScript:(int64_t)script
{
  v42 = *MEMORY[0x1E69E9840];
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC98;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEFAULT, "Style Sampling: Since no initial style is part of the request, get an initial style sample from the inventory", buf, 2u);
  }

  *buf = 0;
  v33 = buf;
  v34 = 0x3032000000;
  v35 = sub_18376FBD4;
  v36 = sub_18376FBE4;
  v37 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1837779B0;
  v31[3] = &unk_1E6DDDB20;
  v31[5] = buf;
  v31[6] = script;
  v31[4] = self;
  objc_msgSend__safelyRunBlock_(self, v6, v31, v7, v8, v9);
  if (qword_1EA84DC48 == -1)
  {
    v10 = qword_1EA84DC98;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v10 = qword_1EA84DC98;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
LABEL_7:
    v16 = objc_msgSend_transcription(*(v33 + 5), v11, v12, v13, v14, v15);
    v22 = objc_msgSend_transcription(*(v33 + 5), v17, v18, v19, v20, v21);
    v28 = objc_msgSend_length(v22, v23, v24, v25, v26, v27);
    *v38 = 138740227;
    v39 = v16;
    v40 = 2048;
    v41 = v28;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_DEFAULT, "Style Sampling: picked up an initial style sample: %{sensitive}@ from the inventory of length: %lu", v38, 0x16u);
  }

LABEL_8:

  v29 = *(v33 + 5);
  _Block_object_dispose(buf, 8);

  return v29;
}

- (id)styleCharCoverageForInputSample:(id)sample prompt:(id)prompt script:(int64_t)script maxStyleSampleLength:(int64_t)length
{
  v101 = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  promptCopy = prompt;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v12 = qword_1EA84DC98;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    *&buf[4] = promptCopy;
    *&buf[12] = 2048;
    *&buf[14] = objc_msgSend_length(promptCopy, v13, v14, v15, v16, v17);
    _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_DEFAULT, "Style Sampling: Using style + character coverage algorithm to find style sample for prompt: %{sensitive}@ with length: %lu", buf, 0x16u);
  }

  v23 = sampleCopy;
  if (!sampleCopy)
  {
    v23 = objc_msgSend_defaultUserStyleSampleForScript_(self, v18, script, v20, v21, v22);
  }

  v80 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19, v20, v21, v22);
  v27 = objc_msgSend_characterCoverageWithString_script_(CHSynthesisStyleSample, v24, promptCopy, script, v25, v26, v23);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v98 = sub_18376FBD4;
  v99 = sub_18376FBE4;
  v28 = v27;
  v100 = v28;
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = sub_1837786F4;
  v89[3] = &unk_1E6DDDAA8;
  v93 = buf;
  v89[4] = self;
  v29 = v23;
  v90 = v29;
  v30 = promptCopy;
  v91 = v30;
  lengthCopy = length;
  v31 = v80;
  v92 = v31;
  objc_msgSend__safelyRunBlock_(self, v32, v89, v33, v34, v35);
  if (sampleCopy)
  {
    if (qword_1EA84DC48 == -1)
    {
      v41 = qword_1EA84DC98;
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v42 = v31;
        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v84, v96, 16, v44);
        if (v49)
        {
          v50 = *v85;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v85 != v50)
              {
                objc_enumerationMutation(v42);
              }

              objc_msgSend_updateSamplingCountForSample_(self, v45, *(*(&v84 + 1) + 8 * i), v46, v47, v48);
            }

            v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v84, v96, 16, v48);
          }

          while (v49);
        }

        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = sub_183778A10;
        v83[3] = &unk_1E6DDBE10;
        v83[4] = self;
        objc_msgSend__safelyRunBlock_(self, v52, v83, v53, v54, v55);
        goto LABEL_19;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v41 = qword_1EA84DC98;
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }
    }

    *v88 = 0;
    _os_log_impl(&dword_18366B000, v41, OS_LOG_TYPE_DEBUG, "Style Sampling: Since input sample was part of the request, updating the sampling count of samples that are used as style sample", v88, 2u);
    goto LABEL_11;
  }

LABEL_19:
  if (objc_msgSend_count(v31, v36, v37, v38, v39, v40))
  {
    v61 = MEMORY[0x1E695DF70];
    v62 = objc_msgSend_count(v31, v56, v57, v58, v59, v60);
    v67 = objc_msgSend_arrayWithCapacity_(v61, v63, v62, v64, v65, v66);
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = sub_183778A50;
    v81[3] = &unk_1E6DDDAD0;
    v68 = v67;
    v82 = v68;
    objc_msgSend_enumerateObjectsUsingBlock_(v31, v69, v81, v70, v71, v72);
    v78 = objc_msgSend_copy(v68, v73, v74, v75, v76, v77);
  }

  else if (v29)
  {
    v95 = v29;
    v78 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v56, &v95, 1, v59, v60);
  }

  else
  {
    v78 = 0;
  }

  _Block_object_dispose(buf, 8);

  return v78;
}

- (id)styleSamplesForInputSample:(id)sample prompt:(id)prompt script:(int64_t)script samplingAlgorithm:(unint64_t)algorithm
{
  sampleCopy = sample;
  promptCopy = prompt;
  v15 = objc_msgSend_maxStyleSampleLengthForPrompt_script_(CHSynthesisStyleInventory, v12, promptCopy, script, v13, v14);
  v17 = objc_msgSend_personalizedStyleSamplesForInputSample_prompt_script_samplingAlgorithm_maxStyleSampleLength_(self, v16, sampleCopy, promptCopy, script, algorithm, v15);

  return v17;
}

- (id)personalizedStyleSamplesForInputSample:(id)sample prompt:(id)prompt script:(int64_t)script samplingAlgorithm:(unint64_t)algorithm maxStyleSampleLength:(int64_t)length
{
  v70 = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  promptCopy = prompt;
  switch(algorithm)
  {
    case 2uLL:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v35 = qword_1EA84DC98;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v68) = 0;
        _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_DEFAULT, "Style Sampling: Using highest short string heuristic algorithm for style sampling", &v68, 2u);
      }

      v41 = objc_msgSend_styles(self, v36, v37, v38, v39, v40);
      v47 = objc_msgSend_allValues(v41, v42, v43, v44, v45, v46);
      v20 = objc_msgSend_shortStringHeuristicStyleSampleForPrompt_script_styles_maxNumOfSamples_(self, v48, promptCopy, script, v47, 1);

      if (!objc_msgSend_count(v20, v49, v50, v51, v52, v53))
      {
        v64 = 0;
        goto LABEL_20;
      }

      v59 = MEMORY[0x1E695DEC8];
      v26 = objc_msgSend_firstObject(v20, v54, v55, v56, v57, v58);
      v29 = objc_msgSend_arrayWithObject_(v59, v60, v26, v61, v62, v63);
LABEL_19:
      v64 = v29;

LABEL_20:
      goto LABEL_30;
    case 1uLL:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v30 = qword_1EA84DC98;
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      LOWORD(v68) = 0;
      v31 = "Style Sampling: Using style character coverage algorithm for style sampling";
      v32 = v30;
      v33 = OS_LOG_TYPE_DEFAULT;
      v34 = 2;
      goto LABEL_28;
    case 0uLL:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v14 = qword_1EA84DC98;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v68) = 0;
        _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "Style Sampling: Using highest character coverage algorithm for style sampling", &v68, 2u);
      }

      v20 = objc_msgSend_styles(self, v15, v16, v17, v18, v19);
      v26 = objc_msgSend_allValues(v20, v21, v22, v23, v24, v25);
      v29 = objc_msgSend_highestCharacterCoverageStyleSampleForPrompt_script_styles_(self, v27, promptCopy, script, v26, v28);
      goto LABEL_19;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v65 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    v68 = 134217984;
    algorithmCopy2 = algorithm;
    _os_log_impl(&dword_18366B000, v65, OS_LOG_TYPE_ERROR, "Style Sampling: algorithm: %lu is not a supported sampling algorithm", &v68, 0xCu);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v30 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v30 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
LABEL_27:
    v68 = 134217984;
    algorithmCopy2 = algorithm;
    v31 = "Style Sampling: algorithm: %lu is not a supported sampling algorithm";
    v32 = v30;
    v33 = OS_LOG_TYPE_FAULT;
    v34 = 12;
LABEL_28:
    _os_log_impl(&dword_18366B000, v32, v33, v31, &v68, v34);
  }

LABEL_29:

  v64 = objc_msgSend_styleCharCoverageForInputSample_prompt_script_maxStyleSampleLength_(self, v66, sampleCopy, promptCopy, script, length);
LABEL_30:

  return v64;
}

- (void)setSupportsPersonalizationForScript:(int64_t)script value:(BOOL)value
{
  v17 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, value, value, v4, v5);
  supportsPersonalization = self->_supportsPersonalization;
  v13 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, script, v10, v11, v12);
  objc_msgSend_setObject_forKeyedSubscript_(supportsPersonalization, v14, v17, v13, v15, v16);
}

- (BOOL)_unsafeSupportsPersonalizationForScript:(int64_t)script
{
  v87 = *MEMORY[0x1E69E9840];
  supportsPersonalization = self->_supportsPersonalization;
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, script, v3, v4, v5);
  v14 = objc_msgSend_objectForKeyedSubscript_(supportsPersonalization, v10, v9, v11, v12, v13);
  v20 = objc_msgSend_BOOLValue(v14, v15, v16, v17, v18, v19);

  if (!v20)
  {
    switch(script)
    {
      case 2:
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v44 = objc_msgSend_sampleCountByCharacter(self, v21, v22, v23, v24, v25);
        v50 = objc_msgSend_allKeys(v44, v45, v46, v47, v48, v49);

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v76, v86, 16, v52);
        if (v38)
        {
          v57 = 0;
          v58 = *v77;
          while (2)
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v77 != v58)
              {
                objc_enumerationMutation(v50);
              }

              v57 += objc_msgSend_isZHJARadical_(CHSynthesisStyleSample, v53, *(*(&v76 + 1) + 8 * i), v54, v55, v56);
              if (v57 > 29)
              {
                LOBYTE(v38) = 1;
                goto LABEL_19;
              }
            }

            v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v76, v86, 16, v56);
            if (v38)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:

        break;
      case 1:
        v82 = 0;
        v83 = &v82;
        v84 = 0x2020000000;
        v85 = 0;
        if (qword_1EA84CED8 != -1)
        {
          dispatch_once(&qword_1EA84CED8, &unk_1EF1BCA90);
        }

        v81[0] = 0;
        v81[1] = v81;
        v81[2] = 0x2020000000;
        v81[3] = 0;
        v39 = objc_msgSend_characterCoverage(self, v21, v22, v23, v24, v25);
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = sub_1837794B0;
        v80[3] = &unk_1E6DDDAF8;
        v80[4] = v81;
        v80[5] = &v82;
        objc_msgSend_enumerateObjectsUsingBlock_(v39, v40, v80, v41, v42, v43);

        LOBYTE(v38) = *(v83 + 24);
        _Block_object_dispose(v81, 8);
        _Block_object_dispose(&v82, 8);
LABEL_24:
        objc_msgSend_setSupportsPersonalizationForScript_value_(self, v21, script, v38 & 1, v24, v25);
        return v38 & 1;
      case 3:
        if (qword_1EA84CEE8 != -1)
        {
          dispatch_once(&qword_1EA84CEE8, &unk_1EF1BCAB0);
        }

        v60 = objc_msgSend_mutableCopy(qword_1EA84CEE0, v21, v22, v23, v24, v25);
        v38 = objc_msgSend_characterCoverage(self, v61, v62, v63, v64, v65);
        objc_msgSend_intersectSet_(v60, v66, v38, v67, v68, v69);

        LOBYTE(v38) = objc_msgSend_count(v60, v70, v71, v72, v73, v74) > 0x1D;
        break;
      default:
        LOBYTE(v38) = 0;
        break;
    }

    goto LABEL_24;
  }

  v26 = self->_supportsPersonalization;
  v27 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v21, script, v23, v24, v25);
  v32 = objc_msgSend_objectForKeyedSubscript_(v26, v28, v27, v29, v30, v31);
  LOBYTE(v38) = objc_msgSend_BOOLValue(v32, v33, v34, v35, v36, v37);

  return v38 & 1;
}

- (BOOL)supportsPersonalizationForScript:(int64_t)script
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_183779700;
  v8[3] = &unk_1E6DDDB20;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = script;
  objc_msgSend__safelyRunBlock_(self, a2, v8, v3, v4, v5);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)defaultStyleSamplesForPrompt:(id)prompt script:(int64_t)script maxStyleSampleLength:(int64_t)length
{
  v216 = *MEMORY[0x1E69E9840];
  promptCopy = prompt;
  switch(script)
  {
    case 3:
      v200[0] = MEMORY[0x1E69E9820];
      v200[1] = 3221225472;
      v200[2] = sub_18377A4E8;
      v200[3] = &unk_1E6DDBE10;
      v200[4] = self;
      objc_msgSend__safelyRunBlock_(self, v7, v200, v8, v9, v10);
      v64 = objc_alloc(MEMORY[0x1E695DF70]);
      v70 = objc_msgSend_length(promptCopy, v65, v66, v67, v68, v69);
      v196 = objc_msgSend_initWithCapacity_(v64, v71, v70, v72, v73, v74);
      (*(*self->_koPrototypes.__ptr_ + 24))(buf);
      v195 = objc_msgSend_characterCoverageWithString_script_(CHSynthesisStyleSample, v75, promptCopy, 3, v76, v77);
      v88 = objc_msgSend_copy(v195, v78, v79, v80, v81, v82);
      v90 = *&buf[0];
      if (*&buf[0] != (buf + 8))
      {
        lengthCopy = length;
        v91 = 0;
        *&v89 = 67109120;
        v194 = v89;
        do
        {
          v92 = sub_1837A4260(*(v90 + 8), v83, v84, v85, v86, v87);
          v96 = objc_msgSend_characterCoverageWithString_script_(CHSynthesisStyleSample, v93, v92, 3, v94, v95);
          v102 = objc_msgSend_mutableCopy(v88, v97, v98, v99, v100, v101);
          objc_msgSend_minusSet_(v102, v103, v96, v104, v105, v106);
          v115 = objc_msgSend_synthesisLengthForString_script_(CHSynthesisStyleSample, v107, v92, 3, v108, v109);
          if (v91 <= 0)
          {
            v116 = v91;
          }

          else
          {
            v116 = v91 + 1;
          }

          v117 = objc_msgSend_count(v102, v110, v111, v112, v113, v114, v194);
          if (v117 < objc_msgSend_count(v88, v118, v119, v120, v121, v122))
          {
            v128 = v116 + v115;
            if (v128 <= lengthCopy)
            {
              (*(*self->_koPrototypes.__ptr_ + 16))(__p);
              if (*&__p[0] == *(&__p[0] + 1))
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v148 = qword_1EA84DC98;
                if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
                {
                  v153 = *(v90 + 8);
                  *v209 = v194;
                  v210 = v153;
                  _os_log_impl(&dword_18366B000, v148, OS_LOG_TYPE_ERROR, "Default style samples for prompt: cannot find character with codepoint %u for Ko script in memory mapped character holder.", v209, 8u);
                }
              }

              else
              {
                v134 = objc_msgSend_copy(v102, v129, v130, v131, v132, v133);

                v140 = objc_msgSend_copy(**&__p[0], v135, v136, v137, v138, v139);
                v146 = objc_msgSend_set(MEMORY[0x1E695DFD8], v141, v142, v143, v144, v145);
                v148 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v147, v92, v140, 3, v146);

                objc_msgSend_addObject_(v196, v149, v148, v150, v151, v152);
                v91 = v128;
                v88 = v134;
              }

              v154 = *&__p[0];
              if (*&__p[0])
              {
                v155 = *(&__p[0] + 1);
                v156 = *&__p[0];
                if (*(&__p[0] + 1) != *&__p[0])
                {
                  do
                  {
                    v157 = *(v155 - 24);
                    v155 -= 24;
                  }

                  while (v155 != v154);
                  v156 = *&__p[0];
                }

                *(&__p[0] + 1) = v154;
                operator delete(v156);
              }
            }
          }

          v158 = objc_msgSend_count(v88, v123, v124, v125, v126, v127) == 0;

          if (v158)
          {
            break;
          }

          v159 = *(v90 + 1);
          if (v159)
          {
            do
            {
              v160 = v159;
              v159 = *v159;
            }

            while (v159);
          }

          else
          {
            do
            {
              v160 = *(v90 + 2);
              v161 = *v160 == v90;
              v90 = v160;
            }

            while (!v161);
          }

          v90 = v160;
        }

        while (v160 != (buf + 8));
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v162 = qword_1EA84DC98;
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
      {
        v168 = objc_msgSend_count(v196, v163, v164, v165, v166, v167);
        LODWORD(__p[0]) = 134217984;
        *(__p + 4) = v168;
        _os_log_impl(&dword_18366B000, v162, OS_LOG_TYPE_DEBUG, "defaultStyleSamplesForPrompt: default style sample for Ko script with length: %lu", __p, 0xCu);
      }

      v34 = v196;
      sub_18368D56C(buf, *(&buf[0] + 1));

      break;
    case 2:
      v204[0] = MEMORY[0x1E69E9820];
      v204[1] = 3221225472;
      v204[2] = sub_18377A1CC;
      v204[3] = &unk_1E6DDBE10;
      v204[4] = self;
      objc_msgSend__safelyRunBlock_(self, v7, v204, v8, v9, v10);
      v35 = objc_alloc(MEMORY[0x1E695DF70]);
      v41 = objc_msgSend_length(promptCopy, v36, v37, v38, v39, v40);
      v46 = objc_msgSend_initWithCapacity_(v35, v42, v41, v43, v44, v45);
      v52 = objc_msgSend_length(promptCopy, v47, v48, v49, v50, v51);
      v201[0] = MEMORY[0x1E69E9820];
      v201[1] = 3221225472;
      v201[2] = sub_18377A2CC;
      v201[3] = &unk_1E6DDDB48;
      v201[4] = self;
      v53 = v46;
      v202 = v53;
      v203 = 2;
      objc_msgSend_enumerateCodepointsInRange_usingBlock_(promptCopy, v54, 0, v52, v201, v55);
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v56 = qword_1EA84DC98;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v62 = objc_msgSend_count(v53, v57, v58, v59, v60, v61);
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v62;
        _os_log_impl(&dword_18366B000, v56, OS_LOG_TYPE_DEBUG, "defaultStyleSamplesForPrompt: default style sample for ZHJA script with length: %lu", buf, 0xCu);
      }

      v63 = v202;
      v34 = v53;

      break;
    case 1:
      if (self->_defaultStyleFastPathBlock)
      {
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        v214[0] = promptCopy;
        v214[1] = @"Hello";
        v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v214, 2, v9, v10);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v205, v215, 16, v13);
        if (v14)
        {
          v15 = *v206;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v206 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = (*(self->_defaultStyleFastPathBlock + 2))();
              v23 = v17;
              if (v17)
              {
                v29 = objc_msgSend_content(v17, v18, v19, v20, v21, v22);
                if (v29)
                {
                  v30 = objc_msgSend_drawing(v23, v24, v25, v26, v27, v28);
                  v31 = v30 == 0;

                  if (!v31)
                  {

                    v175 = objc_msgSend_content(v23, v170, v171, v172, v173, v174);
                    v181 = objc_msgSend_drawing(v23, v176, v177, v178, v179, v180);
                    v187 = objc_msgSend_set(MEMORY[0x1E695DFD8], v182, v183, v184, v185, v186);
                    v189 = objc_msgSend_sampleWithTranscription_drawing_script_strokeIdentifiers_(CHSynthesisStyleSample, v188, v175, v181, 1, v187);
                    v213 = v189;
                    v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v190, &v213, 1, v191, v192);

                    goto LABEL_63;
                  }
                }
              }
            }

            v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v32, &v205, v215, 16, v33);
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v23 = qword_1EA84DC98;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 138739971;
          *(buf + 4) = promptCopy;
          _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "Default style samples for prompt: _defaultStyleFastPathBlock returned nil or incomplete result for prompt: %{sensitive}@", buf, 0xCu);
        }

        v34 = 0;
LABEL_63:
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v169 = qword_1EA84DC98;
        if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_18366B000, v169, OS_LOG_TYPE_ERROR, "Default style samples for prompt: _defaultStyleFastPathBlock has not been set, returning nil", buf, 2u);
        }

        v34 = 0;
      }

      break;
    default:
      v34 = MEMORY[0x1E695E0F0];
      break;
  }

  return v34;
}

- (id)styleSamplesForInputSample:(id)sample prompt:(id)prompt script:(int64_t)script samplingAlgorithm:(unint64_t)algorithm maxNumOfSamples:(unint64_t)samples
{
  sampleCopy = sample;
  promptCopy = prompt;
  v17 = objc_msgSend_characterCoverageWithString_script_(CHSynthesisStyleSample, v14, promptCopy, script, v15, v16);
  v23 = objc_msgSend_characterCoverage(self, v18, v19, v20, v21, v22);
  v28 = objc_msgSend_intersectsSet_(v17, v24, v23, v25, v26, v27);

  if (v28)
  {
    if (algorithm == 2)
    {
      v34 = objc_msgSend_styles(self, v29, v30, v31, v32, v33);
      v40 = objc_msgSend_allValues(v34, v35, v36, v37, v38, v39);
      v42 = objc_msgSend_shortStringHeuristicStyleSampleForPrompt_script_styles_maxNumOfSamples_(self, v41, promptCopy, script, v40, samples);

      v43 = objc_alloc(MEMORY[0x1E695DEC8]);
      v47 = objc_msgSend_initWithArray_copyItems_(v43, v44, v42, 1, v45, v46);

LABEL_19:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v48 = qword_1EA84DC98;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *v52 = 0;
        _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_DEFAULT, "Style Sampling: Using highest short string heuristic algorithm for style sampling", v52, 2u);
      }

      goto LABEL_23;
    }

    if (samples == 1)
    {
LABEL_18:
      v47 = objc_msgSend_styleSamplesForInputSample_prompt_script_samplingAlgorithm_(self, v29, sampleCopy, promptCopy, 1, algorithm);
      goto LABEL_19;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v49 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *v54 = 0;
      _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_ERROR, "maxNumOfSamples > 1 supported for CHStyleSampleSamplingCharacterInventorySynthesisShortStringHeuristic only", v54, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v50 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v50 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_17;
      }
    }

    *v53 = 0;
    _os_log_impl(&dword_18366B000, v50, OS_LOG_TYPE_FAULT, "maxNumOfSamples > 1 supported for CHStyleSampleSamplingCharacterInventorySynthesisShortStringHeuristic only", v53, 2u);
    goto LABEL_17;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v48 = qword_1EA84DC98;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_DEFAULT, "Style Sampling: No intersection of text prompt with the inventory, returning no style sample", buf, 2u);
  }

  v47 = 0;
LABEL_23:

  return v47;
}

- (BOOL)shouldForceInventoryDefaultStyleWithOptions:(id)options
{
  optionsCopy = options;
  if (os_variant_has_internal_diagnostics() && objc_msgSend_forceInventoryDefaultStyle(optionsCopy, v4, v5, v6, v7, v8))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v9 = qword_1EA84DC98;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_DEFAULT, "Style Sampling: forcing default styles", v11, 2u);
    }

    return 1;
  }

  else
  {

    return 0;
  }
}

- (id)styleSampleOptionsForRequest:(id)request script:(int64_t)script
{
  v256 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v12 = objc_msgSend_options(requestCopy, v7, v8, v9, v10, v11);
  v216 = objc_msgSend_copy(v12, v13, v14, v15, v16, v17);

  if (!objc_msgSend_requestType(requestCopy, v18, v19, v20, v21, v22))
  {
    v28 = objc_msgSend_options(requestCopy, v23, v24, v25, v26, v27);
    isFastPath = objc_msgSend_isFastPath(v28, v29, v30, v31, v32, v33);

    if ((isFastPath & 1) == 0)
    {
      v40 = objc_msgSend_string(requestCopy, v35, v36, v37, v38, v39);
      v46 = objc_msgSend_length(v40, v41, v42, v43, v44, v45);

      if (!v46)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v52 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v52, OS_LOG_TYPE_ERROR, "Style Sampling: requesting style sample for generation of empty prompt!", buf, 2u);
        }
      }

      v53 = objc_msgSend_string(requestCopy, v47, v48, v49, v50, v51);
      v59 = objc_msgSend_length(v53, v54, v55, v56, v57, v58) == 0;

      if (v59)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v60 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v60, OS_LOG_TYPE_FAULT, "Style Sampling: requesting style sample for generation of empty prompt!", buf, 2u);
        }
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v61 = qword_1EA84DC98;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v67 = objc_msgSend_string(requestCopy, v62, v63, v64, v65, v66);
        v73 = objc_msgSend_length(v67, v68, v69, v70, v71, v72);
        *buf = 134217984;
        v237 = v73;
        _os_log_impl(&dword_18366B000, v61, OS_LOG_TYPE_DEFAULT, "Style Sampling: request sent to the inventory to find a style sample for text prompt with length: %lu", buf, 0xCu);
      }

      v79 = objc_msgSend_string(requestCopy, v74, v75, v76, v77, v78);
      v83 = objc_msgSend_maxStyleSampleLengthForPrompt_script_(CHSynthesisStyleInventory, v80, v79, script, v81, v82);

      v232 = 0;
      v233 = &v232;
      v234 = 0x2020000000;
      v235 = 0;
      v226 = 0;
      v227 = &v226;
      v228 = 0x3032000000;
      v229 = sub_18376FBD4;
      v230 = sub_18376FBE4;
      v231 = 0;
      v219[0] = MEMORY[0x1E69E9820];
      v219[1] = 3221225472;
      v219[2] = sub_18377B3DC;
      v219[3] = &unk_1E6DDDB70;
      v219[4] = self;
      v84 = requestCopy;
      v220 = v84;
      v222 = &v232;
      scriptCopy = script;
      v85 = v216;
      v221 = v85;
      v223 = &v226;
      v225 = v83;
      objc_msgSend__safelyRunBlock_(self, v86, v219, v87, v88, v89);
      if ((v233[3] & 1) == 0)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v94 = qword_1EA84DC98;
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v94, OS_LOG_TYPE_DEFAULT, "Style Sampling: Using default style algorithm for style sampling", buf, 2u);
        }

        v100 = objc_msgSend_string(v84, v95, v96, v97, v98, v99);
        v103 = objc_msgSend_defaultStyleSamplesForPrompt_script_maxStyleSampleLength_(self, v101, v100, script, v83, v102);
        v104 = v227[5];
        v227[5] = v103;
      }

      v105 = v227[5];
      if (v105)
      {
        v106 = objc_msgSend_normalizeAndAlignStyleSamples_(CHSynthesisStyleInventory, v90, v105, v91, v92, v93);
        v107 = v227[5];
        v227[5] = v106;

        v108 = v227[5];
        v217 = 0;
        v218 = 0;
        objc_msgSend_decomposeSamples_drawings_contents_(CHSynthesisStyleInventory, v109, v108, &v218, &v217, v110);
        v111 = v218;
        v112 = v217;
        objc_msgSend_setStyleDrawings_(v85, v113, v111, v114, v115, v116);
        objc_msgSend_setStyleContents_(v85, v117, v112, v118, v119, v120);
        v212 = v112;
        v214 = objc_msgSend_componentsJoinedByString_(v112, v121, @" ", v122, v123, v124);
        v211 = objc_msgSend_synthesisLengthForString_script_(CHSynthesisStyleSample, v125, v214, script, v126, v127);
        v133 = objc_msgSend_string(v84, v128, v129, v130, v131, v132);
        v210 = objc_msgSend_synthesisLengthForString_script_(CHSynthesisStyleSample, v134, v133, script, v135, v136);

        v215 = objc_msgSend_characterCoverageWithString_script_(CHSynthesisStyleSample, v137, v214, script, v138, v139);
        v145 = objc_msgSend_string(v84, v140, v141, v142, v143, v144);
        v149 = objc_msgSend_characterCoverageWithString_script_(CHSynthesisStyleSample, v146, v145, script, v147, v148);

        v155 = objc_msgSend_string(v84, v150, v151, v152, v153, v154);
        v213 = objc_msgSend_coverageMaskWithPrompt_script_coveredCharacters_(self, v156, v155, script, v215, v157);

        v163 = objc_msgSend_mutableCopy(v149, v158, v159, v160, v161, v162);
        objc_msgSend_minusSet_(v163, v164, v215, v165, v166, v167);
        if (script > 3)
        {
          v209 = 0;
        }

        else
        {
          v209 = off_1E6DDDCF0[script];
        }

        v172 = objc_msgSend_countOfStyleSamplesForScript_(self, v168, script, v169, v170, v171);
        v178 = objc_msgSend_count(v149, v173, v174, v175, v176, v177);
        v184 = objc_msgSend_count(v163, v179, v180, v181, v182, v183);
        v190 = objc_msgSend_count(v149, v185, v186, v187, v188, v189);
        v208 = v172;
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v191 = qword_1EA84DC98;
        if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
        {
          v207 = v111;
          v197 = objc_msgSend_string(v84, v192, v193, v194, v195, v196);
          v198 = *(v233 + 24);
          v204 = objc_msgSend_countOfStyleSamples(self, v199, v200, v201, v202, v203);
          *buf = 138742275;
          v237 = v214;
          v238 = 2048;
          v239 = v211;
          v240 = 2048;
          v241 = (v178 - v184) / v190 * 100.0;
          v242 = 2117;
          v243 = v197;
          v244 = 2048;
          v245 = v210;
          v246 = 2112;
          v247 = v213;
          v205 = @"NO";
          v248 = 2112;
          if (v198)
          {
            v205 = @"YES";
          }

          v249 = v205;
          v250 = 2112;
          v251 = v209;
          v252 = 2048;
          v253 = v208;
          v254 = 2048;
          v255 = v204;
          _os_log_impl(&dword_18366B000, v191, OS_LOG_TYPE_DEFAULT, "Style Sampling: using style sample: %{sensitive}@ of length: %lu with character coverage percentage: %f for synthesis request with prompt: %{sensitive}@ of length: %lu. Prompt coverage mask: %@. Personalized samples used: %@. Script: %@. Sample count for script: %lu. Total sample count: %lu", buf, 0x66u);

          v111 = v207;
        }
      }

      _Block_object_dispose(&v226, 8);
      _Block_object_dispose(&v232, 8);
    }
  }

  return v216;
}

- (id)coverageMaskWithPrompt:(id)prompt script:(int64_t)script coveredCharacters:(id)characters
{
  promptCopy = prompt;
  charactersCopy = characters;
  v14 = objc_msgSend_string(MEMORY[0x1E696AD60], v9, v10, v11, v12, v13);
  v20 = objc_msgSend_length(promptCopy, v15, v16, v17, v18, v19);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_18377B898;
  v27[3] = &unk_1E6DDDB98;
  scriptCopy = script;
  v21 = charactersCopy;
  v28 = v21;
  v22 = v14;
  v29 = v22;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(promptCopy, v23, 0, v20, 2, v27);
  v24 = v29;
  v25 = v22;

  return v22;
}

- (unint64_t)countOfStyleSamplesForScript:(int64_t)script
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_18377BA50;
  v8[3] = &unk_1E6DDDB20;
  v8[5] = &v9;
  v8[6] = script;
  v8[4] = self;
  objc_msgSend__safelyRunBlock_(self, a2, v8, v3, v4, v5);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (unint64_t)countOfStyleSamples
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18377BBD0;
  v7[3] = &unk_1E6DDC7F0;
  v7[4] = self;
  v7[5] = &v8;
  objc_msgSend__safelyRunBlock_(self, a2, v7, v2, v3, v4);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_18377BD3C;
      v11[3] = &unk_1E6DDC840;
      v12 = equalCopy;
      selfCopy = self;
      v14 = &v15;
      objc_msgSend__safelyRunBlock_(self, v5, v11, v6, v7, v8);
      v9 = *(v16 + 24);

      _Block_object_dispose(&v15, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

- (void)clearSamplesEmbeddingVectorForScript:(int64_t)script
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = objc_msgSend_styles(self, a2, script, v3, v4, v5, 0);
  v13 = objc_msgSend_allValues(v7, v8, v9, v10, v11, v12);

  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v25, v29, 16, v15);
  if (v21)
  {
    v22 = *v26;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v13);
        }

        v24 = *(*(&v25 + 1) + 8 * i);
        if (objc_msgSend_script(v24, v16, v17, v18, v19, v20) == script)
        {
          objc_msgSend_clearEmbeddingVector(v24, v16, v17, v18, v19, v20);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v25, v29, 16, v20);
    }

    while (v21);
  }
}

- (void)updateSynthesisModelHashLatin:(id)latin
{
  latinCopy = latin;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18377C1C8;
  v10[3] = &unk_1E6DDC818;
  v10[4] = self;
  v11 = latinCopy;
  v5 = latinCopy;
  objc_msgSend__safelyRunBlock_(self, v6, v10, v7, v8, v9);
}

- (void)updateSynthesisModelHashZhJa:(id)ja
{
  jaCopy = ja;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18377C314;
  v10[3] = &unk_1E6DDC818;
  v10[4] = self;
  v11 = jaCopy;
  v5 = jaCopy;
  objc_msgSend__safelyRunBlock_(self, v6, v10, v7, v8, v9);
}

- (void)updateSynthesisModelHashKo:(id)ko
{
  koCopy = ko;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18377C460;
  v10[3] = &unk_1E6DDC818;
  v10[4] = self;
  v11 = koCopy;
  v5 = koCopy;
  objc_msgSend__safelyRunBlock_(self, v6, v10, v7, v8, v9);
}

- (CHSynthesisModelHashes)synthesisModelHashes
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_18376FBD4;
  v12 = sub_18376FBE4;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18377C608;
  v7[3] = &unk_1E6DDC7F0;
  v7[4] = self;
  v7[5] = &v8;
  objc_msgSend__safelyRunBlock_(self, a2, v7, v2, v3, v4);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (double)lastCharacterStyleTimestamp
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18377C6E0;
  v7[3] = &unk_1E6DDC7F0;
  v7[4] = self;
  v7[5] = &v8;
  objc_msgSend__safelyRunBlock_(self, a2, v7, v2, v3, v4);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)fastPathCharacterStylesWithVariations
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_18376FBD4;
  v14 = sub_18376FBE4;
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18377C814;
  v9[3] = &unk_1E6DDDC10;
  v9[4] = self;
  v9[5] = &v10;
  objc_msgSend__safelyRunBlock_(self, v3, v9, v4, v5, v6);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)cleanupFastPathCharacters
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18377CA68;
  v5[3] = &unk_1E6DDBE10;
  v5[4] = self;
  objc_msgSend__safelyRunBlock_(self, a2, v5, v2, v3, v4);
}

- (void)addSampleOfSynthesizedCharacter:(id)character transcription:(id)transcription key:(unsigned int)key version:(int64_t)version
{
  characterCopy = character;
  transcriptionCopy = transcription;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_18377CBA0;
  v18[3] = &unk_1E6DDDC38;
  keyCopy = key;
  v18[4] = self;
  v19 = transcriptionCopy;
  v20 = characterCopy;
  versionCopy = version;
  v12 = characterCopy;
  v13 = transcriptionCopy;
  objc_msgSend__safelyRunBlock_(self, v14, v18, v15, v16, v17);
}

- (void)removeStyleSamplesIfNeeded
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC88;
  v4 = os_signpost_id_generate(v3);

  if (qword_1EA84DC48 == -1)
  {
    v5 = qword_1EA84DC88;
    v6 = v4 - 1;
    if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v5 = qword_1EA84DC88;
    v6 = v4 - 1;
    if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CHStyleInventoryRemoveSamplesIfNeeded", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "BEGIN CHStyleInventoryRemoveSamplesIfNeeded", v27, 2u);
  }

  v13 = objc_msgSend__maxInventorySize(CHSynthesisStyleInventory, v8, v9, v10, v11, v12);
  v19 = objc_msgSend__minimumSampleCountByCharacter(CHSynthesisStyleInventory, v14, v15, v16, v17, v18);
  objc_msgSend_removeStyleSamplesIfNeededWithMaximumSize_minimumSampleCountByCharacter_(self, v20, v13, v19, v21, v22);
  if (qword_1EA84DC48 == -1)
  {
    v23 = qword_1EA84DC88;
    if (v6 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v23 = qword_1EA84DC88;
    if (v6 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_15;
    }
  }

  if (os_signpost_enabled(v23))
  {
    *v26 = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v23, OS_SIGNPOST_INTERVAL_END, v4, "CHStyleInventoryRemoveSamplesIfNeeded", "", v26, 2u);
  }

LABEL_15:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v24 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v24 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
LABEL_17:
    *v25 = 0;
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_DEFAULT, "END CHStyleInventoryRemoveSamplesIfNeeded", v25, 2u);
  }

LABEL_18:
}

- (void)removeStyleSamplesIfNeededWithMaximumSize:(int64_t)size minimumSampleCountByCharacter:(int64_t)character
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18377D0B4;
  v6[3] = &unk_1E6DDC8E0;
  v6[4] = self;
  v6[5] = size;
  v6[6] = character;
  objc_msgSend__safelyRunBlock_(self, a2, v6, character, v4, v5);
}

- (BOOL)hasAllDigits
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_18377DA44;
  v7[3] = &unk_1E6DDC7F0;
  v7[4] = self;
  v7[5] = &v8;
  objc_msgSend__safelyRunBlock_(self, a2, v7, v2, v3, v4);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

+ (id)statusWithInventory:(id)inventory
{
  inventoryCopy = inventory;
  v9 = CHHasHandwritingGenerationAllowed(inventoryCopy, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_modelStatus(CHPersonalizedSynthesisModelStatus, v10, v11, v12, v13, v14);
  v16 = [CHSynthesisStyleInventoryStatus alloc];
  IsGenerationAllowed_personalizedSynthesisModelState = objc_msgSend_initWithIsGenerationAllowed_personalizedSynthesisModelState_(v16, v17, v9, v15, v18, v19);
  if (os_variant_has_internal_diagnostics())
  {
    v21 = [CHSynthesisStyleInventoryStatus alloc];
    hasAllDigits = objc_msgSend_hasAllDigits(inventoryCopy, v22, v23, v24, v25, v26);
    v33 = objc_msgSend_countOfStyleSamples(inventoryCopy, v28, v29, v30, v31, v32);
    v39 = objc_msgSend_characterCoverage(inventoryCopy, v34, v35, v36, v37, v38);
    v45 = objc_msgSend_inventoryStorageURL(inventoryCopy, v40, v41, v42, v43, v44);
    v51 = objc_msgSend_relativePath(CHSynthesisStyleInventory, v46, v47, v48, v49, v50);
    hasAllDigits_styleSampleCount_samplesWithoutStylePredictionCount_characterCoverage_inventoryStorageURL_inventoryRelativePath = objc_msgSend_initWithIsGenerationAllowed_personalizedSynthesisModelState_hasAllDigits_styleSampleCount_samplesWithoutStylePredictionCount_characterCoverage_inventoryStorageURL_inventoryRelativePath_(v21, v52, v9, v15, hasAllDigits, v33, -1, v39, v45, v51);

    IsGenerationAllowed_personalizedSynthesisModelState = hasAllDigits_styleSampleCount_samplesWithoutStylePredictionCount_characterCoverage_inventoryStorageURL_inventoryRelativePath;
  }

  return IsGenerationAllowed_personalizedSynthesisModelState;
}

- (void)enumerateStyleSamplesUsingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18377DDB8;
  v10[3] = &unk_1E6DDCE50;
  v10[4] = self;
  v11 = blockCopy;
  v5 = blockCopy;
  objc_msgSend__safelyRunBlock_(self, v6, v10, v7, v8, v9);
}

- (void)_safelyRunBlock:(id)block
{
  blockCopy = block;
  label = dispatch_queue_get_label(0);
  if (!strcmp(label, "com.apple.CoreHandwriting.CHSynthesisStyleInventoryQueue") || (objc_msgSend__workQueue(self, v6, v7, v8, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    blockCopy[2](blockCopy);
  }

  else
  {
    v17 = objc_msgSend__workQueue(self, v12, v13, v14, v15, v16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_18377DFA0;
    block[3] = &unk_1E6DDC908;
    v19 = blockCopy;
    dispatch_sync(v17, block);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end