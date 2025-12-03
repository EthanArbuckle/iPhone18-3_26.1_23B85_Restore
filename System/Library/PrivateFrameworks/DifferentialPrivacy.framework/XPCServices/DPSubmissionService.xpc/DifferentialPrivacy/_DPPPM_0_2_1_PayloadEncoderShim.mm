@interface _DPPPM_0_2_1_PayloadEncoderShim
+ (id)encodedEpsDPConfigWithEpsilon:(double)epsilon error:(id *)error;
+ (id)encodedGaussianWithSubsampledMomentsAccountantConfigWithMaxCohortSize:(unint64_t)size numIterations:(unsigned int)iterations populationSize:(unint64_t)populationSize renyiOrder:(unsigned int)order sigma:(double)sigma sigmaAfterNormalization:(double)normalization targetCentralEpsilon:(double)epsilon targetCentralDelta:(double)self0 error:(id *)self1;
+ (id)encodedInputShareAADWithTaskID:(id)d reportID:(id)iD time:(unint64_t)time publicShare:(id)share error:(id *)error;
+ (id)encodedNoneDPConfigAndReturnError:(id *)error;
+ (id)encodedPlaintextInputShareWithTaskProvExtensionData:(id)data payload:(id)payload error:(id *)error;
+ (id)encodedPrio2VDAFConfigWithLength:(unsigned int)length encodedDPConfig:(id)config error:(id *)error;
+ (id)encodedReportWithReportID:(id)d time:(unint64_t)time publicShare:(id)share leaderHPKEConfigID:(unsigned __int8)iD leaderEnc:(id)enc leaderPayload:(id)payload helperHPKEConfigID:(unsigned __int8)configID helperEnc:(id)self0 helperPayload:(id)self1 error:(id *)self2;
+ (id)encodedTaskConfigWithTaskInfo:(id)info leaderAggregatorEndpoint:(id)endpoint helperAggregatorEndpoint:(id)aggregatorEndpoint timePrecision:(unint64_t)precision maxBatchQueryCount:(unsigned __int16)count minBatchSize:(unsigned int)size maxBatchSize:(unsigned int)batchSize taskExpiration:(unint64_t)self0 encodedVDAFConfig:(id)self1 error:(id *)self2;
- (_DPPPM_0_2_1_PayloadEncoderShim)init;
@end

@implementation _DPPPM_0_2_1_PayloadEncoderShim

- (_DPPPM_0_2_1_PayloadEncoderShim)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DPPPM_0_2_1_PayloadEncoderShim();
  return [(_DPPPM_0_2_1_PayloadEncoderShim *)&v3 init];
}

+ (id)encodedTaskConfigWithTaskInfo:(id)info leaderAggregatorEndpoint:(id)endpoint helperAggregatorEndpoint:(id)aggregatorEndpoint timePrecision:(unint64_t)precision maxBatchQueryCount:(unsigned __int16)count minBatchSize:(unsigned int)size maxBatchSize:(unsigned int)batchSize taskExpiration:(unint64_t)self0 encodedVDAFConfig:(id)self1 error:(id *)self2
{
  infoCopy = info;
  endpointCopy = endpoint;
  aggregatorEndpointCopy = aggregatorEndpoint;
  configCopy = config;
  v21 = sub_100017C38(infoCopy, endpointCopy, aggregatorEndpointCopy, precision, count, size, batchSize, expiration, configCopy);
  v23 = v22;

  v24.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v21, v23);

  return v24.super.isa;
}

+ (id)encodedPrio2VDAFConfigWithLength:(unsigned int)length encodedDPConfig:(id)config error:(id *)error
{
  configCopy = config;
  v7 = sub_100018D7C(length, configCopy);
  v9 = v8;

  v10.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v7, v9);

  return v10.super.isa;
}

+ (id)encodedEpsDPConfigWithEpsilon:(double)epsilon error:(id *)error
{
  v4 = sub_100019DC0(epsilon);
  v6 = v5;
  v7.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v4, v6);

  return v7.super.isa;
}

+ (id)encodedNoneDPConfigAndReturnError:(id *)error
{
  v3 = sub_10001A1D4();
  v5 = v4;
  v6.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v3, v5);

  return v6.super.isa;
}

+ (id)encodedGaussianWithSubsampledMomentsAccountantConfigWithMaxCohortSize:(unint64_t)size numIterations:(unsigned int)iterations populationSize:(unint64_t)populationSize renyiOrder:(unsigned int)order sigma:(double)sigma sigmaAfterNormalization:(double)normalization targetCentralEpsilon:(double)epsilon targetCentralDelta:(double)self0 error:(id *)self1
{
  v11 = sub_10001AB9C(size, iterations, populationSize, order, sigma, normalization, epsilon, delta);
  v13 = v12;
  v14.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v11, v13);

  return v14.super.isa;
}

+ (id)encodedReportWithReportID:(id)d time:(unint64_t)time publicShare:(id)share leaderHPKEConfigID:(unsigned __int8)iD leaderEnc:(id)enc leaderPayload:(id)payload helperHPKEConfigID:(unsigned __int8)configID helperEnc:(id)self0 helperPayload:(id)self1 error:(id *)self2
{
  iDCopy = iD;
  dCopy = d;
  shareCopy = share;
  encCopy = enc;
  payloadCopy = payload;
  helperEncCopy = helperEnc;
  helperPayloadCopy = helperPayload;
  v22 = sub_10001B95C(dCopy, time, shareCopy, iDCopy, encCopy, payloadCopy, configID, helperEncCopy, helperPayloadCopy);
  v24 = v23;

  v25.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v22, v24);

  return v25.super.isa;
}

+ (id)encodedInputShareAADWithTaskID:(id)d reportID:(id)iD time:(unint64_t)time publicShare:(id)share error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  shareCopy = share;
  v13 = sub_10001BD4C(dCopy, iDCopy, time, shareCopy);
  v15 = v14;

  v16.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v13, v15);

  return v16.super.isa;
}

+ (id)encodedPlaintextInputShareWithTaskProvExtensionData:(id)data payload:(id)payload error:(id *)error
{
  dataCopy = data;
  payloadCopy = payload;
  v8 = sub_10001C024(payloadCopy);
  v10 = v9;

  v11.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v8, v10);

  return v11.super.isa;
}

@end