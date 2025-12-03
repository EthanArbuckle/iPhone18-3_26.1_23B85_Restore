@interface CAMSharedLibraryStatusIndicator
- (BOOL)shouldFillOutlineForCurrentState;
- (BOOL)shouldUseActiveTintForCurrentState;
- (void)setSharedLibraryMode:(int64_t)mode animated:(BOOL)animated;
@end

@implementation CAMSharedLibraryStatusIndicator

- (void)setSharedLibraryMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_sharedLibraryMode != mode)
  {
    self->_sharedLibraryMode = mode;
    [(CAMControlStatusIndicator *)self updateImageAnimated:animated];
  }
}

- (BOOL)shouldUseActiveTintForCurrentState
{
  sharedLibraryMode = [(CAMSharedLibraryStatusIndicator *)self sharedLibraryMode];

  return CAMSharedLibraryModeIsOn(sharedLibraryMode);
}

- (BOOL)shouldFillOutlineForCurrentState
{
  sharedLibraryMode = [(CAMSharedLibraryStatusIndicator *)self sharedLibraryMode];

  return CAMSharedLibraryModeIsOn(sharedLibraryMode);
}

@end