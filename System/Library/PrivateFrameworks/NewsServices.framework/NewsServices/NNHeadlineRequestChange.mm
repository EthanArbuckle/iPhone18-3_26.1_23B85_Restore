@interface NNHeadlineRequestChange
- (NNHeadlineRequestChange)initWithResultIdentifier:(id)identifier requestDate:(id)date;
- (NSString)sequencer;
@end

@implementation NNHeadlineRequestChange

- (NNHeadlineRequestChange)initWithResultIdentifier:(id)identifier requestDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = NNHeadlineRequestChange;
  v8 = [(NNHeadlineRequestChange *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    resultIdentifier = v8->_resultIdentifier;
    v8->_resultIdentifier = v9;

    v11 = [dateCopy copy];
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
  stringValue = [v3 stringValue];

  return stringValue;
}

@end