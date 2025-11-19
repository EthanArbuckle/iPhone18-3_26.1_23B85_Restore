@interface LAUIPearlGlyphView
+ (id)sharedStaticResources;
+ (void)invokeSuccessFeedback;
- (LAUIPearlGlyphView)init;
- (LAUIPearlGlyphView)initWithConfiguration:(id)a3;
- (LAUIPearlGlyphView)initWithStyle:(int64_t)a3;
- (LAUIPearlGlyphViewDelegate)delegate;
- (NSNumber)remainingMinDisplayTimeInterval;
- (UIColor)finishedColor;
- (UIColor)idleColor;
- (double)modelTransform;
- (id).cxx_construct;
- (id)initSecureGlyphViewWithConfiguration:(id *)a1;
- (uint64_t)_updateRendererPaused:(uint64_t)result;
- (uint64_t)beginExternalAnimation;
- (uint64_t)endExternalAnimation;
- (uint64_t)invalidate;
- (uint64_t)isWireframeEnabled;
- (uint64_t)setModelTransform:(uint64_t)result;
- (uint64_t)setWireframeEnabled:(uint64_t)result;
- (void)_applyCheckmarkColor;
- (void)_applyConfiguration;
- (void)_applyConfigurationWithTraitCollection:(uint64_t)a1;
- (void)_applyStateAnimated:(uint64_t)a1;
- (void)_executeCompletionHandlers:(uint64_t)a1;
- (void)_setSecureFaceIDViewState:(uint64_t)a3 animated:(void *)a4 withCompletion:;
- (void)_updateReduceBlurState;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)invalidate;
- (void)layoutSubviews;
- (void)purgeBuffers;
- (void)renderLoop:(id)a3 drawAtTime:(double)a4;
- (void)renderLoop:(id)a3 drawableSizeDidChange:(CGSize)a4;
- (void)setDelegate:(id)a3;
- (void)setFaceVisibility:(unint64_t)a3 animated:(BOOL)a4;
- (void)setFinishedColor:(id)a3 animated:(BOOL)a4;
- (void)setHideFace:(BOOL)a3 animated:(BOOL)a4;
- (void)setIdleColor:(id)a3 animated:(BOOL)a4;
- (void)setPaused:(BOOL)a3;
- (void)setState:(int64_t)a3 animated:(BOOL)a4 withCompletion:(id)a5;
- (void)setStyle:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation LAUIPearlGlyphView

+ (id)sharedStaticResources
{

  return static_resources;
}

+ (void)invokeSuccessFeedback
{
  if (_AXSPearlAuthenticationHapticsEnabled())
  {

    AudioServicesPlaySystemSoundWithCompletion(0x489u, 0);
  }
}

- (LAUIPearlGlyphView)init
{
  v3 = +[LAUIPearlGlyphStaticConfiguration createDefaultConfiguration];
  v4 = [(LAUIPearlGlyphView *)self initWithConfiguration:v3];

  return v4;
}

- (LAUIPearlGlyphView)initWithStyle:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v5 = +[LAUIPearlGlyphStaticConfiguration createSystemApertureConfiguration];
  }

  else
  {
    v5 = +[LAUIPearlGlyphStaticConfiguration createDefaultConfiguration];
  }

  v6 = v5;
  [v5 setInitialStyle:a3];
  v7 = [(LAUIPearlGlyphView *)self initWithConfiguration:v6];

  return v7;
}

- (LAUIPearlGlyphView)initWithConfiguration:(id)a3
{
  v47[19] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277D240D0] sharedInstance];
    v6 = [v4 secureVariantEnabled];
    if (!v6 || (v6 = [v5 isSupported], !v6) || (v6 = objc_msgSend(v5, "isEnabled"), !v6) || (v6 = -[LAUIPearlGlyphView initSecureGlyphViewWithConfiguration:](self, v4), self = v6, (v7 = v6) == 0))
    {
      v9 = static_resources;
      if (static_resources)
      {
        v10 = static_resources;
        v11 = [[LAUIMetalRenderLoop alloc] initWithPixelFormat:80 forDevice:v9[1]];
        if (v11)
        {
          v44 = v11;
          v12 = *MEMORY[0x277CBF3A0];
          v13 = *(MEMORY[0x277CBF3A0] + 8);
          v14 = *(MEMORY[0x277CBF3A0] + 16);
          v15 = *(MEMORY[0x277CBF3A0] + 24);
          v45.receiver = self;
          v45.super_class = LAUIPearlGlyphView;
          v16 = [(LAUIPearlGlyphView *)&v45 initWithFrame:v12, v13, v14, v15];
          v17 = v16;
          v18 = v16;
          if (v16)
          {
            objc_storeStrong(v16 + 51, v9);
            v19 = [MEMORY[0x277D759A0] mainScreen];
            [v19 scale];
            *(v18 + 54) = v20;

            *(v18 + 768) = 0;
            *(v18 + 769) = 1;
            *(v18 + 770) = 1;
            *(v18 + 481) = 1;
            *(v17 + 52) = [v4 initialStyle];
            v21 = UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityIsReduceMotionEnabled();
            *(v17 + 424) = v21;
            *(v17 + 425) = [v4 isRecording];
            *(v18 + 97) = 3;
            v22 = objc_alloc_init(MEMORY[0x277D75D18]);
            v23 = *(v17 + 57);
            *(v17 + 57) = v22;

            [v18 addSubview:*(v17 + 57)];
            v24 = [MEMORY[0x277CBEB68] null];
            v46[0] = @"position";
            v46[1] = @"bounds";
            v47[0] = v24;
            v47[1] = v24;
            v46[2] = @"transform";
            v46[3] = @"backgroundColor";
            v47[2] = v24;
            v47[3] = v24;
            v46[4] = @"cornerRadius";
            v46[5] = @"contents";
            v47[4] = v24;
            v47[5] = v24;
            v46[6] = @"anchorPoint";
            v46[7] = @"opacity";
            v47[6] = v24;
            v47[7] = v24;
            v46[8] = @"strokeStart";
            v46[9] = @"strokeEnd";
            v47[8] = v24;
            v47[9] = v24;
            v46[10] = @"strokeColor";
            v46[11] = @"fillColor";
            v47[10] = v24;
            v47[11] = v24;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:12];

            v25 = objc_alloc_init(MEMORY[0x277CD9ED0]);
            v26 = *(v17 + 99);
            *(v17 + 99) = v25;

            [*(v17 + 99) setActions:v43];
            [*(v18 + 99) setOpacity:0.0];
            [*(v18 + 99) setContentsScale:*(v18 + 54)];
            v27 = objc_alloc_init(LAUICheckmarkLayer);
            v28 = *(v17 + 55);
            *(v17 + 55) = v27;

            [*(v17 + 55) setContentsScale:*(v18 + 54)];
            [*(v18 + 99) addSublayer:*(v18 + 55)];
            v29 = objc_alloc_init(MEMORY[0x277CD9F90]);
            v30 = *(v17 + 68);
            *(v17 + 68) = v29;

            [*(v17 + 68) setActions:v43];
            [*(v18 + 68) setContentsScale:*(v18 + 54)];
            v31 = *(v18 + 68);
            v32 = [MEMORY[0x277D75348] blackColor];
            v33 = v32;
            [v31 setStrokeColor:{objc_msgSend(v32, "CGColor")}];

            v34 = *(v18 + 68);
            v35 = [MEMORY[0x277D75348] blackColor];
            v36 = v35;
            [v34 setFillColor:{objc_msgSend(v35, "CGColor")}];

            [*(v18 + 68) setLineWidth:1.0];
            [*(v18 + 99) setMask:*(v18 + 68)];
            *(v18 + 536) = 1;
            objc_storeStrong(v17 + 58, v44);
            LODWORD(v37) = 1117782016;
            LODWORD(v38) = 1123024896;
            LODWORD(v39) = 1123024896;
            [*(v17 + 58) setPreferredFrameRateRange:{v37, v38, v39}];
            [*(v17 + 58) setHighFrameRateReason:2424833];
            [*(v17 + 58) setDelegate:v18];
            *(v18 + 94) = CGColorSpaceRetain([*(v17 + 58) colorSpace]);
            v40 = [*(v17 + 58) layer];
            v41 = *(v17 + 59);
            *(v17 + 59) = v40;

            [*(v17 + 59) setOpaque:0];
            operator new();
          }

          self = 0;
          v7 = self;
          v11 = v44;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)initSecureGlyphViewWithConfiguration:(id *)a1
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v20 = 0;
    goto LABEL_16;
  }

  if ([v3 secureVariantEnabled])
  {
    v5 = -[LAUISecureFaceIDView initWithType:]([LAUISecureFaceIDView alloc], "initWithType:", [v4 secureVariantType]);
    if (v5)
    {
      v6 = *MEMORY[0x277CBF3A0];
      v7 = *(MEMORY[0x277CBF3A0] + 8);
      v8 = *(MEMORY[0x277CBF3A0] + 16);
      v9 = *(MEMORY[0x277CBF3A0] + 24);
      v24.receiver = a1;
      v24.super_class = LAUIPearlGlyphView;
      v10 = objc_msgSendSuper2(&v24, sel_initWithFrame_, v6, v7, v8, v9);
      v11 = v10;
      if (v10)
      {
        objc_storeStrong(v10 + 95, v5);
        [v11[95] setTranslatesAutoresizingMaskIntoConstraints:0];
        [v11 addSubview:v11[95]];
        v12 = LAUIInitialFaceIDViewStyleForType([v4 secureVariantType]);
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11[95] setState:v12];
        }

        v13 = MEMORY[0x277CCAAD0];
        v23 = [v11[95] centerXAnchor];
        v14 = [v11 centerXAnchor];
        v15 = [v23 constraintEqualToAnchor:v14];
        v26[0] = v15;
        v16 = [v11[95] centerYAnchor];
        v17 = [v11 centerYAnchor];
        v18 = [v16 constraintEqualToAnchor:v17];
        v26[1] = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
        [v13 activateConstraints:v19];

        *(v11 + 480) = 1;
      }

      a1 = v11;
      v20 = a1;
      goto LABEL_15;
    }

    v21 = LACLogFaceIDUI();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [LAUIPearlGlyphView initSecureGlyphViewWithConfiguration:v21];
    }
  }

  else
  {
    v5 = LACLogFaceIDUI();
    if (os_log_type_enabled(&v5->super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2560E6000, &v5->super.super.super, OS_LOG_TYPE_DEFAULT, "Could not create secure glyph, secure variant disabled.", buf, 2u);
    }
  }

  v20 = 0;
LABEL_15:

LABEL_16:
  return v20;
}

- (void)_applyConfiguration
{
  if (a1)
  {
    v2 = [a1 traitCollection];
    [(LAUIPearlGlyphView *)a1 _applyConfigurationWithTraitCollection:v2];
  }
}

- (void)_applyStateAnimated:(uint64_t)a1
{
  v109 = *MEMORY[0x277D85DE8];
  if (!a1 || (*(a1 + 480) & 1) != 0)
  {
    return;
  }

  *(a1 + 712) = 1;
  *(a1 + 713) = a2;
  v4 = (*(a1 + 720) + 1);
  *(a1 + 720) = v4;
  v5 = dispatch_group_create();
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v82 = 1;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __42__LAUIPearlGlyphView__applyStateAnimated___block_invoke;
  v78[3] = &unk_279821A80;
  v80 = v81;
  v6 = v5;
  v79 = v6;
  v7 = MEMORY[0x259C5AE60](v78);
  v9 = v7;
  v10 = 0x27F82A000uLL;
  v11 = *(a1 + 784);
  v12 = *(a1 + 704);
  if (v12 <= 8 && ((1 << v12) & 0x1EC) != 0)
  {
    if (((v11 < 9) & (0x1ECu >> v11)) != 0)
    {
LABEL_6:
      v13 = (v11 < 9) & (0x7Fu >> v11) ^ (v12 < 9) & (0x7Fu >> v12);
      goto LABEL_9;
    }
  }

  else if (((v11 < 9) & (0x1ECu >> v11)) == 0)
  {
    goto LABEL_6;
  }

  v13 = 1;
LABEL_9:
  if ((v11 - 1) < 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = a2;
  }

  LODWORD(v8) = 1065000894;
  v15 = 0.0;
  if (v14)
  {
    v16 = 0.979;
  }

  else
  {
    v16 = 0.0;
  }

  if (v11 > 4)
  {
    if ((v11 - 5) >= 4)
    {
      goto LABEL_96;
    }

    if ((v11 - 7) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v22 = 5;
    }

    else
    {
      v22 = 6;
    }

    if (v11 == 5)
    {
      v22 = 4;
    }

    memset(location, 0, 17);
    *(__p + 7) = *(a1 + 416);
    v85 = 1;
    *v86 = *__p;
    *&v86[15] = *(&__p[1] + 7);
    v87 = v22;
    v88 = 0.0;
    v89 = 0;
    v90 = 0;
    v94 = 0;
    if (v11 == 6)
    {
      v23 = (a1 + 688);
    }

    else
    {
      if (v11 != 5)
      {
        v33 = *(a1 + 608);
        *location = v33;
        if ((v11 - 7) < 0xFFFFFFFFFFFFFFFELL || v12 == 4)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      v23 = (a1 + 624);
    }

    *location = *v23;
    if (v12 == 4)
    {
      v33 = *(a1 + 608);
LABEL_59:
      LOBYTE(v84) = 1;
      *&location[16] = v33;
      v85 = 0;
      v88 = v16;
      v91 = LODWORD(v16);
      v92 = 1;
      v35 = 1034147594;
LABEL_67:
      v93 = v35;
      dispatch_group_enter(v6);
      v39 = *(a1 + 560);
LABEL_68:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      goto LABEL_96;
    }

LABEL_58:
    v33 = *(a1 + 624);
    goto LABEL_59;
  }

  if (v11 > 2)
  {
    v62 = v7;
    v24 = *(a1 + 776);
    v25 = 4;
    if (v11 == 4)
    {
      v25 = 1;
    }

    v26 = v24 & v25;
    v27 = (v24 & v25) != 0;
    if (v11 == 4)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0.96767;
      if (!v13)
      {
        v30 = 0.98148;
      }

      if (a2)
      {
        v31 = 0.98148;
      }

      else
      {
        v31 = 0.0;
      }

      if (a2)
      {
        v16 = v30;
      }

      else
      {
        v16 = 0.0;
      }

      v32 = (a1 + 608);
      goto LABEL_83;
    }

    if (a2)
    {
      if (v26)
      {
        v28 = 0;
        v31 = v16;
        goto LABEL_82;
      }

      v31 = v16;
    }

    else
    {
      v31 = 0.0;
      v34 = fminf(v16, 0.0);
      if (v13)
      {
        v16 = v34;
      }

      else
      {
        v16 = 0.0;
      }

      if (v26)
      {
        v28 = 0;
LABEL_82:
        v32 = (a1 + 656);
        v29 = 5;
LABEL_83:
        v46 = *v32;
        v47 = *(a1 + 416);
        location[16] = 0;
        *(__p + 7) = v47;
        LOBYTE(v84) = 0;
        *v86 = *__p;
        *&v86[15] = *(&v47 + 1);
        v87 = v29;
        v89 = 0;
        v90 = 0;
        *location = v46;
        v85 = v27;
        v88 = v16;
        v91 = LODWORD(v31);
        v92 = 1;
        v93 = 1034147594;
        if (v26)
        {
          v48 = *(a1 + 704) == 2;
        }

        else
        {
          v48 = 0;
        }

        v94 = v48;
        v9 = v62;
        if (v28)
        {
          v49 = v28;
        }

        else
        {
          v49 = v6;
        }

        dispatch_group_enter(v49);
        v50 = *(a1 + 560);
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __42__LAUIPearlGlyphView__applyStateAnimated___block_invoke_2;
        v71[3] = &unk_279821AA8;
        v51 = v28;
        v72 = v51;
        v74 = v81;
        v73 = v62;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v28)
        {
          objc_initWeak(__p, a1);
          v10 = 0x27F82A000;
          dispatch_group_enter(v6);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __42__LAUIPearlGlyphView__applyStateAnimated___block_invoke_3;
          block[3] = &unk_279821AF8;
          objc_copyWeak(v69, __p);
          v69[1] = v4;
          v70 = a2;
          v68 = v6;
          dispatch_group_notify(v51, MEMORY[0x277D85CD0], block);

          objc_destroyWeak(v69);
          objc_destroyWeak(__p);
        }

        else
        {
          v10 = 0x27F82A000uLL;
          if (*(a1 + 440))
          {
            dispatch_group_enter(v6);
            v52 = *(a1 + 440);
            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v65[2] = __42__LAUIPearlGlyphView__applyStateAnimated___block_invoke_5;
            v65[3] = &unk_279821AD0;
            v66 = v6;
            [v52 setRevealed:0 animated:a2 withCompletion:v65];

            v10 = 0x27F82A000uLL;
          }
        }

        goto LABEL_96;
      }
    }

    v28 = dispatch_group_create();
    goto LABEL_82;
  }

  switch(v11)
  {
    case 0:
      v36 = 0.98747;
      if (!a2)
      {
        v36 = 0.0;
      }

      v37 = *(a1 + 416);
      location[16] = 0;
      *(__p + 7) = v37;
      LOBYTE(v84) = 0;
      *v86 = *__p;
      *&v86[15] = *(&v37 + 1);
      v87 = 0;
      v89 = 0;
      v90 = 0;
      v94 = 0;
      *location = *(a1 + 608);
      v85 = *(a1 + 776) & 1;
      if (v13)
      {
        v38 = v16;
      }

      else
      {
        v38 = v36;
      }

      v88 = v38;
      v91 = LODWORD(v36);
      v92 = 1;
      goto LABEL_66;
    case 1:
      v40 = fminf(v16, 0.98747);
      if (v13)
      {
        v41 = v40;
      }

      else
      {
        v41 = 0.98747;
      }

      memset(location, 0, 17);
      *&v76[7] = *(a1 + 416);
      LOBYTE(v84) = 0;
      v85 = 1;
      *v86 = *v76;
      *&v86[15] = *&v76[15];
      v87 = 1;
      v88 = 0.0;
      v89 = 0;
      v90 = 0;
      LOBYTE(v91) = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      *&v75[7] = *(a1 + 416);
      v98 = 0;
      v99 = 1;
      *v100 = *v75;
      *&v100[15] = *&v75[15];
      v101 = 2;
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v108 = 0;
      *__p[0] = *(a1 + 640);
      v42 = __p[0];
      v43 = __p[1];
      for (*(__p[0] + 7) = *(a1 + 624); v42 != v43; v42 += 112)
      {
        v42[48] = (*(a1 + 776) & 2) != 0;
        *(v42 + 20) = 1065142997;
        *(v42 + 21) = v41;
        v42[88] = 1;
        *(v42 + 25) = 1008981770;
      }

      dispatch_group_enter(v6);
      v44 = *(a1 + 560);
      v45 = __p[0];
      *location = __p[0];
      *&location[8] = *&__p[1];
      memset(__p, 0, 24);
      location[24] = 0;
      v84 = 0;
      if (*&location[8] == v45)
      {
        __break(1u);
      }

      if (*location)
      {
        operator delete(*location);
      }

      goto LABEL_68;
    case 2:
      v17 = 0.98421;
      v18 = fminf(v16, 0.98421);
      if (v13)
      {
        v17 = v18;
      }

      location[16] = 0;
      v19 = *(a1 + 416);
      v20 = *(a1 + 424);
      if (v20)
      {
        v21 = 4;
      }

      else
      {
        v21 = 3;
      }

      LOBYTE(v84) = 0;
      v85 = 1;
      *&v86[7] = v19;
      v86[15] = v20;
      *&v86[16] = *(a1 + 425);
      *&v86[19] = *(a1 + 428);
      v87 = v21;
      v89 = 0;
      v90 = 0;
      v94 = 0;
      *location = *(a1 + 624);
      v88 = v17;
      v91 = 1064732459;
      v92 = 1;
LABEL_66:
      v35 = 1008981770;
      goto LABEL_67;
  }

LABEL_96:
  v53 = 1.0;
  if (*(a1 + *(v10 + 1420)) != 3)
  {
    [*(a1 + 440) setRevealed:0 animated:a2];
    v54 = *(a1 + *(v10 + 1420));
    v8 = 1.0;
    v15 = 0.0;
    if (v54 == 8)
    {
      v15 = 1.0;
    }

    if (v54 == 6)
    {
      v15 = 1.0;
    }

    if (v54 == 3)
    {
      v53 = 1.0;
    }

    else
    {
      v53 = v15;
    }
  }

  [*(a1 + 792) opacity];
  v56 = v55;
  if (v53 != v55)
  {
    v57 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"opacity"];
    [v57 setMass:3.0];
    [v57 setStiffness:1000.0];
    [v57 setDamping:500.0];
    [v57 setVelocity:0.0];
    [v57 setFillMode:*MEMORY[0x277CDA230]];
    [v57 setBeginTimeMode:*MEMORY[0x277CDA080]];
    [v57 durationForEpsilon:0.001];
    [v57 setDuration:?];
    [v57 setAdditive:1];
    v58 = [*(a1 + 792) presentationLayer];
    if (v58 || (v58 = *(a1 + 792)) != 0)
    {
      [v58 opacity];
      v56 = v59;
    }

    v60 = [MEMORY[0x277CCABB0] numberWithDouble:v56 - v53];
    [v57 setFromValue:v60];

    [v57 setToValue:&unk_28682FCC0];
    [*(a1 + 792) addAnimation:v57 forKey:@"opacity"];
    *&v61 = v53;
    [*(a1 + 792) setOpacity:v61];
  }

  objc_initWeak(location, a1);
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __42__LAUIPearlGlyphView__applyStateAnimated___block_invoke_119;
  v63[3] = &unk_279821B20;
  objc_copyWeak(v64, location);
  v64[1] = v4;
  v63[4] = v81;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], v63);
  [(LAUIPearlGlyphView *)a1 _updateRendererPaused:?];
  objc_destroyWeak(v64);
  objc_destroyWeak(location);

  _Block_object_dispose(v81, 8);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = *(self + 94);
  if (v4)
  {
    CFRelease(v4);
    *(self + 94) = 0;
  }

  [(LAUIPearlGlyphView *)self invalidate];
  v5.receiver = self;
  v5.super_class = LAUIPearlGlyphView;
  [(LAUIPearlGlyphView *)&v5 dealloc];
}

- (void)_applyConfigurationWithTraitCollection:(uint64_t)a1
{
  v3 = a2;
  if (!a1 || !v3 || *(a1 + 760))
  {
    goto LABEL_59;
  }

  v61 = v3;
  v4 = v3;
  v5 = [MEMORY[0x277D75C80] currentTraitCollection];
  [MEMORY[0x277D75C80] setCurrentTraitCollection:v4];
  v6 = *(a1 + 752);
  if (*(a1 + 600) == 1)
  {
    v7 = *(a1 + 592);
    v8 = [v7 CGColor];
    converted_color = LAUI_CA_utilities::create_converted_color(v8, v6, v9);
    if (converted_color)
    {
      v11 = converted_color;
      ColorSpace = CGColorGetColorSpace(converted_color);
      if (CGColorSpaceGetNumberOfComponents(ColorSpace) != 3)
      {
        __assert_rtn("color_to_float4", "LAUICAUtilities_Internal.h", 581, "CGColorSpaceGetNumberOfComponents(CGColorGetColorSpace(color)) == 3");
      }

      Components = CGColorGetComponents(v11);
      v50 = *Components;
      v53 = *(Components + 2);
      CFRelease(v11);
      v14 = vcvt_hight_f32_f64(vcvt_f32_f64(v50), v53);
    }

    else
    {
      v14 = 0uLL;
    }

    v54 = v14;

    *(a1 + 608) = v54;
  }

  if (*(a1 + 680) == 1)
  {
    v15 = *(a1 + 672);
    v16 = [v15 CGColor];
    v18 = LAUI_CA_utilities::create_converted_color(v16, v6, v17);
    if (v18)
    {
      v19 = v18;
      v20 = CGColorGetColorSpace(v18);
      if (CGColorSpaceGetNumberOfComponents(v20) != 3)
      {
        __assert_rtn("color_to_float4", "LAUICAUtilities_Internal.h", 581, "CGColorSpaceGetNumberOfComponents(CGColorGetColorSpace(color)) == 3");
      }

      v21 = CGColorGetComponents(v19);
      v50 = *v21;
      v55 = *(v21 + 2);
      CFRelease(v19);
      v22 = vcvt_hight_f32_f64(vcvt_f32_f64(v50), v55);
    }

    else
    {
      v22 = 0uLL;
    }

    v56 = v22;

    *(a1 + 688) = v56;
  }

  v23 = *(a1 + 416);
  if (v23 > 9)
  {
    goto LABEL_29;
  }

  if (((1 << v23) & 0x3C8) != 0)
  {
    if (*(a1 + 680) == 1)
    {
      _Q0 = *(a1 + 688);
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }

      *(a1 + 688) = _Q0;
    }

    *(a1 + 656) = _Q0;
    *(a1 + 624) = _Q0;
    v30 = a1 + 592;
    if (*(a1 + 600))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (((1 << v23) & 0x30) != 0)
  {
    if ((*(a1 + 600) & 1) == 0)
    {
      *(a1 + 608) = xmmword_25611D2B0;
    }

    if (*(a1 + 680) == 1)
    {
      v25 = *(a1 + 688);
    }

    else
    {
      v25 = xmmword_25611D2C0;
      *(a1 + 688) = xmmword_25611D2C0;
    }

    *(a1 + 656) = v25;
    *(a1 + 624) = v25;
    goto LABEL_55;
  }

  if (v23 != 2)
  {
LABEL_29:
    if (v23)
    {
      if (v23 == 1)
      {
        __asm { FMOV            V0.4S, #1.0 }

        *(a1 + 656) = _Q0;
        *(a1 + 624) = _Q0;
        if ((*(a1 + 600) & 1) == 0)
        {
          *(a1 + 608) = _Q0;
        }

        if ((*(a1 + 680) & 1) == 0)
        {
          *(a1 + 688) = *(a1 + 624);
        }
      }

      goto LABEL_55;
    }
  }

  v32 = [MEMORY[0x277D75348] systemBlueColor];
  v33 = [v32 CGColor];
  v35 = LAUI_CA_utilities::create_converted_color(v33, v6, v34);
  if (v35)
  {
    v36 = v35;
    v37 = CGColorGetColorSpace(v35);
    if (CGColorSpaceGetNumberOfComponents(v37) != 3)
    {
      __assert_rtn("color_to_float4", "LAUICAUtilities_Internal.h", 581, "CGColorSpaceGetNumberOfComponents(CGColorGetColorSpace(color)) == 3");
    }

    v38 = CGColorGetComponents(v36);
    v51 = *v38;
    v57 = *(v38 + 2);
    CFRelease(v36);
    v39 = vcvt_hight_f32_f64(vcvt_f32_f64(v51), v57);
  }

  else
  {
    v39 = 0uLL;
  }

  v58 = v39;

  *(a1 + 624) = v58;
  if (*(a1 + 416) == 2)
  {
    v40 = [MEMORY[0x277D75348] systemGreenColor];
    v41 = [v40 CGColor];
    v43 = LAUI_CA_utilities::create_converted_color(v41, v6, v42);
    if (v43)
    {
      v44 = v43;
      v45 = CGColorGetColorSpace(v43);
      if (CGColorSpaceGetNumberOfComponents(v45) != 3)
      {
        __assert_rtn("color_to_float4", "LAUICAUtilities_Internal.h", 581, "CGColorSpaceGetNumberOfComponents(CGColorGetColorSpace(color)) == 3");
      }

      v46 = CGColorGetComponents(v44);
      v52 = *v46;
      v59 = *(v46 + 2);
      CFRelease(v44);
      v47 = vcvt_hight_f32_f64(vcvt_f32_f64(v52), v59);
    }

    else
    {
      v47 = 0uLL;
    }

    v60 = v47;

    *(a1 + 656) = v60;
  }

  else
  {
    *(a1 + 656) = *(a1 + 624);
  }

  if ((*(a1 + 600) & 1) == 0)
  {
    *(a1 + 608) = xmmword_25611D2D0;
  }

  v30 = a1 + 672;
  if (*(a1 + 680))
  {
    goto LABEL_55;
  }

  _Q0 = *(a1 + 624);
LABEL_54:
  *(v30 + 16) = _Q0;
LABEL_55:
  v48 = *(a1 + 624);
  *(a1 + 640) = v48;
  v49 = *(a1 + 416);
  if (v49 > 9)
  {
    __break(1u);
    return;
  }

  if (((1 << v49) & 0x33A) != 0)
  {
    *(a1 + 652) = vmuls_lane_f32(0.5, v48, 3);
  }

  [(LAUIPearlGlyphView *)a1 _applyCheckmarkColor];
  [MEMORY[0x277D75C80] setCurrentTraitCollection:v5];

  v3 = v61;
LABEL_59:
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = LAUIPearlGlyphView;
  [(LAUIPearlGlyphView *)&v8 didMoveToWindow];
  v3 = [(LAUIPearlGlyphView *)self window];
  *(self + 482) = v3 != 0;
  if (v3)
  {
    v5 = *(self + 69);
    if (v5)
    {
      updated = LAUI_uniform_cubic_b_spline_renderer::renderer_t::update_last_render_time(v5);
    }
  }

  v6 = *(self + 58);
  v7 = [v3 screen];
  [v6 attachToScreen:v7];

  [(LAUIPearlGlyphView *)self _updateRendererPaused:?];
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = LAUIPearlGlyphView;
  [(LAUIPearlGlyphView *)&v41 layoutSubviews];
  v3 = *(self + 57);
  [(LAUIPearlGlyphView *)self bounds];
  [v3 setFrame:?];
  [*(self + 57) bounds];
  v8 = v6;
  v9 = v7;
  if (v7 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(self + 54);
  v12 = fmax(v10 * 1.41421354, 75.0 / v11 + v10);
  if (v11 == 0.0)
  {
    v13 = round(v12);
  }

  else
  {
    v13 = round(v11 * v12) / v11;
  }

  *(self + 62) = v13 / v10;
  v14 = *(self + 54);
  v15 = v4 + (v8 - v13) * 0.5;
  if (v14 == 0.0)
  {
    v16 = round(v15);
    v17 = round(v5 + (v9 - v13) * 0.5);
  }

  else
  {
    v16 = round(v15 * v14) / v14;
    v17 = round((v5 + (v9 - v13) * 0.5) * v14) / v14;
  }

  [*(self + 59) setFrame:{v16, v17, v13, v13}];
  [*(self + 58) setDrawableSize:{v13 * *(self + 54), v13 * *(self + 54)}];
  v18 = *(self + 54);
  v19 = v13 - v10;
  v20 = v16 + (v13 - v10) * 0.5;
  if (v18 == 0.0)
  {
    v21 = round(v20);
    v22 = round(v17 + v19 * 0.5);
  }

  else
  {
    v21 = round(v20 * v18) / v18;
    v22 = round((v17 + v19 * 0.5) * v18) / v18;
  }

  [*(self + 99) setFrame:{v21, v22, v10, v10}];
  [*(self + 99) bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [*(self + 68) setFrame:?];
  [*(self + 55) defaultSizeForCircleWithDiameter:v28 scale:*(self + 54)];
  v32 = v31;
  v34 = v33;
  v35 = *(self + 54);
  v36 = v24 + (v28 - v31) * 0.5;
  if (v35 == 0.0)
  {
    v37 = round(v36);
    v38 = round(v26 + (v30 - v34) * 0.5);
  }

  else
  {
    v37 = round(v35 * v36) / v35;
    v38 = round(v35 * (v26 + (v30 - v34) * 0.5)) / v35;
  }

  [*(self + 55) setFrame:{v37, v38, v32}];
  WeakRetained = objc_loadWeakRetained(self + 100);
  [WeakRetained pearlGlyphView:self didLayoutContentLayer:*(self + 99)];

  if (*(self + 63) != v8 || *(self + 64) != v9)
  {
    *(self + 63) = v8;
    *(self + 64) = v9;
    if (*(self + 712) == 1)
    {
      v40 = *(self + 713);
    }

    else
    {
      v40 = 0;
    }

    [(LAUIPearlGlyphView *)self _applyStateAnimated:?];
  }
}

- (void)invalidate
{
  if ((*(self + 480) & 1) == 0)
  {
    [(LAUIPearlGlyphView *)self + 480 invalidate];
  }
}

- (void)purgeBuffers
{
  if ((*(self + 480) & 1) == 0)
  {
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::purge(*(self + 69));
  }
}

- (void)setStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (*(self + 52) != a3)
  {
    *(self + 52) = a3;
    [(LAUIPearlGlyphView *)self _applyConfiguration];
    if (a4)
    {
      v7 = 1;
    }

    else if (*(self + 712) == 1)
    {
      v7 = *(self + 713);
    }

    else
    {
      v7 = 0;
    }

    [(LAUIPearlGlyphView *)self _applyStateAnimated:?];
  }
}

- (UIColor)idleColor
{

  return v2;
}

- (void)setIdleColor:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v11 = 1;
    v8 = (self + 592);
    if (*(self + 600) && v10 == *v8)
    {
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    v11 = 0;
    v8 = (self + 592);
    if (!*(self + 600))
    {
      goto LABEL_13;
    }
  }

  std::__optional_storage_base<UIColor * {__strong},false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<UIColor * {__strong},false> const&>(v8, &v10);
  [(LAUIPearlGlyphView *)self _applyConfiguration];
  if (a4)
  {
    v9 = 1;
  }

  else if (*(self + 712) == 1)
  {
    v9 = *(self + 713);
  }

  else
  {
    v9 = 0;
  }

  [(LAUIPearlGlyphView *)self _applyStateAnimated:?];
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_13:
}

- (UIColor)finishedColor
{

  return v2;
}

- (void)setFinishedColor:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v11 = 1;
    v8 = (self + 672);
    if (*(self + 680) && v10 == *v8)
    {
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    v11 = 0;
    v8 = (self + 672);
    if (!*(self + 680))
    {
      goto LABEL_13;
    }
  }

  std::__optional_storage_base<UIColor * {__strong},false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<UIColor * {__strong},false> const&>(v8, &v10);
  [(LAUIPearlGlyphView *)self _applyConfiguration];
  if (a4)
  {
    v9 = 1;
  }

  else if (*(self + 712) == 1)
  {
    v9 = *(self + 713);
  }

  else
  {
    v9 = 0;
  }

  [(LAUIPearlGlyphView *)self _applyStateAnimated:?];
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_13:
}

- (void)setFaceVisibility:(unint64_t)a3 animated:(BOOL)a4
{
  if (*(self + 97) != a3)
  {
    *(self + 97) = a3;
    if (a4)
    {
      v4 = 1;
    }

    else if (*(self + 712) == 1)
    {
      v4 = *(self + 713);
    }

    else
    {
      v4 = 0;
    }

    [(LAUIPearlGlyphView *)self _applyStateAnimated:?];
  }
}

- (void)setHideFace:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  [(LAUIPearlGlyphView *)self setFaceVisibility:v4 animated:a4];
}

- (void)setState:(int64_t)a3 animated:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v53[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (*(self + 95))
  {
    [(LAUIPearlGlyphView *)self _setSecureFaceIDViewState:a3 animated:0 withCompletion:v8];
  }

  else
  {
    if (v5)
    {
      v9 = *(self + 768) ^ 1;
      if (a3 == 4 && (*(self + 768) & 1) == 0)
      {
        if (*(self + 769) == 1)
        {
          [(LAUIPearlGlyphView *)self bounds];
          v11 = v10;
          v12 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
          [v12 setAdditive:1];
          v13 = *MEMORY[0x277CDA080];
          [v12 setBeginTimeMode:*MEMORY[0x277CDA080]];
          LODWORD(v14) = 1036831949;
          LODWORD(v15) = 0.25;
          LODWORD(v16) = 0.25;
          LODWORD(v17) = 1.0;
          v18 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v15 :v14 :v16 :v17];
          [v12 setTimingFunction:v18];

          [v12 setDuration:0.2];
          v19 = *MEMORY[0x277CDA238];
          [v12 setFillMode:*MEMORY[0x277CDA238]];
          v20 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 0.0}];
          [v12 setFromValue:v20];
          v21 = v11 * 0.579710145;

          v22 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v21, 0.0}];
          [v12 setToValue:v22];

          v23 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position"];
          [v23 setAdditive:1];
          [v23 setBeginTimeMode:v13];
          [v23 setFillMode:v19];
          [v23 setBeginTime:0.075];
          [v23 setMass:3.0];
          [v23 setStiffness:2200.0];
          [v23 setDamping:40.0];
          [v23 setInitialVelocity:0.0];
          v24 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
          [v23 setTimingFunction:v24];

          LODWORD(v25) = 1068708659;
          [v23 setSpeed:v25];
          [v23 durationForEpsilon:0.001];
          [v23 setDuration:?];
          v26 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 0.0}];
          [v23 setFromValue:v26];

          v27 = [MEMORY[0x277CCAE60] valueWithCGPoint:{-v21, 0.0}];
          [v23 setToValue:v27];

          v28 = [MEMORY[0x277CD9E00] animation];
          [(CAAnimation *)v28 setBeginTimeMode:v13];
          v53[0] = v12;
          v53[1] = v23;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
          [(CAAnimation *)v28 setAnimations:v29];

          v30 = v12;
          [v30 beginTime];
          v32 = v31;
          [v30 duration];
          v34 = v33;

          v35 = v23;
          [v35 beginTime];
          v37 = v36;
          [v35 duration];
          v39 = v38;

          v40 = v32 + v34;
          if (v32 + v34 < v37 + v39)
          {
            v40 = v37 + v39;
          }

          [(CAAnimation *)v28 setDuration:v40];
          v41 = [(LAUIPearlGlyphView *)self layer];
          v42 = LAUILayerAddAdditiveAnimation(v41, &cfstr_Position.isa, v28);
        }

        if (*(self + 770) == 1)
        {
          AudioServicesPlaySystemSoundWithCompletion(0x48Au, 0);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    if (*(self + 98) == a3)
    {
      if (v8)
      {
        if (*(self + 712) == 1)
        {
          if (*(self + 480))
          {
            block = MEMORY[0x277D85DD0];
            v48 = 3321888768;
            v49 = ___ZN17LAUI_CA_utilities38animation_completion_handler_container7executeEU13block_pointerFvbEb_block_invoke;
            v50 = &__block_descriptor_48_ea8_32c102_ZTSKZN17LAUI_CA_utilities38animation_completion_handler_container7executeEU13block_pointerFvbEbEUlvE__e5_v8__0l;
            v43 = MEMORY[0x259C5AE60](v8);
            v51 = MEMORY[0x259C5AE60]();
            v52 = 0;
            dispatch_async(MEMORY[0x277D85CD0], &block);
          }

          else
          {
            v46 = [v8 copy];
            std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::push_back[abi:ne200100](self + 91, &v46);
          }
        }

        else
        {
          block = MEMORY[0x277D85DD0];
          v48 = 3321888768;
          v49 = ___ZN17LAUI_CA_utilities38animation_completion_handler_container7executeEU13block_pointerFvbEb_block_invoke;
          v50 = &__block_descriptor_48_ea8_32c102_ZTSKZN17LAUI_CA_utilities38animation_completion_handler_container7executeEU13block_pointerFvbEbEUlvE__e5_v8__0l;
          v44 = MEMORY[0x259C5AE60](v8);
          v51 = MEMORY[0x259C5AE60]();
          v52 = 1;
          dispatch_async(MEMORY[0x277D85CD0], &block);
        }
      }
    }

    else
    {
      if (([LAUIPearlGlyphView setState:v8 animated:? withCompletion:?]& 1) == 0)
      {
        v45 = [v8 copy];
        std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::push_back[abi:ne200100](self + 91, &v45);
      }

      *(self + 88) = *(self + 98);
      *(self + 98) = a3;
      [(LAUIPearlGlyphView *)self _applyStateAnimated:?];
      *(self + 88) = *(self + 98);
    }
  }
}

- (void)_setSecureFaceIDViewState:(uint64_t)a3 animated:(void *)a4 withCompletion:
{
  v6 = a4;
  if (a1)
  {
    v7 = *(a1 + 784);
    if (v7 != a2)
    {
      *(a1 + 704) = v7;
      *(a1 + 784) = a2;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __72__LAUIPearlGlyphView__setSecureFaceIDViewState_animated_withCompletion___block_invoke;
      v8[3] = &__block_descriptor_40_e5_q8__0l;
      v8[4] = a2;
      [*(a1 + 760) setState:__72__LAUIPearlGlyphView__setSecureFaceIDViewState_animated_withCompletion___block_invoke(v8)];
    }

    if (v6)
    {
      v6[2](v6, 1);
    }
  }
}

uint64_t __72__LAUIPearlGlyphView__setSecureFaceIDViewState_animated_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 8)
  {
    return 0;
  }

  else
  {
    return qword_25611D5D8[v1];
  }
}

void __42__LAUIPearlGlyphView__applyStateAnimated___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __42__LAUIPearlGlyphView__applyStateAnimated___block_invoke_2(void *a1, char a2)
{
  v2 = a1[4];
  if (v2)
  {
    if ((a2 & 1) == 0)
    {
      *(*(a1[6] + 8) + 24) = 0;
      v2 = a1[4];
    }

    dispatch_group_leave(v2);
  }

  else
  {
    (*(a1[5] + 16))();
  }
}

void __42__LAUIPearlGlyphView__applyStateAnimated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[90] == *(a1 + 48) && (v4 = WeakRetained[55]) != 0)
  {
    if (*(a1 + 56) == 1)
    {
      if (*(WeakRetained + 770) == 1)
      {
        +[LAUIPearlGlyphView invokeSuccessFeedback];
        v4 = v3[55];
        v5 = *(a1 + 56);
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__LAUIPearlGlyphView__applyStateAnimated___block_invoke_4;
    v6[3] = &unk_279821AD0;
    v7 = *(a1 + 32);
    [v4 setRevealed:1 animated:v5 & 1 withCompletion:v6];
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __42__LAUIPearlGlyphView__applyStateAnimated___block_invoke_119(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[90] == *(a1 + 48))
  {
    v3 = WeakRetained;
    __42__LAUIPearlGlyphView__applyStateAnimated___block_invoke_119_cold_1(WeakRetained, a1);
    WeakRetained = v3;
  }
}

- (void)setPaused:(BOOL)a3
{
  if (*(self + 768) != a3)
  {
    *(self + 768) = a3;
    [(LAUIPearlGlyphView *)self _updateRendererPaused:?];
    if (*(self + 768) == 1)
    {

      [(LAUIPearlGlyphView *)self _executeCompletionHandlers:?];
    }
  }
}

- (NSNumber)remainingMinDisplayTimeInterval
{
  v3 = *(self + 95);
  if (v3)
  {
    v4 = [v3 remainingMinDisplayTimeInterval];
  }

  else
  {
    v4 = &unk_28682FCC0;
  }

  return v4;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(self + 100, v4);
  v5 = objc_opt_respondsToSelector();

  *(self + 448) = v5 & 1;
}

- (double)modelTransform
{
  if (a1)
  {
    v2 = *(a1 + 552);
    if (v2)
    {
      v3 = v2[14];
      a2[4] = v2[13];
      a2[5] = v3;
      v4 = v2[16];
      a2[6] = v2[15];
      a2[7] = v4;
      v5 = v2[10];
      *a2 = v2[9];
      a2[1] = v5;
      v6 = v2[11];
      v7 = v2[12];
    }

    else
    {
      v8 = MEMORY[0x277D860A0];
      v9 = *(MEMORY[0x277D860A0] + 80);
      a2[4] = *(MEMORY[0x277D860A0] + 64);
      a2[5] = v9;
      v10 = v8[7];
      a2[6] = v8[6];
      a2[7] = v10;
      v11 = v8[1];
      *a2 = *v8;
      a2[1] = v11;
      v6 = v8[2];
      v7 = v8[3];
    }

    a2[2] = v6;
    a2[3] = v7;
  }

  else
  {
    *&v6 = 0;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return *&v6;
}

- (void)renderLoop:(id)a3 drawableSizeDidChange:(CGSize)a4
{
  if ((*(self + 480) & 1) == 0)
  {
    v6[0] = v4;
    v6[1] = v5;
    [(LAUIPearlGlyphView *)self renderLoop:v6 drawableSizeDidChange:a4.width, a4.height];
  }
}

- (void)renderLoop:(id)a3 drawAtTime:(double)a4
{
  v124 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(self + 480))
  {
    goto LABEL_65;
  }

  if (*(self + 536) == 1)
  {
    v6 = 0;
    *(self + 536) = 0;
    v7 = *(self + 70);
    v107 = *(v7 + 160);
    v105 = *(v7 + 240) * 0.5;
    v8 = *(self + 69);
    v10 = *(v8 + 400);
    v9 = *(v8 + 416);
    v12 = *(v8 + 432);
    v11 = *(v8 + 448);
    v14 = *(v8 + 464);
    v13 = *(v8 + 480);
    v16 = *(v8 + 496);
    v15 = *(v8 + 512);
    v17 = *(v8 + 352);
    v112 = *(v8 + 336);
    v113 = v17;
    v18 = *(v8 + 384);
    v114 = *(v8 + 368);
    v115 = v18;
    v19 = *(v8 + 288);
    v108 = *(v8 + 272);
    v109 = v19;
    v20 = *(v8 + 320);
    v110 = *(v8 + 304);
    v111 = v20;
    do
    {
      v22 = *(&v108 + v6);
      v21 = *(&v108 + v6 + 16);
      v23 = (&v116 + v6);
      *v23 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v10, v22.f64[0]), v12, v22, 1), v14, v21.f64[0]), v16, v21, 1);
      v23[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v9, v22.f64[0]), v11, v22, 1), v13, v21.f64[0]), v15, v21, 1);
      v6 += 32;
    }

    while (v6 != 128);
    v96 = v117;
    v97 = v118;
    v98 = v116;
    v99 = v121;
    v100 = v119;
    vars0a = v120;
    v104 = *&v122[16];
    v101 = *v122;
    v24 = *(self + 66);
    v25 = *(self + 54);
    [*(self + 99) bounds];
    v27 = v26;
    v29 = v28;
    [*(self + 68) lineWidth];
    v30.f64[0] = 0.0;
    v30.f64[1] = v107;
    v31.f64[0] = 0.0;
    v31.f64[1] = v105;
    v32 = vaddq_f64(v30, v31);
    v33 = vmlaq_f64(vmlaq_laneq_f64(vmulq_n_f64(v96, v32.f64[0]), v100, v32, 1), 0, v99);
    v34 = vmlaq_f64(vmlaq_laneq_f64(vmulq_n_f64(v98, v32.f64[0]), v97, v32, 1), 0, vars0a);
    __asm { FMOV            V4.2D, #1.0 }

    v40 = vmlaq_f64(v34, _Q4, v101);
    v41 = vmlaq_f64(v33, _Q4, v104);
    v42 = vsubq_f64(v30, v31);
    v43 = vmlaq_f64(vmlaq_f64(vmlaq_laneq_f64(vmulq_n_f64(v98, v42.f64[0]), v97, v42, 1), 0, vars0a), _Q4, v101);
    v44 = vmlaq_f64(vmlaq_f64(vmlaq_laneq_f64(vmulq_n_f64(v96, v42.f64[0]), v100, v42, 1), 0, v99), _Q4, v104);
    v46 = floor(v24 * 0.5 * vabdd_f64(vmuld_lane_f64(1.0 / sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v40, v40), vmulq_f64(v41, v41)))), v40, 1), vmuld_lane_f64(1.0 / sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v43, v43), vmulq_f64(v44, v44)))), v43, 1))) / v25 + v45 * 0.5;
    v42.f64[0] = v27 + v46 * -2.0;
    v44.f64[0] = v29 + v46 * -2.0;
    v47 = v46;
    v48 = CGPathCreateWithEllipseInRect(*(&v42 - 1), 0);
    if (v48)
    {
      [*(self + 68) setPath:v48];
      CFRelease(v48);
    }
  }

  if (*(self + 448) == 1)
  {
    WeakRetained = objc_loadWeakRetained(self + 100);
    [WeakRetained pearlGlyphViewWillRender:self];
  }

  updated = LAUI_uniform_cubic_b_spline_renderer::renderer_t::update_last_render_time(*(self + 69));
  v51 = *(self + 70);
  if (*(v51 + 49) != 1)
  {
    goto LABEL_62;
  }

  if (*(v51 + 48))
  {
LABEL_61:
    *(self + 584) = 1;
    goto LABEL_62;
  }

  vars0 = v5;
  v52 = updated * 1000.0;
  v53 = LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v51 + 272, v52);
  v54 = LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v51 + 328, v52);
  v55 = LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v51 + 384, v52);
  v56 = LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::update(v51 + 440, v52);
  v63 = _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE6updateEf(v51 + 496, v52);
  v57 = LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v51 + 640, v52);
  v58 = LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v51 + 696, v52);
  v59 = LAUI_uniform_cubic_b_spline_renderer::animator_t<decltype(nullptr),(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v51 + 752, v52);
  v60 = v59 & v58 & v57 & v63 & v56 & v55 & v54 & v53;
  v61.i16[0] = v59;
  v61.i16[1] = v58;
  v61.i16[2] = v57;
  v61.i16[3] = v63;
  v61.i16[4] = v56;
  v61.i16[5] = v55;
  v61.i16[6] = v54;
  v61.i16[7] = v53;
  v62.i64[0] = 0x100010001000100;
  v62.i64[1] = 0x100010001000100;
  LOBYTE(v63) = (*(v51 + 364) <= 0.0) & (vmaxv_u8(vmovn_s16(vceqzq_s16(vandq_s8(v61, v62)))) ^ 1);
  v64 = *(v51 + 848);
  v65 = *(v51 + 856);
  while (v64 != v65)
  {
    v66 = _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE6updateEf(v64 + 112, v52);
    v60 &= v66;
    v63 &= (v66 & 0x100) >> 8;
    v67 = *(v64 + 208);
    v68 = *(v64 + 216);
    while (v67 != v68)
    {
      v69 = _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_fLNS_27animator_interpolation_typeE0EE6updateEf(v67, v52);
      v60 &= v69;
      v63 &= (v69 & 0x100) >> 8;
      v67 += 96;
    }

    v64 += 240;
  }

  v70 = *(v51 + 872);
  v71 = *(v51 + 880);
  if (v70 != v71)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v106 = _Q0;
    while (!v70[1].i64[0])
    {
LABEL_40:
      v83 = LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(&v70[6], v52);
      v84 = _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE6updateEf(&v70[12], v52);
      LOBYTE(v60) = v84 & v83 & v60;
      v63 &= (v84 & v83 & 0x100u) >> 8;
      v70 += 18;
      if (v70 == v71)
      {
        goto LABEL_41;
      }
    }

    v70[1].f32[2] = v70[1].f32[2] + v52;
    LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::update(&v70[2], v52);
    v116 = 0u;
    v118 = 0u;
    v119 = xmmword_25611D010;
    *v122 = 1065353216;
    *&v122[8] = xmmword_25611D260;
    *&v122[24] = 0;
    v123 = 0;
    v73 = v70[12];
    v117 = v70[6];
    v120 = v106;
    v121 = v73;
    v74 = (v70[1].i64[0])(&v116, &v70[1].i64[1], v52);
    if (v70[1].i64[0])
    {
      v75 = v70[1].f32[3];
      v76 = v70[4].f32[1];
      v77 = v70->i16[4];
      if ((v77 & 2) == 0)
      {
        goto LABEL_30;
      }

      if ((v70->i16[5] & 2) != 0)
      {
        v78 = v70[4].f32[1];
      }

      else
      {
        v78 = v70[1].f32[3];
      }

      v79 = nexttowardf(1.0, 0.0);
      v108 = v117;
      LODWORD(v109) = fmaxf(fminf(v78, v79), 0.0);
      if (*&v109 <= 0.0)
      {
        v80 = 0.0;
      }

      else
      {
        v80 = INFINITY;
      }

      BYTE4(v109) = 0;
      BYTE12(v109) = 0;
      *&v110 = v80;
      *(&v110 + 4) = LODWORD(v80);
      LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>(&v70[6], &v108, 6);
      if (v70[1].i64[0])
      {
        v77 = v70->i16[4];
LABEL_30:
        if ((v77 & 0x20) != 0)
        {
          if ((v70->i16[5] & 0x20) != 0)
          {
            v75 = v76;
          }

          v81 = nexttowardf(1.0, 0.0);
          v108 = v121;
          LODWORD(v109) = fmaxf(fminf(v75, v81), 0.0);
          if (*&v109 <= 0.0)
          {
            v82 = 0.0;
          }

          else
          {
            v82 = INFINITY;
          }

          BYTE4(v109) = 0;
          BYTE12(v109) = 0;
          *&v110 = v82;
          *(&v110 + 4) = LODWORD(v82);
          _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(&v70[12], &v108, 6);
        }
      }
    }

    if (v74)
    {
      v70->i32[2] = 0;
      v70[1].i64[0] = 0;
    }

    else
    {
      LOBYTE(v60) = 0;
      LOBYTE(v63) = 0;
    }

    goto LABEL_40;
  }

LABEL_41:
  v85 = LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v51 + 912, v52);
  v86 = _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE6updateEf(v51 + 1008, v52) & v85;
  v87 = v63 & ((v86 & 0x100) >> 8);
  v88 = v86 & v60;
  v89 = v88 | v87;
  v5 = vars0;
  if ((v89 & 1) == 0)
  {
    v94 = *(v51 + 872);
    v95 = *(v51 + 880);
    if (v94 == v95)
    {
      goto LABEL_60;
    }

    while (!*(v94 + 16))
    {
      v94 += 288;
      if (v94 == v95)
      {
        goto LABEL_43;
      }
    }
  }

  LAUI_CA_utilities::animation_completion_handler_container::operator()((v51 + 56), 1);
LABEL_43:
  if ((v89 & 1) != 0 && *(v51 + 40) == 1)
  {
    v90 = *v51;
    v91 = 0x6DB6DB6DB6DB6DB7 * ((*(v51 + 8) - *v51) >> 4);
    if (v91 < 2)
    {
      if (v90)
      {
        *(v51 + 8) = v90;
        operator delete(v90);
      }

      *(v51 + 40) = 0;
    }

    else
    {
      v92 = *(v51 + 32);
      if (*(v51 + 24))
      {
        if (v92)
        {
          v93 = v92 - 1;
        }

        else
        {
          *(v51 + 24) = 0;
          v93 = 1;
        }
      }

      else
      {
        v93 = v92 + 1;
        if (v93 >= v91)
        {
          *(v51 + 24) = 1;
          v93 = v91 - 2;
        }
      }

      *(v51 + 32) = v93;
    }
  }

LABEL_60:
  *(v51 + 49) = v87 ^ 1 | *(v51 + 40);
  if (*(*(self + 70) + 49))
  {
    goto LABEL_61;
  }

LABEL_62:
  if ((LAUI_uniform_cubic_b_spline_renderer::renderer_t::render(*(self + 69)) & 1) == 0)
  {
    *(self + 584) = 1;
  }

  [(LAUIPearlGlyphView *)self _updateRendererPaused:?];
LABEL_65:
}

- (LAUIPearlGlyphViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(self + 100);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 212) = 0;
  *(self + 69) = 0;
  *(self + 70) = 0;
  *(self + 52) = 0;
  *(self + 592) = 0;
  *(self + 600) = 0;
  *(self + 672) = 0;
  *(self + 680) = 0;
  *(self + 92) = 0;
  *(self + 93) = 0;
  *(self + 91) = 0;
  return self;
}

- (void)_applyCheckmarkColor
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 752);
    if (v2)
    {
      if (*(a1 + 440))
      {
        v3 = *(a1 + 656);
        v6[0] = vcvtq_f64_f32(*v3.f32);
        v6[1] = vcvt_hight_f64_f32(v3);
        v4 = CGColorCreate(v2, v6);
        if (v4)
        {
          v5 = v4;
          [*(a1 + 440) setColor:v4 animated:0];
          CFRelease(v5);
        }
      }
    }
  }
}

- (uint64_t)_updateRendererPaused:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (((a2 & 1) != 0 || (*(result + 584) & 1) != 0 || *(result + 488)) && (*(result + 480) & 1) == 0)
    {
      v3 = *(result + 768);
    }

    else
    {
      v3 = 1;
    }

    v4 = v3 & 1;
    if (*(result + 481) != v4)
    {
      *(result + 481) = v4;
      if (*(result + 481))
      {
        v5 = 1;
      }

      else
      {
        v6 = *(result + 552);
        if (v6)
        {
          LAUI_uniform_cubic_b_spline_renderer::renderer_t::update_last_render_time(v6);
          v5 = *(v2 + 481);
        }

        else
        {
          v5 = 0;
        }
      }

      v7 = *(v2 + 464);

      return [v7 setPaused:v5 & 1];
    }
  }

  return result;
}

- (void)_executeCompletionHandlers:(uint64_t)a1
{
  if (a1)
  {
    v4 = (a1 + 728);
    v6 = *v4;
    v5 = v4[1];
    if (v5 != *v4)
    {
      v9[3] = v2;
      v9[4] = v3;
      v8[0] = v6;
      v8[1] = v5;
      *v4 = 0;
      v4[1] = 0;
      v8[2] = v4[2];
      v4[2] = 0;
      std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::shrink_to_fit(v4);
      LAUI_CA_utilities::animation_completion_handler_container::execute<std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>>(v8, a2);
      v9[0] = v8;
      std::vector<UIView * {__strong}>::__destroy_vector::operator()[abi:ne200100](v9);
    }
  }
}

- (uint64_t)isWireframeEnabled
{
  if (a1)
  {
    v1 = *(a1 + 552);
    if (v1)
    {
      LOBYTE(v1) = *(v1 + 128);
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

- (uint64_t)setWireframeEnabled:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 552);
    if (v2)
    {
      *(v2 + 128) = a2;
    }

    return [(LAUIPearlGlyphView *)result _updateRendererPaused:?];
  }

  return result;
}

- (uint64_t)setModelTransform:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 552);
    if (v3)
    {
      memmove((v3 + 144), a2, 0x80uLL);
    }

    return [(LAUIPearlGlyphView *)v2 _updateRendererPaused:?];
  }

  return result;
}

- (uint64_t)beginExternalAnimation
{
  if (a1)
  {
    v1 = *(a1 + 488);
    *(a1 + 488) = v1 + 1;
    if (!v1)
    {
      return OUTLINED_FUNCTION_0_3(a1);
    }
  }

  return a1;
}

- (uint64_t)endExternalAnimation
{
  if (a1)
  {
    v1 = *(a1 + 488) - 1;
    *(a1 + 488) = v1;
    if (!v1)
    {
      return OUTLINED_FUNCTION_0_3(a1);
    }
  }

  return a1;
}

- (void)_updateReduceBlurState
{
  if (a1)
  {
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v2 = a1 + 424;
      if (a1[424])
      {
        return;
      }

      LOBYTE(IsReduceMotionEnabled) = 1;
    }

    else
    {
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
      v2 = a1 + 424;
      if (IsReduceMotionEnabled == a1[424])
      {
        return;
      }
    }

    *v2 = IsReduceMotionEnabled;
    [(LAUIPearlGlyphView *)a1 _applyConfiguration];
    if (a1[712] == 1)
    {
      v4 = a1[713];
    }

    else
    {
      v4 = 0;
    }

    [(LAUIPearlGlyphView *)a1 _applyStateAnimated:?];
  }
}

- (uint64_t)invalidate
{
  *a1 = 1;
  v3 = *(a2 + 464);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a2 + 464);
    *(a2 + 464) = 0;
  }

  [a2 purgeBuffers];
  v5 = *(a2 + 472);
  if (v5)
  {
    [v5 removeFromSuperlayer];
    v6 = *(a2 + 472);
    *(a2 + 472) = 0;
  }

  [(LAUIPearlGlyphView *)a2 _executeCompletionHandlers:?];
  [(LAUIPearlGlyphView *)a2 _updateRendererPaused:?];
  result = *(a2 + 552);
  if (result)
  {
    if (*(result + 8) != 1)
    {
      *(result + 8) = 1;
      LAUI_uniform_cubic_b_spline_renderer::renderer_t::purge(result);
    }

    result = std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::renderer_t>::reset[abi:ne200100]((a2 + 552), 0);
  }

  v8 = *(a2 + 560);
  if (v8)
  {
    if (*(v8 + 48) != 1)
    {
      *(v8 + 48) = 1;
      LAUI_CA_utilities::animation_completion_handler_container::set_completion((v8 + 56), 0);
      if (*(v8 + 40) == 1)
      {
        v9 = *v8;
        if (*v8)
        {
          *(v8 + 8) = v9;
          operator delete(v9);
        }

        *(v8 + 40) = 0;
      }
    }
  }

  return result;
}

- (uint64_t)setState:(uint64_t)a1 animated:(uint64_t)a2 withCompletion:.cold.1(uint64_t a1, uint64_t a2)
{
  [(LAUIPearlGlyphView *)a1 _executeCompletionHandlers:?];
  if (!a2)
  {
    return 1;
  }

  if (*(a1 + 480) == 1)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3321888768;
    v6[2] = ___ZN17LAUI_CA_utilities38animation_completion_handler_container7executeEU13block_pointerFvbEb_block_invoke;
    v6[3] = &__block_descriptor_48_ea8_32c102_ZTSKZN17LAUI_CA_utilities38animation_completion_handler_container7executeEU13block_pointerFvbEbEUlvE__e5_v8__0l;
    v4 = MEMORY[0x259C5AE60](a2);
    v7 = MEMORY[0x259C5AE60]();
    v8 = 0;
    dispatch_async(MEMORY[0x277D85CD0], v6);

    return 1;
  }

  return 0;
}

- (uint64_t)renderLoop:(double)a3 drawableSizeDidChange:(double)a4 .cold.1(uint64_t a1, char *a2, double a3, double a4)
{
  *(a1 + 520) = a3;
  *(a1 + 528) = a4;
  *(a1 + 536) = 1;
  v6 = *(a1 + 552);
  v17 = COERCE_UNSIGNED_INT64(1.41421354 / *(a1 + 496));
  v7.f64[0] = 0.0;
  v7.f64[1] = 1.41421354 / *(a1 + 496);
  v16 = v7;
  v8 = a3 / a4;
  v9 = tan(0.463646721);
  v10 = 0;
  *&v11 = 0;
  *(&v11 + 1) = 1.0 / v9;
  v18[0] = COERCE_UNSIGNED_INT64(1.0 / v9 / v8);
  v18[1] = 0u;
  v18[2] = v11;
  memset(&v18[3], 0, 32);
  v18[5] = xmmword_25611D3A0;
  v18[6] = 0u;
  v18[7] = xmmword_25611D3B0;
  do
  {
    v13 = v18[v10];
    v12 = v18[v10 + 1];
    v14 = &a2[v10 * 16];
    *v14 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v17, v13.f64[0]), v16, v13, 1), 0, v12.f64[0]), 0, v12, 1);
    v14[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v13.f64[0]), 0, v13, 1), xmmword_25611D250, v12.f64[0]), xmmword_25611D260, v12, 1);
    v10 += 2;
  }

  while (v10 != 8);
  memcpy((v6 + 400), a2, 0x80uLL);

  return [(LAUIPearlGlyphView *)a1 _updateRendererPaused:?];
}

@end