@interface OSLogStatisticsAggregation
+ (id)_labelFromProxy:(id)a3 forTier:(unsigned __int8)a4;
+ (id)_stringForTier:(unsigned __int8)a3;
- (NSString)tierString;
- (OSLogStatisticsAggregation)initWithLabel:(id)a3 tier:(unsigned __int8)a4;
- (id)_descendingChildren;
- (id)_tracePointSizeString;
- (void)_addToChildren:(id)a3;
- (void)_addTraceEvent:(id)a3;
@end

@implementation OSLogStatisticsAggregation

- (id)_tracePointSizeString
{
  v2 = MEMORY[0x277CCA8E8];
  v3 = [(OSLogStatisticsAggregation *)self eventBytes];

  return [v2 stringFromByteCount:v3 countStyle:0];
}

- (id)_descendingChildren
{
  v2 = [(OSLogStatisticsAggregation *)self labelToChildTiers];
  v3 = [v2 allValues];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_2600];

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

- (void)_addTraceEvent:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(OSLogStatisticsAggregation *)self tier]>= 9)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  [(OSLogStatisticsAggregation *)self setEventCount:[(OSLogStatisticsAggregation *)self eventCount]+ 1];
  -[OSLogStatisticsAggregation setEventBytes:](self, "setEventBytes:", -[OSLogStatisticsAggregation eventBytes](self, "eventBytes") + [v5 size]);
  if ([(OSLogStatisticsAggregation *)self tier]!= 8)
  {
    [(OSLogStatisticsAggregation *)self _addToChildren:v5];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_addToChildren:(id)a3
{
  v12 = a3;
  v4 = [(OSLogStatisticsAggregation *)self _childTier];
  v5 = [objc_opt_class() _labelFromProxy:v12 forTier:v4];
  v6 = [(OSLogStatisticsAggregation *)self labelToChildTiers];

  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    labelToChildTiers = self->_labelToChildTiers;
    self->_labelToChildTiers = v7;
  }

  v9 = [(OSLogStatisticsAggregation *)self labelToChildTiers];
  v10 = [v9 objectForKeyedSubscript:v5];

  if (!v10)
  {
    v10 = [[OSLogStatisticsAggregation alloc] initWithOSLogProxy:v12 tier:v4];
    v11 = [(OSLogStatisticsAggregation *)self labelToChildTiers];
    [v11 setObject:v10 forKeyedSubscript:v5];
  }

  [(OSLogStatisticsAggregation *)v10 _addTraceEvent:v12];
}

- (OSLogStatisticsAggregation)initWithLabel:(id)a3 tier:(unsigned __int8)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = OSLogStatisticsAggregation;
  v8 = [(OSLogStatisticsAggregation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_label, a3);
    v9->_tier = a4;
  }

  return v9;
}

- (NSString)tierString
{
  v3 = objc_opt_class();
  tier = self->_tier;

  return [v3 _stringForTier:tier];
}

+ (id)_labelFromProxy:(id)a3 forTier:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4 <= 3)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        v13 = 0;
        goto LABEL_26;
      }

      if (v4 == 1)
      {
        v13 = @"All";
        goto LABEL_26;
      }

LABEL_32:
      v13 = &stru_2841AD290;
      goto LABEL_26;
    }

    if (v4 == 2)
    {
      if ([v5 type] == 1536)
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

    v14 = [v5 process];
LABEL_22:
    v8 = v14;
    v15 = @"Unknown";
    if (v14)
    {
      v15 = v14;
    }

    v13 = v15;
    goto LABEL_25;
  }

  if (v4 <= 5)
  {
    if (v4 == 4)
    {
      [v5 sender];
    }

    else
    {
      [v5 subsystem];
    }
    v14 = ;
    goto LABEL_22;
  }

  if (v4 == 6)
  {
    v14 = [v5 category];
    goto LABEL_22;
  }

  if (v4 != 7)
  {
    if (v4 == 8)
    {
      v7 = [v5 senderImageUUID];
      v8 = [v7 copy];

      if (v8)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = [v8 UUIDString];
        v11 = [v6 senderImageOffset];
        v12 = [v6 formatString];
        v13 = [v9 stringWithFormat:@"%@ + %llu : %@", v10, v11, v12];
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

  if ([v5 type] == 1536)
  {
    v17 = [v6 signpostType];
    if (v17 <= 2)
    {
      v13 = off_2787AE7B0[v17];
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

  v18 = [v6 logType];
  if (v18 <= 1)
  {
    if (v18)
    {
      if (v18 == 1)
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
    switch(v18)
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

+ (id)_stringForTier:(unsigned __int8)a3
{
  if (a3 > 8u)
  {
    return @"Unexpected";
  }

  else
  {
    return off_2787AE768[a3];
  }
}

@end