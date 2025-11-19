@interface FTBipartiteMatcherOutput
- (FTBipartiteMatcherOutput)initWithMatches:(id)a3 state:(unint64_t)a4 usedIterations:(unsigned int)a5;
@end

@implementation FTBipartiteMatcherOutput

- (FTBipartiteMatcherOutput)initWithMatches:(id)a3 state:(unint64_t)a4 usedIterations:(unsigned int)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = FTBipartiteMatcherOutput;
  v9 = [(FTBipartiteMatcherOutput *)&v14 init];
  if (v9)
  {
    v10 = [v8 copy];
    matches = v9->_matches;
    v9->_matches = v10;

    v9->_state = a4;
    v9->_usedIterations = a5;
    v12 = v9;
  }

  return v9;
}

@end