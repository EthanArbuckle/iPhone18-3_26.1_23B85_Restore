@interface VCPEdgeDetector
- (VCPEdgeDetector)initWithImage:(float *)image edgeMap:(float *)map width:(unint64_t)width height:(unint64_t)height widthExtension:(int)extension heightExtension:(int)heightExtension;
- (int)detectWithSigma:(float)sigma lowThreshold:(float)threshold highThreshold:(float)highThreshold;
- (int)gradientEstimation:(float *)estimation width:(unint64_t)width height:(unint64_t)height gradient:(DSPSplitComplex)gradient gradientMag:(float *)mag;
- (int)noiseReduction:(float *)reduction sigma:(float)sigma imageFiltered:(float *)filtered;
- (void)dealloc;
@end

@implementation VCPEdgeDetector

- (VCPEdgeDetector)initWithImage:(float *)image edgeMap:(float *)map width:(unint64_t)width height:(unint64_t)height widthExtension:(int)extension heightExtension:(int)heightExtension
{
  v29.receiver = self;
  v29.super_class = VCPEdgeDetector;
  v14 = [(VCPEdgeDetector *)&v29 init];
  v15 = v14;
  v16 = 0;
  if (image && v14)
  {
    v14->_image = image;
    v14->_edgeMap = map;
    v14->_width = width;
    v14->_height = height;
    v14->_widthExt = extension;
    v14->_heightExt = heightExtension;
    v17 = width + 2 * extension;
    v18 = height + 2 * heightExtension;
    v14->_widthPadded = v17;
    v14->_heightPadded = v18;
    if ((height * width) >> 62)
    {
      v19 = -1;
    }

    else
    {
      v19 = 4 * height * width;
    }

    v20 = MEMORY[0x1E69E5398];
    v15->_nonMaxSuppressed = operator new[](v19, MEMORY[0x1E69E5398]);
    if ((v18 * v17) >> 62)
    {
      v21 = -1;
    }

    else
    {
      v21 = 4 * v18 * v17;
    }

    v22 = operator new[](v21, v20);
    v15->_imageFiltered = v22;
    v23 = operator new[](v21, v20);
    v15->_gradient.realp = v23;
    v24 = operator new[](v21, v20);
    v15->_gradient.imagp = v24;
    v15->_gradientX = v23;
    v15->_gradientY = v24;
    v15->_gradientMag = v22;
    if (v24)
    {
      v25 = v23 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25 || v22 == 0)
    {
      v27 = 0;
    }

    else
    {
      v27 = v15;
    }

    v16 = v27;
  }

  return v16;
}

- (void)dealloc
{
  imageFiltered = self->_imageFiltered;
  if (imageFiltered)
  {
    MEMORY[0x1CCA95C10](imageFiltered, 0x1000C8052888210);
  }

  nonMaxSuppressed = self->_nonMaxSuppressed;
  if (nonMaxSuppressed)
  {
    MEMORY[0x1CCA95C10](nonMaxSuppressed, 0x1000C8052888210);
  }

  realp = self->_gradient.realp;
  if (realp)
  {
    MEMORY[0x1CCA95C10](realp, 0x1000C8052888210);
  }

  imagp = self->_gradient.imagp;
  if (imagp)
  {
    MEMORY[0x1CCA95C10](imagp, 0x1000C8052888210);
  }

  v7.receiver = self;
  v7.super_class = VCPEdgeDetector;
  [(VCPEdgeDetector *)&v7 dealloc];
}

- (int)detectWithSigma:(float)sigma lowThreshold:(float)threshold highThreshold:(float)highThreshold
{
  v74 = *MEMORY[0x1E69E9840];
  widthPadded = self->_widthPadded;
  result = [(VCPEdgeDetector *)self noiseReduction:self->_image sigma:self->_imageFiltered imageFiltered:?];
  if (!result)
  {
    result = [(VCPEdgeDetector *)self gradientEstimation:self->_imageFiltered width:self->_widthPadded height:self->_heightPadded gradient:self->_gradient.realp gradientMag:self->_gradient.imagp, self->_gradientMag];
    if (!result)
    {
      highThresholdCopy = highThreshold;
      heightExt = self->_heightExt;
      heightPadded = self->_heightPadded;
      v60 = self->_widthPadded;
      v11 = heightPadded - heightExt;
      if (heightPadded - heightExt > heightExt)
      {
        v12 = 0;
        widthExt = self->_widthExt;
        v14 = v60 - widthExt;
        v15 = 4 * widthPadded;
        v16 = 4 * (widthExt + widthPadded * heightExt);
        v17 = 4 * widthPadded + v16;
        v18 = 4 * widthPadded * (heightExt - 1) + 4 * widthExt + 4;
        v61 = v60 - 2 * widthExt;
        v63 = widthExt;
        v64 = heightPadded - heightExt;
        v62 = 4 * widthPadded;
        do
        {
          if (v14 > widthExt)
          {
            v69 = heightExt;
            v19 = 0;
            gradientMag = self->_gradientMag;
            v66 = v17;
            v67 = v16;
            v21 = gradientMag + v17;
            v22 = &self->_nonMaxSuppressed[v12];
            v23 = self->_gradientX + v16;
            v24 = self->_gradientY + v16;
            v25 = gradientMag + v16;
            v65 = v18;
            v26 = gradientMag + v18;
            v68 = v61 + v12;
            do
            {
              v27 = *&v25[v19];
              v28 = *&v26[v19 - 4];
              v29 = *&v26[v19];
              v30 = *&v26[v19 - 8];
              v31 = *&v21[v19];
              v32 = *&v21[v19 + 4];
              v33 = atan2f(*&v24[v19], *&v23[v19]) + 3.14159265;
              v34 = fmodf(v33, 3.1416) / 3.14159265 * 8.0;
              v35 = v34 > 1.0 && v34 <= 7.0;
              if (v35 || (v27 > *&v25[v19 - 4] ? (v36 = v27 <= *&v25[v19 + 4]) : (v36 = 1), v36))
              {
                v37 = v34 <= 1.0 || v34 > 3.0;
                v38 = v37 || v27 <= v29;
                if (v38 || v27 <= v32)
                {
                  v40 = v34 <= 3.0 || v34 > 5.0;
                  v41 = v40 || v27 <= v28;
                  if (v41 || v27 <= v31)
                  {
                    v43 = v27 <= v30 || v34 <= 5.0;
                    v44 = !v43;
                    if (!v44 || v34 > 7.0 || v27 <= v32)
                    {
                      v27 = 0.0;
                    }
                  }
                }
              }

              v22[v19 / 4] = v27;
              ++widthExt;
              v19 += 4;
            }

            while (v14 > widthExt);
            heightExt = v69;
            widthExt = v63;
            v11 = v64;
            v12 = v68;
            v15 = v62;
            v17 = v66;
            v16 = v67;
            v18 = v65;
          }

          ++heightExt;
          v17 += v15;
          v16 += v15;
          v18 += v15;
        }

        while (v11 > heightExt);
      }

      v46 = self->_gradientMag;
      edgeMap = self->_edgeMap;
      bzero(v46, 4 * heightPadded * v60);
      bzero(edgeMap, 4 * self->_widthPadded * self->_heightPadded);
      height = self->_height;
      if (height)
      {
        v48 = 0;
        width = self->_width;
        v50 = width;
        do
        {
          if (v50)
          {
            v51 = 0;
            do
            {
              v52 = v51 + v50 * v48;
              if (self->_nonMaxSuppressed[v52] >= highThresholdCopy && edgeMap[v52] == 0.0)
              {
                edgeMap[v52] = 1.0;
                *v46 = v52;
                v53 = 1;
                do
                {
                  v54 = 0;
                  v55 = v46[--v53];
                  v56 = self->_width;
                  v70[0] = v55 - v56;
                  v70[1] = v56 + v55;
                  v71 = vadd_s32(vdup_n_s32(v55), 0xFFFFFFFF00000001);
                  v72 = vadd_s32(vdup_n_s32(v55 - v56), 0xFFFFFFFF00000001);
                  v73 = vadd_s32(vdup_n_s32(v56 + v55), 0xFFFFFFFF00000001);
                  do
                  {
                    v57 = v70[v54];
                    if ([(VCPEdgeDetector *)self isInImage:v57 width:LODWORD(self->_width) height:LODWORD(self->_height)]&& self->_nonMaxSuppressed[v57] >= threshold && edgeMap[v57] == 0.0)
                    {
                      edgeMap[v57] = 1.0;
                      v46[v53++] = v57;
                    }

                    ++v54;
                  }

                  while (v54 != 8);
                }

                while (v53 > 0);
                width = self->_width;
              }

              ++v51;
              v50 = width;
            }

            while (width > v51);
            height = self->_height;
            v50 = width;
          }

          ++v48;
        }

        while (height > v48);
      }

      return 0;
    }
  }

  return result;
}

- (int)noiseReduction:(float *)reduction sigma:(float)sigma imageFiltered:(float *)filtered
{
  v26 = *MEMORY[0x1E69E9840];
  *v5.i32 = (sigma + sigma) * sigma;
  v9 = sigma * 2.5066;
  v10 = vdup_lane_s32(v5, 0);
  v11 = -2;
  v12 = __F;
  v20 = vdupq_n_s64(5uLL);
  do
  {
    v13 = 0;
    v14 = vdup_n_s32(v11 * v11);
    do
    {
      v15 = vorrq_s8(vdupq_n_s64(v13), xmmword_1C9F609E0);
      v23 = vmovn_s64(vcgtq_u64(v20, v15)).u8[0];
      v24 = v15;
      v16 = vadd_s32(vdup_n_s32(v13), -2);
      v17 = vdiv_f32(vcvt_f32_s32(vneg_s32(vmla_s32(v14, v16, v16))), v10);
      v21 = v17.f32[0];
      v22 = expf(v17.f32[1]);
      v18 = expf(v21);
      if (v23)
      {
        v12[v13] = v18 / v9;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), v24)).i32[1])
      {
        v12[v13 + 1] = v22 / v9;
      }

      v13 += 2;
    }

    while (v13 != 6);
    ++v11;
    v12 += 5;
  }

  while (v11 != 3);
  vDSP_f5x5(reduction, self->_heightPadded, self->_widthPadded, __F, filtered);
  return 0;
}

- (int)gradientEstimation:(float *)estimation width:(unint64_t)width height:(unint64_t)height gradient:(DSPSplitComplex)gradient gradientMag:(float *)mag
{
  imagp = gradient.imagp;
  gradientCopy = gradient;
  vDSP_f3x3(estimation, height, width, [VCPEdgeDetector gradientEstimation:width:height:gradient:gradientMag:]::kSobel, gradient.realp);
  vDSP_f3x3(estimation, height, width, &[VCPEdgeDetector gradientEstimation:width:height:gradient:gradientMag:]::kSobel[9], imagp);
  if (mag)
  {
    vDSP_zvmags(&gradientCopy, 1, mag, 1, height * width);
  }

  return 0;
}

@end