@interface _DPVDAFShardResult
- (NSArray)inputShares;
- (_DPVDAFShardResult)init;
- (_DPVDAFShardResult)initWithPublicShare:(id)a3 inputShares:(id)a4 nonce:(id)a5 dimension:(int64_t)a6 chunkLength:(int64_t)a7;
@end

@implementation _DPVDAFShardResult

- (NSArray)inputShares
{
  v2 = *(self + OBJC_IVAR____DPVDAFShardResult_inputShares);

  v3 = sub_22628EB4C();

  return v3;
}

- (_DPVDAFShardResult)initWithPublicShare:(id)a3 inputShares:(id)a4 nonce:(id)a5 dimension:(int64_t)a6 chunkLength:(int64_t)a7
{
  ObjectType = swift_getObjectType();
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = sub_22628E7CC();
  v19 = v18;

  v20 = sub_22628EB5C();
  v21 = sub_22628E7CC();
  v23 = v22;

  v24 = (self + OBJC_IVAR____DPVDAFShardResult_publicShare);
  *v24 = v17;
  v24[1] = v19;
  *(self + OBJC_IVAR____DPVDAFShardResult_inputShares) = v20;
  v25 = (self + OBJC_IVAR____DPVDAFShardResult_nonce);
  *v25 = v21;
  v25[1] = v23;
  *(self + OBJC_IVAR____DPVDAFShardResult_dimension) = a6;
  *(self + OBJC_IVAR____DPVDAFShardResult_chunkLength) = a7;
  v27.receiver = self;
  v27.super_class = ObjectType;
  return [(_DPVDAFShardResult *)&v27 init];
}

- (_DPVDAFShardResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end