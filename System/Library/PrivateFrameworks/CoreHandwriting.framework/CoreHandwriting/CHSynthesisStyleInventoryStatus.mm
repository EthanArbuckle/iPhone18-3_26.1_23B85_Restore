@interface CHSynthesisStyleInventoryStatus
- (CHSynthesisStyleInventoryStatus)initWithCoder:(id)coder;
- (CHSynthesisStyleInventoryStatus)initWithIsGenerationAllowed:(BOOL)allowed personalizedSynthesisModelState:(id)state hasAllDigits:(BOOL)digits styleSampleCount:(int64_t)count samplesWithoutStylePredictionCount:(int64_t)predictionCount characterCoverage:(id)coverage inventoryStorageURL:(id)l inventoryRelativePath:(id)self0;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSynthesisStyleInventoryStatus

- (CHSynthesisStyleInventoryStatus)initWithIsGenerationAllowed:(BOOL)allowed personalizedSynthesisModelState:(id)state hasAllDigits:(BOOL)digits styleSampleCount:(int64_t)count samplesWithoutStylePredictionCount:(int64_t)predictionCount characterCoverage:(id)coverage inventoryStorageURL:(id)l inventoryRelativePath:(id)self0
{
  stateCopy = state;
  coverageCopy = coverage;
  lCopy = l;
  pathCopy = path;
  v31.receiver = self;
  v31.super_class = CHSynthesisStyleInventoryStatus;
  v19 = [(CHSynthesisStyleInventoryStatus *)&v31 init];
  v20 = v19;
  if (v19)
  {
    v19->_isGenerationAllowed = allowed;
    objc_storeStrong(&v19->_personalizedSynthesisModelState, state);
    if (os_variant_has_internal_diagnostics())
    {
      v20->_hasAllDigits = digits;
      v20->_styleSampleCount = count;
      v20->_samplesWithoutStylePredictionCount = predictionCount;
      v26 = objc_msgSend_copy(coverageCopy, v21, v22, v23, v24, v25);
      characterCoverage = v20->_characterCoverage;
      v20->_characterCoverage = v26;

      objc_storeStrong(&v20->_inventoryStorageURL, l);
      objc_storeStrong(&v20->_inventoryRelativePath, path);
    }
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeBool_forKey_(coderCopy, v4, self->_isGenerationAllowed, @"isGenerationAllowed", v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_personalizedSynthesisModelState, @"personalizedSynthesisModelState", v8, v9);
  if (os_variant_has_internal_diagnostics())
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v10, self->_hasAllDigits, @"hasAllDigits", v11, v12);
    objc_msgSend_encodeInteger_forKey_(coderCopy, v13, self->_styleSampleCount, @"styleSampleCount", v14, v15);
    objc_msgSend_encodeInteger_forKey_(coderCopy, v16, self->_samplesWithoutStylePredictionCount, @"sampleWithoutStylePredictionCount", v17, v18);
    objc_msgSend_encodeObject_forKey_(coderCopy, v19, self->_characterCoverage, @"characterCoverage", v20, v21);
    objc_msgSend_encodeObject_forKey_(coderCopy, v22, self->_inventoryStorageURL, @"inventoryStorageURL", v23, v24);
    objc_msgSend_encodeObject_forKey_(coderCopy, v25, self->_inventoryRelativePath, @"inventoryRelativePath", v26, v27);
  }
}

- (CHSynthesisStyleInventoryStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v54.receiver = self;
  v54.super_class = CHSynthesisStyleInventoryStatus;
  v9 = [(CHSynthesisStyleInventoryStatus *)&v54 init];
  if (v9)
  {
    v9->_isGenerationAllowed = objc_msgSend_decodeBoolForKey_(coderCopy, v5, @"isGenerationAllowed", v6, v7, v8);
    v10 = objc_opt_class();
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"personalizedSynthesisModelState", v12, v13);
    personalizedSynthesisModelState = v9->_personalizedSynthesisModelState;
    v9->_personalizedSynthesisModelState = v14;

    if (os_variant_has_internal_diagnostics())
    {
      v9->_hasAllDigits = objc_msgSend_decodeBoolForKey_(coderCopy, v16, @"hasAllDigits", v17, v18, v19);
      v9->_styleSampleCount = objc_msgSend_decodeIntegerForKey_(coderCopy, v20, @"styleSampleCount", v21, v22, v23);
      v9->_samplesWithoutStylePredictionCount = objc_msgSend_decodeIntegerForKey_(coderCopy, v24, @"sampleWithoutStylePredictionCount", v25, v26, v27);
      v28 = MEMORY[0x1E695DFD8];
      v29 = objc_opt_class();
      v30 = objc_opt_class();
      v35 = objc_msgSend_setWithObjects_(v28, v31, v29, v32, v33, v34, v30, 0);
      v39 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v36, v35, @"characterCoverage", v37, v38);
      characterCoverage = v9->_characterCoverage;
      v9->_characterCoverage = v39;

      v41 = objc_opt_class();
      v45 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v42, v41, @"inventoryStorageURL", v43, v44);
      inventoryStorageURL = v9->_inventoryStorageURL;
      v9->_inventoryStorageURL = v45;

      v47 = objc_opt_class();
      v51 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v48, v47, @"inventoryRelativePath", v49, v50);
      inventoryRelativePath = v9->_inventoryRelativePath;
      v9->_inventoryRelativePath = v51;
    }
  }

  return v9;
}

- (id)description
{
  v79 = MEMORY[0x1E696AEC0];
  if (objc_msgSend_isGenerationAllowed(self, a2, v2, v3, v4, v5))
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v78 = v12;
  v77 = objc_msgSend_personalizedSynthesisModelState(self, v7, v8, v9, v10, v11);
  if (objc_msgSend_hasAllDigits(self, v13, v14, v15, v16, v17))
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v24 = objc_msgSend_styleSampleCount(self, v18, v19, v20, v21, v22);
  v30 = objc_msgSend_samplesWithoutStylePredictionCount(self, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_inventoryRelativePath(self, v31, v32, v33, v34, v35);
  v42 = objc_msgSend_characterCoverage(self, v37, v38, v39, v40, v41);
  v48 = objc_msgSend_count(v42, v43, v44, v45, v46, v47);
  v54 = objc_msgSend_characterCoverage(self, v49, v50, v51, v52, v53);
  v60 = objc_msgSend_allObjects(v54, v55, v56, v57, v58, v59);
  v65 = objc_msgSend_sortedArrayUsingSelector_(v60, v61, sel_compare_, v62, v63, v64);
  v70 = objc_msgSend_componentsJoinedByString_(v65, v66, @",", v67, v68, v69);
  v75 = objc_msgSend_stringWithFormat_(v79, v71, @"isGenerationAllowed: %@, personalizedSynthesisModelState: %@, hasAllDigits: %@, styleSampleCount: %ld, samplesWithoutStylePredictionCount: %ld, inventory relative path: %@, character coverage (len %ld): %@", v72, v73, v74, v78, v77, v23, v24, v30, v36, v48, v70);

  return v75;
}

@end