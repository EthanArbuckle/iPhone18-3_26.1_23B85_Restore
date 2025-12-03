@interface XRMutableIndexSet
- (id)copyWithZone:(_NSZone *)zone;
- (void)addIndex:(unint64_t)index;
- (void)addIndexesInRange:(_XRIndexRange)range;
@end

@implementation XRMutableIndexSet

- (void)addIndex:(unint64_t)index
{
  v3[0] = index;
  v3[1] = index;
  sub_24808FECC(&self->super._impl, v3);
}

- (void)addIndexesInRange:(_XRIndexRange)range
{
  if (range.var1)
  {
    v3[0] = range.var0;
    v3[1] = range.var0 + range.var1 - 1;
    sub_24808FECC(&self->super._impl, v3);
  }

  sub_24808EFF4(&self->super._impl);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = sub_24808F164(v4, self);
  return v4;
}

@end