@interface BLHLSPlaylistState
- (BLHLSPlaylistState)init;
@end

@implementation BLHLSPlaylistState

- (BLHLSPlaylistState)init
{
  v10.receiver = self;
  v10.super_class = BLHLSPlaylistState;
  v2 = [(BLHLSPlaylistState *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mutableGroups = v2->_mutableGroups;
    v2->_mutableGroups = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    mutableSegments = v2->_mutableSegments;
    v2->_mutableSegments = array;

    array2 = [MEMORY[0x277CBEB18] array];
    mutableStreamInfs = v2->_mutableStreamInfs;
    v2->_mutableStreamInfs = array2;

    v2->_currentDuration = -1.0;
  }

  return v2;
}

@end