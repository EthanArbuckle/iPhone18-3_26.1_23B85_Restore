@interface FTBipartiteMatcherOutput
- (FTBipartiteMatcherOutput)initWithMatches:(id)matches state:(unint64_t)state usedIterations:(unsigned int)iterations;
@end

@implementation FTBipartiteMatcherOutput

- (FTBipartiteMatcherOutput)initWithMatches:(id)matches state:(unint64_t)state usedIterations:(unsigned int)iterations
{
  matchesCopy = matches;
  v14.receiver = self;
  v14.super_class = FTBipartiteMatcherOutput;
  v9 = [(FTBipartiteMatcherOutput *)&v14 init];
  if (v9)
  {
    v10 = [matchesCopy copy];
    matches = v9->_matches;
    v9->_matches = v10;

    v9->_state = state;
    v9->_usedIterations = iterations;
    v12 = v9;
  }

  return v9;
}

@end