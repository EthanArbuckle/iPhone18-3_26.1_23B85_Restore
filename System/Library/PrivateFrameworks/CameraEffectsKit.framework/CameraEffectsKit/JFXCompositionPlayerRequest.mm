@interface JFXCompositionPlayerRequest
+ (id)stringFromRequestType:(unint64_t)type;
- (JFXCompositionPlayer)player;
- (JFXCompositionPlayerRequest)initWithBlock:(id)block ofType:(unint64_t)type;
- (id)description;
- (void)didBegin;
- (void)didCancel;
- (void)didComplete;
- (void)didEnqueue;
@end

@implementation JFXCompositionPlayerRequest

- (JFXCompositionPlayerRequest)initWithBlock:(id)block ofType:(unint64_t)type
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = JFXCompositionPlayerRequest;
  v7 = [(JFXCompositionPlayerRequest *)&v14 init];
  if (v7)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uniqueID = v7->_uniqueID;
    v7->_uniqueID = uUIDString;

    v7->_type = type;
    v11 = MEMORY[0x245D22230](blockCopy);
    block = v7->_block;
    v7->_block = v11;
  }

  return v7;
}

+ (id)stringFromRequestType:(unint64_t)type
{
  if (type - 1 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_278D7C450 + type - 1);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = JFXCompositionPlayerRequest;
  v4 = [(JFXCompositionPlayerRequest *)&v11 description];
  uniqueID = [(JFXCompositionPlayerRequest *)self uniqueID];
  v6 = [objc_opt_class() stringFromRequestType:{-[JFXCompositionPlayerRequest type](self, "type")}];
  player = [(JFXCompositionPlayerRequest *)self player];
  displayName = [player displayName];
  v9 = [v3 stringWithFormat:@"<%@ id %@ type %@ player %@>", v4, uniqueID, v6, displayName];

  return v9;
}

- (void)didEnqueue
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = JFXPlaybackEventSignpostPointCategory();
  signPostID = [(JFXCompositionPlayerRequest *)self signPostID];
  if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = signPostID;
    if (os_signpost_enabled(v3))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v3, OS_SIGNPOST_EVENT, v5, "PlayerRequest", "enqueue %@", &v6, 0xCu);
    }
  }
}

- (void)didBegin
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = JFXPlaybackIntervalSignpostCategory();
  signPostID = [(JFXCompositionPlayerRequest *)self signPostID];
  if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = signPostID;
    if (os_signpost_enabled(v3))
    {
      v6 = 138543362;
      selfCopy = self;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PlayerRequest", "Request %{public}@", &v6, 0xCu);
    }
  }
}

- (void)didComplete
{
  v3 = JFXPlaybackIntervalSignpostCategory();
  signPostID = [(JFXCompositionPlayerRequest *)self signPostID];
  if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = signPostID;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v3, OS_SIGNPOST_INTERVAL_END, v5, "PlayerRequest", "succeeded", v6, 2u);
    }
  }
}

- (void)didCancel
{
  v3 = JFXPlaybackIntervalSignpostCategory();
  signPostID = [(JFXCompositionPlayerRequest *)self signPostID];
  if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = signPostID;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v3, OS_SIGNPOST_INTERVAL_END, v5, "PlayerRequest", "cancelled", v6, 2u);
    }
  }
}

- (JFXCompositionPlayer)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end