@interface ExclaveStackEntry
- (void)addFrames:(id)frames;
@end

@implementation ExclaveStackEntry

- (void)addFrames:(id)frames
{
  framesCopy = frames;
  frames = self->_frames;
  v8 = framesCopy;
  if (!frames)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_frames;
    self->_frames = v6;

    framesCopy = v8;
    frames = self->_frames;
  }

  [(NSMutableArray *)frames addObject:framesCopy];
}

@end