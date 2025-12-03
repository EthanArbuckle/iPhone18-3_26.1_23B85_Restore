@interface CCDifferentialUpdateCache
- (BOOL)addUnmodifiedSourceItemIdHash:(id)hash;
- (BOOL)hasUnmodifiedSourceItemIdHash:(id)hash;
- (CCDifferentialUpdateCache)initWithCapacity:(unint64_t)capacity;
- (id).cxx_construct;
@end

@implementation CCDifferentialUpdateCache

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

- (CCDifferentialUpdateCache)initWithCapacity:(unint64_t)capacity
{
  v7.receiver = self;
  v7.super_class = CCDifferentialUpdateCache;
  v4 = [(CCDifferentialUpdateCache *)&v7 init];
  v5 = v4;
  if (capacity && v4)
  {
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(&v4->_unmodified_set, vcvtps_u32_f32(capacity / v4->_unmodified_set.__table_.__max_load_factor_));
  }

  return v5;
}

- (BOOL)addUnmodifiedSourceItemIdHash:(id)hash
{
  hashCopy = hash;
  v5 = hashCopy;
  if (hashCopy)
  {
    longLongValue = [hashCopy longLongValue];
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&self->_unmodified_set.__table_.__bucket_list_.__ptr_, &longLongValue);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)hasUnmodifiedSourceItemIdHash:(id)hash
{
  hashCopy = hash;
  v5 = hashCopy;
  if (hashCopy)
  {
    longLongValue = [hashCopy longLongValue];
    v6 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(&self->_unmodified_set.__table_.__bucket_list_.__ptr_, &longLongValue) != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end