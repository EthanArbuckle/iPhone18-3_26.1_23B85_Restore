@interface HDConceptIndexState
+ (id)stateWithGeneration:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HDConceptIndexState)initWithCoder:(id)a3;
- (HDConceptIndexState)initWithGeneration:(int64_t)a3 anchor:(id)a4;
- (id)copyWithAnchor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDConceptIndexState

+ (id)stateWithGeneration:(int64_t)a3
{
  v3 = [[a1 alloc] initWithGeneration:a3 anchor:0];

  return v3;
}

- (HDConceptIndexState)initWithGeneration:(int64_t)a3 anchor:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HDConceptIndexState;
  v7 = [(HDConceptIndexState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_generation = a3;
    v9 = [v6 copy];
    anchor = v8->_anchor;
    v8->_anchor = v9;
  }

  return v8;
}

- (id)copyWithAnchor:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithGeneration:self->_generation anchor:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (HDConceptIndexState)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDConceptIndexState;
  v5 = [(HDConceptIndexState *)&v9 init];
  if (v5)
  {
    v5->_generation = [v4 decodeIntegerForKey:@"Generation"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  generation = self->_generation;
  v5 = a3;
  [v5 encodeInteger:generation forKey:@"Generation"];
  [v5 encodeObject:self->_anchor forKey:@"Anchor"];
}

@end