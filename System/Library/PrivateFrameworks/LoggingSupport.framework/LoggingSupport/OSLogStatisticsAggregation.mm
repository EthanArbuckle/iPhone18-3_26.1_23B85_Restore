@interface OSLogStatisticsAggregation
+ (id)_labelFromProxy:(id)proxy forTier:(unsigned __int8)tier;
+ (id)_stringForTier:(unsigned __int8)tier;
- (NSString)tierString;
- (OSLogStatisticsAggregation)initWithLabel:(id)label tier:(unsigned __int8)tier;
- (id)_descendingChildren;
- (id)_tracePointSizeString;
- (void)_addToChildren:(id)children;
- (void)_addTraceEvent:(id)event;
@end

@implementation OSLogStatisticsAggregation

- (id)_tracePointSizeString
{
  v2 = MEMORY[0x277CCA8E8];
  eventBytes = [(OSLogStatisticsAggregation *)self eventBytes];

  return [v2 stringFromByteCount:eventBytes countStyle:0];
}

- (id)_descendingChildren
{
  labelToChildTiers = [(OSLogStatisticsAggregation *)self labelToChildTiers];
  allValues = [labelToChildTiers allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_2600];

  return v4;
}

uint64_t __49__OSLogStatisticsAggregation__descendingChildren__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 eventBytes];
  if (v6 <= [v5 eventBytes])
  {
    v8 = [v4 eventBytes];
    v7 = v8 != [v5 eventBytes];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)_addTraceEvent:(id)event
{
  v6 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([(OSLogStatisticsAggregation *)self tier]>= 9)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  [(OSLogStatisticsAggregation *)self setEventCount:[(OSLogStatisticsAggregation *)self eventCount]+ 1];
  -[OSLogStatisticsAggregation setEventBytes:](self, "setEventBytes:", -[OSLogStatisticsAggregation eventBytes](self, "eventBytes") + [eventCopy size]);
  if ([(OSLogStatisticsAggregation *)self tier]!= 8)
  {
    [(OSLogStatisticsAggregation *)self _addToChildren:eventCopy];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_addToChildren:(id)children
{
  childrenCopy = children;
  _childTier = [(OSLogStatisticsAggregation *)self _childTier];
  v5 = [objc_opt_class() _labelFromProxy:childrenCopy forTier:_childTier];
  labelToChildTiers = [(OSLogStatisticsAggregation *)self labelToChildTiers];

  if (!labelToChildTiers)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    labelToChildTiers = self->_labelToChildTiers;
    self->_labelToChildTiers = dictionary;
  }

  labelToChildTiers2 = [(OSLogStatisticsAggregation *)self labelToChildTiers];
  v10 = [labelToChildTiers2 objectForKeyedSubscript:v5];

  if (!v10)
  {
    v10 = [[OSLogStatisticsAggregation alloc] initWithOSLogProxy:childrenCopy tier:_childTier];
    labelToChildTiers3 = [(OSLogStatisticsAggregation *)self labelToChildTiers];
    [labelToChildTiers3 setObject:v10 forKeyedSubscript:v5];
  }

  [(OSLogStatisticsAggregation *)v10 _addTraceEvent:childrenCopy];
}

- (OSLogStatisticsAggregation)initWithLabel:(id)label tier:(unsigned __int8)tier
{
  labelCopy = label;
  v11.receiver = self;
  v11.super_class = OSLogStatisticsAggregation;
  v8 = [(OSLogStatisticsAggregation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_label, label);
    v9->_tier = tier;
  }

  return v9;
}

- (NSString)tierString
{
  v3 = objc_opt_class();
  tier = self->_tier;

  return [v3 _stringForTier:tier];
}

+ (id)_labelFromProxy:(id)proxy forTier:(unsigned __int8)tier
{
  tierCopy = tier;
  proxyCopy = proxy;
  v6 = proxyCopy;
  if (tierCopy <= 3)
  {
    if (tierCopy <= 1)
    {
      if (!tierCopy)
      {
        v13 = 0;
        goto LABEL_26;
      }

      if (tierCopy == 1)
      {
        v13 = @"All";
        goto LABEL_26;
      }

LABEL_32:
      v13 = &stru_2841AD290;
      goto LABEL_26;
    }

    if (tierCopy == 2)
    {
      if ([proxyCopy type] == 1536)
      {
        v13 = @"os_signpost";
      }

      else if ([v6 type] == 1024)
      {
        v13 = @"os_log";
      }

      else
      {
        v13 = @"Unexpected";
      }

      goto LABEL_26;
    }

    process = [proxyCopy process];
LABEL_22:
    v8 = process;
    v15 = @"Unknown";
    if (process)
    {
      v15 = process;
    }

    v13 = v15;
    goto LABEL_25;
  }

  if (tierCopy <= 5)
  {
    if (tierCopy == 4)
    {
      [proxyCopy sender];
    }

    else
    {
      [proxyCopy subsystem];
    }
    process = ;
    goto LABEL_22;
  }

  if (tierCopy == 6)
  {
    process = [proxyCopy category];
    goto LABEL_22;
  }

  if (tierCopy != 7)
  {
    if (tierCopy == 8)
    {
      senderImageUUID = [proxyCopy senderImageUUID];
      v8 = [senderImageUUID copy];

      if (v8)
      {
        v9 = MEMORY[0x277CCACA8];
        uUIDString = [v8 UUIDString];
        senderImageOffset = [v6 senderImageOffset];
        formatString = [v6 formatString];
        v13 = [v9 stringWithFormat:@"%@ + %llu : %@", uUIDString, senderImageOffset, formatString];
      }

      else
      {
        v13 = @"<Unknown>";
      }

LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_32;
  }

  if ([proxyCopy type] == 1536)
  {
    signpostType = [v6 signpostType];
    if (signpostType <= 2)
    {
      v13 = off_2787AE7B0[signpostType];
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  if ([v6 type] != 1024)
  {
LABEL_46:
    v13 = @"Unexpected";
    goto LABEL_26;
  }

  logType = [v6 logType];
  if (logType <= 1)
  {
    if (logType)
    {
      if (logType == 1)
      {
        v13 = @"Info";
        goto LABEL_26;
      }

      goto LABEL_46;
    }

    v13 = @"Default";
  }

  else
  {
    switch(logType)
    {
      case 2:
        v13 = @"Debug";
        break;
      case 16:
        v13 = @"Error";
        break;
      case 17:
        v13 = @"Fault";
        break;
      default:
        goto LABEL_46;
    }
  }

LABEL_26:

  return v13;
}

+ (id)_stringForTier:(unsigned __int8)tier
{
  if (tier > 8u)
  {
    return @"Unexpected";
  }

  else
  {
    return off_2787AE768[tier];
  }
}

@end