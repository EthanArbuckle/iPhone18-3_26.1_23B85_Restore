@interface CNAtomFieldEditor
@end

@implementation CNAtomFieldEditor

void __45___CNAtomFieldEditor_selectionRectsForRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = objc_alloc_init(_CNAtomViewTextSelectionRect);
  [(_CNAtomViewTextSelectionRect *)v16 setRect:a5, a6, a7, a8];
  [(_CNAtomViewTextSelectionRect *)v16 setWritingDirection:a2];
  [(_CNAtomViewTextSelectionRect *)v16 setContainsStart:a3];
  [(_CNAtomViewTextSelectionRect *)v16 setContainsEnd:a4];
  [*(a1 + 32) addObject:v16];
}

void __45___CNAtomFieldEditor_selectionRectsForRange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a3 + a4;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64) + v8;
  v10 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v10;
    v11 = [v10 atomView];
    v12 = *(a1 + 32);
    [v11 selectionBounds];
    [v12 convertRect:v11 fromView:?];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __45___CNAtomFieldEditor_selectionRectsForRange___block_invoke_3;
    v33[3] = &__block_descriptor_64_e39__CGRect__CGPoint_dd__CGSize_dd__12__0B8l;
    v33[4] = v13;
    v33[5] = v14;
    v33[6] = v15;
    v33[7] = v16;
    v17 = MEMORY[0x1B8CB9350](v33);
    v18 = *(a1 + 32);
    v19 = [v18 beginningOfDocument];
    v20 = [v18 positionFromPosition:v19 offset:a3];
    v21 = [v18 baseWritingDirectionForPosition:v20 inDirection:0];

    if (a3 == v8)
    {
      (v17)[2](v17, v21 == 1);
      (*(*(a1 + 48) + 16))();
    }

    if (v7 == v9)
    {
      (v17)[2](v17, v21 != 1);
      (*(*(a1 + 48) + 16))();
    }

    v10 = v28;
  }

  else
  {
    v22 = a3 == v8;
    v23 = *(a1 + 32);
    v24 = [v23 beginningOfDocument];
    v11 = [v23 positionFromPosition:v24 offset:a3];

    v17 = [*(a1 + 32) positionFromPosition:v11 offset:a4];
    v25 = [*(a1 + 32) textRangeFromPosition:v11 toPosition:v17];
    v32.receiver = *(a1 + 32);
    v32.super_class = _CNAtomFieldEditor;
    v26 = objc_msgSendSuper2(&v32, sel_selectionRectsForRange_, v25);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __45___CNAtomFieldEditor_selectionRectsForRange___block_invoke_4;
    v29[3] = &__block_descriptor_34_e29_B16__0__UITextSelectionRect_8l;
    v30 = v22;
    v31 = v7 == v9;
    v27 = [v26 ef_filter:v29];

    [*(a1 + 40) addObjectsFromArray:v27];
  }
}

double __45___CNAtomFieldEditor_selectionRectsForRange___block_invoke_3(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (a2)
  {
    return result + *(a1 + 48);
  }

  return result;
}

BOOL __45___CNAtomFieldEditor_selectionRectsForRange___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = ((*(a1 + 32) & 1) != 0 || ([v3 containsStart] & 1) == 0) && ((*(a1 + 33) & 1) != 0 || (objc_msgSend(v4, "containsEnd") & 1) == 0);

  return v5;
}

@end