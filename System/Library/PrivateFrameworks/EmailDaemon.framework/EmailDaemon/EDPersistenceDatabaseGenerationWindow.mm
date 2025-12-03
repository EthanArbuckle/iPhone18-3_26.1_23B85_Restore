@interface EDPersistenceDatabaseGenerationWindow
- (EDPersistenceDatabaseGenerationWindow)init;
- (void)insertGeneration:(int64_t)generation;
@end

@implementation EDPersistenceDatabaseGenerationWindow

- (EDPersistenceDatabaseGenerationWindow)init
{
  v3.receiver = self;
  v3.super_class = EDPersistenceDatabaseGenerationWindow;
  result = [(EDPersistenceDatabaseGenerationWindow *)&v3 init];
  if (result)
  {
    *&result->_earliestGeneration = xmmword_1C6471EB0;
  }

  return result;
}

- (void)insertGeneration:(int64_t)generation
{
  if (self->_earliestGeneration > generation)
  {
    self->_earliestGeneration = generation;
  }

  if (self->_latestGeneration < generation)
  {
    self->_latestGeneration = generation;
  }
}

@end