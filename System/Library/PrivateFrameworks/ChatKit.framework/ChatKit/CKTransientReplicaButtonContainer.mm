@interface CKTransientReplicaButtonContainer
- (CKTransientReplicaButtonContainer)initWithFrame:(CGRect)frame hasDarkVibrancy:(BOOL)vibrancy isInDarkMode:(BOOL)mode color:(id)color sendColor:(char)sendColor;
- (id)_glyphLayerForButtonAnimationWithImage:(id)image;
- (id)_invertedCircularFillGlyph:(id)glyph;
@end

@implementation CKTransientReplicaButtonContainer

- (CKTransientReplicaButtonContainer)initWithFrame:(CGRect)frame hasDarkVibrancy:(BOOL)vibrancy isInDarkMode:(BOOL)mode color:(id)color sendColor:(char)sendColor
{
  sendColorCopy = sendColor;
  modeCopy = mode;
  vibrancyCopy = vibrancy;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v73.receiver = self;
  v73.super_class = CKTransientReplicaButtonContainer;
  height = [(CKTransientReplicaButtonContainer *)&v73 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    layer = [(CKTransientReplicaButtonContainer *)height layer];
    [layer setAllowsGroupBlending:1];

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isEntryViewRefreshEnabled = [mEMORY[0x1E69A8070] isEntryViewRefreshEnabled];

    if (isEntryViewRefreshEnabled)
    {
      v21 = objc_alloc_init(CKGlassSendButton);
      +[CKGlassSendButton buttonSize];
      v23 = v22;
      v25 = v24;
      [(CKGlassSendButton *)v21 setFrame:0.0, 0.0, v22, v24];
      [(CKGlassSendButton *)v21 setCkTintColor:sendColorCopy];
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
      v64 = vibrancyCopy;
      v65 = modeCopy;
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
      theme = [v45 theme];
      v47 = [theme sendButtonColorForColorType:sendColorCopy];

      [(UIView *)v35 setImage:v27 forState:0];
      v67 = v47;
      [(UIView *)v35 setTintColor:v47];
      v48 = colorCopy;
      [v36 setImage:v27 forState:0];
      v66 = v48;
      [v36 setTintColor:v48];
      v49 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v38, v40, v42, v44}];
      if (!UIAccessibilityIsReduceTransparencyEnabled() && !UIAccessibilityDarkerSystemColorsEnabled())
      {
        layer2 = [(UIView *)v49 layer];
        setUpVibrancyForLayer(layer2, v64, v65 ^ 1, v65);
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
      layer3 = [(UIView *)v35 layer];
      [layer3 addSublayer:v34];

      layer4 = [v36 layer];
      [layer4 addSublayer:v68];

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

- (id)_invertedCircularFillGlyph:(id)glyph
{
  v23[3] = *MEMORY[0x1E69E9840];
  glyphCopy = glyph;
  configuration = [glyphCopy configuration];
  v6 = MEMORY[0x1E69DCAD8];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v23[0] = blackColor;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v23[1] = clearColor;
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  v23[2] = clearColor2;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v11 = [v6 _configurationWithHierarchicalColors:v10];
  v12 = [configuration configurationByApplyingConfiguration:v11];

  v13 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  traitCollection = [(CKTransientReplicaButtonContainer *)self traitCollection];
  [traitCollection displayScale];
  [v13 setScale:?];

  v15 = [glyphCopy imageWithConfiguration:v12];

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

- (id)_glyphLayerForButtonAnimationWithImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v5 = v4;
  v7 = v6;
  layer = [MEMORY[0x1E6979398] layer];
  cGImage = [imageCopy CGImage];

  [layer setContents:cGImage];
  [layer setBounds:{0.0, 0.0, v5, v7}];
  v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  [layer setCompositingFilter:v10];

  return layer;
}

@end