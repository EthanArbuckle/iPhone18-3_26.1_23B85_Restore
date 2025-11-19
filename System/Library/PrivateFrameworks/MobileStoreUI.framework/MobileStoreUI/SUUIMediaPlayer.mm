@interface SUUIMediaPlayer
- (MPAVController)player;
- (MPAVItem)currentItem;
@end

@implementation SUUIMediaPlayer

- (MPAVController)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

- (MPAVItem)currentItem
{
  WeakRetained = objc_loadWeakRetained(&self->_currentItem);

  return WeakRetained;
}

@end