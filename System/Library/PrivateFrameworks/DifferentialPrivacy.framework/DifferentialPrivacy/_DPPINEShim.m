@interface _DPPINEShim
+ (BOOL)isValidPINEType:(unint64_t)a3;
+ (id)shard:(id)a3 parameter:(id)a4 error:(id *)a5;
- (_DPPINEShim)init;
@end

@implementation _DPPINEShim

- (_DPPINEShim)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PINEShim();
  return [(_DPPINEShim *)&v3 init];
}

+ (id)shard:(id)a3 parameter:(id)a4 error:(id *)a5
{
  v6 = *(a4 + OBJC_IVAR____DPPINEParameter_pineType);
  switch(v6)
  {
    case -61434:
      v7 = a3;
      v8 = a4;
      v9 = sub_226281E8C(v7, v8);
      break;
    case -61435:
      v7 = a3;
      v8 = a4;
      v9 = sub_226281AAC(v7, v8);
      break;
    case -61436:
      v7 = a3;
      v8 = a4;
      v9 = sub_2262816CC(v7, v8);
      break;
    default:
      v12 = a3;
      v13 = a4;
      result = sub_22628EC0C();
      __break(1u);
      return result;
  }

  v10 = v9;

  return v10;
}

+ (BOOL)isValidPINEType:(unint64_t)a3
{
  if (HIDWORD(a3))
  {
    __break(1u);
  }

  else
  {
    LOBYTE(a1) = (a3 + 61436) < 3;
  }

  return a1;
}

@end