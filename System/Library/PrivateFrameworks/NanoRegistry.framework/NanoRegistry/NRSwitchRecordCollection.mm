@interface NRSwitchRecordCollection
- (void)addSwitchRecordWithHistoryEntry:(uint64_t)entry;
- (void)encodeWithCoder:(id)coder;
- (void)truncateSwitchRecords;
@end

@implementation NRSwitchRecordCollection

- (void)addSwitchRecordWithHistoryEntry:(uint64_t)entry
{
  v3 = a2;
  if (entry)
  {
    v19 = v3;
    switchIndex = [v3 switchIndex];
    v5 = *(entry + 8);
    lastObject = [v5 lastObject];
    v7 = lastObject ? lastObject[6] : 0;

    v3 = v19;
    if (switchIndex != v7)
    {
      v8 = v19;
      objc_opt_self();
      state = [v8 state];
      activeDevice = [state activeDevice];

      state2 = [v8 state];
      activeDeviceID = [state2 activeDeviceID];

      v13 = [activeDevice objectForKeyedSubscript:@"lastActiveDate"];
      value = [v13 value];

      if (value)
      {
        v15 = -[NRSwitchRecord initWithDeviceID:date:switchIndex:]([NRSwitchRecord alloc], "initWithDeviceID:date:switchIndex:", activeDeviceID, value, [v8 switchIndex]);
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v16 = *(entry + 8);
        if (!v16)
        {
          array = [MEMORY[0x1E695DF70] array];
          v18 = *(entry + 8);
          *(entry + 8) = array;

          v16 = *(entry + 8);
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(NRSwitchRecordCollection *)self truncateSwitchRecords];
  v5.receiver = self;
  v5.super_class = NRSwitchRecordCollection;
  [(NRSwitchRecordCollection *)&v5 encodeWithCoder:coderCopy];
}

@end