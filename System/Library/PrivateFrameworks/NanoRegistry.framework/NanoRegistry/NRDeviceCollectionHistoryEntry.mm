@interface NRDeviceCollectionHistoryEntry
- (BOOL)isEqual:(id)a3;
- (NRDeviceCollectionHistoryEntry)initWithCoder:(id)a3;
- (NRDeviceCollectionHistoryEntry)initWithHistory:(id)a3 index:(unint64_t)a4 date:(id)a5 diff:(id)a6 switchIndex:(unsigned int)a7;
- (NRDeviceCollectionHistoryEntry)initWithProtobuf:(id)a3;
- (NRMutableDeviceCollection)state;
- (NRPBDeviceCollectionHistoryEntry)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHistoryManager:(uint64_t)a1;
@end

@implementation NRDeviceCollectionHistoryEntry

- (NRDeviceCollectionHistoryEntry)initWithHistory:(id)a3 index:(unint64_t)a4 date:(id)a5 diff:(id)a6 switchIndex:(unsigned int)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = [(NRDeviceCollectionHistoryEntry *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_historyManager, a3);
    v17->_index = a4;
    objc_storeStrong(&v17->_date, a5);
    objc_storeStrong(&v17->_diff, a6);
    v17->_switchIndex = a7;
  }

  return v17;
}

- (NRDeviceCollectionHistoryEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NRDeviceCollectionHistoryEntry *)self init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v5->_index = [v4 decodeInt64ForKey:@"index"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"diff"];
    diff = v5->_diff;
    v5->_diff = v12;

    v5->_switchIndex = [v4 decodeInt32ForKey:@"switchIndex"];
LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBDeviceCollectionHistoryEntry alloc] initWithData:v6];
  v9 = [(NRDeviceCollectionHistoryEntry *)v5 initWithProtobuf:v8];

LABEL_6:
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(NRDeviceCollectionHistoryEntry *)self protobuf];
  v5 = [v6 data];
  [v4 encodeObject:v5 forKey:@"data"];
}

- (NRDeviceCollectionHistoryEntry)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [(NRDeviceCollectionHistoryEntry *)self init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = *(v4 + 2);
      v8 = v4[1];
    }

    else
    {
      v7 = 0;
      v8 = 0.0;
    }

    v5->_index = v7;
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v8];
    date = v6->_date;
    v6->_date = v9;

    v11 = [NRDeviceCollectionDiff alloc];
    if (v4)
    {
      v12 = *(v4 + 3);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [(NRDeviceCollectionDiff *)v11 initWithProtobuf:v13];
    diff = v6->_diff;
    v6->_diff = v14;
  }

  return v6;
}

- (NRPBDeviceCollectionHistoryEntry)protobuf
{
  v3 = objc_opt_new();
  v4 = v3;
  if (v3)
  {
    index = self->_index;
    *(v3 + 32) |= 2u;
    *(v3 + 16) = index;
    [(NSDate *)self->_date timeIntervalSinceReferenceDate];
    *(v4 + 32) |= 1u;
    *(v4 + 8) = v6;
  }

  else
  {
    [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  }

  v7 = [(NRDeviceCollectionDiff *)self->_diff protobuf];
  [(NRPBDeviceCollectionHistoryEntry *)v4 setDiff:v7];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NRDeviceCollectionHistoryEntry allocWithZone:?]];
  objc_storeStrong(&v4->_historyManager, self->_historyManager);
  v4->_index = self->_index;
  objc_storeStrong(&v4->_date, self->_date);
  objc_storeStrong(&v4->_diff, self->_diff);
  v4->_switchIndex = self->_switchIndex;
  return v4;
}

- (unint64_t)hash
{
  index = self->_index;
  date = self->_date;
  if (index == -1)
  {
    v5 = 529;
  }

  else
  {
    v5 = 23 * index + 529;
  }

  v6 = v5 + [(NSDate *)date hash];
  return self->_switchIndex + 23 * ([(NRDeviceCollectionDiff *)self->_diff hash]+ 23 * v6);
}

- (NRMutableDeviceCollection)state
{
  historyManager = self->_historyManager;
  if (historyManager)
  {
    index = self->_index;
    v4 = objc_autoreleasePoolPush();
    os_unfair_lock_lock(&historyManager->_cacheLock);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:index];
    v6 = [(NRDeviceCollectionHistory *)historyManager _mostRecentStateBefore:v5];
    if (!v6)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:historyManager->_startIndex];
    }

    v7 = [(NSMutableDictionary *)historyManager->_historyStateCache objectForKeyedSubscript:v6];
    if ([v6 longLongValue] != index)
    {
      v8 = [v6 longLongValue] - historyManager->_startIndex;
      if (v7)
      {
        v9 = [(NRMutableDeviceCollection *)v7 copyWithZone:0];

        ++v8;
        v7 = v9;
      }

      else
      {
        v7 = objc_alloc_init(NRMutableDeviceCollection);
      }

      v10 = index - historyManager->_startIndex;
      if (v10 >= 4 && v10 - v8 >= 4)
      {
        v22 = v4;
        do
        {
          v11 = [(NSMutableArray *)historyManager->_history objectAtIndexedSubscript:v8];
          v12 = [v11 diff];
          v13 = [(NRMutableStateBase *)v7 applyDiff:v12];

          ++v8;
        }

        while (historyManager->_startIndex + v8 <= index - 3);
        if (v5)
        {
          historyStateCache = historyManager->_historyStateCache;
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:index - 3];
          [(NSMutableDictionary *)historyStateCache setObject:v7 forKeyedSubscript:v15];

          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:index - 3];
          [(NRDeviceCollectionHistory *)historyManager _updateHistoryCachesWithIndex:v16];

          v17 = [(NRMutableDeviceCollection *)v7 copyWithZone:0];
          v7 = v17;
        }

        v4 = v22;
      }

      do
      {
        v18 = [(NSMutableArray *)historyManager->_history objectAtIndexedSubscript:v8];
        v19 = [v18 diff];
        v20 = [(NRMutableStateBase *)v7 applyDiff:v19];

        ++v8;
      }

      while (historyManager->_startIndex + v8 <= index);
    }

    if (v5)
    {
      [(NSMutableDictionary *)historyManager->_historyStateCache setObject:v7 forKeyedSubscript:v5];
      [(NRDeviceCollectionHistory *)historyManager _updateHistoryCachesWithIndex:v5];
    }

    os_unfair_lock_unlock(&historyManager->_cacheLock);
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  index = self->_index;
  v5 = [NRTextFormattingUtilities dateFormatter:self->_date];
  v6 = [v3 stringWithFormat:@"%06lld: %@ (switch=%u)", index, v5, self->_switchIndex];

  v7 = [(NRDeviceCollectionDiff *)self->_diff description];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"(null)";
  }

  v10 = [NRTextFormattingUtilities prefixLinesWithString:v6 withText:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v4 == self)
  {
    v8 = 1;
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = v4;
    v8 = self->_index == v5->_index && ((date = self->_date, !(date | v5->_date)) || [(NSDate *)date isEqual:?]) && ((diff = self->_diff, !(diff | v5->_diff)) || [(NRDeviceCollectionDiff *)diff isEqual:?]) && self->_switchIndex == v5->_switchIndex;
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (void)setHistoryManager:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

@end