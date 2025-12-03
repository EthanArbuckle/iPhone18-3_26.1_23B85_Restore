@interface FCCKOrderFeedUtilities
+ (id)orderFeedIDFromFeedID:(id)d;
+ (id)orderFeedRequestForFeedID:(id)d feedRange:(id)range;
+ (int64_t)_feedBinFromFeedID:(id)d;
+ (unint64_t)_orderFeedTopKFromBin:(int64_t)bin timeInterval:(double)interval;
@end

@implementation FCCKOrderFeedUtilities

+ (id)orderFeedRequestForFeedID:(id)d feedRange:(id)range
{
  rangeCopy = range;
  dCopy = d;
  v8 = [self _feedBinFromFeedID:dCopy];
  v9 = objc_alloc_init(FCCKOrderFeedRequest);
  v10 = [self orderFeedIDFromFeedID:dCopy];

  if (v9)
  {
    objc_setProperty_nonatomic_copy(v9, v11, v10, 8);
  }

  v12 = [rangeCopy top];
  order = [v12 order];
  if (v9)
  {
    v9->_maxOrder = order;
  }

  bottom = [rangeCopy bottom];
  order2 = [bottom order];
  if (v9)
  {
    v9->_minOrder = order2 + 1;
  }

  [rangeCopy timeInterval];
  v17 = v16;

  v18 = [self _orderFeedTopKFromBin:v8 timeInterval:v17];
  if (v9)
  {
    v9->_topK = v18;
  }

  return v9;
}

+ (id)orderFeedIDFromFeedID:(id)d
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"@A";
  v9[1] = @"@B";
  v3 = MEMORY[0x1E695DEC8];
  dCopy = d;
  v5 = [v3 arrayWithObjects:v9 count:2];
  v6 = [dCopy fc_stringByReplacingOccurrencesOfStrings:v5 withString:&stru_1F2DC7DC0];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (int64_t)_feedBinFromFeedID:(id)d
{
  dCopy = d;
  if ([dCopy containsString:@"@A"])
  {
    v4 = 1;
  }

  else if ([dCopy containsString:@"@B"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (unint64_t)_orderFeedTopKFromBin:(int64_t)bin timeInterval:(double)interval
{
  v16 = *MEMORY[0x1E69E9840];
  if (interval > 604800.0)
  {
    goto LABEL_2;
  }

  switch(bin)
  {
    case 0:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
        v8 = 136315906;
        v9 = "+[FCCKOrderFeedUtilities _orderFeedTopKFromBin:timeInterval:]";
        v10 = 2080;
        v11 = "FCCKOrderFeedUtilities.m";
        v12 = 1024;
        v13 = 93;
        v14 = 2114;
        v15 = v7;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v8, 0x26u);
      }

      break;
    case 1:
      v5 = 86400.0;
      goto LABEL_8;
    case 2:
      v5 = 3600.0;
LABEL_8:
      result = vcvtpd_u64_f64(interval / v5 * 12.0);
      goto LABEL_9;
  }

LABEL_2:
  result = 0;
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end