@interface CHRecognizerInferenceCache
- (CHRecognizerInferenceCache)init;
- (id)debugDescription;
- (id)description;
- (id)retrieveActivationMatrixForDrawing:(id)a3 recognitionEngineCachingKey:(id)a4 outStrokeIndexMapping:(id *)a5 outStrokeEndings:(id *)a6 outPrincipalPoints:(id *)a7;
- (void)cacheActivationMatrix:(id)a3 strokeIndexMapping:(id)a4 strokeEndings:(id)a5 principalPoints:(id)a6 drawing:(id)a7 recognitionEngineCachingKey:(id)a8;
- (void)clearCache;
@end

@implementation CHRecognizerInferenceCache

- (CHRecognizerInferenceCache)init
{
  v14.receiver = self;
  v14.super_class = CHRecognizerInferenceCache;
  v2 = [(CHRecognizerInferenceCache *)&v14 init];
  v3 = v2;
  if (v2)
  {
    lastDrawing = v2->_lastDrawing;
    v2->_lastDrawing = 0;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedActivationMatrices = v3->_cachedActivationMatrices;
    v3->_cachedActivationMatrices = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedStrokeIndexMappings = v3->_cachedStrokeIndexMappings;
    v3->_cachedStrokeIndexMappings = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedStrokeEndings = v3->_cachedStrokeEndings;
    v3->_cachedStrokeEndings = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedPrincipalPoints = v3->_cachedPrincipalPoints;
    v3->_cachedPrincipalPoints = v11;
  }

  return v3;
}

- (void)cacheActivationMatrix:(id)a3 strokeIndexMapping:(id)a4 strokeEndings:(id)a5 principalPoints:(id)a6 drawing:(id)a7 recognitionEngineCachingKey:(id)a8
{
  v32 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21 = a8;
  if (v32)
  {
    if (v15)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_cachedActivationMatrices, v18, v32, v21, v19, v20);
      objc_msgSend_setObject_forKeyedSubscript_(self->_cachedStrokeIndexMappings, v22, v14, v21, v23, v24);
      objc_msgSend_setObject_forKeyedSubscript_(self->_cachedStrokeEndings, v25, v15, v21, v26, v27);
      if (v16)
      {
        objc_msgSend_setObject_forKeyedSubscript_(self->_cachedPrincipalPoints, v28, v16, v21, v29, v30);
      }
    }
  }

  lastDrawing = self->_lastDrawing;
  self->_lastDrawing = v17;
}

- (id)retrieveActivationMatrixForDrawing:(id)a3 recognitionEngineCachingKey:(id)a4 outStrokeIndexMapping:(id *)a5 outStrokeEndings:(id *)a6 outPrincipalPoints:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v44 = v11;
  if (!objc_msgSend_isEqualToDrawing_(v11, v13, self->_lastDrawing, v14, v15, v16))
  {
    objc_msgSend_clearCache(self, v17, v18, v19, v20, v21);
    v32 = 0;
    v37 = 0;
    v27 = 0;
    v22 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    v22 = objc_msgSend_objectForKeyedSubscript_(self->_cachedActivationMatrices, v17, v12, v19, v20, v21);
    v27 = objc_msgSend_objectForKeyedSubscript_(self->_cachedStrokeIndexMappings, v23, v12, v24, v25, v26);
    v32 = objc_msgSend_objectForKeyedSubscript_(self->_cachedStrokeEndings, v28, v12, v29, v30, v31);
    v37 = objc_msgSend_objectForKeyedSubscript_(self->_cachedPrincipalPoints, v33, v12, v34, v35, v36);
    if (!a5)
    {
      goto LABEL_7;
    }

LABEL_6:
    v38 = v27;
    *a5 = v27;
    goto LABEL_7;
  }

  v32 = 0;
  v37 = 0;
  v27 = 0;
  v22 = 0;
  if (a5)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (a6)
  {
    v39 = v32;
    *a6 = v32;
  }

  if (a7)
  {
    v40 = v37;
    *a7 = v37;
  }

  v41 = v22;

  return v22;
}

- (void)clearCache
{
  lastDrawing = self->_lastDrawing;
  self->_lastDrawing = 0;

  objc_msgSend_removeAllObjects(self->_cachedActivationMatrices, v4, v5, v6, v7, v8);
  objc_msgSend_removeAllObjects(self->_cachedStrokeIndexMappings, v9, v10, v11, v12, v13);
  objc_msgSend_removeAllObjects(self->_cachedStrokeEndings, v14, v15, v16, v17, v18);
  cachedPrincipalPoints = self->_cachedPrincipalPoints;

  objc_msgSend_removeAllObjects(cachedPrincipalPoints, v19, v20, v21, v22, v23);
}

- (id)description
{
  v7 = objc_msgSend_allKeys(self->_cachedActivationMatrices, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_componentsJoinedByString_(v7, v8, @", ", v9, v10, v11);

  v13 = MEMORY[0x1E696AEC0];
  v19 = objc_msgSend_description(self->_lastDrawing, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_allKeys(self->_cachedActivationMatrices, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_count(v25, v26, v27, v28, v29, v30);
  v36 = objc_msgSend_stringWithFormat_(v13, v32, @"Inference cache size for drawing [%@]: %lu (%@)", v33, v34, v35, v19, v31, v12);

  return v36;
}

- (id)debugDescription
{
  v7 = objc_msgSend_allKeys(self->_cachedActivationMatrices, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_componentsJoinedByString_(v7, v8, @", ", v9, v10, v11);

  v13 = MEMORY[0x1E696AEC0];
  v19 = objc_msgSend_debugDescription(self->_lastDrawing, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_allKeys(self->_cachedActivationMatrices, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_count(v25, v26, v27, v28, v29, v30);
  v36 = objc_msgSend_stringWithFormat_(v13, v32, @"Inference cache size for drawing [%@]: %lu (%@)", v33, v34, v35, v19, v31, v12);

  return v36;
}

@end