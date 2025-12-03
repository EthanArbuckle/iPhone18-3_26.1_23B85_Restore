@interface CSUCoreMLInference
- (BOOL)predict:(id *)predict;
- (BOOL)setInputFeatures:(id)features error:(id *)error;
- (id)getInputMLMutliArrayFor:(id)for WithShape:(id)shape error:(id *)error;
- (id)getInputMLMutliArrayFor:(id)for error:(id *)error;
- (id)getOutputFor:(id)for;
- (void)setOutputBufferWithLayerName:(id)name withWidth:(unint64_t)width withHeight:(unint64_t)height withShape:(id)shape withPixelFormat:(unsigned int)format error:(id *)error;
@end

@implementation CSUCoreMLInference

- (id)getInputMLMutliArrayFor:(id)for error:(id *)error
{
  forCopy = for;
  v10 = objc_msgSend_objectForKeyedSubscript_(self->_inputDescriptionsByName, v7, forCopy, v8, v9);
  v15 = objc_msgSend_multiArrayConstraint(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_dataType(v15, v16, v17, v18, v19);

  v24 = objc_msgSend_objectForKeyedSubscript_(self->_inputDescriptionsByName, v21, forCopy, v22, v23);
  v29 = objc_msgSend_multiArrayConstraint(v24, v25, v26, v27, v28);
  v34 = objc_msgSend_shape(v29, v30, v31, v32, v33);

  v38 = objc_msgSend_objectForKeyedSubscript_(self->_inputDescriptionsByName, v35, forCopy, v36, v37);
  v43 = objc_msgSend_multiArrayConstraint(v38, v39, v40, v41, v42);
  v48 = objc_msgSend_shapeConstraint(v43, v44, v45, v46, v47);
  v53 = objc_msgSend_enumeratedShapes(v48, v49, v50, v51, v52);

  v54 = objc_alloc(MEMORY[0x1E695FED0]);
  v56 = objc_msgSend_initWithShape_dataType_error_(v54, v55, v34, v20, error);
  v60 = v56;
  if (error && !v56)
  {
    v61 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v57, @"Could not create input MLMultiArray of type %ld and shape %@", v58, v59, v20, v34);
    v64 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v62, v61, *error, v63);
  }

  return v60;
}

- (id)getInputMLMutliArrayFor:(id)for WithShape:(id)shape error:(id *)error
{
  v79 = *MEMORY[0x1E69E9840];
  forCopy = for;
  shapeCopy = shape;
  v13 = objc_msgSend_objectForKeyedSubscript_(self->_inputDescriptionsByName, v10, forCopy, v11, v12);
  v18 = objc_msgSend_multiArrayConstraint(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_dataType(v18, v19, v20, v21, v22);

  v27 = objc_msgSend_objectForKeyedSubscript_(self->_inputDescriptionsByName, v24, forCopy, v25, v26);
  v32 = objc_msgSend_multiArrayConstraint(v27, v28, v29, v30, v31);
  v37 = objc_msgSend_shapeConstraint(v32, v33, v34, v35, v36);
  v42 = objc_msgSend_enumeratedShapes(v37, v38, v39, v40, v41);

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v43 = v42;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v74, v78, 16);
  if (v45)
  {
    v46 = *v75;
    while (2)
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v75 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v74 + 1) + 8 * i);
        isEqualToArray = objc_msgSend_isEqualToArray_(shapeCopy, v49, v48, v50, v51);

        if (isEqualToArray)
        {
          v57 = v43;
          goto LABEL_11;
        }
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v53, &v74, v78, 16);
      if (v45)
      {
        continue;
      }

      break;
    }
  }

  v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v54, @"Specified shape %@ for input %@ is invalid, allowed shapes are %@ ", v55, v56, shapeCopy, forCopy, v43);
  v60 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v58, v57, *error, v59);
LABEL_11:

  v61 = objc_alloc(MEMORY[0x1E695FED0]);
  v63 = objc_msgSend_initWithShape_dataType_error_(v61, v62, shapeCopy, v23, error);
  v67 = v63;
  if (error && !v63)
  {
    v68 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v64, @"Could not create input MLMultiArray of type %ld and shape %@", v65, v66, v23, shapeCopy);
    v71 = objc_msgSend_errorForInternalErrorWithLocalizedDescription_underlyingError_(CSUError, v69, v68, *error, v70);
  }

  v72 = *MEMORY[0x1E69E9840];

  return v67;
}

- (BOOL)setInputFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  v7 = objc_alloc(MEMORY[0x1E695FE48]);
  v10 = objc_msgSend_initWithDictionary_error_(v7, v8, featuresCopy, error, v9);
  featsProvider = self->_featsProvider;
  self->_featsProvider = v10;

  LOBYTE(self) = self->_featsProvider != 0;
  return self;
}

- (void)setOutputBufferWithLayerName:(id)name withWidth:(unint64_t)width withHeight:(unint64_t)height withShape:(id)shape withPixelFormat:(unsigned int)format error:(id *)error
{
  nameCopy = name;
  shapeCopy = shape;
  pixelBufferOut = 0;
  v15 = MEMORY[0x1E695DF20];
  v20 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v16, v17, v18, v19);
  v24 = objc_msgSend_dictionaryWithObjectsAndKeys_(v15, v21, v20, v22, v23, *MEMORY[0x1E69660D8], 0);
  pixelBufferAttributesForIOSurfaceBacking = self->_pixelBufferAttributesForIOSurfaceBacking;
  self->_pixelBufferAttributesForIOSurfaceBacking = v24;

  v26 = CVPixelBufferCreate(*MEMORY[0x1E695E480], width, height, 0x4C303068u, self->_pixelBufferAttributesForIOSurfaceBacking, &pixelBufferOut);
  if (v26)
  {
    v30 = 1;
  }

  else
  {
    v30 = pixelBufferOut == 0;
  }

  if (v30)
  {
    v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v27, @"Could not create CVPixelBuffer - return status is %d", v28, v29, v26);
    *error = objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v32, v31, v33, v34);
  }

  else
  {
    v35 = objc_opt_new();
    outputBackings = self->_outputBackings;
    self->_outputBackings = v35;

    v37 = self->_outputBackings;
    v38 = objc_alloc(MEMORY[0x1E695FED0]);
    v41 = objc_msgSend_initWithPixelBuffer_shape_(v38, v39, pixelBufferOut, shapeCopy, v40);
    objc_msgSend_setObject_forKey_(v37, v42, v41, nameCopy, v43);

    CFRelease(pixelBufferOut);
  }
}

- (BOOL)predict:(id *)predict
{
  v5 = objc_opt_new();
  objc_msgSend_setOutputBackings_(v5, v6, self->_outputBackings, v7, v8);
  v13 = objc_msgSend_date(MEMORY[0x1E695DF00], v9, v10, v11, v12);
  v15 = objc_msgSend_predictionFromFeatures_options_error_(self->_model, v14, self->_featsProvider, v5, predict);
  outputs = self->_outputs;
  self->_outputs = v15;

  objc_msgSend_timeIntervalSinceNow(v13, v17, v18, v19, v20);
  v23 = self->_outputs;
  if (predict && !v23)
  {
    *predict = objc_msgSend_errorWithCode_message_(CSUError, v21, 12, @"Model could not generate the output", v22);
  }

  return v23 != 0;
}

- (id)getOutputFor:(id)for
{
  v5 = objc_msgSend_featureValueForName_(self->_outputs, a2, for, v3, v4);
  v10 = objc_msgSend_multiArrayValue(v5, v6, v7, v8, v9);

  return v10;
}

@end