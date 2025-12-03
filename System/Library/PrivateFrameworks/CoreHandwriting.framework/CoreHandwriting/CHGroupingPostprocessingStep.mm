@interface CHGroupingPostprocessingStep
+ (id)remappedStrokeIndexes:(id)indexes originalStrokeIdentifiersOrdering:(id)ordering newStrokeIdentifiersOrdering:(id)identifiersOrdering;
@end

@implementation CHGroupingPostprocessingStep

+ (id)remappedStrokeIndexes:(id)indexes originalStrokeIdentifiersOrdering:(id)ordering newStrokeIdentifiersOrdering:(id)identifiersOrdering
{
  indexesCopy = indexes;
  orderingCopy = ordering;
  identifiersOrderingCopy = identifiersOrdering;
  v15 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v10, v11, v12, v13, v14);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1838DD038;
  v30[3] = &unk_1E6DDE4D0;
  v16 = orderingCopy;
  v31 = v16;
  v17 = identifiersOrderingCopy;
  v32 = v17;
  v18 = v15;
  v33 = v18;
  objc_msgSend_enumerateIndexesUsingBlock_(indexesCopy, v19, v30, v20, v21, v22);
  v28 = objc_msgSend_copy(v18, v23, v24, v25, v26, v27);

  return v28;
}

@end