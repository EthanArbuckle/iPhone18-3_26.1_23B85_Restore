@interface PKPassTileDescriptorState
- (BOOL)isEqualToUnresolvedState:(id)state;
- (id)initForType:(int64_t)type;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_copyInto:(uint64_t)into;
@end

@implementation PKPassTileDescriptorState

- (id)initForType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = PKPassTileDescriptorState;
  result = [(PKPassTileDescriptorState *)&v5 init];
  if (result)
  {
    *(result + 8) = type != 1;
    *(result + 2) = type;
    *(result + 3) = 0;
  }

  return result;
}

- (void)_copyInto:(uint64_t)into
{
  if (into)
  {
    *(a2 + 8) = *(into + 8);
    *(a2 + 24) = *(into + 24);
    objc_storeStrong((a2 + 32), *(into + 32));
    v4 = a2;
    objc_storeStrong(v4 + 5, *(into + 40));
    *(v4 + 9) = *(into + 9);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PKPassTileDescriptorState *)[PKMutablePassTileDescriptorState alloc] initForType:self->_type];
  [(PKPassTileDescriptorState *)self _copyInto:v4];
  return v4;
}

- (BOOL)isEqualToUnresolvedState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy[2] != self->_type || *(stateCopy + 8) != self->_supported || stateCopy[3] != self->_enabled)
  {
    goto LABEL_16;
  }

  stateIdentifier = self->_stateIdentifier;
  v7 = stateCopy[4];
  v8 = stateIdentifier;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

      goto LABEL_16;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_16;
    }
  }

  v11 = v5[5];
  stateOverride = self->_stateOverride;
  if (v11)
  {
    if (!stateOverride || ([v11 isEqualToUnresolvedState:?] & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    v13 = *(v5 + 9) == self->_inProgress;
    goto LABEL_17;
  }

  if (!stateOverride)
  {
    goto LABEL_18;
  }

LABEL_16:
  v13 = 0;
LABEL_17:

  return v13;
}

@end