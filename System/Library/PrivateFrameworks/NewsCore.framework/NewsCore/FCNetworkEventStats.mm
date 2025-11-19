@interface FCNetworkEventStats
- (FCNetworkEventStats)initWithValues:(id)a3;
@end

@implementation FCNetworkEventStats

- (FCNetworkEventStats)initWithValues:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = FCNetworkEventStats;
  v5 = [(FCNetworkEventStats *)&v43 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF > 0"];
    v7 = [v4 filteredArrayUsingPredicate:v6];
    if ([v7 count])
    {
      v5->_count = [v7 count];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@min.self"];
      v9 = [v7 valueForKeyPath:v8];
      [v9 doubleValue];
      v5->_min = v10;

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@max.self"];
      v12 = [v7 valueForKeyPath:v11];
      [v12 doubleValue];
      v5->_max = v13;

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@avg.self"];
      v15 = [v7 valueForKeyPath:v14];
      [v15 doubleValue];
      v5->_mean = v16;

      v17 = [v7 sortedArrayUsingSelector:sel_compare_];
      v18 = vcvtd_n_f64_u64([v17 count], 1uLL);
      v19 = [v17 count] * 0.95;
      v20 = floor(v18);
      v21 = ([v7 count] - 1);
      if (v20 < v21)
      {
        v21 = v20;
      }

      v22 = v21;
      v23 = ceil(v18);
      v24 = ([v7 count] - 1);
      if (v23 < v24)
      {
        v24 = v23;
      }

      v25 = v24;
      v26 = floor(v19);
      v27 = ([v7 count] - 1);
      if (v26 < v27)
      {
        v27 = v26;
      }

      v28 = v27;
      v29 = ceil(v19);
      v30 = ([v7 count] - 1);
      if (v29 < v30)
      {
        v30 = v29;
      }

      v31 = v30;
      v32 = [v17 objectAtIndex:v22];
      [v32 doubleValue];
      v34 = v33;
      v35 = [v17 objectAtIndex:v25];
      [v35 doubleValue];
      v5->_median = ((v34 + v36) * 0.5);

      v37 = [v17 objectAtIndex:v28];
      [v37 doubleValue];
      v39 = v38;
      v40 = [v17 objectAtIndex:v31];
      [v40 doubleValue];
      v5->_percentile95 = ((v39 + v41) * 0.5);
    }
  }

  return v5;
}

@end