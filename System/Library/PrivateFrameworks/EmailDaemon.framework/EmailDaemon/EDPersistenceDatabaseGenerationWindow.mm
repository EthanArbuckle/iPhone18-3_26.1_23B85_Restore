@interface EDPersistenceDatabaseGenerationWindow
- (EDPersistenceDatabaseGenerationWindow)init;
- (void)insertGeneration:(int64_t)a3;
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

- (void)insertGeneration:(int64_t)a3
{
  if (self->_earliestGeneration > a3)
  {
    self->_earliestGeneration = a3;
  }

  if (self->_latestGeneration < a3)
  {
    self->_latestGeneration = a3;
  }
}

@end