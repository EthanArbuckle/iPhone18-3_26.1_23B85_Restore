@interface DOCIntentLocation
+ (DOCIntentLocation)intentLocationWithIdentifier:(id)identifier displayString:(id)string type:(id)type;
+ (DOCIntentLocation)intentLocationWithItem:(id)item;
+ (DOCIntentLocation)intentLocationWithTag:(id)tag;
+ (id)imageForType:(id)type;
@end

@implementation DOCIntentLocation

+ (DOCIntentLocation)intentLocationWithIdentifier:(id)identifier displayString:(id)string type:(id)type
{
  typeCopy = type;
  stringCopy = string;
  identifierCopy = identifier;
  v10 = [DOCIntentLocation alloc];
  v11 = [DOCIntentLocation imageForType:typeCopy];
  v12 = [(DOCIntentLocation *)v10 initWithIdentifier:identifierCopy displayString:stringCopy subtitleString:0 displayImage:v11];

  [(DOCIntentLocation *)v12 setLocationType:typeCopy];
  [(DOCIntentLocation *)v12 setLocationIdentifier:identifierCopy];

  return v12;
}

+ (DOCIntentLocation)intentLocationWithTag:(id)tag
{
  tagCopy = tag;
  displayName = [tagCopy displayName];
  displayName2 = [tagCopy displayName];

  v6 = [DOCIntentLocation intentLocationWithIdentifier:displayName displayString:displayName2 type:@"tag"];

  return v6;
}

+ (DOCIntentLocation)intentLocationWithItem:(id)item
{
  itemCopy = item;
  itemIdentifier = [itemCopy itemIdentifier];
  displayName = [itemCopy displayName];
  v6 = [DOCIntentLocation intentLocationWithIdentifier:itemIdentifier displayString:displayName type:@"location"];

  itemID = [itemCopy itemID];
  identifier = [itemID identifier];
  [v6 setLocationIdentifier:identifier];

  itemID2 = [itemCopy itemID];

  providerDomainID = [itemID2 providerDomainID];
  [v6 setDomainIdentifier:providerDomainID];

  return v6;
}

+ (id)imageForType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy == @"location")
  {
    goto LABEL_12;
  }

  if (typeCopy == @"tag")
  {
    v7 = MEMORY[0x277CD3D10];
    v8 = @"circle";
    goto LABEL_17;
  }

  if (typeCopy == @"recents")
  {
    v7 = MEMORY[0x277CD3D10];
    v8 = @"clock";
    goto LABEL_17;
  }

  if (typeCopy == @"shared")
  {
    v7 = MEMORY[0x277CD3D10];
    v8 = @"folder.badge.person.crop";
    goto LABEL_17;
  }

  if (typeCopy == @"downloads")
  {
    v7 = MEMORY[0x277CD3D10];
    v8 = @"arrow.down.circle";
    goto LABEL_17;
  }

  if (typeCopy == @"customFolder")
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