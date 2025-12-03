@interface BKUICurvesView
- (CGPath)newQuartzPath:(id)path transform:(CGAffineTransform *)transform;
- (CGPoint)_getPoint:(id)point;
- (CGSize)sublayerSize;
- (unint64_t)_animateFromLayer:(unint64_t)layer toProgress:(float)progress withColor:(id)color;
- (void)_addEstimateWatchDog;
- (void)_animateFromLayer:(unint64_t)layer toLayer:(unint64_t)toLayer withColor:(id)color;
- (void)_checkEstimateFailedAfterAnimation:(id)animation;
- (void)_removeEstimateWatchDog;
- (void)_resetEstimate:(id)estimate;
- (void)_resetLayers;
- (void)_startAnimation:(unint64_t)animation withColor:(id)color isLast:(BOOL)last;
- (void)_waitForInit;
- (void)dealloc;
- (void)estimateFailed;
- (void)estimateProgress:(float)progress;
- (void)loadDataFromXML:(id)l name:(id)name color:(id)color;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)setProgress:(float)progress;
- (void)setSublayersSize:(CGSize)size;
@end

@implementation BKUICurvesView

- (void)dealloc
{
  parser = self->_parser;
  if (parser)
  {
    [(NSXMLParser *)parser abortParsing];
  }

  [(BKUICurvesView *)self _waitForInit];
  v4.receiver = self;
  v4.super_class = BKUICurvesView;
  [(BKUICurvesView *)&v4 dealloc];
}

- (void)_resetLayers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_pathLayers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_pathLayers removeAllObjects];
  self->_currentLayer = 0;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_animateFromLayer:(unint64_t)layer toLayer:(unint64_t)toLayer withColor:(id)color
{
  if (layer < toLayer)
  {
    v8 = toLayer - 1;
    do
    {
      v9 = layer + 1;
      [(BKUICurvesView *)self _startAnimation:layer withColor:color isLast:v8 == layer];
      layer = v9;
    }

    while (toLayer != v9);
  }
}

- (unint64_t)_animateFromLayer:(unint64_t)layer toProgress:(float)progress withColor:(id)color
{
  paths = self->_paths;
  colorCopy = color;
  v10 = ([(NSMutableArray *)paths count]* progress);
  [(BKUICurvesView *)self _animateFromLayer:layer toLayer:v10 withColor:colorCopy];

  return v10;
}

- (void)_checkEstimateFailedAfterAnimation:(id)animation
{
  animationCopy = animation;
  lastAnimation = self->_lastAnimation;
  if (lastAnimation == animationCopy)
  {
    v6 = animationCopy;
    if (self->_estimateFailed)
    {
      if (self->_progress < 1.0)
      {
        [(BKUICurvesView *)self _animateEstimateFailure];
      }

      self->_estimateFailed = 0;
      lastAnimation = self->_lastAnimation;
    }

    self->_lastAnimation = 0;

    self->_estimating = 0;
    animationCopy = v6;
  }
}

- (void)_resetEstimate:(id)estimate
{
  if (self->_progress < 1.0)
  {
    self->_preEstimateLayer = [estimate unsignedIntegerValue];
    self->_estimateFailed = 1;

    [(BKUICurvesView *)self estimateFailed];
  }
}

- (void)estimateProgress:(float)progress
{
  if (os_log_type_enabled(self->bkui_curves_view_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUICurvesView estimateProgress:];
  }

  if (!self->_estimating)
  {
    self->_estimating = 1;
    v5 = self->_progress + progress;
    v6 = (self->_currentLayer + 1);
    v7 = v6 / [(NSMutableArray *)self->_paths count];
    if (v5 >= v7)
    {
      v7 = v5;
    }

    v8 = fminf(v7, 1.0);
    currentLayer = self->_currentLayer;
    self->_preEstimateLayer = currentLayer;
    systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
    *&v11 = v8;
    self->_currentLayer = [(BKUICurvesView *)self _animateFromLayer:currentLayer toProgress:systemPinkColor withColor:v11];

    [(BKUICurvesView *)self _addEstimateWatchDog];
  }
}

- (void)estimateFailed
{
  if (os_log_type_enabled(self->bkui_curves_view_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUICurvesView estimateFailed];
  }

  [(BKUICurvesView *)self _removeEstimateWatchDog];
  if (self->_preEstimateLayer < self->_currentLayer)
  {
    self->_estimateFailed = 1;
    if (!self->_lastAnimation)
    {
      [(BKUICurvesView *)self _checkEstimateFailedAfterAnimation:0];
    }
  }
}

- (void)setProgress:(float)progress
{
  if (os_log_type_enabled(self->bkui_curves_view_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUICurvesView setProgress:];
  }

  [(BKUICurvesView *)self _removeEstimateWatchDog];
  if (progress <= 1.0)
  {
    progressCopy = progress;
  }

  else
  {
    progressCopy = 1.0;
  }

  v6 = fmaxf(progressCopy, 0.0);
  if (v6 == 0.0)
  {
    [(BKUICurvesView *)self _resetLayers];
    v6 = 0.0;
    goto LABEL_18;
  }

  v7 = (v6 * [(NSMutableArray *)self->_paths count]);
  currentLayer = self->_currentLayer;
  if (v6 == 1.0 && currentLayer < v7)
  {
    redColor = [MEMORY[0x277D75348] redColor];
    [(BKUICurvesView *)self _animateFromLayer:currentLayer toLayer:v7 withColor:redColor];

LABEL_17:
    self->_currentLayer = v7;
    goto LABEL_18;
  }

  v10 = [(NSMutableArray *)self->_paths count];
  if (v6 < 1.0 && currentLayer == v10)
  {
    [(BKUICurvesView *)self _animateFromLayer:v7 toLayer:self->_currentLayer withColor:self->_color];
    goto LABEL_17;
  }

LABEL_18:
  self->_progress = v6;
  self->_estimating = 0;
}

- (CGPoint)_getPoint:(id)point
{
  v3 = [point componentsSeparatedByString:{@", "}];
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 floatValue];
  v6 = v5;
  v7 = [v3 objectAtIndexedSubscript:1];
  [v7 floatValue];
  v9 = v8;

  v10 = v6;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_waitForInit
{
  [(NSCondition *)self->_initCondition lock];
  while (!self->_inited)
  {
    [(NSCondition *)self->_initCondition wait];
  }

  initCondition = self->_initCondition;

  [(NSCondition *)initCondition unlock];
}

- (void)_startAnimation:(unint64_t)animation withColor:(id)color isLast:(BOOL)last
{
  lastCopy = last;
  colorCopy = color;
  if ([(NSMutableArray *)self->_paths count]> animation)
  {
    layer = [MEMORY[0x277CD9F90] layer];
    [(BKUICurvesView *)self bounds];
    v11 = v10;
    [(UIBezierPath *)self->_wholePath bounds];
    v13 = v11 / v12;
    [(BKUICurvesView *)self bounds];
    v15 = v14;
    [(UIBezierPath *)self->_wholePath bounds];
    v17 = v15 / v16;
    if (v13 < v15 / v16)
    {
      v17 = v13;
    }

    v18 = v17;
    memset(&v33, 0, sizeof(v33));
    CGAffineTransformMakeScale(&v32, v18, v18);
    [(UIBezierPath *)self->_wholePath bounds];
    v20 = -v19;
    [(UIBezierPath *)self->_wholePath bounds];
    CGAffineTransformTranslate(&v33, &v32, v20, -v21);
    v22 = [(NSMutableArray *)self->_paths objectAtIndexedSubscript:animation];
    v23 = [(BKUICurvesView *)self newQuartzPath:v22 transform:&v33];

    [layer setPath:v23];
    CFRelease(v23);
    [layer setStrokeColor:{objc_msgSend(colorCopy, "CGColor")}];
    [layer setFillColor:0];
    [layer setLineWidth:1.5];
    [layer setLineJoin:*MEMORY[0x277CDA790]];
    v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
    [v24 setFromValue:&unk_2853CC8F8];
    [v24 setToValue:&unk_2853CC908];
    [(NSNumber *)self->_speed floatValue];
    [v24 setDuration:v25];
    objc_storeStrong(&self->_lastAnimation, v24);
    if (lastCopy)
    {
      [v24 duration];
      [(BKUICurvesView *)self performSelector:sel__checkEstimateFailedAfterAnimation_ withObject:v24 afterDelay:v26 + 0.0500000007];
    }

    [layer addAnimation:v24 forKey:@"strokeEnd"];
    if ([(NSMutableArray *)self->_pathLayers count]> animation && ([(NSMutableArray *)self->_pathLayers objectAtIndexedSubscript:animation], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v28 = v27;
      v29 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
      [v29 setFromValue:&unk_2853CC908];
      [v29 setToValue:&unk_2853CC918];
      [(NSNumber *)self->_speed floatValue];
      [v29 setDuration:v30];
      [v29 setDelegate:self];
      [v29 setValue:v28 forKey:@"oldLayer"];
      [v28 addAnimation:v29 forKey:@"opacity"];
      [(NSMutableArray *)self->_pathLayers replaceObjectAtIndex:animation withObject:layer];
    }

    else
    {
      [(NSMutableArray *)self->_pathLayers addObject:layer];
    }

    layer2 = [(BKUICurvesView *)self layer];
    [layer2 addSublayer:layer];
  }
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  parserCopy = parser;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  attributesCopy = attributes;
  if ([elementCopy isEqualToString:@"path"])
  {
    v92 = nameCopy;
    v93 = iCopy;
    v94 = elementCopy;
    v95 = parserCopy;
    v91 = attributesCopy;
    v17 = [attributesCopy valueForKey:@"d"];
    v18 = objc_alloc_init(MEMORY[0x277D75208]);
    v90 = v17;
    v19 = [v17 componentsSeparatedByString:@" "];
    v20 = 0;
    v21 = 0;
    v22 = 0;
LABEL_3:
    v23 = 0;
LABEL_4:
    v24 = v23;
    while ([v19 count] > v22)
    {
      v25 = [v19 objectAtIndexedSubscript:v22];
      v26 = [v25 characterAtIndex:0];

      if ((v26 & 0xFFFFFFDF) == 0x4D)
      {
        v56 = [v19 objectAtIndexedSubscript:v22 + 1];
        [(BKUICurvesView *)self _getPoint:v56];
        v58 = v57;
        v60 = v59;
        v22 += 2;

        v23 = 1;
        [v18 moveToPoint:{v58, v60}];
        v21 = 0;
        goto LABEL_4;
      }

      v27 = v26 != 108;
      if (v26 == 108)
      {
        [v18 currentPoint];
        v48 = v47;
        v50 = v49;
        v51 = [v19 objectAtIndexedSubscript:v22 + 1];
        [(BKUICurvesView *)self _getPoint:v51];
        v53 = v52;
        v55 = v54;
        v22 += 2;

        [(BKUICurvesView *)self _path:v18 drawLineToPoint:v48 + v53, v50 + v55];
        v21 = v27;
      }

      else
      {
        if ((v26 | 0x20) == 0x63)
        {
          [v18 currentPoint];
          v71 = v70;
          v73 = v72;
          v74 = v26 == 67;
          v75 = [v19 objectAtIndexedSubscript:v22 + 1];
          [(BKUICurvesView *)self _getPoint:v75];
          v77 = v76;
          v79 = v78;

          v80 = [v19 objectAtIndexedSubscript:v22 + 2];
          [(BKUICurvesView *)self _getPoint:v80];
          v82 = v81;
          v84 = v83;

          v85 = [v19 objectAtIndexedSubscript:v22 + 3];
          [(BKUICurvesView *)self _getPoint:v85];
          v87 = v86;
          v89 = v88;
          v20 |= v74;

          if ((v20 & 1) == 0)
          {
            v87 = v71 + v87;
            v89 = v73 + v89;
            v77 = v71 + v77;
            v79 = v73 + v79;
            v82 = v71 + v82;
            v84 = v73 + v84;
          }

          [(BKUICurvesView *)self _path:v18 drawCurveToPoint:v87 controlPoint1:v89 controlPoint2:v77, v79, v82, v84];
          v22 += 4;
          [v18 currentPoint];
          goto LABEL_3;
        }

        if ((v21 & 1) == 0)
        {
          v23 = 0;
          v21 = 1;
          if (v24)
          {
            [v18 currentPoint];
            v62 = v61;
            v64 = v63;
            v65 = [v19 objectAtIndexedSubscript:v22];
            [(BKUICurvesView *)self _getPoint:v65];
            v67 = v66;
            v69 = v68;
            ++v22;

            v23 = 1;
            [(BKUICurvesView *)self _path:v18 drawLineToPoint:v62 + v67, v64 + v69];
            v21 = 0;
          }

          goto LABEL_4;
        }

        [v18 currentPoint];
        v29 = v28;
        v31 = v30;
        v32 = [v19 objectAtIndexedSubscript:v22];
        [(BKUICurvesView *)self _getPoint:v32];
        v34 = v33;
        v36 = v35;

        v37 = [v19 objectAtIndexedSubscript:v22 + 1];
        [(BKUICurvesView *)self _getPoint:v37];
        v39 = v38;
        v41 = v40;

        v42 = [v19 objectAtIndexedSubscript:v22 + 2];
        [(BKUICurvesView *)self _getPoint:v42];
        v44 = v43;
        v46 = v45;

        if ((v20 & 1) == 0)
        {
          v44 = v29 + v44;
          v46 = v31 + v46;
          v34 = v29 + v34;
          v36 = v31 + v36;
          v39 = v29 + v39;
          v41 = v31 + v41;
        }

        [(BKUICurvesView *)self _path:v18 drawCurveToPoint:v44 controlPoint1:v46 controlPoint2:v34, v36, v39, v41];
        v22 += 3;
        [v18 currentPoint];
        v21 = v27;
      }
    }

    [(UIBezierPath *)self->_wholePath appendPath:v18];
    [(NSMutableArray *)self->_paths addObject:v18];

    elementCopy = v94;
    parserCopy = v95;
    nameCopy = v92;
    iCopy = v93;
    attributesCopy = v91;
  }
}

- (void)loadDataFromXML:(id)l name:(id)name color:(id)color
{
  v40 = *MEMORY[0x277D85DE8];
  lCopy = l;
  nameCopy = name;
  colorCopy = color;
  v11 = os_log_create("com.apple.biometrickitui", "CurvesView");
  bkui_curves_view_log = self->bkui_curves_view_log;
  self->bkui_curves_view_log = v11;

  objc_storeStrong(&self->_color, color);
  v13 = objc_alloc_init(MEMORY[0x277D75208]);
  wholePath = self->_wholePath;
  self->_wholePath = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  paths = self->_paths;
  self->_paths = v15;

  v17 = objc_alloc(MEMORY[0x277CCABB0]);
  LODWORD(v18) = 0.5;
  v19 = [v17 initWithFloat:v18];
  speed = self->_speed;
  self->_speed = v19;

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pathLayers = self->_pathLayers;
  self->_pathLayers = v21;

  fingerLayer = self->_fingerLayer;
  self->_fingerLayer = 0;

  self->_currentLayer = 0;
  self->_preEstimateLayer = 0;
  self->_lastRatio = 0.0;
  self->_inited = 0;
  v24 = objc_alloc_init(MEMORY[0x277CCA928]);
  initCondition = self->_initCondition;
  self->_initCondition = v24;

  self->_lastFrameSize = *MEMORY[0x277CBF3A8];
  v26 = self->bkui_curves_view_log;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v35 = lCopy;
    v36 = 2112;
    v37 = nameCopy;
    v38 = 2112;
    v39 = colorCopy;
    _os_log_impl(&dword_241B0A000, v26, OS_LOG_TYPE_INFO, "BiometricKitUI: Loading bundle: %@ with name: %@, and color: %@", buf, 0x20u);
  }

  v27 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__BKUICurvesView_loadDataFromXML_name_color___block_invoke;
  block[3] = &unk_278D09A60;
  block[4] = self;
  v32 = lCopy;
  v33 = nameCopy;
  v28 = nameCopy;
  v29 = lCopy;
  dispatch_async(v27, block);

  v30 = *MEMORY[0x277D85DE8];
}

void __45__BKUICurvesView_loadDataFromXML_name_color___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if (os_log_type_enabled(*(*(a1 + 32) + 528), OS_LOG_TYPE_DEBUG))
  {
    __45__BKUICurvesView_loadDataFromXML_name_color___block_invoke_cold_1(v2);
  }

  v3 = [*(a1 + 40) pathForResource:*(a1 + 48) ofType:@"svg"];
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
  v5 = [objc_alloc(MEMORY[0x277CCAE70]) initWithData:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 496);
  *(v6 + 496) = v5;

  [*(*(a1 + 32) + 496) setDelegate:?];
  if ([*(*(a1 + 32) + 496) parse])
  {
    v8 = [MEMORY[0x277CD9F90] layer];
    [*v2 bounds];
    v10 = v9;
    v12 = v11;
    [*(*v2 + 504) bounds];
    v14 = v10 / v13;
    [*(*v2 + 504) bounds];
    v16 = v12 / v15;
    memset(&v33.c, 0, 32);
    if (v14 < v12 / v15)
    {
      v16 = v14;
    }

    *&v33.a = 0uLL;
    CGAffineTransformMakeScale(&v32, v16, v16);
    [*(*v2 + 504) bounds];
    v18 = -v17;
    [*(*v2 + 504) bounds];
    CGAffineTransformTranslate(&v33, &v32, v18, -v19);
    v20 = [*v2 newQuartzPath:*(*v2 + 504) transform:&v33];
    [v8 setPath:v20];
    CFRelease(v20);
    [v8 setStrokeColor:{objc_msgSend(*(*v2 + 416), "CGColor")}];
    [v8 setFillColor:0];
    [v8 setLineWidth:1.5];
    [v8 setLineJoin:*MEMORY[0x277CDA790]];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __45__BKUICurvesView_loadDataFromXML_name_color___block_invoke_38;
    v29 = &unk_278D09A38;
    v30 = *v2;
    v31 = v8;
    v21 = v8;
    dispatch_async(MEMORY[0x277D85CD0], &v26);
  }

  else
  {
    v22 = *(*v2 + 528);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __45__BKUICurvesView_loadDataFromXML_name_color___block_invoke_cold_2(v2, v22);
    }
  }

  v23 = *(*v2 + 528);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *v2;
    LODWORD(v33.a) = 138412290;
    *(&v33.a + 4) = v24;
    _os_log_impl(&dword_241B0A000, v23, OS_LOG_TYPE_INFO, "BiometricKitUI: dispatch_async exit, self = %@", &v33, 0xCu);
  }

  [*(*v2 + 480) lock];
  *(*v2 + 488) = 1;
  [*(*v2 + 480) signal];
  [*(*v2 + 480) unlock];

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __45__BKUICurvesView_loadDataFromXML_name_color___block_invoke_38(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 addSublayer:*(a1 + 40)];

  objc_storeStrong((*(a1 + 32) + 520), *(a1 + 40));
  v3 = *(a1 + 32);
  [v3 sublayerSize];

  return [v3 setSublayersSize:?];
}

- (void)_addEstimateWatchDog
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_preEstimateLayer];
  [(BKUICurvesView *)self performSelector:sel__resetEstimate_ withObject:v3 afterDelay:2.0];
}

- (void)_removeEstimateWatchDog
{
  v3 = MEMORY[0x277D82BB8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_preEstimateLayer];
  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__resetEstimate_ object:v4];
}

- (CGPath)newQuartzPath:(id)path transform:(CGAffineTransform *)transform
{
  [path CGPath];

  JUMPOUT(0x245CF7F80);
}

- (void)setSublayersSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(self->bkui_curves_view_log, OS_LOG_TYPE_DEBUG))
  {
    [BKUICurvesView setSublayersSize:];
  }

  [(BKUICurvesView *)self _waitForInit];
  if (self->_fingerLayer)
  {
    self->_lastFrameSize.width = width;
    self->_lastFrameSize.height = height;
    [(UIBezierPath *)self->_wholePath bounds];
    v7 = width / v6;
    [(UIBezierPath *)self->_wholePath bounds];
    if (v7 >= height / v8)
    {
      v9 = height / v8;
    }

    else
    {
      v9 = v7;
    }

    bkui_curves_view_log = self->bkui_curves_view_log;
    if (os_log_type_enabled(bkui_curves_view_log, OS_LOG_TYPE_DEFAULT))
    {
      lastRatio = self->_lastRatio;
      LODWORD(buf.a) = 134218240;
      *(&buf.a + 4) = v9;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = lastRatio;
      _os_log_impl(&dword_241B0A000, bkui_curves_view_log, OS_LOG_TYPE_DEFAULT, "setSublayersSize %f (%f)", &buf, 0x16u);
    }

    if (v9 != self->_lastRatio)
    {
      self->_lastRatio = v9;
      memset(&buf, 0, sizeof(buf));
      CGAffineTransformMakeScale(&v27, v9, v9);
      [(UIBezierPath *)self->_wholePath bounds];
      v13 = -v12;
      [(UIBezierPath *)self->_wholePath bounds];
      CGAffineTransformTranslate(&buf, &v27, v13, -v14);
      v15 = [(BKUICurvesView *)self newQuartzPath:self->_wholePath transform:&buf];
      [(CAShapeLayer *)self->_fingerLayer setPath:v15];
      CFRelease(v15);
      layer = [(BKUICurvesView *)self layer];
      sublayers = [layer sublayers];
      v18 = [sublayers count];

      if (v18 >= 2)
      {
        for (i = 1; i != v18; ++i)
        {
          if ([(NSMutableArray *)self->_paths count]> (i - 1))
          {
            layer2 = [(BKUICurvesView *)self layer];
            sublayers2 = [layer2 sublayers];
            v22 = [sublayers2 objectAtIndex:i];

            v23 = [(NSMutableArray *)self->_paths objectAtIndexedSubscript:i - 1];
            v24 = [(BKUICurvesView *)self newQuartzPath:v23 transform:&buf];

            [v22 setPath:v24];
            CFRelease(v24);
          }
        }
      }
    }
  }

  else
  {
    v25 = self->bkui_curves_view_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [BKUICurvesView setSublayersSize:v25];
    }

    [(BKUICurvesView *)self setSublayerSize:width, height];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (CGSize)sublayerSize
{
  width = self->_sublayerSize.width;
  height = self->_sublayerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)estimateProgress:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setProgress:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parser:(uint64_t)a1 didStartElement:(NSObject *)a2 namespaceURI:qualifiedName:attributes:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "BiometricKitUI: Parsing error when processing: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __45__BKUICurvesView_loadDataFromXML_name_color___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__BKUICurvesView_loadDataFromXML_name_color___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "BiometricKitUI: NSXML parser failed or aborted, self = %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setSublayersSize:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end