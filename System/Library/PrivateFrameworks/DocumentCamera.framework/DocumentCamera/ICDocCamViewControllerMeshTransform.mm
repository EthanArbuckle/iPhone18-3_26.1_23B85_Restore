@interface ICDocCamViewControllerMeshTransform
- (CGRect)frameForImageInImageViewFrame:(CGRect)a3;
- (CGRect)imageViewFrame;
- (CGRect)previewViewFrame;
- (CGSize)imageSize;
- (ICDocCamViewControllerMeshTransform)initWithImage:(id)a3 backgroundImage:(id)a4 imageViewFrame:(CGRect)a5 view:(id)a6 imageQuad:(id)a7 previewView:(id)a8 previewBounds:(CGRect)a9 scrimView:(id)a10;
- (id)imageMeshTransformWithImageQuad:(id)a3 imageViewFrame:(CGRect)a4 previewBounds:(CGRect)a5 finalTransform:(BOOL)a6;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)hide;
- (void)startWithCompletionBlock:(id)a3;
@end

@implementation ICDocCamViewControllerMeshTransform

- (ICDocCamViewControllerMeshTransform)initWithImage:(id)a3 backgroundImage:(id)a4 imageViewFrame:(CGRect)a5 view:(id)a6 imageQuad:(id)a7 previewView:(id)a8 previewBounds:(CGRect)a9 scrimView:(id)a10
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v17 = a5.size.height;
  v18 = a5.size.width;
  v19 = a5.origin.y;
  v20 = a5.origin.x;
  v22 = a3;
  v23 = a6;
  v24 = a7;
  v25 = a10;
  v44.receiver = self;
  v44.super_class = ICDocCamViewControllerMeshTransform;
  v26 = [(ICDocCamViewControllerMeshTransform *)&v44 init];
  v27 = v26;
  if (v26)
  {
    [(ICDocCamViewControllerMeshTransform *)v26 setImageViewFrame:v20, v19, v18, v17];
    [(ICDocCamViewControllerMeshTransform *)v27 setImageQuad:v24];
    [(ICDocCamViewControllerMeshTransform *)v27 setPreviewViewFrame:x, y, width, height];
    v28 = objc_alloc(MEMORY[0x277D755E8]);
    [v23 bounds];
    v29 = [v28 initWithFrame:?];
    [(ICDocCamViewControllerMeshTransform *)v27 setAnimationImageView:v29];

    v30 = [(ICDocCamViewControllerMeshTransform *)v27 animationImageView];
    [v30 setContentMode:0];

    v31 = [(ICDocCamViewControllerMeshTransform *)v27 animationImageView];
    v32 = [v31 layer];
    LODWORD(v33) = 1.0;
    [v32 setOpacity:v33];

    v34 = [(ICDocCamViewControllerMeshTransform *)v27 animationImageView];
    [v34 setImage:v22];

    v35 = [(ICDocCamViewControllerMeshTransform *)v27 animationImageView];
    [v35 setHidden:0];

    [(ICDocCamViewControllerMeshTransform *)v27 setScrimView:v25];
    v36 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v37 = [(ICDocCamViewControllerMeshTransform *)v27 scrimView];
    [v37 setBackgroundColor:v36];

    v38 = [(ICDocCamViewControllerMeshTransform *)v27 scrimView];
    v39 = [v38 layer];
    [v39 setOpacity:0.0];

    v40 = [(ICDocCamViewControllerMeshTransform *)v27 scrimView];
    [v40 setHidden:0];

    v41 = [(ICDocCamViewControllerMeshTransform *)v27 animationImageView];
    v42 = [(ICDocCamViewControllerMeshTransform *)v27 scrimView];
    [v23 insertSubview:v41 aboveSubview:v42];
  }

  return v27;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = [(ICDocCamViewControllerMeshTransform *)self scrimView:a3];
  v6 = [v5 layer];
  [v6 removeAllAnimations];

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
  v14 = [(ICDocCamViewControllerMeshTransform *)self scrimView];
  v15 = [v14 layer];
  [v15 addAnimation:v20 forKey:@"three"];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v16 = [(ICDocCamViewControllerMeshTransform *)self scrimView];
  v17 = [v16 layer];
  [v17 setOpacity:0.0];

  [MEMORY[0x277CD9FF0] commit];
  v18 = [(ICDocCamViewControllerMeshTransform *)self imageMeshAnimationCompletionBlock];

  if (v18)
  {
    v19 = [(ICDocCamViewControllerMeshTransform *)self imageMeshAnimationCompletionBlock];
    v19[2]();

    [(ICDocCamViewControllerMeshTransform *)self setImageMeshAnimationCompletionBlock:0];
  }
}

- (void)hide
{
  v3 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  [v3 removeFromSuperview];

  v4 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  [v4 setHidden:1];

  v5 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  [v5 setImage:0];

  [(ICDocCamViewControllerMeshTransform *)self setAnimationImageView:0];
}

- (CGRect)frameForImageInImageViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = MEMORY[0x277D755B8];
  v8 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  v9 = [v8 image];
  [v9 size];
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

- (void)startWithCompletionBlock:(id)a3
{
  v35[2] = *MEMORY[0x277D85DE8];
  [(ICDocCamViewControllerMeshTransform *)self setImageMeshAnimationCompletionBlock:a3];
  v4 = [MEMORY[0x277CD9E00] animation];
  [v4 setDelegate:self];
  [v4 setDuration:0.8];
  [v4 setAnimations:MEMORY[0x277CBEBF8]];
  v5 = *MEMORY[0x277CDA230];
  [v4 setFillMode:*MEMORY[0x277CDA230]];
  v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"meshTransform"];
  [(ICDocCamViewControllerMeshTransform *)self previewViewFrame];
  v7 = [(ICDocCamViewControllerMeshTransform *)self imageQuad];
  [(ICDocCamViewControllerMeshTransform *)self imageViewFrame];
  v8 = [ICDocCamViewControllerMeshTransform imageMeshTransformWithImageQuad:"imageMeshTransformWithImageQuad:imageViewFrame:previewBounds:finalTransform:" imageViewFrame:v7 previewBounds:0 finalTransform:?];
  [v6 setFromValue:v8];

  [(ICDocCamViewControllerMeshTransform *)self imageViewFrame];
  v9 = [ICDocCamViewControllerMeshTransform imageMeshTransformWithImageQuad:"imageMeshTransformWithImageQuad:imageViewFrame:previewBounds:finalTransform:" imageViewFrame:v7 previewBounds:1 finalTransform:?];
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
  [v4 setAnimations:v16];

  v17 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  v18 = [v17 layer];
  [v18 addAnimation:v4 forKey:@"one"];

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
  v27 = [(ICDocCamViewControllerMeshTransform *)self scrimView];
  v28 = [v27 layer];
  [v28 addAnimation:v19 forKey:@"two"];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v29 = [v6 toValue];
  v30 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
  v31 = [v30 layer];
  [v31 setMeshTransform:v29];

  [MEMORY[0x277CD9FF0] commit];
  v32 = [(ICDocCamViewControllerMeshTransform *)self scrimView];
  v33 = [v32 layer];
  LODWORD(v34) = 1045220557;
  [v33 setOpacity:v34];
}

- (id)imageMeshTransformWithImageQuad:(id)a3 imageViewFrame:(CGRect)a4 previewBounds:(CGRect)a5 finalTransform:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4.size.height;
  v12 = a4.size.width;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  v101 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = [MEMORY[0x277CD9F18] meshTransform];
  if (v6)
  {
    [(ICDocCamViewControllerMeshTransform *)self frameForImageInImageViewFrame:v14, v13, v12, v11];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v79 = v24;
    v26 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
    [v26 bounds];
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
    [v17 addVertex:&v94];
    __asm { FMOV            V0.2D, #1.0 }

    v94 = _Q0;
    v95 = v86;
    v96 = v40;
    v97 = 0.0;
    [v17 addVertex:&v94];
    v94 = xmmword_2492F7880;
    v95 = v86;
    v96 = v84;
    v97 = 0.0;
    [v17 addVertex:&v94];
    v94 = 0uLL;
    v95 = v88;
    v96 = v84;
    v97 = 0.0;
    v46 = &v94;
  }

  else
  {
    [v16 bottomLeft];
    v85 = v48;
    v87 = v47;
    [v16 bottomRight];
    v80 = v50;
    v82 = v49;
    [v16 topRight];
    v89 = x;
    v52 = v51;
    rect = width;
    v54 = v53;
    [v16 topLeft];
    v55 = height;
    v57 = v56;
    v58 = y;
    v60 = v59;
    v61 = [(ICDocCamViewControllerMeshTransform *)self animationImageView];
    [v61 bounds];
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
    [v17 addVertex:&v90];
    __asm { FMOV            V0.2D, #1.0 }

    v90 = _Q0;
    v91 = v71;
    v92 = v74;
    v93 = 0;
    [v17 addVertex:&v90];
    v90 = xmmword_2492F7880;
    v91 = v72;
    v92 = v75;
    v93 = 0;
    [v17 addVertex:&v90];
    v90 = 0uLL;
    v91 = v73;
    v92 = v76;
    v93 = 0;
    v46 = &v90;
  }

  [v17 addVertex:v46];
  v95 = 0.0;
  v96 = 0.0;
  v94 = xmmword_2492F7890;
  [v17 addFace:&v94];
  [v17 setSubdivisionSteps:0];

  return v17;
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