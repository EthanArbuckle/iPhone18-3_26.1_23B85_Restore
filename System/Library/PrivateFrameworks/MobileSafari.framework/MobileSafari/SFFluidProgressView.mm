@interface SFFluidProgressView
@end

@implementation SFFluidProgressView

uint64_t __38___SFFluidProgressView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 56);
  if (v2 != 0.0)
  {
    CATransform3DMakeScale(&v15, 1.0 / v2, 1.0, 1.0);
    v3 = [*(*(a1 + 32) + 408) layer];
    v14 = v15;
    [v3 setTransform:&v14];

    v2 = *(a1 + 56);
  }

  CATransform3DMakeScale(&v13, v2, 1.0, 1.0);
  v4 = [*(*(a1 + 32) + 416) layer];
  v14 = v13;
  [v4 setTransform:&v14];

  [objc_opt_class() progressBarHeightWithPreferredStyle:*(*(a1 + 32) + 432)];
  v6 = v5;
  v7 = [*(a1 + 32) _sf_usesLeftToRightLayout];
  v8 = 0.0;
  v9 = 0.0;
  if ((v7 & 1) == 0)
  {
    v9 = *(a1 + 56);
  }

  v10 = *(a1 + 32);
  if ((*(v10 + 441) & 1) == 0)
  {
    [v10 frame];
    v8 = v11 - v6;
    v10 = *(a1 + 32);
  }

  [*(v10 + 416) setCenter:{v9, v8}];
  [*(*(a1 + 32) + 416) bounds];
  return [*(*(a1 + 32) + 416) setBounds:?];
}

void __55___SFFluidProgressView__finishProgressBarWithDuration___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 416) layer];
    v4 = [v3 presentationLayer];
    [v4 opacity];
    v6 = v5;

    if (v6 == 0.0)
    {
      [*(*(a1 + 32) + 416) setHidden:1];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 448));
      [WeakRetained fluidProgressViewDidShowProgress:*(a1 + 32)];
    }
  }
}

uint64_t __82___SFFluidProgressView_fluidProgressController_updateFluidProgressBar_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) destinationPosition];
  [v2 _progressBarBoundsForValue:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (*(a1 + 48))
  {
    v11 = *(a1 + 32);
    if (v11[52])
    {
      [v11[52] transform];
      v12 = *&v15;
      v11 = *(a1 + 32);
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      v12 = 0.0;
    }

    v13 = 100.0 / v12;
    v8 = v8 + 100.0 / v12;
    if (![v11 _sf_usesLeftToRightLayout])
    {
      v4 = v4 - v13;
    }
  }

  return [*(*(a1 + 32) + 416) setBounds:{v4, v6, v8, v10}];
}

void __82___SFFluidProgressView_fluidProgressController_updateFluidProgressBar_completion___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___SFFluidProgressView_fluidProgressController_updateFluidProgressBar_completion___block_invoke_3;
  block[3] = &unk_1E721D338;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

uint64_t __82___SFFluidProgressView_fluidProgressController_updateFluidProgressBar_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

@end