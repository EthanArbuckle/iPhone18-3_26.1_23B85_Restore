@interface NRSwitchRecordCollection
- (void)addSwitchRecordWithHistoryEntry:(uint64_t)a1;
- (void)encodeWithCoder:(id)a3;
- (void)truncateSwitchRecords;
@end

@implementation NRSwitchRecordCollection

- (void)addSwitchRecordWithHistoryEntry:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v19 = v3;
    v4 = [v3 switchIndex];
    v5 = *(a1 + 8);
    v6 = [v5 lastObject];
    v7 = v6 ? v6[6] : 0;

    v3 = v19;
    if (v4 != v7)
    {
      v8 = v19;
      objc_opt_self();
      v9 = [v8 state];
      v10 = [v9 activeDevice];

      v11 = [v8 state];
      v12 = [v11 activeDeviceID];

      v13 = [v10 objectForKeyedSubscript:@"lastActiveDate"];
      v14 = [v13 value];

      if (v14)
      {
        v15 = -[NRSwitchRecord initWithDeviceID:date:switchIndex:]([NRSwitchRecord alloc], "initWithDeviceID:date:switchIndex:", v12, v14, [v8 switchIndex]);
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v16 = *(a1 + 8);
        if (!v16)
        {
          v17 = [MEMORY[0x1E695DF70] array];
          v18 = *(a1 + 8);
          *(a1 + 8) = v17;

          v16 = *(a1 + 8);
        }

        [v16 addObject:v15];
      }

      v3 = v19;
    }
  }
}

uint64_t __55__NRSwitchRecordCollection_deviceIDAtSwitchIndex_date___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = v4[6];
    if (v5)
    {
LABEL_3:
      v7 = v5[6];
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_4:
  if (v6 > v7)
  {
    v8 = 1;
    goto LABEL_12;
  }

  if (v4)
  {
    v9 = v4[6];
    if (v5)
    {
LABEL_8:
      v10 = v5[6];
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_9:
  if (v9 >= v10)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

LABEL_12:

  return v8;
}

- (void)truncateSwitchRecords
{
  if (self)
  {
    records = self->super._records;
  }

  else
  {
    records = 0;
  }

  v4 = records;
  v5 = [(NSMutableArray *)v4 count];

  if (v5 >= 0x1F)
  {
    if (self)
    {
      v6 = self->super._records;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [(NSMutableArray *)v7 count]- 30;

    if (self)
    {
      v9 = self->super._records;
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v8}];
    [(NSMutableArray *)v11 removeObjectsAtIndexes:v10];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(NRSwitchRecordCollection *)self truncateSwitchRecords];
  v5.receiver = self;
  v5.super_class = NRSwitchRecordCollection;
  [(NRSwitchRecordCollection *)&v5 encodeWithCoder:v4];
}

@end