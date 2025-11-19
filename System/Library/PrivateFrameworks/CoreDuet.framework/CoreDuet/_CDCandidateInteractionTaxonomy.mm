@interface _CDCandidateInteractionTaxonomy
+ (void)taxonomyOfInteraction:(uint64_t)a1;
+ (void)taxonomyWithDirection:(uint64_t)a3 mechanism:;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation _CDCandidateInteractionTaxonomy

+ (void)taxonomyWithDirection:(uint64_t)a3 mechanism:
{
  v5 = objc_alloc(objc_opt_self());
  if (v5)
  {
    v5[1] = a2;
    v5[2] = a3;
  }

  return v5;
}

+ (void)taxonomyOfInteraction:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 direction];
  v4 = [v2 mechanism];

  return [_CDCandidateInteractionTaxonomy taxonomyWithDirection:v3 mechanism:v4];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6 && self->_direction == v6[1] && self->_mechanism == v6[2];

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = directionToString(self->_direction);
  v6 = mechanismToString(self->_mechanism);
  v7 = [v3 initWithFormat:@"<%@: %@ %@>", v4, v5, v6];

  return v7;
}

@end