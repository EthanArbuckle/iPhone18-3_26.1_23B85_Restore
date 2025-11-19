@interface XRMutableIndexSet
- (id)copyWithZone:(_NSZone *)a3;
- (void)addIndex:(unint64_t)a3;
- (void)addIndexesInRange:(_XRIndexRange)a3;
@end

@implementation XRMutableIndexSet

- (void)addIndex:(unint64_t)a3
{
  v3[0] = a3;
  v3[1] = a3;
  sub_24808FECC(&self->super._impl, v3);
}

- (void)addIndexesInRange:(_XRIndexRange)a3
{
  if (a3.var1)
  {
    v3[0] = a3.var0;
    v3[1] = a3.var0 + a3.var1 - 1;
    sub_24808FECC(&self->super._impl, v3);
  }

  sub_24808EFF4(&self->super._impl);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = sub_24808F164(v4, self);
  return v4;
}

@end