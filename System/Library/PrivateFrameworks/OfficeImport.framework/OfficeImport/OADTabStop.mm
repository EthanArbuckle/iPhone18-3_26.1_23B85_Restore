@interface OADTabStop
- (BOOL)isEqual:(id)equal;
@end

@implementation OADTabStop

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->mAlign == *(equalCopy + 8) && self->mPosition == equalCopy[3];

  return v6;
}

@end