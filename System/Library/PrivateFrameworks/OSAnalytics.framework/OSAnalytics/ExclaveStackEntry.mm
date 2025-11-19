@interface ExclaveStackEntry
- (void)addFrames:(id)a3;
@end

@implementation ExclaveStackEntry

- (void)addFrames:(id)a3
{
  v4 = a3;
  frames = self->_frames;
  v8 = v4;
  if (!frames)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_frames;
    self->_frames = v6;

    v4 = v8;
    frames = self->_frames;
  }

  [(NSMutableArray *)frames addObject:v4];
}

@end