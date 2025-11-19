@interface _DPPrio3SumVectorShim
+ (id)shard:(id)a3 parameter:(id)a4 error:(id *)a5;
- (_DPPrio3SumVectorShim)init;
@end

@implementation _DPPrio3SumVectorShim

- (_DPPrio3SumVectorShim)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Prio3SumVectorShim();
  return [(_DPPrio3SumVectorShim *)&v3 init];
}

+ (id)shard:(id)a3 parameter:(id)a4 error:(id *)a5
{
  if (*(a4 + OBJC_IVAR____DPPrio3SumVectorParameter_vdafType) == -61437)
  {
    v6 = a3;
    v7 = a4;
    v8 = sub_226285104(v6, v7);

    return v8;
  }

  else
  {
    v10 = a3;
    v11 = a4;
    result = sub_22628EC0C();
    __break(1u);
  }

  return result;
}

@end