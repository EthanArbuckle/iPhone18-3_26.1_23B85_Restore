@interface CHOrderedStrokeGroup
- (CHOrderedStrokeGroup)initWithAncestorIdentifier:(int64_t)a3 strokeIdentifiers:(id)a4 firstStrokeIdentifier:(id)a5 lastStrokeIdentifier:(id)a6 bounds:(CGRect)a7 classification:(int64_t)a8 groupingConfidence:(double)a9 strategyIdentifier:(id)a10 firstStrokeOrigin:(CGPoint)a11 orderedStrokeIdentifiers:(id)a12;
- (CHOrderedStrokeGroup)initWithUniqueIdentifier:(int64_t)a3 ancestorIdentifier:(int64_t)a4 strokeIdentifiers:(id)a5 firstStrokeIdentifier:(id)a6 lastStrokeIdentifier:(id)a7 bounds:(CGRect)a8 classification:(int64_t)a9 groupingConfidence:(double)a10 strategyIdentifier:(id)a11 firstStrokeOrigin:(CGPoint)a12 orderedStrokeIdentifiers:(id)a13;
- (CHOrderedStrokeGroup)strokeGroupWithUpdatedStrategyIdentifier:(id)a3 classification:(int64_t)a4;
@end

@implementation CHOrderedStrokeGroup

- (CHOrderedStrokeGroup)initWithAncestorIdentifier:(int64_t)a3 strokeIdentifiers:(id)a4 firstStrokeIdentifier:(id)a5 lastStrokeIdentifier:(id)a6 bounds:(CGRect)a7 classification:(int64_t)a8 groupingConfidence:(double)a9 strategyIdentifier:(id)a10 firstStrokeOrigin:(CGPoint)a11 orderedStrokeIdentifiers:(id)a12
{
  y = a11.y;
  x = a11.x;
  height = a7.size.height;
  width = a7.size.width;
  v22 = a7.origin.y;
  v23 = a7.origin.x;
  v26 = a12;
  v30.receiver = self;
  v30.super_class = CHOrderedStrokeGroup;
  v27 = [(CHStrokeGroup *)&v30 initWithAncestorIdentifier:a3 strokeIdentifiers:a4 firstStrokeIdentifier:a5 lastStrokeIdentifier:a6 bounds:a8 classification:a10 groupingConfidence:v23 strategyIdentifier:v22 firstStrokeOrigin:width, height, a9, x, y];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_orderedStrokeIdentifiers, a12);
  }

  return v28;
}

- (CHOrderedStrokeGroup)initWithUniqueIdentifier:(int64_t)a3 ancestorIdentifier:(int64_t)a4 strokeIdentifiers:(id)a5 firstStrokeIdentifier:(id)a6 lastStrokeIdentifier:(id)a7 bounds:(CGRect)a8 classification:(int64_t)a9 groupingConfidence:(double)a10 strategyIdentifier:(id)a11 firstStrokeOrigin:(CGPoint)a12 orderedStrokeIdentifiers:(id)a13
{
  y = a12.y;
  x = a12.x;
  height = a8.size.height;
  width = a8.size.width;
  v23 = a8.origin.y;
  v24 = a8.origin.x;
  v27 = a13;
  v31.receiver = self;
  v31.super_class = CHOrderedStrokeGroup;
  v28 = [(CHStrokeGroup *)&v31 initWithUniqueIdentifier:a3 ancestorIdentifier:a4 strokeIdentifiers:a5 firstStrokeIdentifier:a6 lastStrokeIdentifier:a7 bounds:a9 classification:v24 groupingConfidence:v23 strategyIdentifier:width firstStrokeOrigin:height, a10, x, y, a11];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_orderedStrokeIdentifiers, a13);
  }

  return v29;
}

- (CHOrderedStrokeGroup)strokeGroupWithUpdatedStrategyIdentifier:(id)a3 classification:(int64_t)a4
{
  v6 = a3;
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
  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_orderedStrokeIdentifiers = objc_msgSend_initWithUniqueIdentifier_ancestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_orderedStrokeIdentifiers_(v7, v73, v13, v19, v25, v31, v37, a4, v44, v46, v48, v50, v57, v64, v66, v6, v72);

  return StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_orderedStrokeIdentifiers;
}

@end