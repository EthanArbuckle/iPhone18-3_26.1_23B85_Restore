@interface ULOdometryStore
+ (unsigned)bufferMaxSize;
+ (unsigned)maxEntriesInTable;
- (BOOL)deleteRecordsOlderThan:(double)a3 orNewerThan:(double)a4;
- (BOOL)flushStoreBuffer;
- (BOOL)insertDataObjects:(const void *)a3 atLoiUUID:(const uuid *)a4;
- (BOOL)insertDataObjectsBuffered:(const void *)a3 atLoiUUID:(const uuid *)a4;
- (ULOdometryStore)initWithDbStore:(ULDatabaseStoreInterface *)a3;
- (id).cxx_construct;
- (id)insertDataObjects:atLoiUUID:;
- (optional<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,)getMostRecentOdometryTimeForLoiGroupId:(ULOdometryStore *)self odometrySource:;
- (uint64_t)insertDataObjects:atLoiUUID:;
- (vector<ULOdometryDO,)efficientlyFetchOdometryEntriesWithLOIGroupUUIDs:(ULOdometryStore *)self odometrySource:(SEL)a3 startDate:()vector<boost:(std:(int64_t)a5 :(id)a6 allocator<boost:(id)a7 :(unint64_t)a8 uuids:(BOOL)a9 :(BOOL)a10 uuid>> *)a4 :uuids::uuid endDate:fetchLimit:newest:ascending:;
- (vector<ULOdometryDO,)fetchAllRecordsWithLimit:(ULOdometryStore *)self;
- (void)insertDataObjects:atLoiUUID:;
@end

@implementation ULOdometryStore

- (ULOdometryStore)initWithDbStore:(ULDatabaseStoreInterface *)a3
{
  v6.receiver = self;
  v6.super_class = ULOdometryStore;
  v3 = [(ULStore *)&v6 initWithDbStore:a3];
  if (v3)
  {
    *v3->_currentLoiUUID.data = [MEMORY[0x277CCAD78] nilBoostUUID];
    *&v3->_currentLoiUUID.data[8] = v4;
  }

  return v3;
}

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometryTableMaxRows"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A71AC0 unsignedIntValue];
  }

  v7 = v6;

  return v7;
}

+ (unsigned)bufferMaxSize
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometryBufferMaxSize"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedIntValue];
  }

  else
  {
    v6 = [&unk_286A71AA8 unsignedIntValue];
  }

  v7 = v6;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)a3 atLoiUUID:(const uuid *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v7 = [(ULStore *)self dbStore];
  v8 = (*(v7->var0 + 8))(v7);
  v9 = [(ULStore *)self managedObjectContext];
  v10 = [v8 fetchLoiManagedObjectWithUUID:a4 withManagedObjectContext:v9];

  if (!v10)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryStore insertDataObjects:atLoiUUID:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      operator new();
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryStore insertDataObjects:atLoiUUID:];
    }

    v12 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(v12))
    {
      operator new();
    }
  }

  v13 = v10;
  v18[0] = &unk_286A56908;
  v18[1] = &v17;
  v18[2] = v13;
  v18[3] = v18;
  inserted = ULDBUtils::insertDataObjects<ULOdometryDO,ULOdometryMO>(self, a3, v18);
  std::__function::__value_func<ULOdometryMO * ()(ULOdometryDO const&)>::~__value_func[abi:ne200100](v18);

  v15 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (BOOL)insertDataObjectsBuffered:(const void *)a3 atLoiUUID:(const uuid *)a4
{
  v7 = +[ULDefaultsSingleton shared];
  v8 = [v7 defaultsDictionary];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometryBufferingEnabled"];
  v10 = [v8 objectForKey:v9];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v12 = v11;

  if (v12)
  {
    if (*a4->data != *self->_currentLoiUUID.data || *&a4->data[8] != *&self->_currentLoiUUID.data[8])
    {
      [(ULOdometryStore *)self flushStoreBuffer];
    }

    self->_currentLoiUUID = *a4;
    std::vector<ULOdometryDO>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ULOdometryDO const*>,std::__wrap_iter<ULOdometryDO const*>>(&self->_dataObjectBuffer, self->_dataObjectBuffer.__end_, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 6);
    v14 = self->_dataObjectBuffer.__end_ - self->_dataObjectBuffer.__begin_;
    if (+[ULOdometryStore bufferMaxSize]<= (v14 >> 6))
    {

      return [(ULOdometryStore *)self flushStoreBuffer];
    }

    else
    {
      return 1;
    }
  }

  else
  {

    return [(ULOdometryStore *)self insertDataObjects:a3 atLoiUUID:a4];
  }
}

- (BOOL)flushStoreBuffer
{
  v13 = *MEMORY[0x277D85DE8];
  p_dataObjectBuffer = &self->_dataObjectBuffer;
  if (self->_dataObjectBuffer.__begin_ == self->_dataObjectBuffer.__end_)
  {
    v6 = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULOdometryStore insertDataObjects:atLoiUUID:];
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      v5 = (p_dataObjectBuffer->__end_ - p_dataObjectBuffer->__begin_) >> 6;
      v11 = 134217984;
      v12 = v5;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "ULOdometryStore: flushing %zu buffered odometry entries", &v11, 0xCu);
    }

    v6 = [(ULOdometryStore *)self insertDataObjects:p_dataObjectBuffer atLoiUUID:&self->_currentLoiUUID];
    begin = p_dataObjectBuffer->__begin_;
    for (i = p_dataObjectBuffer->__end_; i != begin; std::__destroy_at[abi:ne200100]<ULOdometryDO,0>(i))
    {
      i -= 64;
    }

    p_dataObjectBuffer->__end_ = begin;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)deleteRecordsOlderThan:(double)a3 orNewerThan:(double)a4
{
  [(ULOdometryStore *)self flushStoreBuffer];
  v8.receiver = self;
  v8.super_class = ULOdometryStore;
  return [(ULStore *)&v8 deleteRecordsOlderThan:a3 orNewerThan:a4];
}

- (vector<ULOdometryDO,)fetchAllRecordsWithLimit:(ULOdometryStore *)self
{
  [(ULOdometryStore *)self flushStoreBuffer];

  ULDBUtils::fetchAllAsDataObjectsWithLimit<ULOdometryDO,ULOdometryMO>(self, a4, retstr);
  return result;
}

- (vector<ULOdometryDO,)efficientlyFetchOdometryEntriesWithLOIGroupUUIDs:(ULOdometryStore *)self odometrySource:(SEL)a3 startDate:()vector<boost:(std:(int64_t)a5 :(id)a6 allocator<boost:(id)a7 :(unint64_t)a8 uuids:(BOOL)a9 :(BOOL)a10 uuid>> *)a4 :uuids::uuid endDate:fetchLimit:newest:ascending:
{
  v10 = a9;
  v53[2] = *MEMORY[0x277D85DE8];
  v48 = a6;
  v47 = a7;
  [(ULOdometryStore *)self flushStoreBuffer];
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  context = objc_autoreleasePoolPush();
  v17 = [MEMORY[0x277CBEB18] array];
  if (a4->var1 != a4->var0)
  {
    v44 = ULDBUtils::NSStringArrayFromBoostUUIDs(a4);
    v45 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K IN %@", @"loi", @"loiGroupId", v44];
    var0 = a4->var0;
    var1 = a4->var1;
    if (var0 == var1)
    {
LABEL_5:
      v21 = v44;
      v20 = v45;
      [v17 addObject:v45];
    }

    else
    {
      while (![MEMORY[0x277CCAD78] isNilBoostUUID:var0])
      {
        if (++var0 == var1)
        {
          goto LABEL_5;
        }
      }

      v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = NIL", @"loi"];
      v23 = MEMORY[0x277CCA920];
      v21 = v44;
      v53[0] = v45;
      v53[1] = v22;
      v43 = v22;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
      v25 = [v23 orPredicateWithSubpredicates:v24];
      [v17 addObject:v25];

      v20 = v45;
    }
  }

  if (v48)
  {
    v26 = MEMORY[0x277CCAC30];
    v27 = MEMORY[0x277CCABB0];
    [v48 timeIntervalSinceReferenceDate];
    v28 = [v27 numberWithDouble:?];
    v29 = [v26 predicateWithFormat:@"%K >= %@", @"timestamp", v28];
    [v17 addObject:v29];
  }

  if (v47)
  {
    v30 = MEMORY[0x277CCAC30];
    v31 = MEMORY[0x277CCABB0];
    [v47 timeIntervalSinceReferenceDate];
    v32 = [v31 numberWithDouble:?];
    v33 = [v30 predicateWithFormat:@"%K <= %@", @"timestamp", v32];
    [v17 addObject:v33];
  }

  v34 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %u", @"odometrySourceType", a5];
  [v17 addObject:v34];

  if (a8)
  {
    v35 = !v10;
  }

  else
  {
    v35 = a10;
  }

  v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:v35];
  v52 = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  ULDBUtils::efficientlyFetchDataObjects<ULOdometryDO,ULOdometryMO>(self, v17, v37, a8, 500, &v49);
  std::vector<ULOdometryDO>::__vdeallocate(&retstr->__begin_);
  *&retstr->__begin_ = v49;
  retstr->__cap_ = v50;
  v50 = 0;
  v49 = 0uLL;
  v51 = &v49;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v51);

  objc_autoreleasePoolPop(context);
  if (v35 != a10)
  {
    p_var1 = &retstr->__begin_->var0.var0.var1;
    end = retstr->__end_;
    if (retstr->__begin_ != end)
    {
      for (i = &end[-3].var0.var0.var1.var1; p_var1 < i; i -= 64)
      {
        std::ranges::__swap::__fn::operator()[abi:ne200100]<ULOdometryDO>(&std::ranges::__cpo::swap, p_var1, i);
        p_var1 += 8;
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

- (optional<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,)getMostRecentOdometryTimeForLoiGroupId:(ULOdometryStore *)self odometrySource:
{
  v3 = v2;
  v4 = v1;
  v19[1] = *MEMORY[0x277D85DE8];
  [(ULOdometryStore *)self flushStoreBuffer];
  v16 = *v4;
  v17 = [MEMORY[0x277CCAD78] nilBoostUUID];
  v18 = v6;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&__p, &v16, v19, 2uLL);
  LOBYTE(v11) = 0;
  [(ULOdometryStore *)self efficientlyFetchOdometryEntriesWithLOIGroupUUIDs:&__p odometrySource:v3 startDate:0 endDate:0 fetchLimit:1 newest:1 ascending:v11];
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15[1] == v15[0])
  {
    LOBYTE(v7) = 0;
    v8 = 0;
  }

  else
  {
    v7 = *(v15[0] + 40) & 0xFFFFFFFFFFFFFF00;
    v8 = *(v15[0] + 40);
  }

  *&v16 = v15;
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&v16);
  v9 = *MEMORY[0x277D85DE8];
  return (v8 | v7);
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)insertDataObjects:atLoiUUID:
{

  operator delete(a1);
}

- (id)insertDataObjects:atLoiUUID:
{
  v3 = *(a1 + 16);
  v4 = [**(a1 + 8) managedObjectContext];
  v5 = [ULOdometryMO createFromDO:a2 loiMO:v3 inManagedObjectContext:v4];

  return v5;
}

- (uint64_t)insertDataObjects:atLoiUUID:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end