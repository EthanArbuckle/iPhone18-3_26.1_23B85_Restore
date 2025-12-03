@interface CHOrderedStrokeGroup
- (CHOrderedStrokeGroup)initWithAncestorIdentifier:(int64_t)identifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification groupingConfidence:(double)confidence strategyIdentifier:(id)self0 firstStrokeOrigin:(CGPoint)self1 orderedStrokeIdentifiers:(id)self2;
- (CHOrderedStrokeGroup)initWithUniqueIdentifier:(int64_t)identifier ancestorIdentifier:(int64_t)ancestorIdentifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification groupingConfidence:(double)self0 strategyIdentifier:(id)self1 firstStrokeOrigin:(CGPoint)self2 orderedStrokeIdentifiers:(id)self3;
- (CHOrderedStrokeGroup)strokeGroupWithUpdatedStrategyIdentifier:(id)identifier classification:(int64_t)classification;
@end

@implementation CHOrderedStrokeGroup

- (CHOrderedStrokeGroup)initWithAncestorIdentifier:(int64_t)identifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification groupingConfidence:(double)confidence strategyIdentifier:(id)self0 firstStrokeOrigin:(CGPoint)self1 orderedStrokeIdentifiers:(id)self2
{
  y = origin.y;
  x = origin.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v22 = bounds.origin.y;
  v23 = bounds.origin.x;
  strokeIdentifiersCopy = strokeIdentifiers;
  v30.receiver = self;
  v30.super_class = CHOrderedStrokeGroup;
  v27 = [(CHStrokeGroup *)&v30 initWithAncestorIdentifier:identifier strokeIdentifiers:identifiers firstStrokeIdentifier:strokeIdentifier lastStrokeIdentifier:lastStrokeIdentifier bounds:classification classification:strategyIdentifier groupingConfidence:v23 strategyIdentifier:v22 firstStrokeOrigin:width, height, confidence, x, y];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_orderedStrokeIdentifiers, strokeIdentifiers);
  }

  return v28;
}

- (CHOrderedStrokeGroup)initWithUniqueIdentifier:(int64_t)identifier ancestorIdentifier:(int64_t)ancestorIdentifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification groupingConfidence:(double)self0 strategyIdentifier:(id)self1 firstStrokeOrigin:(CGPoint)self2 orderedStrokeIdentifiers:(id)self3
{
  y = origin.y;
  x = origin.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v23 = bounds.origin.y;
  v24 = bounds.origin.x;
  strokeIdentifiersCopy = strokeIdentifiers;
  v31.receiver = self;
  v31.super_class = CHOrderedStrokeGroup;
  strategyIdentifier = [(CHStrokeGroup *)&v31 initWithUniqueIdentifier:identifier ancestorIdentifier:ancestorIdentifier strokeIdentifiers:identifiers firstStrokeIdentifier:strokeIdentifier lastStrokeIdentifier:lastStrokeIdentifier bounds:classification classification:v24 groupingConfidence:v23 strategyIdentifier:width firstStrokeOrigin:height, confidence, x, y, strategyIdentifier];
  v29 = strategyIdentifier;
  if (strategyIdentifier)
  {
    objc_storeStrong(&strategyIdentifier->_orderedStrokeIdentifiers, strokeIdentifiers);
  }

  return v29;
}

- (CHOrderedStrokeGroup)strokeGroupWithUpdatedStrategyIdentifier:(id)identifier classification:(int64_t)classification
{
  identifierCopy = identifier;
  v7 = [CHOrderedStrokeGroup alloc];
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
  v64 = v63;
  v66 = v65;
  v72 = objc_msgSend_orderedStrokeIdentifiers(self, v67, v68, v69, v70, v71);
  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_orderedStrokeIdentifiers = objc_msgSend_initWithUniqueIdentifier_ancestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_orderedStrokeIdentifiers_(v7, v73, v13, v19, v25, v31, v37, classification, v44, v46, v48, v50, v57, v64, v66, identifierCopy, v72);

  return StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_orderedStrokeIdentifiers;
}

@end