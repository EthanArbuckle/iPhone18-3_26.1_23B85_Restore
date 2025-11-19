@interface GKGameMatch
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (GKGameMatch)initWithInternalRepresentation:(id)a3 game:(id)a4;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation GKGameMatch

- (GKGameMatch)initWithInternalRepresentation:(id)a3 game:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = +[(GKInternalRepresentation *)GKRecentMatchInternal];
  }

  v20.receiver = self;
  v20.super_class = GKGameMatch;
  v8 = [(GKGameMatch *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_internal, v6);
    objc_storeStrong(&v9->_game, a4);
    v10 = [(GKRecentMatchInternal *)v9->_internal player];

    if (v10)
    {
      v11 = [(GKRecentMatchInternal *)v9->_internal player];
      v12 = [GKPlayer canonicalizedPlayerForInternal:v11];
      player = v9->_player;
      v9->_player = v12;

      if (!v9->_game)
      {
        v14 = [(GKRecentMatchInternal *)v9->_internal game];

        if (v14)
        {
          v15 = [GKGameRecord alloc];
          v16 = [(GKRecentMatchInternal *)v9->_internal game];
          v17 = [(GKGameRecord *)v15 initWithInternalRepresentation:v16 player:v9->_player];
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
  v3 = [(GKGameMatch *)self player];
  v4 = [(GKGameMatch *)self game];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = [v3 alias];
  v8 = [v4 name];
  v9 = [v5 stringWithFormat:@"<%@ %p> %@ %@ game:%@", v6, self, v3, v7, v8];

  return v9;
}

+ (id)instanceMethodSignatureForSelector:(SEL)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___GKGameMatch;
  v4 = objc_msgSendSuper2(&v9, sel_instanceMethodSignatureForSelector_);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (id)methodSignatureForSelector:(SEL)a3
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
    v8 = [(GKGameMatch *)self forwardingTargetForSelector:a3];
    v7 = [v8 methodSignatureForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = GKGameMatch;
  if ([(GKGameMatch *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKGameMatch *)self forwardingTargetForSelector:a3];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  if (a3)
  {
    if (class_respondsToSelector(a1, a3))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = GKApplicationLinkedOnOrAfter(393216, 657920);
      if (v4)
      {

        LOBYTE(v4) = [GKRecentMatchInternal instancesRespondToSelector:a3];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(GKGameMatch *)self internal];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKGameMatch *)self internal];
  [v8 setValue:v7 forKey:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKGameMatch *)self internal];
    v7 = [v5 internal];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(GKGameMatch *)self internal];
  v3 = [v2 hash];

  return v3;
}

@end