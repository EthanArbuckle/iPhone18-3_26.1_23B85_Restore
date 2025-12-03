@interface _DPPrio3SumVectorShim
+ (id)shard:(id)shard parameter:(id)parameter error:(id *)error;
- (_DPPrio3SumVectorShim)init;
@end

@implementation _DPPrio3SumVectorShim

- (_DPPrio3SumVectorShim)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Prio3SumVectorShim();
  return [(_DPPrio3SumVectorShim *)&v3 init];
}

+ (id)shard:(id)shard parameter:(id)parameter error:(id *)error
{
  if (*(parameter + OBJC_IVAR____DPPrio3SumVectorParameter_vdafType) == -61437)
  {
    shardCopy = shard;
    parameterCopy = parameter;
    v8 = sub_226285104(shardCopy, parameterCopy);

    return v8;
  }

  else
  {
    shardCopy2 = shard;
    parameterCopy2 = parameter;
    result = sub_22628EC0C();
    __break(1u);
  }

  return result;
}

@end