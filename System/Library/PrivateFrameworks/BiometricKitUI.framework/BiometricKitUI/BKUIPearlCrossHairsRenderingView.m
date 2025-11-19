@interface BKUIPearlCrossHairsRenderingView
- (BKUIPearlCrossHairsRenderingView)initWithFrame:(CGRect)a3 device:(id)a4;
- (BOOL)grayscale;
- (void)drawRect:(CGRect)a3;
- (void)setAxis:(BOOL)a3 animated:;
- (void)setSampleCount:(unint64_t)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation BKUIPearlCrossHairsRenderingView

- (BKUIPearlCrossHairsRenderingView)initWithFrame:(CGRect)a3 device:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v109 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v90.receiver = self;
  v90.super_class = BKUIPearlCrossHairsRenderingView;
  v10 = [(MTKView *)&v90 initWithFrame:v9 device:x, y, width, height];
  if (v10)
  {
    v11 = dispatch_semaphore_create(3);
    inFlightSemaphore = v10->_inFlightSemaphore;
    v10->_inFlightSemaphore = v11;

    v10->_time = CACurrentMediaTime();
    v13 = [v9 newCommandQueue];
    commandQueue = v10->_commandQueue;
    v10->_commandQueue = v13;

    [(MTLCommandQueue *)v10->_commandQueue setLabel:@"Crosshairs Command Queue"];
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
    [(BKUIPearlCrossHairsRenderingView *)v10 setCrosshairsPathCollection:v28];

    v29 = [(BKUIPearlCrossHairsRenderingView *)v10 crosshairsPathCollection];
    v84 = v27;
    [v29 setPath:v27 forKey:@"small"];

    v10->_pathBlendDest = 0.0;
    v10->_pathBlend = 0.0;
    v30 = objc_alloc_init(BKUIPearlCrossHairsManager);
    [(BKUIPearlCrossHairsRenderingView *)v10 setCrosshairsInstanceManager:v30];

    v31 = [(BKUIPearlCrossHairsRenderingView *)v10 crosshairsPathCollection];
    v32 = [v31 defaultPath];
    [v32 clearInstances];

    v33 = [(BKUIPearlCrossHairsRenderingView *)v10 crosshairsPathCollection];
    v34 = [v33 defaultPath];
    v35 = [(BKUIPearlCrossHairsRenderingView *)v10 crosshairsInstanceManager];
    v36 = [v35 instanceData];
    v37 = [(BKUIPearlCrossHairsRenderingView *)v10 crosshairsInstanceManager];
    v38 = [v37 springInstances];
    [v34 appendInstances:v36 count:{objc_msgSend(v38, "count")}];

    v39 = objc_alloc(MEMORY[0x277CF1C78]);
    v40 = [(BKUIPearlCrossHairsRenderingView *)v10 crosshairsPathCollection];
    __asm { FMOV            V9.2S, #1.0 }

    v42 = [v39 initWithCollection:v40 device:v9 viewRatio:_D9];
    [(BKUIPearlCrossHairsRenderingView *)v10 setCrosshairsData:v42];

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
    [(BKUIPearlCrossHairsRenderingView *)v10 setCheckMarkPathCollection:v55];

    v56 = [(BKUIPearlCrossHairsRenderingView *)v10 checkMarkPathCollection];
    [v56 setPath:v51 forKey:@"half1"];

    v57 = [(BKUIPearlCrossHairsRenderingView *)v10 checkMarkPathCollection];
    [v57 setPath:v48 forKey:@"half0"];

    v58 = [(BKUIPearlCrossHairsRenderingView *)v10 checkMarkPathCollection];
    [v58 setPath:v45 forKey:@"none"];

    v59 = objc_alloc(MEMORY[0x277CF1C78]);
    v60 = [(BKUIPearlCrossHairsRenderingView *)v10 checkMarkPathCollection];
    v61 = [v59 initWithCollection:v60 device:v9 viewRatio:_D9];
    [(BKUIPearlCrossHairsRenderingView *)v10 setCheckMarkData:v61];

    v62 = objc_alloc(MEMORY[0x277CBEB18]);
    v63 = [(BKUIPearlCrossHairsRenderingView *)v10 checkMarkData];
    v64 = [(BKUIPearlCrossHairsRenderingView *)v10 crosshairsData];
    v65 = [v62 initWithObjects:{v63, v64, 0}];

    v66 = [objc_alloc(MEMORY[0x277CF1C88]) initWithMTKView:v10 dataCollection:v65];
    [(BKUIPearlCrossHairsRenderingView *)v10 setRenderer:v66];

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
    v76 = [(BKUIPearlCrossHairsRenderingView *)v10 renderer];
    [v76 setProjectionMatrix:{v81, v83, v86, v89}];
  }

  v77 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)grayscale
{
  v2 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  v3 = [v2 grayscale];

  return v3;
}

- (void)setSampleCount:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BKUIPearlCrossHairsRenderingView;
  [(MTKView *)&v5 setSampleCount:a3];
  v4 = [(BKUIPearlCrossHairsRenderingView *)self renderer];
  [v4 createPipelineStates];
}

- (void)setAxis:(BOOL)a3 animated:
{
  v4 = a3;
  *self->_axis = v3;
  v6 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  v7 = *self->_axis;
  v8 = v6;
  if (v4)
  {
    [v6 setTarget:*&v7];
  }

  else
  {
    [v6 setValue:*&v7];
  }
}

- (void)setState:(unint64_t)a3
{
  if (!a3)
  {
    v5 = 0.0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v5 = 1.0;
LABEL_5:
    v6 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
    [v6 setSpringsStates:a3];

    self->_pathBlendDest = v5;
  }

  self->_state = a3;
}

- (void)drawRect:(CGRect)a3
{
  v51.receiver = self;
  v51.super_class = BKUIPearlCrossHairsRenderingView;
  [(BKUIPearlCrossHairsRenderingView *)&v51 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  inFlightSemaphore = self->_inFlightSemaphore;
  v5 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(inFlightSemaphore, v5))
  {
    return;
  }

  v6 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v6 setLabel:@"Crosshairs Command Buffer"];
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
  v47 = v6;
  [v6 addCompletedHandler:v48];
  pathBlend = self->_pathBlend;
  pathBlendDest = self->_pathBlendDest;
  v9 = pathBlend + (pathBlendDest - pathBlend) * (6.0 / [(MTKView *)self preferredFramesPerSecond]);
  self->_pathBlend = v9;
  v10 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  [v10 setTarget:*self->_axis];

  v11 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  [v11 update:CACurrentMediaTime() - self->_time];

  self->_time = CACurrentMediaTime();
  v12 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsData];
  v13 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  v14 = [v13 instanceData];
  v15 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsInstanceManager];
  v16 = [v15 springInstances];
  [v12 updateInstanceBufferWithData:v14 count:{objc_msgSend(v16, "count")}];

  v46 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsData];
  v17 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsPathCollection];
  v18 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsPathCollection];
  v19 = [v18 defaultPath];
  v20 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsPathCollection];
  v21 = [v20 paths];
  v22 = [v21 objectForKeyedSubscript:@"small"];
  *&v23 = self->_pathBlend;
  v24 = [v17 blendPath:v19 withPath:v22 byAmount:v23];
  v25 = [(BKUIPearlCrossHairsRenderingView *)self crosshairsPathCollection];
  v26 = [v25 defaultPath];
  [v46 updateControlPointBufferWithData:v24 count:{objc_msgSend(v26, "controlPointsCount")}];

  v27 = self->_pathBlend * self->_pathBlend;
  if (v27 >= 0.3)
  {
    if (v27 >= 0.35)
    {
      v28 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
      v29 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
      v30 = [v29 paths];
      v31 = [v30 objectForKeyedSubscript:@"half1"];
      v32 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
      v33 = [v32 defaultPath];
      *&v37 = fminf(fmaxf((v27 + -0.35) / 0.65, 0.0), 1.0);
      [v28 blendPath:v31 withPath:v33 byAmount:v37];
      goto LABEL_8;
    }

    v28 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    v29 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    v30 = [v29 paths];
    v31 = [v30 objectForKeyedSubscript:@"half0"];
    v32 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    v33 = [v32 paths];
    v34 = [v33 objectForKeyedSubscript:@"half1"];
    *&v36 = fminf(fmaxf((v27 + -0.3) / 0.05, 0.0), 1.0);
    [v28 blendPath:v31 withPath:v34 byAmount:v36];
  }

  else
  {
    v28 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    v29 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    v30 = [v29 paths];
    v31 = [v30 objectForKeyedSubscript:@"none"];
    v32 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
    v33 = [v32 paths];
    v34 = [v33 objectForKeyedSubscript:@"half0"];
    *&v35 = fminf(fmaxf(v27 / 0.3, 0.0), 1.0);
    [v28 blendPath:v31 withPath:v34 byAmount:v35];
  }

LABEL_8:
  v38 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkData];
  v39 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
  v40 = [v39 controlPointState];
  v41 = [(BKUIPearlCrossHairsRenderingView *)self checkMarkPathCollection];
  v42 = [v41 defaultPath];
  [v38 updateControlPointBufferWithData:v40 count:{objc_msgSend(v42, "controlPointsCount")}];

  v43 = [(MTKView *)self currentRenderPassDescriptor];
  if (v43)
  {
    v44 = [(BKUIPearlCrossHairsRenderingView *)self renderer];
    [v44 renderWithCommandBuffer:v47];

    v45 = [(MTKView *)self currentDrawable];
    [v47 presentDrawable:v45];
  }

  [v47 commit];

  _Block_object_dispose(v49, 8);
}

@end