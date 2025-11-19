@interface NTKCompanionRemoteComplication
+ (id)complicationWithApp:(id)a3;
- (id)localizedDetailText;
@end

@implementation NTKCompanionRemoteComplication

+ (id)complicationWithApp:(id)a3
{
  v4 = a3;
  v5 = [v4 complicationClientIdentifier];
  v6 = objc_opt_self();
  v7 = [v6 watchApplicationIdentifier];
  v8 = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
  v9 = [a1 complicationWithClientIdentifier:v5 appBundleIdentifier:v7 complicationDescriptor:v8];

  [v9 setApp:v4];

  return v9;
}

- (id)localizedDetailText
{
  v3 = [(NTKCompanionRemoteComplication *)self app];

  if (v3)
  {
    v4 = [(NTKCompanionRemoteComplication *)self app];
    v5 = [v4 name];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKCompanionRemoteComplication;
    v5 = [(NTKRemoteComplication *)&v7 localizedDetailText];
  }

  return v5;
}

@end