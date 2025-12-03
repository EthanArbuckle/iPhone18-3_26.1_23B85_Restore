@interface OCDDelayedMedia
- (BOOL)saveMediaToFile:(id)file;
@end

@implementation OCDDelayedMedia

- (BOOL)saveMediaToFile:(id)file
{
  fileCopy = file;
  if ([(OCDDelayedNode *)self isLoaded])
  {
    v5 = 1;
  }

  else if ([(OCDDelayedNodeContext *)self->super.mDelayedContext saveDelayedMedia:self toFile:fileCopy])
  {
    mDelayedContext = self->super.mDelayedContext;
    self->super.mDelayedContext = 0;

    v5 = 1;
    self->super.mLoaded = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end