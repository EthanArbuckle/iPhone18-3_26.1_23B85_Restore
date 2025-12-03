@interface HalogenLdcmCalc
- (BOOL)_allocBuffers;
- (BOOL)_isClipped:(id)clipped;
- (HalogenLdcmCalc)initWithSize:(int)size;
- (double)_condetSnr:(double *)snr;
- (double)_mean:(double *)_mean ofSize:(unint64_t)size;
- (double)_median:(double *)_median ofSize:(unint64_t)size;
- (double)_sineExtractor:(id)extractor;
- (double)_snr:(id)_snr withGain:(double)gain hasSignalLevel:(double *)level hasNoiseLevel:(double *)noiseLevel hasCondetSnr:(double *)snr;
- (double)_variance:(double *)_variance ofSize:(unint64_t)size;
- (int)doCalibration:(id)calibration withCurrentData:(id)data;
- (int)doLiquidDetection:(id)detection withCurrentData:(id)data isReceptacleEmpty:(BOOL)empty isReceptacleWet:(BOOL)wet withWetTransitionThreshold:(double)threshold withDryTransitionThreshold:(double)transitionThreshold;
- (int)doPreCalibration:(id)calibration withCurrentData:(id)data;
- (void)_allocBuffers;
- (void)_applyDigitalFilter:(id)filter;
- (void)_applyFractionalPhaseShift:(id)shift withPhaseDelay:(double)delay;
- (void)_applyGain:(double)gain toData:(id)data;
- (void)_applyHanningWindow:(id)window withSize:(int)size;
- (void)_applyTiaGain:(id)gain toCurrentData:(id)data;
- (void)_doHydraComp:(double)comp withPhase:(double)phase;
- (void)_freeBuffers;
- (void)_goertzelSecondOrder:(id)order hasFftValue:(double *)value hasPhase:(double *)phase withHanning:(BOOL)hanning;
- (void)_rcSolver;
- (void)_reconstructSignal:(id)signal;
- (void)dealloc;
@end

@implementation HalogenLdcmCalc

- (HalogenLdcmCalc)initWithSize:(int)size
{
  v8.receiver = self;
  v8.super_class = HalogenLdcmCalc;
  v4 = [(HalogenLdcmCalc *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_nSamples = size;
    v4->_sizeofSample = 8;
    *&v4->_diffWindowSize = vadd_s32(vdup_n_s32(size), -2);
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

- (int)doPreCalibration:(id)calibration withCurrentData:(id)data
{
  [(HalogenLdcmCalc *)self _snr:calibration withGain:&self->_precalVoltageSignalLevel hasSignalLevel:&self->_precalVoltageNoiseLevel hasNoiseLevel:0 hasCondetSnr:self->_adcGain];
  v7 = v6;
  self->_precalVoltageSNR = v6;
  [(HalogenLdcmCalc *)self _snr:data withGain:&self->_precalCurrentSignalLevel hasSignalLevel:&self->_precalCurrentNoiseLevel hasNoiseLevel:0 hasCondetSnr:self->_adcGain];
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

- (void)_applyGain:(double)gain toData:(id)data
{
  bytes = [data bytes];
  v8 = [data length];
  sizeofSample = self->_sizeofSample;
  if (v8 >= sizeofSample)
  {
    v10 = 0;
    v11 = v8 / sizeofSample;
    do
    {
      *(bytes + 8 * v10) = *(bytes + 8 * v10) * gain;
      ++v10;
    }

    while (v11 > v10);
  }
}

- (void)_applyTiaGain:(id)gain toCurrentData:(id)data
{
  bytes = [data bytes];
  bytes2 = [gain bytes];
  v8 = [gain length];
  sizeofSample = self->_sizeofSample;
  if (v8 >= sizeofSample)
  {
    v10 = 0;
    v11 = v8 / sizeofSample;
    do
    {
      *(bytes + 8 * v10) = (*(bytes + 8 * v10) - *(bytes2 + 8 * v10)) / self->_tiaGain;
      ++v10;
    }

    while (v11 > v10);
  }
}

- (void)_applyHanningWindow:(id)window withSize:(int)size
{
  LODWORD(v4) = size;
  bytes = [window bytes];
  if (v4 >= 1)
  {
    v6 = bytes;
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

- (void)_goertzelSecondOrder:(id)order hasFftValue:(double *)value hasPhase:(double *)phase withHanning:(BOOL)hanning
{
  hanningCopy = hanning;
  bytes = [order bytes];
  v12 = [order length];
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
      if (hanningCopy)
      {
        v21 = v19 * v17 + *(bytes + 8 * v18) * ((1.0 - cos((v18 + 1) * 6.28318531 / (v14 + 1))) * 0.5);
      }

      else
      {
        v21 = *(bytes + 8 * v18) + v19 * v17;
      }

      ++v18;
      v17 = v21 - v20;
      v20 = v16;
    }

    while (v14 > v18);
  }

  v22 = v17 - v16 * v15.__cosval;
  v23 = v15.__sinval * v16;
  if (value)
  {
    v24 = sqrt(v23 * v23 + v22 * v22);
    *value = (v24 + v24) / v14;
  }

  if (phase)
  {
    *phase = atan2(v23, v22) * 180.0 / 3.14159265;
  }
}

- (void)_applyFractionalPhaseShift:(id)shift withPhaseDelay:(double)delay
{
  v25 = -1;
  bytes = [shift bytes];
  v8 = -delay;
  [shift appendBytes:&bytes[objc_msgSend(shift length:"length") / self->_sizeofSample - 1]];
  if (delay >= 1.0)
  {
    v9 = vcvtpd_s64_f64(v8);
    v8 = -v9 - delay;
    v25 = *bytes;
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
        [shift replaceBytesInRange:0 withBytes:0 length:{&v25, self->_sizeofSample}];
        --v10;
      }

      while (v10);
    }
  }

  if (v8 >= 1.0)
  {
    v11 = vcvtmd_s64_f64(v8);
    v8 = v8 - v11;
    [shift replaceBytesInRange:0 withBytes:self->_sizeofSample * v11 length:{0, 0}];
  }

  bytes2 = [shift bytes];
  v13 = [shift length];
  sizeofSample = self->_sizeofSample;
  v15 = v13 / sizeofSample;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0 && v15 != 1)
    {
      v19 = 0;
      v20 = bytes2 + 1;
      v21 = *bytes2;
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
    v16 = *bytes2;
    for (i = 1; i < v15; ++i)
    {
      v18 = bytes2[i];
      bytes2[i] = v18 * (v8 + 1.0) - v16 * v8;
      v16 = v18;
    }
  }

  nSamples = self->_nSamples;
  if (v15 >= nSamples)
  {
    if (v15 > nSamples)
    {
      [shift setLength:nSamples * sizeofSample];
    }
  }

  else
  {
    v24 = &bytes2[v15];
    v25 = *(v24 - 1);
    do
    {
      bytes2[v15] = *(v24 - 1);
      [shift appendBytes:&v25 length:self->_sizeofSample];
      ++v15;
    }

    while (v15 < self->_nSamples);
  }
}

- (void)_doHydraComp:(double)comp withPhase:(double)phase
{
  v6 = __sincos_stret(phase * 3.14159265 / 180.0);
  v7 = 1.0 / self->_hydraImpedance;
  v8 = __divdc3(1.0, 0.0, v6.__cosval * comp + v6.__sinval * comp * 0.0, v6.__sinval * comp);
  v10 = __divdc3(1.0, 0.0, v8 - v7 - self->_signalFrequency * 0.0 * 3.3e-11, v9 + self->_signalFrequency * -1.57079633 * 3.3e-11);
  v12 = v11;
  self->_compensatedImpedance = MEMORY[0x259C1E960]();
  v13.c[0] = v10;
  v13.c[1] = v12;
  self->_compensatedPhase = carg(v13) / 3.14159265 * 180.0;
}

- (BOOL)_isClipped:(id)clipped
{
  bytes = [clipped bytes];
  bytes2 = [(NSMutableData *)self->_tmp1DataBuff bytes];
  bytes3 = [(NSMutableData *)self->_tmp2DataBuff bytes];
  bytes4 = [(NSMutableData *)self->_tmp3DataBuff bytes];
  diffWindowSize = self->_diffWindowSize;
  if (diffWindowSize <= 0)
  {
    v23 = 0;
    v14 = diffWindowSize - 199;
    goto LABEL_27;
  }

  v9 = (bytes + 8);
  v10 = self->_diffWindowSize;
  v11 = bytes2;
  do
  {
    *v11++ = *v9 - *(v9 - 1);
    ++v9;
    --v10;
  }

  while (v10);
  v12 = 0;
  v13 = (bytes3 + 792);
  v14 = diffWindowSize - 199;
  v15 = 0.0;
  do
  {
    v16 = 0;
    *(bytes3 + 8 * v12) = 0;
    v17 = bytes2;
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
        v20 = bytes2;
        if (self->_clipDetectWindowSize >= 1)
        {
LABEL_12:
          v19 = v19 + fir1[v18] * *v20;
          *(bytes3 + 8 * v12) = v19;
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
        v36 = (bytes3 + 792 + 8 * v34);
        do
        {
          v37 = *v36++;
          v33 = v33 + fabs(v37);
          ++v35;
        }

        while (v35 < v32);
      }

      *(bytes4 + 8 * v27++) = v33 / v30;
      ++v31;
    }

    while (v27 != v14);
  }

  v38 = v25 + v26;
  v39 = (diffWindowSize - 2 * v38 - 198);
  v40 = *(bytes4 + 8 * v38);
  if (v39 >= 2)
  {
    v41 = (bytes4 + 8 * v38 + 8);
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

- (double)_snr:(id)_snr withGain:(double)gain hasSignalLevel:(double *)level hasNoiseLevel:(double *)noiseLevel hasCondetSnr:(double *)snr
{
  bytes = [_snr bytes];
  tmp1DataBuff = self->_tmp1DataBuff;
  bytes2 = [(NSMutableData *)tmp1DataBuff bytes];
  bytes3 = [(NSMutableData *)self->_tmp2DataBuff bytes];
  bytes4 = [(NSMutableData *)self->_tmp3DataBuff bytes];
  v25.realp = bytes2;
  v25.imagp = bytes3;
  memcpy(bytes2, bytes, self->_sizeofSample << 11);
  bzero(bytes3, self->_sizeofSample << 11);
  [(HalogenLdcmCalc *)self _applyGain:tmp1DataBuff toData:gain, bytes2, bytes3];
  [(HalogenLdcmCalc *)self _applyHanningWindow:tmp1DataBuff withSize:2048];
  vDSP_fft_zripD(self->_fftContext, &v25, 1, 0xCuLL, 1);
  for (i = 0; i != 1024; ++i)
  {
    bytes2[i] = bytes2[i] * 0.000244140625;
    v18 = bytes3[i] * 0.000244140625;
    bytes3[i] = v18;
    *(bytes4 + i * 8) = v18 * v18 + bytes2[i] * bytes2[i];
  }

  v19 = 0.0;
  for (j = 32; j != 56; j += 8)
  {
    v19 = v19 + *(bytes4 + j);
  }

  v21 = 2.22507386e-308;
  for (k = 56; k != 0x2000; k += 8)
  {
    v21 = v21 + *(bytes4 + k);
  }

  if (level)
  {
    *level = v19;
  }

  if (noiseLevel)
  {
    *noiseLevel = v21;
  }

  if (snr)
  {
    [(HalogenLdcmCalc *)self _condetSnr:bytes4];
    *snr = v23;
  }

  return log10(v19 / v21) * 10.0;
}

- (double)_condetSnr:(double *)snr
{
  if (!snr)
  {
    return 2.22507386e-308;
  }

  v4 = self->_sampleRate * 0.00048828125;
  v5 = snr - 2;
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
      v21 = &snr[v19];
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

- (double)_mean:(double *)_mean ofSize:(unint64_t)size
{
  v4 = 0.0;
  if (size)
  {
    sizeCopy = size;
    do
    {
      v6 = *_mean++;
      v4 = v4 + v6;
      --sizeCopy;
    }

    while (sizeCopy);
  }

  return v4 / size;
}

- (double)_variance:(double *)_variance ofSize:(unint64_t)size
{
  [HalogenLdcmCalc _mean:"_mean:ofSize:" ofSize:?];
  v7 = 0.0;
  if (size)
  {
    sizeCopy = size;
    do
    {
      v9 = *_variance++;
      v7 = v7 + (v9 - v6) * (v9 - v6);
      --sizeCopy;
    }

    while (sizeCopy);
  }

  return v7 / (size - 1);
}

- (double)_median:(double *)_median ofSize:(unint64_t)size
{
  qsort(_median, size, self->_sizeofSample, compare);
  v6 = &_median[size >> 1];
  result = *v6;
  if ((size & 1) == 0)
  {
    return (result + *(v6 - 1)) * 0.5;
  }

  return result;
}

- (void)_reconstructSignal:(id)signal
{
  bytes = [signal bytes];
  bytes2 = [(NSMutableData *)self->_tmp1DataBuff bytes];
  bytes3 = [(NSMutableData *)self->_tmp2DataBuff bytes];
  __dst = [(NSMutableData *)self->_tmp3DataBuff bytes];
  v8 = [signal length];
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

      [(HalogenLdcmCalc *)self _mean:&bytes[8 * v14] ofSize:v16 - v14 + 1];
      bytes2[v12++] = v17;
    }

    while (v10 > v15);
  }

  if (v8 / sizeofSample != 1)
  {
    v18 = 0;
    v19 = bytes2 + 1;
    v20 = *bytes2;
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

  bytes2[v11] = 0.0;
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

      [(HalogenLdcmCalc *)self _variance:&bytes2[v24] ofSize:v25 - v24 + 1];
      bytes3[v22++] = v26;
    }

    while (v10 > v22);
    if (v8 >= sizeofSample)
    {
      v27 = 0;
      do
      {
        *&bytes3[v27] = sqrt(*&bytes3[v27]);
        ++v27;
      }

      while (v10 > v27);
    }
  }

  memcpy(__dst, bytes3, v10 * self->_sizeofSample);
  [(HalogenLdcmCalc *)self _median:__dst ofSize:v10];
  v29 = v28;
  [(HalogenLdcmCalc *)self _stdev:bytes3 ofSize:v10];
  if (v8 < sizeofSample)
  {
    goto LABEL_30;
  }

  v31 = 0;
  v32 = v29 + v30 * 1.5;
  do
  {
    if (fabs(*&bytes3[v31]) >= v32)
    {
      bytes2[v31] = 0.0;
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
      v35 = v35 + bytes2[v34];
      bytes2[v34++] = v35;
    }

    while (v10 > v34);
    [(HalogenLdcmCalc *)self _mean:bytes2 ofSize:v10];
    if (v8 >= sizeofSample)
    {
      v37 = 0;
      do
      {
        bytes2[v37] = bytes2[v37] - v36;
        ++v37;
      }

      while (v10 > v37);
    }
  }

  else
  {
LABEL_30:
    [(HalogenLdcmCalc *)self _mean:bytes2 ofSize:v10];
  }

  v33 = v10 * self->_sizeofSample;

  memcpy(bytes, bytes2, v33);
}

- (double)_sineExtractor:(id)extractor
{
  bytes = [extractor bytes];
  v6 = [extractor length] / self->_sizeofSample;
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 0;
    v9 = bytes + 1;
    v10 = *bytes;
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

  bytes[v7] = 0.0;
  v13 = NAN;
  [(HalogenLdcmCalc *)self _goertzelSecondOrder:extractor hasFftValue:0 hasPhase:&v13 withHanning:0];
  return (v13 + -90.0 + (v6 + 2) / (self->_sampleRate / self->_signalFrequency) * -360.0) * 3.14159265 / 180.0;
}

- (void)_applyDigitalFilter:(id)filter
{
  bytes = [filter bytes];
  v6 = [filter length];
  sizeofSample = self->_sizeofSample;
  [(HalogenLdcmCalc *)self _mean:bytes ofSize:v6 / sizeofSample];
  v9 = v8;
  *&v14 = NAN;
  [(HalogenLdcmCalc *)self _goertzelSecondOrder:filter hasFftValue:&v14 hasPhase:0 withHanning:0];
  [(HalogenLdcmCalc *)self _reconstructSignal:filter];
  [(HalogenLdcmCalc *)self _sineExtractor:filter];
  if (v6 >= sizeofSample)
  {
    v11 = v10;
    v12 = 0;
    v13 = *&v14;
    do
    {
      *(bytes + 8 * v12) = v9 + v13 * cos(v11 + self->_signalFrequency * 6.28318531 * (v12 / self->_sampleRate));
      ++v12;
    }

    while (v6 / sizeofSample > v12);
  }
}

- (int)doCalibration:(id)calibration withCurrentData:(id)data
{
  [HalogenLdcmCalc _snr:"_snr:withGain:hasSignalLevel:hasNoiseLevel:hasCondetSnr:" withGain:self->_adcGain hasSignalLevel:? hasNoiseLevel:? hasCondetSnr:?];
  v7 = v6;
  self->_calVoltageSNR = v6;
  [(HalogenLdcmCalc *)self _snr:data withGain:&self->_calCurrentSignalLevel hasSignalLevel:&self->_calCurrentNoiseLevel hasNoiseLevel:0 hasCondetSnr:self->_adcGain];
  v9 = v8;
  self->_calCurrentSNR = v8;
  v16 = NAN;
  v17 = NAN;
  [OUTLINED_FUNCTION_1_4() _goertzelSecondOrder:? hasFftValue:? hasPhase:? withHanning:?];
  v14 = NAN;
  v15 = NAN;
  [(HalogenLdcmCalc *)self _goertzelSecondOrder:data hasFftValue:&v15 hasPhase:&v14 withHanning:1];
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

- (int)doLiquidDetection:(id)detection withCurrentData:(id)data isReceptacleEmpty:(BOOL)empty isReceptacleWet:(BOOL)wet withWetTransitionThreshold:(double)threshold withDryTransitionThreshold:(double)transitionThreshold
{
  wetCopy = wet;
  emptyCopy = empty;
  v29 = *MEMORY[0x277D85DE8];
  self->_capacitanceInNanoF = 0.0;
  *&self->_compensatedImpedance = 0u;
  *&self->_clippingScore = 0u;
  *&self->_goertzelImpedance = 0u;
  [(HalogenLdcmCalc *)self _applyGain:data toData:self->_adcGain];
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
  if (emptyCopy && self->_measurementCondetSNR >= 1.0)
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
      if (!wetCopy)
      {
        transitionThreshold = threshold;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        transitionThresholdCopy = transitionThreshold;
        v27 = 1024;
        v28 = wetCopy;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenLdcmCalc:doLiquidDetection capacitanceThreshholdNanoF = %f, isReceptacleWet: %d", buf, 0x12u);
      }

      if (self->_capacitanceInNanoF <= transitionThreshold)
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

  *self = 0;
}

@end