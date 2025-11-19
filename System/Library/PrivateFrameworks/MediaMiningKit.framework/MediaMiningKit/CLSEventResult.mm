@interface CLSEventResult
+ (id)eventResultWithEvent:(id)a3 andConfidence:(float)a4;
- (id)description;
- (void)mergeWithResult:(id)a3;
@end

@implementation CLSEventResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CLSEvent *)self->_event title];
  v5 = [v3 stringWithFormat:@"[%@] (%f)", v4, self->_confidence];

  return v5;
}

- (void)mergeWithResult:(id)a3
{
  v6 = a3;
  [v6 confidence];
  if (v4 > self->_confidence)
  {
    [v6 confidence];
    self->_confidence = v5;
  }
}

+ (id)eventResultWithEvent:(id)a3 andConfidence:(float)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CLSEventResult);
  [(CLSEventResult *)v6 setEvent:v5];

  *&v7 = a4;
  [(CLSEventResult *)v6 setConfidence:v7];

  return v6;
}

@end