@interface CADObjectID(GenerationStamping)
- (CADGenerationStampedObjectID)stampedCopyWithGeneration:()GenerationStamping;
@end

@implementation CADObjectID(GenerationStamping)

- (CADGenerationStampedObjectID)stampedCopyWithGeneration:()GenerationStamping
{
  v3 = -[CADGenerationStampedObjectID initWithEntityType:entityID:databaseID:generation:]([CADGenerationStampedObjectID alloc], "initWithEntityType:entityID:databaseID:generation:", [a1 entityType], objc_msgSend(a1, "entityID"), objc_msgSend(a1, "databaseID"), a3);

  return v3;
}

@end