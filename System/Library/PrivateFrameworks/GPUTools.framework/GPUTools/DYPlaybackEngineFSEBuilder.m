@interface DYPlaybackEngineFSEBuilder
- (DYPlaybackEngineFSEBuilder)init;
- (DYPlaybackEngineFSEBuilder)initWithPlaybackEngineCache:(void *)a3;
- (void)performPreVisitActions;
- (void)visitCaptureStore:(id)a3;
@end

@implementation DYPlaybackEngineFSEBuilder

- (DYPlaybackEngineFSEBuilder)init
{
  [(DYPlaybackEngineFSEBuilder *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYPlaybackEngineFSEBuilder)initWithPlaybackEngineCache:(void *)a3
{
  v6.receiver = self;
  v6.super_class = DYPlaybackEngineFSEBuilder;
  result = [(DYCaptureVisitor *)&v6 init];
  if (result)
  {
    result->_cache = a3;
    v5 = result;
    [(DYInOrderInstructionFilesVisitor *)result setVisitDeltaFiles:1];
    return v5;
  }

  return result;
}

- (void)visitCaptureStore:(id)a3
{
  self->_store = a3;
  v6.receiver = self;
  v6.super_class = DYPlaybackEngineFSEBuilder;
  [(DYInOrderInstructionFilesVisitor *)&v6 visitCaptureStore:?];
  self->_store = 0;
  cache = self->_cache;
  v5 = *cache;
  if (cache[3] != *cache)
  {
    if (cache[4] != v5)
    {
      return;
    }

LABEL_5:
    cache[4] = cache[1];
    return;
  }

  cache[3] = cache[1];
  if (cache[4] == v5)
  {
    goto LABEL_5;
  }
}

- (void)performPreVisitActions
{
  v3 = [(NSArray *)self->super._initialPhaseFiles count];
  v4 = [(NSArray *)self->super._captureFiles count]+ v3;
  v5 = v4 + [(NSArray *)self->super._deltaFiles count];
  cache = self->_cache;
  if (v5 > (cache[2] - *cache) >> 3)
  {
    if (!(v5 >> 61))
    {
      v7 = cache[1] - *cache;
      operator new();
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  v8 = self->_cache;
  v9 = *v8;
  v8[3] = *v8;
  v8[4] = v9;
}

@end