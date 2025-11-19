@interface _DPPreambleShardResult
- (NSArray)inputShares;
- (_DPPreambleShardResult)init;
- (_DPPreambleShardResult)initWithPublicShare:(id)a3 inputShares:(id)a4 nonce:(id)a5 dimension:(int64_t)a6 cohortSigma:(double)a7 sigmaLocal:(double)a8 scalingFactor:(double)a9;
@end

@implementation _DPPreambleShardResult

- (NSArray)inputShares
{
  v2 = *(self + OBJC_IVAR____DPPreambleShardResult_inputShares);

  v3 = sub_22628EB4C();

  return v3;
}

- (_DPPreambleShardResult)initWithPublicShare:(id)a3 inputShares:(id)a4 nonce:(id)a5 dimension:(int64_t)a6 cohortSigma:(double)a7 sigmaLocal:(double)a8 scalingFactor:(double)a9
{
  ObjectType = swift_getObjectType();
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = sub_22628E7CC();
  v23 = v22;

  v24 = sub_22628EB5C();
  v25 = sub_22628E7CC();
  v27 = v26;

  v28 = (self + OBJC_IVAR____DPPreambleShardResult_publicShare);
  *v28 = v21;
  v28[1] = v23;
  *(self + OBJC_IVAR____DPPreambleShardResult_inputShares) = v24;
  v29 = (self + OBJC_IVAR____DPPreambleShardResult_nonce);
  *v29 = v25;
  v29[1] = v27;
  *(self + OBJC_IVAR____DPPreambleShardResult_dimension) = a6;
  *(self + OBJC_IVAR____DPPreambleShardResult_cohortSigma) = a7;
  *(self + OBJC_IVAR____DPPreambleShardResult_sigmaLocal) = a8;
  *(self + OBJC_IVAR____DPPreambleShardResult_scalingFactor) = a9;
  v31.receiver = self;
  v31.super_class = ObjectType;
  return [(_DPPreambleShardResult *)&v31 init];
}

- (_DPPreambleShardResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end