@interface _CDMutablePerfMetric
+ (id)perfMetricForFetchRequest:(void *)a3 type:;
- (_CDMutablePerfMetric)initWithName:(id)a3 string:(id)a4 family:(id)a5;
- (id)description;
- (void)endTimingWithEvent:(_CDPerfEvent *)a3 resultCount:(unint64_t)a4 incrementErrorCount:(BOOL)a5;
@end

@implementation _CDMutablePerfMetric

+ (id)perfMetricForFetchRequest:(void *)a3 type:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v6 BOOLForKey:@"CoreDuetQueryPerfMetricsEnabled"])
  {
    v7 = [v4 predicate];
    v8 = [v7 description];
    v9 = _CDNormalizedStringFromQueryString(v8);
    v10 = [v9 mutableCopy];

    v11 = [v4 sortDescriptors];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [v4 sortDescriptors];
      v14 = [v13 valueForKey:@"key"];
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
      v18 = [v4 fetchLimit];
      if (v18 < 2 || v18 == 0xFFFFFFFF)
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
      }

      else
      {
        v21 = @"N";
        v22 = @"NN";
        v23 = @"NNN";
        v24 = @"NNNN";
        if (v18 >> 5 >= 0xC35)
        {
          v25 = @"NNNNNN+";
        }

        else
        {
          v25 = @"NNNNN";
        }

        if (v18 >> 4 >= 0x271)
        {
          v24 = v25;
        }

        if (v18 >= 0x3E8)
        {
          v23 = v24;
        }

        if (v18 >= 0x64)
        {
          v22 = v23;
        }

        if (v18 >= 0xA)
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
    v31 = [_CDPerfMetricFamily perfMetricFamilyWithName:v5];
    v20 = [v31 perfMetricWithName:v30 string:v10];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (_CDMutablePerfMetric)initWithName:(id)a3 string:(id)a4 family:(id)a5
{
  v6.receiver = self;
  v6.super_class = _CDMutablePerfMetric;
  return [(_CDPerfMetric *)&v6 initWithName:a3 string:a4 family:a5];
}

- (void)endTimingWithEvent:(_CDPerfEvent *)a3 resultCount:(unint64_t)a4 incrementErrorCount:(BOOL)a5
{
  if (!a3)
  {
    return;
  }

  v5 = a5;
  os_unfair_lock_lock(&self->super._lock);
  var0 = a3->var0;
  var1 = a3->var1;
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
  v15 = a3->var1;
  self->super._lastElapsedTime = v12;
  self->super._lastResultCount = a4;
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
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v5)
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
  v6 = [(_CDPerfMetric *)self name];
  v7 = [(_CDPerfMetric *)self string];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDPerfMetric count](self, "count")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDPerfMetric errorCount](self, "errorCount")}];
  v10 = [v3 stringWithFormat:@"%@: { name=%@, text='%@', count=%@, errorCount=%@ }", v5, v6, v7, v8, v9];

  return v10;
}

@end