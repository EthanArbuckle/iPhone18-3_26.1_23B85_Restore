@interface GKLeaderboardSet
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
+ (void)loadLeaderboardSetsForGame:(id)game withCompletionHandler:(id)handler;
+ (void)loadLeaderboardSetsWithCompletionHandler:(void *)completionHandler;
- (BOOL)isEqual:(id)equal;
- (BOOL)respondsToSelector:(SEL)selector;
- (GKLeaderboardSet)initWithCoder:(id)coder;
- (GKLeaderboardSet)initWithInternalRepresentation:(id)representation;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)loadLeaderboardsForGame:(id)game forPlayer:(id)player withCompletionHandler:(id)handler;
- (void)loadLeaderboardsForGame:(id)game withCompletionHandler:(id)handler;
- (void)loadLeaderboardsWithCompletionHandler:(void *)completionHandler;
- (void)loadLeaderboardsWithHandler:(void *)handler;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation GKLeaderboardSet

- (GKLeaderboardSet)initWithInternalRepresentation:(id)representation
{
  representationCopy = representation;
  if (!representationCopy)
  {
    representationCopy = +[(GKInternalRepresentation *)GKLeaderboardSetInternal];
  }

  v8.receiver = self;
  v8.super_class = GKLeaderboardSet;
  v5 = [(GKLeaderboardSet *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_internal, representationCopy);
  }

  return v6;
}

- (GKLeaderboardSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"internal"];

  v6 = [(GKLeaderboardSet *)self initWithInternalRepresentation:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  internal = [(GKLeaderboardSet *)self internal];
  [coderCopy encodeObject:internal forKey:@"internal"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  internal = [(GKLeaderboardSet *)self internal];
  internal2 = [equalCopy internal];

  LOBYTE(equalCopy) = [internal isEqual:internal2];
  return equalCopy;
}

- (unint64_t)hash
{
  internal = [(GKLeaderboardSet *)self internal];
  v3 = [internal hash];

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = GKLeaderboardSet;
  v3 = [(GKLeaderboardSet *)&v8 description];
  identifier = [(GKLeaderboardSet *)self identifier];
  title = [(GKLeaderboardSet *)self title];
  v6 = [v3 stringByAppendingFormat:@"%@ - %@ ", identifier, title];

  return v6;
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKLeaderboardSet;
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
  v10.super_class = GKLeaderboardSet;
  v5 = [(GKLeaderboardSet *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKLeaderboardSet *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKLeaderboardSet;
  if ([(GKLeaderboardSet *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKLeaderboardSet *)self forwardingTargetForSelector:selector];
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

        LOBYTE(v4) = [GKLeaderboardSetInternal instancesRespondToSelector:selector];
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
  internal = [(GKLeaderboardSet *)self internal];
  v6 = [internal valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(GKLeaderboardSet *)self internal];
  [internal setValue:valueCopy forKey:keyCopy];
}

- (void)loadLeaderboardsForGame:(id)game forPlayer:(id)player withCompletionHandler:(id)handler
{
  gameCopy = game;
  playerCopy = player;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboardSet.m", 144, "-[GKLeaderboardSet loadLeaderboardsForGame:forPlayer:withCompletionHandler:]"];
    v12 = [GKDispatchGroup dispatchGroupWithName:v11];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__GKLeaderboardSet_loadLeaderboardsForGame_forPlayer_withCompletionHandler___block_invoke;
    v18[3] = &unk_2785DE4C8;
    v19 = gameCopy;
    v20 = playerCopy;
    selfCopy = self;
    v13 = v12;
    v22 = v13;
    [v13 perform:v18];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__GKLeaderboardSet_loadLeaderboardsForGame_forPlayer_withCompletionHandler___block_invoke_4;
    v15[3] = &unk_2785DDC10;
    v16 = v13;
    v17 = handlerCopy;
    v14 = v13;
    [v14 notifyOnMainQueueWithBlock:v15];
  }
}

void __76__GKLeaderboardSet_loadLeaderboardsForGame_forPlayer_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [a1[4] gameDescriptor];
  v7 = [a1[5] internal];
  v8 = [a1[6] identifier];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__GKLeaderboardSet_loadLeaderboardsForGame_forPlayer_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_2785DDC38;
  v11 = a1[7];
  v12 = v3;
  v9 = v3;
  [v5 getLeaderboardsForGameDescriptor:v6 player:v7 setIdentifier:v8 handler:v10];
}

void __76__GKLeaderboardSet_loadLeaderboardsForGame_forPlayer_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 count])
  {
    v6 = *(a1 + 32);
    v7 = [v8 _gkMapConcurrentlyWithBlock:&__block_literal_global_57];
    [v6 setObject:v7 forKeyedSubscript:@"leaderboards"];
  }

  [*(a1 + 32) setError:v5];
  (*(*(a1 + 40) + 16))();
}

GKLeaderboard *__76__GKLeaderboardSet_loadLeaderboardsForGame_forPlayer_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboard alloc] initWithInternalRepresentation:v2];

  return v3;
}

void __76__GKLeaderboardSet_loadLeaderboardsForGame_forPlayer_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"leaderboards"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)loadLeaderboardsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = +[GKGame currentGame];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__GKLeaderboardSet_loadLeaderboardsWithCompletionHandler___block_invoke;
  v7[3] = &unk_2785DDCB0;
  v8 = v4;
  v6 = v4;
  [(GKLeaderboardSet *)self loadLeaderboardsForGame:v5 withCompletionHandler:v7];
}

void __58__GKLeaderboardSet_loadLeaderboardsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      (*(v7 + 16))(v7, 0, v5);
    }

    else if (v9)
    {
      (*(v7 + 16))(v7, v9, 0);
    }

    else
    {
      v8 = [MEMORY[0x277CBEA60] array];
      (*(v7 + 16))(v7, v8, 0);
    }
  }
}

- (void)loadLeaderboardsForGame:(id)game withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[GKGame currentGame];
  v6 = +[GKLocalPlayer localPlayer];
  [(GKLeaderboardSet *)self loadLeaderboardsForGame:v7 forPlayer:v6 withCompletionHandler:handlerCopy];
}

- (void)loadLeaderboardsWithHandler:(void *)handler
{
  v4 = handler;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboardSet.m", 183, "-[GKLeaderboardSet loadLeaderboardsWithHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__GKLeaderboardSet_loadLeaderboardsWithHandler___block_invoke;
  v13[3] = &unk_2785DD898;
  v13[4] = self;
  v7 = v6;
  v14 = v7;
  [v7 perform:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__GKLeaderboardSet_loadLeaderboardsWithHandler___block_invoke_4;
  v10[3] = &unk_2785DDC10;
  v11 = v7;
  v12 = v4;
  v8 = v7;
  v9 = v4;
  [v8 notifyOnMainQueueWithBlock:v10];
}

void __48__GKLeaderboardSet_loadLeaderboardsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = +[GKGame currentGame];
  v7 = [v6 gameDescriptor];
  v8 = +[GKLocalPlayer local];
  v9 = [v8 internal];
  v10 = [*(a1 + 32) identifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__GKLeaderboardSet_loadLeaderboardsWithHandler___block_invoke_2;
  v12[3] = &unk_2785DDC38;
  v13 = *(a1 + 40);
  v14 = v3;
  v11 = v3;
  [v5 getLeaderboardsForGameDescriptor:v7 player:v9 leaderboardIDs:0 setIdentifier:v10 handler:v12];
}

void __48__GKLeaderboardSet_loadLeaderboardsWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 count])
  {
    v6 = [v7 _gkMapWithBlock:&__block_literal_global_32];
    [*(a1 + 32) setResult:v6];
  }

  [*(a1 + 32) setError:v5];
  (*(*(a1 + 40) + 16))();
}

GKLeaderboard *__48__GKLeaderboardSet_loadLeaderboardsWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboard alloc] initWithInternalRepresentation:v2];

  return v3;
}

void __48__GKLeaderboardSet_loadLeaderboardsWithHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) result];
  v6 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v5);
}

+ (void)loadLeaderboardSetsForGame:(id)game withCompletionHandler:(id)handler
{
  gameCopy = game;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboardSet.m", 210, "+[GKLeaderboardSet loadLeaderboardSetsForGame:withCompletionHandler:]"];
    v8 = [GKDispatchGroup dispatchGroupWithName:v7];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__GKLeaderboardSet_loadLeaderboardSetsForGame_withCompletionHandler___block_invoke;
    v14[3] = &unk_2785DD898;
    v15 = gameCopy;
    v9 = v8;
    v16 = v9;
    [v9 perform:v14];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__GKLeaderboardSet_loadLeaderboardSetsForGame_withCompletionHandler___block_invoke_4;
    v11[3] = &unk_2785DDC10;
    v12 = v9;
    v13 = handlerCopy;
    v10 = v9;
    [v10 notifyOnMainQueueWithBlock:v11];
  }
}

void __69__GKLeaderboardSet_loadLeaderboardSetsForGame_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v6 = [*(a1 + 32) gameDescriptor];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__GKLeaderboardSet_loadLeaderboardSetsForGame_withCompletionHandler___block_invoke_2;
  v8[3] = &unk_2785DDC38;
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v5 getLeaderboardSetsForGameDescriptor:v6 handler:v8];
}

void __69__GKLeaderboardSet_loadLeaderboardSetsForGame_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [*(a1 + 32) setError:a3];
  if ([v7 count])
  {
    v5 = *(a1 + 32);
    v6 = [v7 _gkMapConcurrentlyWithBlock:&__block_literal_global_35];
    [v5 setObject:v6 forKeyedSubscript:@"leaderboardSets"];
  }

  (*(*(a1 + 40) + 16))();
}

GKLeaderboardSet *__69__GKLeaderboardSet_loadLeaderboardSetsForGame_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKLeaderboardSet alloc] initWithInternalRepresentation:v2];

  return v3;
}

void __69__GKLeaderboardSet_loadLeaderboardSetsForGame_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"leaderboardSets"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

+ (void)loadLeaderboardSetsWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  v4 = +[GKGame currentGame];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__GKLeaderboardSet_loadLeaderboardSetsWithCompletionHandler___block_invoke;
  v6[3] = &unk_2785DDCB0;
  v7 = v3;
  v5 = v3;
  [GKLeaderboardSet loadLeaderboardSetsForGame:v4 withCompletionHandler:v6];
}

void __61__GKLeaderboardSet_loadLeaderboardSetsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      (*(v7 + 16))(v7, 0, v5);
    }

    else if (v9)
    {
      (*(v7 + 16))(v7, v9, 0);
    }

    else
    {
      v8 = [MEMORY[0x277CBEA60] array];
      (*(v7 + 16))(v7, v8, 0);
    }
  }
}

@end