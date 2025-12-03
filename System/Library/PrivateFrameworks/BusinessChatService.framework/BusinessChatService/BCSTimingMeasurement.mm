@interface BCSTimingMeasurement
+ (id)newTimingMeasurement:(int64_t)measurement withHandlers:(id)handlers;
- (double)duration;
- (void)begin;
- (void)end;
@end

@implementation BCSTimingMeasurement

+ (id)newTimingMeasurement:(int64_t)measurement withHandlers:(id)handlers
{
  handlersCopy = handlers;
  v7 = [BCSTimingMeasurement alloc];
  v8 = handlersCopy;
  if (v7)
  {
    v11.receiver = v7;
    v11.super_class = BCSTimingMeasurement;
    v9 = objc_msgSendSuper2(&v11, sel__init);
    v7 = v9;
    if (v9)
    {
      v9->_timingMeasurementType = measurement;
      objc_storeStrong(&v9->_realTimeMeasurementHandlers, handlers);
    }
  }

  return v7;
}

- (void)begin
{
  if (!self || !objc_getProperty(self, a2, 8, 1))
  {
    date = [MEMORY[0x277CBEAA8] date];
    v5 = date;
    if (self)
    {
      objc_setProperty_atomic(self, v4, date, 8);

      realTimeMeasurementHandlers = self->_realTimeMeasurementHandlers;
    }

    else
    {

      realTimeMeasurementHandlers = 0;
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __29__BCSTimingMeasurement_begin__block_invoke;
    v7[3] = &unk_278D39AF8;
    v7[4] = self;
    [(NSArray *)realTimeMeasurementHandlers enumerateObjectsUsingBlock:v7];
  }
}

- (void)end
{
  if (self)
  {
    v3 = objc_getProperty(self, a2, 8, 1);
    if (v3)
    {
      v5 = v3;
      Property = objc_getProperty(self, v4, 16, 1);

      if (!Property)
      {
        date = [MEMORY[0x277CBEAA8] date];
        objc_setProperty_atomic(self, v8, date, 16);

        realTimeMeasurementHandlers = self->_realTimeMeasurementHandlers;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __27__BCSTimingMeasurement_end__block_invoke;
        v10[3] = &unk_278D39AF8;
        v10[4] = self;
        [(NSArray *)realTimeMeasurementHandlers enumerateObjectsUsingBlock:v10];
      }
    }
  }
}

- (double)duration
{
  if (!self)
  {
    return 0.0;
  }

  v3 = objc_getProperty(self, a2, 8, 1);
  if (!v3)
  {
    return 0.0;
  }

  v5 = v3;
  Property = objc_getProperty(self, v4, 16, 1);

  if (!Property)
  {
    return 0.0;
  }

  v8 = objc_getProperty(self, v7, 16, 1);
  [v8 timeIntervalSinceDate:{objc_getProperty(self, v9, 8, 1)}];
  v11 = v10;

  return v11;
}

@end