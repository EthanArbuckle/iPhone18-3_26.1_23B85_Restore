@interface CAMSharedLibraryStatusIndicator
- (BOOL)shouldFillOutlineForCurrentState;
- (BOOL)shouldUseActiveTintForCurrentState;
- (void)setSharedLibraryMode:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMSharedLibraryStatusIndicator

- (void)setSharedLibraryMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_sharedLibraryMode != a3)
  {
    self->_sharedLibraryMode = a3;
    [(CAMControlStatusIndicator *)self updateImageAnimated:a4];
  }
}

- (BOOL)shouldUseActiveTintForCurrentState
{
  v2 = [(CAMSharedLibraryStatusIndicator *)self sharedLibraryMode];

  return CAMSharedLibraryModeIsOn(v2);
}

- (BOOL)shouldFillOutlineForCurrentState
{
  v2 = [(CAMSharedLibraryStatusIndicator *)self sharedLibraryMode];

  return CAMSharedLibraryModeIsOn(v2);
}

@end