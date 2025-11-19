@interface NCSComplication
- (NCSComplication)initWithDictionary:(id)a3;
- (NSString)complicationIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NCSComplication

- (NCSComplication)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NCSComplication;
  v5 = [(NCSComplication *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appBundleID"];
    v7 = [v6 copy];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v7;

    v9 = [v4 objectForKeyedSubscript:@"complicationBundleID"];
    v10 = [v9 copy];
    complicationBundleIdentifier = v5->_complicationBundleIdentifier;
    v5->_complicationBundleIdentifier = v10;

    v12 = [v4 objectForKeyedSubscript:@"sockPuppetIdentifier"];
    v13 = [v12 copy];
    sockPuppetIdentifier = v5->_sockPuppetIdentifier;
    v5->_sockPuppetIdentifier = v13;

    v15 = [v4 objectForKeyedSubscript:@"active"];
    v5->_active = [v15 BOOLValue];

    v16 = [v4 objectForKeyedSubscript:@"installState"];

    if (v16)
    {
      v17 = [v4 objectForKeyedSubscript:@"installState"];
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
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", self->_complicationBundleIdentifier, sockPuppetIdentifier];
  }

  else
  {
    v3 = self->_complicationBundleIdentifier;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NCSComplication *)self name];
  [v4 setName:v5];

  v6 = [(NCSComplication *)self appBundleIdentifier];
  [v4 setAppBundleIdentifier:v6];

  v7 = [(NCSComplication *)self complicationBundleIdentifier];
  [v4 setComplicationBundleIdentifier:v7];

  [v4 setCannotBeDisabled:{-[NCSComplication cannotBeDisabled](self, "cannotBeDisabled")}];
  [v4 setActive:{-[NCSComplication isActive](self, "isActive")}];
  v8 = [(NCSComplication *)self sockPuppetIdentifier];
  [v4 setSockPuppetIdentifier:v8];

  [v4 setInstallState:{-[NCSComplication installState](self, "installState")}];
  return v4;
}

@end