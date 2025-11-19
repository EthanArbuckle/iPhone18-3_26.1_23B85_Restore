@interface DNDMutableClientEventDetails
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBody:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setFilterCriteria:(id)a3;
- (void)setForwardingBehavior:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setSender:(id)a3;
- (void)setShouldAlwaysInterrupt:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setThreadIdentifier:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation DNDMutableClientEventDetails

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x2821F96F8](v4, identifier);
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  bundleIdentifier = self->super._bundleIdentifier;
  self->super._bundleIdentifier = v4;

  MEMORY[0x2821F96F8](v4, bundleIdentifier);
}

- (void)setSender:(id)a3
{
  v4 = [a3 copy];
  sender = self->super._sender;
  self->super._sender = v4;

  MEMORY[0x2821F96F8](v4, sender);
}

- (void)setThreadIdentifier:(id)a3
{
  v4 = [a3 copy];
  threadIdentifier = self->super._threadIdentifier;
  self->super._threadIdentifier = v4;

  MEMORY[0x2821F96F8](v4, threadIdentifier);
}

- (void)setFilterCriteria:(id)a3
{
  v4 = [a3 copy];
  filterCriteria = self->super._filterCriteria;
  self->super._filterCriteria = v4;

  MEMORY[0x2821F96F8](v4, filterCriteria);
}

- (void)setForwardingBehavior:(id)a3
{
  v4 = [a3 copy];
  forwardingBehavior = self->super._forwardingBehavior;
  self->super._forwardingBehavior = v4;

  MEMORY[0x2821F96F8](v4, forwardingBehavior);
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->super._title;
  self->super._title = v4;

  MEMORY[0x2821F96F8](v4, title);
}

- (void)setSubtitle:(id)a3
{
  v4 = [a3 copy];
  subtitle = self->super._subtitle;
  self->super._subtitle = v4;

  MEMORY[0x2821F96F8](v4, subtitle);
}

- (void)setBody:(id)a3
{
  v4 = [a3 copy];
  body = self->super._body;
  self->super._body = v4;

  MEMORY[0x2821F96F8](v4, body);
}

- (void)setShouldAlwaysInterrupt:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->super._urgency = v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDClientEventDetails alloc];

  return [(DNDClientEventDetails *)v4 _initWithDetails:self];
}

@end