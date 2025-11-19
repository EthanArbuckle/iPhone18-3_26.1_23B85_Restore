@interface MPCSharedListeningReactionEvent
- (MPCSharedListeningReactionEvent)initWithReaction:(id)a3 reactionIdentifier:(id)a4 item:(id)a5;
@end

@implementation MPCSharedListeningReactionEvent

- (MPCSharedListeningReactionEvent)initWithReaction:(id)a3 reactionIdentifier:(id)a4 item:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = MPCSharedListeningReactionEvent;
  v11 = [(MPCSharedListeningReactionEvent *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    reaction = v11->_reaction;
    v11->_reaction = v12;

    v14 = [v9 copy];
    reactionIdentifier = v11->_reactionIdentifier;
    v11->_reactionIdentifier = v14;

    objc_storeStrong(&v11->_item, a5);
  }

  return v11;
}

@end