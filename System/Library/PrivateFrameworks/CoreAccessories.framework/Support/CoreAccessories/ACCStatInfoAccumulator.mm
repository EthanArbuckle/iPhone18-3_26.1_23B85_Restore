@interface ACCStatInfoAccumulator
- (ACCStatInfoAccumulator)init;
- (ACCStatInfoAccumulator)initWithName:(id)name;
- (ACCStatInfoAccumulator)initWithName:(id)name initValue:(unint64_t)value;
- (double)timeIntervalSinceLastUpdate;
- (double)timeIntervalSinceStart;
- (id)description;
- (void)add:(unint64_t)add;
- (void)reset;
- (void)set:(id)set;
@end

@implementation ACCStatInfoAccumulator

- (ACCStatInfoAccumulator)init
{
  v6.receiver = self;
  v6.super_class = ACCStatInfoAccumulator;
  v2 = [(ACCStatInfoAccumulator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = 0;

    [(ACCStatInfoAccumulator *)v3 reset];
  }

  return v3;
}

- (ACCStatInfoAccumulator)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = ACCStatInfoAccumulator;
  v6 = [(ACCStatInfoAccumulator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    [(ACCStatInfoAccumulator *)v7 reset];
  }

  return v7;
}

- (ACCStatInfoAccumulator)initWithName:(id)name initValue:(unint64_t)value
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = ACCStatInfoAccumulator;
  v8 = [(ACCStatInfoAccumulator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    [(ACCStatInfoAccumulator *)v9 reset];
    [(ACCStatInfoAccumulator *)v9 add:value];
  }

  return v9;
}

- (id)description
{
  name = &stru_10022D360;
  if (self->_name)
  {
    name = self->_name;
  }

  return [NSString stringWithFormat:@"[ACCStatInfoAccumulator:%@ start %llu, max %llu, last %llu, accum %llu, count %llu, average %llu, startTime=%@, lastUpdateTime=%@]", name, self->_start, self->_max, self->_last, self->_accum, self->_count, self->_average, self->_startTime, self->_lastUpdateTime];
}

- (void)reset
{
  v3 = +[NSDate date];
  startTime = self->_startTime;
  self->_startTime = v3;

  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = 0;

  *&self->_last = 0u;
  *&self->_count = 0u;
  *&self->_start = 0u;
}

- (void)add:(unint64_t)add
{
  v5 = +[NSDate date];
  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = v5;

  self->_last = add;
  count = self->_count;
  if (!count)
  {
    self->_start = add;
  }

  if (self->_max < add)
  {
    self->_max = add;
  }

  v8 = self->_accum + add;
  v9 = count + 1;
  self->_accum = v8;
  self->_count = v9;
  self->_average = v8 / v9;
}

- (void)set:(id)set
{
  setCopy = set;
  startTime = [setCopy startTime];
  startTime = self->_startTime;
  self->_startTime = startTime;

  lastUpdateTime = [setCopy lastUpdateTime];
  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = lastUpdateTime;

  self->_start = [setCopy start];
  self->_max = [setCopy max];
  self->_last = [setCopy last];
  self->_accum = [setCopy accum];
  self->_count = [setCopy count];
  average = [setCopy average];

  self->_average = average;
}

- (double)timeIntervalSinceStart
{
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:self->_startTime];
  v5 = v4;

  return v5;
}

- (double)timeIntervalSinceLastUpdate
{
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:self->_lastUpdateTime];
  v5 = v4;

  return v5;
}

@end