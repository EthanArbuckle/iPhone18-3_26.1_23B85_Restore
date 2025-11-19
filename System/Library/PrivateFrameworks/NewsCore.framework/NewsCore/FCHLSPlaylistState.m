@interface FCHLSPlaylistState
- (FCHLSPlaylistState)init;
- (void)setCurrentStreamInf:(uint64_t)a1;
@end

@implementation FCHLSPlaylistState

- (void)setCurrentStreamInf:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

- (FCHLSPlaylistState)init
{
  v12.receiver = self;
  v12.super_class = FCHLSPlaylistState;
  v2 = [(FCHLSPlaylistState *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    mutableGroups = v2->_mutableGroups;
    v2->_mutableGroups = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    mutableSegments = v2->_mutableSegments;
    v2->_mutableSegments = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    mutableStreamInfs = v2->_mutableStreamInfs;
    v2->_mutableStreamInfs = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    mutableSessionData = v2->_mutableSessionData;
    v2->_mutableSessionData = v9;

    v2->_currentDuration = -1.0;
  }

  return v2;
}

@end