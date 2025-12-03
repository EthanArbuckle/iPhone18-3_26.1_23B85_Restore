@interface VCPVanishingPointDetector
- (BOOL)isVerticalOrHorizontal:(int)horizontal;
- (VCPVanishingPointDetector)initWithImage:(__CVBuffer *)image;
- (id).cxx_construct;
- (int)calculateConfidence:(id)confidence lineDistance:(float)distance vaninshingPoint:(CGPoint)point vanishingPointConfidence:(float *)pointConfidence;
- (int)calculateOrientationResponses;
- (int)detect:(CGPoint *)detect withConfidence:(float *)confidence dominantLine:(id *)line;
- (int)generateLineWeightMap:(id)map weightMap:(float *)weightMap;
- (int)generateOrientationMap;
- (int)prepareImage:(__CVBuffer *)image;
- (int)searchVanishingPointandDominantLine:(float *)line lineGroup:(id)group vanishingPoint:(CGPoint *)point vanishingPointConfidence:(float *)confidence dominantLine:(id *)dominantLine;
- (int)voteVanishingPoint:(float *)point;
- (void)averageOrientationResponses:(int)responses withCurrentMap:(float *)map;
- (void)dealloc;
- (void)extractUsefulAreaFrom:(float *)from to:(float *)to withOffset:(unint64_t)offset stridePadded:(unint64_t)padded width:(unint64_t)width height:(unint64_t)height;
- (void)smoothFiltering:(float *)filtering width:(unint64_t)width height:(unint64_t)height;
@end

@implementation VCPVanishingPointDetector

- (VCPVanishingPointDetector)initWithImage:(__CVBuffer *)image
{
  v11.receiver = self;
  v11.super_class = VCPVanishingPointDetector;
  v4 = [(VCPVanishingPointDetector *)&v11 init];
  v5 = v4;
  if (v4)
  {
    if ([(VCPVanishingPointDetector *)v4 prepareImage:image])
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
      if (v5->_validDimension)
      {
        v8 = [[VCPGaborFilter alloc] initWithNumberOfScales:5 numOfOrientations:8 width:31 height:31];
        gaborFilter = v5->_gaborFilter;
        v5->_gaborFilter = v8;

        v6 = v5;
      }
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)detect:(CGPoint *)detect withConfidence:(float *)confidence dominantLine:(id *)line
{
  array = [MEMORY[0x1E695DF70] array];
  if (!self->_validDimension)
  {
    detect->x = 0.0;
    detect->y = 0.0;
    *confidence = 0.0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (!dictionary)
    {
      calculateOrientationResponses = -108;
      goto LABEL_12;
    }

    v16.x = 0.0;
    v16.y = 0.0;
    v12 = NSStringFromPoint(v16);
    [dictionary setObject:v12 forKey:@"Point0"];

    v17.x = 0.0;
    v17.y = 0.0;
    v13 = NSStringFromPoint(v17);
    [dictionary setObject:v13 forKey:@"Point1"];

    [dictionary setObject:&unk_1F49BB0E8 forKey:@"Radius"];
    [dictionary setObject:&unk_1F49BB0E8 forKey:@"Theta"];
    [dictionary setObject:&unk_1F49BBE30 forKey:@"Length"];
    v14 = dictionary;
    *line = dictionary;

    goto LABEL_10;
  }

  calculateOrientationResponses = [(VCPVanishingPointDetector *)self calculateOrientationResponses];
  if (!calculateOrientationResponses)
  {
    calculateOrientationResponses = [(VCPVanishingPointDetector *)self generateOrientationMap];
    if (!calculateOrientationResponses)
    {
      calculateOrientationResponses = [(VCPVanishingPointDetector *)self generateLineWeightMap:array weightMap:self->_edgeWeightMap];
      if (!calculateOrientationResponses)
      {
        calculateOrientationResponses = [(VCPVanishingPointDetector *)self voteVanishingPoint:self->_image];
        if (!calculateOrientationResponses)
        {
          calculateOrientationResponses = [(VCPVanishingPointDetector *)self searchVanishingPointandDominantLine:self->_image lineGroup:array vanishingPoint:detect vanishingPointConfidence:confidence dominantLine:line];
          if (!calculateOrientationResponses)
          {
LABEL_10:
            calculateOrientationResponses = 0;
          }
        }
      }
    }
  }

LABEL_12:

  return calculateOrientationResponses;
}

- (void)dealloc
{
  image = self->_image;
  if (image)
  {
    MEMORY[0x1CCA95C10](image, 0x1000C8052888210);
  }

  orientionMap = self->_orientionMap;
  if (orientionMap)
  {
    MEMORY[0x1CCA95C10](orientionMap, 0x1000C8052888210);
  }

  confidenceMap = self->_confidenceMap;
  if (confidenceMap)
  {
    MEMORY[0x1CCA95C10](confidenceMap, 0x1000C8052888210);
  }

  edgeWeightMap = self->_edgeWeightMap;
  if (edgeWeightMap)
  {
    MEMORY[0x1CCA95C10](edgeWeightMap, 0x1000C8052888210);
  }

  for (i = 16; i != 80; i += 8)
  {
    v8 = *(&self->super.isa + i);
    if (v8)
    {
      MEMORY[0x1CCA95C10](v8, 0x1000C8052888210);
    }
  }

  v9.receiver = self;
  v9.super_class = VCPVanishingPointDetector;
  [(VCPVanishingPointDetector *)&v9 dealloc];
}

- (int)prepareImage:(__CVBuffer *)image
{
  if (!image)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  if (Height >= Width)
  {
    v7 = Width;
  }

  else
  {
    v7 = Height;
  }

  if (Width <= Height)
  {
    v8 = Height;
  }

  else
  {
    v8 = Width;
  }

  self->_validDimension = v7 > 127;
  if (v7 < 128)
  {
    return 0;
  }

  if ((v8 / v7) <= 2.0)
  {
    v12 = ((Width << 7) / v7) & 0xFFFFFFFE;
    v11 = ((Height << 7) / v7) & 0xFFFFFFFE;
  }

  else
  {
    v9 = ((Height << 8) / v8) & 0xFFFFFFFE;
    v10 = ((Width << 8) / v8) & 0xFFFFFFFE;
    if (Height < Width)
    {
      v11 = 128;
    }

    else
    {
      v11 = v9;
    }

    if (Height < Width)
    {
      v12 = v10;
    }

    else
    {
      v12 = 128;
    }
  }

  pixelBuffer = 0;
  Scaler::Scale(&self->_scaler, image, &pixelBuffer, v12, v11, 875704422);
  v13 = v14;
  if (!v14)
  {
    self->_width = v12;
    self->_height = v11;
    self->_stride = v12;
    self->_widthPadded = v12 + 30;
    v15 = v11 + 30;
    self->_heightPadded = v15;
    self->_stridePadded = v12 + 30;
    self->_offset = 15 * (v12 + 30) + 15;
    v16 = (v12 + 30) * v15;
    if (v16 >> 62)
    {
      v17 = -1;
    }

    else
    {
      v17 = 4 * v16;
    }

    v18 = MEMORY[0x1E69E5398];
    v19 = operator new[](v17, MEMORY[0x1E69E5398]);
    self->_image = v19;
    v20 = operator new[](v17, v18);
    self->_edgeWeightMap = v20;
    v21 = v12 * v11;
    if (v21 >> 62)
    {
      v22 = -1;
    }

    else
    {
      v22 = 4 * v21;
    }

    v23 = operator new[](v22, v18);
    self->_orientionMap = v23;
    v24 = operator new[](v22, v18);
    self->_confidenceMap = v24;
    if (v19)
    {
      v25 = v20 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25 && v23 && v24 != 0)
    {
      v28 = 0;
      v29 = MEMORY[0x1E69E5398];
      while (1)
      {
        v30 = operator new[](v22, v29);
        self->_orientationResponses[v28] = v30;
        if (!v30)
        {
          break;
        }

        if (++v28 == 8)
        {
          CVPixelBufferLock::CVPixelBufferLock(v55, pixelBuffer, 1uLL);
          v13 = v55[0];
          if (!v55[0])
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
            if (v11 < 1)
            {
              v38 = 0.0;
              v37 = 0.0;
            }

            else
            {
              v34 = 0;
              v35 = &self->_image[self->_offset];
              v36 = 4 * self->_stridePadded;
              v37 = 0.0;
              v38 = 0.0;
              do
              {
                if (v12 >= 1)
                {
                  v39 = 0;
                  do
                  {
                    LOBYTE(v33) = BaseAddressOfPlane[v39];
                    v33 = LODWORD(v33);
                    v35[v39] = v33;
                    v38 = v38 + v33;
                    v37 = v37 + (v33 * v33);
                    ++v39;
                  }

                  while (v12 != v39);
                }

                BaseAddressOfPlane += BytesPerRowOfPlane;
                ++v34;
                v35 = (v35 + v36);
              }

              while (v34 != v11);
            }

            v13 = CVPixelBufferLock::Unlock(v55);
            if (!v13)
            {
              v40 = (v12 * v11);
              self->_pixelMean = v38 / v40;
              self->_pixelVar = sqrtf(fmaxf((v37 / v40) - (v38 / v40), 0.0));
              stridePadded = self->_stridePadded;
              v42 = &self->_image[15 * stridePadded];
              v43 = &v42[(self->_height - 1) * stridePadded];
              v44 = 15;
              do
              {
                v45 = self->_stridePadded;
                v46 = &v42[-v45];
                v47 = &v43[v45];
                memcpy(v46, v42, 4 * v45);
                memcpy(v47, v43, 4 * self->_stridePadded);
                v43 = v47;
                v42 = v46;
                --v44;
              }

              while (v44);
              if (self->_heightPadded)
              {
                v48 = 0;
                image = self->_image;
                v50 = &image[self->_widthPadded];
                v51 = v50 - 16;
                v52 = v50 - 15;
                v53 = image + 15;
                do
                {
                  vDSP_vfill(v53, image, 1, 0xFuLL);
                  vDSP_vfill(v51, v52, 1, 0xFuLL);
                  v54 = self->_stridePadded;
                  v53 += v54;
                  v51 += v54;
                  image += v54;
                  v52 += v54;
                  ++v48;
                }

                while (self->_heightPadded > v48);
              }

              v13 = 0;
            }
          }

          CVPixelBufferLock::~CVPixelBufferLock(v55);
          goto LABEL_36;
        }
      }
    }

    v13 = -108;
  }

LABEL_36:
  CF<__CVBuffer *>::~CF(&pixelBuffer);
  return v13;
}

- (int)calculateOrientationResponses
{
  if (!self->_validDimension)
  {
    return -50;
  }

  v15 = v7;
  v16 = v6;
  v17 = v5;
  v18 = v4;
  v19 = v3;
  v20 = v2;
  v21 = v8;
  v22 = v9;
  if (!self->_gaborFilter)
  {
    return -50;
  }

  v11 = 0;
  v12 = self->_height * self->_width;
LABEL_4:
  vDSP_vclr(self->_orientationResponses[v11], 1, v12);
  v13 = 0;
  while (1)
  {
    result = [(VCPGaborFilter *)self->_gaborFilter processWithFilterScaleIdx:v13 orientIdx:v11 srcImage:self->_image outImage:self->_edgeWeightMap width:self->_widthPadded height:self->_heightPadded, v15, v16, v17, v18, v19, v20, v21, v22];
    if (result)
    {
      return result;
    }

    [(VCPVanishingPointDetector *)self extractUsefulAreaFrom:self->_edgeWeightMap to:self->_orientionMap withOffset:self->_offset stridePadded:self->_stridePadded width:self->_width height:self->_height];
    [(VCPVanishingPointDetector *)self averageOrientationResponses:v11 withCurrentMap:self->_orientionMap];
    v13 = (v13 + 1);
    if (v13 == 5)
    {
      result = 0;
      if (++v11 != 8)
      {
        goto LABEL_4;
      }

      return result;
    }
  }
}

- (void)extractUsefulAreaFrom:(float *)from to:(float *)to withOffset:(unint64_t)offset stridePadded:(unint64_t)padded width:(unint64_t)width height:(unint64_t)height
{
  if (height)
  {
    heightCopy = height;
    v10 = 4 * width;
    v11 = 4 * padded;
    v12 = &from[offset];
    do
    {
      memcpy(to, v12, v10);
      v12 = (v12 + v11);
      to = (to + v10);
      --heightCopy;
    }

    while (heightCopy);
  }
}

- (void)averageOrientationResponses:(int)responses withCurrentMap:(float *)map
{
  __B = 8.0;
  v5 = self->_height * self->_width;
  v6 = self->_orientationResponses[responses];
  vDSP_vsdiv(map, 1, &__B, map, 1, v5);
  MEMORY[0x1CCA97370](v6, 1, map, 1, v6, 1, v5);
}

- (int)generateOrientationMap
{
  orientionMap = self->_orientionMap;
  confidenceMap = self->_confidenceMap;
  v5 = MEMORY[0x1E69E5398];
  v6 = operator new[](0x20uLL, MEMORY[0x1E69E5398]);
  v7 = operator new[](0x40uLL, v5);
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = -108;
    if (!v6)
    {
      goto LABEL_42;
    }

LABEL_41:
    MEMORY[0x1CCA95C10](v6, 0x1000C8052888210);
    goto LABEL_42;
  }

  height = self->_height;
  if (!height)
  {
    v10 = 0;
    goto LABEL_41;
  }

  v12 = 0;
  LODWORD(v13) = 0;
  width = self->_width;
  v15 = 0.0;
  v16 = 1.0;
  do
  {
    if (width)
    {
      v44 = v12;
      v17 = 0;
      v13 = v13;
      do
      {
        v45 = v15;
        for (i = 0; i != 8; ++i)
        {
          v6[i] = self->_orientationResponses[i][v13];
          v8[i] = i;
        }

        vDSP_vsorti(v6, v8, 0, 8uLL, -1);
        v19 = v8[1];
        v20 = v6[*v8];
        v21 = vabds_f32(v20, v6[v8[7]]);
        v22 = v6[v19];
        v23 = vabds_f32(v22, v6[v8[6]]);
        v24 = (*v8 * 22.5) * 0.017453;
        v25 = (v19 * 22.5) * 0.017453;
        v26 = cosf(v24);
        v27 = (cosf(v25) * v23) + (v21 * v26);
        if (v27 == 0.0)
        {
          v28 = 90.0;
        }

        else
        {
          v29 = sinf(v24);
          v30 = sinf(v25);
          v28 = atanf(((v30 * v23) + (v21 * v29)) / v27) * 57.296;
        }

        if (v28 < 0.0)
        {
          v28 = v28 + 180.0;
        }

        orientionMap[v17] = v28;
        v31 = 0.0;
        for (j = 2; j != 8; ++j)
        {
          v31 = v31 + v6[v8[j]];
        }

        v33 = 0.0;
        v34 = ((v20 + 0.0) + v22) * 0.5;
        if (v34 != 0.0)
        {
          v33 = ((v31 / -6.0) / v34) + 1.0;
        }

        confidenceMap[v17] = v33;
        if (v33 < v16)
        {
          v16 = v33;
        }

        v15 = v45;
        if (v33 > v45)
        {
          v15 = v33;
        }

        ++v17;
        ++v13;
        width = self->_width;
      }

      while (width > v17);
      height = self->_height;
      v12 = v44;
    }

    stride = self->_stride;
    orientionMap += stride;
    confidenceMap += stride;
    ++v12;
  }

  while (height > v12);
  if (height)
  {
    v36 = 0;
    v37 = 0;
    v38 = (v15 - v16) * 0.22;
    v39 = self->_width;
    do
    {
      if (v39)
      {
        v40 = self->_confidenceMap;
        v41 = v37;
        v37 += v39;
        v42 = v39;
        do
        {
          if (v40[v41] < v38)
          {
            self->_orientionMap[v41] = -1.0;
          }

          ++v41;
          --v42;
        }

        while (v42);
      }

      ++v36;
    }

    while (v36 != height);
  }

  v10 = 0;
  if (v6)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v8)
  {
    MEMORY[0x1CCA95C10](v8, 0x1000C8000313F17);
  }

  return v10;
}

- (void)smoothFiltering:(float *)filtering width:(unint64_t)width height:(unint64_t)height
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = -2;
  v9 = __F;
  v16 = vdupq_n_s64(5uLL);
  do
  {
    v10 = 0;
    v11 = vdup_n_s32(v8 * v8);
    do
    {
      v12 = vorrq_s8(vdupq_n_s64(v10), xmmword_1C9F609E0);
      v19 = vmovn_s64(vcgtq_u64(v16, v12)).u8[0];
      v20 = v12;
      v13 = vadd_s32(vdup_n_s32(v10), -2);
      v14 = vmul_f32(vcvt_f32_s32(vneg_s32(vmla_s32(v11, v13, v13))), 0x3F0000003F000000);
      v17 = v14.f32[0];
      v18 = expf(v14.f32[1]);
      v15 = expf(v17);
      if (v19)
      {
        v9[v10] = v15 / 2.5066;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), v20)).i32[1])
      {
        v9[v10 + 1] = v18 / 2.5066;
      }

      v10 += 2;
    }

    while (v10 != 6);
    ++v8;
    v9 += 5;
  }

  while (v8 != 3);
  vDSP_f5x5(filtering, height, width, __F, filtering);
}

- (int)voteVanishingPoint:(float *)point
{
  width = self->_width;
  height = self->_height;
  if (width <= height)
  {
    v7 = self->_height;
  }

  else
  {
    v7 = self->_width;
  }

  vDSP_vclr(point, 1, height * width);
  v23 = height;
  if (height >= 1)
  {
    v24 = 0;
    LODWORD(v8) = 0;
    v9 = (v7 * 0.35);
    v10 = sqrt((width * width + height * height));
    do
    {
      if (width >= 1)
      {
        v11 = 0;
        v8 = v8;
        do
        {
          v12 = -v9;
          if (v9 >= 1)
          {
            do
            {
              v13 = (v12 + v24);
              if (v13 < v23)
              {
                v14 = -v9;
                do
                {
                  if (v11 + v14 < width)
                  {
                    v15 = self->_orientionMap[self->_stride * v13 + (v11 + v14)];
                    if (v15 >= 0.0)
                    {
                      v16 = sqrtf((v12 * v12 + v14 * v14));
                      v17 = v16 / v10;
                      if (v14 >= 0)
                      {
                        v19 = -v12;
                      }

                      else
                      {
                        v19 = v12;
                      }

                      v20 = vabds_f32(acosf(v19 / v16) * 57.296, v15);
                      if (v20 <= 90.0)
                      {
                        v21 = v20;
                      }

                      else
                      {
                        v21 = 180.0 - v20;
                      }

                      v18 = 5.0 / ((v17 + v17) + 1.0);
                      if (v21 <= v18)
                      {
                        point[v8] = point[v8] + (((fabsf(sinf((v15 + v15) * 0.017453)) + 1.0) * self->_edgeWeightMap[v8]) / (((v17 * v21) * (v17 * v21)) + 1.0));
                      }
                    }
                  }

                  v14 += 4;
                }

                while (v14 < v9);
              }

              v12 += 4;
            }

            while (v12 < v9);
          }

          ++v11;
          ++v8;
        }

        while (v11 != width);
      }

      ++v24;
    }

    while (v24 != v23);
  }

  return 0;
}

- (int)searchVanishingPointandDominantLine:(float *)line lineGroup:(id)group vanishingPoint:(CGPoint *)point vanishingPointConfidence:(float *)confidence dominantLine:(id *)dominantLine
{
  confidenceCopy = confidence;
  v54 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  width = self->_width;
  height = self->_height;
  [(VCPVanishingPointDetector *)self smoothFiltering:line width:width height:height];
  if (height < 1)
  {
    v17 = 0.0;
    v15 = 0.0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      if (width >= 1)
      {
        v19 = &line[v13];
        v20 = 0.0;
        v21 = width;
        do
        {
          v22 = *v19++;
          v23 = v22;
          if (v22 > v16)
          {
            v17 = v18;
            v15 = v20;
            v16 = v23;
          }

          v20 = v20 + 1.0;
          --v21;
        }

        while (v21);
      }

      v18 = v18 + 1.0;
      ++v14;
      v13 += width & ~(width >> 31);
    }

    while (v14 != height);
  }

  point->x = v15 / width;
  point->y = v17 / height;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v24 = groupCopy;
  v25 = [v24 countByEnumeratingWithState:&v49 objects:v53 count:16];
  v26 = v15 - vcvts_n_f32_s32(width, 1uLL);
  v27 = v17 - vcvts_n_f32_s32(height, 1uLL);
  if (v25)
  {
    v28 = *v50;
    v29 = 0.0;
    v30 = 3.4028e38;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v50 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v32 = *(*(&v49 + 1) + 8 * i);
        v33 = [v32 objectForKey:{@"Radius", confidenceCopy}];
        [v33 floatValue];
        v35 = v34;

        v36 = [v32 objectForKey:@"Theta"];
        [v36 floatValue];
        v38 = v37;

        v39 = __sincosf_stret(v38 * 0.017453);
        v40 = v27 * v39.__sinval + v26 * v39.__cosval;
        v41 = vabds_f32(v40, v35);
        if (v41 < v30)
        {
          v42 = v32;
          *dominantLine = v32;
          v30 = v41;
        }

        v29 = v29 + v41;
      }

      v25 = [v24 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v25);
  }

  else
  {
    v29 = 0.0;
  }

  if (![v24 count])
  {
    v43 = confidenceCopy;
    *confidenceCopy = 0.0;
LABEL_26:
    v45 = 0;
    *v43 = 1.0;
    goto LABEL_27;
  }

  v43 = confidenceCopy;
  *&v44 = v29 / [v24 count];
  v45 = [(VCPVanishingPointDetector *)self calculateConfidence:v24 lineDistance:confidenceCopy vaninshingPoint:v44 vanishingPointConfidence:v26, v27];
  if (!v45)
  {
    goto LABEL_26;
  }

LABEL_27:

  return v45;
}

- (int)calculateConfidence:(id)confidence lineDistance:(float)distance vaninshingPoint:(CGPoint)point vanishingPointConfidence:(float *)pointConfidence
{
  confidenceCopy = confidence;
  v10 = hypotf(self->_width, self->_height);
  v11 = [confidenceCopy count];
  v12 = expf(((distance / v10) * (distance / v10)) / -0.0648);
  *pointConfidence = v12;
  if (v12 >= 0.4)
  {
    pointConfidenceCopy = pointConfidence;
    v13 = 0.2;
    if (v11 >= 3)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0.0;
      v17 = 1;
      v18 = 0.087266;
      do
      {
        v55 = v14;
        v19 = [confidenceCopy objectAtIndex:?];
        v20 = [v19 objectForKey:@"Radius"];
        [v20 floatValue];
        v57 = v21;

        v22 = [v19 objectForKey:@"Theta"];
        [v22 floatValue];
        v24 = v23;

        v25 = [v19 objectForKey:@"Theta"];
        [v25 floatValue];
        v27 = v26;

        v54 = v17;
        if (![(VCPVanishingPointDetector *)self isVerticalOrHorizontal:v27])
        {
          v28 = v24 * 0.017453;
          v29 = __sincosf_stret(v24 * 0.017453);
          do
          {
            v30 = [confidenceCopy objectAtIndex:v17];
            v31 = [v30 objectForKey:@"Radius"];
            [v31 floatValue];
            v33 = v32;

            v34 = [v30 objectForKey:@"Theta"];
            [v34 floatValue];
            v36 = v35;

            v37 = [v30 objectForKey:@"Theta"];
            [v37 floatValue];
            v39 = v38;

            if (![(VCPVanishingPointDetector *)self isVerticalOrHorizontal:v39])
            {
              v40 = v36 * 0.017453;
              v41 = vabds_f32(v28, v40);
              if (v41 > v18 && v41 < 3.14159265)
              {
                v42 = v18;
                v43 = v16;
                v44 = v10;
                v45 = 1.0 / sinf(v28 - v40);
                v46 = __sincosf_stret(v40);
                v47 = -(((v57 * v46.__sinval) - (v33 * v29.__sinval)) * v45);
                v48 = ((v57 * v46.__cosval) - (v33 * v29.__cosval)) * v45;
                v10 = v44;
                v49 = v43;
                v18 = v42;
                v50 = v47 - point.x;
                v51 = v48 - point.y;
                v16 = v49 + hypotf(v50, v51);
                ++v15;
              }
            }

            ++v17;
          }

          while (v17 < v11 && v15 < 5);
        }

        v14 = v55 + 1;
        if (v55 + 1 >= v11 - 1)
        {
          break;
        }

        v17 = v54 + 1;
      }

      while (v15 < 5);
      v13 = 0.2;
      if (v15)
      {
        v13 = expf(((v16 / (v10 * v15)) * (v16 / (v10 * v15))) / -0.0512);
      }
    }

    *pointConfidenceCopy = v13;
  }

  return 0;
}

- (BOOL)isVerticalOrHorizontal:(int)horizontal
{
  v3 = horizontal % 180 + (horizontal % 180 < 0 ? 0xB4 : 0);
  v4 = v3 * 0.017453;
  v5 = (180 - v3) * 0.017453;
  v7 = v3 - 90;
  v6 = (v3 - 90) < 0;
  v8 = 90 - v3;
  if (!v6)
  {
    v8 = v7;
  }

  return fminf(fminf(v4, v5), v8 * 0.017453) < 0.0087266;
}

- (int)generateLineWeightMap:(id)map weightMap:(float *)weightMap
{
  mapCopy = map;
  v7 = (self->_pixelVar * -0.03078) + 5.3225;
  v8 = 5.0;
  if (v7 < 5.0)
  {
    v8 = (self->_pixelVar * -0.03078) + 5.3225;
  }

  if (v7 <= 1.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = [[VCPEdgeDetector alloc] initWithImage:self->_image edgeMap:weightMap width:self->_width height:self->_height widthExtension:15 heightExtension:15];
  LODWORD(v11) = 1153957888;
  LODWORD(v12) = 1161527296;
  v43 = v10;
  *&v13 = v9;
  v14 = [(VCPEdgeDetector *)v10 detectWithSigma:v13 lowThreshold:v11 highThreshold:v12];
  if (!v14)
  {
    v15 = [VCPHoughTransform alloc];
    LODWORD(v16) = 1.0;
    weightMapCopy = weightMap;
    v42 = [(VCPHoughTransform *)v15 initWithEdgeMap:weightMap mapWidth:LODWORD(self->_width) mapHeight:LODWORD(self->_height) angleStep:v16];
    [(VCPHoughTransform *)v42 DetectLinesWithThreshold:70 output:mapCopy];
    height = self->_height;
    if (height)
    {
      LODWORD(v18) = 0;
      width = self->_width;
      for (i = 0; i < height; ++i)
      {
        if (width)
        {
          v21 = 0;
          v44 = i;
          v45 = i;
          v18 = v18;
          selfCopy2 = self;
          do
          {
            v23 = 0;
            weightMapCopy[v18] = 1.0;
            v46 = v21;
            v24 = v21 - vcvts_n_f32_u64(width, 1uLL);
            v25 = v45 - vcvts_n_f32_u64(selfCopy2->_height, 1uLL);
            while (1)
            {
              v26 = [mapCopy count];
              v27 = v26 >= 5 ? 5 : v26;
              if (v27 <= v23)
              {
                break;
              }

              v28 = [mapCopy objectAtIndex:v23];
              v29 = [v28 objectForKey:@"Radius"];
              [v29 floatValue];
              v31 = v30;

              v32 = [v28 objectForKey:@"Theta"];
              [v32 floatValue];
              v34 = v33;

              v35 = [v28 objectForKey:@"Length"];
              integerValue = [v35 integerValue];
              v37 = v34 * 0.017453;

              v38 = __sincosf_stret(v37);
              if (vabds_f32((v25 * v38.__sinval) + (v24 * v38.__cosval), v31) <= 2.0)
              {
                v39 = fminf(expf(integerValue / 320.0), 3.0);
                v40 = (fabsf(sinf(v37 + v37)) + 1.0) * v39;
                weightMapCopy[v18] = v40;
              }

              ++v23;
            }

            selfCopy2 = self;
            v21 = v46 + 1;
            ++v18;
            width = self->_width;
          }

          while (width > v46 + 1);
          height = self->_height;
          i = v44;
        }
      }
    }

    v14 = 0;
  }

  return v14;
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 50) = 0;
  return self;
}

@end