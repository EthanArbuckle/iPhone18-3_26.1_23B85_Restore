@interface CSAdjunctListItem
- (CSAdjunctListItem)initWithIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation CSAdjunctListItem

- (CSAdjunctListItem)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CSAdjunctListItem;
  v5 = [(CSAdjunctListItem *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    actions = v5->_actions;
    v5->_actions = v6;

    v8 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    *&v5->_animatePresentation = 257;
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSAdjunctListItem *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSAdjunctListItem *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(CSAdjunctListItem *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_identifier withName:@"identifier"];
  v6 = [succinctDescriptionBuilder appendObject:self->_actions withName:@"actions"];
  v7 = [succinctDescriptionBuilder appendBool:self->_animatePresentation withName:@"animatePresentation"];
  v8 = [succinctDescriptionBuilder appendBool:self->_animateDismissal withName:@"animateDismissal"];
  itemView = [(CSAdjunctListItem *)self itemView];
  v10 = [succinctDescriptionBuilder appendObject:itemView withName:@"itemView"];

  contentHost = [(CSAdjunctListItem *)self contentHost];
  v12 = [succinctDescriptionBuilder appendObject:contentHost withName:@"contentHost"];

  return succinctDescriptionBuilder;
}

@end