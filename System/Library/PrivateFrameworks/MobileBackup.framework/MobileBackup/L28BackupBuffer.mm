@interface L28BackupBuffer
- (id)_initWithBuffer:(id)a3 nextDayIndex:(unsigned int)a4 endDay:(int64_t)a5;
- (id)_latestBackup;
- (id)_slotAtIndex:(unsigned int)a3;
- (id)_slots;
- (void)_addNewEntry:(id)a3 entryDay:(int64_t)a4;
- (void)_updateCurrentMetrics:(id)a3 forDay:(int64_t)a4;
@end

@implementation L28BackupBuffer

- (id)_initWithBuffer:(id)a3 nextDayIndex:(unsigned int)a4 endDay:(int64_t)a5
{
  v8 = a3;
  if ([v8 count] >= 0x1D)
  {
    __assert_rtn("[L28BackupBuffer _initWithBuffer:nextDayIndex:endDay:]", "MBL28BackupStats.m", 57, "slots.count <= kMBL28BufferCapacity");
  }

  v18.receiver = self;
  v18.super_class = L28BackupBuffer;
  v9 = [(L28BackupBuffer *)&v18 init];
  v10 = v9;
  if (v9)
  {
    if (v8)
    {
      v11 = 0;
      slots = v9->_slots;
      do
      {
        v13 = [v8 objectAtIndexedSubscript:v11];
        v14 = slots[v11];
        slots[v11] = v13;

        ++v11;
      }

      while (v11 != 28);
    }

    else
    {
      for (i = 8; i != 232; i += 8)
      {
        v16 = *(&v10->super.isa + i);
        *(&v10->super.isa + i) = &off_1003E1F00;
      }
    }

    v10->_nextDayIndex = a4;
    v10->_endDay = a5;
  }

  return v10;
}

- (id)_slotAtIndex:(unsigned int)a3
{
  if (a3 >= 0x1C)
  {
    __assert_rtn("[L28BackupBuffer _slotAtIndex:]", "MBL28BackupStats.m", 83, "index < kMBL28BufferCapacity");
  }

  v4 = self->_slots[a3];

  return v4;
}

- (id)_slots
{
  v3 = +[NSMutableArray array];
  v4 = 0;
  slots = self->_slots;
  do
  {
    if (slots[v4])
    {
      v6 = slots[v4];
    }

    else
    {
      v6 = &__NSDictionary0__struct;
    }

    [v3 setObject:v6 atIndexedSubscript:v4++];
  }

  while (v4 != 28);

  return v3;
}

- (id)_latestBackup
{
  v2 = [(NSDictionary *)self->_slots[(self->_nextDayIndex + 27) % 28] mutableCopy];

  return v2;
}

- (void)_addNewEntry:(id)a3 entryDay:(int64_t)a4
{
  v6 = a3;
  endDay = self->_endDay;
  if (endDay == a4)
  {
    __assert_rtn("[L28BackupBuffer _addNewEntry:entryDay:]", "MBL28BackupStats.m", 102, "entryDay != _endDay");
  }

  v8 = v6;
  if (endDay)
  {
    v9 = ~endDay + a4;
    if (v9 >= 0x1C)
    {
      v9 = 28;
    }

    if (endDay <= a4)
    {
      v10 = v9;
    }

    else
    {
      v10 = 28;
    }

    if (v10)
    {
      slots = self->_slots;
      nextDayIndex = self->_nextDayIndex;
      do
      {
        v13 = slots[nextDayIndex];
        slots[nextDayIndex] = 0;

        nextDayIndex = (self->_nextDayIndex + 1) % 28;
        self->_nextDayIndex = nextDayIndex;
        --v10;
      }

      while (v10);
    }
  }

  v14 = &self->super.isa + self->_nextDayIndex;
  v15 = v14[1];
  v14[1] = v8;

  self->_nextDayIndex = (self->_nextDayIndex + 1) % 28;
  self->_endDay = a4;
}

- (void)_updateCurrentMetrics:(id)a3 forDay:(int64_t)a4
{
  if (self->_endDay == a4)
  {
    [(L28BackupBuffer *)self _updateLatestEntry:a3];
  }

  else
  {
    [(L28BackupBuffer *)self _addNewEntry:a3 entryDay:?];
  }
}

@end