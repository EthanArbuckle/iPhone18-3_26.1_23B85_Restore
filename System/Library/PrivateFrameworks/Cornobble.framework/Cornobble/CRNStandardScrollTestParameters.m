@interface CRNStandardScrollTestParameters
+ (id)parametersForTestName:(id)a3 scrollView:(id)a4 iterations:(unint64_t)a5 amplitude:(double)a6 direction:(int64_t)a7 preventDismissalGestures:(BOOL)a8 canUseFlicks:(BOOL)a9 completionHandler:(id)a10;
+ (id)parametersForTestName:(id)a3 scrollView:(id)a4 iterations:(unint64_t)a5 direction:(int64_t)a6 preventDismissalGestures:(BOOL)a7 canUseFlicks:(BOOL)a8 completionHandler:(id)a9;
+ (id)parametersForTestName:(id)a3 scrollView:(id)a4 iterations:(unint64_t)a5 preventDismissalGestures:(BOOL)a6 canUseFlicks:(BOOL)a7 completionHandler:(id)a8;
- (CGRect)scrollingBounds;
- (CRNStandardScrollTestParameters)initWithTestName:(id)a3 iterations:(unint64_t)a4 scrollingBounds:(CGRect)a5 amplitude:(double)a6 direction:(int64_t)a7 preventDismissalGestures:(BOOL)a8 iterationDuration:(double)a9 canUseFlicks:(BOOL)a10 completionHandler:(id)a11;
- (id)composerBlock;
@end

@implementation CRNStandardScrollTestParameters

+ (id)parametersForTestName:(id)a3 scrollView:(id)a4 iterations:(unint64_t)a5 amplitude:(double)a6 direction:(int64_t)a7 preventDismissalGestures:(BOOL)a8 canUseFlicks:(BOOL)a9 completionHandler:(id)a10
{
  v10 = a9;
  v11 = a8;
  v16 = a10;
  v17 = a4;
  v18 = a3;
  v19 = [v17 superview];
  [v17 frame];
  [v19 convertRect:0 toView:?];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v17 adjustedContentInset];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = v23 + v29;
  v37 = v27 - (v29 + v33);
  v38 = [MEMORY[0x277D75418] currentDevice];
  v39 = [v38 userInterfaceIdiom];

  v40 = 25.0;
  if (v39 != 1)
  {
    v40 = 5.0;
  }

  v41 = v36 + v40;
  v42 = -70.0;
  if (v39 != 1)
  {
    v42 = -10.0;
  }

  v43 = [[CRNStandardScrollTestParameters alloc] initWithTestName:v18 iterations:a5 scrollingBounds:a7 amplitude:v11 direction:v10 preventDismissalGestures:v16 iterationDuration:v21 + v31 + 5.0 canUseFlicks:v41 completionHandler:v25 - (v31 + v35) + -10.0, v37 + v42, a6, 1.25];

  return v43;
}

+ (id)parametersForTestName:(id)a3 scrollView:(id)a4 iterations:(unint64_t)a5 direction:(int64_t)a6 preventDismissalGestures:(BOOL)a7 canUseFlicks:(BOOL)a8 completionHandler:(id)a9
{
  v9 = a8;
  v10 = a7;
  v15 = a9;
  v16 = a4;
  v17 = a3;
  v44 = CRNContentSizeInDirection(v16, a6);
  v18 = [v16 superview];
  [v16 frame];
  [v18 convertRect:0 toView:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 adjustedContentInset];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = v22 + v28;
  v36 = v26 - (v28 + v32);
  v37 = [MEMORY[0x277D75418] currentDevice];
  v38 = [v37 userInterfaceIdiom];

  v39 = 25.0;
  if (v38 != 1)
  {
    v39 = 5.0;
  }

  v40 = v35 + v39;
  v41 = -70.0;
  if (v38 != 1)
  {
    v41 = -10.0;
  }

  v42 = [[CRNStandardScrollTestParameters alloc] initWithTestName:v17 iterations:a5 scrollingBounds:a6 amplitude:v10 direction:v9 preventDismissalGestures:v15 iterationDuration:v20 + v30 + 5.0 canUseFlicks:v40 completionHandler:v24 - (v30 + v34) + -10.0, v36 + v41, v44, 1.25];

  return v42;
}

+ (id)parametersForTestName:(id)a3 scrollView:(id)a4 iterations:(unint64_t)a5 preventDismissalGestures:(BOOL)a6 canUseFlicks:(BOOL)a7 completionHandler:(id)a8
{
  v8 = a7;
  v9 = a6;
  v13 = a8;
  v14 = a4;
  v15 = a3;
  v16 = CRNQuadrantOfContentOffsetFor(v14);
  v17 = [CRNStandardScrollTestParameters parametersForTestName:v15 scrollView:v14 iterations:a5 direction:CRNOppositeDirectionFrom(v16) preventDismissalGestures:v9 canUseFlicks:v8 completionHandler:v13];

  return v17;
}

- (CRNStandardScrollTestParameters)initWithTestName:(id)a3 iterations:(unint64_t)a4 scrollingBounds:(CGRect)a5 amplitude:(double)a6 direction:(int64_t)a7 preventDismissalGestures:(BOOL)a8 iterationDuration:(double)a9 canUseFlicks:(BOOL)a10 completionHandler:(id)a11
{
  v12 = a8;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v66[2] = *MEMORY[0x277D85DE8];
  v21 = a3;
  v59 = a11;
  if (CRNAxisFromScrollDirection(a7) == 1)
  {
    v22 = width;
  }

  else
  {
    v22 = height;
  }

  v56 = a6;
  v23 = floor(a6 / v22);
  v24 = 0x278EDC000uLL;
  v25 = 2 * a4;
  v55 = v22 / 10.0;
  v26 = [[CRNOscillationScrollTestParameters alloc] initWithTestName:v21 iterations:2 * a4 scrollingBounds:0 useFlicks:v12 preventDismissalGestures:a7 initialAmplitude:0 amplitudeVariationPerIteration:x initialDirection:y iterationDuration:width finishWithHalfIteration:height];
  v66[0] = v26;
  v61 = a4;
  v57 = v22;
  v27 = [[CRNOscillationScrollTestParameters alloc] initWithTestName:v21 iterations:a4 scrollingBounds:0 useFlicks:v12 preventDismissalGestures:a7 initialAmplitude:1 amplitudeVariationPerIteration:x initialDirection:y iterationDuration:width finishWithHalfIteration:height, v22, 0.0, a9];
  v66[1] = v27;
  v28 = 0x277CBE000uLL;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];

  if (v23 >= 1.0)
  {
    v31 = 1.0;
    do
    {
      v62 = [objc_alloc(*(v24 + 1176)) initWithTestName:v21 iterations:v25 scrollingBounds:0 useFlicks:v12 preventDismissalGestures:a7 initialAmplitude:0 amplitudeVariationPerIteration:x initialDirection:y iterationDuration:width finishWithHalfIteration:{height, v55, 15.0, a9 * 0.25}];
      v65[0] = v62;
      v32 = [objc_alloc(*(v24 + 1176)) initWithTestName:v21 iterations:v61 scrollingBounds:0 useFlicks:v12 preventDismissalGestures:a7 initialAmplitude:1 amplitudeVariationPerIteration:x initialDirection:y iterationDuration:width finishWithHalfIteration:{height, v57, 0.0, a9}];
      v65[1] = v32;
      [*(v28 + 2656) arrayWithObjects:v65 count:2];
      v33 = v28;
      v34 = v21;
      v35 = a7;
      v36 = v12;
      v37 = v25;
      v39 = v38 = v24;
      v30 = [v29 arrayByAddingObjectsFromArray:v39];

      v24 = v38;
      v25 = v37;
      v12 = v36;
      a7 = v35;
      v21 = v34;
      v28 = v33;

      v31 = v31 + 1.0;
      v29 = v30;
    }

    while (v31 <= v23);
  }

  else
  {
    v30 = v29;
  }

  if (a10)
  {
    v40 = objc_alloc(*(v24 + 1176));
    v41 = v28;
    v42 = v61;
    v43 = y;
    v44 = width;
    v45 = [v40 initWithTestName:v21 iterations:v61 scrollingBounds:1 useFlicks:v12 preventDismissalGestures:CRNOppositeDirectionFrom(a7) initialAmplitude:1 amplitudeVariationPerIteration:x initialDirection:y iterationDuration:width finishWithHalfIteration:{height, v57, 0.0, a9 * 1.5}];
    v64 = v45;
    v46 = [*(v41 + 2656) arrayWithObjects:&v64 count:1];
    v47 = [v30 arrayByAddingObjectsFromArray:v46];

    v30 = v47;
    v48 = v59;
  }

  else
  {
    v48 = v59;
    v42 = v61;
    v43 = y;
    v44 = width;
  }

  v63.receiver = self;
  v63.super_class = CRNStandardScrollTestParameters;
  v49 = [(CRNGroupScrollTestParameters *)&v63 initWithTestName:v21 withParameters:v30 completionHandler:0];
  if (v49)
  {
    v50 = [v21 copy];
    testName = v49->_testName;
    v49->_testName = v50;

    v49->_scrollingBounds.origin.x = x;
    v49->_scrollingBounds.origin.y = v43;
    v49->_scrollingBounds.size.width = v44;
    v49->_scrollingBounds.size.height = height;
    v49->_iterations = v42;
    v49->_amplitude = v56;
    v49->_shouldFlick = a10;
    v49->_direction = a7;
    v49->_preventDismissalGestures = v12;
    v49->_iterationDuration = a9;
    v52 = MEMORY[0x24C1B6890](v48);
    completionHandler = v49->_completionHandler;
    v49->_completionHandler = v52;
  }

  return v49;
}

- (id)composerBlock
{
  v100[2] = *MEMORY[0x277D85DE8];
  v3 = CRNAxisFromScrollDirection([(CRNStandardScrollTestParameters *)self direction]);
  [(CRNStandardScrollTestParameters *)self scrollingBounds];
  if (v3 == 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = 0x278EDC000uLL;
  v8 = [CRNOscillationScrollTestParameters alloc];
  v9 = [(CRNStandardScrollTestParameters *)self testName];
  v10 = 2 * [(CRNStandardScrollTestParameters *)self iterations];
  [(CRNStandardScrollTestParameters *)self scrollingBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(CRNStandardScrollTestParameters *)self preventDismissalGestures];
  v20 = [(CRNStandardScrollTestParameters *)self direction];
  [(CRNStandardScrollTestParameters *)self iterationDuration];
  v22 = [(CRNOscillationScrollTestParameters *)v8 initWithTestName:v9 iterations:v10 scrollingBounds:0 useFlicks:v19 preventDismissalGestures:v20 initialAmplitude:0 amplitudeVariationPerIteration:v12 initialDirection:v14 iterationDuration:v16 finishWithHalfIteration:v18, v6 / 10.0, 15.0, v21 * 0.25];
  v100[0] = v22;
  v23 = [CRNOscillationScrollTestParameters alloc];
  v24 = [(CRNStandardScrollTestParameters *)self testName];
  v25 = [(CRNStandardScrollTestParameters *)self iterations];
  [(CRNStandardScrollTestParameters *)self scrollingBounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(CRNStandardScrollTestParameters *)self preventDismissalGestures];
  v35 = [(CRNStandardScrollTestParameters *)self direction];
  [(CRNStandardScrollTestParameters *)self iterationDuration];
  v37 = [(CRNOscillationScrollTestParameters *)v23 initWithTestName:v24 iterations:v25 scrollingBounds:0 useFlicks:v34 preventDismissalGestures:v35 initialAmplitude:1 amplitudeVariationPerIteration:v27 initialDirection:v29 iterationDuration:v31 finishWithHalfIteration:v33, v6, 0.0, v36];
  v100[1] = v37;
  v38 = 0x277CBE000uLL;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];

  [(CRNStandardScrollTestParameters *)self amplitude];
  v41 = floor(v40 / v6);
  if (v41 <= 1.0)
  {
    v76 = v39;
  }

  else
  {
    v42 = 1.0;
    do
    {
      v43 = objc_alloc(*(v7 + 1176));
      v96 = [(CRNStandardScrollTestParameters *)self testName];
      v44 = 2 * [(CRNStandardScrollTestParameters *)self iterations];
      [(CRNStandardScrollTestParameters *)self scrollingBounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = [(CRNStandardScrollTestParameters *)self preventDismissalGestures];
      v54 = [(CRNStandardScrollTestParameters *)self direction];
      [(CRNStandardScrollTestParameters *)self iterationDuration];
      v56 = [v43 initWithTestName:v96 iterations:v44 scrollingBounds:0 useFlicks:v53 preventDismissalGestures:v54 initialAmplitude:0 amplitudeVariationPerIteration:v46 initialDirection:v48 iterationDuration:v50 finishWithHalfIteration:{v52, v6 / 10.0, 15.0, v55 * 0.25}];
      v99[0] = v56;
      v57 = objc_alloc(*(v7 + 1176));
      v58 = [(CRNStandardScrollTestParameters *)self testName];
      v59 = [(CRNStandardScrollTestParameters *)self iterations];
      [(CRNStandardScrollTestParameters *)self scrollingBounds];
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v68 = [(CRNStandardScrollTestParameters *)self preventDismissalGestures];
      v69 = v7;
      v70 = v38;
      v71 = [(CRNStandardScrollTestParameters *)self direction];
      [(CRNStandardScrollTestParameters *)self iterationDuration];
      v72 = v71;
      v38 = v70;
      v7 = v69;
      v74 = [v57 initWithTestName:v58 iterations:v59 scrollingBounds:0 useFlicks:v68 preventDismissalGestures:v72 initialAmplitude:1 amplitudeVariationPerIteration:v61 initialDirection:v63 iterationDuration:v65 finishWithHalfIteration:{v67, v6, 0.0, v73}];
      v99[1] = v74;
      v75 = [*(v38 + 2656) arrayWithObjects:v99 count:2];
      v76 = [v39 arrayByAddingObjectsFromArray:v75];

      v42 = v42 + 1.0;
      v39 = v76;
    }

    while (v42 < v41);
  }

  if ([(CRNStandardScrollTestParameters *)self shouldFlick])
  {
    v77 = objc_alloc(*(v7 + 1176));
    v78 = [(CRNStandardScrollTestParameters *)self testName];
    v79 = [(CRNStandardScrollTestParameters *)self iterations];
    [(CRNStandardScrollTestParameters *)self scrollingBounds];
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = [(CRNStandardScrollTestParameters *)self preventDismissalGestures];
    v89 = CRNOppositeDirectionFrom([(CRNStandardScrollTestParameters *)self direction]);
    [(CRNStandardScrollTestParameters *)self iterationDuration];
    v91 = [v77 initWithTestName:v78 iterations:v79 scrollingBounds:1 useFlicks:v88 preventDismissalGestures:v89 initialAmplitude:1 amplitudeVariationPerIteration:v81 initialDirection:v83 iterationDuration:v85 finishWithHalfIteration:{v87, v6, 0.0, v90 * 1.5}];
    v98 = v91;
    v92 = [*(v38 + 2656) arrayWithObjects:&v98 count:1];
    v93 = [v76 arrayByAddingObjectsFromArray:v92];

    v76 = v93;
  }

  [(CRNGroupScrollTestParameters *)self setParameters:v76];
  v97.receiver = self;
  v97.super_class = CRNStandardScrollTestParameters;
  v94 = [(CRNGroupScrollTestParameters *)&v97 composerBlock];

  return v94;
}

- (CGRect)scrollingBounds
{
  x = self->_scrollingBounds.origin.x;
  y = self->_scrollingBounds.origin.y;
  width = self->_scrollingBounds.size.width;
  height = self->_scrollingBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end