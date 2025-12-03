@interface GKGameMatch
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
- (BOOL)isEqual:(id)equal;
- (BOOL)respondsToSelector:(SEL)selector;
- (GKGameMatch)initWithInternalRepresentation:(id)representation game:(id)game;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation GKGameMatch

- (GKGameMatch)initWithInternalRepresentation:(id)representation game:(id)game
{
  representationCopy = representation;
  gameCopy = game;
  if (!representationCopy)
  {
    representationCopy = +[(GKInternalRepresentation *)GKRecentMatchInternal];
  }

  v20.receiver = self;
  v20.super_class = GKGameMatch;
  v8 = [(GKGameMatch *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_internal, representationCopy);
    objc_storeStrong(&v9->_game, game);
    player = [(GKRecentMatchInternal *)v9->_internal player];

    if (player)
    {
      player2 = [(GKRecentMatchInternal *)v9->_internal player];
      v12 = [GKPlayer canonicalizedPlayerForInternal:player2];
      player = v9->_player;
      v9->_player = v12;

      if (!v9->_game)
      {
        game = [(GKRecentMatchInternal *)v9->_internal game];

        if (game)
        {
          v15 = [GKGameRecord alloc];
          game2 = [(GKRecentMatchInternal *)v9->_internal game];
          v17 = [(GKGameRecord *)v15 initWithInternalRepresentation:game2 player:v9->_player];
          game = v9->_game;
          v9->_game = v17;
        }
      }
    }
  }

  return v9;
}

- (id)description
{
  player = [(GKGameMatch *)self player];
  game = [(GKGameMatch *)self game];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  alias = [player alias];
  name = [game name];
  v9 = [v5 stringWithFormat:@"<%@ %p> %@ %@ game:%@", v6, self, player, alias, name];

  return v9;
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKGameMatch;
  v4 = objc_msgSendSuper2(&v9, sel_instanceMethodSignatureForSelector_);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = GKGameMatch;
  v5 = [(GKGameMatch *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKGameMatch *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKGameMatch;
  if ([(GKGameMatch *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKGameMatch *)self forwardingTargetForSelector:selector];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  if (selector)
  {
    if (class_respondsToSelector(self, selector))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = GKApplicationLinkedOnOrAfter(393216, 657920);
      if (v4)
      {

        LOBYTE(v4) = [GKRecentMatchInternal instancesRespondToSelector:selector];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  internal = [(GKGameMatch *)self internal];
  v6 = [internal valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(GKGameMatch *)self internal];
  [internal setValue:valueCopy forKey:keyCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    internal = [(GKGameMatch *)self internal];
    internal2 = [v5 internal];

    v8 = [internal isEqual:internal2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  internal = [(GKGameMatch *)self internal];
  v3 = [internal hash];

  return v3;
}

@end