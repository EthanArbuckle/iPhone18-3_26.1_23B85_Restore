@interface HalogenLdcmCalc
- (BOOL)_allocBuffers;
- (BOOL)_isClipped:(id)a3;
- (HalogenLdcmCalc)initWithSize:(int)a3;
- (double)_condetSnr:(double *)a3;
- (double)_mean:(double *)a3 ofSize:(unint64_t)a4;
- (double)_median:(double *)a3 ofSize:(unint64_t)a4;
- (double)_sineExtractor:(id)a3;
- (double)_snr:(id)a3 withGain:(double)a4 hasSignalLevel:(double *)a5 hasNoiseLevel:(double *)a6 hasCondetSnr:(double *)a7;
- (double)_variance:(double *)a3 ofSize:(unint64_t)a4;
- (int)doCalibration:(id)a3 withCurrentData:(id)a4;
- (int)doLiquidDetection:(id)a3 withCurrentData:(id)a4 isReceptacleEmpty:(BOOL)a5 isReceptacleWet:(BOOL)a6 withWetTransitionThreshold:(double)a7 withDryTransitionThreshold:(double)a8;
- (int)doPreCalibration:(id)a3 withCurrentData:(id)a4;
- (void)_allocBuffers;
- (void)_applyDigitalFilter:(id)a3;
- (void)_applyFractionalPhaseShift:(id)a3 withPhaseDelay:(double)a4;
- (void)_applyGain:(double)a3 toData:(id)a4;
- (void)_applyHanningWindow:(id)a3 withSize:(int)a4;
- (void)_applyTiaGain:(id)a3 toCurrentData:(id)a4;
- (void)_doHydraComp:(double)a3 withPhase:(double)a4;
- (void)_freeBuffers;
- (void)_goertzelSecondOrder:(id)a3 hasFftValue:(double *)a4 hasPhase:(double *)a5 withHanning:(BOOL)a6;
- (void)_rcSolver;
- (void)_reconstructSignal:(id)a3;
- (void)dealloc;
@end

@implementation HalogenLdcmCalc

- (HalogenLdcmCalc)initWithSize:(int)a3
{
  v8.receiver = self;
  v8.super_class = HalogenLdcmCalc;
  v4 = [(HalogenLdcmCalc *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_nSamples = a3;
    v4->_sizeofSample = 8;
    *&v4->_diffWindowSize = vadd_s32(vdup_n_s32(a3), -2);
    *&v4->_sampleRate = xmmword_25491C450;
    *&v4->_adcGain = xmmword_25491C460;
    *&v4->_hydraImpedance = xmmword_25491C470;
    *&v4->_hydraR = xmmword_25491C480;
    *&v4->_sanitycheckImpedanceLowerbound = xmmword_25491C490;
    *&v4->_sanitycheckPhaseLowerbound = xmmword_25491C4A0;
    *&v4->_sanitycheckVoltageGainCorrectionLowerbound = xmmword_25491C4B0;
    *&v4->_sanitycheckCurrentGainCorrectionLowerbound = xmmword_25491C4B0;
    *&v4->_sanitycheckCurrentPhaseCompensationLowerbound = xmmword_25491C4C0;
    if ([(HalogenLdcmCalc *)v4 _allocBuffers])
    {
      fftsetupD = vDSP_create_fftsetupD(0xCuLL, 0);
      v5->_fftContext = fftsetupD;
      if (fftsetupD)
      {
        return v5;
      }

      [HalogenLdcmCalc initWithSize:];
    }

    else
    {
      [HalogenLdcmCalc initWithSize:];
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  fftContext = self->_fftContext;
  if (fftContext)
  {
    vDSP_destroy_fftsetupD(fftContext);
  }

  [(HalogenLdcmCalc *)self _freeBuffers];
  v4.receiver = self;
  v4.super_class = HalogenLdcmCalc;
  [(HalogenLdcmCalc *)&v4 dealloc];
}

- (BOOL)_allocBuffers
{
  self->_tmp1DataBuffSize = self->_sizeofSample * self->_nSamples;
  v3 = [MEMORY[0x277CBEB28] dataWithLength:?];
  self->_tmp1DataBuff = v3;
  if (v3)
  {
    self->_tmp2DataBuffSize = self->_sizeofSample * self->_nSamples;
    v4 = [MEMORY[0x277CBEB28] dataWithLength:?];
    self->_tmp2DataBuff = v4;
    if (v4)
    {
      self->_tmp3DataBuffSize = self->_sizeofSample * self->_nSamples;
      v5 = [MEMORY[0x277CBEB28] dataWithLength:?];
      self->_tmp3DataBuff = v5;
      if (v5)
      {
        return 1;
      }

      else
      {
        [(HalogenLdcmCalc *)&v7 _allocBuffers];
        return v7;
      }
    }

    else
    {
      [(HalogenLdcmCalc *)&v8 _allocBuffers];
      return v8;
    }
  }

  else
  {
    [(HalogenLdcmCalc *)&v9 _allocBuffers];
    return v9;
  }
}

- (void)_freeBuffers
{
  tmp3DataBuff = self->_tmp3DataBuff;
}

- (int)doPreCalibration:(id)a3 withCurrentData:(id)a4
{
  [(HalogenLdcmCalc *)self _snr:a3 withGain:&self->_precalVoltageSignalLevel hasSignalLevel:&self->_precalVoltageNoiseLevel hasNoiseLevel:0 hasCondetSnr:self->_adcGain];
  v7 = v6;
  self->_precalVoltageSNR = v6;
  [(HalogenLdcmCalc *)self _snr:a4 withGain:&self->_precalCurrentSignalLevel hasSignalLevel:&self->_precalCurrentNoiseLevel hasNoiseLevel:0 hasCondetSnr:self->_adcGain];
  self->_precalCurrentSNR = v8;
  v9 = v7 < 26.0 || v8 < 26.0;
  v10 = vabdd_f64(v7, v8);
  if (!v9 && v10 < 0.25)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (void)_applyGain:(double)a3 toData:(id)a4
{
  v7 = [a4 bytes];
  v8 = [a4 length];
  sizeofSample = self->_sizeofSample;
  if (v8 >= sizeofSample)
  {
    v10 = 0;
    v11 = v8 / sizeofSample;
    do
    {
      *(v7 + 8 * v10) = *(v7 + 8 * v10) * a3;
      ++v10;
    }

    while (v11 > v10);
  }
}

- (void)_applyTiaGain:(id)a3 toCurrentData:(id)a4
{
  v6 = [a4 bytes];
  v7 = [a3 bytes];
  v8 = [a3 length];
  sizeofSample = self->_sizeofSample;
  if (v8 >= sizeofSample)
  {
    v10 = 0;
    v11 = v8 / sizeofSample;
    do
    {
      *(v6 + 8 * v10) = (*(v6 + 8 * v10) - *(v7 + 8 * v10)) / self->_tiaGain;
      ++v10;
    }

    while (v11 > v10);
  }
}

- (void)_applyHanningWindow:(id)a3 withSize:(int)a4
{
  LODWORD(v4) = a4;
  v5 = [a3 bytes];
  if (v4 >= 1)
  {
    v6 = v5;
    v7 = (v4 + 1);
    v4 = v4;
    v8 = 1;
    do
    {
      *v6 = (1.0 - cos(v8 * 6.28318531 / v7)) * 0.5 * *v6;
      ++v6;
      ++v8;
      --v4;
    }

    while (v4);
  }
}

- (void)_goertzelSecondOrder:(id)a3 hasFftValue:(double *)a4 hasPhase:(double *)a5 withHanning:(BOOL)a6
{
  v6 = a6;
  v11 = [a3 bytes];
  v12 = [a3 length];
  sizeofSample = self->_sizeofSample;
  v14 = v12 / sizeofSample;
  v15 = __sincos_stret(self->_signalFrequency / self->_sampleRate * 6.28318531);
  v16 = 0.0;
  v17 = 0.0;
  if (v12 >= sizeofSample)
  {
    v18 = 0;
    v19 = v15.__cosval + v15.__cosval;
    v20 = 0.0;
    do
    {
      v16 = v17;
      if (v6)
      {
        v21 = v19 * v17 + *(v11 + 8 * v18) * ((1.0 - cos((v18 + 1) * 6.28318531 / (v14 + 1))) * 0.5);
      }

      else
      {
        v21 = *(v11 + 8 * v18) + v19 * v17;
      }

      ++v18;
      v17 = v21 - v20;
      v20 = v16;
    }

    while (v14 > v18);
  }

  v22 = v17 - v16 * v15.__cosval;
  v23 = v15.__sinval * v16;
  if (a4)
  {
    v24 = sqrt(v23 * v23 + v22 * v22);
    *a4 = (v24 + v24) / v14;
  }

  if (a5)
  {
    *a5 = atan2(v23, v22) * 180.0 / 3.14159265;
  }
}

- (void)_applyFractionalPhaseShift:(id)a3 withPhaseDelay:(double)a4
{
  v25 = -1;
  v7 = [a3 bytes];
  v8 = -a4;
  [a3 appendBytes:&v7[objc_msgSend(a3 length:"length") / self->_sizeofSample - 1]];
  if (a4 >= 1.0)
  {
    v9 = vcvtpd_s64_f64(v8);
    v8 = -v9 - a4;
    v25 = *v7;
    if ((v9 & 0x80000000) != 0)
    {
      if (-v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = -v9;
      }

      do
      {
        [a3 replaceBytesInRange:0 withBytes:0 length:{&v25, self->_sizeofSample}];
        --v10;
      }

      while (v10);
    }
  }

  if (v8 >= 1.0)
  {
    v11 = vcvtmd_s64_f64(v8);
    v8 = v8 - v11;
    [a3 replaceBytesInRange:0 withBytes:self->_sizeofSample * v11 length:{0, 0}];
  }

  v12 = [a3 bytes];
  v13 = [a3 length];
  sizeofSample = self->_sizeofSample;
  v15 = v13 / sizeofSample;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0 && v15 != 1)
    {
      v19 = 0;
      v20 = v12 + 1;
      v21 = *v12;
      do
      {
        ++v19;
        v22 = *v20;
        *(v20 - 1) = (1.0 - v8) * v21 + *v20 * v8;
        ++v20;
        v21 = v22;
      }

      while (v15 - 1 > v19);
    }
  }

  else if (v15 >= 2)
  {
    v16 = *v12;
    for (i = 1; i < v15; ++i)
    {
      v18 = v12[i];
      v12[i] = v18 * (v8 + 1.0) - v16 * v8;
      v16 = v18;
    }
  }

  nSamples = self->_nSamples;
  if (v15 >= nSamples)
  {
    if (v15 > nSamples)
    {
      [a3 setLength:nSamples * sizeofSample];
    }
  }

  else
  {
    v24 = &v12[v15];
    v25 = *(v24 - 1);
    do
    {
      v12[v15] = *(v24 - 1);
      [a3 appendBytes:&v25 length:self->_sizeofSample];
      ++v15;
    }

    while (v15 < self->_nSamples);
  }
}

- (void)_doHydraComp:(double)a3 withPhase:(double)a4
{
  v6 = __sincos_stret(a4 * 3.14159265 / 180.0);
  v7 = 1.0 / self->_hydraImpedance;
  v8 = __divdc3(1.0, 0.0, v6.__cosval * a3 + v6.__sinval * a3 * 0.0, v6.__sinval * a3);
  v10 = __divdc3(1.0, 0.0, v8 - v7 - self->_signalFrequency * 0.0 * 3.3e-11, v9 + self->_signalFrequency * -1.57079633 * 3.3e-11);
  v12 = v11;
  self->_compensatedImpedance = MEMORY[0x259C1E960]();
  v13.c[0] = v10;
  v13.c[1] = v12;
  self->_compensatedPhase = carg(v13) / 3.14159265 * 180.0;
}

- (BOOL)_isClipped:(id)a3
{
  v4 = [a3 bytes];
  v5 = [(NSMutableData *)self->_tmp1DataBuff bytes];
  v6 = [(NSMutableData *)self->_tmp2DataBuff bytes];
  v7 = [(NSMutableData *)self->_tmp3DataBuff bytes];
  diffWindowSize = self->_diffWindowSize;
  if (diffWindowSize <= 0)
  {
    v23 = 0;
    v14 = diffWindowSize - 199;
    goto LABEL_27;
  }

  v9 = (v4 + 8);
  v10 = self->_diffWindowSize;
  v11 = v5;
  do
  {
    *v11++ = *v9 - *(v9 - 1);
    ++v9;
    --v10;
  }

  while (v10);
  v12 = 0;
  v13 = (v6 + 792);
  v14 = diffWindowSize - 199;
  v15 = 0.0;
  do
  {
    v16 = 0;
    *(v6 + 8 * v12) = 0;
    v17 = v5;
    v18 = v12;
    v19 = 0.0;
    do
    {
      if (v16)
      {
        if (v18 <= 0x64)
        {
          v20 = v17;
          if (v16 < self->_clipDetectWindowSize)
          {
            goto LABEL_12;
          }
        }
      }

      else if (v12 <= 0x64)
      {
        v20 = v5;
        if (self->_clipDetectWindowSize >= 1)
        {
LABEL_12:
          v19 = v19 + fir1[v18] * *v20;
          *(v6 + 8 * v12) = v19;
        }
      }

      ++v16;
      --v18;
      ++v17;
    }

    while (v18 != -1);
    if (v12 > 0x62 && v19 > v15 && v12 < self->_clipDetectWindowSize - 100)
    {
      v15 = v19;
    }

    ++v12;
  }

  while (v12 != diffWindowSize);
  if (diffWindowSize < 200)
  {
    v23 = 0;
  }

  else
  {
    v22 = (diffWindowSize - 199);
    do
    {
      *v13 = *v13 / v15;
      ++v13;
      --v22;
    }

    while (v22);
    v23 = 1;
  }

LABEL_27:
  v24 = llround(self->_sampleRate / self->_signalFrequency * 0.5);
  v25 = v24 / 2;
  v26 = v24 % 2;
  if (v23)
  {
    v27 = 0;
    v28 = v25 + v26 - 1;
    v29 = diffWindowSize - 200;
    v30 = v24;
    v31 = v24 / -2;
    do
    {
      LODWORD(v32) = v28 + v27;
      if (v28 + v27 >= v29)
      {
        v32 = v29;
      }

      else
      {
        v32 = v32;
      }

      v33 = 0.0;
      if (((v27 - v25) & ~((v27 - v25) >> 31)) <= v32)
      {
        v34 = v31 & ~(v31 >> 31);
        v35 = v34 - 1;
        v36 = (v6 + 792 + 8 * v34);
        do
        {
          v37 = *v36++;
          v33 = v33 + fabs(v37);
          ++v35;
        }

        while (v35 < v32);
      }

      *(v7 + 8 * v27++) = v33 / v30;
      ++v31;
    }

    while (v27 != v14);
  }

  v38 = v25 + v26;
  v39 = (diffWindowSize - 2 * v38 - 198);
  v40 = *(v7 + 8 * v38);
  if (v39 >= 2)
  {
    v41 = (v7 + 8 * v38 + 8);
    v42 = v39 - 1;
    do
    {
      v43 = *v41++;
      v44 = v43;
      if (v40 > v43)
      {
        v40 = v44;
      }

      --v42;
    }

    while (v42);
  }

  self->_clippingScore = v40;
  return v40 < self->_movesumClipThreshold;
}

- (void)_rcSolver
{
  compensatedImpedance = self->_compensatedImpedance;
  v4 = __sincos_stret(self->_compensatedPhase * 3.14159265 / 180.0);
  signalFrequency = self->_signalFrequency;
  v6 = signalFrequency * 6.28318531 * self->_ldcmAcCap;
  v7 = compensatedImpedance * v4.__cosval + compensatedImpedance * v4.__sinval * 0.0 - (self->_hydraR - 0.0 / v6);
  v8 = compensatedImpedance * v4.__sinval + 1.0 / v6;
  v9 = v7 + v8 * v8 / v7;
  self->_resistanceInOhms = v9;
  self->_capacitanceInNanoF = v8 / (signalFrequency * ((v7 * v9 + v7 * v9) * 3.14159265)) * -1000000000.0;
}

- (double)_snr:(id)a3 withGain:(double)a4 hasSignalLevel:(double *)a5 hasNoiseLevel:(double *)a6 hasCondetSnr:(double *)a7
{
  v12 = [a3 bytes];
  tmp1DataBuff = self->_tmp1DataBuff;
  v14 = [(NSMutableData *)tmp1DataBuff bytes];
  v15 = [(NSMutableData *)self->_tmp2DataBuff bytes];
  v16 = [(NSMutableData *)self->_tmp3DataBuff bytes];
  v25.realp = v14;
  v25.imagp = v15;
  memcpy(v14, v12, self->_sizeofSample << 11);
  bzero(v15, self->_sizeofSample << 11);
  [(HalogenLdcmCalc *)self _applyGain:tmp1DataBuff toData:a4, v14, v15];
  [(HalogenLdcmCalc *)self _applyHanningWindow:tmp1DataBuff withSize:2048];
  vDSP_fft_zripD(self->_fftContext, &v25, 1, 0xCuLL, 1);
  for (i = 0; i != 1024; ++i)
  {
    v14[i] = v14[i] * 0.000244140625;
    v18 = v15[i] * 0.000244140625;
    v15[i] = v18;
    *(v16 + i * 8) = v18 * v18 + v14[i] * v14[i];
  }

  v19 = 0.0;
  for (j = 32; j != 56; j += 8)
  {
    v19 = v19 + *(v16 + j);
  }

  v21 = 2.22507386e-308;
  for (k = 56; k != 0x2000; k += 8)
  {
    v21 = v21 + *(v16 + k);
  }

  if (a5)
  {
    *a5 = v19;
  }

  if (a6)
  {
    *a6 = v21;
  }

  if (a7)
  {
    [(HalogenLdcmCalc *)self _condetSnr:v16];
    *a7 = v23;
  }

  return log10(v19 / v21) * 10.0;
}

- (double)_condetSnr:(double *)a3
{
  if (!a3)
  {
    return 2.22507386e-308;
  }

  v4 = self->_sampleRate * 0.00048828125;
  v5 = a3 - 2;
  v6 = 25;
  v7 = 25.0;
  v8 = 2.22507386e-308;
  do
  {
    v9 = llround(v4 * v7);
    v10 = 0.0;
    if (v9 <= 23999)
    {
      v11 = v9;
      do
      {
        v12 = llround(v11 / v4);
        if (v12 <= 2)
        {
          v13 = 2;
        }

        else
        {
          v13 = v12;
        }

        if (v12 >= 1021)
        {
          v12 = 1021;
        }

        v14 = (v12 + 2);
        if (v13 - 2 <= v14)
        {
          v15 = v13 - 3;
          v16 = &v5[v13];
          do
          {
            v17 = *v16++;
            v10 = v10 + v17;
            ++v15;
          }

          while (v15 < v14);
        }

        v11 += v9;
      }

      while (v11 < 24000);
    }

    v18 = llround(v9 / v4);
    if (v18 > 1025)
    {
      v22 = 2.22507386e-308;
    }

    else
    {
      v19 = v18 - 2;
      v20 = v18 - 2 - 1;
      v21 = &a3[v19];
      v22 = 2.22507386e-308;
      do
      {
        v23 = *v21++;
        v22 = v22 + v23;
        ++v20;
      }

      while (v20 < 1023);
    }

    v24 = log10(v10 / (v22 - v10)) * 10.0;
    if (v24 > v8)
    {
      v8 = v24;
    }

    v7 = v7 + 1.0;
    ++v6;
  }

  while (v6 != 32);
  return v8;
}

- (double)_mean:(double *)a3 ofSize:(unint64_t)a4
{
  v4 = 0.0;
  if (a4)
  {
    v5 = a4;
    do
    {
      v6 = *a3++;
      v4 = v4 + v6;
      --v5;
    }

    while (v5);
  }

  return v4 / a4;
}

- (double)_variance:(double *)a3 ofSize:(unint64_t)a4
{
  [HalogenLdcmCalc _mean:"_mean:ofSize:" ofSize:?];
  v7 = 0.0;
  if (a4)
  {
    v8 = a4;
    do
    {
      v9 = *a3++;
      v7 = v7 + (v9 - v6) * (v9 - v6);
      --v8;
    }

    while (v8);
  }

  return v7 / (a4 - 1);
}

- (double)_median:(double *)a3 ofSize:(unint64_t)a4
{
  qsort(a3, a4, self->_sizeofSample, compare);
  v6 = &a3[a4 >> 1];
  result = *v6;
  if ((a4 & 1) == 0)
  {
    return (result + *(v6 - 1)) * 0.5;
  }

  return result;
}

- (void)_reconstructSignal:(id)a3
{
  v5 = [a3 bytes];
  v6 = [(NSMutableData *)self->_tmp1DataBuff bytes];
  v7 = [(NSMutableData *)self->_tmp2DataBuff bytes];
  __dst = [(NSMutableData *)self->_tmp3DataBuff bytes];
  v8 = [a3 length];
  sizeofSample = self->_sizeofSample;
  v10 = v8 / sizeofSample;
  v11 = v8 / sizeofSample - 1;
  if (v8 >= sizeofSample)
  {
    v12 = 0;
    do
    {
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      v14 = (v13 - 1);
      v15 = v12 + 1;
      if (v10 > v12 + 1)
      {
        v16 = v12 + 1;
      }

      else
      {
        v16 = v8 / sizeofSample - 1;
      }

      [(HalogenLdcmCalc *)self _mean:&v5[8 * v14] ofSize:v16 - v14 + 1];
      v6[v12++] = v17;
    }

    while (v10 > v15);
  }

  if (v8 / sizeofSample != 1)
  {
    v18 = 0;
    v19 = v6 + 1;
    v20 = *v6;
    do
    {
      ++v18;
      v21 = *v19;
      *(v19 - 1) = *v19 - v20;
      ++v19;
      v20 = v21;
    }

    while (v11 > v18);
  }

  v6[v11] = 0.0;
  if (v8 >= sizeofSample)
  {
    v22 = 0;
    do
    {
      if (v22 <= 3)
      {
        v23 = 3;
      }

      else
      {
        v23 = v22;
      }

      v24 = (v23 - 3);
      v25 = v22 + 3;
      if (v10 <= v22 + 3)
      {
        v25 = v8 / sizeofSample - 1;
      }

      [(HalogenLdcmCalc *)self _variance:&v6[v24] ofSize:v25 - v24 + 1];
      v7[v22++] = v26;
    }

    while (v10 > v22);
    if (v8 >= sizeofSample)
    {
      v27 = 0;
      do
      {
        *&v7[v27] = sqrt(*&v7[v27]);
        ++v27;
      }

      while (v10 > v27);
    }
  }

  memcpy(__dst, v7, v10 * self->_sizeofSample);
  [(HalogenLdcmCalc *)self _median:__dst ofSize:v10];
  v29 = v28;
  [(HalogenLdcmCalc *)self _stdev:v7 ofSize:v10];
  if (v8 < sizeofSample)
  {
    goto LABEL_30;
  }

  v31 = 0;
  v32 = v29 + v30 * 1.5;
  do
  {
    if (fabs(*&v7[v31]) >= v32)
    {
      v6[v31] = 0.0;
    }

    ++v31;
  }

  while (v10 > v31);
  if (v8 >= sizeofSample)
  {
    v34 = 0;
    v35 = 0.0;
    do
    {
      v35 = v35 + v6[v34];
      v6[v34++] = v35;
    }

    while (v10 > v34);
    [(HalogenLdcmCalc *)self _mean:v6 ofSize:v10];
    if (v8 >= sizeofSample)
    {
      v37 = 0;
      do
      {
        v6[v37] = v6[v37] - v36;
        ++v37;
      }

      while (v10 > v37);
    }
  }

  else
  {
LABEL_30:
    [(HalogenLdcmCalc *)self _mean:v6 ofSize:v10];
  }

  v33 = v10 * self->_sizeofSample;

  memcpy(v5, v6, v33);
}

- (double)_sineExtractor:(id)a3
{
  v5 = [a3 bytes];
  v6 = [a3 length] / self->_sizeofSample;
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 0;
    v9 = v5 + 1;
    v10 = *v5;
    do
    {
      ++v8;
      v11 = *v9;
      *(v9 - 1) = *v9 - v10;
      ++v9;
      v10 = v11;
    }

    while (v7 > v8);
  }

  v5[v7] = 0.0;
  v13 = NAN;
  [(HalogenLdcmCalc *)self _goertzelSecondOrder:a3 hasFftValue:0 hasPhase:&v13 withHanning:0];
  return (v13 + -90.0 + (v6 + 2) / (self->_sampleRate / self->_signalFrequency) * -360.0) * 3.14159265 / 180.0;
}

- (void)_applyDigitalFilter:(id)a3
{
  v5 = [a3 bytes];
  v6 = [a3 length];
  sizeofSample = self->_sizeofSample;
  [(HalogenLdcmCalc *)self _mean:v5 ofSize:v6 / sizeofSample];
  v9 = v8;
  *&v14 = NAN;
  [(HalogenLdcmCalc *)self _goertzelSecondOrder:a3 hasFftValue:&v14 hasPhase:0 withHanning:0];
  [(HalogenLdcmCalc *)self _reconstructSignal:a3];
  [(HalogenLdcmCalc *)self _sineExtractor:a3];
  if (v6 >= sizeofSample)
  {
    v11 = v10;
    v12 = 0;
    v13 = *&v14;
    do
    {
      *(v5 + 8 * v12) = v9 + v13 * cos(v11 + self->_signalFrequency * 6.28318531 * (v12 / self->_sampleRate));
      ++v12;
    }

    while (v6 / sizeofSample > v12);
  }
}

- (int)doCalibration:(id)a3 withCurrentData:(id)a4
{
  [HalogenLdcmCalc _snr:"_snr:withGain:hasSignalLevel:hasNoiseLevel:hasCondetSnr:" withGain:self->_adcGain hasSignalLevel:? hasNoiseLevel:? hasCondetSnr:?];
  v7 = v6;
  self->_calVoltageSNR = v6;
  [(HalogenLdcmCalc *)self _snr:a4 withGain:&self->_calCurrentSignalLevel hasSignalLevel:&self->_calCurrentNoiseLevel hasNoiseLevel:0 hasCondetSnr:self->_adcGain];
  v9 = v8;
  self->_calCurrentSNR = v8;
  v16 = NAN;
  v17 = NAN;
  [OUTLINED_FUNCTION_1_4() _goertzelSecondOrder:? hasFftValue:? hasPhase:? withHanning:?];
  v14 = NAN;
  v15 = NAN;
  [(HalogenLdcmCalc *)self _goertzelSecondOrder:a4 hasFftValue:&v15 hasPhase:&v14 withHanning:1];
  v10 = (v17 + v15) * 0.5;
  v11 = v10 / v15;
  self->_voltageGainCorrection = v10 / v17;
  self->_currentGainCorrection = v11;
  self->_currentPhaseCompensation = v16 - v14;
  v12 = v7 < 26.0 || v9 < 26.0;
  if (v12 || vabdd_f64(v7, v9) >= 0.25)
  {
    return 2;
  }

  if ([(HalogenLdcmCalc *)self isBoundViolation_voltageGainCorrection])
  {
    return 1;
  }

  if ([(HalogenLdcmCalc *)self isBoundViolation_currentGainCorrection])
  {
    return 1;
  }

  result = [(HalogenLdcmCalc *)self isBoundViolation_currentPhaseCompensation];
  if (result)
  {
    return 1;
  }

  return result;
}

- (int)doLiquidDetection:(id)a3 withCurrentData:(id)a4 isReceptacleEmpty:(BOOL)a5 isReceptacleWet:(BOOL)a6 withWetTransitionThreshold:(double)a7 withDryTransitionThreshold:(double)a8
{
  v8 = a6;
  v9 = a5;
  v29 = *MEMORY[0x277D85DE8];
  self->_capacitanceInNanoF = 0.0;
  *&self->_compensatedImpedance = 0u;
  *&self->_clippingScore = 0u;
  *&self->_goertzelImpedance = 0u;
  [(HalogenLdcmCalc *)self _applyGain:a4 toData:self->_adcGain];
  adcGain = self->_adcGain;
  [OUTLINED_FUNCTION_2_4() _applyGain:? toData:?];
  v14 = self->_currentPhaseCompensation / -360.0 / self->_signalFrequency * self->_sampleRate;
  [OUTLINED_FUNCTION_1_4() _applyFractionalPhaseShift:? withPhaseDelay:?];
  currentGainCorrection = self->_currentGainCorrection;
  [OUTLINED_FUNCTION_1_4() _applyGain:? toData:?];
  voltageGainCorrection = self->_voltageGainCorrection;
  [OUTLINED_FUNCTION_2_4() _applyGain:? toData:?];
  v17 = [OUTLINED_FUNCTION_1_4() _isClipped:?];
  [OUTLINED_FUNCTION_2_4() _applyTiaGain:? toCurrentData:?];
  [OUTLINED_FUNCTION_2_4() _snr:? withGain:? hasSignalLevel:? hasNoiseLevel:? hasCondetSnr:?];
  v19 = v18;
  self->_measurementVoltageSNR = v18;
  [OUTLINED_FUNCTION_1_4() _snr:? withGain:? hasSignalLevel:? hasNoiseLevel:? hasCondetSnr:?];
  v21 = v20;
  self->_measurementCurrentSNR = v20;
  if (v9 && self->_measurementCondetSNR >= 1.0)
  {
    [(HalogenLdcmCalc *)self setIsDigitalFilterTrigger:1];
    [OUTLINED_FUNCTION_1_4() _applyDigitalFilter:?];
  }

  else
  {
    [(HalogenLdcmCalc *)self setIsDigitalFilterTrigger:0];
  }

  [OUTLINED_FUNCTION_2_4() _goertzelSecondOrder:? hasFftValue:? hasPhase:? withHanning:?];
  [OUTLINED_FUNCTION_1_4() _goertzelSecondOrder:? hasFftValue:? hasPhase:? withHanning:?];
  self->_goertzelImpedance = NAN / NAN;
  v22 = NAN - NAN;
  if (NAN - NAN > 0.0)
  {
    v22 = fmod(v22, 360.0) + -360.0;
  }

  self->_goertzelPhase = v22;
  [(HalogenLdcmCalc *)self _doHydraComp:NAN / NAN withPhase:-1, -1];
  [(HalogenLdcmCalc *)self _rcSolver];
  if (v19 >= 26.0)
  {
    result = 3;
  }

  else
  {
    result = 8;
  }

  if (!((v19 < 26.0) | v17 & 1))
  {
    if ([(HalogenLdcmCalc *)self isLowerBoundViolation_goertzelImpedance]|| [(HalogenLdcmCalc *)self isUpperBoundViolation_goertzelImpedance]|| [(HalogenLdcmCalc *)self isLowerBoundViolation_goertzelPhase]|| [(HalogenLdcmCalc *)self isUpperBoundViolation_goertzelPhase])
    {
      result = 0;
    }

    else if (v21 >= 7.0 || self->_isDigitalFilterTrigger)
    {
      if (!v8)
      {
        a8 = a7;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v26 = a8;
        v27 = 1024;
        v28 = v8;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenLdcmCalc:doLiquidDetection capacitanceThreshholdNanoF = %f, isReceptacleWet: %d", buf, 0x12u);
      }

      if (self->_capacitanceInNanoF <= a8)
      {
        result = 1;
      }

      else
      {
        result = 2;
      }
    }

    else
    {
      result = 8;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)initWithSize:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_5(&dword_2548F1000, MEMORY[0x277D86220], v0, "HalogenLdcmCalc:_allocBuffers() failed", v1, v2, v3, v4, 0);
  }
}

- (void)initWithSize:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_5(&dword_2548F1000, MEMORY[0x277D86220], v0, "HalogenLdcmCalc:vDSP_create_fftsetupD() failed", v1, v2, v3, v4, 0);
  }
}

- (void)_allocBuffers
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_5(&dword_2548F1000, MEMORY[0x277D86220], v2, "HalogenLdcmCalc:Failed to alloc _tmp1DataBuff", v3, v4, v5, v6, 0);
  }

  *a1 = 0;
}

@end