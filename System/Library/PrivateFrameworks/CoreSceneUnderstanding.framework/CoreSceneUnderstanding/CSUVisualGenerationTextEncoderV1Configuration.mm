@interface CSUVisualGenerationTextEncoderV1Configuration
+ (id)VisualGenerationTextEncoderV1ConfigurationForRevision:(int64_t)revision error:(id *)error;
+ (id)availableRevisions;
+ (id)pathForResource:(id)resource ofType:(id)type inDirectory:(id)directory;
- (id)initVisualGenerationTextEncoderV1ConfigurationForRevision:(int64_t)revision vocabularyModelPath:(id)path tokenEmbeddingNetworkPath:(id)networkPath textEncoderNetworkPath:(id)encoderNetworkPath;
- (int)espressoExecutionEngine;
@end

@implementation CSUVisualGenerationTextEncoderV1Configuration

+ (id)pathForResource:(id)resource ofType:(id)type inDirectory:(id)directory
{
  v72[3] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  typeCopy = type;
  directoryCopy = directory;
  v10 = MEMORY[0x1E696AAE8];
  v63 = resourceCopy;
  v64 = typeCopy;
  v11 = objc_opt_class();
  v65 = objc_msgSend_bundleForClass_(v10, v12, v11, v13, v14);
  v18 = objc_msgSend_stringByAppendingPathComponent_(directoryCopy, v15, resourceCopy, v16, v17);
  v66 = objc_msgSend_stringByAppendingPathExtension_(v18, v19, typeCopy, v20, v21);

  v23 = objc_msgSend_pathForResource_ofType_inDirectory_(v65, v22, resourceCopy, typeCopy, directoryCopy);
  v27 = v23;
  if (v23)
  {
    v28 = v23;
  }

  else
  {
    v29 = objc_msgSend_stringByAppendingPathComponent_(@"/Library/Application Support/com.apple.CoreSceneUnderstanding", v24, v66, v25, v26, resourceCopy, typeCopy);
    v72[0] = v29;
    v30 = NSHomeDirectory();
    v34 = objc_msgSend_stringByAppendingPathComponent_(@"Library/Application Support/com.apple.CoreSceneUnderstanding", v31, v66, v32, v33);
    v38 = objc_msgSend_stringByAppendingPathComponent_(v30, v35, v34, v36, v37);
    v72[1] = v38;
    v42 = objc_msgSend_stringByAppendingPathComponent_(@"/var/mobile/Library/Application Support/com.apple.CoreSceneUnderstanding", v39, v66, v40, v41);
    v72[2] = v42;
    v45 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v43, v72, 3, v44);

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v46 = v45;
    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v67, v71, 16);
    if (v48)
    {
      v49 = *v68;
LABEL_5:
      v50 = 0;
      while (1)
      {
        if (*v68 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v28 = *(*(&v67 + 1) + 8 * v50);
        v55 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v51, v52, v53, v54);
        v59 = objc_msgSend_fileExistsAtPath_(v55, v56, v28, v57, v58);

        if (v59)
        {
          break;
        }

        if (v48 == ++v50)
        {
          v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v60, &v67, v71, 16);
          if (v48)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v28 = 0;
    }
  }

  v61 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)VisualGenerationTextEncoderV1ConfigurationForRevision:(int64_t)revision error:(id *)error
{
  v7 = MEMORY[0x1E696AAE8];
  v8 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v7, v9, v8, v10, v11);
  if (objc_msgSend__resolvedRevision_(self, v13, revision, v14, v15) == 1)
  {
    v19 = objc_msgSend_pathForResource_ofType_inDirectory_(self, v16, @"spiece", @"model", @"models/VisualGeneration/v1.0/");
    v21 = objc_msgSend_pathForResource_ofType_inDirectory_(self, v20, @"dreamotorch_2kbcv9xagr_100_clip_embedder", @"espresso.net", @"models/VisualGeneration/v1.0/");
    v22 = [self alloc];
    inited = objc_msgSend_initVisualGenerationTextEncoderV1ConfigurationForRevision_vocabularyModelPath_tokenEmbeddingNetworkPath_textEncoderNetworkPath_(v22, v23, 1, v19, 0, v21);
LABEL_5:

    goto LABEL_6;
  }

  if (error)
  {
    v25 = MEMORY[0x1E696AEC0];
    v19 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v16, revision, v17, v18);
    v21 = objc_msgSend_stringWithFormat_(v25, v26, @"Unsupported VisualGenerationTextEncoderV1 revision %@", v27, v28, v19);
    objc_msgSend_errorForUnsupportedRevision_(CSUError, v29, v21, v30, v31);
    *error = inited = 0;
    goto LABEL_5;
  }

  inited = 0;
LABEL_6:

  return inited;
}

- (id)initVisualGenerationTextEncoderV1ConfigurationForRevision:(int64_t)revision vocabularyModelPath:(id)path tokenEmbeddingNetworkPath:(id)networkPath textEncoderNetworkPath:(id)encoderNetworkPath
{
  pathCopy = path;
  encoderNetworkPathCopy = encoderNetworkPath;
  v30.receiver = self;
  v30.super_class = CSUVisualGenerationTextEncoderV1Configuration;
  v11 = [(CSUVisualGenerationTextEncoderV1Configuration *)&v30 init];
  v16 = v11;
  if (v11)
  {
    v11->_revision = revision;
    v17 = objc_msgSend_copy(pathCopy, v12, v13, v14, v15);
    vocabularyModelPath = v16->_vocabularyModelPath;
    v16->_vocabularyModelPath = v17;

    v16->_maximumSequenceLength = 77;
    v16->_inputIsLowerCase = 1;
    inputTextIDTensorName = v16->_inputTextIDTensorName;
    v16->_inputTextIDTensorName = @"ids";

    v24 = objc_msgSend_copy(encoderNetworkPathCopy, v20, v21, v22, v23);
    textEncoderNetworkPath = v16->_textEncoderNetworkPath;
    v16->_textEncoderNetworkPath = v24;

    outputLastHiddenState = v16->_outputLastHiddenState;
    v16->_outputLastHiddenState = @"last_hidden_state";

    outputCLIPPooledLayer = v16->_outputCLIPPooledLayer;
    v16->_outputCLIPPooledLayer = @"pooled_embedding";

    v28 = v16;
  }

  return v16;
}

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 1, v4, v5);
  v10 = objc_msgSend_copy(v2, v6, v7, v8, v9);

  return v10;
}

- (int)espressoExecutionEngine
{
  v19 = *MEMORY[0x1E69E9840];
  objc_msgSend_supportedComputeDevices(self, a2, v2, v3, v4);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (v11)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            LODWORD(v8) = sub_1AC08405C(v11);
            goto LABEL_11;
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v18, 16);
    }

    while (v8);
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

@end