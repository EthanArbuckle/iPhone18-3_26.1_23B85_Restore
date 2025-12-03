@interface VCPGaborFilter
- (VCPGaborFilter)initWithNumberOfScales:(int)numScales numOfOrientations:(int)numOrientations width:(unint64_t)width height:(unint64_t)height;
- (int)createGaborFilterKernel:(Kernel *)kernel sigmaX:(float)x sigmaY:(float)y lambda:(float)lambda thetaInDegree:(float)degree phaseInDegree:(float)inDegree;
- (int)processWithFilterScaleIdx:(int)idx orientIdx:(int)orientIdx srcImage:(const float *)image outImage:(float *)outImage width:(unint64_t)width height:(unint64_t)height;
- (void)dealloc;
@end

@implementation VCPGaborFilter

- (VCPGaborFilter)initWithNumberOfScales:(int)numScales numOfOrientations:(int)numOrientations width:(unint64_t)width height:(unint64_t)height
{
  v34.receiver = self;
  v34.super_class = VCPGaborFilter;
  v10 = [(VCPGaborFilter *)&v34 init];
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    if ((width & height & 1) != 0 && (height | width) >= 2)
    {
      v10->_numScales = numScales;
      v10->_numOrientations = numOrientations;
      v10->_num = numOrientations * numScales;
      if (numScales < 0)
      {
        v13 = -1;
      }

      else
      {
        v13 = 8 * numScales;
      }

      v14 = operator new[](v13, MEMORY[0x1E69E5398]);
      v11->_filterBanks = v14;
      if (v14)
      {
        v12 = v11;
        if (numScales >= 1)
        {
          v15 = 0;
          v16 = 180.0 / numOrientations;
          if ((height * width) >> 62)
          {
            v17 = -1;
          }

          else
          {
            v17 = 4 * height * width;
          }

          v18 = MEMORY[0x1E69E5398];
          while (1)
          {
            v19 = exp2f(v15 + 2.0);
            v20 = is_mul_ok(numOrientations, 0x18uLL) ? 24 * numOrientations : -1;
            v11->_filterBanks[v15] = operator new[](v20, v18);
            v12 = v11->_filterBanks[v15];
            if (!v12)
            {
              break;
            }

            if (numOrientations >= 1)
            {
              v21 = 0;
              v22 = 0;
              while (1)
              {
                filterBanks = v11->_filterBanks;
                v24 = &filterBanks[v15][v21];
                v24->var1 = width;
                v24->var2 = height;
                filterBanks[v15][v21].var0 = operator new[](v17, v18);
                v28 = &v11->_filterBanks[v15][v21];
                if (!v28->var0)
                {
                  goto LABEL_26;
                }

                *&v27 = v16 * v22;
                v29 = *&v28->var0;
                var2 = v28->var2;
                v32 = v29;
                *&v29 = v19;
                *&v25 = v19 * 1.2;
                *&v26 = v19;
                if ([(VCPGaborFilter *)v11 createGaborFilterKernel:&v32 sigmaX:*&v29 sigmaY:v25 lambda:v26 thetaInDegree:v27 phaseInDegree:0.0])
                {
                  goto LABEL_26;
                }

                ++v22;
                ++v21;
                if (v22 >= v11->_numOrientations)
                {
                  numScales = v11->_numScales;
                  numOrientations = v11->_numOrientations;
                  break;
                }
              }
            }

            if (++v15 >= numScales)
            {
              v12 = v11;
              break;
            }
          }
        }
      }

      else
      {
LABEL_26:
        v12 = 0;
      }
    }

    v30 = v12;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)dealloc
{
  if (self->_numScales >= 1)
  {
    v3 = 0;
    do
    {
      numOrientations = self->_numOrientations;
      if (numOrientations >= 1)
      {
        v5 = 0;
        for (i = 0; i < numOrientations; ++i)
        {
          var0 = self->_filterBanks[v3][v5].var0;
          if (var0)
          {
            MEMORY[0x1CCA95C10](var0, 0x1000C8052888210);
            numOrientations = self->_numOrientations;
          }

          ++v5;
        }
      }

      v8 = self->_filterBanks[v3];
      if (v8)
      {
        MEMORY[0x1CCA95C10](v8, 0x1080C80468F112ELL);
      }

      ++v3;
    }

    while (v3 < self->_numScales);
  }

  filterBanks = self->_filterBanks;
  if (filterBanks)
  {
    MEMORY[0x1CCA95C10](filterBanks, 0x20C8093837F09);
  }

  v10.receiver = self;
  v10.super_class = VCPGaborFilter;
  [(VCPGaborFilter *)&v10 dealloc];
}

- (int)processWithFilterScaleIdx:(int)idx orientIdx:(int)orientIdx srcImage:(const float *)image outImage:(float *)outImage width:(unint64_t)width height:(unint64_t)height
{
  v11 = &self->_filterBanks[idx][orientIdx];
  vDSP_imgfir(image, height, width, v11->var0, outImage, v11->var2, v11->var1);
  vDSP_vabs(outImage, 1, outImage, 1, height * width);
  return 0;
}

- (int)createGaborFilterKernel:(Kernel *)kernel sigmaX:(float)x sigmaY:(float)y lambda:(float)lambda thetaInDegree:(float)degree phaseInDegree:(float)inDegree
{
  result = -50;
  if (y > 0.0 && x > 0.0 && lambda > 0.0)
  {
    kernelCopy = kernel;
    v14 = kernel->var2 >> 1;
    v15 = __sincosf_stret(degree * 0.017453);
    if ((v14 & 0x80000000) == 0)
    {
      v16 = 0;
      v17 = inDegree * 0.017453;
      v18 = x * x;
      v19 = y * y;
      v20 = 1.0 / (x * 6.28318531 * y);
      v21 = kernelCopy->var1 >> 1;
      v22 = -v14;
      if ((v21 & 0x80000000) == 0)
      {
        v23 = v21;
      }

      else
      {
        v23 = -v21;
      }

      v24 = v23 + 1;
      v25 = v23 + 1 + v21;
      v38 = 6.28318531 / lambda;
      do
      {
        if ((v21 & 0x80000000) == 0)
        {
          v26 = kernelCopy;
          v27 = &kernelCopy->var0[v16];
          v16 += v25;
          v28 = v21;
          v29 = -v21;
          do
          {
            v30 = v17;
            v31 = (v15.__sinval * v22) + (v29 * v15.__cosval);
            v32 = v18;
            v33 = v19;
            v34 = expf(-(((v31 * v31) / v18) + ((((v15.__cosval * v22) + (v28 * v15.__sinval)) * ((v15.__cosval * v22) + (v28 * v15.__sinval))) / v19))) * v20;
            v35 = v30 + (v38 * v31);
            v17 = v30;
            v36 = cosf(v35);
            v19 = v33;
            v18 = v32;
            *v27++ = v36 * v34;
            ++v29;
            --v28;
          }

          while (v24 != v29);
          kernelCopy = v26;
        }
      }

      while (v22++ != v14);
    }

    return 0;
  }

  return result;
}

@end