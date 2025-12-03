@interface BKUIPearlCrossHairsView
- (BKUIPearlCrossHairsView)initWithFrame:(CGRect)frame;
- (void)nudgeCrossHairsAtAngle:(double)angle completion:(id)completion;
- (void)nudgeInDirection:(unint64_t)direction smallNudgePeak:(id)peak largeNudgePeak:(id)nudgePeak completion:(id)completion;
@end

@implementation BKUIPearlCrossHairsView

- (BKUIPearlCrossHairsView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v25.receiver = self;
  v25.super_class = BKUIPearlCrossHairsView;
  v7 = [(BKUIPearlCrossHairsView *)&v25 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(BKUIPearlCrossHairsView *)v7 setOpaque:0];
    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    layer = [(BKUIPearlCrossHairsView *)v8 layer];
    [layer setCompositingFilter:v9];

    [(BKUIPearlCrossHairsView *)v8 setAutoresizesSubviews:1];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v11 = getMTLCreateSystemDefaultDeviceSymbolLoc_ptr;
    v30 = getMTLCreateSystemDefaultDeviceSymbolLoc_ptr;
    if (!getMTLCreateSystemDefaultDeviceSymbolLoc_ptr)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __getMTLCreateSystemDefaultDeviceSymbolLoc_block_invoke;
      v26[3] = &unk_278D09C88;
      v26[4] = &v27;
      __getMTLCreateSystemDefaultDeviceSymbolLoc_block_invoke(v26);
      v11 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (!v11)
    {
      BYFlowSkipIdentifierFaceID_cold_1 = getBYFlowSkipIdentifierFaceID_cold_1();
      _Block_object_dispose(&v27, 8);
      _Unwind_Resume(BYFlowSkipIdentifierFaceID_cold_1);
    }

    v12 = v11();
    height = [[BKUIPearlCrossHairsRenderingView alloc] initWithFrame:v12 device:x, y, width, height];
    renderingView = v8->_renderingView;
    v8->_renderingView = height;

    [(BKUIPearlCrossHairsRenderingView *)v8->_renderingView setAutoresizingMask:18];
    [(MTKView *)v8->_renderingView setClearColor:0.0, 0.0, 0.0, 0.0];
    [(MTKView *)v8->_renderingView setFramebufferOnly:0];
    [(BKUIPearlCrossHairsRenderingView *)v8->_renderingView setOpaque:0];
    [(BKUIPearlCrossHairsRenderingView *)v8->_renderingView setSampleCount:4];
    v15 = v8->_renderingView;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    -[MTKView setPreferredFramesPerSecond:](v15, "setPreferredFramesPerSecond:", [mainScreen maximumFramesPerSecond]);

    [(BKUIPearlCrossHairsView *)v8 addSubview:v8->_renderingView];
    v17 = objc_alloc(MEMORY[0x277D755E8]);
    v18 = MEMORY[0x277D755B8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v18 imageNamed:@"Enrollment Hint Arrow" inBundle:v19];
    v21 = [v17 initWithImage:v20];
    arrowView = v8->_arrowView;
    v8->_arrowView = v21;

    [(UIImageView *)v8->_arrowView setAlpha:0.0];
    [(BKUIPearlCrossHairsView *)v8 addSubview:v8->_arrowView];
  }

  return v8;
}

- (void)nudgeCrossHairsAtAngle:(double)angle completion:(id)completion
{
  completionCopy = completion;
  [(BKUIPearlCrossHairsView *)self _setPitch:0 yaw:0.0 animated:0.0];
  [(BKUIPearlCrossHairsRenderingView *)self->_renderingView setGrayscale:1];
  [(BKUIPearlCrossHairsView *)self setAlpha:1.0];
  renderingView = self->_renderingView;
  CGAffineTransformMakeRotation(&v13, -angle);
  [(BKUIPearlCrossHairsRenderingView *)renderingView setTransform:&v13];
  [(BKUIPearlCrossHairsView *)self _setPitch:1 yaw:0.0 animated:0.261799388];
  v8 = dispatch_time(0, 500000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__BKUIPearlCrossHairsView_nudgeCrossHairsAtAngle_completion___block_invoke;
  v10[3] = &unk_278D0A830;
  v12 = xmmword_241B72F50;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_after(v8, MEMORY[0x277D85CD0], v10);
}

void __61__BKUIPearlCrossHairsView_nudgeCrossHairsAtAngle_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setPitch:1 yaw:*(a1 + 48) * 0.5 animated:*(a1 + 56) * 0.5];
  v2 = dispatch_time(0, 250000000);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__BKUIPearlCrossHairsView_nudgeCrossHairsAtAngle_completion___block_invoke_2;
  v4[3] = &unk_278D0A830;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x277D85CD0], v4);
}

void __61__BKUIPearlCrossHairsView_nudgeCrossHairsAtAngle_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setPitch:1 yaw:*(a1 + 48) * 1.5 animated:*(a1 + 56) * 1.75];
  v2 = dispatch_time(0, 500000000);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__BKUIPearlCrossHairsView_nudgeCrossHairsAtAngle_completion___block_invoke_3;
  v4[3] = &unk_278D09E98;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x277D85CD0], v4);
}

void __61__BKUIPearlCrossHairsView_nudgeCrossHairsAtAngle_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setPitch:1 yaw:0.0 animated:0.0];
  v2 = dispatch_time(0, 600000000);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__BKUIPearlCrossHairsView_nudgeCrossHairsAtAngle_completion___block_invoke_4;
  v4[3] = &unk_278D09E98;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x277D85CD0], v4);
}

uint64_t __61__BKUIPearlCrossHairsView_nudgeCrossHairsAtAngle_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(*(a1 + 32) + 408) setGrayscale:0];
  v2 = *(*(a1 + 32) + 408);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)nudgeInDirection:(unint64_t)direction smallNudgePeak:(id)peak largeNudgePeak:(id)nudgePeak completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  peakCopy = peak;
  nudgePeakCopy = nudgePeak;
  completionCopy = completion;
  v13 = _BKUILoggingFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    directionCopy = direction;
    _os_log_impl(&dword_241B0A000, v13, OS_LOG_TYPE_DEFAULT, "Nudging in direction %i", buf, 8u);
  }

  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  dispatch_group_enter(v14);
  v15 = MEMORY[0x277D75D18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke;
  v28[3] = &unk_278D09978;
  v28[4] = self;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_2;
  v23[3] = &unk_278D0A920;
  v26 = nudgePeakCopy;
  directionCopy2 = direction;
  v23[4] = self;
  v24 = v14;
  v25 = peakCopy;
  v16 = nudgePeakCopy;
  v17 = peakCopy;
  v18 = v14;
  [(UIView *)v15 bkui_animateWithDuration:v28 animations:v23 completion:0.3];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_15;
  v21[3] = &unk_278D09E98;
  v21[4] = self;
  v22 = completionCopy;
  v19 = completionCopy;
  dispatch_group_notify(v18, MEMORY[0x277D85CD0], v21);

  v20 = *MEMORY[0x277D85DE8];
}

void __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:1.0];
  [*(a1 + 32) angleFromDirection:*(a1 + 64)];
  v3 = v2;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_3;
  v27[3] = &unk_278D09978;
  v4 = *(a1 + 32);
  v28 = *(a1 + 40);
  [v4 nudgeCrossHairsAtAngle:v27 completion:v3];
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformMakeRotation(&v26, -v3);
  v5 = *(*(a1 + 32) + 416);
  v25 = v26;
  [v5 setTransform:&v25];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_4;
  aBlock[3] = &unk_278D0A858;
  aBlock[4] = *(a1 + 32);
  v24 = v26;
  v6 = _Block_copy(aBlock);
  [*(a1 + 32) bounds];
  v8 = v7;
  [*(a1 + 32) bounds];
  if (v8 != v9)
  {
    __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_2_cold_1();
  }

  v10 = *(*(a1 + 32) + 416);
  v6[2](v6, v8 * 0.375, v8 * 0.5);
  [v10 setCenter:?];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_5;
  v22[3] = &unk_278D09978;
  v22[4] = *(a1 + 32);
  [(UIView *)0.3 bkui_animateWithDuration:v22 animations:?];
  v11 = MEMORY[0x277D75D18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_6;
  v19[3] = &unk_278D0A880;
  v19[4] = *(a1 + 32);
  v20 = v6;
  v21 = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_7;
  v13[3] = &unk_278D0A8F8;
  v13[4] = *(a1 + 32);
  v15 = v20;
  v18 = v8;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v14 = *(a1 + 40);
  v12 = v20;
  [(UIView *)v11 bkui_animateWithDuration:v19 delay:v13 options:0.5 animations:0.0 completion:?];
}

double __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_4(uint64_t a1, double a2, double a3)
{
  memset(&v15, 0, sizeof(v15));
  [*(a1 + 32) bounds];
  v4 = -CGRectGetMidX(v16);
  [*(a1 + 32) bounds];
  MidY = CGRectGetMidY(v17);
  CGAffineTransformMakeTranslation(&v15, v4, -MidY);
  memset(&v14, 0, sizeof(v14));
  v13 = v15;
  CGAffineTransformInvert(&v14, &v13);
  memset(&v13, 0, sizeof(v13));
  t1 = v15;
  v6 = *(a1 + 56);
  *&t2.a = *(a1 + 40);
  *&t2.c = v6;
  *&t2.tx = *(a1 + 72);
  CGAffineTransformConcat(&v12, &t1, &t2);
  t1 = v14;
  CGAffineTransformConcat(&v13, &v12, &t1);
  *&result = *&vaddq_f64(*&v13.tx, vmlaq_n_f64(vmulq_n_f64(*&v13.c, a3), *&v13.a, a2));
  return result;
}

uint64_t __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_6(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 416);
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48) * 0.5, *(a1 + 48) * 0.5);

  return [v1 setCenter:?];
}

void __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_8;
  v8[3] = &unk_278D0A8A8;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v11 = *(a1 + 72);
  v10 = *(a1 + 56);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_9;
  v3[3] = &unk_278D0A8D0;
  v3[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v7 = *(a1 + 72);
  v6 = *(a1 + 64);
  v4 = *(a1 + 40);
  [(UIView *)v2 bkui_animateWithDuration:v8 delay:v3 options:0.25 animations:0.0 completion:?];
}

uint64_t __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 416);
  (*(*(a1 + 40) + 16))(*(a1 + 56) * 7.0 * 0.0625, *(a1 + 56) * 0.5);
  [v2 setCenter:?];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_9(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_10;
  v13[3] = &unk_278D0A880;
  v13[4] = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_11;
  v9[3] = &unk_278D0A8D0;
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v12 = *(a1 + 64);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v6;
  v11 = v7;
  [(UIView *)v2 bkui_animateWithDuration:v13 delay:v9 options:0.35 animations:0.0 completion:?];
}

uint64_t __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_10(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 416);
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48) * 5.0 * 0.125, *(a1 + 48) * 0.5);

  return [v1 setCenter:?];
}

void __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_11(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_12;
  v5[3] = &unk_278D0A8A8;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = *(a1 + 64);
  v7 = *(a1 + 56);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_14;
  v3[3] = &unk_278D099C0;
  v4 = *(a1 + 40);
  [(UIView *)v2 bkui_animateWithDuration:v5 delay:v3 options:0.75 animations:0.0 completion:?];
}

uint64_t __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_12(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 416);
  (*(*(a1 + 40) + 16))(*(a1 + 56) * 0.375, *(a1 + 56) * 0.5);
  [v2 setCenter:?];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_13;
  v5[3] = &unk_278D09978;
  v5[4] = *(a1 + 32);
  return [(UIView *)MEMORY[0x277D75D18] bkui_animateWithDuration:v5 delay:0 options:0.2 animations:0.5 completion:?];
}

uint64_t __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_15(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_16;
  v4[3] = &unk_278D09978;
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__BKUIPearlCrossHairsView_nudgeInDirection_smallNudgePeak_largeNudgePeak_completion___block_invoke_17;
  v3[3] = &unk_278D099C0;
  v3[4] = v5;
  [(UIView *)MEMORY[0x277D75D18] bkui_animateWithDuration:v4 delay:v3 options:0.2 animations:0.5 completion:?];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end