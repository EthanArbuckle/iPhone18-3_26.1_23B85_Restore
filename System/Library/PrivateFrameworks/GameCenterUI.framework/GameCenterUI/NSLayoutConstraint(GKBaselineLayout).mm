@interface NSLayoutConstraint(GKBaselineLayout)
+ (id)_gkBaselineConstraintsForViewsFontsLeadings:()GKBaselineLayout superview:options:;
@end

@implementation NSLayoutConstraint(GKBaselineLayout)

+ (id)_gkBaselineConstraintsForViewsFontsLeadings:()GKBaselineLayout superview:options:
{
  v7 = a3;
  v8 = a4;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__11;
  v31[4] = __Block_byref_object_dispose__11;
  v32 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__11;
  v28[4] = __Block_byref_object_dispose__11;
  v29 = 0;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:32];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __102__NSLayoutConstraint_GKBaselineLayout___gkBaselineConstraintsForViewsFontsLeadings_superview_options___block_invoke;
  v22[3] = &unk_27966CF50;
  v25 = v30;
  v26 = v31;
  v11 = v9;
  v23 = v11;
  v27 = v28;
  v12 = v10;
  v24 = v12;
  [v7 enumerateObjectsUsingBlock:v22];
  firstObject = [v11 firstObject];
  lastObject = [v11 lastObject];
  v15 = [MEMORY[0x277CCAAD0] constraintWithItem:v8 attribute:3 relatedBy:0 toItem:firstObject attribute:3 multiplier:1.0 constant:0.0];
  v16 = [MEMORY[0x277CCAAD0] constraintWithItem:v8 attribute:4 relatedBy:0 toItem:lastObject attribute:4 multiplier:1.0 constant:0.0];
  [v12 addObject:v15];
  [v12 addObject:v16];
  if ((a5 & 2) != 0)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __102__NSLayoutConstraint_GKBaselineLayout___gkBaselineConstraintsForViewsFontsLeadings_superview_options___block_invoke_2;
    v19[3] = &unk_27966BCA8;
    v20 = v8;
    v21 = v12;
    [v11 enumerateObjectsUsingBlock:v19];
  }

  v17 = v12;

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);

  return v17;
}

@end