@interface _DPPPM_0_2_1_PayloadEncoderShim
+ (id)encodedEpsDPConfigWithEpsilon:(double)a3 error:(id *)a4;
+ (id)encodedGaussianWithSubsampledMomentsAccountantConfigWithMaxCohortSize:(unint64_t)a3 numIterations:(unsigned int)a4 populationSize:(unint64_t)a5 renyiOrder:(unsigned int)a6 sigma:(double)a7 sigmaAfterNormalization:(double)a8 targetCentralEpsilon:(double)a9 targetCentralDelta:(double)a10 error:(id *)a11;
+ (id)encodedInputShareAADWithTaskID:(id)a3 reportID:(id)a4 time:(unint64_t)a5 publicShare:(id)a6 error:(id *)a7;
+ (id)encodedNoneDPConfigAndReturnError:(id *)a3;
+ (id)encodedPlaintextInputShareWithTaskProvExtensionData:(id)a3 payload:(id)a4 error:(id *)a5;
+ (id)encodedPrio2VDAFConfigWithLength:(unsigned int)a3 encodedDPConfig:(id)a4 error:(id *)a5;
+ (id)encodedReportWithReportID:(id)a3 time:(unint64_t)a4 publicShare:(id)a5 leaderHPKEConfigID:(unsigned __int8)a6 leaderEnc:(id)a7 leaderPayload:(id)a8 helperHPKEConfigID:(unsigned __int8)a9 helperEnc:(id)a10 helperPayload:(id)a11 error:(id *)a12;
+ (id)encodedTaskConfigWithTaskInfo:(id)a3 leaderAggregatorEndpoint:(id)a4 helperAggregatorEndpoint:(id)a5 timePrecision:(unint64_t)a6 maxBatchQueryCount:(unsigned __int16)a7 minBatchSize:(unsigned int)a8 maxBatchSize:(unsigned int)a9 taskExpiration:(unint64_t)a10 encodedVDAFConfig:(id)a11 error:(id *)a12;
- (_DPPPM_0_2_1_PayloadEncoderShim)init;
@end

@implementation _DPPPM_0_2_1_PayloadEncoderShim

- (_DPPPM_0_2_1_PayloadEncoderShim)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DPPPM_0_2_1_PayloadEncoderShim();
  return [(_DPPPM_0_2_1_PayloadEncoderShim *)&v3 init];
}

+ (id)encodedTaskConfigWithTaskInfo:(id)a3 leaderAggregatorEndpoint:(id)a4 helperAggregatorEndpoint:(id)a5 timePrecision:(unint64_t)a6 maxBatchQueryCount:(unsigned __int16)a7 minBatchSize:(unsigned int)a8 maxBatchSize:(unsigned int)a9 taskExpiration:(unint64_t)a10 encodedVDAFConfig:(id)a11 error:(id *)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a11;
  v21 = sub_100017C38(v17, v18, v19, a6, a7, a8, a9, a10, v20);
  v23 = v22;

  v24.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v21, v23);

  return v24.super.isa;
}

+ (id)encodedPrio2VDAFConfigWithLength:(unsigned int)a3 encodedDPConfig:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = sub_100018D7C(a3, v6);
  v9 = v8;

  v10.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v7, v9);

  return v10.super.isa;
}

+ (id)encodedEpsDPConfigWithEpsilon:(double)a3 error:(id *)a4
{
  v4 = sub_100019DC0(a3);
  v6 = v5;
  v7.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v4, v6);

  return v7.super.isa;
}

+ (id)encodedNoneDPConfigAndReturnError:(id *)a3
{
  v3 = sub_10001A1D4();
  v5 = v4;
  v6.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v3, v5);

  return v6.super.isa;
}

+ (id)encodedGaussianWithSubsampledMomentsAccountantConfigWithMaxCohortSize:(unint64_t)a3 numIterations:(unsigned int)a4 populationSize:(unint64_t)a5 renyiOrder:(unsigned int)a6 sigma:(double)a7 sigmaAfterNormalization:(double)a8 targetCentralEpsilon:(double)a9 targetCentralDelta:(double)a10 error:(id *)a11
{
  v11 = sub_10001AB9C(a3, a4, a5, a6, a7, a8, a9, a10);
  v13 = v12;
  v14.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v11, v13);

  return v14.super.isa;
}

+ (id)encodedReportWithReportID:(id)a3 time:(unint64_t)a4 publicShare:(id)a5 leaderHPKEConfigID:(unsigned __int8)a6 leaderEnc:(id)a7 leaderPayload:(id)a8 helperHPKEConfigID:(unsigned __int8)a9 helperEnc:(id)a10 helperPayload:(id)a11 error:(id *)a12
{
  v27 = a6;
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a10;
  v21 = a11;
  v22 = sub_10001B95C(v16, a4, v17, v27, v18, v19, a9, v20, v21);
  v24 = v23;

  v25.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v22, v24);

  return v25.super.isa;
}

+ (id)encodedInputShareAADWithTaskID:(id)a3 reportID:(id)a4 time:(unint64_t)a5 publicShare:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = sub_10001BD4C(v10, v11, a5, v12);
  v15 = v14;

  v16.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v13, v15);

  return v16.super.isa;
}

+ (id)encodedPlaintextInputShareWithTaskProvExtensionData:(id)a3 payload:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10001C024(v7);
  v10 = v9;

  v11.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v8, v10);

  return v11.super.isa;
}

@end