@interface BKUIPearlCrossHairsRenderingView
- (BKUIPearlCrossHairsRenderingView)initWithFrame:(CGRect)frame device:(id)device;
- (BOOL)grayscale;
- (void)drawRect:(CGRect)rect;
- (void)setAxis:(BOOL)axis animated:;
- (void)setSampleCount:(unint64_t)count;
- (void)setState:(unint64_t)state;
@end

@implementation BKUIPearlCrossHairsRenderingView

- (BKUIPearlCrossHairsRenderingView)initWithFrame:(CGRect)frame device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v109 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v90.receiver = self;
  v90.super_class = BKUIPearlCrossHairsRenderingView;
  height = [(MTKView *)&v90 initWithFrame:deviceCopy device:x, y, width, height];
  if (height)
  {
    v11 = dispatch_semaphore_create(3);
    inFlightSemaphore = height->_inFlightSemaphore;
    height->_inFlightSemaphore = v11;

    height->_time = CACurrentMediaTime();
    newCommandQueue = [deviceCopy newCommandQueue];
    commandQueue = height->_commandQueue;
    height->_commandQueue = newCommandQueue;

    [(MTLCommandQueue *)height->_commandQueue setLabel:@"Crosshairs Command Queue"];
    v108 = 0;
    v107 = 0;
    v15 = objc_alloc(MEMORY[0x277CF1C80]);
    __asm { FMOV            V0.4S, #1.0 }

    v101 = _Q0;
    v21 = *&_Q0;
    v87 = _Q0;
    v102 = 0uLL;
    LODWORD(_Q0) = 2.5;
    LODWORD(v22) = 1126247083;
    v23 = [v15 initWithStrokeWeight:&v101 radius:*&_Q0 scale:v22 rotation:v21 translation:0.0];
    v24 = objc_alloc(MEMORY[0x277CF1C80]);
    v101 = v87;
    v102 = 0uLL;
    LODWORD(v25) = 1112014848;
    LODWORD(v26) = 4.0;
    v27 = [v24 initWithStrokeWeight:&v101 radius:v26 scale:v25 rotation:? translation:?];
    v28 = [objc_alloc(MEMORY[0x277CF1C68]) initWithDefaultPath:v23];
    [(BKUIPearlCrossHairsRenderingView *)height setCrosshairsPathCollection:v28];

    crosshairsPathCollection = [(BKUIPearlCrossHairsRenderingView *)height crosshairsPathCollection];
    v84 = v27;
    [crosshairsPathCollection setPath:v27 forKey:@"small"];

    height->_pathBlendDest = 0.0;
    height->_pathBlend = 0.0;
    v30 = objc_alloc_init(BKUIPearlCrossHairsManager);
    [(BKUIPearlCrossHairsRenderingView *)height setCrosshairsInstanceManager:v30];

    crosshairsPathCollection2 = [(BKUIPearlCrossHairsRenderingView *)height crosshairsPathCollection];
    defaultPath = [crosshairsPathCollection2 defaultPath];
    [defaultPath clearInstances];

    crosshairsPathCollection3 = [(BKUIPearlCrossHairsRenderingView *)height crosshairsPathCollection];
    defaultPath2 = [crosshairsPathCollection3 defaultPath];
    crosshairsInstanceManager = [(BKUIPearlCrossHairsRenderingView *)height crosshairsInstanceManager];
    instanceData = [crosshairsInstanceManager instanceData];
    crosshairsInstanceManager2 = [(BKUIPearlCrossHairsRenderingView *)height crosshairsInstanceManager];
    springInstances = [crosshairsInstanceManager2 springInstances];
    [defaultPath2 appendInstances:instanceData count:{objc_msgSend(springInstances, "count")}];

    v39 = objc_alloc(MEMORY[0x277CF1C78]);
    crosshairsPathCollection4 = [(BKUIPearlCrossHairsRenderingView *)height crosshairsPathCollection];
    __asm { FMOV            V9.2S, #1.0 }

    v42 = [v39 initWithCollection:crosshairsPathCollection4 device:deviceCopy viewRatio:_D9];
    [(BKUIPearlCrossHairsRenderingView *)height setCrosshairsData:v42];

    v101 = 0u;
    v102 = 0u;
    v103 = xmmword_241B72CF0;
    v104 = xmmword_241B72CF0;
    v105 = xmmword_241B72D00;
    v106 = xmmword_241B72D00;
    memset(v100, 0, 32);
    v100[2] = xmmword_241B72D10;
    v100[3] = xmmword_241B72D10;
    v100[4] = xmmword_241B72D20;
    v100[5] = xmmword_241B72D20;
    memset(v99, 0, 32);
    v99[2] = xmmword_241B72D20;
    v99[3] = xmmword_241B72D20;
    v99[4] = xmmword_241B72D30;
    v99[5] = xmmword_241B72D30;
    memset(v98, 0, 32);
    v98[2] = xmmword_241B72D20;
    v98[3] = xmmword_241B72D20;
    v98[4] = xmmword_241B72D40;
    v98[5] = xmmword_241B72D40;
    v97[0] = xmmword_241B72830;
    v97[1] = xmmword_241B72830;
    v97[2] = xmmword_241B72830;
    v97[3] = xmmword_241B72830;
    v97[4] = xmmword_241B72830;
    v97[5] = xmmword_241B72830;
    v96[0] = xmmword_241B72D50;
    v96[1] = xmmword_241B72D50;
    v96[2] = xmmword_241B72D50;
    v96[3] = xmmword_241B72D50;
    v96[4] = xmmword_241B72D50;
    v96[5] = xmmword_241B72D50;
    v43 = objc_alloc(MEMORY[0x277CF1C70]);
    v92 = v87;
    v93 = 0uLL;
    LODWORD(v44) = 4.0;
    v45 = [v43 initWithPoints:&v101 colors:v97 count:6 strokeWeight:0 pattern:&v92 rotation:v44 scale:? translation:?];
    v46 = objc_alloc(MEMORY[0x277CF1C70]);
    v92 = v87;
    LODWORD(v93) = 0;
    *(&v93 + 4) = v107;
    HIDWORD(v93) = v108;
    LODWORD(v47) = 4.0;
    v48 = [v46 initWithPoints:v100 colors:v96 count:6 strokeWeight:0 pattern:&v92 rotation:v47 scale:? translation:?];
    v49 = objc_alloc(MEMORY[0x277CF1C70]);
    v92 = v87;
    LODWORD(v93) = 0;
    *(&v93 + 4) = v107;
    HIDWORD(v93) = v108;
    LODWORD(v50) = 4.0;
    v51 = [v49 initWithPoints:v99 colors:v96 count:6 strokeWeight:0 pattern:&v92 rotation:v50 scale:? translation:?];
    v52 = objc_alloc(MEMORY[0x277CF1C70]);
    v92 = v87;
    LODWORD(v93) = 0;
    *(&v93 + 4) = v107;
    HIDWORD(v93) = v108;
    LODWORD(v53) = 4.0;
    v54 = [v52 initWithPoints:v98 colors:v96 count:6 strokeWeight:0 pattern:&v92 rotation:v53 scale:? translation:?];
    v55 = [objc_alloc(MEMORY[0x277CF1C68]) initWithDefaultPath:v54];
    [(BKUIPearlCrossHairsRenderingView *)height setCheckMarkPathCollection:v55];

    checkMarkPathCollection = [(BKUIPearlCrossHairsRenderingView *)height checkMarkPathCollection];
    [checkMarkPathCollection setPath:v51 forKey:@"half1"];

    checkMarkPathCollection2 = [(BKUIPearlCrossHairsRenderingView *)height checkMarkPathCollection];
    [checkMarkPathCollection2 setPath:v48 forKey:@"half0"];

    checkMarkPathCollection3 = [(BKUIPearlCrossHairsRenderingView *)height checkMarkPathCollection];
    [checkMarkPathCollection3 setPath:v45 forKey:@"none"];

    v59 = objc_alloc(MEMORY[0x277CF1C78]);
    checkMarkPathCollection4 = [(BKUIPearlCrossHairsRenderingView *)height checkMarkPathCollection];
    v61 = [v59 initWithCollection:checkMarkPathCollection4 device:deviceCopy viewRatio:_D9];
    [(BKUIPearlCrossHairsRenderingView *)height setCheckMarkData:v61];

    v62 = objc_alloc(MEMORY[0x277CBEB18]);
    checkMarkData = [(BKUIPearlCrossHairsRenderingView *)height checkMarkData];
    crosshairsData = [(BKUIPearlCrossHairsRenderingView *)height crosshairsData];
    v65 = [v62 initWithObjects:{checkMarkData, crosshairsData, 0}];

    v66 = [objc_alloc(MEMORY[0x277CF1C88]) initWithMTKView:height dataCollection:v65];
    [(BKUIPearlCrossHairsRenderingView *)height setRenderer:v66];

    matrix_ortho();
    v85 = v68;
    v88 = v67;
    v80 = v70;
    v82 = v69;
    LODWORD(v79) = 0;
    matrix_look_at();
    v71 = 0;
    v91[0] = v72;
    v91[1] = v73;
    v91[2] = v74;
    v91[3] = v75;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    do
    {
      *(&v92 + v71 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, COERCE_FLOAT(v91[v71])), v85, *&v91[v71], 1), v82, v91[v71], 2), v80, v91[v71], 3);
      ++v71;
    }

    while (v71 != 4);
    v86 = *&v94;
    v89 = *&v95;
    v81 = *&v92;
    v83 = *&v93;
    renderer = [(BKUIPearlCrossHairsRenderingView *)height renderer];
    [renderer setProjectionMatrix:{v81, v83, v86, v89}];
  }

  v77 = *MEMORY[0x277D85DE8];
  return height;
}

- (BOOL)grayscale
{
  crosshairsInstanceManager = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  grayscale = [crosshairsInstanceManager grayscale];

  return grayscale;
}

- (void)setSampleCount:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = BKUIPearlCrossHairsRenderingView;
  [(MTKView *)&v5 setSampleCount:count];
  renderer = [(BKUIPearlCrossHairsRenderingView *)self renderer];
  [renderer createPipelineStates];
}

- (void)setAxis:(BOOL)axis animated:
{
  axisCopy = axis;
  *self->_axis = v3;
  crosshairsInstanceManager = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  v7 = *self->_axis;
  v8 = crosshairsInstanceManager;
  if (axisCopy)
  {
    [crosshairsInstanceManager setTarget:*&v7];
  }

  else
  {
    [crosshairsInstanceManager setValue:*&v7];
  }
}

- (void)setState:(unint64_t)state
{
  if (!state)
  {
    v5 = 0.0;
    goto LABEL_5;
  }

  if (state == 1)
  {
    v5 = 1.0;
LABEL_5:
    crosshairsInstanceManager = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
    [crosshairsInstanceManager setSpringsStates:state];

    self->_pathBlendDest = v5;
  }

  self->_state = state;
}

- (void)drawRect:(CGRect)rect
{
  v51.receiver = self;
  v51.super_class = BKUIPearlCrossHairsRenderingView;
  [(BKUIPearlCrossHairsRenderingView *)&v51 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  inFlightSemaphore = self->_inFlightSemaphore;
  v5 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(inFlightSemaphore, v5))
  {
    return;
  }

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"Crosshairs Command Buffer"];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy_;
  v49[4] = __Block_byref_object_dispose_;
  v50 = self->_inFlightSemaphore;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __45__BKUIPearlCrossHairsRenderingView_drawRect___block_invoke;
  v48[3] = &unk_278D0A3D8;
  v48[4] = v49;
  v47 = commandBuffer;
  [commandBuffer addCompletedHandler:v48];
  pathBlend = self->_pathBlend;
  pathBlendDest = self->_pathBlendDest;
  v9 = pathBlend + (pathBlendDest - pathBlend) * (6.0 / [(MTKView *)self preferredFramesPerSecond]);
  self->_pathBlend = v9;
  crosshairsInstanceManager = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  [crosshairsInstanceManager setTarget:*self->_axis];

  crosshairsInstanceManager2 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  [crosshairsInstanceManager2 update:CACurrentMediaTime() - self->_time];

  self->_time = CACurrentMediaTime();
  crosshairsData = [(BKUIPearlCrossHairsRenderingView *)self crosshairsData];
  crosshairsInstanceManager3 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  instanceData = [crosshairsInstanceManager3 instanceData];
  crosshairsInstanceManager4 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  springInstances = [crosshairsInstanceManager4 springInstances];
  [crosshairsData updateInstanceBufferWithData:instanceData count:{objc_msgSend(springInstances, "count")}];

  crosshairsData2 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsData];
  crosshairsPathCollection = [(BKUIPearlCrossHairsRenderingView *)self crosshairsPathCollection];
  crosshairsPathCollection2 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsPathCollection];
  defaultPath = [crosshairsPathCollection2 defaultPath];
  crosshairsPathCollection3 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsPathCollection];
  paths = [crosshairsPathCollection3 paths];
  v22 = [paths objectForKeyedSubscript:@"small"];
  *&v23 = self->_pathBlend;
  v24 = [crosshairsPathCollection blendPath:defaultPath withPath:v22 byAmount:v23];
  crosshairsPathCollection4 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsPathCollection];
  defaultPath2 = [crosshairsPathCollection4 defaultPath];
  [crosshairsData2 updateControlPointBufferWithData:v24 count:{objc_msgSend(defaultPath2, "controlPointsCount")}];

  v27 = self->_pathBlend * self->_pathBlend;
  if (v27 >= 0.3)
  {
    if (v27 >= 0.35)
    {
      checkMarkPathCollection = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
      checkMarkPathCollection2 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
      paths2 = [checkMarkPathCollection2 paths];
      v31 = [paths2 objectForKeyedSubscript:@"half1"];
      checkMarkPathCollection3 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
      defaultPath3 = [checkMarkPathCollection3 defaultPath];
      *&v37 = fminf(fmaxf((v27 + -0.35) / 0.65, 0.0), 1.0);
      [checkMarkPathCollection blendPath:v31 withPath:defaultPath3 byAmount:v37];
      goto LABEL_8;
    }

    checkMarkPathCollection = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    checkMarkPathCollection2 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    paths2 = [checkMarkPathCollection2 paths];
    v31 = [paths2 objectForKeyedSubscript:@"half0"];
    checkMarkPathCollection3 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    defaultPath3 = [checkMarkPathCollection3 paths];
    v34 = [defaultPath3 objectForKeyedSubscript:@"half1"];
    *&v36 = fminf(fmaxf((v27 + -0.3) / 0.05, 0.0), 1.0);
    [checkMarkPathCollection blendPath:v31 withPath:v34 byAmount:v36];
  }

  else
  {
    checkMarkPathCollection = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    checkMarkPathCollection2 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    paths2 = [checkMarkPathCollection2 paths];
    v31 = [paths2 objectForKeyedSubscript:@"none"];
    checkMarkPathCollection3 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    defaultPath3 = [checkMarkPathCollection3 paths];
    v34 = [defaultPath3 objectForKeyedSubscript:@"half0"];
    *&v35 = fminf(fmaxf(v27 / 0.3, 0.0), 1.0);
    [checkMarkPathCollection blendPath:v31 withPath:v34 byAmount:v35];
  }

LABEL_8:
  checkMarkData = [(BKUIPearlCrossHairsRenderingView *)self checkMarkData];
  checkMarkPathCollection4 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
  controlPointState = [checkMarkPathCollection4 controlPointState];
  checkMarkPathCollection5 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
  defaultPath4 = [checkMarkPathCollection5 defaultPath];
  [checkMarkData updateControlPointBufferWithData:controlPointState count:{objc_msgSend(defaultPath4, "controlPointsCount")}];

  currentRenderPassDescriptor = [(MTKView *)self currentRenderPassDescriptor];
  if (currentRenderPassDescriptor)
  {
    renderer = [(BKUIPearlCrossHairsRenderingView *)self renderer];
    [renderer renderWithCommandBuffer:v47];

    currentDrawable = [(MTKView *)self currentDrawable];
    [v47 presentDrawable:currentDrawable];
  }

  [v47 commit];

  _Block_object_dispose(v49, 8);
}

@end