@interface CADObjectID(GenerationStamping)
- (CADGenerationStampedObjectID)stampedCopyWithGeneration:()GenerationStamping;
@end

@implementation CADObjectID(GenerationStamping)

- (CADGenerationStampedObjectID)stampedCopyWithGeneration:()GenerationStamping
{
  v3 = -[CADGenerationStampedObjectID initWithEntityType:entityID:databaseID:generation:]([CADGenerationStampedObjectID alloc], "initWithEntityType:entityID:databaseID:generation:", [self entityType], objc_msgSend(self, "entityID"), objc_msgSend(self, "databaseID"), a3);

  return v3;
}

@end