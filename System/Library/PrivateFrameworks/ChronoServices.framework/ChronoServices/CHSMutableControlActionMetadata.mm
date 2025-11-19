@interface CHSMutableControlActionMetadata
- (id)copyWithZone:(_NSZone *)a3;
- (void)setIntentType:(id)a3;
@end

@implementation CHSMutableControlActionMetadata

- (void)setIntentType:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  intentType = self->super._intentType;
  self->super._intentType = v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSControlActionMetadata alloc];

  return [(CHSControlActionMetadata *)v4 _initWithMetadata:self];
}

@end