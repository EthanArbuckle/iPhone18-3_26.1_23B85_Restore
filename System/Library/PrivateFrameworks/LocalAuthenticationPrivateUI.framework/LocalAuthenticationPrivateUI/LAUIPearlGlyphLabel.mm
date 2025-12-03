@interface LAUIPearlGlyphLabel
- (CGSize)maximumSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LAUIPearlGlyphLabel)initWithStyle:(int64_t)style;
- (id).cxx_construct;
- (id)_applyVisibilityAnimated:(id *)location;
- (void)_applyStyle;
- (void)_applyVisibilityAnimated:;
- (void)_applyVisibilityAnimated:(BOOL)animated;
- (void)_updateBoundsSizeAnimated:(BOOL)animated;
- (void)_updateFontAnimated:(BOOL)animated;
- (void)_updateGlyphPaused;
- (void)_updateReduceBlurState;
- (void)_updateText;
- (void)_updateVisibilityAnimated:(BOOL)animated;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutIfNeededAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setMaximumSize:(CGSize)size animated:(BOOL)animated;
- (void)setShimmerEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setStyle:(int64_t)style animated:(BOOL)animated;
- (void)setText:(id)text animated:(BOOL)animated;
@end

@implementation LAUIPearlGlyphLabel

- (LAUIPearlGlyphLabel)initWithStyle:(int64_t)style
{
  v51[12] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v47.receiver = self;
  v47.super_class = LAUIPearlGlyphLabel;
  v8 = [(LAUIPearlGlyphLabel *)&v47 initWithFrame:v4, v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    *(v8 + 73) = style;
    v8[576] = 1;
    *(v8 + 600) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *(v8 + 34) = *(v8 + 600);
    null = [MEMORY[0x277CBEB68] null];
    v51[0] = @"position";
    v51[1] = @"bounds";
    *&v50.m11 = null;
    *&v50.m12 = null;
    v51[2] = @"transform";
    v51[3] = @"backgroundColor";
    *&v50.m13 = null;
    *&v50.m14 = null;
    v51[4] = @"cornerRadius";
    v51[5] = @"contents";
    *&v50.m21 = null;
    *&v50.m22 = null;
    v51[6] = @"anchorPoint";
    v51[7] = @"opacity";
    *&v50.m23 = null;
    *&v50.m24 = null;
    v51[8] = @"strokeStart";
    v51[9] = @"strokeEnd";
    *&v50.m31 = null;
    *&v50.m32 = null;
    v51[10] = @"strokeColor";
    v51[11] = @"fillColor";
    *&v50.m33 = null;
    *&v50.m34 = null;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:v51 count:12];

    layer = [(LAUIPearlGlyphLabel *)v9 layer];
    [layer setAllowsGroupOpacity:0];
    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    container = v9->_container;
    v9->_container = v12;

    layer2 = [(UIView *)v9->_container layer];
    CATransform3DMakeScale(&v50, 1.1, 1.1, 1.0);
    [layer2 setTransform:&v50];

    [(LAUIPearlGlyphLabel *)v9 addSubview:v9->_container];
    layer3 = [(UIView *)v9->_container layer];

    [layer3 setAllowsGroupOpacity:0];
    [layer3 setAllowsGroupBlending:0];
    v16 = objc_alloc_init(MEMORY[0x277CD9E08]);
    background = v9->_background;
    v9->_background = v16;

    [(CABackdropLayer *)v9->_background setCornerCurve:*MEMORY[0x277CDA138]];
    [(CABackdropLayer *)v9->_background setAllowsInPlaceFiltering:1];
    [(CABackdropLayer *)v9->_background setActions:v45];
    v18 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
    [v18 setName:@"saturation"];
    [v18 setValue:&unk_28682F7F8 forKey:@"inputAmount"];
    v19 = *MEMORY[0x277CDA328];
    v20 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v20 setName:@"blur"];
    [v20 setValue:&unk_28682F7F8 forKey:@"inputRadius"];
    [v20 setValue:MEMORY[0x277CBEC38] forKey:@"inputNormalizeEdges"];
    v21 = v9->_background;
    v49[0] = v18;
    v49[1] = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    [(CABackdropLayer *)v21 setFilters:v22];

    [layer3 addSublayer:v9->_background];
    v23 = objc_alloc_init(MEMORY[0x277D75D18]);
    labelContainer = v9->_labelContainer;
    v9->_labelContainer = v23;

    layer4 = [(UIView *)v9->_labelContainer layer];

    [(UIView *)v9->_container addSubview:v9->_labelContainer];
    v26 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v9->_label;
    v9->_label = v26;

    [(UILabel *)v9->_label setTextAlignment:1];
    [(UILabel *)v9->_label setLineBreakMode:4];
    [(UIView *)v9->_labelContainer addSubview:v9->_label];
    v28 = objc_alloc_init(MEMORY[0x277D75D18]);
    glyphContainer = v9->_glyphContainer;
    v9->_glyphContainer = v28;

    layer5 = [(UIView *)v9->_glyphContainer layer];

    [layer5 setAllowsGroupOpacity:0];
    [layer5 setAllowsGroupBlending:0];
    v31 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA570]];
    [layer5 setCompositingFilter:v31];

    [(UIView *)v9->_container addSubview:v9->_glyphContainer];
    v32 = [LAUIPearlGlyphView alloc];
    v33 = +[LAUIPearlGlyphStaticConfiguration createDefaultConfiguration];
    v34 = [(LAUIPearlGlyphView *)v32 initWithConfiguration:v33];
    glyph = v9->_glyph;
    v9->_glyph = v34;

    layer6 = [(LAUIPearlGlyphView *)v9->_glyph layer];

    [(LAUIPearlGlyphView *)v9->_glyph setBounds:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), 30.0, 30.0];
    [(LAUIPearlGlyphView *)v9->_glyph setState:2 animated:0];
    [(LAUIPearlGlyphView *)v9->_glyph setPaused:1];
    v37 = [MEMORY[0x277CD9EA0] filterWithType:v19];
    [v37 setValue:&unk_28682F810 forKey:@"inputRadius"];
    [v37 setValue:MEMORY[0x277CBEC28] forKey:@"inputHardEdges"];
    [v37 setValue:MEMORY[0x277CBEC28] forKey:@"inputNormalizeEdges"];
    v48 = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [layer6 setFilters:v38];

    [(UIView *)v9->_glyphContainer addSubview:v9->_glyph];
    [(LAUIPearlGlyphLabel *)v9 _applyStyle];
    v39 = v9->_background;
    v40 = [(UIColor *)v9->_backgroundColor colorWithAlphaComponent:0.0];
    v41 = v40;
    -[CABackdropLayer setBackgroundColor:](v39, "setBackgroundColor:", [v40 CGColor]);

    [(UILabel *)v9->_label setTextColor:v9->_textColor];
    v42 = UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityIsReduceMotionEnabled();
    v9->_reduceBlur = v42;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
    [defaultCenter addObserver:v9 selector:sel_reduceTransparencyDidChange_ name:*MEMORY[0x277D764C8] object:0];
    [defaultCenter addObserver:v9 selector:sel_reduceMotionDidChange_ name:*MEMORY[0x277D764C0] object:0];
    [defaultCenter addObserver:v9 selector:sel_boldTextStatusDidChange_ name:*MEMORY[0x277D76448] object:0];
    [defaultCenter addObserver:v9 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
    [(LAUIPearlGlyphLabel *)v9 _updateFontAnimated:0];
    [(LAUIPearlGlyphLabel *)v9 _applyVisibilityAnimated:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  visibilityTimer = self->_visibilityTimer;
  if (visibilityTimer)
  {
    dispatch_source_cancel(visibilityTimer);
    v5 = self->_visibilityTimer;
    self->_visibilityTimer = 0;
  }

  [(LAUIPearlGlyphLabel *)self invalidate];
  v6.receiver = self;
  v6.super_class = LAUIPearlGlyphLabel;
  [(LAUIPearlGlyphLabel *)&v6 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  width = self->_currentLabelSize.width;
  v8 = self->_currentMaximumSize.width;
  height = self->_currentMaximumSize.height;
  font = [(UILabel *)self->_label font];
  [font lineHeight];
  v12 = v11;
  [font leading];
  if (width <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = width + 12.0 + 12.0;
  }

  v15 = fmax(v6, 1.0);
  v16 = ceil(v15 * (v12 + v13)) / v15 + 5.0 + 5.0;

  v17 = fmin(fmax(v16, 0.0), height);
  v18 = fmin(fmax(v14, v17), v8);
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = LAUIPearlGlyphLabel;
  [(LAUIPearlGlyphLabel *)&v4 didMoveToWindow];
  window = [(LAUIPearlGlyphLabel *)self window];
  self->_inWindow = window != 0;

  [(LAUIPearlGlyphLabel *)self _updateText];
}

- (void)layoutIfNeededAnimated:(BOOL)animated
{
  self->_animated = animated;
  [(LAUIPearlGlyphLabel *)self layoutIfNeeded];
  self->_animated = 0;
}

- (void)layoutSubviews
{
  v202 = *MEMORY[0x277D85DE8];
  v189.receiver = self;
  v189.super_class = LAUIPearlGlyphLabel;
  [(LAUIPearlGlyphLabel *)&v189 layoutSubviews];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  [(LAUIPearlGlyphLabel *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(MEMORY[0x277CBF348] + 8);
  v168 = *MEMORY[0x277CBF348];
  animated = self->_animated;
  if (animated)
  {
    LAUI_CA_utilities::spring_factory::spring_factory(&v192, 1.0, 199.791, 25.4425, 0.0, 0);
    m11_low = LOBYTE(v192.m11);
    v201[0] = *(&v192.m11 + 1);
    *(v201 + 15) = *&v192.m13;
    m21 = v192.m21;
    v188 = *&v192.m22;
  }

  else
  {
    m11_low = 0;
  }

  layer = [(UIView *)self->_container layer];
  if (animated)
  {
    v200[0] = v201[0];
    *(v200 + 15) = *(v201 + 15);
    v16 = *&m21;
    v187 = v188;
    v17 = m11_low;
  }

  else
  {
    v17 = 0;
  }

  v18 = layer;
  [v18 anchorPoint];
  v20 = v6 + v19 * v10;
  v22 = v8 + v21 * v12;
  LOBYTE(v192.m11) = 0;
  LOBYTE(v192.m24) = 0;
  if (animated)
  {
    LOBYTE(v192.m11) = v17;
    *(&v192.m11 + 1) = v200[0];
    *&v192.m13 = *(v200 + 15);
    *&v192.m21 = *&m21;
    *&v192.m22 = v187;
    LOBYTE(v192.m24) = 1;
  }

  LAUI_CA_utilities::set_layer_geometry(v18, &v192, v20, v22, v168, v13, v10, v12);
  if (LOBYTE(v192.m24) == 1)
  {
  }

  if (animated)
  {
  }

  width = self->_currentMaximumSize.width;
  height = self->_currentMaximumSize.height;
  font = [(UILabel *)self->_label font];
  [font lineHeight];
  v27 = v26;
  [font leading];
  v29 = v28;

  [(CABackdropLayer *)self->_background cornerRadius];
  v30 = fmax(v4, 1.0);
  v170 = fmin(fmax(v12, ceil(v30 * (v27 + v29)) / v30 + 5.0 + 5.0), height);
  v172 = round(v30 * (v170 * 0.5)) / v30;
  if (v31 != v172)
  {
    [(CABackdropLayer *)self->_background setCornerRadius:v172];
  }

  background = self->_background;
  v33 = *MEMORY[0x277CBF348];
  v34 = *(MEMORY[0x277CBF348] + 8);
  if (animated)
  {
    v199[0] = v201[0];
    *(v199 + 15) = *(v201 + 15);
    v35 = *&m21;
    v186 = v188;
    v36 = m11_low;
  }

  else
  {
    v36 = 0;
  }

  v37 = background;
  [(CABackdropLayer *)v37 anchorPoint];
  v38 = fmin(fmax(v10, v170), width);
  v39 = round(v30 * (v168 + (v10 - v38) * 0.5)) / v30;
  v169 = v38;
  v165 = round(v30 * (v13 + (v12 - v170) * 0.5)) / v30;
  v166 = v39;
  v41 = v39 + v40 * v38;
  v43 = v165 + v42 * v170;
  LOBYTE(v192.m11) = 0;
  LOBYTE(v192.m24) = 0;
  if (animated)
  {
    LOBYTE(v192.m11) = v36;
    *(&v192.m11 + 1) = v199[0];
    *&v192.m13 = *(v199 + 15);
    *&v192.m21 = *&m21;
    *&v192.m22 = v186;
    LOBYTE(v192.m24) = 1;
  }

  LAUI_CA_utilities::set_layer_geometry(v37, &v192, v41, v43, v33, v34, v169, v170);
  if (LOBYTE(v192.m24) == 1)
  {
  }

  if (animated)
  {
  }

  layer2 = [(UIView *)self->_glyphContainer layer];
  v45 = *MEMORY[0x277CBF348];
  v46 = *(MEMORY[0x277CBF348] + 8);
  if (animated)
  {
    v198[0] = v201[0];
    *(v198 + 15) = *(v201 + 15);
    v47 = *&m21;
    v185 = v188;
    v48 = m11_low;
  }

  else
  {
    v48 = 0;
  }

  v49 = layer2;
  [v49 anchorPoint];
  v158 = 440;
  v51 = v166 + v50 * v169;
  v53 = v165 + v52 * v170;
  LOBYTE(v192.m11) = 0;
  LOBYTE(v192.m24) = 0;
  if (animated)
  {
    LOBYTE(v192.m11) = v48;
    *(&v192.m11 + 1) = v198[0];
    *&v192.m13 = *(v198 + 15);
    *&v192.m21 = *&m21;
    *&v192.m22 = v185;
    LOBYTE(v192.m24) = 1;
  }

  LAUI_CA_utilities::set_layer_geometry(v49, &v192, v51, v53, v45, v46, v169, v170);
  if (LOBYTE(v192.m24) == 1)
  {
  }

  if (animated)
  {
  }

  layer3 = [(UIView *)self->_labelContainer layer];
  v55 = *MEMORY[0x277CBF3A0];
  v56 = *(MEMORY[0x277CBF3A0] + 8);
  v57 = *(MEMORY[0x277CBF3A0] + 16);
  v58 = *(MEMORY[0x277CBF3A0] + 24);
  if (animated)
  {
    v197[0] = v201[0];
    *(v197 + 15) = *(v201 + 15);
    v59 = *&m21;
    v184 = v188;
    v60 = m11_low;
  }

  else
  {
    v60 = 0;
  }

  v61 = layer3;
  [v61 anchorPoint];
  v63 = round(v30 * (v166 + (v169 - v57) * 0.5)) / v30 + v62 * v57;
  v65 = round(v30 * (v165 + (v170 - v58) * 0.5)) / v30 + v64 * v58;
  LOBYTE(v192.m11) = 0;
  LOBYTE(v192.m24) = 0;
  if (animated)
  {
    LOBYTE(v192.m11) = v60;
    *(&v192.m11 + 1) = v197[0];
    *&v192.m13 = *(v197 + 15);
    *&v192.m21 = *&m21;
    *&v192.m22 = v184;
    LOBYTE(v192.m24) = 1;
  }

  LAUI_CA_utilities::set_layer_geometry(v61, &v192, v63, v65, v55, v56, v57, v58);
  if (LOBYTE(v192.m24) == 1)
  {
  }

  if (animated)
  {
  }

  [(UIView *)self->_labelContainer bounds];
  v162 = v67;
  v163 = v66;
  v160 = v69;
  v161 = v68;
  layer4 = [(UILabel *)self->_label layer];
  [layer4 bounds];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = self->_maximumSize.width;
  if (animated)
  {
    v196[0] = v201[0];
    *(v196 + 15) = *(v201 + 15);
    v80 = *&m21;
    v183 = v188;
    v81 = m11_low;
  }

  else
  {
    v81 = 0;
  }

  v82 = layer4;
  [v82 anchorPoint];
  v83 = fmin(v76, v79 + -12.0 + -12.0);
  v85 = round(v30 * (v163 + (v161 - v83) * 0.5)) / v30 + v84 * v83;
  v87 = round(v30 * (v162 + (v160 - v78) * 0.5)) / v30 + v86 * v78;
  LOBYTE(v192.m11) = 0;
  LOBYTE(v192.m24) = 0;
  if (animated)
  {
    LOBYTE(v192.m11) = v81;
    *(&v192.m11 + 1) = v196[0];
    *&v192.m13 = *(v196 + 15);
    *&v192.m21 = *&m21;
    *&v192.m22 = v183;
    LOBYTE(v192.m24) = 1;
  }

  v88 = LAUI_CA_utilities::set_layer_geometry(v82, &v192, v85, v87, v72, v74, v83, v78);
  if (LOBYTE(v192.m24) == 1)
  {
  }

  if (animated)
  {
  }

  if ((v88 & 2) != 0)
  {
    [(UILabel *)self->_label setNeedsDisplay];
  }

  begin = self->_labelSnapshots.__begin_;
  for (i = self->_labelSnapshots.var0; begin != i; ++begin)
  {
    layer5 = [(__end_ *)*begin layer];
    [layer5 bounds];
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    if (animated)
    {
      v195[0] = v201[0];
      *(v195 + 15) = *(v201 + 15);
      layer4 = *&m21;
      v182 = v188;
      v100 = m11_low;
    }

    else
    {
      v100 = 0;
    }

    v101 = layer5;
    [v101 anchorPoint];
    v103 = v102;
    v105 = v104;
    LOBYTE(v192.m11) = 0;
    LOBYTE(v192.m24) = 0;
    if (animated)
    {
      LOBYTE(v192.m11) = v100;
      *(&v192.m11 + 1) = v195[0];
      *&v192.m13 = *(v195 + 15);
      *&v192.m21 = layer4;
      *&v192.m22 = v182;
      LOBYTE(v192.m24) = 1;
    }

    LAUI_CA_utilities::set_layer_geometry(v101, &v192, round(v30 * (v163 + (v161 - v97) * 0.5)) / v30 + v103 * v97, round(v30 * (v162 + (v160 - v99) * 0.5)) / v30 + v105 * v99, v93, v95, v97, v99);
    if (LOBYTE(v192.m24) == 1)
    {
    }

    if (animated)
    {
    }
  }

  [*(&self->super.super.super.isa + v158) bounds];
  v164 = v106;
  v108 = v107;
  v110 = v109;
  v112 = v111;
  layer6 = [(LAUIPearlGlyphView *)self->_glyph layer];
  [layer6 bounds];
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  if (animated)
  {
    v194[0] = v201[0];
    *(v194 + 15) = *(v201 + 15);
    v122 = *&m21;
    v181 = v188;
    v123 = m11_low;
  }

  else
  {
    v123 = 0;
  }

  v124 = layer6;
  [v124 anchorPoint];
  v126 = round(v30 * (v108 + (v164 - v119) * 0.5)) / v30 + v125 * v119;
  v128 = round(v30 * (v110 + (v112 - v121) * 0.5)) / v30 + v127 * v121;
  LOBYTE(v192.m11) = 0;
  LOBYTE(v192.m24) = 0;
  if (animated)
  {
    LOBYTE(v192.m11) = v123;
    *(&v192.m11 + 1) = v194[0];
    *&v192.m13 = *(v194 + 15);
    *&v192.m21 = *&m21;
    *&v192.m22 = v181;
    LOBYTE(v192.m24) = 1;
  }

  LAUI_CA_utilities::set_layer_geometry(v124, &v192, v126, v128, v115, v117, v119, v121);
  if (LOBYTE(v192.m24) == 1)
  {
  }

  if (animated)
  {
  }

  memset(&v180, 0, sizeof(v180));
  v129 = round(v30 * (fmax(v164, v112) * 0.83908046)) / v30 / fmax(v119, v121);
  CATransform3DMakeScale(&v180, v129, v129, 1.0);
  v179 = v180;
  v174 = 0;
  v178 = 0;
  if (animated)
  {
    v174 = m11_low;
    *v175 = v201[0];
    *&v175[15] = *(v201 + 15);
    v176 = *&m21;
    v177 = v188;
    v178 = 1;
  }

  v130 = v124;
  v131 = v130;
  memset(&v192, 0, sizeof(v192));
  if (v130)
  {
    [v130 transform];
  }

  a = v192;
  b = v179;
  if (!CATransform3DEqualToTransform(&a, &b))
  {
    a = v179;
    [v131 setTransform:&a];
    if (v178 == 1)
    {
      a = v192;
      b = v179;
      v132 = LAUI_CA_utilities::add_additive_animation<CATransform3D>(v131, @"transform", &v174, &a, &b);
    }
  }

  if (v178 == 1)
  {
  }

  selfCopy = self;
  layer7 = [(UIView *)self->_container layer];
  begin_node = self->_masks.__tree_.__begin_node_;
  if (begin_node != &self->_masks.__tree_.__end_node_)
  {
    do
    {
      v136 = begin_node[4].__left_;
      v137 = begin_node[5].__left_;
      [v137 cornerRadius];
      if (v138 != v172)
      {
        [v137 setCornerRadius:v172];
      }

      [v136 convertRect:layer7 fromLayer:{v166, v165, v169, v170}];
      v140 = v139;
      v142 = v141;
      v144 = v143;
      v146 = v145;
      v147 = *MEMORY[0x277CBF348];
      v148 = *(MEMORY[0x277CBF348] + 8);
      if (animated)
      {
        v193[0] = v201[0];
        *(v193 + 15) = *(v201 + 15);
        selfCopy = *&m21;
        v173 = v188;
        v149 = m11_low;
      }

      else
      {
        v149 = 0;
      }

      v150 = v137;
      [v150 anchorPoint];
      v152 = v151;
      v154 = v153;
      LOBYTE(v192.m11) = 0;
      LOBYTE(v192.m24) = 0;
      if (animated)
      {
        LOBYTE(v192.m11) = v149;
        *(&v192.m11 + 1) = v193[0];
        *&v192.m13 = *(v193 + 15);
        *&v192.m21 = selfCopy;
        *&v192.m22 = v173;
        LOBYTE(v192.m24) = 1;
      }

      LAUI_CA_utilities::set_layer_geometry(v150, &v192, v140 + v152 * v144, v142 + v154 * v146, v147, v148, v144, v146);
      if (LOBYTE(v192.m24) == 1)
      {
      }

      if (animated)
      {
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v156 = left;
          left = left->super.super.super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v156 = begin_node[2].__left_;
          v157 = v156->super.super.super.isa == begin_node;
          begin_node = v156;
        }

        while (!v157);
      }

      begin_node = v156;
    }

    while (v156 != &self->_masks.__tree_.__end_node_);
  }

  if (animated)
  {
  }
}

- (void)setStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_style != style)
  {
    animatedCopy = animated;
    self->_style = style;
    [(LAUIPearlGlyphLabel *)self _applyStyle];

    [(LAUIPearlGlyphLabel *)self _applyVisibilityAnimated:animatedCopy];
  }
}

- (void)setShimmerEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_shimmerEnabled != enabled)
  {
    animatedCopy = animated;
    self->_shimmerEnabled = enabled;
    self->_visibleNeedsUpdate = 1;
    [(LAUIPearlGlyphLabel *)self _updateGlyphPaused];

    [(LAUIPearlGlyphLabel *)self _updateVisibilityAnimated:animatedCopy];
  }
}

- (void)setText:(id)text animated:(BOOL)animated
{
  animatedCopy = animated;
  textCopy = text;
  if ([(NSString *)textCopy length])
  {
    v6 = textCopy;
  }

  else
  {

    v6 = 0;
  }

  text = self->_text;
  if (text == v6 || (v17 = v6) != 0 && text && (v8 = [(NSString *)text isEqualToString:v6], v6 = v17, v8))
  {
    v9 = animatedCopy && self->_textUpdateNeedsAnimation;
    self->_textUpdateNeedsAnimation = v9;
  }

  else
  {
    v10 = [(NSString *)v6 copy];
    v11 = self->_text;
    self->_text = v10;

    text = [(UILabel *)self->_label text];
    v13 = self->_text;
    if (v13 == text)
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      if (v13)
      {
        v14 = text == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        LOBYTE(v15) = 1;
      }

      else
      {
        v15 = ![(NSString *)v13 isEqualToString:text];
      }
    }

    self->_textNeedsUpdate = v15;
    self->_textUpdateNeedsAnimation = v15 && animatedCopy;
    [(LAUIPearlGlyphLabel *)self _updateText];

    v6 = v17;
  }
}

- (void)setMaximumSize:(CGSize)size animated:(BOOL)animated
{
  if (size.width <= 0.0)
  {
    size.width = 1.79769313e308;
  }

  if (size.height <= 0.0)
  {
    size.height = 1.79769313e308;
  }

  if (self->_maximumSize.width != size.width || self->_maximumSize.height != size.height)
  {
    self->_maximumSize = size;
    [(LAUIPearlGlyphLabel *)self _updateFontAnimated:animated];
  }
}

- (void)_updateGlyphPaused
{
  glyph = self->_glyph;
  v4 = !self->_inWindow || !self->_text || !self->_shimmerEnabled;
  [(LAUIPearlGlyphView *)glyph setPaused:v4];
}

- (void)_updateText
{
  v44 = *MEMORY[0x277D85DE8];
  [(LAUIPearlGlyphLabel *)self _updateGlyphPaused];
  if (!self->_inWindow && self->_textUpdateNeedsAnimation || !self->_textNeedsUpdate)
  {
    return;
  }

  self->_textNeedsUpdate = 0;
  textUpdateNeedsAnimation = self->_textUpdateNeedsAnimation;
  if (textUpdateNeedsAnimation)
  {
    LAUI_CA_utilities::spring_factory::spring_factory(location, 1.0, 199.791, 25.4425, 0.0, 0);
    v32 = location[0];
    v43[0] = *(location + 1);
    *(v43 + 15) = *&location[2];
    v30 = location[4];
    v42 = *&location[5];
    if (self->_textUpdateNeedsAnimation)
    {
      text = [(UILabel *)self->_label text];
      if (text)
      {
        v5 = [(UILabel *)self->_label snapshotViewAfterScreenUpdates:0];

        if (v5)
        {
          layer = [(UILabel *)self->_label layer];
          presentationLayer = [layer presentationLayer];
          v8 = presentationLayer;
          if (presentationLayer)
          {
            v9 = presentationLayer;
          }

          else
          {
            v9 = layer;
          }

          v10 = v9;

          layer2 = [v5 layer];
          [v10 opacity];
          [layer2 setOpacity:?];
          [v10 position];
          [layer2 setPosition:?];
          [v10 bounds];
          [layer2 setBounds:?];
          if (v10)
          {
            [v10 transform];
          }

          else
          {
            memset(location, 0, sizeof(location));
          }

          [layer2 setTransform:location];

          v12 = 1;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
        v5 = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v32 = 0;
  }

  v12 = 0;
  v5 = 0;
LABEL_15:
  [(UILabel *)self->_label setText:self->_text, v30];
  [(UILabel *)self->_label sizeToFit];
  [(LAUIPearlGlyphLabel *)self setNeedsLayout];
  [(LAUIPearlGlyphLabel *)self layoutIfNeeded];
  layer3 = [(UILabel *)self->_label layer];
  [layer3 removeAllAnimations];
  [layer3 setOpacity:0.0];
  if ((v12 & textUpdateNeedsAnimation) == 1)
  {
    layer4 = [v5 layer];
    [layer4 opacity];
    if (v15 > 0.0)
    {
      p_labelSnapshots = &self->_labelSnapshots;
      var0 = self->_labelSnapshots.var0;
      var1 = self->_labelSnapshots.var1;
      if (var0 >= var1)
      {
        v20 = var0 - p_labelSnapshots->__begin_;
        if ((v20 + 1) >> 61)
        {
          std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
        }

        v21 = var1 - p_labelSnapshots->__begin_;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        location[4] = &self->_labelSnapshots;
        if (v23)
        {
          std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](&self->_labelSnapshots, v23);
        }

        v24 = (8 * v20);
        location[0] = 0;
        location[1] = v24;
        location[3] = 0;
        *v24 = v5;
        location[2] = v24 + 1;
        std::vector<UIView * {__strong}>::__swap_out_circular_buffer(&self->_labelSnapshots, location);
        v19 = self->_labelSnapshots.var0;
        std::__split_buffer<UIView * {__strong}>::~__split_buffer(location);
      }

      else
      {
        *var0 = v5;
        v19 = var0 + 1;
      }

      self->_labelSnapshots.var0 = v19;
      [(UIView *)self->_labelContainer insertSubview:v5 belowSubview:self->_label];
      [MEMORY[0x277CD9FF0] begin];
      objc_initWeak(location, self);
      v25 = MEMORY[0x277CD9FF0];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __34__LAUIPearlGlyphLabel__updateText__block_invoke;
      v38[3] = &unk_279821768;
      v39 = v5;
      objc_copyWeak(&v40, location);
      [v25 setCompletionBlock:v38];
      v33 = v32;
      *v34 = v43[0];
      *&v34[15] = *(v43 + 15);
      v35 = v31;
      v36 = v42;
      v37 = 1;
      v26 = layer4;
      [v26 opacity];
      v28 = v27;
      if (v27 != 0.0)
      {
        [v26 setOpacity:0.0];
        v29 = LAUI_CA_utilities::add_additive_animation<double>(v26, @"opacity", &v33, v28, 0.0);
      }

      if (v37 == 1)
      {
      }

      [MEMORY[0x277CD9FF0] commit];
      objc_destroyWeak(&v40);

      objc_destroyWeak(location);
    }
  }

  [(LAUIPearlGlyphLabel *)self _updateVisibilityAnimated:self->_textUpdateNeedsAnimation];

  if (textUpdateNeedsAnimation)
  {
  }
}

void __34__LAUIPearlGlyphLabel__updateText__block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained + 60;
    v5 = WeakRetained[60];
    v4 = WeakRetained[61];
    if (v5 != v4)
    {
      while (*v5 != *(a1 + 32))
      {
        if (++v5 == v4)
        {
          v5 = WeakRetained[61];
          break;
        }
      }
    }

    if (v4 != v5)
    {
      v9 = WeakRetained;
      v6 = v5 + 1;
      if (v5 + 1 != v4)
      {
        do
        {
          v7 = *(v6 - 1);
          *(v6 - 1) = *v6;
          *v6 = 0;

          ++v6;
        }

        while (v6 != v4);
        v4 = v3[1];
        v5 = v6 - 1;
      }

      while (v4 != v5)
      {
        v8 = *--v4;
      }

      v3[1] = v5;
      std::vector<UIView * {__strong}>::shrink_to_fit(v3);
      WeakRetained = v9;
    }
  }
}

- (void)_applyStyle
{
  style = self->_style;
  if (style == 1)
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v9;

    v6 = MEMORY[0x277D75348];
    v7 = 0.6;
    v8 = 1.0;
  }

  else
  {
    if (style)
    {
      return;
    }

    v4 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.45];
    v5 = self->_backgroundColor;
    self->_backgroundColor = v4;

    v6 = MEMORY[0x277D75348];
    v7 = 0.8;
    v8 = 0.0;
  }

  v11 = [v6 colorWithWhite:v8 alpha:v7];
  textColor = self->_textColor;
  self->_textColor = v11;
}

- (void)_updateVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v30 = *MEMORY[0x277D85DE8];
  text = self->_text;
  v7 = text != 0;
  visible = self->_visible;
  if (visible != v7 || self->_visibleNeedsUpdate)
  {
    if (text)
    {
      v9 = visible == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      goto LABEL_9;
    }

    if (!text)
    {
      LOBYTE(visibilityTimer) = 0;
      goto LABEL_14;
    }

    visibilityTimer = self->_visibilityTimer;
    if (visibilityTimer)
    {
LABEL_9:
      LOBYTE(visibilityTimer) = animated;
    }

LABEL_14:
    self->_allowDelayedVisibility = visibilityTimer;
    *&self->_visible = v7;

    [(LAUIPearlGlyphLabel *)self _applyVisibilityAnimated:?];
    return;
  }

  if (!self->_visibilityTimer)
  {
    if (animated)
    {
      LAUI_CA_utilities::spring_factory::spring_factory(&v24, 1.0, 199.791, 25.4425, 0.0, 0);
      v11 = v24;
      v29[0] = *v25;
      *(v29 + 15) = *&v25[15];
      v3 = v26;
      v28 = v27;
    }

    else
    {
      v11 = 0;
    }

    layer = [(UILabel *)self->_label layer];
    v19 = 0;
    v23 = 0;
    if (animatedCopy)
    {
      v19 = v11;
      *v20 = v29[0];
      *&v20[15] = *(v29 + 15);
      v21 = v3;
      v22 = v28;
      v23 = 1;
    }

    if (text)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = layer;
    [v14 opacity];
    v16 = v15;
    if (v15 != v13)
    {
      v17 = 0.0;
      if (text)
      {
        *&v17 = 1.0;
      }

      [v14 setOpacity:v17];
      if (animatedCopy)
      {
        v18 = LAUI_CA_utilities::add_additive_animation<double>(v14, @"opacity", &v19, v16, v13);
      }
    }

    if (v23 == 1)
    {
    }

    [(LAUIPearlGlyphLabel *)self _updateBoundsSizeAnimated:animatedCopy];
    if (animatedCopy)
    {
    }
  }
}

- (void)_applyVisibilityAnimated:(BOOL)animated
{
  if (self->_glyph)
  {
    reduceBlur = self->_reduceBlur;
    LOBYTE(v3) = self->_shimmerEnabled;
    v7 = v3;
  }

  else
  {
    v7 = 0.0;
    reduceBlur = 1;
  }

  visible = self->_visible;
  if (animated)
  {
    LAUI_CA_utilities::spring_factory::spring_factory(&v89, 1.0, 199.791, 25.4425, 0.0, 0);
    v84 = v89;
    v85 = v90;
    v86 = v91;
    v87 = *v92;
    v88 = 1;
  }

  else
  {
    LOBYTE(v84) = 0;
    v88 = 0;
  }

  [(CABackdropLayer *)self->_background setEnabled:!reduceBlur];
  v9 = self->_background;
  presentationLayer = [(CABackdropLayer *)v9 presentationLayer];
  v10 = [(CABackdropLayer *)v9 valueForKeyPath:@"filters.saturation.inputAmount"];
  v69 = reduceBlur;
  v70 = visible;
  v11 = visible && !reduceBlur;
  v12 = 1.0;
  if (v11)
  {
    v12 = 1.5;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v14 = v10;
  v15 = v13;
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    if (v14)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
    }

    else
    {
      v18 = [v14 isEqual:v15];

      if (v18)
      {
        goto LABEL_20;
      }
    }

    [(CABackdropLayer *)v9 setValue:v16 forKeyPath:@"filters.saturation.inputAmount"];
    if (v88 == 1)
    {
      [v14 doubleValue];
      v20 = v19;
      [v16 doubleValue];
      v22 = LAUI_CA_utilities::add_additive_animation<double>(v9, @"filters.saturation.inputAmount", &v84, v20, v21);
    }
  }

LABEL_20:
  v23 = [(CABackdropLayer *)v9 valueForKeyPath:@"filters.blur.inputRadius"];
  if (v11)
  {
    v24 = 20;
  }

  else
  {
    v24 = 0;
  }

  v25 = [MEMORY[0x277CCABB0] numberWithInt:{v24, v23}];
  v26 = v23;
  v27 = v25;
  v28 = v27;
  if (v26 == v27)
  {

    goto LABEL_32;
  }

  if (v26 && v27)
  {
    v29 = [v26 isEqual:v27];

    if (v29)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  [(CABackdropLayer *)v9 setValue:v28 forKeyPath:@"filters.blur.inputRadius"];
  if (v88 == 1)
  {
    [v26 doubleValue];
    v31 = v30;
    [v28 doubleValue];
    v33 = LAUI_CA_utilities::add_additive_animation<double>(v9, @"filters.blur.inputRadius", &v84, v31, v32);
  }

LABEL_32:
  v34 = MEMORY[0x277D75348];
  backgroundColor = [presentationLayer backgroundColor];
  if (!backgroundColor)
  {
    backgroundColor = [(CABackdropLayer *)v9 backgroundColor];
  }

  v68 = [v34 colorWithCGColor:backgroundColor];
  backgroundColor = self->_backgroundColor;
  if (!v70)
  {
    v37 = [(UIColor *)backgroundColor colorWithAlphaComponent:0.0];
    goto LABEL_38;
  }

  if (reduceBlur)
  {
    v37 = [(UIColor *)backgroundColor colorWithAlphaComponent:1.0];
LABEL_38:
    v38 = v37;
    animatedCopy2 = animated;
    goto LABEL_40;
  }

  animatedCopy2 = animated;
  v38 = backgroundColor;
LABEL_40:
  v40 = v68;
  v41 = v38;
  v42 = v41;
  if (v40 == v41)
  {

    animation = v40;
LABEL_49:

    goto LABEL_50;
  }

  if (!v40 || !v41)
  {

    goto LABEL_47;
  }

  v43 = [(UIColor *)v40 isEqual:v41];

  if ((v43 & 1) == 0)
  {
LABEL_47:
    [(CABackdropLayer *)v9 setBackgroundColor:[(UIColor *)v42 CGColor]];
    [(CABackdropLayer *)v9 removeAnimationForKey:@"backgroundColor"];
    if (v88 != 1)
    {
      goto LABEL_50;
    }

    animation = LAUI_CA_utilities::spring_factory::create_animation(&v84, &cfstr_Backgroundcolo.isa);
    [animation setAdditive:0];
    [animation setFromValue:{-[UIColor CGColor](v40, "CGColor")}];
    [animation setToValue:{-[UIColor CGColor](v42, "CGColor")}];
    [(CABackdropLayer *)v9 addAnimation:animation forKey:@"backgroundColor"];
    goto LABEL_49;
  }

LABEL_50:

  textColor = self->_textColor;
  if (self->_reduceBlur)
  {
    v46 = [(UIColor *)textColor colorWithAlphaComponent:1.0];
  }

  else
  {
    v46 = textColor;
  }

  v47 = animatedCopy2;
  textColor = [(UILabel *)self->_label textColor];
  v49 = v46;
  v50 = v49;
  if (textColor == v49)
  {

    goto LABEL_61;
  }

  if (!v49 || !textColor)
  {

    goto LABEL_60;
  }

  v51 = [(UIColor *)textColor isEqual:v49];

  if ((v51 & 1) == 0)
  {
LABEL_60:
    [(UILabel *)self->_label setTextColor:v50];
  }

LABEL_61:

  layer = [(UIView *)self->_glyphContainer layer];
  if (v69)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = v7;
  }

  if (v70)
  {
    v54 = v53;
  }

  else
  {
    v54 = 0.0;
  }

  LOBYTE(v80[0]) = 0;
  v83 = 0;
  v55 = v88;
  if (v88 == 1)
  {
    v80[0] = v84;
    v80[1] = v85;
    v81 = v86;
    v82 = v87;
    v83 = 1;
  }

  v56 = layer;
  [v56 opacity];
  v58 = *&v57;
  if (v54 != *&v57)
  {
    *&v57 = v54;
    [v56 setOpacity:v57];
    if (v55)
    {
      v59 = LAUI_CA_utilities::add_additive_animation<double>(v56, @"opacity", v80, v58, v54);
    }
  }

  if (v83 == 1)
  {
  }

  objc_initWeak(&location, self);
  objc_copyWeak(&to, &location);
  LOBYTE(v73) = v70;
  HIBYTE(v73) = v47;
  LOBYTE(v74) = 0;
  v78 = 0;
  if (v88 == 1)
  {
    v74 = v84;
    v75 = v85;
    v76 = v86;
    v77 = v87;
    v78 = 1;
  }

  visibilityTimer = self->_visibilityTimer;
  if (visibilityTimer)
  {
    dispatch_source_cancel(visibilityTimer);
    v61 = self->_visibilityTimer;
    self->_visibilityTimer = 0;
  }

  if (self->_allowDelayedVisibility)
  {
    v62 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v63 = self->_visibilityTimer;
    self->_visibilityTimer = v62;

    v64 = self->_visibilityTimer;
    v65 = dispatch_time(0, 120000000);
    dispatch_source_set_timer(v64, v65, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v66 = self->_visibilityTimer;
    *&v89 = MEMORY[0x277D85DD0];
    *(&v89 + 1) = 3321888768;
    *&v90 = ___ZZ48__LAUIPearlGlyphLabel__applyVisibilityAnimated__ENK3__2cvU13block_pointerFvvEEv_block_invoke;
    *(&v90 + 1) = &__block_descriptor_112_ea8_32c61_ZTSKZ48__LAUIPearlGlyphLabel__applyVisibilityAnimated__E3__2_e5_v8__0l;
    objc_copyWeak(&v91, &to);
    *v92 = v73;
    v92[8] = 0;
    v96 = 0;
    if (v78 == 1)
    {
      *&v92[8] = v74;
      v93 = v75;
      v94 = v76;
      v95 = v77;
      v96 = 1;
    }

    v67 = MEMORY[0x259C5AE60](&v89);
    if (v96 == 1)
    {
    }

    objc_destroyWeak(&v91);
    dispatch_source_set_event_handler(v66, v67);

    dispatch_resume(self->_visibilityTimer);
  }

  else
  {
    [LAUIPearlGlyphLabel _applyVisibilityAnimated:]::$_2::operator()(&to);
  }

  if (v78 == 1)
  {
  }

  objc_destroyWeak(&to);
  objc_destroyWeak(&location);
  if (v88 == 1)
  {
  }
}

- (void)_applyVisibilityAnimated:
{
  WeakRetained = objc_loadWeakRetained(self);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[70];
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = v3[70];
      v3[70] = 0;
    }

    layer = [v3[51] layer];
    if (*(self + 8) == 1)
    {
      v7 = *(MEMORY[0x277CD9DE8] + 80);
      *&v45.m31 = *(MEMORY[0x277CD9DE8] + 64);
      *&v45.m33 = v7;
      v8 = *(MEMORY[0x277CD9DE8] + 112);
      *&v45.m41 = *(MEMORY[0x277CD9DE8] + 96);
      *&v45.m43 = v8;
      v9 = *(MEMORY[0x277CD9DE8] + 16);
      *&v45.m11 = *MEMORY[0x277CD9DE8];
      *&v45.m13 = v9;
      v10 = *(MEMORY[0x277CD9DE8] + 48);
      *&v45.m21 = *(MEMORY[0x277CD9DE8] + 32);
      *&v45.m23 = v10;
    }

    else
    {
      CATransform3DMakeScale(&v45, 1.1, 1.1, 1.0);
    }

    LOBYTE(v41[0]) = 0;
    v44 = 0;
    v11 = *(self + 72);
    if (v11 == 1)
    {
      v12 = *(self + 32);
      v41[0] = *(self + 16);
      v41[1] = v12;
      v42 = *(self + 48);
      v43 = *(self + 56);
      v44 = 1;
    }

    v13 = layer;
    v14 = v13;
    memset(&v48, 0, sizeof(v48));
    if (v13)
    {
      [v13 transform];
    }

    a = v48;
    b = v45;
    if (!CATransform3DEqualToTransform(&a, &b))
    {
      a = v45;
      [v14 setTransform:&a];
      if (v11)
      {
        a = v48;
        b = v45;
        v15 = LAUI_CA_utilities::add_additive_animation<CATransform3D>(v14, @"transform", v41, &a, &b);
      }
    }

    if (v44 == 1)
    {
    }

    layer2 = [v3[54] layer];
    v17 = *(self + 8);
    LOBYTE(v37[0]) = 0;
    v40 = 0;
    v18 = *(self + 72);
    if (v18 == 1)
    {
      v19 = *(self + 32);
      v37[0] = *(self + 16);
      v37[1] = v19;
      v38 = *(self + 48);
      v39 = *(self + 56);
      v40 = 1;
    }

    v20 = layer2;
    [v20 opacity];
    v22 = *&v21;
    if (*&v21 != v17)
    {
      *&v21 = v17;
      [v20 setOpacity:v21];
      if (v18)
      {
        v23 = LAUI_CA_utilities::add_additive_animation<double>(v20, @"opacity", v37, v22, v17);
      }
    }

    if (v40 == 1)
    {
    }

    layer3 = [v3[56] layer];
    v25 = *(self + 8);
    LOBYTE(v33[0]) = 0;
    v36 = 0;
    v26 = *(self + 72);
    if (v26 == 1)
    {
      v27 = *(self + 32);
      v33[0] = *(self + 16);
      v33[1] = v27;
      v34 = *(self + 48);
      v35 = *(self + 56);
      v36 = 1;
    }

    if (v25)
    {
      v28 = 0.35;
    }

    else
    {
      v28 = 1.0;
    }

    v29 = layer3;
    [v29 opacity];
    v31 = *&v30;
    if (v28 != *&v30)
    {
      *&v30 = v28;
      [v29 setOpacity:v30];
      if (v26)
      {
        v32 = LAUI_CA_utilities::add_additive_animation<double>(v29, @"opacity", v33, v31, v28);
      }
    }

    if (v36 == 1)
    {
    }

    [v3 _updateBoundsSizeAnimated:*(self + 9)];
    *(v3 + 570) = 0;
    *(v3 + 573) = 0;
  }
}

- (id)_applyVisibilityAnimated:(id *)location
{
  if (*(location + 72) == 1)
  {
  }

  objc_destroyWeak(location);
  return location;
}

- (void)_updateBoundsSizeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(UILabel *)self->_label bounds];
  self->_currentMaximumSize = self->_maximumSize;
  self->_currentLabelSize.width = v5;
  self->_currentLabelSize.height = v6;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = v8;

  layer = [(LAUIPearlGlyphLabel *)self layer];
  [layer anchorPoint];
  v44 = v12;
  v45 = v11;
  [layer position];
  v42 = v14;
  v43 = v13;
  [(LAUIPearlGlyphLabel *)self sizeThatFits:1.79769313e308, 1.79769313e308];
  v40 = v16;
  v41 = v15;
  v39 = *MEMORY[0x277D76DA8];
  [layer bounds];
  v20 = v19;
  v22 = v21;
  v23 = fmax(v9, 1.0);
  v24.f64[0] = v45;
  v24.f64[1] = v44;
  __asm { FMOV            V3.2D, #1.0 }

  v29 = vsubq_f64(_Q3, v24);
  v30.f64[0] = v41;
  v30.f64[1] = v40;
  v31.f64[0] = v43;
  v31.f64[1] = v42;
  v32 = vmlsq_f64(v31, v30, v24);
  v33 = vdupq_lane_s64(*&v23, 0);
  v34 = vmlaq_f64(v31, v30, v29);
  v35 = vaddq_f64(v30, vbslq_s8(vcgtzq_f64(v30), vaddq_f64(vsubq_f64(v32, vdivq_f64(vrndmq_f64(vmulq_n_f64(v32, v23)), v33)), vsubq_f64(vdivq_f64(vrndpq_f64(vmulq_n_f64(v34, v23)), v33), v34)), v39));
  v36 = v35.f64[1];
  if (v20 != v35.f64[0] || v22 != v35.f64[1])
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __49__LAUIPearlGlyphLabel__updateBoundsSizeAnimated___block_invoke;
    v49[3] = &unk_279821790;
    v49[4] = self;
    v49[5] = v17;
    v49[6] = v18;
    *&v49[7] = v20;
    *&v49[8] = v22;
    v46 = v35.f64[0];
    v50 = v35;
    [MEMORY[0x277D75D18] performWithoutAnimation:v49];
    if (animatedCopy)
    {
      LAUI_CA_utilities::spring_factory::spring_factory(v47, 1.0, 199.791, 25.4425, 0.0, 0);
      v38 = LAUI_CA_utilities::add_additive_animation<CGSize>(layer, @"bounds.size", v47, v20, v22, v46, v36);
    }

    [(LAUIPearlGlyphLabel *)self setNeedsLayout];
    [(LAUIPearlGlyphLabel *)self layoutIfNeededAnimated:animatedCopy];
  }
}

- (void)_updateReduceBlurState
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = UIAccessibilityIsReduceTransparencyEnabled() || UIAccessibilityIsReduceMotionEnabled();
  if (self->_reduceBlur != v3)
  {
    self->_reduceBlur = v3;

    [(LAUIPearlGlyphLabel *)self _applyVisibilityAnimated:0];
  }
}

- (void)_updateFontAnimated:(BOOL)animated
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  baseFont = self->_baseFont;
  self->_baseFont = v5;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  v22 = self->_baseFont;
  [(UIFont *)v22 lineHeight];
  v10 = v9;
  [(UIFont *)v22 leading];
  v11 = fmax(v8, 1.0);
  v13 = ceil(v11 * (v10 + v12)) / v11 + 5.0 + 5.0;

  v14 = self->_baseFont;
  v15 = v14;
  height = self->_maximumSize.height;
  if (v13 > height && height > 10.0 && v13 > 10.0)
  {
    v23 = v14;
    v19 = [(UIFont *)v14 _fontScaledByScaleFactor:(height + -10.0) / (v13 + -10.0)];

    v15 = v19;
  }

  v24 = v15;
  [(UILabel *)self->_label setFont:v15];
  if (self->_textNeedsUpdate)
  {
    self->_textNeedsUpdate = 1;
LABEL_12:
    LOBYTE(text) = self->_textUpdateNeedsAnimation || animated;
    goto LABEL_13;
  }

  text = self->_text;
  self->_textNeedsUpdate = text != 0;
  if (text)
  {
    goto LABEL_12;
  }

LABEL_13:
  self->_textUpdateNeedsAnimation = text & 1;
  [(LAUIPearlGlyphLabel *)self _updateText];
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 59) = 0;
  *(self + 58) = 0;
  *(self + 57) = self + 464;
  *(self + 61) = 0;
  *(self + 62) = 0;
  *(self + 60) = 0;
  return self;
}

@end