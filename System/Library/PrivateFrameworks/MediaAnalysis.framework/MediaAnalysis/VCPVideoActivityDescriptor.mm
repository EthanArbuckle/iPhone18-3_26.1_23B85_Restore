@interface VCPVideoActivityDescriptor
- (VCPVideoActivityDescriptor)initWithFrameWidthInMb:(int)mb heightInMb:(int)inMb;
- (void)ExtractActivityDescriptorFromStats:(EncodeStats *)stats;
- (void)dealloc;
- (void)reset;
- (void)spatialDescriptorWithMvMagnitudeMean:(float)mean;
@end

@implementation VCPVideoActivityDescriptor

- (VCPVideoActivityDescriptor)initWithFrameWidthInMb:(int)mb heightInMb:(int)inMb
{
  v15.receiver = self;
  v15.super_class = VCPVideoActivityDescriptor;
  v6 = [(VCPVideoActivityDescriptor *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
    v6->_widthInMb = mb;
    v6->_heightInMb = inMb;
    if (mb < 1 || inMb < 1)
    {
      goto LABEL_12;
    }

    if (v6->_motionMagnitudeHistogram)
    {
      p_motionMagnitude = &v6->_motionMagnitude;
      v8 = v6;
      if (v6->_motionMagnitude)
      {
        goto LABEL_12;
      }

      v10 = 0;
    }

    else
    {
      v12 = operator new[](0x3C0uLL, MEMORY[0x1E69E5398]);
      p_motionMagnitude = &v7->_motionMagnitude;
      motionMagnitude = v7->_motionMagnitude;
      v7->_motionMagnitudeHistogram = v12;
      v10 = v12 == 0;
      if (motionMagnitude)
      {
LABEL_10:
        v8 = v7;
        if (!v12)
        {
          goto LABEL_11;
        }

LABEL_12:
        v11 = v8;
        goto LABEL_13;
      }
    }

    v12 = operator new[](4 * (inMb * mb), MEMORY[0x1E69E5398]);
    *p_motionMagnitude = v12;
    if (v10)
    {
LABEL_11:
      v8 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)dealloc
{
  motionMagnitudeHistogram = self->_motionMagnitudeHistogram;
  if (motionMagnitudeHistogram)
  {
    MEMORY[0x1CCA95C10](motionMagnitudeHistogram, 0x1000C8000313F17);
  }

  motionMagnitude = self->_motionMagnitude;
  if (motionMagnitude)
  {
    MEMORY[0x1CCA95C10](motionMagnitude, 0x1000C8052888210);
  }

  v5.receiver = self;
  v5.super_class = VCPVideoActivityDescriptor;
  [(VCPVideoActivityDescriptor *)&v5 dealloc];
}

- (void)reset
{
  *&self->descriptors[8] = 0;
  *&self->descriptors[4] = 0u;
  *self->descriptors = 0u;
}

- (void)ExtractActivityDescriptorFromStats:(EncodeStats *)stats
{
  bzero(self->_motionMagnitudeHistogram, 0x3C0uLL);
  heightInMb = self->_heightInMb;
  if (heightInMb >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    widthInMb = self->_widthInMb;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      if (widthInMb >= 1)
      {
        v16 = 0;
        v17 = (4 * v7) | 2;
        v18 = &stats->var19[v7];
        v19 = &stats->var17[v7];
        motionMagnitudeHistogram = self->_motionMagnitudeHistogram;
        v21 = &stats->var1[v7];
        v22 = &stats->var20[v7];
        v23 = &stats->var18[v7];
        v24 = &stats->var2[v7];
        v25 = &self->_motionMagnitude[v7];
        do
        {
          v26 = 0.0;
          v27 = 0.0;
          if (v21[v16])
          {
            v28 = (stats->var3 + v17);
            v26 = vcvts_n_f32_s32(*(v28 - 1), 2uLL);
            v27 = vcvts_n_f32_s32(*v28, 2uLL);
          }

          v29 = v16 + 1;
          v30 = sqrtf((v27 * v27) + (v26 * v26));
          v31 = llroundf(v30);
          if (v31 >= 119)
          {
            v31 = 119;
          }

          v10 = v10 + v30;
          *&v32 = (v30 * v30);
          v11 = v11 + *&v32;
          LOWORD(v32) = v18[v16];
          *&v33 = v32;
          v12 = v12 + *&v33;
          LOWORD(v33) = v19[v16];
          *&v34 = v33;
          v13 = v13 + *&v34;
          LOWORD(v34) = v22[v16];
          *&v35 = v34;
          v14 = v14 + *&v35;
          LOWORD(v35) = v23[v16];
          v8 += v24[v16];
          v25[v16] = v30;
          v15 = v15 + v35;
          ++motionMagnitudeHistogram[v31 & ~(v31 >> 31)];
          v17 += 4;
          ++v16;
        }

        while (widthInMb != v29);
        v7 += v29;
      }

      ++v6;
    }

    while (v6 != heightInMb);
    if (v7)
    {
      v36 = 0;
      v37 = v7;
      v38 = 119;
      v39 = 120.0;
      while (1)
      {
        v36 += self->_motionMagnitudeHistogram[v38];
        v40 = v36 / v37;
        if (v40 >= 0.015)
        {
          v41 = v38;
          if (v39 == 120.0)
          {
            v39 = v38;
          }

          if (v40 >= 0.1)
          {
            break;
          }
        }

        if (--v38 == -1)
        {
          v41 = 120.0;
          break;
        }
      }

      v42 = v10 / v7;
      v43 = v42;
      v44 = v11 / v7 - v42 * v42;
      self->descriptors[0] = v43;
      self->descriptors[1] = sqrtf(v44);
      self->descriptors[2] = v39;
      self->descriptors[3] = v41;
      v45 = v12 / v7 + v14 / v7 * 4.0;
      v46 = v13 / v7 + v15 / v7 * 4.0;
      self->descriptors[4] = v45;
      self->descriptors[5] = v46;
      self->descriptors[6] = v8 / v37;

      [(VCPVideoActivityDescriptor *)self spatialDescriptorWithMvMagnitudeMean:?];
    }
  }
}

- (void)spatialDescriptorWithMvMagnitudeMean:(float)mean
{
  heightInMb = self->_heightInMb;
  widthInMb = self->_widthInMb;
  *&self->descriptors[8] = 0;
  self->descriptors[7] = 0.0;
  if (widthInMb >= 3 && heightInMb >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    descriptors = self->descriptors;
    motionMagnitude = self->_motionMagnitude;
    do
    {
      v11 = v7;
      v12 = heightInMb * widthInMb - 1 - v7;
      v13 = widthInMb;
      v14 = &motionMagnitude[v7];
      do
      {
        if (*v14 >= mean || v12 == 0)
        {
          v16 = v6 / (widthInMb / 3);
          if (v16 >= 2)
          {
            v16 = 2;
          }

          descriptors[(v16 & ~(v16 >> 31)) + 7] = descriptors[(v16 & ~(v16 >> 31)) + 7] + 1.0;
          v6 = 1;
        }

        else
        {
          ++v6;
        }

        --v12;
        ++v14;
        --v13;
      }

      while (v13);
      v7 = v11 + widthInMb;
      ++v8;
    }

    while (v8 != heightInMb);
  }
}

@end