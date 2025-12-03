@interface _DPPreambleShardResult
- (NSArray)inputShares;
- (_DPPreambleShardResult)init;
- (_DPPreambleShardResult)initWithPublicShare:(id)share inputShares:(id)shares nonce:(id)nonce dimension:(int64_t)dimension cohortSigma:(double)sigma sigmaLocal:(double)local scalingFactor:(double)factor;
@end

@implementation _DPPreambleShardResult

- (NSArray)inputShares
{
  v2 = *(self + OBJC_IVAR____DPPreambleShardResult_inputShares);

  v3 = sub_22628EB4C();

  return v3;
}

- (_DPPreambleShardResult)initWithPublicShare:(id)share inputShares:(id)shares nonce:(id)nonce dimension:(int64_t)dimension cohortSigma:(double)sigma sigmaLocal:(double)local scalingFactor:(double)factor
{
  ObjectType = swift_getObjectType();
  shareCopy = share;
  sharesCopy = shares;
  nonceCopy = nonce;
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
  *(self + OBJC_IVAR____DPPreambleShardResult_dimension) = dimension;
  *(self + OBJC_IVAR____DPPreambleShardResult_cohortSigma) = sigma;
  *(self + OBJC_IVAR____DPPreambleShardResult_sigmaLocal) = local;
  *(self + OBJC_IVAR____DPPreambleShardResult_scalingFactor) = factor;
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