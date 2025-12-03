@interface CSUSceneNetV5SceneTaxonomyAttributes
- (CSUSceneNetV5SceneTaxonomyAttributes)initWithAttributePaths:(id)paths error:(id *)error;
- (id)attributeForKey:(id)key label:(id)label defaultValue:(id)value;
@end

@implementation CSUSceneNetV5SceneTaxonomyAttributes

- (CSUSceneNetV5SceneTaxonomyAttributes)initWithAttributePaths:(id)paths error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v47.receiver = self;
  v47.super_class = CSUSceneNetV5SceneTaxonomyAttributes;
  v11 = [(CSUSceneNetV5SceneTaxonomyAttributes *)&v47 init];
  if (v11)
  {
    v12 = objc_msgSend_copy(pathsCopy, v7, v8, v9, v10);
    attributePaths = v11->_attributePaths;
    v11->_attributePaths = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributes = v11->_attributes;
    v11->_attributes = v14;

    v20 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v16, v17, v18, v19);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v21 = v11->_attributePaths;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v43, v48, 16);
    if (v26)
    {
      v27 = *v44;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v44 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v43 + 1) + 8 * i);
          v30 = objc_msgSend_objectForKeyedSubscript_(v11->_attributePaths, v23, v29, v24, v25);
          if ((objc_msgSend_fileExistsAtPath_(v20, v31, v30, v32, v33) & 1) == 0)
          {
            if (error)
            {
              v38 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v34, @"Data file %@ for attribute %@ does not exist!", v35, v36, v30, v29, v43);
              *error = objc_msgSend_errorWithCode_message_(CSUError, v39, 10, v38, v40);
            }

            v37 = 0;
            goto LABEL_14;
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v43, v48, 16);
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v37 = v11;
LABEL_14:
  }

  else if (error)
  {
    objc_msgSend_errorWithCode_message_(CSUError, v7, 4, @"Failed to allocate memory for attribute manager", v10);
    *error = v37 = 0;
  }

  else
  {
    v37 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)attributeForKey:(id)key label:(id)label defaultValue:(id)value
{
  keyCopy = key;
  labelCopy = label;
  valueCopy = value;
  v14 = objc_msgSend_objectForKeyedSubscript_(self->_attributePaths, v11, keyCopy, v12, v13);

  if (!v14)
  {
    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"Invalid attribute key %@", v16, v17, keyCopy);
    v55 = objc_msgSend_errorWithCode_message_(CSUError, v53, 10, v32, v54);
    objc_msgSend_logInternalError_(CSUError, v56, v55, v57, v58);

    goto LABEL_9;
  }

  v18 = objc_msgSend_objectForKeyedSubscript_(self->_attributes, v15, keyCopy, v16, v17);

  if (!v18)
  {
    v22 = MEMORY[0x1E695DF20];
    v23 = MEMORY[0x1E695DFF8];
    v24 = objc_msgSend_objectForKeyedSubscript_(self->_attributePaths, v19, keyCopy, v20, v21);
    v28 = objc_msgSend_fileURLWithPath_(v23, v25, v24, v26, v27);
    v66 = 0;
    v31 = objc_msgSend_dictionaryWithContentsOfURL_error_(v22, v29, v28, &v66, v30);
    v32 = v66;

    if (v31)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_attributes, v33, v31, keyCopy, v35);

      goto LABEL_5;
    }
    v60 = ;
    v62 = objc_msgSend_errorWithCode_message_underlyingError_(CSUError, v61, 1, v60, v32);
    objc_msgSend_logInternalError_(CSUError, v63, v62, v64, v65);

LABEL_9:
    v52 = 0;
    goto LABEL_10;
  }

LABEL_5:
  v36 = objc_msgSend_objectForKeyedSubscript_(self->_attributes, v19, keyCopy, v20, v21);
  v40 = objc_msgSend_objectForKeyedSubscript_(v36, v37, labelCopy, v38, v39);

  v44 = v40;
  if (!v40)
    v45 = {;
    v48 = objc_msgSend_errorWithCode_message_(CSUError, v46, 8, v45, v47);
    objc_msgSend_logInternalError_(CSUError, v49, v48, v50, v51);

    v44 = valueCopy;
  }

  v52 = v44;

LABEL_10:

  return v52;
}

@end