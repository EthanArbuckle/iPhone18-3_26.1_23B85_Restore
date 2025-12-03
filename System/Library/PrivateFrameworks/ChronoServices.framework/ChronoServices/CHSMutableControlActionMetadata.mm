@interface CHSMutableControlActionMetadata
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIntentType:(id)type;
@end

@implementation CHSMutableControlActionMetadata

- (void)setIntentType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy copy];
  intentType = self->super._intentType;
  self->super._intentType = v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSControlActionMetadata alloc];

  return [(CHSControlActionMetadata *)v4 _initWithMetadata:self];
}

@end