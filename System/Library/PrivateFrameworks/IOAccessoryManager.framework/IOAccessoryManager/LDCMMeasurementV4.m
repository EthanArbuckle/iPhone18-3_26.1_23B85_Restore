@interface LDCMMeasurementV4
- (LDCMMeasurementV4)initWithParams:(void *)a3 :(unint64_t)a4;
- (void)parseData:(char *)a3;
@end

@implementation LDCMMeasurementV4

- (LDCMMeasurementV4)initWithParams:(void *)a3 :(unint64_t)a4
{
  if (a4 == 55)
  {
    [(LDCMMeasurementV4 *)self parseData:a3];
    v5 = self;
  }

  else
  {
    [LDCMMeasurementV4 initWithParams:?];
    v5 = v7;
  }

  return v5;
}

- (void)parseData:(char *)a3
{
  LODWORD(v3) = *(a3 + 2);
  self->ldcmLoadImpMag = v3;
  self->ldcmLoadImpPhase = *(a3 + 6) * 0.000001;
  self->ldcmCalculatedRes = *(a3 + 10);
  self->ldcmCalculatedCap = *(a3 + 14) * 0.001;
  self->ldcmTIACurrentAmp = (25 * *(a3 + 10));
  v6 = (25 * *(a3 + 11));
  self->ldcmVoltageAmp = v6;
  LOWORD(v6) = *(a3 + 12);
  v7 = *&v6;
  self->ldcmLeakageCurrentAmp = v7;
  LOWORD(v7) = *(a3 + 13);
  v8 = *&v7 * 0.005;
  self->ldcmMeasureTIASNR = v8;
  LOWORD(v8) = *(a3 + 14);
  self->ldcmMeasureVoltageSNR = *&v8 * 0.005;
  self->ldcmCalTIAAmp = (25 * *(a3 + 15));
  v9 = (25 * *(a3 + 16));
  self->ldcmCalVoltageAmp = v9;
  LOWORD(v9) = *(a3 + 17);
  v10 = *&v9 * 0.005;
  self->ldcmCalTIASNR = v10;
  LOWORD(v10) = *(a3 + 18);
  v11 = *&v10 * 0.005;
  self->ldcmCalVoltageSNR = v11;
  LODWORD(v11) = *(a3 + 38);
  v12 = *&v11 * 0.0000000023283;
  self->ldcmTIAGainCorrection = v12;
  LODWORD(v12) = *(a3 + 42);
  self->ldcmVoltageGainCorrection = *&v12 * 0.0000000023283;
  self->ldcmPhaseComp = *(a3 + 46) * 0.00000025;
  self->ldcmRREFGated = [(LDCMMeasurementV4 *)self getBits:*a3 shift:0 mask:1];
  self->ldcmPortStatus = [(LDCMMeasurementV4 *)self getBits:*a3 shift:2 mask:1];
  self->ldcmMitigationsStatus = [(LDCMMeasurementV4 *)self getBits:*a3 shift:3 mask:1];
  self->ldcmFeatureStatus = [(LDCMMeasurementV4 *)self getBits:*a3 shift:4 mask:7];
  self->ldcmLowImp = [(LDCMMeasurementV4 *)self getBits:a3[1] shift:0 mask:1];
  self->ldcmCompletion = [(LDCMMeasurementV4 *)self getBits:a3[1] shift:1 mask:7];
  self->ldcmWet = [(LDCMMeasurementV4 *)self getBits:a3[1] shift:4 mask:3];
  self->ldcmMeasurePin = [(LDCMMeasurementV4 *)self getBits:a3[1] shift:6 mask:3];
  self->ldcmWetStateDuration = 60 * [(LDCMMeasurementV4 *)self getBits:*(a3 + 9) shift:0 mask:0x3FFFLL];
  self->ldcmWetStateTooLong = [(LDCMMeasurementV4 *)self getBits:*(a3 + 9) shift:14 mask:1];
  self->ldcmIncompSNRAmpCnt = a3[50];
  self->ldcmIncompOVPCnt = a3[51];
  self->ldcmIncompTimeoutCnt = a3[52];
  self->ldcmSuccessfulCnt = *(a3 + 53);
}

- (void)initWithParams:(void *)a1 :.cold.1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "LDCM - Data size mismatch!", v2, 2u);
  }

  *a1 = 0;
}

@end