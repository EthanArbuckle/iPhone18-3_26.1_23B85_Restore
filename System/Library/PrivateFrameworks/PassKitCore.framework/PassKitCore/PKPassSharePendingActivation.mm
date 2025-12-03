@interface PKPassSharePendingActivation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPassSharePendingActivation:(id)activation;
- (PKPassSharePendingActivation)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassSharePendingActivation

- (PKPassSharePendingActivation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPassSharePendingActivation;
  v5 = [(PKPassSharePendingActivation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalInvitation"];
    originalInvitation = v5->_originalInvitation;
    v5->_originalInvitation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareIdentifier"];
    shareIdentifier = v5->_shareIdentifier;
    v5->_shareIdentifier = v8;

    v5->_isWaitingOnUserAction = [coderCopy decodeBoolForKey:@"isWaitingOnUserAction"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  originalInvitation = self->_originalInvitation;
  coderCopy = coder;
  [coderCopy encodeObject:originalInvitation forKey:@"originalInvitation"];
  [coderCopy encodeObject:self->_shareIdentifier forKey:@"shareIdentifier"];
  [coderCopy encodeBool:self->_isWaitingOnUserAction forKey:@"isWaitingOnUserAction"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"originalInvitation: '%@'; ", self->_originalInvitation];
  [v6 appendFormat:@"shareIdentifier: '%@'; ", self->_shareIdentifier];
  if (self->_isWaitingOnUserAction)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  [v6 appendFormat:@"isWaitingOnUserAction: '%@'; ", v7];
  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_originalInvitation)
  {
    [array addObject:?];
  }

  if (self->_shareIdentifier)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_isWaitingOnUserAction - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassSharePendingActivation *)self isEqualToPassSharePendingActivation:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassSharePendingActivation:(id)activation
{
  activationCopy = activation;
  if (!activationCopy)
  {
    goto LABEL_15;
  }

  originalInvitation = self->_originalInvitation;
  v6 = activationCopy[2];
  if (originalInvitation)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (originalInvitation != v6)
    {
      goto LABEL_15;
    }
  }

  else if (([(PKSharingMessage *)originalInvitation isEqual:?]& 1) == 0)
  {
    goto LABEL_15;
  }

  shareIdentifier = self->_shareIdentifier;
  v9 = activationCopy[3];
  if (!shareIdentifier || !v9)
  {
    if (shareIdentifier == v9)
    {
      goto LABEL_13;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  if (([(NSString *)shareIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v10 = self->_isWaitingOnUserAction == *(activationCopy + 8);
LABEL_16:

  return v10;
}

@end