@interface NNHeadlineRequestChange
- (NNHeadlineRequestChange)initWithResultIdentifier:(id)a3 requestDate:(id)a4;
- (NSString)sequencer;
@end

@implementation NNHeadlineRequestChange

- (NNHeadlineRequestChange)initWithResultIdentifier:(id)a3 requestDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = NNHeadlineRequestChange;
  v8 = [(NNHeadlineRequestChange *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    resultIdentifier = v8->_resultIdentifier;
    v8->_resultIdentifier = v9;

    v11 = [v7 copy];
    requestDate = v8->_requestDate;
    v8->_requestDate = v11;
  }

  return v8;
}

- (NSString)sequencer
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceReferenceDate];
  v3 = [NSNumber numberWithDouble:?];
  v4 = [v3 stringValue];

  return v4;
}

@end