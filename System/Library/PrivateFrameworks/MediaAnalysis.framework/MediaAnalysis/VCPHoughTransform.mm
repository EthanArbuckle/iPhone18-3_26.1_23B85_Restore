@interface VCPHoughTransform
- (VCPHoughTransform)initWithEdgeMap:(float *)map mapWidth:(int)width mapHeight:(int)height angleStep:(float)step;
- (int)DetectLinesWithThreshold:(int)threshold output:(id)output;
- (void)Transform;
- (void)dealloc;
@end

@implementation VCPHoughTransform

- (VCPHoughTransform)initWithEdgeMap:(float *)map mapWidth:(int)width mapHeight:(int)height angleStep:(float)step
{
  v21.receiver = self;
  v21.super_class = VCPHoughTransform;
  v10 = [(VCPHoughTransform *)&v21 init];
  v11 = v10;
  v12 = 0;
  if (height >= 1 && width >= 1 && map && v10)
  {
    v10->_verbose = 0;
    v10->_edgeMap = map;
    v10->_mapWidth = width;
    v10->_mapHeight = height;
    if (width <= height)
    {
      widthCopy = height;
    }

    else
    {
      widthCopy = width;
    }

    v14 = llround(widthCopy * 1.41421356 * 0.5);
    v10->_accHalfHeight = v14;
    v15 = llroundf(180.0 / step);
    v14 *= 2;
    v10->_accWidth = v15;
    v10->_accHeight = v14;
    v10->_angleStep = step;
    v16 = v14 * v15;
    if (v16 < 0)
    {
      v17 = -1;
    }

    else
    {
      v17 = 4 * v16;
    }

    v18 = operator new[](v17, MEMORY[0x1E69E5398]);
    v11->_accumulator = v18;
    if (v18)
    {
      [(VCPHoughTransform *)v11 Transform];
      v19 = v11;
    }

    else
    {
      v19 = 0;
    }

    v12 = v19;
  }

  return v12;
}

- (void)dealloc
{
  accumulator = self->_accumulator;
  if (accumulator)
  {
    MEMORY[0x1CCA95C10](accumulator, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPHoughTransform;
  [(VCPHoughTransform *)&v4 dealloc];
}

- (int)DetectLinesWithThreshold:(int)threshold output:(id)output
{
  outputCopy = output;
  accHeight = self->_accHeight;
  if (accHeight >= 1)
  {
    v7 = 0;
    accWidth = self->_accWidth;
    v9 = -4;
    do
    {
      if (accWidth >= 1)
      {
        v10 = 0;
        while (1)
        {
          accumulator = self->_accumulator;
          v12 = accumulator[v10 + accWidth * v7];
          if (v12 >= threshold)
          {
            v13 = v9 * accWidth - 4;
            v14 = -4;
            while (v14 + v7 < 0 || v14 + v7 >= self->_accHeight)
            {
LABEL_14:
              v13 += accWidth;
              v21 = v14++ < 3;
              if (!v21)
              {
                v16 = accumulator[v10 + accWidth * v7];
                goto LABEL_16;
              }
            }

            v15 = -5;
            while (1)
            {
              if ((v10 + v15 + 1) >= 0 && (v10 + v15 + 1) < accWidth)
              {
                v16 = accumulator[v10 + 5 + v13 + v15];
                if (v16 > v12)
                {
                  break;
                }
              }

              if (++v15 >= 3)
              {
                goto LABEL_14;
              }
            }

LABEL_16:
            if (v16 <= v12)
            {
              v17 = self->_angleStep * v10;
              v18 = (v7 - self->_accHalfHeight);
              v19 = v17 * 0.017453;
              v20 = v18;
              v21 = v17 < 45.0 || v17 > 135.0;
              if (v21)
              {
                mapHeight = self->_mapHeight;
                v23 = __sincosf_stret(v19);
                mapWidth = self->_mapWidth;
                v31 = (v20 + vcvtd_n_f64_s32(mapHeight, 1uLL) * v23.__sinval) / v23.__cosval / mapWidth + 0.5;
                v30 = (v20 + mapHeight * -0.5 * v23.__sinval) / v23.__cosval / mapWidth + 0.5;
                v29 = 1.0;
                v28 = 0.0;
              }

              else
              {
                v25 = self->_mapWidth;
                v26 = __sincosf_stret(v19);
                v27 = self->_mapHeight;
                v28 = (v20 + vcvtd_n_f64_s32(v25, 1uLL) * v26.__cosval) / v26.__sinval / v27 + 0.5;
                v29 = (v20 + v25 * -0.5 * v26.__cosval) / v26.__sinval / v27 + 0.5;
                v30 = 1.0;
                v31 = 0.0;
              }

              dictionary = [MEMORY[0x1E695DF90] dictionary];
              if (!dictionary)
              {
                v40 = -108;
                goto LABEL_30;
              }

              v43.x = v31;
              v43.y = v28;
              v33 = NSStringFromPoint(v43);
              [dictionary setObject:v33 forKey:@"Point0"];

              v44.x = v30;
              v44.y = v29;
              v34 = NSStringFromPoint(v44);
              [dictionary setObject:v34 forKey:@"Point1"];

              *&v35 = v18;
              v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
              [dictionary setObject:v36 forKey:@"Radius"];

              *&v37 = v17;
              v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
              [dictionary setObject:v38 forKey:@"Theta"];

              v39 = [MEMORY[0x1E696AD98] numberWithInt:v16];
              [dictionary setObject:v39 forKey:@"Length"];

              [outputCopy addObject:dictionary];
              accWidth = self->_accWidth;
            }
          }

          if (++v10 >= accWidth)
          {
            accHeight = self->_accHeight;
            break;
          }
        }
      }

      ++v7;
      ++v9;
    }

    while (v7 < accHeight);
  }

  [outputCopy sortUsingComparator:&__block_literal_global_72];
  v40 = 0;
LABEL_30:

  return v40;
}

uint64_t __53__VCPHoughTransform_DetectLinesWithThreshold_output___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:@"Length"];
  v6 = [v4 objectForKey:@"Length"];
  v7 = [v5 integerValue];
  if (v7 < [v6 integerValue])
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)Transform
{
  edgeMap = self->_edgeMap;
  mapHeight = self->_mapHeight;
  mapWidth = self->_mapWidth;
  bzero(self->_accumulator, 4 * self->_accHeight * self->_accWidth);
  if (mapHeight >= 1)
  {
    v6 = 0;
    v7 = vcvtd_n_f64_s32(mapWidth, 1uLL);
    v8 = vcvtd_n_f64_s32(mapHeight, 1uLL);
    v9 = 0.0;
    do
    {
      if (mapWidth >= 1)
      {
        for (i = 0; i != mapWidth; ++i)
        {
          if (edgeMap[i] != 0.0)
          {
            accWidth = self->_accWidth;
            if (accWidth >= 1)
            {
              v12 = 0;
              angleStep = self->_angleStep;
              accumulator = self->_accumulator;
              do
              {
                v15 = __sincos_stret((angleStep * v12) * 0.0174532924);
                accHeight = llround((v9 - v8) * v15.__sinval + (i - v7) * v15.__cosval + self->_accHalfHeight);
                if (self->_accHeight < accHeight)
                {
                  accHeight = self->_accHeight;
                }

                ++accumulator[v12 + accHeight * accWidth];
                accWidth = self->_accWidth;
                ++v12;
              }

              while (v12 < accWidth);
            }
          }
        }
      }

      edgeMap += mapWidth;
      v9 = v9 + 1.0;
      ++v6;
    }

    while (v6 != mapHeight);
  }
}

@end