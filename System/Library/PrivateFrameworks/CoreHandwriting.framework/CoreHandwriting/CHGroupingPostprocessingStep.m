@interface CHGroupingPostprocessingStep
+ (id)remappedStrokeIndexes:(id)a3 originalStrokeIdentifiersOrdering:(id)a4 newStrokeIdentifiersOrdering:(id)a5;
@end

@implementation CHGroupingPostprocessingStep

+ (id)remappedStrokeIndexes:(id)a3 originalStrokeIdentifiersOrdering:(id)a4 newStrokeIdentifiersOrdering:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v10, v11, v12, v13, v14);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1838DD038;
  v30[3] = &unk_1E6DDE4D0;
  v16 = v8;
  v31 = v16;
  v17 = v9;
  v32 = v17;
  v18 = v15;
  v33 = v18;
  objc_msgSend_enumerateIndexesUsingBlock_(v7, v19, v30, v20, v21, v22);
  v28 = objc_msgSend_copy(v18, v23, v24, v25, v26, v27);

  return v28;
}

@end