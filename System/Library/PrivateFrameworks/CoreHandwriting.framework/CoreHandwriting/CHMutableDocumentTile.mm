@interface CHMutableDocumentTile
- (CGRect)contentArea;
- (CGRect)contextArea;
- (CGRect)overlapArea;
- (CHMutableDocumentTile)initWithTilePosition:(id)position scale:(double)scale;
- (CHMutableDocumentTile)initWithTilePosition:(id)position subtilePositions:(id)positions scale:(double)scale origin:(CGPoint)origin orderedStrokeIdentifiers:(id)identifiers contentStrokeIdentifiers:(id)strokeIdentifiers overlapStrokeIdentifiers:(id)overlapStrokeIdentifiers contextStrokeIdentifiers:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addContentStroke:(id)stroke;
- (void)addContextStroke:(id)stroke;
- (void)addOverlapStroke:(id)stroke;
- (void)estimateScaleUsingStrokeBounds:(id)bounds defaultTileSizeFactor:(double)factor;
- (void)removeStroke:(id)stroke;
@end

@implementation CHMutableDocumentTile

- (CHMutableDocumentTile)initWithTilePosition:(id)position scale:(double)scale
{
  positionCopy = position;
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v14 = objc_msgSend_set(MEMORY[0x1E695DFD8], v9, v10, v11, v12, v13);
  v20 = objc_msgSend_set(MEMORY[0x1E695DFD8], v15, v16, v17, v18, v19);
  v26 = objc_msgSend_set(MEMORY[0x1E695DFD8], v21, v22, v23, v24, v25);
  v28 = objc_msgSend_initWithTilePosition_subtilePositions_scale_origin_orderedStrokeIdentifiers_contentStrokeIdentifiers_overlapStrokeIdentifiers_contextStrokeIdentifiers_(self, v27, positionCopy, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v14, v20, v26, scale, v7, v8);

  return v28;
}

- (CHMutableDocumentTile)initWithTilePosition:(id)position subtilePositions:(id)positions scale:(double)scale origin:(CGPoint)origin orderedStrokeIdentifiers:(id)identifiers contentStrokeIdentifiers:(id)strokeIdentifiers overlapStrokeIdentifiers:(id)overlapStrokeIdentifiers contextStrokeIdentifiers:(id)self0
{
  y = origin.y;
  x = origin.x;
  positionCopy = position;
  positionsCopy = positions;
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  overlapStrokeIdentifiersCopy = overlapStrokeIdentifiers;
  contextStrokeIdentifiersCopy = contextStrokeIdentifiers;
  v30 = objc_msgSend_set(MEMORY[0x1E695DFD8], v25, v26, v27, v28, v29);
  v36 = objc_msgSend_set(MEMORY[0x1E695DFD8], v31, v32, v33, v34, v35);
  v42 = objc_msgSend_set(MEMORY[0x1E695DFD8], v37, v38, v39, v40, v41);
  v80.receiver = self;
  v80.super_class = CHMutableDocumentTile;
  v43 = [(CHDocumentTile *)&v80 initWithTilePosition:positionCopy subtilePositions:MEMORY[0x1E695E0F0] scale:MEMORY[0x1E695E0F0] origin:v30 orderedStrokeIdentifiers:v36 contentStrokeIdentifiers:v42 overlapStrokeIdentifiers:scale contextStrokeIdentifiers:x, y];

  if (v43)
  {
    v49 = objc_msgSend_mutableCopy(positionsCopy, v44, v45, v46, v47, v48);
    subtilePositions = v43->_subtilePositions;
    v43->_subtilePositions = v49;

    v56 = objc_msgSend_mutableCopy(identifiersCopy, v51, v52, v53, v54, v55);
    orderedStrokeIdentifiers = v43->_orderedStrokeIdentifiers;
    v43->_orderedStrokeIdentifiers = v56;

    v63 = objc_msgSend_mutableCopy(strokeIdentifiersCopy, v58, v59, v60, v61, v62);
    contentStrokeIdentifiers = v43->_contentStrokeIdentifiers;
    v43->_contentStrokeIdentifiers = v63;

    v70 = objc_msgSend_mutableCopy(overlapStrokeIdentifiersCopy, v65, v66, v67, v68, v69);
    overlapStrokeIdentifiers = v43->_overlapStrokeIdentifiers;
    v43->_overlapStrokeIdentifiers = v70;

    v77 = objc_msgSend_mutableCopy(contextStrokeIdentifiersCopy, v72, v73, v74, v75, v76);
    contextStrokeIdentifiers = v43->_contextStrokeIdentifiers;
    v43->_contextStrokeIdentifiers = v77;
  }

  return v43;
}

- (void)addContentStroke:(id)stroke
{
  strokeCopy = stroke;
  objc_msgSend_addObject_(self->_orderedStrokeIdentifiers, v4, strokeCopy, v5, v6, v7);
  objc_msgSend_addObject_(self->_contentStrokeIdentifiers, v8, strokeCopy, v9, v10, v11);
}

- (void)addOverlapStroke:(id)stroke
{
  strokeCopy = stroke;
  objc_msgSend_addObject_(self->_orderedStrokeIdentifiers, v4, strokeCopy, v5, v6, v7);
  objc_msgSend_addObject_(self->_overlapStrokeIdentifiers, v8, strokeCopy, v9, v10, v11);
}

- (void)addContextStroke:(id)stroke
{
  strokeCopy = stroke;
  if ((objc_msgSend_containsObject_(self->_orderedStrokeIdentifiers, v4, strokeCopy, v5, v6, v7) & 1) == 0)
  {
    objc_msgSend_addObject_(self->_orderedStrokeIdentifiers, v8, strokeCopy, v9, v10, v11);
    objc_msgSend_addObject_(self->_contextStrokeIdentifiers, v12, strokeCopy, v13, v14, v15);
  }
}

- (void)removeStroke:(id)stroke
{
  strokeCopy = stroke;
  objc_msgSend_removeObject_(self->_orderedStrokeIdentifiers, v4, strokeCopy, v5, v6, v7);
  objc_msgSend_removeObject_(self->_contentStrokeIdentifiers, v8, strokeCopy, v9, v10, v11);
  objc_msgSend_removeObject_(self->_overlapStrokeIdentifiers, v12, strokeCopy, v13, v14, v15);
  objc_msgSend_removeObject_(self->_contextStrokeIdentifiers, v16, strokeCopy, v17, v18, v19);
}

- (void)estimateScaleUsingStrokeBounds:(id)bounds defaultTileSizeFactor:(double)factor
{
  v108 = *MEMORY[0x1E69E9840];
  boundsCopy = bounds;
  v90 = objc_msgSend_mutableCopy(self->_contentStrokeIdentifiers, v6, v7, v8, v9, v10);
  objc_msgSend_unionSet_(v90, v11, self->_overlapStrokeIdentifiers, v12, v13, v14);
  if (objc_msgSend_count(v90, v15, v16, v17, v18, v19))
  {
    if (objc_msgSend_count(v90, v20, v21, v22, v23, v24) < 0x21)
    {
      factorCopy = factor;
    }

    else
    {
      v30 = objc_msgSend_count(v90, v25, v26, v27, v28, v29);
      if (v30)
      {
        if (!(v30 >> 61))
        {
          operator new();
        }

        sub_1836D58DC();
      }

      memset(v92, 0, sizeof(v92));
      v32 = v90;
      if (objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, v92, v107, 16, v34))
      {
        v39 = objc_msgSend_objectForKeyedSubscript_(boundsCopy, v35, **(&v92[0] + 1), v36, v37, v38);
        objc_msgSend_ch_CGRectValue(v39, v40, v41, v42, v43, v44);

        operator new();
      }

      v45 = sqrt(MEMORY[0]);
      factorCopy = 1.0;
      if (v45 / 400.0 <= 1.0)
      {
        v46 = 16.0 / (v45 + 0.000001);
        if (v46 > 1.0)
        {
          factorCopy = 1.0 / fmin((1 << vcvtpd_s64_f64(log2(v46))), 4.0);
        }
      }

      else
      {
        factorCopy = (1 << vcvtpd_s64_f64(log2(v45 / 400.0)));
      }

      if (factorCopy != factor)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v47 = qword_1EA84DCB8;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v53 = objc_msgSend_tilePosition(self, v48, v49, v50, v51, v52);
          v59 = objc_msgSend_row(v53, v54, v55, v56, v57, v58);
          v65 = objc_msgSend_tilePosition(self, v60, v61, v62, v63, v64);
          v71 = objc_msgSend_column(v65, v66, v67, v68, v69, v70);
          v77 = objc_msgSend_tilePosition(self, v72, v73, v74, v75, v76);
          v83 = objc_msgSend_subtileIndex(v77, v78, v79, v80, v81, v82);
          v89 = objc_msgSend_count(self->_orderedStrokeIdentifiers, v84, v85, v86, v87, v88);
          *buf = 134219522;
          v94 = v59;
          v95 = 2048;
          v96 = v71;
          v97 = 2112;
          v98 = v83;
          v99 = 2048;
          v100 = v89;
          v101 = 2048;
          v102 = factorCopy;
          v103 = 2048;
          factorCopy2 = factor;
          v105 = 2048;
          v106 = v45;
          _os_log_impl(&dword_18366B000, v47, OS_LOG_TYPE_DEBUG, "Adjusting scale factor of tile [%ld, %ld, %@] with %lu strokes to %.2f from default %.2f. Median stroke diagonal = %.3f.", buf, 0x48u);
        }
      }

      operator delete(0);
    }

    self->super._scale = 1.0 / factorCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHDocumentTile alloc];
  v10 = objc_msgSend_tilePosition(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_copy(self->_subtilePositions, v11, v12, v13, v14, v15);
  scale = self->super._scale;
  x = self->_contextArea.origin.x;
  y = self->_contextArea.origin.y;
  v25 = objc_msgSend_copy(self->_orderedStrokeIdentifiers, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_copy(self->_contentStrokeIdentifiers, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_copy(self->_overlapStrokeIdentifiers, v32, v33, v34, v35, v36);
  v43 = objc_msgSend_copy(self->_contextStrokeIdentifiers, v38, v39, v40, v41, v42);
  v45 = objc_msgSend_initWithTilePosition_subtilePositions_scale_origin_orderedStrokeIdentifiers_contentStrokeIdentifiers_overlapStrokeIdentifiers_contextStrokeIdentifiers_(v4, v44, v10, v16, v25, v31, v37, v43, scale, x, y);

  return v45;
}

- (CGRect)contentArea
{
  x = self->_contentArea.origin.x;
  y = self->_contentArea.origin.y;
  width = self->_contentArea.size.width;
  height = self->_contentArea.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)overlapArea
{
  x = self->_overlapArea.origin.x;
  y = self->_overlapArea.origin.y;
  width = self->_overlapArea.size.width;
  height = self->_overlapArea.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contextArea
{
  x = self->_contextArea.origin.x;
  y = self->_contextArea.origin.y;
  width = self->_contextArea.size.width;
  height = self->_contextArea.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end