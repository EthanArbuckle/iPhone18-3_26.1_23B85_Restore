@interface CWFAutoJoinParameters
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAutoJoinParameters:(id)a3;
- (CWFAutoJoinParameters)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqualToAutoJoinParameters:(id)a3
{
  v6 = a3;
  trigger = self->_trigger;
  if (trigger == [v6 trigger])
  {
    mode = self->_mode;
    if (mode == [v6 mode])
    {
      targetNetworkProfile = self->_targetNetworkProfile;
      v10 = [v6 targetNetworkProfile];
      if (targetNetworkProfile != v10)
      {
        if (!self->_targetNetworkProfile || ([v6 targetNetworkProfile], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v13 = 0;
          goto LABEL_17;
        }

        v3 = v11;
        v12 = self->_targetNetworkProfile;
        v4 = [v6 targetNetworkProfile];
        if (![(CWFNetworkProfile *)v12 isEqual:v4])
        {
          v13 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      preferredChannels = self->_preferredChannels;
      v15 = [v6 preferredChannels];
      v13 = preferredChannels == v15;
      if (!v13 && self->_preferredChannels)
      {
        v16 = [v6 preferredChannels];
        if (!v16)
        {

          v13 = 0;
LABEL_15:
          if (targetNetworkProfile != v10)
          {
            goto LABEL_16;
          }

LABEL_17:

          goto LABEL_18;
        }

        v17 = v16;
        v18 = self->_preferredChannels;
        v19 = [v6 preferredChannels];
        v13 = [(NSArray *)v18 isEqual:v19];
      }

      goto LABEL_15;
    }
  }

  v13 = 0;
LABEL_18:

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFAutoJoinParameters *)self isEqualToAutoJoinParameters:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = self->_mode ^ self->_trigger;
  v4 = v3 ^ [(CWFNetworkProfile *)self->_targetNetworkProfile hash];
  return v4 ^ [(NSArray *)self->_preferredChannels hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFAutoJoinParameters allocWithZone:?]];
  [(CWFAutoJoinParameters *)v4 setTrigger:self->_trigger];
  [(CWFAutoJoinParameters *)v4 setMode:self->_mode];
  [(CWFAutoJoinParameters *)v4 setTargetNetworkProfile:self->_targetNetworkProfile];
  [(CWFAutoJoinParameters *)v4 setPreferredChannels:self->_preferredChannels];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  trigger = self->_trigger;
  v5 = a3;
  [v5 encodeInteger:trigger forKey:@"_trigger"];
  [v5 encodeInteger:self->_mode forKey:@"_mode"];
  [v5 encodeObject:self->_targetNetworkProfile forKey:@"_targetNetworkProfile"];
  [v5 encodeObject:self->_preferredChannels forKey:@"_preferredChannels"];
}

- (CWFAutoJoinParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CWFAutoJoinParameters;
  v5 = [(CWFAutoJoinParameters *)&v14 init];
  if (v5)
  {
    v5->_trigger = [v4 decodeIntegerForKey:@"_trigger"];
    v5->_mode = [v4 decodeIntegerForKey:@"_mode"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_targetNetworkProfile"];
    targetNetworkProfile = v5->_targetNetworkProfile;
    v5->_targetNetworkProfile = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_preferredChannels"];
    preferredChannels = v5->_preferredChannels;
    v5->_preferredChannels = v11;
  }

  return v5;
}

@end