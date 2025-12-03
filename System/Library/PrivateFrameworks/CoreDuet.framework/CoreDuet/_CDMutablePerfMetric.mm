@interface _CDMutablePerfMetric
+ (id)perfMetricForFetchRequest:(void *)request type:;
- (_CDMutablePerfMetric)initWithName:(id)name string:(id)string family:(id)family;
- (id)description;
- (void)endTimingWithEvent:(_CDPerfEvent *)event resultCount:(unint64_t)count incrementErrorCount:(BOOL)errorCount;
@end

@implementation _CDMutablePerfMetric

+ (id)perfMetricForFetchRequest:(void *)request type:
{
  v4 = a2;
  requestCopy = request;
  objc_opt_self();
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"CoreDuetQueryPerfMetricsEnabled"])
  {
    predicate = [v4 predicate];
    v8 = [predicate description];
    v9 = _CDNormalizedStringFromQueryString(v8);
    v10 = [v9 mutableCopy];

    sortDescriptors = [v4 sortDescriptors];
    v12 = [sortDescriptors count];

    if (v12)
    {
      sortDescriptors2 = [v4 sortDescriptors];
      v14 = [sortDescriptors2 valueForKey:@"key"];
      v15 = [v14 componentsJoinedByString:{@", "}];

      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@" ORDER BY %@", v15];
      [v10 appendString:v16];
    }

    if ([v4 fetchOffset])
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@" OFFSET ?"];
      [v10 appendString:v17];
    }

    if ([v4 fetchLimit])
    {
      fetchLimit = [v4 fetchLimit];
      if (fetchLimit < 2 || fetchLimit == 0xFFFFFFFF)
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:fetchLimit];
      }

      else
      {
        v21 = @"N";
        v22 = @"NN";
        v23 = @"NNN";
        v24 = @"NNNN";
        if (fetchLimit >> 5 >= 0xC35)
        {
          v25 = @"NNNNNN+";
        }

        else
        {
          v25 = @"NNNNN";
        }

        if (fetchLimit >> 4 >= 0x271)
        {
          v24 = v25;
        }

        if (fetchLimit >= 0x3E8)
        {
          v23 = v24;
        }

        if (fetchLimit >= 0x64)
        {
          v22 = v23;
        }

        if (fetchLimit >= 0xA)
        {
          v21 = v22;
        }

        v19 = v21;
      }

      v26 = v19;
      v27 = v19;

      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@" LIMIT %@", v27];
      [v10 appendString:v28];
    }

    v29 = [_CDHashUtilities sha1ForString:v10];
    v30 = [v29 substringToIndex:{objc_msgSend(v29, "length") >> 1}];
    v31 = [_CDPerfMetricFamily perfMetricFamilyWithName:requestCopy];
    v20 = [v31 perfMetricWithName:v30 string:v10];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (_CDMutablePerfMetric)initWithName:(id)name string:(id)string family:(id)family
{
  v6.receiver = self;
  v6.super_class = _CDMutablePerfMetric;
  return [(_CDPerfMetric *)&v6 initWithName:name string:string family:family];
}

- (void)endTimingWithEvent:(_CDPerfEvent *)event resultCount:(unint64_t)count incrementErrorCount:(BOOL)errorCount
{
  if (!event)
  {
    return;
  }

  errorCountCopy = errorCount;
  os_unfair_lock_lock(&self->super._lock);
  var0 = event->var0;
  var1 = event->var1;
  if (self->_os_activity)
  {
    os_activity_scope_leave(&self->_os_activity_scope_state);
    os_activity = self->_os_activity;
    self->_os_activity = 0;
  }

  v12 = var1 - var0;
  eventStatsTimerCounter = self->_eventStatsTimerCounter;
  if (eventStatsTimerCounter)
  {
    [(_DKEventStatsTimerCounter *)eventStatsTimerCounter addTimingWithTimeInterval:v12];
  }

  count = self->super._count;
  self->super._count = count + 1;
  v15 = event->var1;
  self->super._lastElapsedTime = v12;
  self->super._lastResultCount = count;
  self->super._totalElapsedTime = v12 + self->super._totalElapsedTime;
  self->super._lastUpdateTime = v15;
  if (!count)
  {
    self->super._minimumElapsedTime = v12;
    p_maximumElapsedTime = &self->super._maximumElapsedTime;
    goto LABEL_16;
  }

  p_maximumElapsedTime = &self->super._minimumElapsedTime;
  if (v12 < self->super._minimumElapsedTime || (p_maximumElapsedTime = &self->super._maximumElapsedTime, v12 > self->super._maximumElapsedTime))
  {
LABEL_16:
    *p_maximumElapsedTime = v12;
    if (!errorCountCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (errorCountCopy)
  {
LABEL_10:
    ++self->super._errorCount;
  }

LABEL_11:

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(_CDPerfMetric *)self name];
  string = [(_CDPerfMetric *)self string];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDPerfMetric count](self, "count")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDPerfMetric errorCount](self, "errorCount")}];
  v10 = [v3 stringWithFormat:@"%@: { name=%@, text='%@', count=%@, errorCount=%@ }", v5, name, string, v8, v9];

  return v10;
}

@end