@interface LDCMMeasurementV4
- (LDCMMeasurementV4)initWithParams:(void *)params :(unint64_t)a4;
- (void)parseData:(char *)data;
@end

@implementation LDCMMeasurementV4

- (LDCMMeasurementV4)initWithParams:(void *)params :(unint64_t)a4
{
  if (a4 == 55)
  {
    [(LDCMMeasurementV4 *)self parseData:params];
    selfCopy = self;
  }

  else
  {
    [LDCMMeasurementV4 initWithParams:?];
    selfCopy = v7;
  }

  return selfCopy;
}

- (void)parseData:(char *)data
{
  LODWORD(v3) = *(data + 2);
  self->ldcmLoadImpMag = v3;
  self->ldcmLoadImpPhase = *(data + 6) * 0.000001;
  self->ldcmCalculatedRes = *(data + 10);
  self->ldcmCalculatedCap = *(data + 14) * 0.001;
  self->ldcmTIACurrentAmp = (25 * *(data + 10));
  v6 = (25 * *(data + 11));
  self->ldcmVoltageAmp = v6;
  LOWORD(v6) = *(data + 12);
  v7 = *&v6;
  self->ldcmLeakageCurrentAmp = v7;
  LOWORD(v7) = *(data + 13);
  v8 = *&v7 * 0.005;
  self->ldcmMeasureTIASNR = v8;
  LOWORD(v8) = *(data + 14);
  self->ldcmMeasureVoltageSNR = *&v8 * 0.005;
  self->ldcmCalTIAAmp = (25 * *(data + 15));
  v9 = (25 * *(data + 16));
  self->ldcmCalVoltageAmp = v9;
  LOWORD(v9) = *(data + 17);
  v10 = *&v9 * 0.005;
  self->ldcmCalTIASNR = v10;
  LOWORD(v10) = *(data + 18);
  v11 = *&v10 * 0.005;
  self->ldcmCalVoltageSNR = v11;
  LODWORD(v11) = *(data + 38);
  v12 = *&v11 * 0.0000000023283;
  self->ldcmTIAGainCorrection = v12;
  LODWORD(v12) = *(data + 42);
  self->ldcmVoltageGainCorrection = *&v12 * 0.0000000023283;
  self->ldcmPhaseComp = *(data + 46) * 0.00000025;
  self->ldcmRREFGated = [(LDCMMeasurementV4 *)self getBits:*data shift:0 mask:1];
  self->ldcmPortStatus = [(LDCMMeasurementV4 *)self getBits:*data shift:2 mask:1];
  self->ldcmMitigationsStatus = [(LDCMMeasurementV4 *)self getBits:*data shift:3 mask:1];
  self->ldcmFeatureStatus = [(LDCMMeasurementV4 *)self getBits:*data shift:4 mask:7];
  self->ldcmLowImp = [(LDCMMeasurementV4 *)self getBits:data[1] shift:0 mask:1];
  self->ldcmCompletion = [(LDCMMeasurementV4 *)self getBits:data[1] shift:1 mask:7];
  self->ldcmWet = [(LDCMMeasurementV4 *)self getBits:data[1] shift:4 mask:3];
  self->ldcmMeasurePin = [(LDCMMeasurementV4 *)self getBits:data[1] shift:6 mask:3];
  self->ldcmWetStateDuration = 60 * [(LDCMMeasurementV4 *)self getBits:*(data + 9) shift:0 mask:0x3FFFLL];
  self->ldcmWetStateTooLong = [(LDCMMeasurementV4 *)self getBits:*(data + 9) shift:14 mask:1];
  self->ldcmIncompSNRAmpCnt = data[50];
  self->ldcmIncompOVPCnt = data[51];
  self->ldcmIncompTimeoutCnt = data[52];
  self->ldcmSuccessfulCnt = *(data + 53);
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