@interface NTKCompanionRemoteComplication
+ (id)complicationWithApp:(id)app;
- (id)localizedDetailText;
@end

@implementation NTKCompanionRemoteComplication

+ (id)complicationWithApp:(id)app
{
  appCopy = app;
  complicationClientIdentifier = [appCopy complicationClientIdentifier];
  v6 = objc_opt_self();
  watchApplicationIdentifier = [v6 watchApplicationIdentifier];
  legacyComplicationDescriptor = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
  v9 = [self complicationWithClientIdentifier:complicationClientIdentifier appBundleIdentifier:watchApplicationIdentifier complicationDescriptor:legacyComplicationDescriptor];

  [v9 setApp:appCopy];

  return v9;
}

- (id)localizedDetailText
{
  v3 = [(NTKCompanionRemoteComplication *)self app];

  if (v3)
  {
    v4 = [(NTKCompanionRemoteComplication *)self app];
    name = [v4 name];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKCompanionRemoteComplication;
    name = [(NTKRemoteComplication *)&v7 localizedDetailText];
  }

  return name;
}

@end