@interface CRNStandardScrollTestParameters
+ (id)parametersForTestName:(id)name scrollView:(id)view iterations:(unint64_t)iterations amplitude:(double)amplitude direction:(int64_t)direction preventDismissalGestures:(BOOL)gestures canUseFlicks:(BOOL)flicks completionHandler:(id)self0;
+ (id)parametersForTestName:(id)name scrollView:(id)view iterations:(unint64_t)iterations direction:(int64_t)direction preventDismissalGestures:(BOOL)gestures canUseFlicks:(BOOL)flicks completionHandler:(id)handler;
+ (id)parametersForTestName:(id)name scrollView:(id)view iterations:(unint64_t)iterations preventDismissalGestures:(BOOL)gestures canUseFlicks:(BOOL)flicks completionHandler:(id)handler;
- (CGRect)scrollingBounds;
- (CRNStandardScrollTestParameters)initWithTestName:(id)name iterations:(unint64_t)iterations scrollingBounds:(CGRect)bounds amplitude:(double)amplitude direction:(int64_t)direction preventDismissalGestures:(BOOL)gestures iterationDuration:(double)duration canUseFlicks:(BOOL)self0 completionHandler:(id)self1;
- (id)composerBlock;
@end

@implementation CRNStandardScrollTestParameters

+ (id)parametersForTestName:(id)name scrollView:(id)view iterations:(unint64_t)iterations amplitude:(double)amplitude direction:(int64_t)direction preventDismissalGestures:(BOOL)gestures canUseFlicks:(BOOL)flicks completionHandler:(id)self0
{
  flicksCopy = flicks;
  gesturesCopy = gestures;
  handlerCopy = handler;
  viewCopy = view;
  nameCopy = name;
  superview = [viewCopy superview];
  [viewCopy frame];
  [superview convertRect:0 toView:?];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [viewCopy adjustedContentInset];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = v23 + v29;
  v37 = v27 - (v29 + v33);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v40 = 25.0;
  if (userInterfaceIdiom != 1)
  {
    v40 = 5.0;
  }

  v41 = v36 + v40;
  v42 = -70.0;
  if (userInterfaceIdiom != 1)
  {
    v42 = -10.0;
  }

  v43 = [[CRNStandardScrollTestParameters alloc] initWithTestName:nameCopy iterations:iterations scrollingBounds:direction amplitude:gesturesCopy direction:flicksCopy preventDismissalGestures:handlerCopy iterationDuration:v21 + v31 + 5.0 canUseFlicks:v41 completionHandler:v25 - (v31 + v35) + -10.0, v37 + v42, amplitude, 1.25];

  return v43;
}

+ (id)parametersForTestName:(id)name scrollView:(id)view iterations:(unint64_t)iterations direction:(int64_t)direction preventDismissalGestures:(BOOL)gestures canUseFlicks:(BOOL)flicks completionHandler:(id)handler
{
  flicksCopy = flicks;
  gesturesCopy = gestures;
  handlerCopy = handler;
  viewCopy = view;
  nameCopy = name;
  v44 = CRNContentSizeInDirection(viewCopy, direction);
  superview = [viewCopy superview];
  [viewCopy frame];
  [superview convertRect:0 toView:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [viewCopy adjustedContentInset];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = v22 + v28;
  v36 = v26 - (v28 + v32);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v39 = 25.0;
  if (userInterfaceIdiom != 1)
  {
    v39 = 5.0;
  }

  v40 = v35 + v39;
  v41 = -70.0;
  if (userInterfaceIdiom != 1)
  {
    v41 = -10.0;
  }

  v42 = [[CRNStandardScrollTestParameters alloc] initWithTestName:nameCopy iterations:iterations scrollingBounds:direction amplitude:gesturesCopy direction:flicksCopy preventDismissalGestures:handlerCopy iterationDuration:v20 + v30 + 5.0 canUseFlicks:v40 completionHandler:v24 - (v30 + v34) + -10.0, v36 + v41, v44, 1.25];

  return v42;
}

+ (id)parametersForTestName:(id)name scrollView:(id)view iterations:(unint64_t)iterations preventDismissalGestures:(BOOL)gestures canUseFlicks:(BOOL)flicks completionHandler:(id)handler
{
  flicksCopy = flicks;
  gesturesCopy = gestures;
  handlerCopy = handler;
  viewCopy = view;
  nameCopy = name;
  v16 = CRNQuadrantOfContentOffsetFor(viewCopy);
  v17 = [CRNStandardScrollTestParameters parametersForTestName:nameCopy scrollView:viewCopy iterations:iterations direction:CRNOppositeDirectionFrom(v16) preventDismissalGestures:gesturesCopy canUseFlicks:flicksCopy completionHandler:handlerCopy];

  return v17;
}

- (CRNStandardScrollTestParameters)initWithTestName:(id)name iterations:(unint64_t)iterations scrollingBounds:(CGRect)bounds amplitude:(double)amplitude direction:(int64_t)direction preventDismissalGestures:(BOOL)gestures iterationDuration:(double)duration canUseFlicks:(BOOL)self0 completionHandler:(id)self1
{
  gesturesCopy = gestures;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v66[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  if (CRNAxisFromScrollDirection(direction) == 1)
  {
    v22 = width;
  }

  else
  {
    v22 = height;
  }

  amplitudeCopy = amplitude;
  v23 = floor(amplitude / v22);
  v24 = 0x278EDC000uLL;
  v25 = 2 * iterations;
  v55 = v22 / 10.0;
  v26 = [[CRNOscillationScrollTestParameters alloc] initWithTestName:nameCopy iterations:2 * iterations scrollingBounds:0 useFlicks:gesturesCopy preventDismissalGestures:direction initialAmplitude:0 amplitudeVariationPerIteration:x initialDirection:y iterationDuration:width finishWithHalfIteration:height];
  v66[0] = v26;
  iterationsCopy = iterations;
  v57 = v22;
  duration = [[CRNOscillationScrollTestParameters alloc] initWithTestName:nameCopy iterations:iterations scrollingBounds:0 useFlicks:gesturesCopy preventDismissalGestures:direction initialAmplitude:1 amplitudeVariationPerIteration:x initialDirection:y iterationDuration:width finishWithHalfIteration:height, v22, 0.0, duration];
  v66[1] = duration;
  v28 = 0x277CBE000uLL;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];

  if (v23 >= 1.0)
  {
    v31 = 1.0;
    do
    {
      v62 = [objc_alloc(*(v24 + 1176)) initWithTestName:nameCopy iterations:v25 scrollingBounds:0 useFlicks:gesturesCopy preventDismissalGestures:direction initialAmplitude:0 amplitudeVariationPerIteration:x initialDirection:y iterationDuration:width finishWithHalfIteration:{height, v55, 15.0, duration * 0.25}];
      v65[0] = v62;
      v32 = [objc_alloc(*(v24 + 1176)) initWithTestName:nameCopy iterations:iterationsCopy scrollingBounds:0 useFlicks:gesturesCopy preventDismissalGestures:direction initialAmplitude:1 amplitudeVariationPerIteration:x initialDirection:y iterationDuration:width finishWithHalfIteration:{height, v57, 0.0, duration}];
      v65[1] = v32;
      [*(v28 + 2656) arrayWithObjects:v65 count:2];
      v33 = v28;
      v34 = nameCopy;
      directionCopy = direction;
      v36 = gesturesCopy;
      v37 = v25;
      v39 = v38 = v24;
      v30 = [v29 arrayByAddingObjectsFromArray:v39];

      v24 = v38;
      v25 = v37;
      gesturesCopy = v36;
      direction = directionCopy;
      nameCopy = v34;
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

  if (flicks)
  {
    v40 = objc_alloc(*(v24 + 1176));
    v41 = v28;
    v42 = iterationsCopy;
    v43 = y;
    v44 = width;
    v45 = [v40 initWithTestName:nameCopy iterations:iterationsCopy scrollingBounds:1 useFlicks:gesturesCopy preventDismissalGestures:CRNOppositeDirectionFrom(direction) initialAmplitude:1 amplitudeVariationPerIteration:x initialDirection:y iterationDuration:width finishWithHalfIteration:{height, v57, 0.0, duration * 1.5}];
    v64 = v45;
    v46 = [*(v41 + 2656) arrayWithObjects:&v64 count:1];
    v47 = [v30 arrayByAddingObjectsFromArray:v46];

    v30 = v47;
    v48 = handlerCopy;
  }

  else
  {
    v48 = handlerCopy;
    v42 = iterationsCopy;
    v43 = y;
    v44 = width;
  }

  v63.receiver = self;
  v63.super_class = CRNStandardScrollTestParameters;
  v49 = [(CRNGroupScrollTestParameters *)&v63 initWithTestName:nameCopy withParameters:v30 completionHandler:0];
  if (v49)
  {
    v50 = [nameCopy copy];
    testName = v49->_testName;
    v49->_testName = v50;

    v49->_scrollingBounds.origin.x = x;
    v49->_scrollingBounds.origin.y = v43;
    v49->_scrollingBounds.size.width = v44;
    v49->_scrollingBounds.size.height = height;
    v49->_iterations = v42;
    v49->_amplitude = amplitudeCopy;
    v49->_shouldFlick = flicks;
    v49->_direction = direction;
    v49->_preventDismissalGestures = gesturesCopy;
    v49->_iterationDuration = duration;
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
  testName = [(CRNStandardScrollTestParameters *)self testName];
  v10 = 2 * [(CRNStandardScrollTestParameters *)self iterations];
  [(CRNStandardScrollTestParameters *)self scrollingBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  preventDismissalGestures = [(CRNStandardScrollTestParameters *)self preventDismissalGestures];
  direction = [(CRNStandardScrollTestParameters *)self direction];
  [(CRNStandardScrollTestParameters *)self iterationDuration];
  v22 = [(CRNOscillationScrollTestParameters *)v8 initWithTestName:testName iterations:v10 scrollingBounds:0 useFlicks:preventDismissalGestures preventDismissalGestures:direction initialAmplitude:0 amplitudeVariationPerIteration:v12 initialDirection:v14 iterationDuration:v16 finishWithHalfIteration:v18, v6 / 10.0, 15.0, v21 * 0.25];
  v100[0] = v22;
  v23 = [CRNOscillationScrollTestParameters alloc];
  testName2 = [(CRNStandardScrollTestParameters *)self testName];
  iterations = [(CRNStandardScrollTestParameters *)self iterations];
  [(CRNStandardScrollTestParameters *)self scrollingBounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  preventDismissalGestures2 = [(CRNStandardScrollTestParameters *)self preventDismissalGestures];
  direction2 = [(CRNStandardScrollTestParameters *)self direction];
  [(CRNStandardScrollTestParameters *)self iterationDuration];
  v37 = [(CRNOscillationScrollTestParameters *)v23 initWithTestName:testName2 iterations:iterations scrollingBounds:0 useFlicks:preventDismissalGestures2 preventDismissalGestures:direction2 initialAmplitude:1 amplitudeVariationPerIteration:v27 initialDirection:v29 iterationDuration:v31 finishWithHalfIteration:v33, v6, 0.0, v36];
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
      testName3 = [(CRNStandardScrollTestParameters *)self testName];
      v44 = 2 * [(CRNStandardScrollTestParameters *)self iterations];
      [(CRNStandardScrollTestParameters *)self scrollingBounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      preventDismissalGestures3 = [(CRNStandardScrollTestParameters *)self preventDismissalGestures];
      direction3 = [(CRNStandardScrollTestParameters *)self direction];
      [(CRNStandardScrollTestParameters *)self iterationDuration];
      v56 = [v43 initWithTestName:testName3 iterations:v44 scrollingBounds:0 useFlicks:preventDismissalGestures3 preventDismissalGestures:direction3 initialAmplitude:0 amplitudeVariationPerIteration:v46 initialDirection:v48 iterationDuration:v50 finishWithHalfIteration:{v52, v6 / 10.0, 15.0, v55 * 0.25}];
      v99[0] = v56;
      v57 = objc_alloc(*(v7 + 1176));
      testName4 = [(CRNStandardScrollTestParameters *)self testName];
      iterations2 = [(CRNStandardScrollTestParameters *)self iterations];
      [(CRNStandardScrollTestParameters *)self scrollingBounds];
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;
      preventDismissalGestures4 = [(CRNStandardScrollTestParameters *)self preventDismissalGestures];
      v69 = v7;
      v70 = v38;
      direction4 = [(CRNStandardScrollTestParameters *)self direction];
      [(CRNStandardScrollTestParameters *)self iterationDuration];
      v72 = direction4;
      v38 = v70;
      v7 = v69;
      v74 = [v57 initWithTestName:testName4 iterations:iterations2 scrollingBounds:0 useFlicks:preventDismissalGestures4 preventDismissalGestures:v72 initialAmplitude:1 amplitudeVariationPerIteration:v61 initialDirection:v63 iterationDuration:v65 finishWithHalfIteration:{v67, v6, 0.0, v73}];
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
    testName5 = [(CRNStandardScrollTestParameters *)self testName];
    iterations3 = [(CRNStandardScrollTestParameters *)self iterations];
    [(CRNStandardScrollTestParameters *)self scrollingBounds];
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    preventDismissalGestures5 = [(CRNStandardScrollTestParameters *)self preventDismissalGestures];
    v89 = CRNOppositeDirectionFrom([(CRNStandardScrollTestParameters *)self direction]);
    [(CRNStandardScrollTestParameters *)self iterationDuration];
    v91 = [v77 initWithTestName:testName5 iterations:iterations3 scrollingBounds:1 useFlicks:preventDismissalGestures5 preventDismissalGestures:v89 initialAmplitude:1 amplitudeVariationPerIteration:v81 initialDirection:v83 iterationDuration:v85 finishWithHalfIteration:{v87, v6, 0.0, v90 * 1.5}];
    v98 = v91;
    v92 = [*(v38 + 2656) arrayWithObjects:&v98 count:1];
    v93 = [v76 arrayByAddingObjectsFromArray:v92];

    v76 = v93;
  }

  [(CRNGroupScrollTestParameters *)self setParameters:v76];
  v97.receiver = self;
  v97.super_class = CRNStandardScrollTestParameters;
  composerBlock = [(CRNGroupScrollTestParameters *)&v97 composerBlock];

  return composerBlock;
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