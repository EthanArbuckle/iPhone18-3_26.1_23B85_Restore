@interface HDQuantitySampleSeriesDataEnumerator
- (BOOL)_fillValueBufferWithError:(uint64_t)error;
- (BOOL)done;
- (BOOL)enumerateDataToTime:(double)time error:(id *)error handler:(id)handler;
- (BOOL)primeEnumeratorWithError:(id *)error;
- (HDQuantitySampleSeriesDataEnumerator)initWithTransaction:(id)transaction persistentID:(int64_t)d dataTypeCode:(int64_t)code UUIDBytes:(unsigned __int8)bytes[16] startTime:(double)time endTime:(double)endTime count:(int64_t)count sourceID:(int64_t)self0 HFDKey:(int64_t)self1 bufferSize:(unint64_t)self2;
- (HDQuantitySampleSeriesDataEnumerator)initWithTransaction:(id)transaction persistentID:(int64_t)d startTime:(double)time endTime:(double)endTime HFDKey:(int64_t)key;
- (double)nextDatumTime;
- (id).cxx_construct;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)_unitTesting_addToBufferTimestamp:(double)timestamp value:(double)value duration:(float)duration isLastDatum:(BOOL)datum;
@end

@implementation HDQuantitySampleSeriesDataEnumerator

- (HDQuantitySampleSeriesDataEnumerator)initWithTransaction:(id)transaction persistentID:(int64_t)d dataTypeCode:(int64_t)code UUIDBytes:(unsigned __int8)bytes[16] startTime:(double)time endTime:(double)endTime count:(int64_t)count sourceID:(int64_t)self0 HFDKey:(int64_t)self1 bufferSize:(unint64_t)self2
{
  transactionCopy = transaction;
  v21 = [(HDQuantitySampleSeriesDataEnumerator *)self initWithTransaction:transactionCopy persistentID:d startTime:key endTime:time HFDKey:endTime];
  v22 = v21;
  if (v21)
  {
    v21->_dataTypeCode = code;
    uuid_copy(v21->_UUIDBytes, bytes);
    v22->_count = count;
    v22->_sourceID = iD;
    v22->_bufferSize = size;
  }

  return v22;
}

- (HDQuantitySampleSeriesDataEnumerator)initWithTransaction:(id)transaction persistentID:(int64_t)d startTime:(double)time endTime:(double)endTime HFDKey:(int64_t)key
{
  transactionCopy = transaction;
  v31.receiver = self;
  v31.super_class = HDQuantitySampleSeriesDataEnumerator;
  v14 = [(HDQuantitySampleSeriesDataEnumerator *)&v31 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_transaction, transaction);
    v15->_persistentID = d;
    v15->_startTime = time;
    v15->_endTime = endTime;
    v15->_HFDKey = key;
    v15->_index = 0;
    v15->_previousEndTime = time;
    *&v15->_hasFetchedData = 0;
    v15->_hasDuration = 0;
    begin = v15->_data.__map_.__begin_;
    end = v15->_data.__map_.__end_;
    v18 = end - begin;
    if (end != begin)
    {
      start = v15->_data.__start_;
      size = v15->_data.__size_;
      v21 = begin[start / 0xAA] + 24 * (start % 0xAA);
      v22 = (size + start) / 0xAA;
      v23 = begin[v22];
      v24 = (size + start) % 0xAA;
      if (&v23[24 * v24] != v21)
      {
        v25 = v24 - start % 0xAA + 170 * ((8 * v22 - 8 * (start / 0xAA)) >> 3);
        if (v25 >= 1)
        {
          v26 = size - v25;
          v15->_data.__size_ = v26;
          if (start - 170 * (v18 >> 3) + v26 <= 0xFFFFFFFFFFFFFEABLL)
          {
            do
            {
              operator delete(*(end - 8));
              end = (v15->_data.__map_.__end_ - 1);
              v27 = end == v15->_data.__map_.__begin_;
              v28 = 170 * ((end - v15->_data.__map_.__begin_) >> 3) - 1;
              v15->_data.__map_.__end_ = end;
              if (v27)
              {
                v28 = 0;
              }
            }

            while (v28 - (v15->_data.__size_ + v15->_data.__start_) > 0x153);
          }
        }
      }
    }

    fatalError = v15->_fatalError;
    v15->_fatalError = 0;
  }

  return v15;
}

- (double)nextDatumTime
{
  if (!self->_hasFetchedData)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesDataEnumerator.mm" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"_hasFetchedData"}];
  }

  if ([(HDQuantitySampleSeriesDataEnumerator *)self done]|| self->_fatalError)
  {
    return INFINITY;
  }

  if (self->_hasDuration)
  {
    p_previousEndTime = (self->_data.__map_.__begin_[self->_data.__start_ / 0xAA] + 24 * (self->_data.__start_ % 0xAA));
  }

  else
  {
    p_previousEndTime = &self->_previousEndTime;
  }

  return *p_previousEndTime;
}

- (BOOL)primeEnumeratorWithError:(id *)error
{
  if (self->_hasFetchedData)
  {
    return 1;
  }

  if (self->_fatalError)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"This enumerator has experienced a fatal error" underlyingError:?];
    return 0;
  }

  else
  {
    v13 = 0;
    v3 = [(HDQuantitySampleSeriesDataEnumerator *)self _fillValueBufferWithError:?];
    v6 = v13;
    v7 = v6;
    if (v3)
    {
      if (self->_data.__size_)
      {
        self->_hasDuration = *(self->_data.__map_.__begin_[self->_data.__start_ / 0xAA] + 6 * (self->_data.__start_ % 0xAA) + 4) != -1.0;
      }
    }

    else
    {
      if (!v6)
      {
        v7 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Enumerator experienced fatal error while filling value buffer"];
      }

      v8 = [v7 copy];
      fatalError = self->_fatalError;
      self->_fatalError = v8;

      v10 = v7;
      v7 = v10;
      if (v10)
      {
        if (error)
        {
          v11 = v10;
          *error = v7;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  return v3;
}

- (BOOL)_fillValueBufferWithError:(uint64_t)error
{
  if (!error)
  {
    return 0;
  }

  if ((*(error + 74) & 1) == 0)
  {
    protectedDatabase = [*(error + 8) protectedDatabase];
    v5 = [HDQuantitySampleSeriesEntity _hasSeriesDataWithDatabase:protectedDatabase hfdKey:*(error + 168) error:a2];

    if (v5)
    {
      v6 = *(error + 168);
      if (*(error + 75))
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      *(error + 192) = v7;
      *(error + 200) = v6;
      *(error + 74) = 1;
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__HDQuantitySampleSeriesDataEnumerator__fillValueBufferFromSQLiteWithError___block_invoke;
  v13[3] = &unk_278624818;
  v13[4] = error;
  v13[5] = &v14;
  v8 = _Block_copy(v13);
  v9 = *(error + 168);
  if (*(error + 72) == 1)
  {
    v10 = [HDQuantitySeriesDataEntity enumerateSeries:v9 after:0 inclusive:*(error + 8) transaction:a2 error:v8 handler:*(error + 176)];
  }

  else
  {
    v10 = [HDQuantitySeriesDataEntity enumerateSeries:v9 transaction:*(error + 8) error:a2 handler:v8];
  }

  v11 = v10;
  if (v10 && (v15[3] & 1) == 0)
  {
    *(error + 73) = 1;
  }

  _Block_object_dispose(&v14, 8);
  *(error + 72) = 1;
  return v11;
}

- (BOOL)enumerateDataToTime:(double)time error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  if (!self->_hasFetchedData)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesDataEnumerator.mm" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"_hasFetchedData"}];
  }

  if (self->_fatalError)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"This enumerator has experienced a fatal error" underlyingError:?];
    goto LABEL_7;
  }

  if ([(HDQuantitySampleSeriesDataEnumerator *)self done])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"This enumerator is already done"];
    goto LABEL_7;
  }

  [(HDQuantitySampleSeriesDataEnumerator *)self nextDatumTime];
  if (v12 > time)
  {
LABEL_10:
    v10 = 1;
    goto LABEL_8;
  }

  hasFetchedAllData = self->_hasFetchedAllData;
  while (1)
  {
    if (hasFetchedAllData)
    {
      begin = self->_data.__map_.__begin_;
      v10 = 1;
      if (self->_data.__map_.__end_ == begin)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    size = self->_data.__size_;
    while (size > 1)
    {
      begin = self->_data.__map_.__begin_;
      if (self->_data.__map_.__end_ != begin)
      {
        v16 = 0;
        goto LABEL_23;
      }
    }

    v38 = 0;
    v17 = [(HDQuantitySampleSeriesDataEnumerator *)self _fillValueBufferWithError:?];
    v18 = v38;
    v19 = v18;
    if (!v17)
    {
      break;
    }

    hasFetchedAllData = self->_hasFetchedAllData;
    begin = self->_data.__map_.__begin_;
    if (self->_data.__map_.__end_ == begin)
    {
      v10 = 1;
      if (self->_hasFetchedAllData)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = self->_hasFetchedAllData;
LABEL_22:
      size = self->_data.__size_;
      v16 = v10;
LABEL_23:
      start = self->_data.__start_;
      v21 = &begin[start / 0xAA];
      v22 = *v21 + 24 * (start % 0xAA);
      v23 = begin[(size + start) / 0xAA] + 24 * ((size + start) % 0xAA);
      hasFetchedAllData = v16;
      while (v22 != v23)
      {
        v24 = *v22;
        if (self->_hasDuration)
        {
          v25 = v24 + *(v22 + 16);
          previousEndTime = *v22;
        }

        else
        {
          previousEndTime = self->_previousEndTime;
          v25 = *v22;
        }

        v27 = *(v22 + 8);
        v28 = vaddq_s64(*&self->_data.__start_, xmmword_229166A20);
        *&self->_data.__start_ = v28;
        if (v28.i64[0] >= 0x154uLL)
        {
          operator delete(*self->_data.__map_.__begin_);
          ++self->_data.__map_.__begin_;
          self->_data.__start_ -= 170;
        }

        v29 = handlerCopy[2](handlerCopy, self->_index, previousEndTime, v25, v27);
        ++self->_index;
        self->_previousEndTime = v24;
        if ((v29 & 1) == 0)
        {
          goto LABEL_10;
        }

        [(HDQuantitySampleSeriesDataEnumerator *)self nextDatumTime];
        if (v30 > time)
        {
          goto LABEL_10;
        }

        hasFetchedAllData = self->_hasFetchedAllData;
        if (!hasFetchedAllData && self->_data.__size_ < 2)
        {
          break;
        }

        v22 += 24;
        if (v22 - *v21 == 4080)
        {
          v31 = v21[1];
          ++v21;
          v22 = v31;
        }
      }

      v10 = 1;
      if (v16)
      {
        goto LABEL_8;
      }
    }
  }

  if (!v18)
  {
    v19 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Enumerator experienced fatal error while filling value buffer"];
  }

  v32 = [v19 copy];
  fatalError = self->_fatalError;
  self->_fatalError = v32;

  v34 = v19;
  v35 = v34;
  if (v34)
  {
    if (error)
    {
      v36 = v34;
      *error = v35;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_7:
  v10 = 0;
LABEL_8:

  return v10;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (!self->_hasFetchedData)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesDataEnumerator.mm" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"_hasFetchedData"}];
  }

  [(HDQuantitySampleSeriesDataEnumerator *)self nextDatumTime];
  v7 = v6;
  [compareCopy nextDatumTime];
  if (v7 >= v8)
  {
    if (v7 <= v8)
    {
      v9 = HKCompareUUIDBytes();
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (BOOL)done
{
  if (!self->_hasFetchedData)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDQuantitySampleSeriesDataEnumerator.mm" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"_hasFetchedData"}];
  }

  return self->_hasFetchedAllData && self->_data.__size_ == 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v19.receiver = self;
  v19.super_class = HDQuantitySampleSeriesDataEnumerator;
  v4 = [(HDQuantitySampleSeriesDataEnumerator *)&v19 description];
  transaction = self->_transaction;
  persistentID = self->_persistentID;
  dataTypeCode = self->_dataTypeCode;
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:self->_UUIDBytes];
  sourceID = self->_sourceID;
  HFDKey = self->_HFDKey;
  startTime = self->_startTime;
  endTime = self->_endTime;
  [(HDQuantitySampleSeriesDataEnumerator *)self nextDatumTime];
  v14 = v13;
  done = [(HDQuantitySampleSeriesDataEnumerator *)self done];
  v16 = @"NO";
  if (done)
  {
    v16 = @"YES";
  }

  v17 = [v3 stringWithFormat:@"<%@ transaction:%@ persistentID:%lld dataTypeCode:%ld UUID:%@ sourceID:%lld HFDKey:%lld startTime:%f endTime:%f nextDatumTime:%f done:%@>", v4, transaction, persistentID, dataTypeCode, v8, sourceID, HFDKey, *&startTime, *&endTime, v14, v16];

  return v17;
}

uint64_t __76__HDQuantitySampleSeriesDataEnumerator__fillValueBufferFromSQLiteWithError___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  v6 = *(a1 + 32);
  v10 = a3;
  v11 = a2;
  v7 = a4;
  v9 = v7;
  if (v6)
  {
    std::deque<std::tuple<double,double,float>>::emplace_back<double &,double &,float &>((v6 + 24), &v11, &v10, &v9);
    if (*(v6 + 64) < *(v6 + 16))
    {
      return 1;
    }

    *(v6 + 176) = a2;
  }

  result = 0;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (void)_unitTesting_addToBufferTimestamp:(double)timestamp value:(double)value duration:(float)duration isLastDatum:(BOOL)datum
{
  timestampCopy = timestamp;
  valueCopy = value;
  durationCopy = duration;
  self->_hasFetchedData = 1;
  if (datum)
  {
    self->_hasFetchedAllData = 1;
  }

  self->_lastFetchedDatumTime = timestamp;
  std::deque<std::tuple<double,double,float>>::emplace_back<double &,double &,float &>(&self->_data.__map_.__first_, &timestampCopy, &valueCopy, &durationCopy);
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 24) = 0;
  *(self + 25) = 0;
  return self;
}

@end