@interface DNDMutableClientEventDetails
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBody:(id)body;
- (void)setBundleIdentifier:(id)identifier;
- (void)setFilterCriteria:(id)criteria;
- (void)setForwardingBehavior:(id)behavior;
- (void)setIdentifier:(id)identifier;
- (void)setSender:(id)sender;
- (void)setShouldAlwaysInterrupt:(BOOL)interrupt;
- (void)setSubtitle:(id)subtitle;
- (void)setThreadIdentifier:(id)identifier;
- (void)setTitle:(id)title;
@end

@implementation DNDMutableClientEventDetails

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x2821F96F8](v4, identifier);
}

- (void)setBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->super._bundleIdentifier;
  self->super._bundleIdentifier = v4;

  MEMORY[0x2821F96F8](v4, bundleIdentifier);
}

- (void)setSender:(id)sender
{
  v4 = [sender copy];
  sender = self->super._sender;
  self->super._sender = v4;

  MEMORY[0x2821F96F8](v4, sender);
}

- (void)setThreadIdentifier:(id)identifier
{
  v4 = [identifier copy];
  threadIdentifier = self->super._threadIdentifier;
  self->super._threadIdentifier = v4;

  MEMORY[0x2821F96F8](v4, threadIdentifier);
}

- (void)setFilterCriteria:(id)criteria
{
  v4 = [criteria copy];
  filterCriteria = self->super._filterCriteria;
  self->super._filterCriteria = v4;

  MEMORY[0x2821F96F8](v4, filterCriteria);
}

- (void)setForwardingBehavior:(id)behavior
{
  v4 = [behavior copy];
  forwardingBehavior = self->super._forwardingBehavior;
  self->super._forwardingBehavior = v4;

  MEMORY[0x2821F96F8](v4, forwardingBehavior);
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->super._title;
  self->super._title = v4;

  MEMORY[0x2821F96F8](v4, title);
}

- (void)setSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  subtitle = self->super._subtitle;
  self->super._subtitle = v4;

  MEMORY[0x2821F96F8](v4, subtitle);
}

- (void)setBody:(id)body
{
  v4 = [body copy];
  body = self->super._body;
  self->super._body = v4;

  MEMORY[0x2821F96F8](v4, body);
}

- (void)setShouldAlwaysInterrupt:(BOOL)interrupt
{
  v3 = 2;
  if (!interrupt)
  {
    v3 = 0;
  }

  self->super._urgency = v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDClientEventDetails alloc];

  return [(DNDClientEventDetails *)v4 _initWithDetails:self];
}

@end