@interface CSAttSiriIOSGazeNode
- (CSAttSiriController)attSiriController;
@end

@implementation CSAttSiriIOSGazeNode

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

@end