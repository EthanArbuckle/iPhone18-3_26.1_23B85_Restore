@interface UITextView
@end

@implementation UITextView

uint64_t __113__UITextView_SupportsDynamicallyTogglingAllowsTextAnimations__ck_supportsDynamicallyTogglingAllowsTextAnimations__block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    result = [*(a1 + 32) supportsDynamicallyTogglingAllowsTextAnimations];
  }

  else
  {
    result = 0;
  }

  ck_supportsDynamicallyTogglingAllowsTextAnimations_supportsToggling = result;
  return result;
}

uint64_t __80__UITextView_PrintSupport__ck_drawVisibleTextInCurrentContextWithContainerView___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 rangeInElement];
  v6 = [v4 containsRange:v5];

  if (v6)
  {
    v34 = v6;
    [v3 layoutFragmentFrame];
    v37 = v8;
    v38 = v7;
    v35 = v10;
    v36 = v9;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = [v3 textLineFragments];
    v12 = [v11 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v43;
      do
      {
        v15 = 0;
        do
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v42 + 1) + 8 * v15);
          v17 = [*(a1 + 40) textLayoutManager];
          v18 = [*(a1 + 32) location];
          v19 = [v17 locationFromLocation:v18 withOffset:{objc_msgSend(v16, "characterRange")}];

          if ([*(a1 + 32) containsLocation:v19])
          {
            [v16 typographicBounds];
            v21 = v20;
            v40 = v22;
            v41 = v20;
            v23 = v22;
            v25 = v24;
            v39 = v26;
            v27 = *(a1 + 48);
            v48.origin.x = v38;
            v48.origin.y = v37;
            v48.size.width = v36;
            v48.size.height = v35;
            v28 = v27 + CGRectGetMinX(v48);
            v49.origin.x = v21;
            v49.origin.y = v23;
            v49.size.width = v25;
            v49.size.height = v39;
            v29 = v28 + CGRectGetMinX(v49);
            v30 = *(a1 + 56);
            v50.origin.x = v38;
            v50.origin.y = v37;
            v50.size.width = v36;
            v50.size.height = v35;
            v31 = v30 + CGRectGetMinY(v50);
            v51.origin.y = v40;
            v51.origin.x = v41;
            v51.size.width = v25;
            v51.size.height = v39;
            v32 = v31 + CGRectGetMinY(v51);
            [v16 drawAtPoint:UIGraphicsGetCurrentContext() inContext:{v29, v32}];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v13);
    }

    v6 = v34;
  }

  return v6;
}

@end