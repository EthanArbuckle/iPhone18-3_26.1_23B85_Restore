@interface CCDifferentialUpdateCache
- (BOOL)addUnmodifiedSourceItemIdHash:(id)a3;
- (BOOL)hasUnmodifiedSourceItemIdHash:(id)a3;
- (CCDifferentialUpdateCache)initWithCapacity:(unint64_t)a3;
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

- (CCDifferentialUpdateCache)initWithCapacity:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CCDifferentialUpdateCache;
  v4 = [(CCDifferentialUpdateCache *)&v7 init];
  v5 = v4;
  if (a3 && v4)
  {
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<true>(&v4->_unmodified_set, vcvtps_u32_f32(a3 / v4->_unmodified_set.__table_.__max_load_factor_));
  }

  return v5;
}

- (BOOL)addUnmodifiedSourceItemIdHash:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9 = [v4 longLongValue];
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(&self->_unmodified_set.__table_.__bucket_list_.__ptr_, &v9);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)hasUnmodifiedSourceItemIdHash:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = [v4 longLongValue];
    v6 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(&self->_unmodified_set.__table_.__bucket_list_.__ptr_, &v8) != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end