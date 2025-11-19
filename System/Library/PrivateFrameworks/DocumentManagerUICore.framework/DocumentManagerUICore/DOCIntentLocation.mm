@interface DOCIntentLocation
+ (DOCIntentLocation)intentLocationWithIdentifier:(id)a3 displayString:(id)a4 type:(id)a5;
+ (DOCIntentLocation)intentLocationWithItem:(id)a3;
+ (DOCIntentLocation)intentLocationWithTag:(id)a3;
+ (id)imageForType:(id)a3;
@end

@implementation DOCIntentLocation

+ (DOCIntentLocation)intentLocationWithIdentifier:(id)a3 displayString:(id)a4 type:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [DOCIntentLocation alloc];
  v11 = [DOCIntentLocation imageForType:v7];
  v12 = [(DOCIntentLocation *)v10 initWithIdentifier:v9 displayString:v8 subtitleString:0 displayImage:v11];

  [(DOCIntentLocation *)v12 setLocationType:v7];
  [(DOCIntentLocation *)v12 setLocationIdentifier:v9];

  return v12;
}

+ (DOCIntentLocation)intentLocationWithTag:(id)a3
{
  v3 = a3;
  v4 = [v3 displayName];
  v5 = [v3 displayName];

  v6 = [DOCIntentLocation intentLocationWithIdentifier:v4 displayString:v5 type:@"tag"];

  return v6;
}

+ (DOCIntentLocation)intentLocationWithItem:(id)a3
{
  v3 = a3;
  v4 = [v3 itemIdentifier];
  v5 = [v3 displayName];
  v6 = [DOCIntentLocation intentLocationWithIdentifier:v4 displayString:v5 type:@"location"];

  v7 = [v3 itemID];
  v8 = [v7 identifier];
  [v6 setLocationIdentifier:v8];

  v9 = [v3 itemID];

  v10 = [v9 providerDomainID];
  [v6 setDomainIdentifier:v10];

  return v6;
}

+ (id)imageForType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 == @"location")
  {
    goto LABEL_12;
  }

  if (v3 == @"tag")
  {
    v7 = MEMORY[0x277CD3D10];
    v8 = @"circle";
    goto LABEL_17;
  }

  if (v3 == @"recents")
  {
    v7 = MEMORY[0x277CD3D10];
    v8 = @"clock";
    goto LABEL_17;
  }

  if (v3 == @"shared")
  {
    v7 = MEMORY[0x277CD3D10];
    v8 = @"folder.badge.person.crop";
    goto LABEL_17;
  }

  if (v3 == @"downloads")
  {
    v7 = MEMORY[0x277CD3D10];
    v8 = @"arrow.down.circle";
    goto LABEL_17;
  }

  if (v3 == @"customFolder")
  {
LABEL_12:
    v7 = MEMORY[0x277CD3D10];
    v8 = @"folder";
LABEL_17:
    v6 = [v7 systemImageNamed:v8];
    goto LABEL_18;
  }

  v5 = *MEMORY[0x277D062B8];
  if (!*MEMORY[0x277D062B8])
  {
    v10 = MEMORY[0x277D062B8];
    DOCInitLogging();
    v5 = *v10;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(DOCIntentLocation(DOCIntentsExtensions) *)v4 imageForType:v5];
  }

  v6 = 0;
LABEL_18:

  return v6;
}

@end