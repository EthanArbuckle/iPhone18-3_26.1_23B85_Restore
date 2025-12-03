@interface MADConfidenceTracker
- (MADConfidenceTracker)init;
- (double)updateConfidence:(double)confidence;
@end

@implementation MADConfidenceTracker

- (MADConfidenceTracker)init
{
  v6.receiver = self;
  v6.super_class = MADConfidenceTracker;
  v2 = [(MADConfidenceTracker *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    history = v2->_history;
    v2->_history = array;

    v2->_confidence = 0.0;
  }

  return v2;
}

- (double)updateConfidence:(double)confidence
{
  v5 = +[MADVideoRemoveBackgroundSettings visionTrimWindow];
  history = self->_history;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:confidence];
  [(NSMutableArray *)history addObject:v7];

  self->_confidence = self->_confidence + confidence;
  v8 = [(NSMutableArray *)self->_history count];
  v9 = self->_history;
  if (v8 <= v5)
  {
    v12 = [(NSMutableArray *)v9 count];
    result = 1.0;
    if (v12 != v5)
    {
      return result;
    }
  }

  else
  {
    v10 = [(NSMutableArray *)v9 objectAtIndexedSubscript:0];
    [v10 doubleValue];
    self->_confidence = self->_confidence - v11;

    [(NSMutableArray *)self->_history removeObjectAtIndex:0];
  }

  return self->_confidence / v5;
}

@end