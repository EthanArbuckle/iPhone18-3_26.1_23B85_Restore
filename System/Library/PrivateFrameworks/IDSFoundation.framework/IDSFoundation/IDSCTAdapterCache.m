@interface IDSCTAdapterCache
- (id)debugDescription;
@end

@implementation IDSCTAdapterCache

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"YES";
  dualSIMEnabled = self->_dualSIMEnabled;
  isAnySIMUsable = self->_isAnySIMUsable;
  if (dualSIMEnabled == 2)
  {
    v8 = @"NO";
  }

  else
  {
    v8 = @"YES";
  }

  if (dualSIMEnabled)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"NotSet";
  }

  if (isAnySIMUsable == 2)
  {
    v10 = @"NO";
  }

  else
  {
    v10 = @"YES";
  }

  if (isAnySIMUsable)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"NotSet";
  }

  isAnySIMInserted = self->_isAnySIMInserted;
  supportsIdentification = self->_supportsIdentification;
  if (isAnySIMInserted == 2)
  {
    v14 = @"NO";
  }

  else
  {
    v14 = @"YES";
  }

  if (isAnySIMInserted)
  {
    v15 = v14;
  }

  else
  {
    v15 = @"NotSet";
  }

  if (supportsIdentification == 2)
  {
    v16 = @"NO";
  }

  else
  {
    v16 = @"YES";
  }

  if (!supportsIdentification)
  {
    v16 = @"NotSet";
  }

  doesAnySIMSupportsSimultaneousVoiceAndDataRightNow = self->_doesAnySIMSupportsSimultaneousVoiceAndDataRightNow;
  sims = self->_sims;
  if (doesAnySIMSupportsSimultaneousVoiceAndDataRightNow == 2)
  {
    v5 = @"NO";
  }

  if (doesAnySIMSupportsSimultaneousVoiceAndDataRightNow)
  {
    v19 = v5;
  }

  else
  {
    v19 = @"NotSet";
  }

  v20 = v16;
  v21 = v15;
  v22 = v11;
  v23 = v9;
  v24 = [v3 stringWithFormat:@"<%@: %p, dualSIM: %@, anyUsable: %@, anyInserted: %@, supportsID: %@, anySimul: %@, sims: %@>", v4, self, v23, v22, v21, v20, v19, sims];

  return v24;
}

@end