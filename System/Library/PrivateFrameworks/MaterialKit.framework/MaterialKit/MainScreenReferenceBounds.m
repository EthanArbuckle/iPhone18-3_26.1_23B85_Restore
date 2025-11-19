@interface MainScreenReferenceBounds
@end

@implementation MainScreenReferenceBounds

void ___MainScreenReferenceBounds_block_invoke()
{
  v5 = [MEMORY[0x277CD9E40] mainDisplay];
  v0 = [objc_alloc(MEMORY[0x277D0ACE0]) initWithCADisplay:v5];
  [v0 bounds];
  _MainScreenReferenceBounds___bounds_0 = v1;
  _MainScreenReferenceBounds___bounds_1 = v2;
  _MainScreenReferenceBounds___bounds_2 = v3;
  _MainScreenReferenceBounds___bounds_3 = v4;
}

@end