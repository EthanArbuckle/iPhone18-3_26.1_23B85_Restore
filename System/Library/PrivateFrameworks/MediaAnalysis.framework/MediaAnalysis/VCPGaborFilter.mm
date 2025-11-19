@interface VCPGaborFilter
- (VCPGaborFilter)initWithNumberOfScales:(int)numScales numOfOrientations:(int)numOrientations width:(unint64_t)a5 height:(unint64_t)a6;
- (int)createGaborFilterKernel:(Kernel *)a3 sigmaX:(float)a4 sigmaY:(float)a5 lambda:(float)a6 thetaInDegree:(float)a7 phaseInDegree:(float)a8;
- (int)processWithFilterScaleIdx:(int)a3 orientIdx:(int)a4 srcImage:(const float *)a5 outImage:(float *)a6 width:(unint64_t)a7 height:(unint64_t)a8;
- (void)dealloc;
@end

@implementation VCPGaborFilter

- (VCPGaborFilter)initWithNumberOfScales:(int)numScales numOfOrientations:(int)numOrientations width:(unint64_t)a5 height:(unint64_t)a6
{
  v34.receiver = self;
  v34.super_class = VCPGaborFilter;
  v10 = [(VCPGaborFilter *)&v34 init];
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    if ((a5 & a6 & 1) != 0 && (a6 | a5) >= 2)
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
          if ((a6 * a5) >> 62)
          {
            v17 = -1;
          }

          else
          {
            v17 = 4 * a6 * a5;
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
                v24->var1 = a5;
                v24->var2 = a6;
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

- (int)processWithFilterScaleIdx:(int)a3 orientIdx:(int)a4 srcImage:(const float *)a5 outImage:(float *)a6 width:(unint64_t)a7 height:(unint64_t)a8
{
  v11 = &self->_filterBanks[a3][a4];
  vDSP_imgfir(a5, a8, a7, v11->var0, a6, v11->var2, v11->var1);
  vDSP_vabs(a6, 1, a6, 1, a8 * a7);
  return 0;
}

- (int)createGaborFilterKernel:(Kernel *)a3 sigmaX:(float)a4 sigmaY:(float)a5 lambda:(float)a6 thetaInDegree:(float)a7 phaseInDegree:(float)a8
{
  result = -50;
  if (a5 > 0.0 && a4 > 0.0 && a6 > 0.0)
  {
    v13 = a3;
    v14 = a3->var2 >> 1;
    v15 = __sincosf_stret(a7 * 0.017453);
    if ((v14 & 0x80000000) == 0)
    {
      v16 = 0;
      v17 = a8 * 0.017453;
      v18 = a4 * a4;
      v19 = a5 * a5;
      v20 = 1.0 / (a4 * 6.28318531 * a5);
      v21 = v13->var1 >> 1;
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
      v38 = 6.28318531 / a6;
      do
      {
        if ((v21 & 0x80000000) == 0)
        {
          v26 = v13;
          v27 = &v13->var0[v16];
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
          v13 = v26;
        }
      }

      while (v22++ != v14);
    }

    return 0;
  }

  return result;
}

@end