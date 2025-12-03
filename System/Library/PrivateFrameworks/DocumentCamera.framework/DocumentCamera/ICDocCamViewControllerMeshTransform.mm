@interface ICDocCamViewControllerMeshTransform
- (CGRect)frameForImageInImageViewFrame:(CGRect)frame;
- (CGRect)imageViewFrame;
- (CGRect)previewViewFrame;
- (CGSize)imageSize;
- (ICDocCamViewControllerMeshTransform)initWithImage:(id)image backgroundImage:(id)backgroundImage imageViewFrame:(CGRect)frame view:(id)view imageQuad:(id)quad previewView:(id)previewView previewBounds:(CGRect)bounds scrimView:(id)self0;
- (id)imageMeshTransformWithImageQuad:(id)quad imageViewFrame:(CGRect)frame previewBounds:(CGRect)bounds finalTransform:(BOOL)transform;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)hide;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation ICDocCamViewControllerMeshTransform

- (ICDocCamViewControllerMeshTransform)initWithImage:(id)image backgroundImage:(id)backgroundImage imageViewFrame:(CGRect)frame view:(id)view imageQuad:(id)quad previewView:(id)previewView previewBounds:(CGRect)bounds scrimView:(id)self0
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v17 = frame.size.height;
  v18 = frame.size.width;
  v19 = frame.origin.y;
  v20 = frame.origin.x;
  imageCopy = image;
  viewCopy = view;
  quadCopy = quad;
  scrimViewCopy = scrimView;
  v44.receiver = self;
  v44.super_class = ICDocCamViewControllerMeshTransform;
  v26 = [(ICDocCamViewControllerMeshTransform *)&v44 init];
  v27 = v26;
  if (v26)
  {
    [(ICDocCamViewControllerMeshTransform *)v26 setImageViewFrame:v20, v19, v18, v17];
    [(ICDocCamViewControllerMeshTransform *)v27 setImageQuad:quadCopy];
    [(ICDocCamViewControllerMeshTransform *)v27 setPreviewViewFrame:x, y, width, height];
    v28 = objc_alloc(MEMORY[0x277D755E8]);
    [viewCopy bounds];
    v29 = [v28 initWithFrame:?];
    [(ICDocCamViewControllerMeshTransform *)v27 setAnimationImageView:v29];

    animationImageView = [(ICDocCamViewControllerMeshTransform *)v27 animationImageView];
    [animationImageView setContentMode:0];

    animationImageView2 = [(ICDocCamViewControllerMeshTransform *)v27 animationImageView];
    layer = [animationImageView2 layer];
    LODWORD(v33) = 1.0;
    [layer setOpacity:v33];

    animationImageView3 = [(ICDocCamViewControllerMeshTransform *)v27 animationImageView];
    [animationImageView3 setImage:imageCopy];

    animationImageView4 = [(ICDocCamViewControllerMeshTransform *)v27 animationImageView];
    [animationImageView4 setHidden:0];

    [(ICDocCamViewControllerMeshTransform *)v27 setScrimView:scrimViewCopy];
    v36 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    scrimView = [(ICDocCamViewControllerMeshTransform *)v27 scrimView];
    [scrimView setBackgroundColor:v36];

    scrimView2 = [(ICDocCamViewControllerMeshTransform *)v27 scrimView];
    layer2 = [scrimView2 layer];
    [layer2 setOpacity:0.0];

    scrimView3 = [(ICDocCamViewControllerMeshTransform *)v27 scrimView];
    [scrimView3 setHidden:0];

    animationImageView5 = [(ICDocCamViewControllerMeshTransform *)v27 animationImageView];
    scrimView4 = [(ICDocCamViewControllerMeshTransform *)v27 scrimView];
    [viewCopy insertSubview:animationImageView5 aboveSubview:scrimView4];
  }

  return v27;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [(ICDocCamViewControllerMeshTransform *)self scrimView:stop];
  layer = [v5 layer];
  [layer removeAllAnimations];

  v20 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v20 setDuration:0.32];
  LODWORD(v7) = 1051361018;
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 1045220557;
  v10 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v7 :0.0 :v9 :v8];
  [v20 setTimingFunction:v10];

  LODWORD(v11) = 1045220557;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v20 setFromValue:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [v20 setToValue:v13];

  [v20 setFillMode:*MEMORY[0x277CDA230]];
  [v20 setRemovedOnCompletion:0];
  scrimView = [(ICDocCamViewControllerMeshTransform *)self scrimView];
  layer2 = [scrimView layer];
  [layer2 addAnimation:v20 forKey:@"three"];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  scrimView2 = [(ICDocCamViewControllerMeshTransform *)self scrimView];
  layer3 = [scrimView2 layer];
  [layer3 setOpacity:0.0];

  [MEMORY[0x277CD9FF0] commit];
  imageMeshAnimationCompletionBlock = [(ICDocCamViewControllerMeshTransform *)self imageMeshAnimationCompletionBlock];

  if (imageMeshAnimationCompletionBlock)
  {
    imageMeshAnimationCompletionBlock2 = [(ICDocCamViewControllerMeshTransform *)self imageMeshAnimationCompletionBlock];
    imageMeshAnimationCompletionBlock2[2]();

    [(ICDocCamViewControllerMeshTransform *)self setImageMeshAnimationCompletionBlock:0];
  }
}

- (void)hide
{
  animationImageView = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  [animationImageView removeFromSuperview];

  animationImageView2 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  [animationImageView2 setHidden:1];

  animationImageView3 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  [animationImageView3 setImage:0];

  [(ICDocCamViewControllerMeshTransform *)self setAnimationImageView:0];
}

- (CGRect)frameForImageInImageViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = MEMORY[0x277D755B8];
  animationImageView = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  image = [animationImageView image];
  [image size];
  [v7 dc_aspectFitImageFrameForViewWithFrame:x imageSize:{y, width, height, v10, v11}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)startWithCompletionBlock:(id)block
{
  v35[2] = *MEMORY[0x277D85DE8];
  [(ICDocCamViewControllerMeshTransform *)self setImageMeshAnimationCompletionBlock:block];
  animation = [MEMORY[0x277CD9E00] animation];
  [animation setDelegate:self];
  [animation setDuration:0.8];
  [animation setAnimations:MEMORY[0x277CBEBF8]];
  v5 = *MEMORY[0x277CDA230];
  [animation setFillMode:*MEMORY[0x277CDA230]];
  v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"meshTransform"];
  [(ICDocCamViewControllerMeshTransform *)self previewViewFrame];
  imageQuad = [(ICDocCamViewControllerMeshTransform *)self imageQuad];
  [(ICDocCamViewControllerMeshTransform *)self imageViewFrame];
  v8 = [ICDocCamViewControllerMeshTransform imageMeshTransformWithImageQuad:"imageMeshTransformWithImageQuad:imageViewFrame:previewBounds:finalTransform:" imageViewFrame:imageQuad previewBounds:0 finalTransform:?];
  [v6 setFromValue:v8];

  [(ICDocCamViewControllerMeshTransform *)self imageViewFrame];
  v9 = [ICDocCamViewControllerMeshTransform imageMeshTransformWithImageQuad:"imageMeshTransformWithImageQuad:imageViewFrame:previewBounds:finalTransform:" imageViewFrame:imageQuad previewBounds:1 finalTransform:?];
  [v6 setToValue:v9];

  [v6 setDuration:0.45];
  [v6 setFillMode:v5];
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1051361018;
  LODWORD(v12) = 1045220557;
  v13 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v11 :0.0 :v12 :v10];
  [v6 setTimingFunction:v13];

  v14 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v14 setFillMode:v5];
  [v14 setKeyTimes:&unk_285C6D618];
  [v14 setValues:&unk_285C6D630];
  [v14 setDuration:0.55];
  v15 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v14 setTimingFunction:v15];

  v35[0] = v6;
  v35[1] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  [animation setAnimations:v16];

  animationImageView = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  layer = [animationImageView layer];
  [layer addAnimation:animation forKey:@"one"];

  v19 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v19 setDuration:0.32];
  LODWORD(v20) = 1.0;
  LODWORD(v21) = 1051361018;
  LODWORD(v22) = 1045220557;
  v23 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v21 :0.0 :v22 :v20];
  [v19 setTimingFunction:v23];

  v24 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [v19 setFromValue:v24];

  LODWORD(v25) = 1045220557;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  [v19 setToValue:v26];

  [v19 setFillMode:v5];
  [v19 setRemovedOnCompletion:0];
  scrimView = [(ICDocCamViewControllerMeshTransform *)self scrimView];
  layer2 = [scrimView layer];
  [layer2 addAnimation:v19 forKey:@"two"];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  toValue = [v6 toValue];
  animationImageView2 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  layer3 = [animationImageView2 layer];
  [layer3 setMeshTransform:toValue];

  [MEMORY[0x277CD9FF0] commit];
  scrimView2 = [(ICDocCamViewControllerMeshTransform *)self scrimView];
  layer4 = [scrimView2 layer];
  LODWORD(v34) = 1045220557;
  [layer4 setOpacity:v34];
}

- (id)imageMeshTransformWithImageQuad:(id)quad imageViewFrame:(CGRect)frame previewBounds:(CGRect)bounds finalTransform:(BOOL)transform
{
  transformCopy = transform;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v11 = frame.size.height;
  v12 = frame.size.width;
  v13 = frame.origin.y;
  v14 = frame.origin.x;
  v101 = *MEMORY[0x277D85DE8];
  quadCopy = quad;
  meshTransform = [MEMORY[0x277CD9F18] meshTransform];
  if (transformCopy)
  {
    [(ICDocCamViewControllerMeshTransform *)self frameForImageInImageViewFrame:v14, v13, v12, v11];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v79 = v24;
    animationImageView = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
    [animationImageView bounds];
    v28 = v27;
    v30 = v29;
    v81 = v29;
    v32 = v31;
    v34 = v33;

    v103.origin.x = v19;
    v103.origin.y = v21;
    v103.size.width = v23;
    v103.size.height = v25;
    MinX = CGRectGetMinX(v103);
    v104.origin.x = v28;
    v104.origin.y = v30;
    v104.size.width = v32;
    v104.size.height = v34;
    v88 = MinX / CGRectGetWidth(v104);
    v105.origin.x = v19;
    v105.origin.y = v21;
    v105.size.width = v23;
    v105.size.height = v79;
    MaxX = CGRectGetMaxX(v105);
    v106.origin.x = v28;
    v106.origin.y = v81;
    v106.size.width = v32;
    v106.size.height = v34;
    v86 = MaxX / CGRectGetWidth(v106);
    v107.origin.x = v19;
    v37 = v19;
    v107.origin.y = v21;
    v107.size.width = v23;
    v107.size.height = v79;
    MinY = CGRectGetMinY(v107);
    v108.origin.x = v28;
    v108.origin.y = v81;
    v108.size.width = v32;
    v108.size.height = v34;
    v84 = MinY / CGRectGetHeight(v108);
    v109.origin.x = v37;
    v109.origin.y = v21;
    v109.size.width = v23;
    v109.size.height = v79;
    MaxY = CGRectGetMaxY(v109);
    v110.origin.x = v28;
    v110.origin.y = v81;
    v110.size.width = v32;
    v110.size.height = v34;
    v94 = xmmword_2492F7870;
    v40 = MaxY / CGRectGetHeight(v110);
    v95 = v88;
    v96 = v40;
    v97 = 0.0;
    [meshTransform addVertex:&v94];
    __asm { FMOV            V0.2D, #1.0 }

    v94 = _Q0;
    v95 = v86;
    v96 = v40;
    v97 = 0.0;
    [meshTransform addVertex:&v94];
    v94 = xmmword_2492F7880;
    v95 = v86;
    v96 = v84;
    v97 = 0.0;
    [meshTransform addVertex:&v94];
    v94 = 0uLL;
    v95 = v88;
    v96 = v84;
    v97 = 0.0;
    v46 = &v94;
  }

  else
  {
    [quadCopy bottomLeft];
    v85 = v48;
    v87 = v47;
    [quadCopy bottomRight];
    v80 = v50;
    v82 = v49;
    [quadCopy topRight];
    v89 = x;
    v52 = v51;
    rect = width;
    v54 = v53;
    [quadCopy topLeft];
    v55 = height;
    v57 = v56;
    v58 = y;
    v60 = v59;
    animationImageView2 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
    [animationImageView2 bounds];
    v63 = v62;
    v65 = v64;

    v66 = 0;
    *&v94 = v87;
    *(&v94 + 1) = v85;
    v95 = v82;
    v96 = v80;
    v97 = v52;
    v98 = v54;
    v99 = v57;
    v100 = v60;
    v67.f64[0] = rect / v63;
    v67.f64[1] = v55 / v65;
    v68.f64[0] = v89 / v63;
    v68.f64[1] = v58 / v65;
    do
    {
      v69 = (&v94 + v66);
      v70 = vaddq_f64(v68, vmulq_f64(v67, *(&v94 + v66 + 16)));
      *v69 = vaddq_f64(v68, vmulq_f64(v67, *(&v94 + v66)));
      v69[1] = v70;
      v66 += 32;
    }

    while (v66 != 64);
    v71 = v95;
    v72 = v97;
    v73 = v99;
    v74 = 1.0 - v96;
    v75 = 1.0 - v98;
    v76 = 1.0 - v100;
    v90 = xmmword_2492F7870;
    v91 = *&v94;
    v92 = 1.0 - *(&v94 + 1);
    v93 = 0;
    [meshTransform addVertex:&v90];
    __asm { FMOV            V0.2D, #1.0 }

    v90 = _Q0;
    v91 = v71;
    v92 = v74;
    v93 = 0;
    [meshTransform addVertex:&v90];
    v90 = xmmword_2492F7880;
    v91 = v72;
    v92 = v75;
    v93 = 0;
    [meshTransform addVertex:&v90];
    v90 = 0uLL;
    v91 = v73;
    v92 = v76;
    v93 = 0;
    v46 = &v90;
  }

  [meshTransform addVertex:v46];
  v95 = 0.0;
  v96 = 0.0;
  v94 = xmmword_2492F7890;
  [meshTransform addFace:&v94];
  [meshTransform setSubdivisionSteps:0];

  return meshTransform;
}

- (CGRect)imageViewFrame
{
  x = self->_imageViewFrame.origin.x;
  y = self->_imageViewFrame.origin.y;
  width = self->_imageViewFrame.size.width;
  height = self->_imageViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)previewViewFrame
{
  x = self->_previewViewFrame.origin.x;
  y = self->_previewViewFrame.origin.y;
  width = self->_previewViewFrame.size.width;
  height = self->_previewViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end