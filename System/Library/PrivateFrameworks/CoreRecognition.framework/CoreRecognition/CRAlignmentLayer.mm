@interface CRAlignmentLayer
+ (id)layer;
- (CGPoint)cardNumberHorizontalDefaultPos;
- (CGPoint)pointOnInfoLayerForPointOnCard:(CGPoint)card;
- (CGRect)alignmentRect;
- (CGRect)cardNumberHorizontalDefaultBounds;
- (CRAlignmentLayer)init;
- (void)animateFoundCardRect:(id)rect;
- (void)animateFoundCodeParts:(id)parts codePartPositions:(id)positions codeFrameIndex:(unint64_t)index cardHolder:(id)holder cardholderPosition:(CGPoint)position cardholderFrameIndex:(unint64_t)frameIndex expDate:(id)date expdatePosition:(CGPoint)self0 expDateFrameIndex:(unint64_t)self1 completionBlock:(id)self2;
- (void)layoutSublayers;
- (void)makeTextLayer:(id)layer matchWidthOfText:(id)text;
- (void)propogateMaskColor:(id)color outlineColor:(id)outlineColor placementTextColor:(id)textColor capturedTextColor:(id)capturedTextColor;
- (void)resetLayer;
@end

@implementation CRAlignmentLayer

+ (id)layer
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (CRAlignmentLayer)init
{
  v110[2] = *MEMORY[0x277D85DE8];
  v108.receiver = self;
  v108.super_class = CRAlignmentLayer;
  v2 = [(CRAlignmentLayer *)&v108 init];
  v3 = v2;
  if (v2)
  {
    [(CRAlignmentLayer *)v2 setBounds:0.0, 0.0, 85.6, 54.0];
    [(CRAlignmentLayer *)v3 setFrame:0.0, 0.0, 85.6, 54.0];
    [(CRAlignmentLayer *)v3 setHidden:0];
    layer = [MEMORY[0x277CD9F90] layer];
    [(CRAlignmentLayer *)v3 setMaskLayer:layer];

    maskLayer = [(CRAlignmentLayer *)v3 maskLayer];
    LODWORD(v6) = 1050253722;
    [maskLayer setOpacity:v6];

    v7 = +[CRColor blackColor];
    v8 = v7;
    cGColor = [v7 CGColor];
    maskLayer2 = [(CRAlignmentLayer *)v3 maskLayer];
    [maskLayer2 setFillColor:cGColor];

    maskLayer3 = [(CRAlignmentLayer *)v3 maskLayer];
    [maskLayer3 setFillRule:@"even-odd"];

    maskLayer4 = [(CRAlignmentLayer *)v3 maskLayer];
    [(CRAlignmentLayer *)v3 addSublayer:maskLayer4];

    layer2 = [MEMORY[0x277CD9F90] layer];
    [(CRAlignmentLayer *)v3 setOutlineLayer:layer2];

    v14 = +[CRColor clearColor];
    v15 = v14;
    cGColor2 = [v14 CGColor];
    outlineLayer = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer setFillColor:cGColor2];

    v18 = +[CRColor whiteColor];
    v19 = v18;
    cGColor3 = [v18 CGColor];
    outlineLayer2 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer2 setStrokeColor:cGColor3];

    outlineLayer3 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer3 setLineWidth:1.0];

    v23 = +[CRColor blackColor];
    v24 = v23;
    cGColor4 = [v23 CGColor];
    outlineLayer4 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer4 setShadowColor:cGColor4];

    v27 = *MEMORY[0x277CBF3A8];
    v28 = *(MEMORY[0x277CBF3A8] + 8);
    outlineLayer5 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer5 setShadowOffset:{v27, v28}];

    outlineLayer6 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer6 setShadowRadius:10.0];

    outlineLayer7 = [(CRAlignmentLayer *)v3 outlineLayer];
    LODWORD(v32) = 1045220557;
    [outlineLayer7 setShadowOpacity:v32];

    outlineLayer8 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer8 setMasksToBounds:0];

    layer3 = [MEMORY[0x277CD9F90] layer];
    [layer3 setFillRule:@"even-odd"];
    v35 = +[CRColor whiteColor];
    v36 = v35;
    [layer3 setFillColor:{objc_msgSend(v35, "CGColor")}];

    outlineLayer9 = [(CRAlignmentLayer *)v3 outlineLayer];
    [outlineLayer9 setMask:layer3];

    outlineLayer10 = [(CRAlignmentLayer *)v3 outlineLayer];
    [(CRAlignmentLayer *)v3 addSublayer:outlineLayer10];

    v39 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] labelFontSize];
    v103 = [v39 systemFontOfSize:?];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v42 = v41;

    v43 = *MEMORY[0x277D740A8];
    v110[0] = v103;
    v44 = *MEMORY[0x277D740C0];
    v109[0] = v43;
    v109[1] = v44;
    v45 = +[CRColor whiteColor];
    v110[1] = v45;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];

    v47 = objc_alloc(MEMORY[0x277CCAB48]);
    v48 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
    v49 = [v48 localizedStringForKey:@"Position Card in this Frame" value:&stru_2859636D0 table:0];
    v50 = [v47 initWithString:v49 attributes:v46];

    layer4 = [MEMORY[0x277CD9FC8] layer];
    [(CRAlignmentLayer *)v3 setInstructionLayer:layer4];

    instructionLayer = [(CRAlignmentLayer *)v3 instructionLayer];
    [instructionLayer setWrapped:1];

    instructionLayer2 = [(CRAlignmentLayer *)v3 instructionLayer];
    [instructionLayer2 setAlignmentMode:@"center"];

    instructionLayer3 = [(CRAlignmentLayer *)v3 instructionLayer];
    [instructionLayer3 setString:v50];

    instructionLayer4 = [(CRAlignmentLayer *)v3 instructionLayer];
    [instructionLayer4 setContentsScale:v42];

    instructionLayer5 = [(CRAlignmentLayer *)v3 instructionLayer];
    [(CRAlignmentLayer *)v3 addSublayer:instructionLayer5];

    layer5 = [MEMORY[0x277CD9ED0] layer];
    [(CRAlignmentLayer *)v3 setInfoLayer:layer5];

    infoLayer = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer setBounds:{0.0, 0.0, 85.6, 54.0}];

    infoLayer2 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer2 setOpacity:0.0];

    infoLayer3 = [(CRAlignmentLayer *)v3 infoLayer];
    [(CRAlignmentLayer *)v3 addSublayer:infoLayer3];

    infoLayer4 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer4 bounds];
    MidX = CGRectGetMidX(v111);
    infoLayer5 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer5 bounds];
    [(CRAlignmentLayer *)v3 setCardNumberHorizontalDefaultPos:MidX, CGRectGetMidY(v112) + 6.0];

    v64 = v42 * 4.0;
    v65 = v42 * 4.0 * 85.6;
    [(CRAlignmentLayer *)v3 setCardNumberHorizontalDefaultBounds:0.0, 0.0, v65, ceil(v64 * 6.0)];
    v66 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    [(CRAlignmentLayer *)v3 setCardNumberLayers:v66];

    v67 = 4;
    v68 = 1.0 / v64;
    do
    {
      layer6 = [MEMORY[0x277CD9FC8] layer];
      [(CRAlignmentLayer *)v3 cardNumberHorizontalDefaultBounds];
      [layer6 setBounds:?];
      [(CRAlignmentLayer *)v3 cardNumberHorizontalDefaultPos];
      [layer6 setPosition:?];
      CATransform3DMakeScale(&v107, 1.0 / v64, 1.0 / v64, 1.0);
      v106 = v107;
      [layer6 setTransform:&v106];
      [layer6 setFont:@"Spendcardium-Regular"];
      [layer6 setFontSize:v64 * 6.0];
      infoLayer6 = [(CRAlignmentLayer *)v3 infoLayer];
      [infoLayer6 addSublayer:layer6];

      cardNumberLayers = [(CRAlignmentLayer *)v3 cardNumberLayers];
      [cardNumberLayers addObject:layer6];

      --v67;
    }

    while (v67);
    layer7 = [MEMORY[0x277CD9FC8] layer];
    [(CRAlignmentLayer *)v3 setCardholderNameLayer:layer7];

    cardholderNameLayer = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    v74 = v64 * 4.25;
    v75 = ceil(v64 * 4.25);
    [cardholderNameLayer setBounds:{0.0, 0.0, v65, v75}];

    CATransform3DMakeScale(&v105, v68, v68, 1.0);
    cardholderNameLayer2 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    v106 = v105;
    [cardholderNameLayer2 setTransform:&v106];

    cardholderNameLayer3 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [cardholderNameLayer3 setFont:@"Menlo-Bold"];

    cardholderNameLayer4 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [cardholderNameLayer4 setFontSize:v74];

    infoLayer7 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer7 bounds];
    MinX = CGRectGetMinX(v113);
    infoLayer8 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer8 bounds];
    MaxY = CGRectGetMaxY(v114);
    cardholderNameLayer5 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [cardholderNameLayer5 setPosition:{MinX + 8.56, MaxY + -2.7}];

    cardholderNameLayer6 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [cardholderNameLayer6 setAlignmentMode:@"left"];

    cardholderNameLayer7 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [cardholderNameLayer7 setAnchorPoint:{0.0, 1.0}];

    infoLayer9 = [(CRAlignmentLayer *)v3 infoLayer];
    cardholderNameLayer8 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [infoLayer9 addSublayer:cardholderNameLayer8];

    layer8 = [MEMORY[0x277CD9FC8] layer];
    [(CRAlignmentLayer *)v3 setExpirationDateLayer:layer8];

    expirationDateLayer = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer setBounds:{0.0, 0.0, v65, v75}];

    infoLayer10 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer10 bounds];
    v91 = CGRectGetMidX(v115);
    infoLayer11 = [(CRAlignmentLayer *)v3 infoLayer];
    [infoLayer11 bounds];
    v93 = CGRectGetMaxY(v116);
    expirationDateLayer2 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer2 setPosition:{v91 + 8.56, v93 + -10.8}];

    CATransform3DMakeScale(&v104, v68, v68, 1.0);
    expirationDateLayer3 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    v106 = v104;
    [expirationDateLayer3 setTransform:&v106];

    expirationDateLayer4 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer4 setFont:@"Menlo-Bold"];

    expirationDateLayer5 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer5 setFontSize:v74];

    expirationDateLayer6 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer6 setAlignmentMode:@"left"];

    expirationDateLayer7 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [expirationDateLayer7 setAnchorPoint:{0.0, 1.0}];

    infoLayer12 = [(CRAlignmentLayer *)v3 infoLayer];
    expirationDateLayer8 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [infoLayer12 addSublayer:expirationDateLayer8];
  }

  return v3;
}

- (void)layoutSublayers
{
  [(CRAlignmentLayer *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  delegate = [(CRAlignmentLayer *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    delegate2 = [(CRAlignmentLayer *)self delegate];
    v14 = delegate2;
    if (delegate2)
    {
      parentViewController = [delegate2 parentViewController];
      presentingViewController = [parentViewController presentingViewController];
      if (presentingViewController)
      {
        parentViewController2 = [v14 parentViewController];
        modalPresentationStyle = [parentViewController2 modalPresentationStyle];

        if (modalPresentationStyle)
        {
          v19 = 0.0;
          v20 = 0.0;
          do
          {
            topLayoutGuide = [v14 topLayoutGuide];
            [topLayoutGuide length];
            v23 = v22;

            bottomLayoutGuide = [v14 bottomLayoutGuide];
            [bottomLayoutGuide length];
            v26 = v25;

            parentViewController3 = [v14 parentViewController];
            v19 = fmax(v19, v23);
            v20 = fmax(v20, v26);

            v14 = parentViewController3;
          }

          while (parentViewController3);
          goto LABEL_11;
        }
      }

      else
      {
      }

      view = [v14 view];
      [view safeAreaInsets];
      v19 = v29;
      [view safeAreaInsets];
      v20 = v30;
    }

    else
    {
      v20 = 0.0;
      v19 = 0.0;
    }

LABEL_11:
    [(CRAlignmentLayer *)self bounds];
    MinY = CGRectGetMinY(v149);
    [(CRAlignmentLayer *)self bounds];
    MaxY = CGRectGetMaxY(v150);
    [(CRAlignmentLayer *)self bounds];
    MinX = CGRectGetMinX(v151);
    [(CRAlignmentLayer *)self bounds];
    v153.size.width = CGRectGetWidth(v152);
    v153.size.height = MaxY - v20 - (v19 + MinY);
    v153.origin.y = v19 + MinY + v153.size.height * 0.5 - v153.size.height * 0.5;
    v153.origin.x = MinX;
    v154 = CGRectInset(v153, 38.0, 0.0);
    x = v154.origin.x;
    y = v154.origin.y;
    width = v154.size.width;
    height = v154.size.height;
  }

  instructionLayer = [(CRAlignmentLayer *)self instructionLayer];
  string = [instructionLayer string];
  [string boundingRectWithSize:3 options:0 context:{width, height}];
  v141 = v37;
  v143 = v36;
  v137 = v39;
  v139 = v38;

  instructionLayer2 = [(CRAlignmentLayer *)self instructionLayer];
  LOBYTE(string) = [instructionLayer2 isHidden];

  if ((string & 1) == 0)
  {
    v155.origin.y = v141;
    v155.origin.x = v143;
    v155.size.height = v137;
    v155.size.width = v139;
    height = height - (CGRectGetHeight(v155) + 8.0);
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v43 = 1.0;
    if (userInterfaceIdiom == 1)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      [(CRAlignmentLayer *)self bounds];
      v187.origin.x = v53;
      v187.origin.y = v54;
      v187.size.width = v55;
      v187.size.height = v56;
      v156.origin.x = v46;
      v156.origin.y = v48;
      v156.size.width = v50;
      v156.size.height = v52;
      v57 = CGRectEqualToRect(v156, v187);

      if (v57)
      {
        v157.origin.x = x;
        v157.origin.y = y;
        v157.size.width = width;
        v157.size.height = height;
        v58 = CGRectGetWidth(v157) * 0.600000024;
        v158.origin.x = x;
        v158.origin.y = y;
        v158.size.width = width;
        v158.size.height = height;
        v59 = fmax(v58, CGRectGetHeight(v158) * 0.600000024);
        v159.origin.x = x;
        v159.origin.y = y;
        v159.size.width = width;
        v159.size.height = height;
        v60 = CGRectGetMidX(v159) - v59 * 0.5;
        v160.origin.x = x;
        v160.origin.y = y;
        v160.size.width = width;
        v160.size.height = height;
        v61 = CGRectGetMidY(v160) - v59 * 0.5;
        v62 = v59;
        goto LABEL_23;
      }

      v43 = 0.800000012;
    }
  }

  else
  {
    v63 = deviceModel();
    v64 = [v63 isEqualToString:{@"iPhone13, 4"}];

    if (v64)
    {
      v43 = 0.800000012;
    }

    else
    {
      v43 = 1.0;
    }
  }

  v161.origin.x = x;
  v161.origin.y = y;
  v161.size.width = width;
  v161.size.height = height;
  v59 = v43 * CGRectGetWidth(v161);
  v162.origin.x = x;
  v162.origin.y = y;
  v162.size.width = width;
  v162.size.height = height;
  v62 = v43 * CGRectGetHeight(v162);
  v163.origin.x = x;
  v163.origin.y = y;
  v163.size.width = width;
  v163.size.height = height;
  v60 = CGRectGetMidX(v163) - v59 * 0.5;
  v164.origin.x = x;
  v164.origin.y = y;
  v164.size.width = width;
  v164.size.height = height;
  v61 = CGRectGetMidY(v164) - v62 * 0.5;
LABEL_23:
  v165.origin.x = v60;
  v165.origin.y = v61;
  v165.size.width = v59;
  v165.size.height = v62;
  v65 = CGRectGetWidth(v165) / 85.6;
  v145 = v61;
  v146 = v60;
  v166.origin.x = v60;
  v166.origin.y = v61;
  v166.size.width = v59;
  v166.size.height = v62;
  v66 = fmin(v65, CGRectGetHeight(v166) / 54.0);
  v67 = v66 * 85.6;
  v68 = v66 * 54.0;
  v69 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v66 * 85.6, v66 * 54.0, v66 * 4.0}];
  v70 = CGPathRetain([v69 CGPath]);

  v167.origin.x = 0.0;
  v167.origin.y = 0.0;
  v167.size.width = v67;
  v167.size.height = v68;
  MidX = CGRectGetMidX(v167);
  [(CRAlignmentLayer *)self bounds];
  v72 = MidX - CGRectGetWidth(v168);
  v169.origin.x = 0.0;
  v169.origin.y = 0.0;
  v169.size.width = v67;
  v169.size.height = v68;
  MidY = CGRectGetMidY(v169);
  [(CRAlignmentLayer *)self bounds];
  v74 = MidY - CGRectGetHeight(v170);
  [(CRAlignmentLayer *)self bounds];
  v75 = CGRectGetWidth(v171);
  v76 = v75 + v75;
  [(CRAlignmentLayer *)self bounds];
  v77 = CGRectGetHeight(v172);
  v78 = v77 + v77;
  Mutable = CGPathCreateMutable();
  v173.origin.x = v72;
  v173.origin.y = v74;
  v173.size.width = v76;
  v173.size.height = v78;
  v80 = CGPathCreateWithRect(v173, 0);
  CGPathAddPath(Mutable, 0, v80);
  CGPathAddPath(Mutable, 0, v70);
  outlineLayer = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer setBounds:{0.0, 0.0, v67, v68}];

  v174.origin.x = v146;
  v174.origin.y = v145;
  v174.size.width = v59;
  v174.size.height = v62;
  v82 = CGRectGetMidX(v174);
  v175.origin.x = v146;
  v175.origin.y = v145;
  v175.size.width = v59;
  v175.size.height = v62;
  v83 = CGRectGetMidY(v175);
  outlineLayer2 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer2 setPosition:{v82, v83}];

  outlineLayer3 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer3 setPath:v70];

  outlineLayer4 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer4 setShadowPath:v70];

  outlineLayer5 = [(CRAlignmentLayer *)self outlineLayer];
  mask = [outlineLayer5 mask];

  if (mask)
  {
    v176.origin.x = 0.0;
    v176.origin.y = 0.0;
    v176.size.width = v67;
    v176.size.height = v68;
    v177 = CGRectInset(v176, -20.0, -20.0);
    v89 = v177.origin.x;
    v90 = v177.origin.y;
    v91 = v177.size.width;
    v92 = v177.size.height;
    v93 = CGPathCreateMutable();
    v178.origin.x = v89;
    v178.origin.y = v90;
    v178.size.width = v91;
    v178.size.height = v92;
    CGPathAddRect(v93, 0, v178);
    CGPathAddPath(v93, 0, v70);
    [mask setBounds:{v89, v90, v91, v92}];
    v179.origin.x = 0.0;
    v179.origin.y = 0.0;
    v179.size.width = v67;
    v179.size.height = v68;
    v94 = CGRectGetMidX(v179);
    v180.origin.x = 0.0;
    v180.origin.y = 0.0;
    v180.size.width = v67;
    v180.size.height = v68;
    [mask setPosition:{v94, CGRectGetMidY(v180)}];
    [mask setPath:v93];
    CGPathRelease(v93);
  }

  CGPathRelease(v70);
  outlineLayer6 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer6 bounds];
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  maskLayer = [(CRAlignmentLayer *)self maskLayer];
  [maskLayer setBounds:{v97, v99, v101, v103}];

  outlineLayer7 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer7 position];
  v107 = v106;
  v109 = v108;
  maskLayer2 = [(CRAlignmentLayer *)self maskLayer];
  [maskLayer2 setPosition:{v107, v109}];

  maskLayer3 = [(CRAlignmentLayer *)self maskLayer];
  [maskLayer3 setPath:Mutable];

  CGPathRelease(Mutable);
  CGPathRelease(v80);
  v181.origin.y = v145;
  v181.origin.x = v146;
  v181.size.width = v59;
  v181.size.height = v62;
  v112 = CGRectGetWidth(v181);
  v182.origin.y = v142;
  v182.origin.x = v144;
  v182.size.height = v138;
  v182.size.width = v140;
  v113 = CGRectGetHeight(v182);
  instructionLayer3 = [(CRAlignmentLayer *)self instructionLayer];
  [instructionLayer3 setBounds:{0.0, 0.0, v112, ceil(v113)}];

  outlineLayer8 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer8 position];
  v117 = v116;
  outlineLayer9 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer9 position];
  v120 = v119;
  outlineLayer10 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer10 bounds];
  v122 = CGRectGetHeight(v183);
  instructionLayer4 = [(CRAlignmentLayer *)self instructionLayer];
  [instructionLayer4 bounds];
  v124 = CGRectGetHeight(v184);
  instructionLayer5 = [(CRAlignmentLayer *)self instructionLayer];
  [instructionLayer5 setPosition:{v117, v120 + v122 * 0.5 + 8.0 + v124 * 0.5}];

  outlineLayer11 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer11 bounds];
  v127 = CGRectGetWidth(v185);
  infoLayer = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer bounds];
  v129 = CGRectGetWidth(v186);

  outlineLayer12 = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer12 position];
  v132 = v131;
  v134 = v133;
  infoLayer2 = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer2 setPosition:{v132, v134}];

  CATransform3DMakeScale(&v148, v127 / v129, v127 / v129, 1.0);
  infoLayer3 = [(CRAlignmentLayer *)self infoLayer];
  v147 = v148;
  [infoLayer3 setTransform:&v147];
}

- (void)resetLayer
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  cardNumberLayers = [(CRAlignmentLayer *)self cardNumberLayers];
  v4 = [cardNumberLayers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(cardNumberLayers);
        }

        [*(*(&v12 + 1) + 8 * v6++) setString:0];
      }

      while (v4 != v6);
      v4 = [cardNumberLayers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  cardholderNameLayer = [(CRAlignmentLayer *)self cardholderNameLayer];
  [cardholderNameLayer setString:0];

  expirationDateLayer = [(CRAlignmentLayer *)self expirationDateLayer];
  [expirationDateLayer setString:0];

  instructionLayer = [(CRAlignmentLayer *)self instructionLayer];
  LODWORD(v10) = 1.0;
  [instructionLayer setOpacity:v10];

  infoLayer = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer setOpacity:0.0];
}

- (CGRect)alignmentRect
{
  outlineLayer = [(CRAlignmentLayer *)self outlineLayer];
  [outlineLayer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  outlineLayer2 = [(CRAlignmentLayer *)self outlineLayer];
  [(CRAlignmentLayer *)self convertRect:outlineLayer2 fromLayer:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGPoint)pointOnInfoLayerForPointOnCard:(CGPoint)card
{
  y = card.y;
  x = card.x;
  if (card.x != *MEMORY[0x277CBF348] || card.y != *(MEMORY[0x277CBF348] + 8))
  {
    infoLayer = [(CRAlignmentLayer *)self infoLayer];
    [infoLayer bounds];
    v9 = v8;

    infoLayer2 = [(CRAlignmentLayer *)self infoLayer];
    [infoLayer2 bounds];
    MinX = CGRectGetMinX(v19);
    infoLayer3 = [(CRAlignmentLayer *)self infoLayer];
    [infoLayer3 bounds];
    MaxY = CGRectGetMaxY(v20);
    v14 = v9 / 85.6;
    v15 = v14;
    x = MinX + x * v15;
    y = MaxY - y * v15;
  }

  v16 = x;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)makeTextLayer:(id)layer matchWidthOfText:(id)text
{
  layerCopy = layer;
  textCopy = text;
  v6 = MEMORY[0x277D74300];
  font = [layerCopy font];
  [layerCopy fontSize];
  v8 = [v6 fontWithName:font size:?];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:*MEMORY[0x277D740A8]];
  [textCopy sizeWithAttributes:v9];
  v11 = v10;

  [layerCopy bounds];
  v13 = v12;
  [layerCopy bounds];
  v15 = v14;
  [layerCopy bounds];
  [layerCopy setBounds:{v13, v15, v11}];
}

- (void)animateFoundCodeParts:(id)parts codePartPositions:(id)positions codeFrameIndex:(unint64_t)index cardHolder:(id)holder cardholderPosition:(CGPoint)position cardholderFrameIndex:(unint64_t)frameIndex expDate:(id)date expdatePosition:(CGPoint)self0 expDateFrameIndex:(unint64_t)self1 completionBlock:(id)self2
{
  y = expdatePosition.y;
  x = expdatePosition.x;
  v16 = position.y;
  v17 = position.x;
  v192 = *MEMORY[0x277D85DE8];
  partsCopy = parts;
  positionsCopy = positions;
  holderCopy = holder;
  dateCopy = date;
  blockCopy = block;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:MEMORY[0x277CBEC38] forKey:@"disableActions"];
  if ([positionsCopy count] == 1)
  {
    v22 = [positionsCopy objectAtIndex:0];
    NSPointFromString(v22);

    cardNumberLayers = [(CRAlignmentLayer *)self cardNumberLayers];
    v24 = [cardNumberLayers objectAtIndexedSubscript:0];
    [v24 setAlignmentMode:@"center"];

    [(CRAlignmentLayer *)self cardNumberHorizontalDefaultBounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    cardNumberLayers2 = [(CRAlignmentLayer *)self cardNumberLayers];
    v34 = [cardNumberLayers2 objectAtIndexedSubscript:0];
    [v34 setBounds:{v26, v28, v30, v32}];

    cardNumberLayers3 = [(CRAlignmentLayer *)self cardNumberLayers];
    v36 = [cardNumberLayers3 objectAtIndexedSubscript:0];
    [v36 setAnchorPoint:{0.5, 0.5}];

    [(CRAlignmentLayer *)self cardNumberHorizontalDefaultPos];
    [(CRAlignmentLayer *)self pointOnInfoLayerForPointOnCard:?];
    v38 = v37;
    v40 = v39;
    cardNumberLayers4 = [(CRAlignmentLayer *)self cardNumberLayers];
    v42 = [cardNumberLayers4 objectAtIndexedSubscript:0];
    [v42 setPosition:{v38, v40}];
  }

  else
  {
    v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(positionsCopy, "count")}];
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v12 = positionsCopy;
    v44 = [v12 countByEnumeratingWithState:&v187 objects:v191 count:16];
    if (v44)
    {
      v45 = *v188;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v188 != v45)
          {
            objc_enumerationMutation(v12);
          }

          v48 = NSPointFromString(*(*(&v187 + 1) + 8 * i));
          HIDWORD(v47) = HIDWORD(v48.x);
          *&v47 = v48.x;
          v49 = [MEMORY[0x277CCABB0] numberWithFloat:{v47, v48.y}];
          [v43 addObject:v49];
        }

        v44 = [v12 countByEnumeratingWithState:&v187 objects:v191 count:16];
      }

      while (v44);
    }

    [v43 sortUsingComparator:&__block_literal_global_0];
    v50 = [v43 objectAtIndex:{objc_msgSend(v43, "count") >> 1}];
    [v50 floatValue];
    v52 = v51;

    v53 = 0;
    v54 = v52;
    while (1)
    {
      v55 = [v12 count];
      if (v53 > 3 || v53 >= v55)
      {
        break;
      }

      v56 = [v12 objectAtIndex:v53];
      v57 = NSPointFromString(v56).y;

      cardNumberLayers5 = [(CRAlignmentLayer *)self cardNumberLayers];
      v59 = [cardNumberLayers5 objectAtIndexedSubscript:v53];
      [v59 setAlignmentMode:@"left"];

      cardNumberLayers6 = [(CRAlignmentLayer *)self cardNumberLayers];
      v61 = [cardNumberLayers6 objectAtIndexedSubscript:v53];
      [v61 setAnchorPoint:{0.0, 1.0}];

      [(CRAlignmentLayer *)self pointOnInfoLayerForPointOnCard:v54, v57];
      v63 = v62;
      v65 = v64;
      cardNumberLayers7 = [(CRAlignmentLayer *)self cardNumberLayers];
      v67 = [cardNumberLayers7 objectAtIndexedSubscript:v53];
      [v67 setPosition:{v63, v65}];

      ++v53;
    }
  }

  v68 = MEMORY[0x277CBF348];
  v69 = *MEMORY[0x277CBF348];
  v70 = *(MEMORY[0x277CBF348] + 8);
  if (v17 != *MEMORY[0x277CBF348] || v16 != v70)
  {
    [(CRAlignmentLayer *)self pointOnInfoLayerForPointOnCard:v17, v16];
    v73 = v72;
    v75 = v74;
    cardholderNameLayer = [(CRAlignmentLayer *)self cardholderNameLayer];
    [cardholderNameLayer setPosition:{v73, v75}];

    v69 = *v68;
    v70 = v68[1];
  }

  if (x != v69 || y != v70)
  {
    [(CRAlignmentLayer *)self pointOnInfoLayerForPointOnCard:x, y];
    v79 = v78;
    v81 = v80;
    expirationDateLayer = [(CRAlignmentLayer *)self expirationDateLayer];
    [expirationDateLayer setPosition:{v79, v81}];
  }

  infoLayer = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer bounds];
  v85 = v84;
  infoLayer2 = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer2 bounds];
  v88 = v87;

  if ([positionsCopy count] >= 2)
  {
    cardNumberLayers8 = [(CRAlignmentLayer *)self cardNumberLayers];
    v90 = [cardNumberLayers8 subarrayWithRange:{0, objc_msgSend(positionsCopy, "count")}];
    v91 = [v90 mutableCopy];

    [v91 sortUsingComparator:&__block_literal_global_167];
    for (j = 1; j < [v91 count]; j = v94 + 2)
    {
      v93 = [v91 objectAtIndex:j];
      v94 = j - 1;
      v95 = [v91 objectAtIndex:j - 1];
      [v95 frame];
      v97 = v96;
      [v95 frame];
      v99 = v98;
      [v93 frame];
      v101 = v97 + v99 - v100;
      if (v101 > 0.0)
      {
        [v93 frame];
        v103 = v102;
        [v93 frame];
        v105 = v104;
        [v93 frame];
        v107 = v106;
        [v93 frame];
        [v93 setFrame:{v103, v101 + v105, v107}];
      }
    }
  }

  v108 = objc_alloc(MEMORY[0x277CD9FC8]);
  cardNumberLayers9 = [(CRAlignmentLayer *)self cardNumberLayers];
  v110 = [cardNumberLayers9 objectAtIndex:0];
  v186 = [v108 initWithLayer:v110];

  infoLayer3 = [(CRAlignmentLayer *)self infoLayer];
  [infoLayer3 addSublayer:v186];

  cardNumberLayers10 = [(CRAlignmentLayer *)self cardNumberLayers];
  v113 = [cardNumberLayers10 objectAtIndex:0];
  [v113 frame];
  v115 = v114;
  v117 = v116;
  width = v118;
  height = v120;

  dateFrameIndexCopy = dateFrameIndex;
  v123 = v88 + -1.0;
  for (k = 1; k < [partsCopy count]; ++k)
  {
    cardNumberLayers11 = [(CRAlignmentLayer *)self cardNumberLayers];
    v126 = k < [cardNumberLayers11 count];

    if (!v126)
    {
      break;
    }

    cardNumberLayers12 = [(CRAlignmentLayer *)self cardNumberLayers];
    v128 = [cardNumberLayers12 objectAtIndex:k];
    [v128 frame];
    v196.origin.x = v129;
    v196.origin.y = v130;
    v196.size.width = v131;
    v196.size.height = v132;
    v193.origin.x = v115;
    v193.origin.y = v117;
    v193.size.width = width;
    v193.size.height = height;
    v194 = CGRectUnion(v193, v196);
    v115 = v194.origin.x;
    v117 = v194.origin.y;
    width = v194.size.width;
    height = v194.size.height;
  }

  [v186 setFrame:{v115, v117, width, height}];
  v183 = [MEMORY[0x277CBEB18] arrayWithObject:v186];
  v133 = MEMORY[0x277CBEB18];
  v134 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v179 = [v133 arrayWithObject:v134];

  if (frameIndex != -1)
  {
    cardholderNameLayer2 = [(CRAlignmentLayer *)self cardholderNameLayer];
    [v183 addObject:cardholderNameLayer2];

    v136 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:frameIndex];
    [v179 addObject:v136];
  }

  if (dateFrameIndex != -1)
  {
    expirationDateLayer2 = [(CRAlignmentLayer *)self expirationDateLayer];
    [v183 addObject:expirationDateLayer2];

    v138 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:dateFrameIndex];
    [v179 addObject:v138];
  }

  for (m = 0; m < [partsCopy count]; ++m)
  {
    cardNumberLayers13 = [(CRAlignmentLayer *)self cardNumberLayers];
    dateFrameIndexCopy = m < [cardNumberLayers13 count];

    if ((dateFrameIndexCopy & 1) == 0)
    {
      break;
    }

    cardNumberLayers14 = [(CRAlignmentLayer *)self cardNumberLayers];
    dateFrameIndexCopy = [cardNumberLayers14 objectAtIndexedSubscript:m];
    v142 = [partsCopy objectAtIndex:m];
    [(CRAlignmentLayer *)self makeTextLayer:dateFrameIndexCopy matchWidthOfText:v142];
  }

  cardholderNameLayer3 = [(CRAlignmentLayer *)self cardholderNameLayer];
  [(CRAlignmentLayer *)self makeTextLayer:cardholderNameLayer3 matchWidthOfText:holderCopy];

  v181 = [dateCopy stringByReplacingOccurrencesOfString:@"0" withString:@"O"];
  expirationDateLayer3 = [(CRAlignmentLayer *)self expirationDateLayer];
  [(CRAlignmentLayer *)self makeTextLayer:expirationDateLayer3 matchWidthOfText:v181];

  sortOverlappingCALayers(v183, v179, 0.0, 1.0, v85, v123);
  keepAllLayersWithinHorizontalBounds(v183, 0.0, 1.0, v85);
  [v186 frame];
  v146 = v145;
  [v186 frame];
  v147 = 0;
  v148 = v146 - v115;
  v150 = v149 - v117;
  while (v147 < [partsCopy count])
  {
    cardNumberLayers15 = [(CRAlignmentLayer *)self cardNumberLayers];
    dateFrameIndexCopy = v147 < [cardNumberLayers15 count];

    if ((dateFrameIndexCopy & 1) == 0)
    {
      break;
    }

    dateFrameIndexCopy = [(CRAlignmentLayer *)self cardNumberLayers];
    v152 = [dateFrameIndexCopy objectAtIndexedSubscript:v147];

    [v152 position];
    v154 = v153;
    [v152 position];
    [v152 setPosition:{v148 + v154, v150 + v155}];

    ++v147;
  }

  [v186 removeFromSuperlayer];
  [MEMORY[0x277CD9FF0] setValue:MEMORY[0x277CBEC28] forKey:@"disableActions"];
  for (n = 0; n < [partsCopy count]; ++n)
  {
    cardNumberLayers16 = [(CRAlignmentLayer *)self cardNumberLayers];
    v158 = n < [cardNumberLayers16 count];

    if (!v158)
    {
      break;
    }

    v159 = [partsCopy objectAtIndexedSubscript:n];
    if (v159)
    {
      v160 = MEMORY[0x277CCACA8];
      dateFrameIndexCopy = [partsCopy objectAtIndexedSubscript:n];
      v12 = [v160 _newZStringWithString:dateFrameIndexCopy];
      v161 = v12;
    }

    else
    {
      v161 = 0;
    }

    cardNumberLayers17 = [(CRAlignmentLayer *)self cardNumberLayers];
    v163 = [cardNumberLayers17 objectAtIndexedSubscript:n];
    [v163 setString:v161];

    if (v159)
    {
    }
  }

  if (holderCopy)
  {
    v164 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
  }

  else
  {
    v164 = 0;
  }

  cardholderNameLayer4 = [(CRAlignmentLayer *)self cardholderNameLayer];
  [cardholderNameLayer4 setString:v164];

  if (holderCopy)
  {
  }

  if (v181)
  {
    v166 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
  }

  else
  {
    v166 = 0;
  }

  expirationDateLayer4 = [(CRAlignmentLayer *)self expirationDateLayer];
  [expirationDateLayer4 setString:v166];

  if (v181)
  {
  }

  [MEMORY[0x277CD9FF0] commit];
  instructionLayer = [(CRAlignmentLayer *)self instructionLayer];
  [instructionLayer setOpacity:0.0];

  [MEMORY[0x277CD9FF0] begin];
  v169 = MEMORY[0x277CD9FF0];
  LODWORD(v170) = 0.5;
  v171 = [MEMORY[0x277CCABB0] numberWithFloat:v170];
  [v169 setValue:v171 forKey:@"animationDuration"];

  maskLayer = [(CRAlignmentLayer *)self maskLayer];
  BoundingBox = CGPathGetBoundingBox([maskLayer path]);
  v173 = CGPathCreateWithRect(BoundingBox, 0);

  maskLayer2 = [(CRAlignmentLayer *)self maskLayer];
  [maskLayer2 setPath:v173];

  CGPathRelease(v173);
  infoLayer4 = [(CRAlignmentLayer *)self infoLayer];
  LODWORD(v176) = 1.0;
  [infoLayer4 setOpacity:v176];

  [MEMORY[0x277CD9FF0] setCompletionBlock:blockCopy];
  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __184__CRAlignmentLayer_animateFoundCodeParts_codePartPositions_codeFrameIndex_cardHolder_cardholderPosition_cardholderFrameIndex_expDate_expdatePosition_expDateFrameIndex_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 position];
  v7 = v6;
  [v5 position];
  if (v7 >= v8)
  {
    [v4 position];
    v11 = v10;
    [v5 position];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)animateFoundCardRect:(id)rect
{
  v75 = *MEMORY[0x277D85DE8];
  *&v67.size.width = rect;
  if (*&v67.size.width)
  {
    v4 = 0;
    v5 = &v68;
    do
    {
      v6 = [*&v67.size.width objectAtIndex:v4];
      [v6 CGPointValue];
      *(v5 - 1) = v7;
      *v5 = v8;

      ++v4;
      v5 += 2;
    }

    while (v4 != 4);
    v9.f64[0] = v67.size.height;
    v9.f64[1] = v69;
    v10.f64[0] = v69;
    v10.f64[1] = v71;
    v11 = vsubq_f64(v9, v10);
    v10.f64[0] = v68;
    v10.f64[1] = v70;
    v12.f64[0] = v70;
    v12.f64[1] = v72;
    v13 = vsubq_f64(v10, v12);
    v14 = vaddq_f64(vmulq_f64(v11, v11), vmulq_f64(v13, v13));
    v13.f64[0] = v71;
    v13.f64[1] = v73;
    v12.f64[0] = v73;
    rect = v68;
    v67.origin.x = v67.size.height;
    v12.f64[1] = v67.size.height;
    v15 = vsubq_f64(v13, v12);
    v12.f64[0] = v72;
    v12.f64[1] = v74;
    v16.f64[0] = v74;
    v16.f64[1] = v68;
    v17 = vsubq_f64(v12, v16);
    v18 = vaddq_f64(vsqrtq_f64(v14), vsqrtq_f64(vaddq_f64(vmulq_f64(v15, v15), vmulq_f64(v17, v17))));
    __asm { FMOV            V1.2D, #0.5 }

    v24 = vmulq_f64(v18, _Q1);
    v62 = v71;
    v63 = v69;
    v60 = v72;
    v61 = v70;
    v58 = v73;
    v59 = v74;
    if (vmovn_s64(vcgtq_f64(v24, vdupq_laneq_s64(v24, 1))).u8[0])
    {
      v25 = v69 + v71;
      v26 = v70 + v72;
      v27 = v73;
      v28 = v74;
    }

    else
    {
      v25 = v71 + v73;
      v26 = v72 + v74;
      v27 = v69;
      v28 = v70;
    }

    v29 = (v68 + v28) * 0.5;
    v30 = (v67.size.height + v27) * 0.5;
    v31 = v26 * 0.5;
    v32 = v25 * 0.5;
    if (v32 == v30)
    {
      v33 = dbl_24783F6C0[v31 > v29];
    }

    else
    {
      v33 = atan((v31 - v29) / (v32 - v30)) * 180.0;
    }

    outlineLayer = [(CRAlignmentLayer *)self outlineLayer];
    [outlineLayer bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    outlineLayer2 = [(CRAlignmentLayer *)self outlineLayer];
    [(CRAlignmentLayer *)self convertRect:outlineLayer2 fromLayer:v36, v38, v40, v42];
    v81 = CGRectInset(v80, -38.0, -38.0);
    x = v81.origin.x;
    y = v81.origin.y;
    width = v81.size.width;
    height = v81.size.height;

    v82.origin.x = x;
    v82.origin.y = y;
    v82.size.width = width;
    v82.size.height = height;
    v77.x = (v67.origin.x + v63 + v62 + v58) * 0.25;
    v77.y = (rect + v61 + v60 + v59) * 0.25;
    v48 = CGRectContainsPoint(v82, v77);
    v83.origin.x = x;
    v83.origin.y = y;
    v83.size.width = width;
    v83.size.height = height;
    v84 = CGRectInset(v83, width * 0.2, height * 0.2);
    v67.origin.x = v84.origin.x;
    recta = v84.origin.y;
    v49 = v84.size.width;
    v50 = v84.size.height;
    v51 = 0;
    v64 = v33 / 3.14159265;
    do
    {
      v52 = *(&v67.size.height + v51);
      v53 = *(&v67 + v51 + 32);
      v85.origin.x = x;
      v85.origin.y = y;
      v85.size.width = width;
      v85.size.height = height;
      v78.x = v52;
      v78.y = v53;
      if (!CGRectContainsPoint(v85, v78) || (v86.origin.x = v67.origin.x, v86.origin.y = recta, v86.size.width = v49, v86.size.height = v50, v79.x = v52, v79.y = v53, CGRectContainsPoint(v86, v79)))
      {
        v48 = 0;
      }

      v51 += 16;
    }

    while (v51 != 64);
    if ((v48 & (fabs(v64) <= 15.0)) == 1)
    {
      instructionLayer = [(CRAlignmentLayer *)self instructionLayer];
      [instructionLayer opacity];
      v56 = v55;

      if (v56 != 0.0)
      {
        instructionLayer2 = [(CRAlignmentLayer *)self instructionLayer];
        [instructionLayer2 setOpacity:0.0];
      }
    }
  }
}

- (void)propogateMaskColor:(id)color outlineColor:(id)outlineColor placementTextColor:(id)textColor capturedTextColor:(id)capturedTextColor
{
  v40 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  outlineColorCopy = outlineColor;
  textColorCopy = textColor;
  capturedTextColorCopy = capturedTextColor;
  v38 = 0.0;
  [colorCopy getWhite:0 alpha:&v38];
  maskLayer = [(CRAlignmentLayer *)self maskLayer];
  HIDWORD(v15) = HIDWORD(v38);
  *&v15 = v38;
  [maskLayer setOpacity:v15];

  maskLayer2 = [(CRAlignmentLayer *)self maskLayer];
  v17 = [colorCopy colorWithAlphaComponent:1.0];
  v18 = v17;
  [maskLayer2 setFillColor:{objc_msgSend(v17, "CGColor")}];

  outlineLayer = [(CRAlignmentLayer *)self outlineLayer];
  v20 = [outlineColorCopy colorWithAlphaComponent:1.0];
  v21 = v20;
  [outlineLayer setStrokeColor:{objc_msgSend(v20, "CGColor")}];

  instructionLayer = [(CRAlignmentLayer *)self instructionLayer];
  v23 = textColorCopy;
  [instructionLayer setForegroundColor:{objc_msgSend(textColorCopy, "CGColor")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  cardNumberLayers = [(CRAlignmentLayer *)self cardNumberLayers];
  v25 = [cardNumberLayers countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v25)
  {
    v26 = *v35;
    do
    {
      v27 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(cardNumberLayers);
        }

        v28 = *(*(&v34 + 1) + 8 * v27);
        v29 = capturedTextColorCopy;
        [v28 setForegroundColor:{objc_msgSend(capturedTextColorCopy, "CGColor")}];
        ++v27;
      }

      while (v25 != v27);
      v25 = [cardNumberLayers countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v25);
  }

  cardholderNameLayer = [(CRAlignmentLayer *)self cardholderNameLayer];
  v31 = capturedTextColorCopy;
  [cardholderNameLayer setForegroundColor:{objc_msgSend(capturedTextColorCopy, "CGColor")}];

  expirationDateLayer = [(CRAlignmentLayer *)self expirationDateLayer];
  v33 = capturedTextColorCopy;
  [expirationDateLayer setForegroundColor:{objc_msgSend(capturedTextColorCopy, "CGColor")}];
}

- (CGPoint)cardNumberHorizontalDefaultPos
{
  x = self->_cardNumberHorizontalDefaultPos.x;
  y = self->_cardNumberHorizontalDefaultPos.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)cardNumberHorizontalDefaultBounds
{
  x = self->_cardNumberHorizontalDefaultBounds.origin.x;
  y = self->_cardNumberHorizontalDefaultBounds.origin.y;
  width = self->_cardNumberHorizontalDefaultBounds.size.width;
  height = self->_cardNumberHorizontalDefaultBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end