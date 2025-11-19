@interface PKPassTileDescriptorState
- (BOOL)isEqualToUnresolvedState:(id)a3;
- (id)initForType:(int64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_copyInto:(uint64_t)a1;
@end

@implementation PKPassTileDescriptorState

- (id)initForType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKPassTileDescriptorState;
  result = [(PKPassTileDescriptorState *)&v5 init];
  if (result)
  {
    *(result + 8) = a3 != 1;
    *(result + 2) = a3;
    *(result + 3) = 0;
  }

  return result;
}

- (void)_copyInto:(uint64_t)a1
{
  if (a1)
  {
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    objc_storeStrong((a2 + 32), *(a1 + 32));
    v4 = a2;
    objc_storeStrong(v4 + 5, *(a1 + 40));
    *(v4 + 9) = *(a1 + 9);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(PKPassTileDescriptorState *)[PKMutablePassTileDescriptorState alloc] initForType:self->_type];
  [(PKPassTileDescriptorState *)self _copyInto:v4];
  return v4;
}

- (BOOL)isEqualToUnresolvedState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2] != self->_type || *(v4 + 8) != self->_supported || v4[3] != self->_enabled)
  {
    goto LABEL_16;
  }

  stateIdentifier = self->_stateIdentifier;
  v7 = v4[4];
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