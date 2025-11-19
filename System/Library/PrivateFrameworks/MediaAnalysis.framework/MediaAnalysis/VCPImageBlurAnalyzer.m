@interface VCPImageBlurAnalyzer
- (VCPImageBlurAnalyzer)initWithFaceResults:(id)a3 sdof:(BOOL)a4 revision:(unint64_t)a5;
- (float)estimateDistance:(id)a3 prevHomography:(id)a4;
- (float)getFaceScoreFromOutput:(id)a3 ratio:(float)a4;
- (id).cxx_construct;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 withPreAnalysisScore:(float)a5 results:(id *)a6 cancel:(id)a7;
- (int)computeCNNFaceSharpness:(__CVBuffer *)a3 result:(float *)a4 cancel:(id)a5;
- (int)computeGyroSharpness:(float *)a3;
- (int)computeLocalSharpness:(__CVBuffer *)a3;
- (int)computeSharpnessScore:(float *)a3 forFacesInImage:(__CVBuffer *)a4;
- (int)prepareFaceBlurModel:(BOOL)a3;
- (int)scaleRegion:(CGRect *)a3 ofImage:(__CVBuffer *)a4 toData:(id)a5 withWidth:(int)a6 andHeight:(int)a7;
- (void)setFaceResults:(id)a3;
- (void)setGyroSharpnessParam:(id)a3 homographyResults:(id)a4 livePhotoStillDisplayTime:(float)a5 imageExposureTime:(float)a6;
- (void)spatialPooling;
@end

@implementation VCPImageBlurAnalyzer

- (VCPImageBlurAnalyzer)initWithFaceResults:(id)a3 sdof:(BOOL)a4 revision:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v20.receiver = self;
  v20.super_class = VCPImageBlurAnalyzer;
  v9 = [(VCPImageBlurAnalyzer *)&v20 init];
  if (!v9)
  {
    goto LABEL_6;
  }

  if (v8)
  {
    v10 = [v8 objectForKey:@"FaceResults"];
    faces = v9->_faces;
    v9->_faces = v10;
  }

  v9->_sdof = v6;
  v9->_contrast = 0.0;
  v9->_useGPU = +[VCPCNNMetalContext supportGPU];
  v12 = [VCPCNNBlurAnalyzer analyzerWithRevision:a5];
  blurAnalyzer = v9->_blurAnalyzer;
  v9->_blurAnalyzer = v12;

  v14 = v9->_blurAnalyzer;
  if (v14)
  {
    [(VCPCNNBlurAnalyzer *)v14 setSdof:v6];
    v9->_livePhotoStillDisplayTime = -1.0;
    v9->_imageExposureTime = -1.0;
    framePTSResults = v9->_framePTSResults;
    v9->_framePTSResults = 0;

    homographyResults = v9->_homographyResults;
    v9->_homographyResults = 0;

    v17 = v9;
  }

  else
  {
LABEL_6:
    v17 = 0;
  }

  v18 = v17;

  return v18;
}

- (void)setGyroSharpnessParam:(id)a3 homographyResults:(id)a4 livePhotoStillDisplayTime:(float)a5 imageExposureTime:(float)a6
{
  v10 = a3;
  v11 = a4;
  self->_livePhotoStillDisplayTime = a5;
  self->_imageExposureTime = a6;
  framePTSResults = self->_framePTSResults;
  self->_framePTSResults = v10;
  v14 = v10;

  homographyResults = self->_homographyResults;
  self->_homographyResults = v11;
}

- (void)setFaceResults:(id)a3
{
  v6 = a3;
  v4 = [v6 count];
  if (v4)
  {
    v4 = v6;
  }

  faces = self->_faces;
  self->_faces = v4;
}

- (float)getFaceScoreFromOutput:(id)a3 ratio:(float)a4
{
  v5 = a3;
  v6 = 0;
  v7 = -1.0;
  v8 = -1;
  while (1)
  {
    v9 = [v5 size];
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 intValue];

    if (v6 >= v11)
    {
      break;
    }

    if (*([v5 data] + 4 * v6) > v7)
    {
      v7 = *([v5 data] + 4 * v6);
      v8 = v6;
    }

    ++v6;
  }

  if (v8)
  {
    v12 = a4 * 0.3;
  }

  else
  {
    v12 = *[v5 data];
  }

  return v12;
}

- (int)computeCNNFaceSharpness:(__CVBuffer *)a3 result:(float *)a4 cancel:(id)a5
{
  v77 = *MEMORY[0x1E69E9840];
  v67 = a5;
  v8 = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  v9 = [v8 resourceURL];

  v52 = v9;
  v54 = [MEMORY[0x1E695DFF8] URLWithString:@"cnn_faceblur.dat" relativeToURL:v9];
  Width = CVPixelBufferGetWidth(a3);
  v51 = a4;
  Height = CVPixelBufferGetHeight(a3);
  faceInput = self->_faceInput;
  self->_faceInput = 0;

  faceModel = self->_faceModel;
  self->_faceModel = 0;

  v72 = 0;
  pixelBuffer = a3;
  unlockFlags = 1;
  if (a3)
  {
    v58 = a3;
    v72 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    v53 = v72;
    if (v72)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.a) = 134218240;
        *(&buf.a + 4) = pixelBuffer;
        WORD2(buf.b) = 1024;
        *(&buf.b + 6) = v72;
        _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &buf, 0x12u);
        v53 = v72;
      }
    }

    else
    {
      v57 = 0;
      v64 = 0;
      v53 = 0;
      v14.i64[0] = Width;
      v14.i64[1] = Height;
      v61 = vcvtq_f64_s64(v14);
      v62 = __PAIR64__(Height, Width);
      v60 = vcvt_f32_s32(__PAIR64__(Height, Width));
      v15 = 0.0;
      v16 = 1;
      v17 = 0.0;
      while (1)
      {
        v55 = v16;
        context = objc_autoreleasePoolPush();
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v18 = self->_faces;
        v19 = [(NSArray *)v18 countByEnumeratingWithState:&v68 objects:v76 count:16];
        if (v19)
        {
          v63 = *v69;
          v59 = v18;
LABEL_8:
          v20 = 0;
          while (1)
          {
            if (*v69 != v63)
            {
              objc_enumerationMutation(v59);
            }

            v21 = *(*(&v68 + 1) + 8 * v20);
            if (v67)
            {
              if (v67[2]())
              {
                break;
              }
            }

            v22 = [v21 objectForKey:{@"attributes", v51}];
            v23 = [v22 objectForKey:@"faceBounds"];
            v78 = NSRectFromString(v23);
            buf.b = 0.0;
            buf.c = 0.0;
            buf.a = 1.0;
            *&buf.d = xmmword_1C9F60600;
            buf.ty = 1.0;
            v79 = CGRectApplyAffineTransform(v78, &buf);
            y = v79.origin.y;
            *&v79.origin.x = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v79.origin, v61)));
            v25 = vand_s8(vmin_s32(*&v79.origin.x, v62), vcgtz_s32(*&v79.origin.x));
            v26 = v79.size.height;
            v27 = vmin_s32(vsub_s32(v62, v25), vmovn_s64(vcvtq_s64_f64(vmulq_f64(v79.size, v61))));
            v28 = v27.i32[0];
            if (v27.i32[0] >= 60)
            {
              v29 = 60;
            }

            else
            {
              v29 = 0;
            }

            if (v27.i32[0] >= 172)
            {
              v30 = 172;
            }

            else
            {
              v30 = v29;
            }

            v65 = v27.i32[1];
            v31 = vcvt_f32_s32(v27);
            v66 = v31.f32[0];
            buf.a = (v25.i32[0] / v60.f32[0]);
            buf.b = (v25.i32[1] / v60.f32[1]);
            *&buf.c = vcvtq_f64_f32(vdiv_f32(v31, v60));
            if (v30 == [VCPImageBlurAnalyzer computeCNNFaceSharpness:result:cancel:]::kNetworkInputRes[v64])
            {
              if (!self->_faceModel)
              {
                v32 = [(VCPImageBlurAnalyzer *)self prepareFaceBlurModel:v57 & 1];
                if (v32)
                {
                  goto LABEL_36;
                }
              }

              v33 = self->_faceInput;
              if (!v33)
              {
                v34 = [(VCPCNNModel *)self->_faceModel getGPUContext];
                v35 = [VCPCNNData cnnDataWithPlane:1 height:v30 width:v30 context:v34];
                v36 = self->_faceInput;
                self->_faceInput = v35;

                v37 = self->_faceInput;
                if (!v37)
                {
                  v32 = -50;
LABEL_36:

                  v48 = 0;
                  v53 = v32;
LABEL_37:
                  v47 = v59;
                  goto LABEL_38;
                }

                v32 = [(VCPCNNData *)v37 allocBuffers:1];
                if (v32)
                {
                  goto LABEL_36;
                }

                v38 = self->_faceModel;
                v39 = [(VCPCNNData *)self->_faceInput size];
                v32 = [(VCPCNNModel *)v38 prepareNetworkFromURL:v54 withInputSize:v39];

                if (v32)
                {
                  goto LABEL_36;
                }

                v33 = self->_faceInput;
              }

              v32 = [(VCPImageBlurAnalyzer *)self scaleRegion:&buf ofImage:v58 toData:v33 withWidth:v30 andHeight:v30];
              if (v32)
              {
                goto LABEL_36;
              }

              v32 = [(VCPCNNModel *)self->_faceModel forward:self->_faceInput];
              if (v32)
              {
                goto LABEL_36;
              }

              v40 = [(VCPCNNModel *)self->_faceModel output];
              v32 = [v40 softmax];

              if (v32)
              {
                goto LABEL_36;
              }

              v41 = [(VCPCNNModel *)self->_faceModel output];
              *&v42 = v30 / v66;
              [(VCPImageBlurAnalyzer *)self getFaceScoreFromOutput:v41 ratio:v42];
              v44 = v43;

              v45 = (v28 * v65);
              v15 = v15 + (v44 * v45);
              v17 = v17 + v45;
            }

            if (v19 == ++v20)
            {
              v18 = v59;
              v19 = [(VCPCNNModel *)v59 countByEnumeratingWithState:&v68 objects:v76 count:16];
              if (v19)
              {
                goto LABEL_8;
              }

              goto LABEL_33;
            }
          }

          v48 = 0;
          v53 = -128;
          goto LABEL_37;
        }

LABEL_33:

        v46 = self->_faceInput;
        self->_faceInput = 0;

        v47 = self->_faceModel;
        self->_faceModel = 0;
        v48 = 1;
LABEL_38:

        objc_autoreleasePoolPop(context);
        if ((v48 & 1) == 0)
        {
          break;
        }

        v16 = 0;
        v57 = 1;
        v64 = 1;
        if ((v55 & 1) == 0)
        {
          v53 = CVPixelBufferLock::Unlock(&v72);
          if (!v53)
          {
            v53 = 0;
            v49 = v15 / v17;
            if (v17 == 0.0)
            {
              v49 = 0.5;
            }

            *v51 = v49;
          }

          break;
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v53 = -50;
    v72 = -50;
  }

  if (pixelBuffer && !v72 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
  }

  return v53;
}

- (int)computeSharpnessScore:(float *)a3 forFacesInImage:(__CVBuffer *)a4
{
  v14 = a3;
  v15 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_faces;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) objectForKey:{@"attributes", v14, v15, v16}];
        v11 = [v10 objectForKey:@"faceBounds"];
        [v5 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = [(VCPBlurAnalyzer *)self computeSharpnessScore:v14 forObjects:v5 inImage:v15];
  return v12;
}

- (void)spatialPooling
{
  v2 = 0;
  v39[2] = *MEMORY[0x1E69E9840];
  v39[0] = 0;
  v39[1] = 0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  do
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1.0;
    v10 = 0.0;
    do
    {
      v11 = *(v39 + v6);
      if ((!v2 || v11 == 1) && self->_sharpnessBlocks[v6] >= v10)
      {
        v8 = v6;
        v10 = self->_sharpnessBlocks[v6];
      }

      if (v11 != 3 && self->_sharpnessBlocks[v6] <= v9)
      {
        v7 = v6;
        v9 = self->_sharpnessBlocks[v6];
      }

      ++v6;
    }

    while (v6 != 16);
    *(v39 + v8) = 2;
    *(v39 + v7) = 3;
    if (v5 < v10)
    {
      v5 = v10;
    }

    v12 = v8 / 4;
    if (v8 / 4 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (v12 >= 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v8 / 4;
    }

    if (v13 - 1 <= v14 + 1)
    {
      v15 = v8 % 4;
      if (v8 % 4 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      v17 = v16 - 1;
      if (v15 >= 2)
      {
        v18 = 2;
      }

      else
      {
        v18 = v15;
      }

      v19 = v13 - 1;
      v20 = v16 - 5;
      v21 = v39 + 4 * v13;
      do
      {
        v22 = v20;
        if (v17 <= v18 + 1)
        {
          do
          {
            v23 = v21[v22];
            if (v23 <= 1)
            {
              LOBYTE(v23) = 1;
            }

            v21[v22] = v23;
            v24 = v22 + 4;
            ++v22;
          }

          while (v24 <= v18);
        }

        v21 += 4;
        v25 = v19++ <= v14;
      }

      while (v25);
    }

    v3 = v3 + v10;
    v4 = v4 + v9;
    ++v2;
  }

  while (v2 != 4);
  if ((v4 * 0.25) < 0.05)
  {
    v26 = v3 * 0.25;
    if (self->_sdof)
    {
      v26 = v5;
    }

    v27 = 0.1;
    if (self->_sdof)
    {
      v27 = 0.2;
    }

    v28 = (v26 - (v4 * 0.25)) + -0.4;
    if (v28 < v27)
    {
      v27 = v28;
    }

    v25 = v28 > 0.0;
    v29 = 0.0;
    if (v25)
    {
      v29 = v27;
    }

    self->_contrast = v29;
  }

  v30 = 0;
  sharpness = self->_sharpness;
  v32 = 0.0;
  do
  {
    if (*(v39 + v30) == 2)
    {
      v33 = 1.0;
    }

    else
    {
      v33 = 0.05;
    }

    sharpness = sharpness + (v33 * self->_sharpnessBlocks[v30]);
    self->_sharpness = sharpness;
    v32 = v32 + v33;
    ++v30;
  }

  while (v30 != 16);
  v34 = sharpness / v32;
  self->_sharpness = v34;
  v35 = v34 + self->_contrast;
  v36 = 1.0;
  if (v35 < 1.0)
  {
    v36 = v35;
  }

  v37 = v36 * 100.0;
  v25 = v35 > 0.0;
  v38 = 0.0;
  if (v25)
  {
    v38 = v37;
  }

  self->_sharpness = roundf(v38) / 100.0;
}

- (int)computeLocalSharpness:(__CVBuffer *)a3
{
  pixelBuffer = a3;
  unlockFlags = 1;
  if (a3)
  {
    v5 = CVPixelBufferLockBaseAddress(a3, 1uLL);
    v16 = v5;
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }
    }

    else
    {
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      v12 = 0;
      *self->_sharpnessBlocks = 0u;
      *&self->_sharpnessBlocks[4] = 0u;
      *&self->_sharpnessBlocks[8] = 0u;
      *&self->_sharpnessBlocks[12] = 0u;
      v13 = (Width / 4);
      v14 = (Height / 4);
      do
      {
        [(VCPBlurAnalyzer *)self computeRegionSharpness:&BaseAddressOfPlane[BytesPerRowOfPlane * ((v12 >> 2) * v14) + ((v12 & 3) * v13)] width:v13 height:v14 stride:BytesPerRowOfPlane];
        self->_sharpnessBlocks[v12++] = v15;
      }

      while (v12 != 16);
      v6 = CVPixelBufferLock::Unlock(&v16);
      if (pixelBuffer && !v16 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  return v6;
}

- (int)prepareFaceBlurModel:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (!self->_useGPU)
  {
    return -50;
  }

  v5 = [[VCPCNNModel alloc] initWithParameters:1 useGPU:self->_useGPU];
  faceModel = self->_faceModel;
  self->_faceModel = v5;

  if (!self->_faceModel)
  {
    return -108;
  }

  v7 = [VCPCNNConvBlock convBlockWithFilterSize:5 filterNum:20 chunk:1 reLU:1 padding:0];
  v8 = [(VCPCNNModel *)self->_faceModel add:v7];
  if (!v8)
  {
    v9 = [VCPCNNPoolingBlock poolingBlockWithPoolX:2 poolY:2 chunk:1];
    v8 = [(VCPCNNModel *)self->_faceModel add:v9];
    if (!v8)
    {
      v10 = [VCPCNNConvBlock convBlockWithFilterSize:5 filterNum:32 chunk:1 reLU:1 padding:0];
      v8 = [(VCPCNNModel *)self->_faceModel add:v10];
      if (!v8)
      {
        v18 = [VCPCNNPoolingBlock poolingBlockWithPoolX:v3 poolY:v3 chunk:1];
        v8 = [(VCPCNNModel *)self->_faceModel add:v18];
        if (!v8)
        {
          v11 = [VCPCNNConvBlock convBlockWithFilterSize:5 filterNum:64 chunk:1 reLU:1 padding:0];
          v8 = [(VCPCNNModel *)self->_faceModel add:v11];
          if (!v8)
          {
            v12 = [VCPCNNPoolingBlock poolingBlockWithPoolX:v3 poolY:v3 chunk:1];
            v8 = [(VCPCNNModel *)self->_faceModel add:v12];
            if (!v8)
            {
              if (self->_useGPU || (v13 = [[VCPCNNFlattenBlock alloc] initWithParameters:1], v8 = [(VCPCNNModel *)self->_faceModel add:v13], v13, !v8))
              {
                v14 = v11;
                v15 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:256 NeuronType:1];
                v8 = [(VCPCNNModel *)self->_faceModel add:v15];
                if (!v8)
                {
                  v16 = [VCPCNNFullConnectionBlock fcBlockWithNumNeurons:26 NeuronType:0];
                  v8 = [(VCPCNNModel *)self->_faceModel add:v16];
                }

                v11 = v14;
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

- (int)scaleRegion:(CGRect *)a3 ofImage:(__CVBuffer *)a4 toData:(id)a5 withWidth:(int)a6 andHeight:(int)a7
{
  v7 = *&a7;
  v8 = *&a6;
  v12 = a5;
  pixelBuffer = 0;
  v13 = MEMORY[0x1E695F058];
  if (a3)
  {
    v13 = a3;
  }

  v14 = Scaler::ScaleCropped(&self->_scaler, *v13, a4, &pixelBuffer, v8, v7, 875704438);
  if (!v14)
  {
    v25 = pixelBuffer;
    unlockFlags = 1;
    if (pixelBuffer)
    {
      v14 = CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      v24 = v14;
      if (v14)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
        }
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
        Width = CVPixelBufferGetWidth(pixelBuffer);
        Height = CVPixelBufferGetHeight(pixelBuffer);
        v20 = [v12 data];
        if (Height >= 1)
        {
          for (i = 0; i != Height; ++i)
          {
            if (Width >= 1)
            {
              v23 = 0;
              do
              {
                LOBYTE(v21) = BaseAddressOfPlane[v23];
                v21 = LODWORD(v21) / 255.0;
                *(v20 + 4 * v23++) = v21;
              }

              while ((Width & 0x7FFFFFFF) != v23);
            }

            BaseAddressOfPlane += BytesPerRowOfPlane;
            v20 += 4 * Width;
          }
        }

        v14 = CVPixelBufferLock::Unlock(&v24);
        if (v25 && !v24 && CVPixelBufferUnlockBaseAddress(v25, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }

      v14 = -50;
    }
  }

  CF<__CVBuffer *>::~CF(&pixelBuffer);

  return v14;
}

- (int)computeGyroSharpness:(float *)a3
{
  memset(&v42, 0, sizeof(v42));
  v5 = [(NSArray *)self->_framePTSResults objectAtIndexedSubscript:0];
  CMTimeMakeFromDictionary(&v42, v5);

  v6 = -1;
  if ([(NSArray *)self->_framePTSResults count]>= 2)
  {
    v7 = 1;
    v8 = 10000.0;
    do
    {
      memset(&v41, 0, sizeof(v41));
      v9 = [(NSArray *)self->_framePTSResults objectAtIndexedSubscript:v7];
      CMTimeMakeFromDictionary(&v41, v9);

      lhs = v41;
      rhs = v42;
      CMTimeSubtract(&time, &lhs, &rhs);
      v10 = CMTimeGetSeconds(&time) - self->_livePhotoStillDisplayTime;
      v11 = fabsf(v10);
      if (v8 > v11)
      {
        v8 = v11;
        v6 = v7;
      }

      ++v7;
    }

    while (v7 < [(NSArray *)self->_framePTSResults count]);
  }

  v12 = [(NSArray *)self->_framePTSResults objectAtIndexedSubscript:v6];
  CMTimeMakeFromDictionary(&time, v12);
  lhs = time;
  rhs = v42;
  CMTimeSubtract(&v41, &lhs, &rhs);
  Seconds = CMTimeGetSeconds(&v41);

  imageExposureTime = self->_imageExposureTime;
  v15 = [(NSArray *)self->_framePTSResults objectAtIndexedSubscript:1];
  CMTimeMakeFromDictionary(&time, v15);
  lhs = time;
  rhs = v42;
  CMTimeSubtract(&v41, &lhs, &rhs);
  v16 = Seconds;
  v17 = imageExposureTime / CMTimeGetSeconds(&v41);

  v18 = v17;
  if (v6 >= 2)
  {
    v19 = [(NSArray *)self->_framePTSResults objectAtIndexedSubscript:v6 - 1];
    CMTimeMakeFromDictionary(&time, v19);
    lhs = time;
    rhs = v42;
    CMTimeSubtract(&v41, &lhs, &rhs);
    v20 = CMTimeGetSeconds(&v41);

    v18 = self->_imageExposureTime / (v16 - v20);
  }

  if (v6 + 1 < [(NSArray *)self->_framePTSResults count])
  {
    v21 = [(NSArray *)self->_framePTSResults objectAtIndexedSubscript:v6 + 1];
    CMTimeMakeFromDictionary(&time, v21);
    lhs = time;
    rhs = v42;
    CMTimeSubtract(&v41, &lhs, &rhs);
    v22 = CMTimeGetSeconds(&v41);

    v17 = self->_imageExposureTime / (v22 - v16);
  }

  v38 = v6 + 1;
  v23 = [(NSArray *)self->_homographyResults objectAtIndexedSubscript:v6, a3];
  v24 = [v23 objectForKeyedSubscript:@"attributes"];
  v39 = [v24 objectForKeyedSubscript:@"MetaHomographyResults"];

  v25 = [(NSArray *)self->_homographyResults objectAtIndexedSubscript:v6 - 1];
  v26 = [v25 objectForKeyedSubscript:@"attributes"];
  v27 = [v26 objectForKeyedSubscript:@"MetaHomographyResults"];

  if ((v16 - self->_livePhotoStillDisplayTime) > (self->_imageExposureTime * 0.5) || v38 == [(NSArray *)self->_framePTSResults count])
  {
    [(VCPImageBlurAnalyzer *)self estimateDistance:v39 prevHomography:v27];
    v29 = v18 * v28;
  }

  else
  {
    v30 = [(NSArray *)self->_homographyResults objectAtIndexedSubscript:v38];
    v31 = [v30 objectForKeyedSubscript:@"attributes"];
    v32 = [v31 objectForKeyedSubscript:@"MetaHomographyResults"];

    [(VCPImageBlurAnalyzer *)self estimateDistance:v39 prevHomography:v27];
    v34 = v33;
    [(VCPImageBlurAnalyzer *)self estimateDistance:v32 prevHomography:v39];
    v29 = ((v17 * v35) + (v18 * v34)) * 0.5;
  }

  *v37 = v29;

  return 0;
}

- (float)estimateDistance:(id)a3 prevHomography:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  for (i = 0; i != 9; ++i)
  {
    v8 = [v5 objectAtIndexedSubscript:i];
    [v8 floatValue];
    __B[i] = v9;

    v10 = [v6 objectAtIndexedSubscript:i];
    [v10 floatValue];
    v13[i] = v11;
  }

  vcp_matrix_invert(__B);
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 withPreAnalysisScore:(float)a5 results:(id *)a6 cancel:(id)a7
{
  v34[1] = *MEMORY[0x1E69E9840];
  v11 = a7;
  v12 = [MEMORY[0x1E695DF90] dictionary];
  p_sharpness = &self->_sharpness;
  self->_sharpness = 0.0;
  self->_textureScore = 1.0;
  v14 = objc_autoreleasePoolPush();
  if (self->_sdof)
  {
    v16 = [(VCPImageBlurAnalyzer *)self computeLocalSharpness:a3];
    if (v16)
    {
      goto LABEL_14;
    }

    [(VCPImageBlurAnalyzer *)self spatialPooling];
  }

  if (a5 == -1.0)
  {
    *&v15 = self->_contrast;
    v16 = [(VCPCNNBlurAnalyzer *)self->_blurAnalyzer computeCNNBasedSharpness:a3 sharpnessScore:&self->_sharpness textureScore:&self->_textureScore contrast:v11 cancel:v15];
    if (v16)
    {
      goto LABEL_14;
    }

    a5 = *p_sharpness;
  }

  else
  {
    *p_sharpness = a5;
  }

  *&v15 = a5;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  [v12 setObject:v17 forKey:@"sharpness"];

  faces = self->_faces;
  if (faces && [(NSArray *)faces count])
  {
    v29 = 0;
    if (self->_useGPU)
    {
      v19 = [(VCPImageBlurAnalyzer *)self computeCNNFaceSharpness:a3 result:&v29 cancel:v11];
    }

    else
    {
      v19 = [(VCPImageBlurAnalyzer *)self computeSharpnessScore:&v29 forFacesInImage:a3];
    }

    v16 = v19;
    if (v19)
    {
      goto LABEL_14;
    }

    LODWORD(v20) = v29;
    v22 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
    [v12 setObject:v22 forKey:@"sharpnessFaces"];
  }

  framePTSResults = self->_framePTSResults;
  if (framePTSResults)
  {
    if ([(NSArray *)framePTSResults count])
    {
      homographyResults = self->_homographyResults;
      if (homographyResults)
      {
        v25 = [(NSArray *)homographyResults count];
        if (v25 == [(NSArray *)self->_framePTSResults count]&& self->_livePhotoStillDisplayTime != -1.0 && self->_imageExposureTime != -1.0)
        {
          v29 = 0;
          v16 = [(VCPImageBlurAnalyzer *)self computeGyroSharpness:&v29];
          if (v16)
          {
LABEL_14:
            v21 = 0;
            goto LABEL_24;
          }
        }
      }
    }
  }

  v16 = 0;
  v21 = 1;
LABEL_24:
  objc_autoreleasePoolPop(v14);
  if (v21)
  {
    v33 = @"BlurResults";
    v30 = @"attributes";
    v31 = v12;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v32 = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v34[0] = v27;
    *a6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];

    v16 = 0;
  }

  return v16;
}

- (id).cxx_construct
{
  *(self + 22) = 0;
  *(self + 46) = 0;
  return self;
}

@end