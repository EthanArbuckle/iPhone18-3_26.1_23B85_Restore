@interface _DPPINEShardResult
- (NSArray)inputShares;
- (_DPPINEShardResult)init;
- (_DPPINEShardResult)initWithPublicShare:(id)share inputShares:(id)shares nonce:(id)nonce dimension:(int64_t)dimension chunkLength:(int64_t)length chunkLengthNormEquality:(int64_t)equality l2NormBoundInt:(unint64_t)int fractionalBitCount:(int64_t)self0;
@end

@implementation _DPPINEShardResult

- (NSArray)inputShares
{
  v2 = *(self + OBJC_IVAR____DPPINEShardResult_inputShares);

  v3 = sub_22628EB4C();

  return v3;
}

- (_DPPINEShardResult)initWithPublicShare:(id)share inputShares:(id)shares nonce:(id)nonce dimension:(int64_t)dimension chunkLength:(int64_t)length chunkLengthNormEquality:(int64_t)equality l2NormBoundInt:(unint64_t)int fractionalBitCount:(int64_t)self0
{
  shareCopy = share;
  sharesCopy = shares;
  nonceCopy = nonce;
  v16 = sub_22628E7CC();
  v18 = v17;

  v19 = sub_22628EB5C();
  v20 = sub_22628E7CC();
  v22 = v21;

  return PINEShim.ShardResult.init(publicShare:inputShares:nonce:dimension:chunkLength:chunkLengthNormEquality:l2NormBoundInt:fractionalBitCount:)(v16, v18, v19, v20, v22, dimension, length, equality, int, count);
}

- (_DPPINEShardResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end