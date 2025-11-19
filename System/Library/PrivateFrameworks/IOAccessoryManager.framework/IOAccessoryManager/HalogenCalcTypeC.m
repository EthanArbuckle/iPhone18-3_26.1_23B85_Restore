@interface HalogenCalcTypeC
- (BOOL)_allocBuffers;
- (HalogenCalcTypeC)initWithParams:(int)a3 signalFrequency:(double)a4 sampleRate:(unint64_t)a5 tiaGain:(double)a6 adcGain:(double)a7 parasiticCap:(double)a8;
- (double)_snr:(id)a3 withGain:(double)a4 hasSignalLevel:(double *)a5 hasNoiseLevel:(double *)a6;
- (int)doCalibration:(id)a3 withCurrentData:(id)a4;
- (int)doLiquidDetection:(id)a3 withCurrentData:(id)a4 isReceptacleEmpty:(BOOL)a5 isReceptacleWet:(BOOL)a6 withWetTransitionThreshold:(double)a7 withDryTransitionThreshold:(double)a8 pinParasitics:(double)a9 measurementType:(int)a10;
- (void)_allocBuffers;
- (void)_applyFractionalPhaseShift:(id)a3 withPhaseDelay:(double)a4;
- (void)_applyGain:(double)a3 toData:(id)a4;
- (void)_applyHanningWindow:(id)a3 withSize:(int)a4;
- (void)_applyTiaGain:(id)a3 toCurrentData:(id)a4;
- (void)_doMuxComp:(double)a3 withPhase:(double)a4;
- (void)_freeBuffers;
- (void)_goertzelSecondOrder:(id)a3 hasFftValue:(double *)a4 hasPhase:(double *)a5 withHanning:(BOOL)a6 amplitudeCorrectionFactor:(double)a7;
- (void)_rcSolver;
- (void)dealloc;
- (void)setSeriesTotalImpedance:(HalogenCalcTypeC *)self;
@end

@implementation HalogenCalcTypeC

- (HalogenCalcTypeC)initWithParams:(int)a3 signalFrequency:(double)a4 sampleRate:(unint64_t)a5 tiaGain:(double)a6 adcGain:(double)a7 parasiticCap:(double)a8
{
  v18.receiver = self;
  v18.super_class = HalogenCalcTypeC;
  v14 = [(HalogenCalcTypeC *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_nSamples = a3;
    if (a3)
    {
      v14->_sizeofSample = 8;
      v14->_signalFrequency = a4;
      if (a4 == 0.0)
      {
        [HalogenCalcTypeC initWithParams:v14 signalFrequency:&v19 sampleRate:? tiaGain:? adcGain:? parasiticCap:?];
      }

      else
      {
        v14->_sampleRate = a5;
        if (a5)
        {
          v14->_tiaGain = a6;
          v14->_adcGain = a7;
          v14->_parasiticCap = a8;
          if ([(HalogenCalcTypeC *)v14 _allocBuffers])
          {
            fftsetupD = vDSP_create_fftsetupD(0xCuLL, 0);
            v15->_fftContext = fftsetupD;
            if (fftsetupD)
            {
              v15->_seriesResistance = 4990.0;
              *&v15->_seriesRCResistance = xmmword_25491C850;
              return v15;
            }

            [HalogenCalcTypeC initWithParams:signalFrequency:sampleRate:tiaGain:adcGain:parasiticCap:];
          }

          else
          {
            [HalogenCalcTypeC initWithParams:signalFrequency:sampleRate:tiaGain:adcGain:parasiticCap:];
          }

          return 0;
        }

        [HalogenCalcTypeC initWithParams:v14 signalFrequency:&v19 sampleRate:? tiaGain:? adcGain:? parasiticCap:?];
      }
    }

    else
    {
      [HalogenCalcTypeC initWithParams:v14 signalFrequency:&v19 sampleRate:? tiaGain:? adcGain:? parasiticCap:?];
    }

    return v19;
  }

  return v15;
}

- (void)dealloc
{
  fftContext = self->_fftContext;
  if (fftContext)
  {
    vDSP_destroy_fftsetupD(fftContext);
  }

  [(HalogenCalcTypeC *)self _freeBuffers];
  v4.receiver = self;
  v4.super_class = HalogenCalcTypeC;
  [(HalogenCalcTypeC *)&v4 dealloc];
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
        [(HalogenCalcTypeC *)&v7 _allocBuffers];
        return v7;
      }
    }

    else
    {
      [(HalogenCalcTypeC *)&v8 _allocBuffers];
      return v8;
    }
  }

  else
  {
    [(HalogenCalcTypeC *)&v9 _allocBuffers];
    return v9;
  }
}

- (void)_freeBuffers
{
  tmp3DataBuff = self->_tmp3DataBuff;
}

- (int)doCalibration:(id)a3 withCurrentData:(id)a4
{
  v18 = NAN;
  v19 = NAN;
  [(HalogenCalcTypeC *)self _goertzelSecondOrder:a3 hasFftValue:&v19 hasPhase:&v18 withHanning:1 amplitudeCorrectionFactor:1.0];
  v16 = NAN;
  v17 = NAN;
  [(HalogenCalcTypeC *)self _goertzelSecondOrder:a4 hasFftValue:&v17 hasPhase:&v16 withHanning:1 amplitudeCorrectionFactor:1.0];
  v7 = v19;
  v8 = v17;
  self->_calVoltageAmplitude = v19;
  self->_calCurrentAmplitude = v8;
  if (v7 < 0.07 || v8 < 0.07)
  {
    NSLog(&cfstr_UnexpectedCali.isa, *&v8, *&v7);
    return 3;
  }

  else
  {
    [(HalogenCalcTypeC *)self _snr:a3 withGain:&self->_calVoltageSignalLevel hasSignalLevel:&self->_calVoltageNoiseLevel hasNoiseLevel:1.0];
    self->_calVoltageSNR = v9;
    [(HalogenCalcTypeC *)self _snr:a4 withGain:&self->_calCurrentSignalLevel hasSignalLevel:&self->_calCurrentNoiseLevel hasNoiseLevel:1.0];
    self->_calCurrentSNR = v10;
    calVoltageSNR = self->_calVoltageSNR;
    if (calVoltageSNR < 24.0 || v10 < 24.0)
    {
      NSLog(&cfstr_UnexpectedCali_0.isa, *&v10, *&calVoltageSNR);
      return 2;
    }

    else
    {
      result = 0;
      v14 = (v19 + v17) * 0.5;
      v15 = v14 / v17;
      self->_voltageGainCorrection = v14 / v19;
      self->_currentGainCorrection = v15;
      self->_currentPhaseCompensation = v18 - v16;
    }
  }

  return result;
}

- (int)doLiquidDetection:(id)a3 withCurrentData:(id)a4 isReceptacleEmpty:(BOOL)a5 isReceptacleWet:(BOOL)a6 withWetTransitionThreshold:(double)a7 withDryTransitionThreshold:(double)a8 pinParasitics:(double)a9 measurementType:(int)a10
{
  v11 = a6;
  self->_pinParasitics = a9;
  [(HalogenCalcTypeC *)self _applyGain:a4 toData:self->_adcGain, a8];
  [(HalogenCalcTypeC *)self _applyGain:a3 toData:self->_adcGain];
  *&v36 = NAN;
  v37 = NAN;
  v34 = -1;
  v35 = NAN;
  [(HalogenCalcTypeC *)self _goertzelSecondOrder:a3 hasFftValue:&v36 hasPhase:&v35 withHanning:1 amplitudeCorrectionFactor:2.0];
  [(HalogenCalcTypeC *)self _goertzelSecondOrder:a4 hasFftValue:&v37 hasPhase:&v34 withHanning:1 amplitudeCorrectionFactor:2.0];
  v15 = *&v36;
  v16 = v37;
  self->_measurementCurrentAmplitude = v37;
  self->_measurementVoltageAmplitude = v15;
  self->_measurementVoltagePhase = v35;
  if (v15 < 0.14 || v16 < 0.14)
  {
    NSLog(&cfstr_UnexpectedMeas.isa, *&v16, *&v15);
    return 9;
  }

  [(HalogenCalcTypeC *)self _applyFractionalPhaseShift:a4 withPhaseDelay:self->_currentPhaseCompensation / -360.0 / self->_signalFrequency * self->_sampleRate];
  [(HalogenCalcTypeC *)self _applyGain:a4 toData:self->_currentGainCorrection];
  [(HalogenCalcTypeC *)self _applyGain:a3 toData:self->_voltageGainCorrection];
  [(HalogenCalcTypeC *)self _snr:a4 withGain:&self->_measurementCurrentSignalLevel hasSignalLevel:&self->_measurementCurrentNoiseLevel hasNoiseLevel:1.0];
  self->_measurementCurrentSNR = v17;
  [(HalogenCalcTypeC *)self _applyTiaGain:a3 toCurrentData:a4];
  [(HalogenCalcTypeC *)self _snr:a3 withGain:&self->_measurementVoltageSignalLevel hasSignalLevel:&self->_measurementVoltageNoiseLevel hasNoiseLevel:1.0];
  self->_measurementVoltageSNR = v18;
  if (v18 < 24.0 || self->_measurementCurrentSNR < 6.0)
  {
    NSLog(&cfstr_UnexpectedMeas_0.isa, *&self->_measurementCurrentSNR, *&v18);
    return 8;
  }

  [(HalogenCalcTypeC *)self _goertzelSecondOrder:a4 hasFftValue:&self->_measurementCurrentAmplitude hasPhase:&self->_measurementCurrentPhase withHanning:1 amplitudeCorrectionFactor:2.0];
  v19 = self->_measurementVoltagePhase - self->_measurementCurrentPhase;
  self->_goertzelImpedance = self->_measurementVoltageAmplitude / self->_measurementCurrentAmplitude;
  self->_goertzelPhase = v19;
  [(HalogenCalcTypeC *)self _rcSolver];
  capacitanceInNanoF = self->_capacitanceInNanoF;
  if (capacitanceInNanoF <= -2.0)
  {
    NSLog(&cfstr_NegativeMeasur.isa, *&self->_capacitanceInNanoF);
    return 10;
  }

  if (a10)
  {
    if (a10 != 1)
    {
      if (a10 == 2)
      {
        resistanceInOhms = self->_resistanceInOhms;
        if (resistanceInOhms >= 4941.0 && capacitanceInNanoF <= 10.0 && resistanceInOhms <= 6039.0)
        {
          return 17;
        }

        else
        {
          return 18;
        }
      }

      return 0;
    }

    v25 = self->_resistanceInOhms;
    if (v25 > 29880.0 || v25 < 0.0)
    {
      return 16;
    }

    else
    {
      return 15;
    }
  }

  else
  {
    v27 = self->_resistanceInOhms;
    if (v11)
    {
      if (v27 <= 0.0)
      {
        return 11;
      }

      loadImpedanceInOhms = self->_loadImpedanceInOhms;
      if (loadImpedanceInOhms <= 600.0)
      {
        return 11;
      }

      else if (self->_wetTooLong)
      {
        if (capacitanceInNanoF >= 1.0)
        {
          if (loadImpedanceInOhms >= 10000.0)
          {
            return 2;
          }

          else
          {
            loadPhase = self->_loadPhase;
            if ([HalogenCalcTypeC _isResistiveOnly:"_isResistiveOnly:resistanceInOhms:loadPhase:" resistanceInOhms:? loadPhase:?])
            {
              return 1;
            }

            else
            {
              return 2;
            }
          }
        }

        else
        {
          return 1;
        }
      }

      else if (loadImpedanceInOhms > 400000.0 && capacitanceInNanoF < 1.0)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      if (v27 <= 0.0)
      {
        return 0;
      }

      v24 = 0;
      v29 = self->_loadImpedanceInOhms;
      if (v29 > 600.0 && capacitanceInNanoF > 3.5 && v29 < 400000.0)
      {
        v24 = 2;
        if (v29 < 10000.0)
        {
          v30 = self->_loadPhase;
          if ([HalogenCalcTypeC _isResistiveOnly:"_isResistiveOnly:resistanceInOhms:loadPhase:" resistanceInOhms:? loadPhase:?])
          {
            return 0;
          }

          else
          {
            return 2;
          }
        }
      }
    }
  }

  return v24;
}

- (void)_goertzelSecondOrder:(id)a3 hasFftValue:(double *)a4 hasPhase:(double *)a5 withHanning:(BOOL)a6 amplitudeCorrectionFactor:(double)a7
{
  v8 = a6;
  v13 = [a3 bytes];
  v14 = [a3 length];
  sizeofSample = self->_sizeofSample;
  v16 = v14 / sizeofSample;
  v17 = __sincos_stret(self->_signalFrequency / self->_sampleRate * 6.28318531);
  v18 = 0.0;
  v19 = 0.0;
  if (v14 >= sizeofSample)
  {
    v20 = 0;
    v21 = v17.__cosval + v17.__cosval;
    v19 = 0.0;
    v22 = 0.0;
    do
    {
      v18 = v19;
      if (v8)
      {
        v23 = v21 * v19 + (1.0 - cos(v20 * 6.28318531 / v16)) * 0.5 * *(v13 + 8 * v20) * a7;
      }

      else
      {
        v23 = *(v13 + 8 * v20) + v21 * v19;
      }

      v19 = v23 - v22;
      ++v20;
      v22 = v18;
    }

    while (v16 > v20);
  }

  v24 = v19 - v18 * v17.__cosval;
  v25 = v17.__sinval * v18;
  if (a4)
  {
    v26 = sqrt(v25 * v25 + v24 * v24);
    *a4 = (v26 + v26) / v16;
  }

  if (a5)
  {
    *a5 = atan2(v25, v24) * 180.0 / 3.14159265;
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

- (void)_applyFractionalPhaseShift:(id)a3 withPhaseDelay:(double)a4
{
  v33 = -1;
  v7 = [a3 bytes];
  v8 = -a4;
  [a3 appendBytes:&v7[objc_msgSend(a3 length:"length") / self->_sizeofSample - 1]];
  if (a4 >= 1.0)
  {
    v9 = vcvtpd_s64_f64(v8);
    v8 = -v9 - a4;
    v33 = *v7;
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
        [a3 replaceBytesInRange:0 withBytes:0 length:{&v33, self->_sizeofSample}];
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
      v21 = *v12;
      v20 = v12 + 1;
      v22 = v21;
      do
      {
        ++v19;
        v23 = *v20;
        *(v20 - 1) = (1.0 - v8) * v22 + *v20 * v8;
        ++v20;
        v22 = v23;
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
  if (nSamples <= v15)
  {
    if (nSamples < v15)
    {
      [a3 setLength:nSamples * sizeofSample];
    }
  }

  else
  {
    [a3 increaseLengthBy:(nSamples - v15) * sizeofSample];
    v25 = [a3 bytes];
    v26 = self->_nSamples;
    v27 = v26 - v15;
    if (v26 > v15)
    {
      v28 = 0;
      v29 = *(v25 + 8 * v15 - 8);
      v30 = vdupq_n_s64(v27 - 1);
      do
      {
        v31 = v15 + v28;
        v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v28), xmmword_25491C860)));
        if (v32.i8[0])
        {
          *(v25 + 8 * v31) = v29;
        }

        if (v32.i8[4])
        {
          *(v25 + 8 + 8 * v31) = v29;
        }

        v28 += 2;
      }

      while (((v27 + 1) & 0xFFFFFFFFFFFFFFFELL) != v28);
    }
  }
}

- (double)_snr:(id)a3 withGain:(double)a4 hasSignalLevel:(double *)a5 hasNoiseLevel:(double *)a6
{
  v10 = [a3 bytes];
  tmp1DataBuff = self->_tmp1DataBuff;
  v12 = [(NSMutableData *)tmp1DataBuff bytes];
  v13 = [(NSMutableData *)self->_tmp2DataBuff bytes];
  v14 = [(NSMutableData *)self->_tmp3DataBuff bytes];
  v22.realp = v12;
  v22.imagp = v13;
  memcpy(v12, v10, self->_sizeofSample << 11);
  bzero(v13, self->_sizeofSample << 11);
  [(HalogenCalcTypeC *)self _applyGain:tmp1DataBuff toData:a4, v12, v13];
  [(HalogenCalcTypeC *)self _applyHanningWindow:tmp1DataBuff withSize:2048];
  vDSP_fft_zripD(self->_fftContext, &v22, 1, 0xCuLL, 1);
  for (i = 0; i != 1024; ++i)
  {
    v12[i] = v12[i] * 0.000244140625;
    v16 = v13[i] * 0.000244140625;
    v13[i] = v16;
    *(v14 + i * 8) = v16 * v16 + v12[i] * v12[i];
  }

  v17 = 0;
  v18 = 0.0;
  do
  {
    v18 = v18 + *(v14 + 32 + v17);
    v17 += 8;
  }

  while (v17 != 24);
  v19 = 2.22507386e-308;
  for (j = 56; j != 0x2000; j += 8)
  {
    v19 = v19 + *(v14 + j);
  }

  if (a5)
  {
    *a5 = v18;
  }

  if (a6)
  {
    *a6 = v19;
  }

  return log10(v18 / v19) * 10.0;
}

- (void)_doMuxComp:(double)a3 withPhase:(double)a4
{
  v6 = __sincos_stret(a4 * 3.14159265 / 180.0);
  v7 = __divdc3(1.0, 0.0, v6.__cosval * a3 + v6.__sinval * a3 * 0.0, v6.__sinval * a3);
  v8 = self->_parasiticCap + self->_pinParasitics;
  v10 = __divdc3(1.0, 0.0, v7 - self->_signalFrequency * 0.0 * v8, v9 + self->_signalFrequency * -6.28318531 * v8);
  v12 = v11;
  self->_compensatedImpedance = MEMORY[0x259C1E960]();
  v13.c[0] = v10;
  v13.c[1] = v12;
  self->_compensatedPhase = carg(v13) / 3.14159265 * 180.0;
}

- (void)_rcSolver
{
  goertzelImpedance = self->_goertzelImpedance;
  v4 = __sincos_stret(self->_goertzelPhase * 3.14159265 / 180.0);
  v5 = goertzelImpedance * v4.__cosval;
  v6 = goertzelImpedance * v4.__sinval;
  v7 = __divdc3(self->_seriesRCResistance, 0.0, self->_signalFrequency * 0.0 * self->_LDCMACCapacitance, self->_signalFrequency * 6.28318531 * self->_LDCMACCapacitance);
  v9 = v8;
  seriesRCResistance = self->_seriesRCResistance;
  v11 = __divdc3(1.0, 0.0, self->_signalFrequency * 0.0 * self->_LDCMACCapacitance, self->_signalFrequency * 6.28318531 * self->_LDCMACCapacitance);
  v13 = self->_seriesResistance + __divdc3(v7, v9, seriesRCResistance + v11, v12);
  *self->_seriesTotalImpedance = v13;
  *&self->_seriesTotalImpedance[8] = v14;
  v15 = v5 + v6 * 0.0 - v13;
  v16 = v6 - v14;
  v17 = MEMORY[0x259C1E960](v15, v6 - v14);
  v24.c[0] = v15;
  v24.c[1] = v16;
  [(HalogenCalcTypeC *)self _doMuxComp:v17 withPhase:carg(v24) * 180.0 / 3.14159265];
  compensatedImpedance = self->_compensatedImpedance;
  compensatedPhase = self->_compensatedPhase;
  v20 = __sincos_stret(compensatedPhase * 3.14159265 / 180.0);
  v21 = compensatedImpedance * v20.__cosval;
  self->_loadImpedanceInOhms = compensatedImpedance;
  self->_loadPhase = compensatedPhase;
  v22 = v21 + compensatedImpedance * v20.__sinval * (compensatedImpedance * v20.__sinval) / v21;
  v23 = compensatedImpedance * v20.__sinval / (self->_signalFrequency * ((v21 * v22 + v21 * v22) * 3.14159265));
  self->_resistanceInOhms = v22;
  self->_capacitanceInNanoF = v23 * -1000000000.0;
}

- (void)setSeriesTotalImpedance:(HalogenCalcTypeC *)self
{
  v4 = v2;
  v5 = v3;
  objc_copyStruct(self->_seriesTotalImpedance, &v4, 16, 1, 0);
}

- (void)initWithParams:signalFrequency:sampleRate:tiaGain:adcGain:parasiticCap:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

- (void)initWithParams:signalFrequency:sampleRate:tiaGain:adcGain:parasiticCap:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

- (void)initWithParams:(uint64_t)a1 signalFrequency:(void *)a2 sampleRate:tiaGain:adcGain:parasiticCap:.cold.3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  *a2 = a1;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithParams:(uint64_t)a1 signalFrequency:(void *)a2 sampleRate:tiaGain:adcGain:parasiticCap:.cold.4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  *a2 = a1;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)initWithParams:(uint64_t)a1 signalFrequency:(void *)a2 sampleRate:tiaGain:adcGain:parasiticCap:.cold.5(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v4, v5, v6, v7, v8, 8u);
  }

  *a2 = a1;
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_allocBuffers
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

@end