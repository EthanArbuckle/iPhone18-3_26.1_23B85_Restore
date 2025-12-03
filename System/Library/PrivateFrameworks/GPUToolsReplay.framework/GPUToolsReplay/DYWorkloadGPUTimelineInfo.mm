@interface DYWorkloadGPUTimelineInfo
- (DYWorkloadGPUTimelineInfo)init;
- (DYWorkloadGPUTimelineInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createCounterGroup;
- (id)mGPUTimelineInfoAtIndex:(unint64_t)index;
- (unint64_t)metalFXCallDuration:(unint64_t)duration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYWorkloadGPUTimelineInfo

- (unint64_t)metalFXCallDuration:(unint64_t)duration
{
  metalFXTimelineInfo = [(DYGPUTimelineInfo *)self->_aggregatedGPUTimelineInfo metalFXTimelineInfo];

  if (!metalFXTimelineInfo)
  {
    return 0;
  }

  metalFXTimelineInfo2 = [(DYGPUTimelineInfo *)self->_aggregatedGPUTimelineInfo metalFXTimelineInfo];
  bytes = [metalFXTimelineInfo2 bytes];

  metalFXTimelineInfo3 = [(DYGPUTimelineInfo *)self->_aggregatedGPUTimelineInfo metalFXTimelineInfo];
  v9 = [metalFXTimelineInfo3 length];

  if (v9 < 0x10)
  {
    return 0;
  }

  v10 = 0;
  v11 = bytes;
  while (1)
  {
    v12 = *v11;
    v11 += 2;
    if (v12 == duration)
    {
      break;
    }

    if (v9 >> 4 == ++v10)
    {
      return 0;
    }
  }

  return *(bytes + 16 * v10 + 8);
}

- (id)createCounterGroup
{
  v3 = objc_opt_new();
  [(NSMutableArray *)self->_counterGroups addObject:v3];

  return v3;
}

- (id)mGPUTimelineInfoAtIndex:(unint64_t)index
{
  while ([(NSMutableArray *)self->_mGPUTimelineInfos count]<= index)
  {
    mGPUTimelineInfos = self->_mGPUTimelineInfos;
    v6 = objc_opt_new();
    [(NSMutableArray *)mGPUTimelineInfos addObject:v6];
  }

  v7 = self->_mGPUTimelineInfos;

  return [(NSMutableArray *)v7 objectAtIndexedSubscript:index];
}

- (DYWorkloadGPUTimelineInfo)init
{
  v12.receiver = self;
  v12.super_class = DYWorkloadGPUTimelineInfo;
  v2 = [(DYWorkloadGPUTimelineInfo *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 8;
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:16];
    mGPUTimelineInfos = v3->_mGPUTimelineInfos;
    v3->_mGPUTimelineInfos = v4;

    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    counterGroups = v3->_counterGroups;
    v3->_counterGroups = v6;

    v8 = objc_opt_new();
    aggregatedGPUTimelineInfo = v3->_aggregatedGPUTimelineInfo;
    v3->_aggregatedGPUTimelineInfo = v8;

    v10 = v3;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  self->_version = 8;
  v5 = coderCopy;
  [coderCopy encodeInt:8 forKey:@"version"];
  [v5 encodeInt:self->_timeBaseNumerator forKey:@"timeBaseNumerator"];
  [v5 encodeInt:self->_timeBaseDenominator forKey:@"timeBaseDenominator"];
  [v5 encodeObject:self->_mGPUTimelineInfos forKey:@"mGPUTimelineInfos"];
  [v5 encodeObject:self->_aggregatedGPUTimelineInfo forKey:@"aggregatedGPUTimelineInfo"];
  [v5 encodeObject:self->_perRingSampledDerivedCounters forKey:@"perRingSampledDerivedCounters"];
  [v5 encodeObject:self->_coreCounts forKey:@"coreCounts"];
  [v5 encodeObject:self->_derivedEncoderCounterInfo forKey:@"derivedEncoderCounterInfo"];
  [v5 encodeInt:self->_profiledState forKey:@"profiledState"];
  [v5 encodeBool:self->_consistentStateAchieved forKey:@"consistentStateAchieved"];
  [v5 encodeObject:self->_restoreTimestamps forKey:@"restoreTimestamps"];
  [v5 encodeObject:self->_coalescedEncoderInfo forKey:@"coalescedEncoderInfo"];
  [v5 encodeObject:self->_counterGroups forKey:@"counterGroups"];
}

- (DYWorkloadGPUTimelineInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v54.receiver = self;
  v54.super_class = DYWorkloadGPUTimelineInfo;
  v5 = [(DYWorkloadGPUTimelineInfo *)&v54 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeIntForKey:@"version"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"mGPUTimelineInfos"];
    mGPUTimelineInfos = v5->_mGPUTimelineInfos;
    v5->_mGPUTimelineInfos = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"aggregatedGPUTimelineInfo"];
    aggregatedGPUTimelineInfo = v5->_aggregatedGPUTimelineInfo;
    v5->_aggregatedGPUTimelineInfo = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"perRingSampledDerivedCounters"];
    perRingSampledDerivedCounters = v5->_perRingSampledDerivedCounters;
    v5->_perRingSampledDerivedCounters = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"coreCounts"];
    coreCounts = v5->_coreCounts;
    v5->_coreCounts = v26;

    if (v5->_version < 2)
    {
      *&v5->_timeBaseNumerator = 0x30000007DLL;
    }

    else
    {
      v5->_timeBaseNumerator = [coderCopy decodeIntForKey:@"timeBaseNumerator"];
      v5->_timeBaseDenominator = [coderCopy decodeIntForKey:@"timeBaseDenominator"];
      v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"derivedEncoderCounterInfo"];
      derivedEncoderCounterInfo = v5->_derivedEncoderCounterInfo;
      v5->_derivedEncoderCounterInfo = v29;

      if (v5->_version >= 3)
      {
        v5->_profiledState = [coderCopy decodeIntForKey:@"profiledState"];
        v5->_consistentStateAchieved = [coderCopy decodeBoolForKey:@"consistentStateAchieved"];
        if (v5->_version >= 4)
        {
          v31 = MEMORY[0x277CBEB98];
          v32 = objc_opt_class();
          v33 = objc_opt_class();
          v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
          v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"restoreTimestamps"];
          restoreTimestamps = v5->_restoreTimestamps;
          v5->_restoreTimestamps = v35;

          if (v5->_version >= 6)
          {
            v53 = MEMORY[0x277CBEB98];
            v37 = objc_opt_class();
            v38 = objc_opt_class();
            v39 = objc_opt_class();
            v40 = objc_opt_class();
            v41 = [v53 setWithObjects:{v37, v38, v39, v40, objc_opt_class(), 0}];
            v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"coalescedEncoderInfo"];
            coalescedEncoderInfo = v5->_coalescedEncoderInfo;
            v5->_coalescedEncoderInfo = v42;

            if (v5->_version >= 7)
            {
              v44 = MEMORY[0x277CBEB98];
              v45 = objc_opt_class();
              v46 = objc_opt_class();
              v47 = objc_opt_class();
              v48 = [v44 setWithObjects:{v45, v46, v47, objc_opt_class(), 0}];
              v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"counterGroups"];
              counterGroups = v5->_counterGroups;
              v5->_counterGroups = v49;
            }
          }
        }
      }
    }

    v51 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  mGPUTimelineInfos = [(DYWorkloadGPUTimelineInfo *)self mGPUTimelineInfos];
  v6 = [mGPUTimelineInfos copy];
  [v4 setMGPUTimelineInfos:v6];

  aggregatedGPUTimelineInfo = [(DYWorkloadGPUTimelineInfo *)self aggregatedGPUTimelineInfo];
  v8 = [aggregatedGPUTimelineInfo copy];
  [v4 setAggregatedGPUTimelineInfo:v8];

  perRingSampledDerivedCounters = [(DYWorkloadGPUTimelineInfo *)self perRingSampledDerivedCounters];
  v10 = [perRingSampledDerivedCounters copy];
  [v4 setPerRingSampledDerivedCounters:v10];

  coreCounts = [(DYWorkloadGPUTimelineInfo *)self coreCounts];
  v12 = [coreCounts copy];
  [v4 setCoreCounts:v12];

  return v4;
}

@end