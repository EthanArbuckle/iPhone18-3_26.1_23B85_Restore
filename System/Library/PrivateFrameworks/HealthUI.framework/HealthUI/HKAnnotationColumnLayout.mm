@interface HKAnnotationColumnLayout
@end

@implementation HKAnnotationColumnLayout

double __82___HKAnnotationColumnLayout__layoutColumnsWithWidth_columnSeparation_currentSize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = a2;
  [v6 frame];
  v8 = v7;
  [v6 frame];
  v10 = v9;
  [v6 frame];
  [v6 setFrame:{v5, v8, v10}];
  [v6 frame];
  v12 = v11;

  *(*(*(a1 + 40) + 8) + 24) = v12 + *(*(*(a1 + 40) + 8) + 24);
  if (a3 && [*(a1 + 32) includeSeparators])
  {
    v13 = [*(a1 + 32) separatorViews];
    v14 = [v13 objectAtIndexedSubscript:a3 - 1];

    v15 = *(*(*(a1 + 40) + 8) + 24) + *(a1 + 48);
    [v14 frame];
    v17 = v16;
    [v14 frame];
    v19 = v18;
    [v14 frame];
    [v14 setFrame:{v15, v17, v19}];
  }

  v20 = *(*(a1 + 40) + 8);
  result = *(a1 + 56) + *(v20 + 24);
  *(v20 + 24) = result;
  return result;
}

void __82___HKAnnotationColumnLayout__layoutColumnsWithWidth_columnSeparation_currentSize___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  [v19 frame];
  v6 = *(a1 + 40) + v5;
  [v19 frame];
  v8 = v7;
  [v19 frame];
  v10 = v9;
  [v19 frame];
  [v19 setFrame:{v6, v8, v10}];
  if (a3 && [*(a1 + 32) includeSeparators])
  {
    v11 = [*(a1 + 32) separatorViews];
    v12 = [v11 objectAtIndexedSubscript:a3 - 1];

    [v19 frame];
    v14 = v13 - *(a1 + 48);
    [v12 frame];
    v16 = v15;
    [v12 frame];
    v18 = v17;
    [v12 frame];
    [v12 setFrame:{v14, v16, v18}];
  }
}

@end