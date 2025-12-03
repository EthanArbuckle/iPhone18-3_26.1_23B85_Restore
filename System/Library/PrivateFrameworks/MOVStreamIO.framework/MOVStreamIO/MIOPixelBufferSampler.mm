@interface MIOPixelBufferSampler
+ (id)sharedSampler;
- (id)findNormalizedRGBInSampleInfo:(id)info;
- (id)pixelBuffer:(__CVBuffer *)buffer sampleAtNormalizedX:(double)x normalizedY:(double)y error:(id *)error;
- (id)pixelBuffer:(__CVBuffer *)buffer sampleAtX:(unint64_t)x y:(unint64_t)y error:(id *)error;
- (id)quantizedRGBFromNormalizedRGB:(id)b bitDepth:(unsigned __int8)depth fullRange:(BOOL)range error:(id *)error;
@end

@implementation MIOPixelBufferSampler

+ (id)sharedSampler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__MIOPixelBufferSampler_sharedSampler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MIOPixelBufferSampler sharedSampler]::onceToken != -1)
  {
    dispatch_once(&+[MIOPixelBufferSampler sharedSampler]::onceToken, block);
  }

  v2 = +[MIOPixelBufferSampler sharedSampler]::shareSampler;

  return v2;
}

uint64_t __38__MIOPixelBufferSampler_sharedSampler__block_invoke(uint64_t a1)
{
  +[MIOPixelBufferSampler sharedSampler]::shareSampler = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)pixelBuffer:(__CVBuffer *)buffer sampleAtX:(unint64_t)x y:(unint64_t)y error:(id *)error
{
  v7 = pixelBufferSampler::sample(buffer, x, y);
  v8 = v7;
  if (error && !v7)
  {
    [MEMORY[0x277CCA9B8] populateReaderError:error message:@"Cannot retrieve sample from pixel buffer." code:0];
  }

  return v8;
}

- (id)pixelBuffer:(__CVBuffer *)buffer sampleAtNormalizedX:(double)x normalizedY:(double)y error:(id *)error
{
  v7 = pixelBufferSampler::sample(buffer, a2, x, y);
  v8 = v7;
  if (error && !v7)
  {
    [MEMORY[0x277CCA9B8] populateReaderError:error message:@"Cannot retrieve sample from pixel buffer." code:0];
  }

  return v8;
}

- (id)findNormalizedRGBInSampleInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [infoCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [infoCopy objectForKey:v9];
        if ([v9 isEqualToString:@"r′g′b′"])
        {
          v11 = v10;
          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(MIOPixelBufferSampler *)self findNormalizedRGBInSampleInfo:v10];
          if (v11)
          {
            goto LABEL_13;
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (id)quantizedRGBFromNormalizedRGB:(id)b bitDepth:(unsigned __int8)depth fullRange:(BOOL)range error:(id *)error
{
  rangeCopy = range;
  depthCopy = depth;
  v42[3] = *MEMORY[0x277D85DE8];
  bCopy = b;
  if ([bCopy count] > 2)
  {
    if (depthCopy > 7)
    {
      v12 = [bCopy objectAtIndexedSubscript:0];
      [v12 doubleValue];
      v14 = v13;

      v15 = [bCopy objectAtIndexedSubscript:1];
      [v15 doubleValue];
      v17 = v16;

      v18 = [bCopy objectAtIndexedSubscript:2];
      [v18 doubleValue];
      v20 = v19;

      v21 = ~(-1 << depthCopy);
      if (rangeCopy)
      {
        v22 = round(v21 * v14 + 1.0e-12);
        v23 = 0.0;
        if (v22 >= 0.0)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0.0;
        }

        if (v22 > v21)
        {
          v25 = ~(-1 << depthCopy);
        }

        else
        {
          v25 = v24;
        }

        v26 = round(v21 * v17 + 1.0e-12);
        if (v26 >= 0.0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0.0;
        }

        if (v26 > v21)
        {
          v28 = ~(-1 << depthCopy);
        }

        else
        {
          v28 = v27;
        }

        v29 = round(v21 * v20 + 1.0e-12);
        if (v29 >= 0.0)
        {
          v23 = v29;
        }

        if (v29 > v21)
        {
          v30 = ~(-1 << depthCopy);
        }

        else
        {
          v30 = v23;
        }
      }

      else
      {
        v31 = (1 << (depthCopy - 8));
        v32 = (v14 * 219.0 + 16.0) * v31;
        if (v32 >= 0.0)
        {
          v33 = (v14 * 219.0 + 16.0) * v31;
        }

        else
        {
          v33 = 0.0;
        }

        if (v32 <= v21)
        {
          v25 = v33;
        }

        else
        {
          v25 = ~(-1 << depthCopy);
        }

        v34 = (v17 * 219.0 + 16.0) * v31;
        if (v34 >= 0.0)
        {
          v35 = (v17 * 219.0 + 16.0) * v31;
        }

        else
        {
          v35 = 0.0;
        }

        if (v34 <= v21)
        {
          v28 = v35;
        }

        else
        {
          v28 = ~(-1 << depthCopy);
        }

        v36 = (v20 * 219.0 + 16.0) * v31;
        if (v36 >= 0.0)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0.0;
        }

        if (v36 <= v21)
        {
          v30 = v37;
        }

        else
        {
          v30 = ~(-1 << depthCopy);
        }
      }

      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25];
      v42[0] = v38;
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
      v42[1] = v39;
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
      v42[2] = v40;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
    }

    else
    {
      depthCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"bitDepth (%d) must be greater than or equal to 8.", depthCopy];
      [MEMORY[0x277CCA9B8] populateReaderError:error message:depthCopy code:0];

      v10 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] populateReaderError:error message:@"Missing r'g'b' values." code:0];
    v10 = 0;
  }

  return v10;
}

@end