@interface CRAlignmentLayer
+ (id)layer;
- (CGPoint)cardNumberHorizontalDefaultPos;
- (CGPoint)pointOnInfoLayerForPointOnCard:(CGPoint)a3;
- (CGRect)alignmentRect;
- (CGRect)cardNumberHorizontalDefaultBounds;
- (CRAlignmentLayer)init;
- (void)animateFoundCardRect:(id)a3;
- (void)animateFoundCodeParts:(id)a3 codePartPositions:(id)a4 codeFrameIndex:(unint64_t)a5 cardHolder:(id)a6 cardholderPosition:(CGPoint)a7 cardholderFrameIndex:(unint64_t)a8 expDate:(id)a9 expdatePosition:(CGPoint)a10 expDateFrameIndex:(unint64_t)a11 completionBlock:(id)a12;
- (void)layoutSublayers;
- (void)makeTextLayer:(id)a3 matchWidthOfText:(id)a4;
- (void)propogateMaskColor:(id)a3 outlineColor:(id)a4 placementTextColor:(id)a5 capturedTextColor:(id)a6;
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
    v4 = [MEMORY[0x277CD9F90] layer];
    [(CRAlignmentLayer *)v3 setMaskLayer:v4];

    v5 = [(CRAlignmentLayer *)v3 maskLayer];
    LODWORD(v6) = 1050253722;
    [v5 setOpacity:v6];

    v7 = +[CRColor blackColor];
    v8 = v7;
    v9 = [v7 CGColor];
    v10 = [(CRAlignmentLayer *)v3 maskLayer];
    [v10 setFillColor:v9];

    v11 = [(CRAlignmentLayer *)v3 maskLayer];
    [v11 setFillRule:@"even-odd"];

    v12 = [(CRAlignmentLayer *)v3 maskLayer];
    [(CRAlignmentLayer *)v3 addSublayer:v12];

    v13 = [MEMORY[0x277CD9F90] layer];
    [(CRAlignmentLayer *)v3 setOutlineLayer:v13];

    v14 = +[CRColor clearColor];
    v15 = v14;
    v16 = [v14 CGColor];
    v17 = [(CRAlignmentLayer *)v3 outlineLayer];
    [v17 setFillColor:v16];

    v18 = +[CRColor whiteColor];
    v19 = v18;
    v20 = [v18 CGColor];
    v21 = [(CRAlignmentLayer *)v3 outlineLayer];
    [v21 setStrokeColor:v20];

    v22 = [(CRAlignmentLayer *)v3 outlineLayer];
    [v22 setLineWidth:1.0];

    v23 = +[CRColor blackColor];
    v24 = v23;
    v25 = [v23 CGColor];
    v26 = [(CRAlignmentLayer *)v3 outlineLayer];
    [v26 setShadowColor:v25];

    v27 = *MEMORY[0x277CBF3A8];
    v28 = *(MEMORY[0x277CBF3A8] + 8);
    v29 = [(CRAlignmentLayer *)v3 outlineLayer];
    [v29 setShadowOffset:{v27, v28}];

    v30 = [(CRAlignmentLayer *)v3 outlineLayer];
    [v30 setShadowRadius:10.0];

    v31 = [(CRAlignmentLayer *)v3 outlineLayer];
    LODWORD(v32) = 1045220557;
    [v31 setShadowOpacity:v32];

    v33 = [(CRAlignmentLayer *)v3 outlineLayer];
    [v33 setMasksToBounds:0];

    v34 = [MEMORY[0x277CD9F90] layer];
    [v34 setFillRule:@"even-odd"];
    v35 = +[CRColor whiteColor];
    v36 = v35;
    [v34 setFillColor:{objc_msgSend(v35, "CGColor")}];

    v37 = [(CRAlignmentLayer *)v3 outlineLayer];
    [v37 setMask:v34];

    v38 = [(CRAlignmentLayer *)v3 outlineLayer];
    [(CRAlignmentLayer *)v3 addSublayer:v38];

    v39 = MEMORY[0x277D74300];
    [MEMORY[0x277D74300] labelFontSize];
    v103 = [v39 systemFontOfSize:?];
    v40 = [MEMORY[0x277D759A0] mainScreen];
    [v40 scale];
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

    v51 = [MEMORY[0x277CD9FC8] layer];
    [(CRAlignmentLayer *)v3 setInstructionLayer:v51];

    v52 = [(CRAlignmentLayer *)v3 instructionLayer];
    [v52 setWrapped:1];

    v53 = [(CRAlignmentLayer *)v3 instructionLayer];
    [v53 setAlignmentMode:@"center"];

    v54 = [(CRAlignmentLayer *)v3 instructionLayer];
    [v54 setString:v50];

    v55 = [(CRAlignmentLayer *)v3 instructionLayer];
    [v55 setContentsScale:v42];

    v56 = [(CRAlignmentLayer *)v3 instructionLayer];
    [(CRAlignmentLayer *)v3 addSublayer:v56];

    v57 = [MEMORY[0x277CD9ED0] layer];
    [(CRAlignmentLayer *)v3 setInfoLayer:v57];

    v58 = [(CRAlignmentLayer *)v3 infoLayer];
    [v58 setBounds:{0.0, 0.0, 85.6, 54.0}];

    v59 = [(CRAlignmentLayer *)v3 infoLayer];
    [v59 setOpacity:0.0];

    v60 = [(CRAlignmentLayer *)v3 infoLayer];
    [(CRAlignmentLayer *)v3 addSublayer:v60];

    v61 = [(CRAlignmentLayer *)v3 infoLayer];
    [v61 bounds];
    MidX = CGRectGetMidX(v111);
    v63 = [(CRAlignmentLayer *)v3 infoLayer];
    [v63 bounds];
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
      v69 = [MEMORY[0x277CD9FC8] layer];
      [(CRAlignmentLayer *)v3 cardNumberHorizontalDefaultBounds];
      [v69 setBounds:?];
      [(CRAlignmentLayer *)v3 cardNumberHorizontalDefaultPos];
      [v69 setPosition:?];
      CATransform3DMakeScale(&v107, 1.0 / v64, 1.0 / v64, 1.0);
      v106 = v107;
      [v69 setTransform:&v106];
      [v69 setFont:@"Spendcardium-Regular"];
      [v69 setFontSize:v64 * 6.0];
      v70 = [(CRAlignmentLayer *)v3 infoLayer];
      [v70 addSublayer:v69];

      v71 = [(CRAlignmentLayer *)v3 cardNumberLayers];
      [v71 addObject:v69];

      --v67;
    }

    while (v67);
    v72 = [MEMORY[0x277CD9FC8] layer];
    [(CRAlignmentLayer *)v3 setCardholderNameLayer:v72];

    v73 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    v74 = v64 * 4.25;
    v75 = ceil(v64 * 4.25);
    [v73 setBounds:{0.0, 0.0, v65, v75}];

    CATransform3DMakeScale(&v105, v68, v68, 1.0);
    v76 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    v106 = v105;
    [v76 setTransform:&v106];

    v77 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [v77 setFont:@"Menlo-Bold"];

    v78 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [v78 setFontSize:v74];

    v79 = [(CRAlignmentLayer *)v3 infoLayer];
    [v79 bounds];
    MinX = CGRectGetMinX(v113);
    v81 = [(CRAlignmentLayer *)v3 infoLayer];
    [v81 bounds];
    MaxY = CGRectGetMaxY(v114);
    v83 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [v83 setPosition:{MinX + 8.56, MaxY + -2.7}];

    v84 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [v84 setAlignmentMode:@"left"];

    v85 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [v85 setAnchorPoint:{0.0, 1.0}];

    v86 = [(CRAlignmentLayer *)v3 infoLayer];
    v87 = [(CRAlignmentLayer *)v3 cardholderNameLayer];
    [v86 addSublayer:v87];

    v88 = [MEMORY[0x277CD9FC8] layer];
    [(CRAlignmentLayer *)v3 setExpirationDateLayer:v88];

    v89 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [v89 setBounds:{0.0, 0.0, v65, v75}];

    v90 = [(CRAlignmentLayer *)v3 infoLayer];
    [v90 bounds];
    v91 = CGRectGetMidX(v115);
    v92 = [(CRAlignmentLayer *)v3 infoLayer];
    [v92 bounds];
    v93 = CGRectGetMaxY(v116);
    v94 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [v94 setPosition:{v91 + 8.56, v93 + -10.8}];

    CATransform3DMakeScale(&v104, v68, v68, 1.0);
    v95 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    v106 = v104;
    [v95 setTransform:&v106];

    v96 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [v96 setFont:@"Menlo-Bold"];

    v97 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [v97 setFontSize:v74];

    v98 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [v98 setAlignmentMode:@"left"];

    v99 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [v99 setAnchorPoint:{0.0, 1.0}];

    v100 = [(CRAlignmentLayer *)v3 infoLayer];
    v101 = [(CRAlignmentLayer *)v3 expirationDateLayer];
    [v100 addSublayer:v101];
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
  v11 = [(CRAlignmentLayer *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [(CRAlignmentLayer *)self delegate];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 parentViewController];
      v16 = [v15 presentingViewController];
      if (v16)
      {
        v17 = [v14 parentViewController];
        v18 = [v17 modalPresentationStyle];

        if (v18)
        {
          v19 = 0.0;
          v20 = 0.0;
          do
          {
            v21 = [v14 topLayoutGuide];
            [v21 length];
            v23 = v22;

            v24 = [v14 bottomLayoutGuide];
            [v24 length];
            v26 = v25;

            v27 = [v14 parentViewController];
            v19 = fmax(v19, v23);
            v20 = fmax(v20, v26);

            v14 = v27;
          }

          while (v27);
          goto LABEL_11;
        }
      }

      else
      {
      }

      v28 = [v14 view];
      [v28 safeAreaInsets];
      v19 = v29;
      [v28 safeAreaInsets];
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

  v34 = [(CRAlignmentLayer *)self instructionLayer];
  v35 = [v34 string];
  [v35 boundingRectWithSize:3 options:0 context:{width, height}];
  v141 = v37;
  v143 = v36;
  v137 = v39;
  v139 = v38;

  v40 = [(CRAlignmentLayer *)self instructionLayer];
  LOBYTE(v35) = [v40 isHidden];

  if ((v35 & 1) == 0)
  {
    v155.origin.y = v141;
    v155.origin.x = v143;
    v155.size.height = v137;
    v155.size.width = v139;
    height = height - (CGRectGetHeight(v155) + 8.0);
  }

  v41 = [MEMORY[0x277D75418] currentDevice];
  v42 = [v41 userInterfaceIdiom];

  if (v42)
  {
    v43 = 1.0;
    if (v42 == 1)
    {
      v44 = [MEMORY[0x277D759A0] mainScreen];
      [v44 bounds];
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
  v81 = [(CRAlignmentLayer *)self outlineLayer];
  [v81 setBounds:{0.0, 0.0, v67, v68}];

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
  v84 = [(CRAlignmentLayer *)self outlineLayer];
  [v84 setPosition:{v82, v83}];

  v85 = [(CRAlignmentLayer *)self outlineLayer];
  [v85 setPath:v70];

  v86 = [(CRAlignmentLayer *)self outlineLayer];
  [v86 setShadowPath:v70];

  v87 = [(CRAlignmentLayer *)self outlineLayer];
  v88 = [v87 mask];

  if (v88)
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
    [v88 setBounds:{v89, v90, v91, v92}];
    v179.origin.x = 0.0;
    v179.origin.y = 0.0;
    v179.size.width = v67;
    v179.size.height = v68;
    v94 = CGRectGetMidX(v179);
    v180.origin.x = 0.0;
    v180.origin.y = 0.0;
    v180.size.width = v67;
    v180.size.height = v68;
    [v88 setPosition:{v94, CGRectGetMidY(v180)}];
    [v88 setPath:v93];
    CGPathRelease(v93);
  }

  CGPathRelease(v70);
  v95 = [(CRAlignmentLayer *)self outlineLayer];
  [v95 bounds];
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = [(CRAlignmentLayer *)self maskLayer];
  [v104 setBounds:{v97, v99, v101, v103}];

  v105 = [(CRAlignmentLayer *)self outlineLayer];
  [v105 position];
  v107 = v106;
  v109 = v108;
  v110 = [(CRAlignmentLayer *)self maskLayer];
  [v110 setPosition:{v107, v109}];

  v111 = [(CRAlignmentLayer *)self maskLayer];
  [v111 setPath:Mutable];

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
  v114 = [(CRAlignmentLayer *)self instructionLayer];
  [v114 setBounds:{0.0, 0.0, v112, ceil(v113)}];

  v115 = [(CRAlignmentLayer *)self outlineLayer];
  [v115 position];
  v117 = v116;
  v118 = [(CRAlignmentLayer *)self outlineLayer];
  [v118 position];
  v120 = v119;
  v121 = [(CRAlignmentLayer *)self outlineLayer];
  [v121 bounds];
  v122 = CGRectGetHeight(v183);
  v123 = [(CRAlignmentLayer *)self instructionLayer];
  [v123 bounds];
  v124 = CGRectGetHeight(v184);
  v125 = [(CRAlignmentLayer *)self instructionLayer];
  [v125 setPosition:{v117, v120 + v122 * 0.5 + 8.0 + v124 * 0.5}];

  v126 = [(CRAlignmentLayer *)self outlineLayer];
  [v126 bounds];
  v127 = CGRectGetWidth(v185);
  v128 = [(CRAlignmentLayer *)self infoLayer];
  [v128 bounds];
  v129 = CGRectGetWidth(v186);

  v130 = [(CRAlignmentLayer *)self outlineLayer];
  [v130 position];
  v132 = v131;
  v134 = v133;
  v135 = [(CRAlignmentLayer *)self infoLayer];
  [v135 setPosition:{v132, v134}];

  CATransform3DMakeScale(&v148, v127 / v129, v127 / v129, 1.0);
  v136 = [(CRAlignmentLayer *)self infoLayer];
  v147 = v148;
  [v136 setTransform:&v147];
}

- (void)resetLayer
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(CRAlignmentLayer *)self cardNumberLayers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * v6++) setString:0];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v7 = [(CRAlignmentLayer *)self cardholderNameLayer];
  [v7 setString:0];

  v8 = [(CRAlignmentLayer *)self expirationDateLayer];
  [v8 setString:0];

  v9 = [(CRAlignmentLayer *)self instructionLayer];
  LODWORD(v10) = 1.0;
  [v9 setOpacity:v10];

  v11 = [(CRAlignmentLayer *)self infoLayer];
  [v11 setOpacity:0.0];
}

- (CGRect)alignmentRect
{
  v3 = [(CRAlignmentLayer *)self outlineLayer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CRAlignmentLayer *)self outlineLayer];
  [(CRAlignmentLayer *)self convertRect:v12 fromLayer:v5, v7, v9, v11];
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

- (CGPoint)pointOnInfoLayerForPointOnCard:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v7 = [(CRAlignmentLayer *)self infoLayer];
    [v7 bounds];
    v9 = v8;

    v10 = [(CRAlignmentLayer *)self infoLayer];
    [v10 bounds];
    MinX = CGRectGetMinX(v19);
    v12 = [(CRAlignmentLayer *)self infoLayer];
    [v12 bounds];
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

- (void)makeTextLayer:(id)a3 matchWidthOfText:(id)a4
{
  v16 = a3;
  v5 = a4;
  v6 = MEMORY[0x277D74300];
  v7 = [v16 font];
  [v16 fontSize];
  v8 = [v6 fontWithName:v7 size:?];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:*MEMORY[0x277D740A8]];
  [v5 sizeWithAttributes:v9];
  v11 = v10;

  [v16 bounds];
  v13 = v12;
  [v16 bounds];
  v15 = v14;
  [v16 bounds];
  [v16 setBounds:{v13, v15, v11}];
}

- (void)animateFoundCodeParts:(id)a3 codePartPositions:(id)a4 codeFrameIndex:(unint64_t)a5 cardHolder:(id)a6 cardholderPosition:(CGPoint)a7 cardholderFrameIndex:(unint64_t)a8 expDate:(id)a9 expdatePosition:(CGPoint)a10 expDateFrameIndex:(unint64_t)a11 completionBlock:(id)a12
{
  y = a10.y;
  x = a10.x;
  v16 = a7.y;
  v17 = a7.x;
  v192 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v184 = a4;
  v182 = a6;
  v178 = a9;
  v177 = a12;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setValue:MEMORY[0x277CBEC38] forKey:@"disableActions"];
  if ([v184 count] == 1)
  {
    v22 = [v184 objectAtIndex:0];
    NSPointFromString(v22);

    v23 = [(CRAlignmentLayer *)self cardNumberLayers];
    v24 = [v23 objectAtIndexedSubscript:0];
    [v24 setAlignmentMode:@"center"];

    [(CRAlignmentLayer *)self cardNumberHorizontalDefaultBounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [(CRAlignmentLayer *)self cardNumberLayers];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 setBounds:{v26, v28, v30, v32}];

    v35 = [(CRAlignmentLayer *)self cardNumberLayers];
    v36 = [v35 objectAtIndexedSubscript:0];
    [v36 setAnchorPoint:{0.5, 0.5}];

    [(CRAlignmentLayer *)self cardNumberHorizontalDefaultPos];
    [(CRAlignmentLayer *)self pointOnInfoLayerForPointOnCard:?];
    v38 = v37;
    v40 = v39;
    v41 = [(CRAlignmentLayer *)self cardNumberLayers];
    v42 = [v41 objectAtIndexedSubscript:0];
    [v42 setPosition:{v38, v40}];
  }

  else
  {
    v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v184, "count")}];
    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v12 = v184;
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

      v58 = [(CRAlignmentLayer *)self cardNumberLayers];
      v59 = [v58 objectAtIndexedSubscript:v53];
      [v59 setAlignmentMode:@"left"];

      v60 = [(CRAlignmentLayer *)self cardNumberLayers];
      v61 = [v60 objectAtIndexedSubscript:v53];
      [v61 setAnchorPoint:{0.0, 1.0}];

      [(CRAlignmentLayer *)self pointOnInfoLayerForPointOnCard:v54, v57];
      v63 = v62;
      v65 = v64;
      v66 = [(CRAlignmentLayer *)self cardNumberLayers];
      v67 = [v66 objectAtIndexedSubscript:v53];
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
    v76 = [(CRAlignmentLayer *)self cardholderNameLayer];
    [v76 setPosition:{v73, v75}];

    v69 = *v68;
    v70 = v68[1];
  }

  if (x != v69 || y != v70)
  {
    [(CRAlignmentLayer *)self pointOnInfoLayerForPointOnCard:x, y];
    v79 = v78;
    v81 = v80;
    v82 = [(CRAlignmentLayer *)self expirationDateLayer];
    [v82 setPosition:{v79, v81}];
  }

  v83 = [(CRAlignmentLayer *)self infoLayer];
  [v83 bounds];
  v85 = v84;
  v86 = [(CRAlignmentLayer *)self infoLayer];
  [v86 bounds];
  v88 = v87;

  if ([v184 count] >= 2)
  {
    v89 = [(CRAlignmentLayer *)self cardNumberLayers];
    v90 = [v89 subarrayWithRange:{0, objc_msgSend(v184, "count")}];
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
  v109 = [(CRAlignmentLayer *)self cardNumberLayers];
  v110 = [v109 objectAtIndex:0];
  v186 = [v108 initWithLayer:v110];

  v111 = [(CRAlignmentLayer *)self infoLayer];
  [v111 addSublayer:v186];

  v112 = [(CRAlignmentLayer *)self cardNumberLayers];
  v113 = [v112 objectAtIndex:0];
  [v113 frame];
  v115 = v114;
  v117 = v116;
  width = v118;
  height = v120;

  v122 = a11;
  v123 = v88 + -1.0;
  for (k = 1; k < [v21 count]; ++k)
  {
    v125 = [(CRAlignmentLayer *)self cardNumberLayers];
    v126 = k < [v125 count];

    if (!v126)
    {
      break;
    }

    v127 = [(CRAlignmentLayer *)self cardNumberLayers];
    v128 = [v127 objectAtIndex:k];
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
  v134 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v179 = [v133 arrayWithObject:v134];

  if (a8 != -1)
  {
    v135 = [(CRAlignmentLayer *)self cardholderNameLayer];
    [v183 addObject:v135];

    v136 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a8];
    [v179 addObject:v136];
  }

  if (a11 != -1)
  {
    v137 = [(CRAlignmentLayer *)self expirationDateLayer];
    [v183 addObject:v137];

    v138 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a11];
    [v179 addObject:v138];
  }

  for (m = 0; m < [v21 count]; ++m)
  {
    v140 = [(CRAlignmentLayer *)self cardNumberLayers];
    v122 = m < [v140 count];

    if ((v122 & 1) == 0)
    {
      break;
    }

    v141 = [(CRAlignmentLayer *)self cardNumberLayers];
    v122 = [v141 objectAtIndexedSubscript:m];
    v142 = [v21 objectAtIndex:m];
    [(CRAlignmentLayer *)self makeTextLayer:v122 matchWidthOfText:v142];
  }

  v143 = [(CRAlignmentLayer *)self cardholderNameLayer];
  [(CRAlignmentLayer *)self makeTextLayer:v143 matchWidthOfText:v182];

  v181 = [v178 stringByReplacingOccurrencesOfString:@"0" withString:@"O"];
  v144 = [(CRAlignmentLayer *)self expirationDateLayer];
  [(CRAlignmentLayer *)self makeTextLayer:v144 matchWidthOfText:v181];

  sortOverlappingCALayers(v183, v179, 0.0, 1.0, v85, v123);
  keepAllLayersWithinHorizontalBounds(v183, 0.0, 1.0, v85);
  [v186 frame];
  v146 = v145;
  [v186 frame];
  v147 = 0;
  v148 = v146 - v115;
  v150 = v149 - v117;
  while (v147 < [v21 count])
  {
    v151 = [(CRAlignmentLayer *)self cardNumberLayers];
    v122 = v147 < [v151 count];

    if ((v122 & 1) == 0)
    {
      break;
    }

    v122 = [(CRAlignmentLayer *)self cardNumberLayers];
    v152 = [v122 objectAtIndexedSubscript:v147];

    [v152 position];
    v154 = v153;
    [v152 position];
    [v152 setPosition:{v148 + v154, v150 + v155}];

    ++v147;
  }

  [v186 removeFromSuperlayer];
  [MEMORY[0x277CD9FF0] setValue:MEMORY[0x277CBEC28] forKey:@"disableActions"];
  for (n = 0; n < [v21 count]; ++n)
  {
    v157 = [(CRAlignmentLayer *)self cardNumberLayers];
    v158 = n < [v157 count];

    if (!v158)
    {
      break;
    }

    v159 = [v21 objectAtIndexedSubscript:n];
    if (v159)
    {
      v160 = MEMORY[0x277CCACA8];
      v122 = [v21 objectAtIndexedSubscript:n];
      v12 = [v160 _newZStringWithString:v122];
      v161 = v12;
    }

    else
    {
      v161 = 0;
    }

    v162 = [(CRAlignmentLayer *)self cardNumberLayers];
    v163 = [v162 objectAtIndexedSubscript:n];
    [v163 setString:v161];

    if (v159)
    {
    }
  }

  if (v182)
  {
    v164 = [MEMORY[0x277CCACA8] _newZStringWithString:?];
  }

  else
  {
    v164 = 0;
  }

  v165 = [(CRAlignmentLayer *)self cardholderNameLayer];
  [v165 setString:v164];

  if (v182)
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

  v167 = [(CRAlignmentLayer *)self expirationDateLayer];
  [v167 setString:v166];

  if (v181)
  {
  }

  [MEMORY[0x277CD9FF0] commit];
  v168 = [(CRAlignmentLayer *)self instructionLayer];
  [v168 setOpacity:0.0];

  [MEMORY[0x277CD9FF0] begin];
  v169 = MEMORY[0x277CD9FF0];
  LODWORD(v170) = 0.5;
  v171 = [MEMORY[0x277CCABB0] numberWithFloat:v170];
  [v169 setValue:v171 forKey:@"animationDuration"];

  v172 = [(CRAlignmentLayer *)self maskLayer];
  BoundingBox = CGPathGetBoundingBox([v172 path]);
  v173 = CGPathCreateWithRect(BoundingBox, 0);

  v174 = [(CRAlignmentLayer *)self maskLayer];
  [v174 setPath:v173];

  CGPathRelease(v173);
  v175 = [(CRAlignmentLayer *)self infoLayer];
  LODWORD(v176) = 1.0;
  [v175 setOpacity:v176];

  [MEMORY[0x277CD9FF0] setCompletionBlock:v177];
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

- (void)animateFoundCardRect:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  *&v67.size.width = a3;
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

    v34 = [(CRAlignmentLayer *)self outlineLayer];
    [v34 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [(CRAlignmentLayer *)self outlineLayer];
    [(CRAlignmentLayer *)self convertRect:v43 fromLayer:v36, v38, v40, v42];
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
      v54 = [(CRAlignmentLayer *)self instructionLayer];
      [v54 opacity];
      v56 = v55;

      if (v56 != 0.0)
      {
        v57 = [(CRAlignmentLayer *)self instructionLayer];
        [v57 setOpacity:0.0];
      }
    }
  }
}

- (void)propogateMaskColor:(id)a3 outlineColor:(id)a4 placementTextColor:(id)a5 capturedTextColor:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v38 = 0.0;
  [v10 getWhite:0 alpha:&v38];
  v14 = [(CRAlignmentLayer *)self maskLayer];
  HIDWORD(v15) = HIDWORD(v38);
  *&v15 = v38;
  [v14 setOpacity:v15];

  v16 = [(CRAlignmentLayer *)self maskLayer];
  v17 = [v10 colorWithAlphaComponent:1.0];
  v18 = v17;
  [v16 setFillColor:{objc_msgSend(v17, "CGColor")}];

  v19 = [(CRAlignmentLayer *)self outlineLayer];
  v20 = [v11 colorWithAlphaComponent:1.0];
  v21 = v20;
  [v19 setStrokeColor:{objc_msgSend(v20, "CGColor")}];

  v22 = [(CRAlignmentLayer *)self instructionLayer];
  v23 = v12;
  [v22 setForegroundColor:{objc_msgSend(v12, "CGColor")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = [(CRAlignmentLayer *)self cardNumberLayers];
  v25 = [v24 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v34 + 1) + 8 * v27);
        v29 = v13;
        [v28 setForegroundColor:{objc_msgSend(v13, "CGColor")}];
        ++v27;
      }

      while (v25 != v27);
      v25 = [v24 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v25);
  }

  v30 = [(CRAlignmentLayer *)self cardholderNameLayer];
  v31 = v13;
  [v30 setForegroundColor:{objc_msgSend(v13, "CGColor")}];

  v32 = [(CRAlignmentLayer *)self expirationDateLayer];
  v33 = v13;
  [v32 setForegroundColor:{objc_msgSend(v13, "CGColor")}];
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