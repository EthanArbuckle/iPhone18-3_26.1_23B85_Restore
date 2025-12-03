@interface TSUUUIDSubsetCreator
- (TSUUUIDSubsetCreator)initWithUuidSetStore:(id)store baseUuidVector:(const void *)vector;
- (id).cxx_construct;
- (unsigned)uuidSetStoreIndexForIndexesInRange:(_NSRange)range;
@end

@implementation TSUUUIDSubsetCreator

- (TSUUUIDSubsetCreator)initWithUuidSetStore:(id)store baseUuidVector:(const void *)vector
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = TSUUUIDSubsetCreator;
  v8 = [(TSUUUIDSubsetCreator *)&v14 init];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uuidSetStore, store);
    if (&v9->_baseUuidVector != vector)
    {
      std::vector<TSU::UUIDData<TSP::UUIDData>>::__assign_with_size[abi:ne200100]<TSU::UUIDData<TSP::UUIDData>*,TSU::UUIDData<TSP::UUIDData>*>(&v9->_baseUuidVector.__begin_, *vector, *(vector + 1), (*(vector + 1) - *vector) >> 4);
    }

    v11 = objc_opt_new();
    createdSubsetsByRange = v10->_createdSubsetsByRange;
    v10->_createdSubsetsByRange = v11;
  }

  return v10;
}

- (unsigned)uuidSetStoreIndexForIndexesInRange:(_NSRange)range
{
  length = range.length;
  if (range.length)
  {
    location = range.location;
    v6 = NSStringFromRange(range);
    v7 = [(NSMutableDictionary *)self->_createdSubsetsByRange objectForKey:v6];
    v8 = v7;
    if (v7)
    {
      LODWORD(length) = [v7 unsignedIntegerValue];
    }

    else
    {
      v9 = length + location - 1;
      if (v9 >= (self->_baseUuidVector.__end_ - self->_baseUuidVector.__begin_) >> 4)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUUUIDSubsetCreator uuidSetStoreIndexForIndexesInRange:]"];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUUUIDSetStore.mm"];
        [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:322 isFatal:0 description:"Range %@ too large for uuid vector", v6];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      v12 = objc_opt_new();
      if (location <= v9)
      {
        v13 = 16 * location;
        do
        {
          begin = self->_baseUuidVector.__begin_;
          if (location >= (self->_baseUuidVector.__end_ - begin) >> 4)
          {
            std::vector<TSU::UUIDData<TSP::UUIDData>>::__throw_out_of_range[abi:ne200100]();
          }

          v16 = *&begin[v13];
          [v12 addUUID:&v16];
          ++location;
          v13 += 16;
          --length;
        }

        while (length);
      }

      LODWORD(length) = [(TSUUUIDSetStore *)self->_uuidSetStore addSet:v12];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:length];
      if (v8)
      {
        [(NSMutableDictionary *)self->_createdSubsetsByRange setObject:v8 forKey:v6];
      }
    }
  }

  return length;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end