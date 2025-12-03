@interface _DPPINEShim
+ (BOOL)isValidPINEType:(unint64_t)type;
+ (id)shard:(id)shard parameter:(id)parameter error:(id *)error;
- (_DPPINEShim)init;
@end

@implementation _DPPINEShim

- (_DPPINEShim)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PINEShim();
  return [(_DPPINEShim *)&v3 init];
}

+ (id)shard:(id)shard parameter:(id)parameter error:(id *)error
{
  v6 = *(parameter + OBJC_IVAR____DPPINEParameter_pineType);
  switch(v6)
  {
    case -61434:
      shardCopy3 = shard;
      parameterCopy3 = parameter;
      v9 = sub_226281E8C(shardCopy3, parameterCopy3);
      break;
    case -61435:
      shardCopy3 = shard;
      parameterCopy3 = parameter;
      v9 = sub_226281AAC(shardCopy3, parameterCopy3);
      break;
    case -61436:
      shardCopy3 = shard;
      parameterCopy3 = parameter;
      v9 = sub_2262816CC(shardCopy3, parameterCopy3);
      break;
    default:
      shardCopy4 = shard;
      parameterCopy4 = parameter;
      result = sub_22628EC0C();
      __break(1u);
      return result;
  }

  v10 = v9;

  return v10;
}

+ (BOOL)isValidPINEType:(unint64_t)type
{
  if (HIDWORD(type))
  {
    __break(1u);
  }

  else
  {
    LOBYTE(self) = (type + 61436) < 3;
  }

  return self;
}

@end