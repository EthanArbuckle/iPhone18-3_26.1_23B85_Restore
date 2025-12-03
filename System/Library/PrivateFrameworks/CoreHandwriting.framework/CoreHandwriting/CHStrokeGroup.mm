@interface CHStrokeGroup
+ (BOOL)isStrokeGroupSet:(id)set equivalentToStrokeGroupSet:(id)groupSet;
+ (id)strokeGroupClosestToPoint:(CGPoint)point strokeGroups:(id)groups;
+ (id)strokeGroupContainingStrokeIdentifier:(id)identifier strokeGroups:(id)groups;
+ (id)strokeGroupContainingStrokeIdentifier:(id)identifier strokeGroups:(id)groups foundStrokeGroupIndex:(int64_t *)index;
+ (id)strokeGroupsClusteredByProximity:(id)proximity;
+ (id)strokeIdentifierToGroupIndexMappingForStrokeIdentifiers:(id)identifiers orderedStrokeGroups:(id)groups;
+ (void)strokeGroupsContainingPoint:(CGPoint)point strokeGroups:(id)groups groupProcessingBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToStrokeGroup:(id)group;
- (CGPath)newEstimatedBaselineForStrokesWithTokens:(id)tokens tokenStrokeIdentifiers:(id)identifiers;
- (CGPoint)firstStrokeOrigin;
- (CGRect)bounds;
- (CGSize)normalizedSize;
- (CGVector)averageWritingOrientation;
- (CHStrokeGroup)init;
- (CHStrokeGroup)initWithAncestorIdentifier:(int64_t)identifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification groupingConfidence:(double)confidence strategyIdentifier:(id)self0 firstStrokeOrigin:(CGPoint)self1;
- (CHStrokeGroup)initWithCoder:(id)coder;
- (CHStrokeGroup)initWithUniqueIdentifier:(int64_t)identifier ancestorIdentifier:(int64_t)ancestorIdentifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification groupingConfidence:(double)self0 strategyIdentifier:(id)self1 firstStrokeOrigin:(CGPoint)self2;
- (CHStrokeGroup)strokeGroupWithUpdatedStrategyIdentifier:(id)identifier classification:(int64_t)classification;
- (CRNormalizedQuad)boundingQuad;
- (NSString)description;
- (id)groupByAddingStrokeIdentifiers:(id)identifiers removingStrokeIdentifiers:(id)strokeIdentifiers firstStrokeIdentifier:(id)identifier lastStrokeIdentifier:(id)strokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification groupingConfidence:(double)confidence firstStrokeOrigin:(CGPoint)self0;
- (unint64_t)hash;
- (unint64_t)layoutDirection;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHStrokeGroup

- (CHStrokeGroup)init
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_ERROR, "Use the designated initializer instead", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v4 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    *v6 = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_FAULT, "Use the designated initializer instead", v6, 2u);
  }

LABEL_8:

  return 0;
}

- (CHStrokeGroup)initWithAncestorIdentifier:(int64_t)identifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification groupingConfidence:(double)confidence strategyIdentifier:(id)self0 firstStrokeOrigin:(CGPoint)self1
{
  y = origin.y;
  x = origin.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v18 = bounds.origin.y;
  v19 = bounds.origin.x;
  identifiersCopy = identifiers;
  strokeIdentifierCopy = strokeIdentifier;
  lastStrokeIdentifierCopy = lastStrokeIdentifier;
  strategyIdentifierCopy = strategyIdentifier;
  objc_opt_self();
  if (qword_1EA84CEF8 != -1)
  {
    dispatch_once(&qword_1EA84CEF8, &unk_1EF1BCB10);
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18377ED68;
  block[3] = &unk_1E6DDCCD0;
  block[4] = &v34;
  dispatch_sync(qword_1EA84CEF0, block);
  v28 = v35[3];
  _Block_object_dispose(&v34, 8);
  if (identifier == 0x7FFFFFFFFFFFFFFFLL)
  {
    StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithUniqueIdentifier_ancestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(self, v29, v28, v28, identifiersCopy, strokeIdentifierCopy, lastStrokeIdentifierCopy, classification, v19, v18, width, height, confidence, x, y, strategyIdentifierCopy);
  }

  else
  {
    StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithUniqueIdentifier_ancestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(self, v29, v28, identifier, identifiersCopy, strokeIdentifierCopy, lastStrokeIdentifierCopy, classification, v19, v18, width, height, confidence, x, y, strategyIdentifierCopy);
  }

  v31 = StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;

  return v31;
}

- (CHStrokeGroup)initWithUniqueIdentifier:(int64_t)identifier ancestorIdentifier:(int64_t)ancestorIdentifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification groupingConfidence:(double)self0 strategyIdentifier:(id)self1 firstStrokeOrigin:(CGPoint)self2
{
  y = origin.y;
  x = origin.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v20 = bounds.origin.y;
  v21 = bounds.origin.x;
  identifiersCopy = identifiers;
  strokeIdentifierCopy = strokeIdentifier;
  lastStrokeIdentifierCopy = lastStrokeIdentifier;
  strategyIdentifierCopy = strategyIdentifier;
  v39.receiver = self;
  v39.super_class = CHStrokeGroup;
  v27 = [(CHStrokeGroup *)&v39 init];
  v33 = v27;
  if (v27)
  {
    v27->_uniqueIdentifier = identifier;
    v27->_ancestorIdentifier = ancestorIdentifier;
    v34 = objc_msgSend_copy(identifiersCopy, v28, v29, v30, v31, v32);
    strokeIdentifiers = v33->_strokeIdentifiers;
    v33->_strokeIdentifiers = v34;

    objc_storeStrong(&v33->_firstStrokeIdentifier, strokeIdentifier);
    objc_storeStrong(&v33->_lastStrokeIdentifier, lastStrokeIdentifier);
    v33->_bounds.origin.x = v21;
    v33->_bounds.origin.y = v20;
    v33->_bounds.size.width = width;
    v33->_bounds.size.height = height;
    v33->_normalizedSize = *MEMORY[0x1E695F060];
    v33->_classification = classification;
    v33->_groupingConfidence = confidence;
    objc_storeStrong(&v33->_strategyIdentifier, strategyIdentifier);
    v33->_firstStrokeOrigin.x = x;
    v33->_firstStrokeOrigin.y = y;
  }

  return v33;
}

- (CHStrokeGroup)strokeGroupWithUpdatedStrategyIdentifier:(id)identifier classification:(int64_t)classification
{
  identifierCopy = identifier;
  v7 = [CHStrokeGroup alloc];
  v13 = objc_msgSend_uniqueIdentifier(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_ancestorIdentifier(self, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_strokeIdentifiers(self, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_firstStrokeIdentifier(self, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_lastStrokeIdentifier(self, v32, v33, v34, v35, v36);
  objc_msgSend_bounds(self, v38, v39, v40, v41, v42);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  objc_msgSend_groupingConfidence(self, v51, v52, v53, v54, v55);
  v57 = v56;
  objc_msgSend_firstStrokeOrigin(self, v58, v59, v60, v61, v62);
  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithUniqueIdentifier_ancestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v7, v63, v13, v19, v25, v31, v37, classification, v44, v46, v48, v50, v57, v64, v65, identifierCopy);

  return StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;
}

+ (BOOL)isStrokeGroupSet:(id)set equivalentToStrokeGroupSet:(id)groupSet
{
  v59 = *MEMORY[0x1E69E9840];
  setCopy = set;
  groupSetCopy = groupSet;
  v46 = setCopy;
  v47 = groupSetCopy;
  if (setCopy == groupSetCopy)
  {
    v44 = 1;
  }

  else
  {
    v12 = groupSetCopy;
    v13 = objc_msgSend_count(setCopy, v7, v8, v9, v10, v11);
    if (v13 == objc_msgSend_count(v12, v14, v15, v16, v17, v18))
    {
      v24 = objc_msgSend_mutableCopy(v12, v19, v20, v21, v22, v23);
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = setCopy;
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v53, v58, 16, v26);
      if (v27)
      {
        v28 = *v54;
        while (1)
        {
          v29 = 0;
LABEL_6:
          if (*v54 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v53 + 1) + 8 * v29);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v31 = v24;
          v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v49, v57, 16, v33);
          if (!v38)
          {
            break;
          }

          v39 = *v50;
LABEL_10:
          v40 = 0;
          while (1)
          {
            if (*v50 != v39)
            {
              objc_enumerationMutation(v31);
            }

            v41 = *(*(&v49 + 1) + 8 * v40);
            if (objc_msgSend_isEquivalentToStrokeGroup_(v30, v34, v41, v35, v36, v37))
            {
              break;
            }

            if (v38 == ++v40)
            {
              v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v49, v57, 16, v37);
              if (v38)
              {
                goto LABEL_10;
              }

              goto LABEL_22;
            }
          }

          objc_msgSend_removeObject_(v31, v34, v41, v35, v36, v37);

          if (++v29 != v27)
          {
            goto LABEL_6;
          }

          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v53, v58, 16, v43);
          v44 = 1;
          if (!v27)
          {
            goto LABEL_24;
          }
        }

LABEL_22:

        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

LABEL_24:
    }

    else
    {
      v44 = 0;
    }
  }

  return v44;
}

- (NSString)description
{
  v74.receiver = self;
  v74.super_class = CHStrokeGroup;
  v3 = [(CHStrokeGroup *)&v74 description];
  v9 = objc_msgSend_uniqueIdentifier(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_ancestorIdentifier(self, v10, v11, v12, v13, v14);
  objc_msgSend_bounds(self, v16, v17, v18, v19, v20);
  v22 = v21;
  objc_msgSend_bounds(self, v23, v24, v25, v26, v27);
  v29 = v28;
  objc_msgSend_bounds(self, v30, v31, v32, v33, v34);
  v36 = v35;
  objc_msgSend_bounds(self, v37, v38, v39, v40, v41);
  v43 = v42;
  v49 = objc_msgSend_strokeIdentifiers(self, v44, v45, v46, v47, v48);
  v55 = objc_msgSend_count(v49, v50, v51, v52, v53, v54);
  v61 = objc_msgSend_strategyIdentifier(self, v56, v57, v58, v59, v60);
  v67 = objc_msgSend_classification(self, v62, v63, v64, v65, v66);
  v72 = objc_msgSend_stringByAppendingFormat_(v3, v68, @" uniqueID: %ld, ancestorID: %ld, bounds: {x: %0.1f, y: %0.1f, width: %0.1f, height: %0.1f}, strokes: %ld, strategy: %@, classification = %ld", v69, v70, v71, v9, v15, v22, v29, v36, v43, v55, v61, v67);

  return v72;
}

- (CGVector)averageWritingOrientation
{
  v2 = 1.0;
  v3 = 0.0;
  result.dy = v3;
  result.dx = v2;
  return result;
}

- (CGSize)normalizedSize
{
  width = self->_normalizedSize.width;
  height = self->_normalizedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)groupByAddingStrokeIdentifiers:(id)identifiers removingStrokeIdentifiers:(id)strokeIdentifiers firstStrokeIdentifier:(id)identifier lastStrokeIdentifier:(id)strokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification groupingConfidence:(double)confidence firstStrokeOrigin:(CGPoint)self0
{
  y = origin.y;
  x = origin.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v16 = bounds.origin.y;
  v17 = bounds.origin.x;
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  identifierCopy = identifier;
  strokeIdentifierCopy = strokeIdentifier;
  v36 = objc_msgSend_strokeIdentifiers(self, v26, v27, v28, v29, v30);
  if (!v36)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v37 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_ERROR, "Cannot have nil strokeIdentifiers", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v38 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v38 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *v71 = 0;
    _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_FAULT, "Cannot have nil strokeIdentifiers", v71, 2u);
    goto LABEL_9;
  }

LABEL_10:
  if (objc_msgSend_count(identifiersCopy, v31, v32, v33, v34, v35))
  {
    v44 = objc_msgSend_setByAddingObjectsFromSet_(v36, v39, identifiersCopy, v41, v42, v43);

    v36 = v44;
  }

  if (objc_msgSend_count(strokeIdentifiersCopy, v39, v40, v41, v42, v43))
  {
    v50 = objc_msgSend_mutableCopy(v36, v45, v46, v47, v48, v49);
    objc_msgSend_minusSet_(v50, v51, strokeIdentifiersCopy, v52, v53, v54);
  }

  else
  {
    v50 = v36;
  }

  v55 = objc_alloc(objc_opt_class());
  v61 = objc_msgSend_ancestorIdentifier(self, v56, v57, v58, v59, v60);
  v67 = objc_msgSend_strategyIdentifier(self, v62, v63, v64, v65, v66);
  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithAncestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v55, v68, v61, v50, identifierCopy, strokeIdentifierCopy, classification, v67, v17, v16, width, height, confidence, x, y);

  return StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;
}

- (CGPath)newEstimatedBaselineForStrokesWithTokens:(id)tokens tokenStrokeIdentifiers:(id)identifiers
{
  Mutable = CGPathCreateMutable();
  objc_msgSend_bounds(self, v6, v7, v8, v9, v10);
  MinX = CGRectGetMinX(v31);
  objc_msgSend_bounds(self, v12, v13, v14, v15, v16);
  MaxY = CGRectGetMaxY(v32);
  CGPathMoveToPoint(Mutable, 0, MinX, MaxY);
  objc_msgSend_bounds(self, v18, v19, v20, v21, v22);
  MaxX = CGRectGetMaxX(v33);
  objc_msgSend_bounds(self, v24, v25, v26, v27, v28);
  v29 = CGRectGetMaxY(v34);
  CGPathAddLineToPoint(Mutable, 0, MaxX, v29);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v4, self->_ancestorIdentifier, @"ancestorIdentifier", v5, v6);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v7, self->_uniqueIdentifier, @"uniqueIdentifier", v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, self->_strokeIdentifiers, @"strokeIdentifiers", v11, v12);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, self->_firstStrokeIdentifier, @"firstStrokeIdentifier", v14, v15);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, self->_lastStrokeIdentifier, @"lastStrokeIdentifier", v17, v18);
  v22 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v19, &self->_bounds, "{CGRect={CGPoint=dd}{CGSize=dd}}", v20, v21);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, v22, @"bounds", v24, v25);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v26, self->_classification, @"classification", v27, v28);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v29, @"groupingConfidence", v30, v31, v32, self->_groupingConfidence);
  objc_msgSend_encodeObject_forKey_(coderCopy, v33, self->_strategyIdentifier, @"strategyIdentifier", v34, v35);
  v39 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v36, &self->_firstStrokeOrigin, "{CGPoint=dd}", v37, v38);
  objc_msgSend_encodeObject_forKey_(coderCopy, v40, v39, @"firstStrokeOrigin", v41, v42);
}

- (CHStrokeGroup)initWithCoder:(id)coder
{
  v78[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v8 = objc_msgSend_decodeIntegerForKey_(coderCopy, v4, @"ancestorIdentifier", v5, v6, v7);
  v13 = objc_msgSend_decodeIntegerForKey_(coderCopy, v9, @"uniqueIdentifier", v10, v11, v12);
  v14 = MEMORY[0x1E695DFD8];
  v78[0] = objc_opt_class();
  v78[1] = objc_opt_class();
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v78, 2, v16, v17);
  v23 = objc_msgSend_setWithArray_(v14, v19, v18, v20, v21, v22);
  v27 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v24, v23, @"strokeIdentifiers", v25, v26);

  v28 = objc_opt_class();
  v32 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v29, v28, @"firstStrokeIdentifier", v30, v31);
  v33 = objc_opt_class();
  v37 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v34, v33, @"lastStrokeIdentifier", v35, v36);
  v38 = objc_opt_class();
  v42 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v39, v38, @"bounds", v40, v41);
  v43 = *(MEMORY[0x1E695F050] + 16);
  v76 = *MEMORY[0x1E695F050];
  v77 = v43;
  objc_msgSend_getValue_size_(v42, v44, &v76, 32, v45, v46);
  v51 = objc_msgSend_decodeIntegerForKey_(coderCopy, v47, @"classification", v48, v49, v50);
  objc_msgSend_decodeDoubleForKey_(coderCopy, v52, @"groupingConfidence", v53, v54, v55);
  v57 = v56;
  v58 = objc_opt_class();
  v62 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v59, v58, @"strategyIdentifier", v60, v61);
  v63 = objc_opt_class();
  v67 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v64, v63, @"firstStrokeOrigin", v65, v66);
  objc_msgSend_getValue_size_(v67, v68, v75, 16, v69, v70);
  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithUniqueIdentifier_ancestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(self, v71, v13, v8, v27, v32, v37, v51, v76, v77, v57, v75[0], v75[1], v62, 0);

  return StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v11 = v5;
    if (self)
    {
      if (self != v5)
      {
        ancestorIdentifier = self->_ancestorIdentifier;
        if (ancestorIdentifier != objc_msgSend_ancestorIdentifier(v5, v6, v7, v8, v9, v10))
        {
          goto LABEL_25;
        }

        uniqueIdentifier = self->_uniqueIdentifier;
        if (uniqueIdentifier != objc_msgSend_uniqueIdentifier(v11, v13, v14, v15, v16, v17))
        {
          goto LABEL_25;
        }

        strokeIdentifiers = self->_strokeIdentifiers;
        v25 = objc_msgSend_strokeIdentifiers(v11, v19, v20, v21, v22, v23);
        v31 = v25;
        if (strokeIdentifiers == v25)
        {
        }

        else
        {
          v32 = objc_msgSend_strokeIdentifiers(v11, v26, v27, v28, v29, v30);
          isEqual = objc_msgSend_isEqual_(v32, v33, self->_strokeIdentifiers, v34, v35, v36);

          if (!isEqual)
          {
            goto LABEL_25;
          }
        }

        firstStrokeIdentifier = self->_firstStrokeIdentifier;
        v44 = objc_msgSend_firstStrokeIdentifier(v11, v38, v39, v40, v41, v42);
        v50 = v44;
        if (firstStrokeIdentifier == v44)
        {
        }

        else
        {
          v51 = objc_msgSend_firstStrokeIdentifier(v11, v45, v46, v47, v48, v49);
          v56 = objc_msgSend_isEqual_(v51, v52, self->_firstStrokeIdentifier, v53, v54, v55);

          if (!v56)
          {
            goto LABEL_25;
          }
        }

        lastStrokeIdentifier = self->_lastStrokeIdentifier;
        v63 = objc_msgSend_lastStrokeIdentifier(v11, v57, v58, v59, v60, v61);
        v69 = v63;
        if (lastStrokeIdentifier == v63)
        {

LABEL_20:
          x = self->_bounds.origin.x;
          y = self->_bounds.origin.y;
          width = self->_bounds.size.width;
          height = self->_bounds.size.height;
          objc_msgSend_bounds(v11, v76, v77, v78, v79, v80);
          v132.origin.x = v85;
          v132.origin.y = v86;
          v132.size.width = v87;
          v132.size.height = v88;
          v131.origin.x = x;
          v131.origin.y = y;
          v131.size.width = width;
          v131.size.height = height;
          if (!CGRectEqualToRect(v131, v132))
          {
            goto LABEL_25;
          }

          classification = self->_classification;
          if (classification != objc_msgSend_classification(v11, v89, v90, v91, v92, v93))
          {
            goto LABEL_25;
          }

          groupingConfidence = self->_groupingConfidence;
          objc_msgSend_groupingConfidence(v11, v95, v96, v97, v98, v99);
          if (groupingConfidence != v106)
          {
            goto LABEL_25;
          }

          strategyIdentifier = self->_strategyIdentifier;
          v108 = objc_msgSend_strategyIdentifier(v11, v101, v102, v103, v104, v105);
          v114 = v108;
          if (strategyIdentifier == v108)
          {
          }

          else
          {
            v115 = objc_msgSend_strategyIdentifier(v11, v109, v110, v111, v112, v113);
            v120 = objc_msgSend_isEqual_(v115, v116, self->_strategyIdentifier, v117, v118, v119);

            if (!v120)
            {
              goto LABEL_25;
            }
          }

          v128 = self->_firstStrokeOrigin.x;
          v127 = self->_firstStrokeOrigin.y;
          objc_msgSend_firstStrokeOrigin(v11, v121, v122, v123, v124, v125);
          LOBYTE(self) = v127 == v130 && v128 == v129;
          goto LABEL_26;
        }

        v70 = objc_msgSend_lastStrokeIdentifier(v11, v64, v65, v66, v67, v68);
        v75 = objc_msgSend_isEqual_(v70, v71, self->_lastStrokeIdentifier, v72, v73, v74);

        if (v75)
        {
          goto LABEL_20;
        }

LABEL_25:
        LOBYTE(self) = 0;
        goto LABEL_26;
      }

      LOBYTE(self) = 1;
    }

LABEL_26:

    goto LABEL_27;
  }

  LOBYTE(self) = 0;
LABEL_27:

  return self;
}

- (unint64_t)hash
{
  v7 = objc_msgSend_hash(self->_strokeIdentifiers, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v8, v9, v10, v11, v12, self->_bounds.origin.x);
  v19 = objc_msgSend_hash(v13, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v20, v21, v22, v23, v24, self->_bounds.origin.y);
  v31 = objc_msgSend_hash(v25, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v32, v33, v34, v35, v36, self->_bounds.size.width);
  v43 = objc_msgSend_hash(v37, v38, v39, v40, v41, v42);
  v49 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v44, v45, v46, v47, v48, self->_bounds.size.height);
  v114 = objc_msgSend_hash(v49, v50, v51, v52, v53, v54);

  v60 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v55, v56, v57, v58, v59, self->_firstStrokeOrigin.x);
  v113 = objc_msgSend_hash(v60, v61, v62, v63, v64, v65);
  v71 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v66, v67, v68, v69, v70, self->_firstStrokeOrigin.y);
  v112 = v43;
  v72 = v31;
  v73 = v19;
  v74 = v7;
  v80 = objc_msgSend_hash(v71, v75, v76, v77, v78, v79);

  v86 = objc_msgSend_hash(self->_firstStrokeIdentifier, v81, v82, v83, v84, v85);
  v92 = objc_msgSend_hash(self->_firstStrokeIdentifier, v87, v88, v89, v90, v91);
  v98 = objc_msgSend_hash(self->_strategyIdentifier, v93, v94, v95, v96, v97);
  v104 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v99, v100, v101, v102, v103, self->_groupingConfidence);
  v110 = objc_msgSend_hash(v104, v105, v106, v107, v108, v109);

  return v73 ^ v74 ^ v72 ^ v112 ^ v114 ^ v113 ^ v80 ^ v86 ^ v92 ^ v98 ^ v110 ^ self->_ancestorIdentifier ^ self->_uniqueIdentifier ^ self->_classification;
}

- (BOOL)isEquivalentToStrokeGroup:(id)group
{
  groupCopy = group;
  if (self == groupCopy)
  {
    isEqualToSet = 1;
  }

  else
  {
    v10 = objc_msgSend_strokeIdentifiers(self, v4, v5, v6, v7, v8);
    v16 = objc_msgSend_count(v10, v11, v12, v13, v14, v15);
    v22 = objc_msgSend_strokeIdentifiers(groupCopy, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_count(v22, v23, v24, v25, v26, v27);

    if (v16 == v28 && (objc_msgSend_bounds(self, v29, v30, v31, v32, v33), v35 = v34, v37 = v36, v39 = v38, v41 = v40, objc_msgSend_bounds(groupCopy, v42, v43, v44, v45, v46), v87.origin.x = v47, v87.origin.y = v48, v87.size.width = v49, v87.size.height = v50, v86.origin.x = v35, v86.origin.y = v37, v86.size.width = v39, v86.size.height = v41, CGRectEqualToRect(v86, v87)) && (objc_msgSend_strategyIdentifier(self, v51, v52, v53, v54, v55), v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend_strategyIdentifier(groupCopy, v57, v58, v59, v60, v61), v62 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v56, v63, v62, v64, v65, v66), v62, v56, (isEqualToString & 1) != 0))
    {
      v73 = objc_msgSend_strokeIdentifiers(self, v68, v69, v70, v71, v72);
      v79 = objc_msgSend_strokeIdentifiers(groupCopy, v74, v75, v76, v77, v78);
      isEqualToSet = objc_msgSend_isEqualToSet_(v73, v80, v79, v81, v82, v83);
    }

    else
    {
      isEqualToSet = 0;
    }
  }

  return isEqualToSet;
}

+ (id)strokeGroupsClusteredByProximity:(id)proximity
{
  v207 = *MEMORY[0x1E69E9840];
  proximityCopy = proximity;
  v195 = objc_msgSend_array(MEMORY[0x1E695DF70], v3, v4, v5, v6, v7);
  v199 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v8, v9, v10, v11, v12);
  v196 = objc_msgSend_count(proximityCopy, v13, v14, v15, v16, v17);
  v18 = proximityCopy;
  objc_opt_self();
  memset(v205, 0, sizeof(v205));
  rect_24 = v18;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(rect_24, v19, v205, v206, 16, v20))
  {
    v26 = **(&v205[0] + 1);
    objc_msgSend_normalizedSize(**(&v205[0] + 1), v21, v22, v23, v24, v25);
    if (v32 == 0.0)
    {
      objc_msgSend_bounds(v26, v27, v28, v29, v30, v31);
    }

    operator new();
  }

  rect = 0.0;
  if (objc_msgSend_count(rect_24, v33, v34, v35, v36, v37))
  {
    rect = 0.0 / objc_msgSend_count(rect_24, v38, v39, v40, v41, v42);
  }

  v197 = fmax(rect + 0.0 * 1.5, 30.0);
  v198 = v197;
  if (v196 >= 5)
  {
    v48 = rect_24;
    objc_opt_self();
    recta = 0.0;
    if (objc_msgSend_count(v48, v49, v50, v51, v52, v53) >= 2)
    {
      v59 = objc_msgSend_firstObject(v48, v54, v55, v56, v57, v58);
      objc_msgSend_bounds(v59, v60, v61, v62, v63, v64);
      MaxY = CGRectGetMaxY(v209);

      v71 = 0;
      v72 = 1;
      v73 = 0.0;
      while (v72 < objc_msgSend_count(v48, v66, v67, v68, v69, v70))
      {
        v79 = objc_msgSend_objectAtIndexedSubscript_(v48, v74, v72, v76, v77, v78);
        objc_msgSend_bounds(v79, v80, v81, v82, v83, v84);
        x = v210.origin.x;
        y = v210.origin.y;
        width = v210.size.width;
        height = v210.size.height;
        v89 = CGRectGetMinY(v210) - MaxY;
        if (v89 >= 0.0)
        {
          v90 = v89;
        }

        else
        {
          v90 = 0.0;
        }

        if (v89 >= height / -3.0)
        {
          operator new();
        }

        ++v71;
        v211.origin.x = x;
        v211.origin.y = y;
        v211.size.width = width;
        v211.size.height = height;
        MaxY = CGRectGetMaxY(v211);

        v73 = v73 + v90;
        ++v72;
      }

      recta = v73 / (objc_msgSend_count(v48, v74, v75, v76, v77, v78) + ~v71);
    }

    v198 = fmax(recta + 0.0 * 1.5, 5.0);
  }

  v91 = 0;
  while (v91 < objc_msgSend_count(rect_24, v43, v44, v45, v46, v47))
  {
    if (objc_msgSend_containsIndex_(v199, v92, v91, v93, v94, v95))
    {
      ++v91;
    }

    else
    {
      v96 = objc_msgSend_objectAtIndexedSubscript_(rect_24, v43, v91, v45, v46, v47);
      objc_msgSend_addIndex_(v199, v97, v91, v98, v99, v100);
      v105 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v101, v96, v102, v103, v104);
      objc_msgSend_bounds(v96, v106, v107, v108, v109, v110);
      rectb = v116;
      v120 = v91 + 1;
      if ((v91 + 1) < v196)
      {
        v121 = v117;
        v122 = v118;
        v123 = v119;
        v124 = 10;
        v125 = v91 + 1;
        do
        {
          v126 = objc_msgSend_objectAtIndexedSubscript_(rect_24, v111, v125, v113, v114, v115);
          objc_msgSend_bounds(v126, v127, v128, v129, v130, v131);
          v133 = v132;
          v135 = v134;
          v137 = v136;
          v139 = v138;

          v212.origin.x = v133;
          v212.origin.y = v135;
          v212.size.width = v137;
          v212.size.height = v139;
          MinY = CGRectGetMinY(v212);
          v213.origin.x = rectb;
          v213.origin.y = v121;
          v213.size.width = v122;
          v213.size.height = v123;
          v116 = CGRectGetMaxY(v213);
          if (!v124)
          {
            break;
          }

          v141 = MinY - v116;
          v116 = v141;
          if (v198 <= v116 || v197 < v116)
          {
            break;
          }

          v143 = objc_msgSend_objectAtIndexedSubscript_(rect_24, v111, v125, v113, v114, v115);
          objc_msgSend_addObject_(v105, v144, v143, v145, v146, v147);

          objc_msgSend_addIndex_(v199, v148, v125++, v149, v150, v151);
          --v124;
          rectb = v133;
          v121 = v135;
          v122 = v137;
          v123 = v139;
        }

        while (v196 - v91 + v124 != 11);
      }

      objc_msgSend_bounds(v96, v111, v112, v113, v114, v115, v116);
      rectc = v159;
      if (v91)
      {
        v160 = v156;
        v161 = v157;
        v162 = v158;
        v163 = v91 - 1;
        v164 = 10;
        do
        {
          v165 = objc_msgSend_objectAtIndexedSubscript_(rect_24, v152, v163, v153, v154, v155);
          objc_msgSend_bounds(v165, v166, v167, v168, v169, v170);
          v172 = v171;
          v174 = v173;
          v176 = v175;
          v178 = v177;

          v214.origin.x = rectc;
          v214.origin.y = v160;
          v214.size.width = v161;
          v214.size.height = v162;
          v179 = CGRectGetMinY(v214);
          v160 = v174;
          v161 = v176;
          v162 = v178;
          rectc = v172;
          v215.origin.x = v172;
          v215.origin.y = v174;
          v215.size.width = v176;
          v215.size.height = v178;
          v180 = CGRectGetMaxY(v215);
          if (!v164)
          {
            break;
          }

          v181 = v179 - v180;
          v182 = v181;
          if (v198 <= v182 || v197 < v182)
          {
            break;
          }

          v184 = objc_msgSend_objectAtIndexedSubscript_(rect_24, v152, v163, v153, v154, v155);
          objc_msgSend_addObject_(v105, v185, v184, v186, v187, v188);

          objc_msgSend_addIndex_(v199, v189, v163--, v190, v191, v192);
          --v164;
        }

        while (v163 != -1);
      }

      objc_msgSend_addObject_(v195, v152, v105, v153, v154, v155);

      v91 = v120;
    }
  }

  return v195;
}

+ (id)strokeGroupContainingStrokeIdentifier:(id)identifier strokeGroups:(id)groups
{
  identifierCopy = identifier;
  groupsCopy = groups;
  v7 = objc_opt_class();
  v10 = objc_msgSend_strokeGroupContainingStrokeIdentifier_strokeGroups_foundStrokeGroupIndex_(v7, v8, identifierCopy, groupsCopy, 0, v9);

  return v10;
}

+ (id)strokeGroupContainingStrokeIdentifier:(id)identifier strokeGroups:(id)groups foundStrokeGroupIndex:(int64_t *)index
{
  identifierCopy = identifier;
  groupsCopy = groups;
  for (i = 0; ; ++i)
  {
    if (i >= objc_msgSend_count(groupsCopy, v8, v9, v10, v11, v12))
    {
      v31 = 0;
      if (!index)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v19 = objc_msgSend_objectAtIndexedSubscript_(groupsCopy, v15, i, v16, v17, v18);
    v25 = objc_msgSend_strokeIdentifiers(v19, v20, v21, v22, v23, v24);
    v30 = objc_msgSend_containsObject_(v25, v26, identifierCopy, v27, v28, v29);

    if (v30)
    {
      break;
    }
  }

  v31 = objc_msgSend_objectAtIndexedSubscript_(groupsCopy, v8, i, v10, v11, v12);
  if (!index)
  {
    goto LABEL_11;
  }

  *index = i;
LABEL_9:
  if (!v31)
  {
    *index = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_11:

  return v31;
}

+ (id)strokeGroupClosestToPoint:(CGPoint)point strokeGroups:(id)groups
{
  y = point.y;
  x = point.x;
  v112 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC60;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v101 = x;
    v102 = 2048;
    v103 = y;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "Finding the stroke group closest to point: (%f, %f)", buf, 0x16u);
  }

  if (!objc_msgSend_count(groupsCopy, v8, v9, v10, v11, v12))
  {
    if (qword_1EA84DC48 == -1)
    {
      v24 = qword_1EA84DC60;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        v25 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v24 = qword_1EA84DC60;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }
    }

    *buf = 134218240;
    v101 = x;
    v102 = 2048;
    v103 = y;
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_ERROR, "Stroke Groups is empty, cannot find the closest stroke group to point: (%f, %f)", buf, 0x16u);
    goto LABEL_12;
  }

  v18 = objc_msgSend_count(groupsCopy, v13, v14, v15, v16, v17);
  if (v18)
  {
    if (!(v18 >> 61))
    {
      operator new();
    }

    sub_18368964C();
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  while (v27 < objc_msgSend_count(groupsCopy, v19, v20, v21, v22, v23))
  {
    v33 = objc_msgSend_objectAtIndexedSubscript_(groupsCopy, v29, v27, v30, v31, v32);
    if (((v26 >> 3) + 1) >> 61)
    {
      sub_18368964C();
    }

    if (v26 >> 3 != -1)
    {
      if (!(((v26 >> 3) + 1) >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v34 = (8 * (v26 >> 3));
    *v34 = v33;
    v35 = v34 + 1;
    if (v26)
    {
      v36 = v26 - 8;
      v37 = 0;
      v38 = 0;
      if ((v26 - 8) < 0x28)
      {
        goto LABEL_50;
      }

      if ((v36 & 0xFFFFFFFFFFFFFFF8) != 0xFFFFFFFFFFFFFFF8)
      {
        v37 = 0;
        v38 = 0;
        goto LABEL_26;
      }

      v39 = (v36 >> 3) + 1;
      v38 = (8 * (v39 & 0x3FFFFFFFFFFFFFFCLL));
      v37 = v38;
      v40 = 16;
      v41 = 16;
      v42 = v39 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v43 = *(v41 - 16);
        v44 = *v41;
        *(v41 - 16) = 0uLL;
        *v41 = 0uLL;
        *(v40 - 16) = v43;
        *v40 = v44;
        v40 += 32;
        v41 += 32;
        v42 -= 4;
      }

      while (v42);
      if (v39 != (v39 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_50:
        do
        {
LABEL_26:
          v45 = *v37;
          *v37++ = 0;
          *v38++ = v45;
        }

        while (v37 != v26);
      }

      do
      {
      }

      while (v28 != v26);
    }

    v28 = 0;
    ++v27;
    v26 = v35;
  }

  v46 = 0;
  if (v26)
  {
    v47 = 8;
    v46 = 0;
    if (v26 != 8)
    {
      v46 = 0;
      do
      {
        v48 = *v47;
        v49 = *v46;
        v50 = sub_183781A1C(CHStrokeGroup, v48);
        objc_msgSend_distanceFromPoint_toRectangle_(CHStrokeUtilities, v51, v52, v53, v54, v55, x, y, v50, v56, v57, v58);
        v60 = v59;
        v61 = sub_183781A1C(CHStrokeGroup, v49);
        objc_msgSend_distanceFromPoint_toRectangle_(CHStrokeUtilities, v62, v63, v64, v65, v66, x, y, v61, v67, v68, v69);
        LODWORD(v48) = v60 < v70;

        if (v48)
        {
          v46 = v47;
        }

        v47 += 8;
      }

      while (v47 != v26);
    }
  }

  v25 = *v46;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v71 = qword_1EA84DC60;
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    objc_msgSend_bounds(v25, v72, v73, v74, v75, v76);
    v78 = v77;
    objc_msgSend_bounds(v25, v79, v80, v81, v82, v83);
    v85 = v84;
    objc_msgSend_bounds(v25, v86, v87, v88, v89, v90);
    v92 = v91;
    objc_msgSend_bounds(v25, v93, v94, v95, v96, v97);
    *buf = 134219264;
    v101 = v78;
    v102 = 2048;
    v103 = v85;
    v104 = 2048;
    v105 = v92;
    v106 = 2048;
    v107 = v98;
    v108 = 2048;
    v109 = x;
    v110 = 2048;
    v111 = y;
    _os_log_impl(&dword_18366B000, v71, OS_LOG_TYPE_DEFAULT, "Found the stroke group with origin: (%f, %f) and size: (%f, %f) closest to point: (%f, %f)", buf, 0x3Eu);
  }

LABEL_40:

  return v25;
}

+ (void)strokeGroupsContainingPoint:(CGPoint)point strokeGroups:(id)groups groupProcessingBlock:(id)block
{
  y = point.y;
  x = point.x;
  groupsCopy = groups;
  blockCopy = block;
  v15 = 0;
  v21 = 0;
  while (v15 < objc_msgSend_count(groupsCopy, v9, v10, v11, v12, v13))
  {
    v20 = objc_msgSend_objectAtIndexedSubscript_(groupsCopy, v16, v15, v17, v18, v19);
    v23.origin.x = sub_183781A1C(CHStrokeGroup, v20);
    v22.x = x;
    v22.y = y;
    if (CGRectContainsPoint(v23, v22))
    {
      blockCopy[2](blockCopy, v20, v15, &v21);
      if (v21)
      {

        break;
      }
    }

    ++v15;
  }
}

+ (id)strokeIdentifierToGroupIndexMappingForStrokeIdentifiers:(id)identifiers orderedStrokeGroups:(id)groups
{
  v49 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  groupsCopy = groups;
  v12 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v7, v8, v9, v10, v11);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = identifiersCopy;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v42, v48, 16, v14);
  if (v15)
  {
    v16 = *v43;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v42 + 1) + 8 * i);
        v41 = 0x7FFFFFFFFFFFFFFFLL;
        v19 = objc_opt_class();
        v22 = objc_msgSend_strokeGroupContainingStrokeIdentifier_strokeGroups_foundStrokeGroupIndex_(v19, v20, v18, groupsCopy, &v41, v21);
        if (v41 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v33 = qword_1EA84DC60;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v47 = v18;
            _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_ERROR, "No group found for stroke identifier %@, All strokes should belong to a group.", buf, 0xCu);
          }

          objc_msgSend_removeAllObjects(v12, v34, v35, v36, v37, v38);
          goto LABEL_15;
        }

        v27 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v23, v41, v24, v25, v26);
        objc_msgSend_setObject_forKey_(v12, v28, v27, v18, v29, v30);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v42, v48, 16, v32);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v12;
}

- (CRNormalizedQuad)boundingQuad
{
  v3 = objc_alloc(MEMORY[0x1E69D9DD8]);
  objc_msgSend_bounds(self, v4, v5, v6, v7, v8);
  v14 = objc_msgSend_initWithNormalizedBoundingBox_size_(v3, v9, v10, v11, v12, v13);
  objc_msgSend_normalizedSize(self, v15, v16, v17, v18, v19);
  if (v26 != *MEMORY[0x1E695F060] || v25 != *(MEMORY[0x1E695F060] + 8))
  {
    objc_msgSend_averageWritingOrientation(self, v20, v21, v22, v23, v24);
    v29 = v28;
    objc_msgSend_averageWritingOrientation(self, v30, v31, v32, v33, v34);
    if (v29 >= 0.0)
    {
      v41 = v40;
    }

    else
    {
      v41 = -v40;
    }

    if (v29 >= 0.0)
    {
      v42 = v29;
    }

    else
    {
      v42 = -v29;
    }

    objc_msgSend_normalizedSize(self, v35, v36, v37, v38, v39, -v29);
    v44 = v43;
    objc_msgSend_normalizedSize(self, v45, v46, v47, v48, v49);
    v51 = v50;
    objc_msgSend_normalizedSize(self, v52, v53, v54, v55, v56);
    v58 = v57;
    objc_msgSend_normalizedSize(self, v59, v60, v61, v62, v63);
    v65 = v64;
    objc_msgSend_bounds(self, v66, v67, v68, v69, v70);
    MidX = CGRectGetMidX(v90);
    objc_msgSend_bounds(self, v72, v73, v74, v75, v76);
    MidY = CGRectGetMidY(v91);
    v78 = objc_alloc(MEMORY[0x1E69D9DD8]);
    v79 = v42 * v44 * 0.5;
    v80 = v41 * v51 * 0.5;
    v81 = v41 * v58 * 0.5;
    v87 = objc_msgSend_initWithNormalizedTopLeft_topRight_bottomRight_bottomLeft_size_(v78, v82, v83, v84, v85, v86, v81 + MidX - v79, MidY - v80 - v42 * v65 * 0.5, v81 + v79 + MidX, v80 + MidY - v42 * v65 * 0.5, v79 + MidX - v81, v42 * v65 * 0.5 + v80 + MidY, MidX - v79 - v81, v42 * v65 * 0.5 + MidY - v80, 0x3FF0000000000000, 0x3FF0000000000000);

    v14 = v87;
  }

  return v14;
}

- (unint64_t)layoutDirection
{
  v6 = objc_msgSend_classification(self, a2, v2, v3, v4, v5);
  if ((v6 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1839CE9A8[v6 - 1];
  }
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)firstStrokeOrigin
{
  x = self->_firstStrokeOrigin.x;
  y = self->_firstStrokeOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end