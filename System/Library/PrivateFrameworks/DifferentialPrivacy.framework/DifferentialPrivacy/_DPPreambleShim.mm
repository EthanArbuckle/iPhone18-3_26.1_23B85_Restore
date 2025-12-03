@interface _DPPreambleShim
+ (id)shard:(id)shard metaData:(id)data dimension:(int64_t)dimension error:(id *)error;
- (_DPPreambleShim)init;
@end

@implementation _DPPreambleShim

- (_DPPreambleShim)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PreambleShim();
  return [(_DPPreambleShim *)&v3 init];
}

+ (id)shard:(id)shard metaData:(id)data dimension:(int64_t)dimension error:(id *)error
{
  v8 = sub_22628EACC();
  shardCopy = shard;
  v10 = sub_22627F988(shardCopy, v8, dimension);

  return v10;
}

@end