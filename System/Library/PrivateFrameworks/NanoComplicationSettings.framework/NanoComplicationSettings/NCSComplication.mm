@interface NCSComplication
- (NCSComplication)initWithDictionary:(id)dictionary;
- (NSString)complicationIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NCSComplication

- (NCSComplication)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = NCSComplication;
  v5 = [(NCSComplication *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appBundleID"];
    v7 = [v6 copy];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v7;

    v9 = [dictionaryCopy objectForKeyedSubscript:@"complicationBundleID"];
    v10 = [v9 copy];
    complicationBundleIdentifier = v5->_complicationBundleIdentifier;
    v5->_complicationBundleIdentifier = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"sockPuppetIdentifier"];
    v13 = [v12 copy];
    sockPuppetIdentifier = v5->_sockPuppetIdentifier;
    v5->_sockPuppetIdentifier = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"active"];
    v5->_active = [v15 BOOLValue];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"installState"];

    if (v16)
    {
      v17 = [dictionaryCopy objectForKeyedSubscript:@"installState"];
      v5->_installState = [v17 integerValue];
    }

    else
    {
      v5->_installState = 2;
    }
  }

  return v5;
}

- (NSString)complicationIdentifier
{
  sockPuppetIdentifier = self->_sockPuppetIdentifier;
  if (sockPuppetIdentifier)
  {
    sockPuppetIdentifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", self->_complicationBundleIdentifier, sockPuppetIdentifier];
  }

  else
  {
    sockPuppetIdentifier = self->_complicationBundleIdentifier;
  }

  return sockPuppetIdentifier;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(NCSComplication *)self name];
  [v4 setName:name];

  appBundleIdentifier = [(NCSComplication *)self appBundleIdentifier];
  [v4 setAppBundleIdentifier:appBundleIdentifier];

  complicationBundleIdentifier = [(NCSComplication *)self complicationBundleIdentifier];
  [v4 setComplicationBundleIdentifier:complicationBundleIdentifier];

  [v4 setCannotBeDisabled:{-[NCSComplication cannotBeDisabled](self, "cannotBeDisabled")}];
  [v4 setActive:{-[NCSComplication isActive](self, "isActive")}];
  sockPuppetIdentifier = [(NCSComplication *)self sockPuppetIdentifier];
  [v4 setSockPuppetIdentifier:sockPuppetIdentifier];

  [v4 setInstallState:{-[NCSComplication installState](self, "installState")}];
  return v4;
}

@end