@interface TDSchemaDefinition
- (id)displayName;
- (id)previewImage;
@end

@implementation TDSchemaDefinition

- (id)previewImage
{
  result = [-[TDSchemaDefinition parts](self "parts")];
  if (result)
  {
    v4 = [-[TDSchemaDefinition parts](self "parts")];

    return [v4 previewImage];
  }

  return result;
}

- (id)displayName
{
  v3 = [CoreThemeDocument targetPlatformForMOC:[(TDSchemaDefinition *)self managedObjectContext]];
  result = [objc_opt_class() elementDefinitionWithName:-[TDSchemaDefinition name](self withSchema:{"name"), objc_msgSend(MEMORY[0x277D026E0], "schemaForPlatform:", v3)}];
  if (result)
  {
    v5 = *(result + 1);
    v6 = MEMORY[0x277CCACA8];

    return [v6 stringWithUTF8String:v5];
  }

  return result;
}

@end