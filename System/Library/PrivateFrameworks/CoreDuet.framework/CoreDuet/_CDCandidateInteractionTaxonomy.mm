@interface _CDCandidateInteractionTaxonomy
+ (void)taxonomyOfInteraction:(uint64_t)interaction;
+ (void)taxonomyWithDirection:(uint64_t)direction mechanism:;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation _CDCandidateInteractionTaxonomy

+ (void)taxonomyWithDirection:(uint64_t)direction mechanism:
{
  v5 = objc_alloc(objc_opt_self());
  if (v5)
  {
    v5[1] = a2;
    v5[2] = direction;
  }

  return v5;
}

+ (void)taxonomyOfInteraction:(uint64_t)interaction
{
  v2 = a2;
  objc_opt_self();
  direction = [v2 direction];
  mechanism = [v2 mechanism];

  return [_CDCandidateInteractionTaxonomy taxonomyWithDirection:direction mechanism:mechanism];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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