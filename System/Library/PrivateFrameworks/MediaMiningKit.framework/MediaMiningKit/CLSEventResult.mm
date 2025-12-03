@interface CLSEventResult
+ (id)eventResultWithEvent:(id)event andConfidence:(float)confidence;
- (id)description;
- (void)mergeWithResult:(id)result;
@end

@implementation CLSEventResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  title = [(CLSEvent *)self->_event title];
  v5 = [v3 stringWithFormat:@"[%@] (%f)", title, self->_confidence];

  return v5;
}

- (void)mergeWithResult:(id)result
{
  resultCopy = result;
  [resultCopy confidence];
  if (v4 > self->_confidence)
  {
    [resultCopy confidence];
    self->_confidence = v5;
  }
}

+ (id)eventResultWithEvent:(id)event andConfidence:(float)confidence
{
  eventCopy = event;
  v6 = objc_alloc_init(CLSEventResult);
  [(CLSEventResult *)v6 setEvent:eventCopy];

  *&v7 = confidence;
  [(CLSEventResult *)v6 setConfidence:v7];

  return v6;
}

@end