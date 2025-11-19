@interface CKTransientReplicaButtonContainer
- (CKTransientReplicaButtonContainer)initWithFrame:(CGRect)a3 hasDarkVibrancy:(BOOL)a4 isInDarkMode:(BOOL)a5 color:(id)a6 sendColor:(char)a7;
- (id)_glyphLayerForButtonAnimationWithImage:(id)a3;
- (id)_invertedCircularFillGlyph:(id)a3;
@end

@implementation CKTransientReplicaButtonContainer

- (CKTransientReplicaButtonContainer)initWithFrame:(CGRect)a3 hasDarkVibrancy:(BOOL)a4 isInDarkMode:(BOOL)a5 color:(id)a6 sendColor:(char)a7
{
  v7 = a7;
  v8 = a5;
  v9 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a6;
  v73.receiver = self;
  v73.super_class = CKTransientReplicaButtonContainer;
  v16 = [(CKTransientReplicaButtonContainer *)&v73 initWithFrame:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    v18 = [(CKTransientReplicaButtonContainer *)v16 layer];
    [v18 setAllowsGroupBlending:1];

    v19 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v20 = [v19 isEntryViewRefreshEnabled];

    if (v20)
    {
      v21 = objc_alloc_init(CKGlassSendButton);
      +[CKGlassSendButton buttonSize];
      v23 = v22;
      v25 = v24;
      [(CKGlassSendButton *)v21 setFrame:0.0, 0.0, v22, v24];
      [(CKGlassSendButton *)v21 setCkTintColor:v7];
      [(CKTransientReplicaButtonContainer *)v17 addSubview:v21];
      sendButtonCircle = v17->_sendButtonCircle;
      v17->_sendButtonCircle = &v21->super.super.super;
      v27 = v21;

      v28 = objc_alloc_init(_TtC7ChatKit19CKPillShapedXButton);
      [(CKPillShapedXButton *)v28 setFrame:0.0, 0.0, v23, v25];
      [(CKTransientReplicaButtonContainer *)v17 addSubview:v28];
      cancelButtonCircle = v17->_cancelButtonCircle;
      v17->_cancelButtonCircle = &v28->super.super.super;
    }

    else
    {
      v64 = v9;
      v65 = v8;
      cancelButtonCircle = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:3 scale:19.0];
      v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle.fill" withConfiguration:cancelButtonCircle];
      v30 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.circle.fill" withConfiguration:cancelButtonCircle];
      v31 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill" withConfiguration:cancelButtonCircle];
      v72 = v30;
      v32 = [(CKTransientReplicaButtonContainer *)v17 _invertedCircularFillGlyph:v30];
      v71 = v31;
      v33 = [(CKTransientReplicaButtonContainer *)v17 _invertedCircularFillGlyph:v31];
      v70 = v32;
      v34 = [(CKTransientReplicaButtonContainer *)v17 _glyphLayerForButtonAnimationWithImage:v32];
      v69 = v33;
      v68 = [(CKTransientReplicaButtonContainer *)v17 _glyphLayerForButtonAnimationWithImage:v33];
      v35 = [MEMORY[0x1E69DC738] buttonWithType:1];
      v36 = [MEMORY[0x1E69DC738] buttonWithType:1];
      [(CKTransientReplicaButtonContainer *)v17 bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      [(UIView *)v35 setFrame:?];
      [v36 setFrame:{v38, v40, v42, v44}];
      v45 = +[CKUIBehavior sharedBehaviors];
      v46 = [v45 theme];
      v47 = [v46 sendButtonColorForColorType:v7];

      [(UIView *)v35 setImage:v27 forState:0];
      v67 = v47;
      [(UIView *)v35 setTintColor:v47];
      v48 = v15;
      [v36 setImage:v27 forState:0];
      v66 = v48;
      [v36 setTintColor:v48];
      v49 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v38, v40, v42, v44}];
      if (!UIAccessibilityIsReduceTransparencyEnabled() && !UIAccessibilityDarkerSystemColorsEnabled())
      {
        v50 = [(UIView *)v49 layer];
        setUpVibrancyForLayer(v50, v64, v65 ^ 1, v65);
      }

      [(UIView *)v49 addSubview:v36];
      [(CKTransientReplicaButtonContainer *)v17 addSubview:v35];
      [(CKTransientReplicaButtonContainer *)v17 addSubview:v49];
      v74.origin.x = v38;
      v74.origin.y = v40;
      v74.size.width = v42;
      v74.size.height = v44;
      MidX = CGRectGetMidX(v74);
      v75.origin.x = v38;
      v75.origin.y = v40;
      v75.size.width = v42;
      v75.size.height = v44;
      MidY = CGRectGetMidY(v75);
      [(CALayer *)v34 setPosition:MidX, MidY];
      [(CALayer *)v68 setPosition:MidX, MidY];
      v53 = [(UIView *)v35 layer];
      [v53 addSublayer:v34];

      v54 = [v36 layer];
      [v54 addSublayer:v68];

      v55 = v17->_cancelButtonCircle;
      v17->_cancelButtonCircle = v49;
      v56 = v49;

      v57 = v17->_sendButtonCircle;
      v17->_sendButtonCircle = v35;
      v58 = v35;

      sendButtonGlyphLayer = v17->_sendButtonGlyphLayer;
      v17->_sendButtonGlyphLayer = v34;
      v60 = v34;

      cancelButtonGlyphLayer = v17->_cancelButtonGlyphLayer;
      v17->_cancelButtonGlyphLayer = v68;
    }

    v62 = v17;
  }

  return v17;
}

- (id)_invertedCircularFillGlyph:(id)a3
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 configuration];
  v6 = MEMORY[0x1E69DCAD8];
  v7 = [MEMORY[0x1E69DC888] blackColor];
  v23[0] = v7;
  v8 = [MEMORY[0x1E69DC888] clearColor];
  v23[1] = v8;
  v9 = [MEMORY[0x1E69DC888] clearColor];
  v23[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v11 = [v6 _configurationWithHierarchicalColors:v10];
  v12 = [v5 configurationByApplyingConfiguration:v11];

  v13 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  v14 = [(CKTransientReplicaButtonContainer *)self traitCollection];
  [v14 displayScale];
  [v13 setScale:?];

  v15 = [v4 imageWithConfiguration:v12];

  v16 = objc_alloc(MEMORY[0x1E69DCA78]);
  [v15 size];
  v17 = [v16 initWithSize:v13 format:?];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__CKTransientReplicaButtonContainer__invertedCircularFillGlyph___block_invoke;
  v21[3] = &unk_1E72EBBE8;
  v22 = v15;
  v18 = [v17 imageWithActions:v21];
  v19 = [v18 imageWithRenderingMode:2];

  return v19;
}

- (id)_glyphLayerForButtonAnimationWithImage:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x1E6979398] layer];
  v9 = [v3 CGImage];

  [v8 setContents:v9];
  [v8 setBounds:{0.0, 0.0, v5, v7}];
  v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  [v8 setCompositingFilter:v10];

  return v8;
}

@end