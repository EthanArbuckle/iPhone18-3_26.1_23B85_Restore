@interface CHRecognizerInferenceCache
- (CHRecognizerInferenceCache)init;
- (id)debugDescription;
- (id)description;
- (id)retrieveActivationMatrixForDrawing:(id)drawing recognitionEngineCachingKey:(id)key outStrokeIndexMapping:(id *)mapping outStrokeEndings:(id *)endings outPrincipalPoints:(id *)points;
- (void)cacheActivationMatrix:(id)matrix strokeIndexMapping:(id)mapping strokeEndings:(id)endings principalPoints:(id)points drawing:(id)drawing recognitionEngineCachingKey:(id)key;
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

- (void)cacheActivationMatrix:(id)matrix strokeIndexMapping:(id)mapping strokeEndings:(id)endings principalPoints:(id)points drawing:(id)drawing recognitionEngineCachingKey:(id)key
{
  matrixCopy = matrix;
  mappingCopy = mapping;
  endingsCopy = endings;
  pointsCopy = points;
  drawingCopy = drawing;
  keyCopy = key;
  if (matrixCopy)
  {
    if (endingsCopy)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_cachedActivationMatrices, v18, matrixCopy, keyCopy, v19, v20);
      objc_msgSend_setObject_forKeyedSubscript_(self->_cachedStrokeIndexMappings, v22, mappingCopy, keyCopy, v23, v24);
      objc_msgSend_setObject_forKeyedSubscript_(self->_cachedStrokeEndings, v25, endingsCopy, keyCopy, v26, v27);
      if (pointsCopy)
      {
        objc_msgSend_setObject_forKeyedSubscript_(self->_cachedPrincipalPoints, v28, pointsCopy, keyCopy, v29, v30);
      }
    }
  }

  lastDrawing = self->_lastDrawing;
  self->_lastDrawing = drawingCopy;
}

- (id)retrieveActivationMatrixForDrawing:(id)drawing recognitionEngineCachingKey:(id)key outStrokeIndexMapping:(id *)mapping outStrokeEndings:(id *)endings outPrincipalPoints:(id *)points
{
  drawingCopy = drawing;
  keyCopy = key;
  v44 = drawingCopy;
  if (!objc_msgSend_isEqualToDrawing_(drawingCopy, v13, self->_lastDrawing, v14, v15, v16))
  {
    objc_msgSend_clearCache(self, v17, v18, v19, v20, v21);
    v32 = 0;
    v37 = 0;
    v27 = 0;
    v22 = 0;
    if (!mapping)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (keyCopy)
  {
    v22 = objc_msgSend_objectForKeyedSubscript_(self->_cachedActivationMatrices, v17, keyCopy, v19, v20, v21);
    v27 = objc_msgSend_objectForKeyedSubscript_(self->_cachedStrokeIndexMappings, v23, keyCopy, v24, v25, v26);
    v32 = objc_msgSend_objectForKeyedSubscript_(self->_cachedStrokeEndings, v28, keyCopy, v29, v30, v31);
    v37 = objc_msgSend_objectForKeyedSubscript_(self->_cachedPrincipalPoints, v33, keyCopy, v34, v35, v36);
    if (!mapping)
    {
      goto LABEL_7;
    }

LABEL_6:
    v38 = v27;
    *mapping = v27;
    goto LABEL_7;
  }

  v32 = 0;
  v37 = 0;
  v27 = 0;
  v22 = 0;
  if (mapping)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (endings)
  {
    v39 = v32;
    *endings = v32;
  }

  if (points)
  {
    v40 = v37;
    *points = v37;
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