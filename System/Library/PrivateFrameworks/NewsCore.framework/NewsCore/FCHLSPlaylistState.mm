@interface FCHLSPlaylistState
- (FCHLSPlaylistState)init;
- (void)setCurrentStreamInf:(uint64_t)inf;
@end

@implementation FCHLSPlaylistState

- (void)setCurrentStreamInf:(uint64_t)inf
{
  if (inf)
  {
    objc_storeStrong((inf + 40), a2);
  }
}

- (FCHLSPlaylistState)init
{
  v12.receiver = self;
  v12.super_class = FCHLSPlaylistState;
  v2 = [(FCHLSPlaylistState *)&v12 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    mutableGroups = v2->_mutableGroups;
    v2->_mutableGroups = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    mutableSegments = v2->_mutableSegments;
    v2->_mutableSegments = array;

    array2 = [MEMORY[0x1E695DF70] array];
    mutableStreamInfs = v2->_mutableStreamInfs;
    v2->_mutableStreamInfs = array2;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    mutableSessionData = v2->_mutableSessionData;
    v2->_mutableSessionData = dictionary2;

    v2->_currentDuration = -1.0;
  }

  return v2;
}

@end