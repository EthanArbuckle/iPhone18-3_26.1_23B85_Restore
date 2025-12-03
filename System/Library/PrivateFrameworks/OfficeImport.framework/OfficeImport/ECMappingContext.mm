@interface ECMappingContext
+ (id)mappingContext;
- (ECMappingContext)init;
- (id).cxx_construct;
- (id)mappingInfoAtIndex:(unint64_t)index;
- (id)mappingInfoForObject:(id)object;
- (unint64_t)mappedSheetIndexForSheetIndex:(unint64_t)index;
- (unint64_t)mappedSheetIndexForSheetName:(id)name;
- (void)associateMappingInfo:(id)info withSheetName:(id)name andSheetIndex:(unint64_t)index andObject:(id)object;
- (void)dealloc;
@end

@implementation ECMappingContext

- (ECMappingContext)init
{
  v8.receiver = self;
  v8.super_class = ECMappingContext;
  v2 = [(ECMappingContext *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mSheetNameToMappedIndex = v2->mSheetNameToMappedIndex;
    v2->mSheetNameToMappedIndex = v3;

    v2->mObjectToMappingInfo = CFDictionaryCreateMutable(0, 64, 0, MEMORY[0x277CBF150]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mMappingInfos = v2->mMappingInfos;
    v2->mMappingInfos = v5;
  }

  return v2;
}

+ (id)mappingContext
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)dealloc
{
  mObjectToMappingInfo = self->mObjectToMappingInfo;
  if (mObjectToMappingInfo)
  {
    CFRelease(mObjectToMappingInfo);
  }

  v4.receiver = self;
  v4.super_class = ECMappingContext;
  [(ECMappingContext *)&v4 dealloc];
}

- (unint64_t)mappedSheetIndexForSheetIndex:(unint64_t)index
{
  left = self->mIndexToMappedIndex.__tree_.__end_node_.__left_;
  p_end_node = &self->mIndexToMappedIndex.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    return -1;
  }

  v6 = p_end_node;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= index;
    v9 = v7 < index;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + v9);
  }

  while (v4);
  if (v6 != p_end_node && v6[4].__left_ <= index)
  {
    return v6[5].__left_;
  }

  else
  {
    return -1;
  }
}

- (unint64_t)mappedSheetIndexForSheetName:(id)name
{
  v3 = [(NSMutableDictionary *)self->mSheetNameToMappedIndex objectForKey:name];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  return unsignedIntegerValue;
}

- (id)mappingInfoForObject:(id)object
{
  v3 = CFDictionaryGetValue(self->mObjectToMappingInfo, object);

  return v3;
}

- (id)mappingInfoAtIndex:(unint64_t)index
{
  if ([(ECMappingContext *)self mappingInfoCount]>= index)
  {
    v5 = [(NSMutableArray *)self->mMappingInfos objectAtIndex:index];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

- (void)associateMappingInfo:(id)info withSheetName:(id)name andSheetIndex:(unint64_t)index andObject:(id)object
{
  infoCopy = info;
  nameCopy = name;
  v16[0] = index;
  objectCopy = object;
  v13 = [(NSMutableArray *)self->mMappingInfos count];
  [(NSMutableArray *)self->mMappingInfos addObject:infoCopy];
  if (index != -1)
  {
    v16[2] = v16;
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&self->mIndexToMappedIndex, v16)[5] = v13;
  }

  if (nameCopy && [nameCopy length])
  {
    mSheetNameToMappedIndex = self->mSheetNameToMappedIndex;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    [(NSMutableDictionary *)mSheetNameToMappedIndex setValue:v15 forKey:nameCopy];
  }

  if (objectCopy)
  {
    CFDictionarySetValue(self->mObjectToMappingInfo, objectCopy, infoCopy);
  }
}

@end