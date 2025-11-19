@interface CSAdjunctListItem
- (CSAdjunctListItem)initWithIdentifier:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation CSAdjunctListItem

- (CSAdjunctListItem)initWithIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CSAdjunctListItem;
  v5 = [(CSAdjunctListItem *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    actions = v5->_actions;
    v5->_actions = v6;

    v8 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    *&v5->_animatePresentation = 257;
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(CSAdjunctListItem *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CSAdjunctListItem *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(CSAdjunctListItem *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_identifier withName:@"identifier"];
  v6 = [v4 appendObject:self->_actions withName:@"actions"];
  v7 = [v4 appendBool:self->_animatePresentation withName:@"animatePresentation"];
  v8 = [v4 appendBool:self->_animateDismissal withName:@"animateDismissal"];
  v9 = [(CSAdjunctListItem *)self itemView];
  v10 = [v4 appendObject:v9 withName:@"itemView"];

  v11 = [(CSAdjunctListItem *)self contentHost];
  v12 = [v4 appendObject:v11 withName:@"contentHost"];

  return v4;
}

@end