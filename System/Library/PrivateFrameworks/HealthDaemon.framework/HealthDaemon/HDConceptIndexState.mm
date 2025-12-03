@interface HDConceptIndexState
+ (id)stateWithGeneration:(int64_t)generation;
- (BOOL)isEqual:(id)equal;
- (HDConceptIndexState)initWithCoder:(id)coder;
- (HDConceptIndexState)initWithGeneration:(int64_t)generation anchor:(id)anchor;
- (id)copyWithAnchor:(id)anchor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDConceptIndexState

+ (id)stateWithGeneration:(int64_t)generation
{
  v3 = [[self alloc] initWithGeneration:generation anchor:0];

  return v3;
}

- (HDConceptIndexState)initWithGeneration:(int64_t)generation anchor:(id)anchor
{
  anchorCopy = anchor;
  v12.receiver = self;
  v12.super_class = HDConceptIndexState;
  v7 = [(HDConceptIndexState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_generation = generation;
    v9 = [anchorCopy copy];
    anchor = v8->_anchor;
    v8->_anchor = v9;
  }

  return v8;
}

- (id)copyWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = [objc_alloc(objc_opt_class()) initWithGeneration:self->_generation anchor:anchorCopy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = 0;
      if (self->_generation == v5->_generation)
      {
        anchor = self->_anchor;
        v7 = v5->_anchor;
        if (anchor == v7 || v7 && [(HKQueryAnchor *)anchor isEqual:?])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HDConceptIndexState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HDConceptIndexState;
  v5 = [(HDConceptIndexState *)&v9 init];
  if (v5)
  {
    v5->_generation = [coderCopy decodeIntegerForKey:@"Generation"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  generation = self->_generation;
  coderCopy = coder;
  [coderCopy encodeInteger:generation forKey:@"Generation"];
  [coderCopy encodeObject:self->_anchor forKey:@"Anchor"];
}

@end