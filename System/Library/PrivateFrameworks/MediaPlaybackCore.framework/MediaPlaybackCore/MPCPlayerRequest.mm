@interface MPCPlayerRequest
- ($0AC6E346AE4835514AAA8AC86D8F4844)tracklistRange;
- (MPCPlayerRequest)init;
- (NSString)description;
- (id)_stateDumpObject;
- (id)copyWithZone:(_NSZone *)a3;
- (id)middlewareClasses;
- (void)setPlayerPath:(id)a3;
- (void)setUserIdentity:(id)a3;
@end

@implementation MPCPlayerRequest

- (MPCPlayerRequest)init
{
  v8.receiver = self;
  v8.super_class = MPCPlayerRequest;
  v2 = [(MPRequest *)&v8 init];
  if (v2)
  {
    v3 = +[MPCPlayerPath deviceActivePlayerPath];
    playerPath = v2->_playerPath;
    v2->_playerPath = v3;

    v5 = [MEMORY[0x1E69E4680] activeAccount];
    userIdentity = v2->_userIdentity;
    v2->_userIdentity = v5;
  }

  return v2;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = MPCPlayerRequest;
  v3 = [(MPRequest *)&v7 description];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" playerPath=%@", self->_playerPath];
  v5 = [v3 stringByReplacingCharactersInRange:objc_msgSend(v3 withString:{"length") - 1, 0, v4}];

  return v5;
}

- (id)middlewareClasses
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:3];
  if ([MEMORY[0x1E69705E8] authorizationStatus] == 3)
  {
    v3 = [v2 arrayByAddingObject:objc_opt_class()];

    v2 = v3;
  }

  return v2;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)tracklistRange
{
  p_tracklistRange = &self->_tracklistRange;
  reverseCount = self->_tracklistRange.reverseCount;
  forwardCount = p_tracklistRange->forwardCount;
  result.var1 = forwardCount;
  result.var0 = reverseCount;
  return result;
}

- (id)_stateDumpObject
{
  v7.receiver = self;
  v7.super_class = MPCPlayerRequest;
  v3 = [(MPRequest *)&v7 _stateDumpObject];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{-%ld, +%ld}", self->_tracklistRange.reverseCount, self->_tracklistRange.forwardCount];
  [v4 setObject:v5 forKeyedSubscript:@"tracklistRange"];

  [v4 setObject:self->_playerPath forKeyedSubscript:@"playerPath"];
  [v4 setObject:self->_playingItemProperties forKeyedSubscript:@"playingItemProperties"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPCPlayerRequest;
  v4 = [(MPRequest *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 10, self->_playerPath);
  objc_storeStrong(v4 + 11, self->_playingItemProperties);
  objc_storeStrong(v4 + 13, self->_queueItemProperties);
  objc_storeStrong(v4 + 12, self->_queueSectionProperties);
  *(v4 + 8) = self->_tracklistRange;
  *(v4 + 72) = self->_disablePlaybackStateValidation;
  *(v4 + 73) = self->_disablePlaybackRateValidation;
  objc_storeStrong(v4 + 14, self->_preferredFallbackItemRelationship);
  return v4;
}

- (void)setUserIdentity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x1E69E4680] activeAccount];
    v5 = v4;
  }

  if (self->_userIdentity != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_userIdentity, v5);
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setPlayerPath:(id)a3
{
  v4 = a3;
  if (self->_playerPath != v4)
  {
    if (!v4)
    {
      v4 = +[MPCPlayerPath deviceActivePlayerPath];
    }

    obj = v4;
    objc_storeStrong(&self->_playerPath, v4);
    v4 = obj;
  }
}

@end