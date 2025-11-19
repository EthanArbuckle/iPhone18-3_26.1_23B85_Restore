@interface OADTabStop
- (BOOL)isEqual:(id)a3;
@end

@implementation OADTabStop

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->mAlign == *(v4 + 8) && self->mPosition == v4[3];

  return v6;
}

@end