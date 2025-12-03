@interface GDVURecognitionResult
- (GDEntityIdentifier)entityIdentifier;
- (void)setEntityIdentifier:(id)identifier;
@end

@implementation GDVURecognitionResult

- (GDEntityIdentifier)entityIdentifier
{
  v2 = GDVURecognitionResult.entityIdentifier.getter();

  return v2;
}

- (void)setEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  GDVURecognitionResult.entityIdentifier.setter(identifierCopy);
}

@end