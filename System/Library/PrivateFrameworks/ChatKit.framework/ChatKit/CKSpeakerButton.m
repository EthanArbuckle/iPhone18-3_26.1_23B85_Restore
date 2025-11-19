@interface CKSpeakerButton
+ (id)speakerImageWithEnabledState:(BOOL)a3;
+ (id)speakerImageWithOrientation:(char)a3 speakerEnabled:(BOOL)a4 shouldShowText:(BOOL)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKSpeakerButton)initWithFrame:(CGRect)a3;
- (void)setOrientation:(char)a3;
- (void)setShouldShowText:(BOOL)a3;
- (void)setSpeakerEnabled:(BOOL)a3;
- (void)touchUpInside:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSpeakerImage;
@end

@implementation CKSpeakerButton

- (CKSpeakerButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKSpeakerButton;
  v3 = [(CKSpeakerButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKSpeakerButton *)v3 addTarget:v3 action:sel_touchUpInside_ forControlEvents:64];
    v4->_speakerEnabled = 1;
    [(CKSpeakerButton *)v4 updateSpeakerImage];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = CKSpeakerButton;
  [(CKSpeakerButton *)&v5 sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setOrientation:(char)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(CKSpeakerButton *)self updateSpeakerImage];
  }
}

- (void)setSpeakerEnabled:(BOOL)a3
{
  if (self->_speakerEnabled != a3)
  {
    self->_speakerEnabled = a3;
    [(CKSpeakerButton *)self updateSpeakerImage];
  }
}

+ (id)speakerImageWithOrientation:(char)a3 speakerEnabled:(BOOL)a4 shouldShowText:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v96[1] = *MEMORY[0x1E69E9840];
  if (speakerImageWithOrientation_speakerEnabled_shouldShowText__once != -1)
  {
    +[CKSpeakerButton speakerImageWithOrientation:speakerEnabled:shouldShowText:];
  }

  v90[0] = v7;
  v90[1] = v6;
  v90[2] = v5;
  v8 = [MEMORY[0x1E696B098] value:v90 withObjCType:"{?=cBB}"];
  v9 = [speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerImageCache objectForKey:v8];
  if (!v9)
  {
    v88 = v6;
    v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:17.0];
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"speaker.wave.3.fill"];
    v89 = v10;
    v12 = [v11 imageWithSymbolConfiguration:v10];
    v13 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v14 = [v12 imageWithTintColor:v13];
    v15 = [MEMORY[0x1E69DC888] systemGrayColor];
    v16 = [v14 imageWithTintColor:v15];

    [v16 size];
    v18 = v17;
    v20 = v19;
    v21 = CKPreferredContentSizeCategory();
    v22 = UIContentSizeCategoryCompareToCategory(speakerImageWithOrientation_speakerEnabled_shouldShowText__sContentSizeCategory_SpeakerTextWidth, v21);
    v23 = &collaborationOptionsPopoverInsets_sBehavior_3;
    v24 = &collaborationOptionsPopoverInsets_sBehavior_3;
    v25 = off_1E72E5000;
    v26 = MEMORY[0x1E69DB648];
    if (v22)
    {
      v27 = CKFrameworkBundle();
      v28 = [v27 localizedStringForKey:@"AUDIO_MESSAGE_SPEAKER_ON" value:&stru_1F04268F8 table:@"ChatKit"];
      v95 = *MEMORY[0x1E69DB648];
      v29 = v95;
      +[CKUIBehavior sharedBehaviors];
      v30 = v86 = v16;
      v31 = [v30 transcriptBoldFont];
      v96[0] = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:&v95 count:1];
      [v28 sizeWithAttributes:v32];
      v34 = v33;
      v36 = v35;

      v37 = CKFrameworkBundle();
      v38 = [v37 localizedStringForKey:@"AUDIO_MESSAGE_SPEAKER_OFF" value:&stru_1F04268F8 table:@"ChatKit"];
      v93 = v29;
      v26 = MEMORY[0x1E69DB648];
      v39 = +[CKUIBehavior sharedBehaviors];
      v40 = [v39 transcriptBoldFont];
      v94 = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      [v38 sizeWithAttributes:v41];
      v43 = v42;
      v45 = v44;

      v23 = &collaborationOptionsPopoverInsets_sBehavior_3;
      v16 = v86;

      v25 = off_1E72E5000;
      v24 = &collaborationOptionsPopoverInsets_sBehavior_3;
      speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerTextMaxWidth = fmax(v34, v43);
      speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerTextMaxHeight = fmax(v36, v45);
      objc_storeStrong(&speakerImageWithOrientation_speakerEnabled_shouldShowText__sContentSizeCategory_SpeakerTextWidth, v21);
    }

    v46 = *(v23 + 103);
    v47 = v24[104];

    v48 = v18 + 5.0 + v46;
    v98.width = v48;
    v98.height = v20;
    UIGraphicsBeginImageContextWithOptions(v98, 0, 0.0);
    v49 = *(MEMORY[0x1E695EFF8] + 8);
    if (v7)
    {
      v99.origin.x = 0.0;
      v99.origin.y = 0.0;
      v99.size.width = v18 + 5.0 + v46;
      v99.size.height = v20;
      v50 = CGRectGetMaxX(v99) - v18;
    }

    else
    {
      v50 = *MEMORY[0x1E695EFF8];
    }

    [v16 drawInRect:{v50, v49, v18, v20}];
    if (v5)
    {
      v85 = v20;
      v87 = v18 + 5.0 + v46;
      v51 = v16;
      if (v7)
      {
        v52 = v50 + -5.0 - v46;
      }

      else
      {
        v100.origin.x = v50;
        v100.origin.y = v49;
        v100.size.width = v18;
        v100.size.height = v20;
        v52 = CGRectGetMaxX(v100) + 5.0;
      }

      v53 = v25;
      v54 = [(__objc2_class *)v25[337] sharedBehaviors];
      [v54 transcriptBoldTextAlignmentInsets];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;

      v63 = v52 + v58;
      v64 = v58 + v62;
      v65 = v46 - v64;
      v66 = v56 + v60;
      v67 = v84 - v66;
      if (CKMainScreenScale_once_94 != -1)
      {
        +[CKSpeakerButton speakerImageWithOrientation:speakerEnabled:shouldShowText:];
      }

      v68 = *&CKMainScreenScale_sMainScreenScale_94;
      if (*&CKMainScreenScale_sMainScreenScale_94 == 0.0)
      {
        v68 = 1.0;
      }

      v69 = floor((v49 + (v85 - v67) * 0.5) * v68) / v68;
      v70 = v63 - v58;
      v20 = v85;
      v71 = v69 - v56;
      v72 = v66 + v67;
      v73 = CKFrameworkBundle();
      v74 = v73;
      if (v88)
      {
        v75 = @"AUDIO_MESSAGE_SPEAKER_ON";
      }

      else
      {
        v75 = @"AUDIO_MESSAGE_SPEAKER_OFF";
      }

      v76 = [v73 localizedStringForKey:v75 value:&stru_1F04268F8 table:@"ChatKit"];

      v91 = *v26;
      v77 = [(__objc2_class *)v53[337] sharedBehaviors];
      v78 = [v77 transcriptBoldFont];
      v92 = v78;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      [v76 drawInRect:v79 withAttributes:{v70, v71, v64 + v65, v72}];

      v16 = v51;
      v48 = v87;
    }

    if (v88)
    {
      v80 = [MEMORY[0x1E69DC888] blackColor];
      v81 = 2;
    }

    else
    {
      v80 = [MEMORY[0x1E69DC888] systemGrayColor];
      v81 = 1;
    }

    [v80 set];
    v101.origin.x = 0.0;
    v101.origin.y = 0.0;
    v101.size.width = v48;
    v101.size.height = v20;
    UIRectFillUsingBlendMode(v101, kCGBlendModeSourceIn);
    v82 = UIGraphicsGetImageFromCurrentImageContext();

    v9 = [v82 imageWithRenderingMode:v81];

    UIGraphicsEndImageContext();
    [speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerImageCache setObject:v9 forKey:v8];
  }

  return v9;
}

void __77__CKSpeakerButton_speakerImageWithOrientation_speakerEnabled_shouldShowText___block_invoke()
{
  v0 = CKDefaultCacheLimit();
  v1 = CKCreateCache(v0);
  v2 = speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerImageCache;
  speakerImageWithOrientation_speakerEnabled_shouldShowText__sSpeakerImageCache = v1;
}

- (void)updateSpeakerImage
{
  v4 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v3 = [CKSpeakerButton speakerImageWithEnabledState:[(CKSpeakerButton *)self isSpeakerEnabled]];
  [v4 setImage:v3];

  [(CKSpeakerButton *)self setConfiguration:v4];
}

- (void)setShouldShowText:(BOOL)a3
{
  if (self->_shouldShowText != a3)
  {
    self->_shouldShowText = 0;
    [(CKSpeakerButton *)self updateSpeakerImage];
  }
}

- (void)touchUpInside:(id)a3
{
  v4 = [(CKSpeakerButton *)self isSpeakerEnabled]^ 1;

  [(CKSpeakerButton *)self setSpeakerEnabled:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKSpeakerButton;
  [(CKSpeakerButton *)&v4 traitCollectionDidChange:a3];
  [(CKSpeakerButton *)self updateSpeakerImage];
}

+ (id)speakerImageWithEnabledState:(BOOL)a3
{
  if (speakerImageWithEnabledState__once != -1)
  {
    +[CKSpeakerButton speakerImageWithEnabledState:];
  }

  v28[0] = a3;
  v4 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v28[1] = [v4 userInterfaceStyle];

  v5 = [MEMORY[0x1E696B098] value:v28 withObjCType:"{?=Bq}"];
  v6 = [speakerImageWithEnabledState__sSpeakerImageCache objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    v8 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:14.0];
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"speaker.wave.3.fill"];
    v11 = [v10 imageWithSymbolConfiguration:v9];

    v12 = [v11 imageWithRenderingMode:1];

    if (a3)
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGrayColor];
    }
    v13 = ;
    v14 = [v12 imageWithTintColor:v13];

    [v14 size];
    v17 = v15;
    v18 = v16;
    if (v15 + 12.0 >= v16 + 12.0)
    {
      v19 = v15 + 12.0;
    }

    else
    {
      v19 = v16 + 12.0;
    }

    v20 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v19, v19}];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __48__CKSpeakerButton_speakerImageWithEnabledState___block_invoke_2;
    v22[3] = &unk_1E72F24C8;
    v24 = v19;
    v25 = v19;
    v26 = v17;
    v27 = v18;
    v7 = v14;
    v23 = v7;
    v8 = [v20 imageWithActions:v22];
    [speakerImageWithEnabledState__sSpeakerImageCache setObject:v8 forKey:v5];
  }

  return v8;
}

void __48__CKSpeakerButton_speakerImageWithEnabledState___block_invoke()
{
  v0 = CKDefaultCacheLimit();
  v1 = CKCreateCache(v0);
  v2 = speakerImageWithEnabledState__sSpeakerImageCache;
  speakerImageWithEnabledState__sSpeakerImageCache = v1;
}

void __48__CKSpeakerButton_speakerImageWithEnabledState___block_invoke_2(uint64_t a1)
{
  __asm { FMOV            V2.2D, #0.5 }

  v11 = _Q2;
  [*(a1 + 32) drawAtPoint:{vsubq_f64(vmulq_f64(*(a1 + 40), _Q2), vmulq_f64(*(a1 + 56), _Q2))}];
  v12 = [MEMORY[0x1E69DC728] bezierPath];
  [v12 setLineWidth:1.0];
  [v12 setLineJoinStyle:1];
  v7 = vmulq_f64(*(a1 + 40), v11);
  [v12 addArcWithCenter:0 radius:*&v7 startAngle:v7.f64[1] + -1.0 endAngle:0.0 clockwise:6.28318531];
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = [v8 theme];
  v10 = [v9 quickActionButtonStrokeColor];
  [v10 setStroke];

  [v12 stroke];
}

@end