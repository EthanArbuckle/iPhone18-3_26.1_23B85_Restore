@interface _DPPINEShardResult
- (NSArray)inputShares;
- (_DPPINEShardResult)init;
- (_DPPINEShardResult)initWithPublicShare:(id)a3 inputShares:(id)a4 nonce:(id)a5 dimension:(int64_t)a6 chunkLength:(int64_t)a7 chunkLengthNormEquality:(int64_t)a8 l2NormBoundInt:(unint64_t)a9 fractionalBitCount:(int64_t)a10;
@end

@implementation _DPPINEShardResult

- (NSArray)inputShares
{
  v2 = *(self + OBJC_IVAR____DPPINEShardResult_inputShares);

  v3 = sub_22628EB4C();

  return v3;
}

- (_DPPINEShardResult)initWithPublicShare:(id)a3 inputShares:(id)a4 nonce:(id)a5 dimension:(int64_t)a6 chunkLength:(int64_t)a7 chunkLengthNormEquality:(int64_t)a8 l2NormBoundInt:(unint64_t)a9 fractionalBitCount:(int64_t)a10
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = sub_22628E7CC();
  v18 = v17;

  v19 = sub_22628EB5C();
  v20 = sub_22628E7CC();
  v22 = v21;

  return PINEShim.ShardResult.init(publicShare:inputShares:nonce:dimension:chunkLength:chunkLengthNormEquality:l2NormBoundInt:fractionalBitCount:)(v16, v18, v19, v20, v22, a6, a7, a8, a9, a10);
}

- (_DPPINEShardResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end