@interface MPCSharedListeningReactionEvent
- (MPCSharedListeningReactionEvent)initWithReaction:(id)reaction reactionIdentifier:(id)identifier item:(id)item;
@end

@implementation MPCSharedListeningReactionEvent

- (MPCSharedListeningReactionEvent)initWithReaction:(id)reaction reactionIdentifier:(id)identifier item:(id)item
{
  reactionCopy = reaction;
  identifierCopy = identifier;
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = MPCSharedListeningReactionEvent;
  v11 = [(MPCSharedListeningReactionEvent *)&v17 init];
  if (v11)
  {
    v12 = [reactionCopy copy];
    reaction = v11->_reaction;
    v11->_reaction = v12;

    v14 = [identifierCopy copy];
    reactionIdentifier = v11->_reactionIdentifier;
    v11->_reactionIdentifier = v14;

    objc_storeStrong(&v11->_item, item);
  }

  return v11;
}

@end