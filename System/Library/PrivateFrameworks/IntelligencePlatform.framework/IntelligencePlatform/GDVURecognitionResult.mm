@interface GDVURecognitionResult
- (GDEntityIdentifier)entityIdentifier;
- (void)setEntityIdentifier:(id)a3;
@end

@implementation GDVURecognitionResult

- (GDEntityIdentifier)entityIdentifier
{
  v2 = GDVURecognitionResult.entityIdentifier.getter();

  return v2;
}

- (void)setEntityIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  GDVURecognitionResult.entityIdentifier.setter(v4);
}

@end