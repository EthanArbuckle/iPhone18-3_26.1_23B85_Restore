@interface CWFAutoJoinParameters
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAutoJoinParameters:(id)parameters;
- (CWFAutoJoinParameters)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFAutoJoinParameters

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sub_1E0BCC05C(self->_trigger);
  v5 = sub_1E0BCCB90(self->_mode);
  v6 = [(NSArray *)self->_preferredChannels componentsJoinedByString:@", "];
  v7 = [v3 stringWithFormat:@"trigger=%@, mode=%@, preferredChannels=(%@), target=(%@)", v4, v5, v6, self->_targetNetworkProfile];

  return v7;
}

- (BOOL)isEqualToAutoJoinParameters:(id)parameters
{
  parametersCopy = parameters;
  trigger = self->_trigger;
  if (trigger == [parametersCopy trigger])
  {
    mode = self->_mode;
    if (mode == [parametersCopy mode])
    {
      targetNetworkProfile = self->_targetNetworkProfile;
      targetNetworkProfile = [parametersCopy targetNetworkProfile];
      if (targetNetworkProfile != targetNetworkProfile)
      {
        if (!self->_targetNetworkProfile || ([parametersCopy targetNetworkProfile], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v13 = 0;
          goto LABEL_17;
        }

        v3 = v11;
        v12 = self->_targetNetworkProfile;
        targetNetworkProfile2 = [parametersCopy targetNetworkProfile];
        if (![(CWFNetworkProfile *)v12 isEqual:targetNetworkProfile2])
        {
          v13 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      preferredChannels = self->_preferredChannels;
      preferredChannels = [parametersCopy preferredChannels];
      v13 = preferredChannels == preferredChannels;
      if (!v13 && self->_preferredChannels)
      {
        preferredChannels2 = [parametersCopy preferredChannels];
        if (!preferredChannels2)
        {

          v13 = 0;
LABEL_15:
          if (targetNetworkProfile != targetNetworkProfile)
          {
            goto LABEL_16;
          }

LABEL_17:

          goto LABEL_18;
        }

        v17 = preferredChannels2;
        v18 = self->_preferredChannels;
        preferredChannels3 = [parametersCopy preferredChannels];
        v13 = [(NSArray *)v18 isEqual:preferredChannels3];
      }

      goto LABEL_15;
    }
  }

  v13 = 0;
LABEL_18:

  return v13;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAutoJoinParameters *)self isEqualToAutoJoinParameters:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = self->_mode ^ self->_trigger;
  v4 = v3 ^ [(CWFNetworkProfile *)self->_targetNetworkProfile hash];
  return v4 ^ [(NSArray *)self->_preferredChannels hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFAutoJoinParameters allocWithZone:?]];
  [(CWFAutoJoinParameters *)v4 setTrigger:self->_trigger];
  [(CWFAutoJoinParameters *)v4 setMode:self->_mode];
  [(CWFAutoJoinParameters *)v4 setTargetNetworkProfile:self->_targetNetworkProfile];
  [(CWFAutoJoinParameters *)v4 setPreferredChannels:self->_preferredChannels];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  trigger = self->_trigger;
  coderCopy = coder;
  [coderCopy encodeInteger:trigger forKey:@"_trigger"];
  [coderCopy encodeInteger:self->_mode forKey:@"_mode"];
  [coderCopy encodeObject:self->_targetNetworkProfile forKey:@"_targetNetworkProfile"];
  [coderCopy encodeObject:self->_preferredChannels forKey:@"_preferredChannels"];
}

- (CWFAutoJoinParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CWFAutoJoinParameters;
  v5 = [(CWFAutoJoinParameters *)&v14 init];
  if (v5)
  {
    v5->_trigger = [coderCopy decodeIntegerForKey:@"_trigger"];
    v5->_mode = [coderCopy decodeIntegerForKey:@"_mode"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_targetNetworkProfile"];
    targetNetworkProfile = v5->_targetNetworkProfile;
    v5->_targetNetworkProfile = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_preferredChannels"];
    preferredChannels = v5->_preferredChannels;
    v5->_preferredChannels = v11;
  }

  return v5;
}

@end