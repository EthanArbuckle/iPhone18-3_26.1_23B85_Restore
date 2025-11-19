@interface FCCKOrderFeedUtilities
+ (id)orderFeedIDFromFeedID:(id)a3;
+ (id)orderFeedRequestForFeedID:(id)a3 feedRange:(id)a4;
+ (int64_t)_feedBinFromFeedID:(id)a3;
+ (unint64_t)_orderFeedTopKFromBin:(int64_t)a3 timeInterval:(double)a4;
@end

@implementation FCCKOrderFeedUtilities

+ (id)orderFeedRequestForFeedID:(id)a3 feedRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _feedBinFromFeedID:v7];
  v9 = objc_alloc_init(FCCKOrderFeedRequest);
  v10 = [a1 orderFeedIDFromFeedID:v7];

  if (v9)
  {
    objc_setProperty_nonatomic_copy(v9, v11, v10, 8);
  }

  v12 = [v6 top];
  v13 = [v12 order];
  if (v9)
  {
    v9->_maxOrder = v13;
  }

  v14 = [v6 bottom];
  v15 = [v14 order];
  if (v9)
  {
    v9->_minOrder = v15 + 1;
  }

  [v6 timeInterval];
  v17 = v16;

  v18 = [a1 _orderFeedTopKFromBin:v8 timeInterval:v17];
  if (v9)
  {
    v9->_topK = v18;
  }

  return v9;
}

+ (id)orderFeedIDFromFeedID:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"@A";
  v9[1] = @"@B";
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v9 count:2];
  v6 = [v4 fc_stringByReplacingOccurrencesOfStrings:v5 withString:&stru_1F2DC7DC0];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (int64_t)_feedBinFromFeedID:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@"@A"])
  {
    v4 = 1;
  }

  else if ([v3 containsString:@"@B"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (unint64_t)_orderFeedTopKFromBin:(int64_t)a3 timeInterval:(double)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4 > 604800.0)
  {
    goto LABEL_2;
  }

  switch(a3)
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
      result = vcvtpd_u64_f64(a4 / v5 * 12.0);
      goto LABEL_9;
  }

LABEL_2:
  result = 0;
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

@end