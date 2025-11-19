@interface _DPPreambleShim
+ (id)shard:(id)a3 metaData:(id)a4 dimension:(int64_t)a5 error:(id *)a6;
- (_DPPreambleShim)init;
@end

@implementation _DPPreambleShim

- (_DPPreambleShim)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PreambleShim();
  return [(_DPPreambleShim *)&v3 init];
}

+ (id)shard:(id)a3 metaData:(id)a4 dimension:(int64_t)a5 error:(id *)a6
{
  v8 = sub_22628EACC();
  v9 = a3;
  v10 = sub_22627F988(v9, v8, a5);

  return v10;
}

@end