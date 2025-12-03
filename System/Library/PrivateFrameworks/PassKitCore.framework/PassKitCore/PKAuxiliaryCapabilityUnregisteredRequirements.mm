@interface PKAuxiliaryCapabilityUnregisteredRequirements
- (PKAuxiliaryCapabilityUnregisteredRequirements)initWithDictionary:(id)dictionary;
@end

@implementation PKAuxiliaryCapabilityUnregisteredRequirements

- (PKAuxiliaryCapabilityUnregisteredRequirements)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v5 = [dictionaryCopy PKStringForKey:@"dpanIdentifier"];
    v6 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"requirementIdentifiers"];

    selfCopy = 0;
    if (v5 && v6)
    {
      v11.receiver = self;
      v11.super_class = PKAuxiliaryCapabilityUnregisteredRequirements;
      v8 = [(PKAuxiliaryCapabilityUnregisteredRequirements *)&v11 init];
      p_isa = &v8->super.isa;
      if (v8)
      {
        objc_storeStrong(&v8->_dpanIdentifier, v5);
        objc_storeStrong(p_isa + 2, v6);
      }

      self = p_isa;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end