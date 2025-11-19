@interface VCPHuman
+ (unint64_t)flagsFromKeypoints:(id)a3 withMinConfidence:(float)a4;
- (CGRect)bounds;
- (VCPHuman)init;
@end

@implementation VCPHuman

- (VCPHuman)init
{
  v9.receiver = self;
  v9.super_class = VCPHuman;
  v2 = [(VCPHuman *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_flags = 0;
    v4 = *(MEMORY[0x1E695F058] + 16);
    v2->_bounds.origin = *MEMORY[0x1E695F058];
    v2->_bounds.size = v4;
    *&v2->_confidence = 0;
    v5 = MEMORY[0x1E6960C98];
    v6 = *(MEMORY[0x1E6960C98] + 16);
    *&v2->_timerange.start.value = *MEMORY[0x1E6960C98];
    *&v2->_timerange.start.epoch = v6;
    *&v2->_timerange.duration.timescale = *(v5 + 32);
    torsoprint = v2->_torsoprint;
    v2->_torsoprint = 0;
  }

  return v3;
}

+ (unint64_t)flagsFromKeypoints:(id)a3 withMinConfidence:(float)a4
{
  v5 = a3;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = -13;
  while ([v5 count] > v6)
  {
    v13 = [v5 objectAtIndexedSubscript:v6];
    v14 = [v13 count];

    if (v14 != 3)
    {
      goto LABEL_25;
    }

    v15 = [v5 objectAtIndexedSubscript:v6];
    v16 = [v15 objectAtIndexedSubscript:2];
    [v16 floatValue];
    v18 = v17;

    if (v18 > a4)
    {
      if (v6 > 4)
      {
        if (v12 + 8 > 1)
        {
          if (v12 < 0xFFFFFFFE)
          {
            if (v12 + 6 > 1)
            {
              if (v12 < 2)
              {
                v7 |= 0x800000uLL;
              }
            }

            else
            {
              v7 |= 0x400000uLL;
            }
          }

          else
          {
            ++v10;
          }
        }

        else
        {
          ++v9;
        }
      }

      else
      {
        v11 |= v6 < 3;
        ++v8;
      }
    }

    ++v6;
    ++v12;
  }

  if ((v11 & (v8 > 2)) != 0)
  {
    v19 = v7 | 0x100000;
  }

  else
  {
    v19 = v7;
  }

  if (v10)
  {
    v20 = v9 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v7 = v19;
  }

  else
  {
    v7 = v19 | 0x200000;
  }

LABEL_25:

  return v7;
}

- (CGRect)bounds
{
  objc_copyStruct(v6, &self->_bounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end