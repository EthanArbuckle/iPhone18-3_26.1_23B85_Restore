@interface CPLResourceTransferTaskOptions
+ (BOOL)isForegroundOperationForIntent:(unint64_t)intent priority:(unint64_t)priority;
+ (BOOL)isHighPriorityForIntent:(unint64_t)intent priority:(unint64_t)priority;
+ (id)defaultOptions;
+ (id)descriptionForIntent:(unint64_t)intent;
+ (id)descriptionForIntentPriority:(unint64_t)priority;
+ (id)optionsForLegacyIntent:(unint64_t)intent;
- ($0E4A422D128941990FD19C13E5416F99)timeRange;
- (BOOL)allowsUnsafeClientCache;
- (BOOL)isForeground;
- (BOOL)isHighPriority;
- (CPLResourceTransferTaskOptions)initWithCoder:(id)coder;
- (CPLResourceTransferTaskOptions)initWithHighPriority:(BOOL)priority;
- (CPLResourceTransferTaskOptions)initWithIntent:(unint64_t)intent priority:(unint64_t)priority;
- (CPLResourceTransferTaskOptions)initWithIntent:(unint64_t)intent priority:(unint64_t)priority bypassCaches:(BOOL)caches timeRange:(id *)range;
- (CPLResourceTransferTaskOptions)initWithIntent:(unint64_t)intent priority:(unint64_t)priority timeRange:(id *)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)legacyIntent;
- (void)encodeWithCoder:(id)coder;
- (void)setTimeRange:(id *)range;
@end

@implementation CPLResourceTransferTaskOptions

- (void)setTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_timeRange.start.epoch = *&range->var0.var3;
  *&self->_timeRange.duration.timescale = v4;
  *&self->_timeRange.start.value = v3;
}

- ($0E4A422D128941990FD19C13E5416F99)timeRange
{
  v3 = *&self[1].var0.var0;
  *&retstr->var0.var0 = *&self->var1.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var3;
  return self;
}

- (BOOL)allowsUnsafeClientCache
{
  if ([(CPLResourceTransferTaskOptions *)self shouldBypassCaches])
  {
    return 1;
  }

  return [(CPLResourceTransferTaskOptions *)self isHighPriority];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  *(result + 2) = self->_intent;
  *(result + 3) = self->_priority;
  v5 = *&self->_timeRange.start.value;
  v6 = *&self->_timeRange.duration.timescale;
  *(result + 3) = *&self->_timeRange.start.epoch;
  *(result + 4) = v6;
  *(result + 2) = v5;
  return result;
}

- (CPLResourceTransferTaskOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CPLResourceTransferTaskOptions *)self init];
  if (v5)
  {
    v5->_intent = [coderCopy decodeInt64ForKey:@"intent"];
    v5->_priority = [coderCopy decodeInt64ForKey:@"priority"];
    if (coderCopy)
    {
      [coderCopy decodeCMTimeRangeForKey:@"timeRange"];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    *&v5->_timeRange.start.value = v7;
    *&v5->_timeRange.start.epoch = v8;
    *&v5->_timeRange.duration.timescale = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  intent = self->_intent;
  coderCopy = coder;
  [coderCopy encodeInt64:intent forKey:@"intent"];
  [coderCopy encodeInt64:self->_priority forKey:@"priority"];
  v6 = *&self->_timeRange.start.epoch;
  v7[0] = *&self->_timeRange.start.value;
  v7[1] = v6;
  v7[2] = *&self->_timeRange.duration.timescale;
  [coderCopy encodeCMTimeRange:v7 forKey:@"timeRange"];
}

- (unint64_t)legacyIntent
{
  intent = self->_intent;
  if (intent > 7)
  {
    if ((intent - 10) < 8)
    {
      return 0;
    }

    v7 = intent == 8 || intent == 9;
    result = self->_intent;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    result = 1;
    if (intent > 3)
    {
      if (intent > 5)
      {
        if (intent != 6)
        {
          return 7;
        }

        priority = self->_priority;
        if (priority >= 3)
        {
          return 7;
        }

        v6 = &unk_1DC208BE0;
        return v6[priority];
      }

      if (intent == 4)
      {
        return 4;
      }
    }

    else
    {
      if (intent <= 1)
      {
        if (intent)
        {
          if (intent == 1)
          {
            return result;
          }

          return 0;
        }

        priority = self->_priority;
        if (priority >= 3)
        {
          return 0;
        }

        v6 = &unk_1DC208BB0;
        return v6[priority];
      }

      result = intent;
      if (intent != 2)
      {
        priority = self->_priority;
        if (priority < 3)
        {
          v6 = &unk_1DC208BC8;
          return v6[priority];
        }

        return 4;
      }
    }
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [objc_opt_class() descriptionForIntent:self->_intent];
  v5 = [objc_opt_class() descriptionForIntentPriority:self->_priority];
  v6 = [v3 stringWithFormat:@"intent %@ priority %@", v4, v5];

  if ([(CPLResourceTransferTaskOptions *)self hasValidTimeRange])
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = *&self->_timeRange.start.epoch;
    *&range.start.value = *&self->_timeRange.start.value;
    *&range.start.epoch = v8;
    *&range.duration.timescale = *&self->_timeRange.duration.timescale;
    v9 = CMTimeRangeCopyDescription(v7, &range);
    [v6 appendFormat:@" timeRange %@", v9];
  }

  return v6;
}

- (BOOL)isForeground
{
  v3 = objc_opt_class();
  intent = self->_intent;
  priority = self->_priority;

  return [v3 isForegroundOperationForIntent:intent priority:priority];
}

- (BOOL)isHighPriority
{
  v3 = objc_opt_class();
  intent = self->_intent;
  priority = self->_priority;

  return [v3 isHighPriorityForIntent:intent priority:priority];
}

- (CPLResourceTransferTaskOptions)initWithHighPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return [(CPLResourceTransferTaskOptions *)self initWithIntent:0 priority:v3];
}

- (CPLResourceTransferTaskOptions)initWithIntent:(unint64_t)intent priority:(unint64_t)priority
{
  v4 = *(MEMORY[0x1E6960C98] + 16);
  v6[0] = *MEMORY[0x1E6960C98];
  v6[1] = v4;
  v6[2] = *(MEMORY[0x1E6960C98] + 32);
  return [(CPLResourceTransferTaskOptions *)self initWithIntent:intent priority:priority bypassCaches:0 timeRange:v6];
}

- (CPLResourceTransferTaskOptions)initWithIntent:(unint64_t)intent priority:(unint64_t)priority timeRange:(id *)range
{
  v5 = *&range->var0.var3;
  v7[0] = *&range->var0.var0;
  v7[1] = v5;
  v7[2] = *&range->var1.var1;
  return [(CPLResourceTransferTaskOptions *)self initWithIntent:intent priority:priority bypassCaches:0 timeRange:v7];
}

- (CPLResourceTransferTaskOptions)initWithIntent:(unint64_t)intent priority:(unint64_t)priority bypassCaches:(BOOL)caches timeRange:(id *)range
{
  cachesCopy = caches;
  v13.receiver = self;
  v13.super_class = CPLResourceTransferTaskOptions;
  result = [(CPLResourceTransferTaskOptions *)&v13 init];
  if (result)
  {
    result->_intent = intent;
    result->_priority = priority;
    result->_shouldBypassCaches = cachesCopy;
    if (cachesCopy)
    {
      result->_priority = priority != 0;
    }

    v11 = *&range->var0.var0;
    v12 = *&range->var1.var1;
    *&result->_timeRange.start.epoch = *&range->var0.var3;
    *&result->_timeRange.duration.timescale = v12;
    *&result->_timeRange.start.value = v11;
  }

  return result;
}

+ (id)optionsForLegacyIntent:(unint64_t)intent
{
  v3 = intent - 1;
  if (intent - 1 > 9)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = qword_1DC208B10[v3];
    v5 = qword_1DC208B60[v3];
  }

  v6 = [[CPLResourceTransferTaskOptions alloc] initWithIntent:v5 priority:v4];

  return v6;
}

+ (BOOL)isForegroundOperationForIntent:(unint64_t)intent priority:(unint64_t)priority
{
  v4 = ((1 << intent) & 9) == 0 || priority != 2;
  v5 = ((1 << intent) & 0x3DC76) == 0 && v4;
  return intent > 0x11 || v5;
}

+ (BOOL)isHighPriorityForIntent:(unint64_t)intent priority:(unint64_t)priority
{
  v4 = ((1 << intent) & 0x41) == 0 || priority != 2;
  v5 = ((1 << intent) & 0x36) == 0 && v4;
  return intent > 6 || v5;
}

+ (id)descriptionForIntentPriority:(unint64_t)priority
{
  if (priority >= 3)
  {
    priority = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CPLResourceTransferTaskIntentPriority-%lu", priority];
  }

  else
  {
    priority = off_1E861DC90[priority];
  }

  return priority;
}

+ (id)descriptionForIntent:(unint64_t)intent
{
  if (intent >= 0x12)
  {
    intent = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CPLResourceTransferTaskIntent-%lu", intent];
  }

  else
  {
    intent = off_1E861DC00[intent];
  }

  return intent;
}

+ (id)defaultOptions
{
  v2 = objc_alloc_init(self);

  return v2;
}

@end