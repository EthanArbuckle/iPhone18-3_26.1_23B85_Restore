@interface TDSchemaElementProduction
- (void)generateNewRendition;
@end

@implementation TDSchemaElementProduction

- (void)generateNewRendition
{
  v3 = -[TDSchemaRenditionSpec initWithEntity:insertIntoManagedObjectContext:]([TDSchemaRenditionSpec alloc], "initWithEntity:insertIntoManagedObjectContext:", [objc_msgSend(objc_msgSend(-[TDSchemaElementProduction entity](self "entity")], -[TDSchemaElementProduction managedObjectContext](self, "managedObjectContext"));
  [(TDSchemaElementProduction *)self addRenditionsObject:v3];

  [(TDRenditionSpec *)v3 resetToBaseKeySpec];
}

@end