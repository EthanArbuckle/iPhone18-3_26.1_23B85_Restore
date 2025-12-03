@interface MapsSuggestionsMutableSignalPack
- (BOOL)addFromEntry:(id)entry;
- (BOOL)addFromMapItem:(id)item;
- (BOOL)writeSignalValue:(float)value forType:(int64_t)type;
- (BOOL)writeSignalValue:(float)value forType:(int64_t)type gathered:(id)gathered;
- (BOOL)writeSignalValue:(float)value forType:(int64_t)type gathered:(id)gathered expires:(id)expires;
- (MapsSuggestionsMutableSignalPack)initWithCapacity:(unint64_t)capacity;
- (id)copy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation MapsSuggestionsMutableSignalPack

- (id)copy
{
  v3 = [MapsSuggestionsSignalPack alloc];

  return [(MapsSuggestionsSignalPack *)v3 initWithSignalPack:self];
}

- (BOOL)addFromEntry:(id)entry
{
  v18 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if (entryCopy)
  {
    v5 = objc_opt_class();
    v6 = MapsSuggestionsCurrentBestLocation();
    [v6 coordinate];
    v7 = [v5 extractFromDestinationEntry:entryCopy originCoordinate:?];

    [v7 mergeIntoSignalPack:self];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
      v12 = 1024;
      v13 = 200;
      v14 = 2082;
      v15 = "[MapsSuggestionsMutableSignalPack(MapsSuggestionsEntry) addFromEntry:]";
      v16 = 2082;
      v17 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", &v10, 0x26u);
    }
  }

  return entryCopy != 0;
}

- (BOOL)addFromMapItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (itemCopy)
  {
    v5 = objc_opt_class();
    v6 = MapsSuggestionsCurrentBestLocation();
    [v6 coordinate];
    v7 = [v5 extractFromDestinationMapItem:itemCopy originCoordinate:?];

    [v7 mergeIntoSignalPack:self];
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
      v12 = 1024;
      v13 = 209;
      v14 = 2082;
      v15 = "[MapsSuggestionsMutableSignalPack(MapsSuggestionsEntry) addFromMapItem:]";
      v16 = 2082;
      v17 = "nil == (mapItem)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a map item", &v10, 0x26u);
    }
  }

  return itemCopy != 0;
}

- (MapsSuggestionsMutableSignalPack)initWithCapacity:(unint64_t)capacity
{
  v7.receiver = self;
  v7.super_class = MapsSuggestionsMutableSignalPack;
  v4 = [(MapsSuggestionsMutableSignalPack *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__hash_table<std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::__unordered_map_hasher<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::hash<MapsSuggestionsSignalType>,std::equal_to<MapsSuggestionsSignalType>,true>,std::__unordered_map_equal<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::equal_to<MapsSuggestionsSignalType>,std::hash<MapsSuggestionsSignalType>,true>,std::allocator<std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>>>::__rehash<true>(&v4->super._innerSignalPack, vcvtps_u32_f32(capacity / v4->super._innerSignalPack.dict_.__table_.__max_load_factor_));
  }

  return v5;
}

- (BOOL)writeSignalValue:(float)value forType:(int64_t)type gathered:(id)gathered expires:(id)expires
{
  expiresCopy = expires;
  gatheredCopy = gathered;
  LOBYTE(type) = MSg::SignalPack::set(&self->super._innerSignalPack.dict_.__table_.__bucket_list_.__ptr_, type, gatheredCopy, expiresCopy, value);

  return type;
}

- (BOOL)writeSignalValue:(float)value forType:(int64_t)type gathered:(id)gathered
{
  gatheredCopy = gathered;
  v9 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:gatheredCopy sinceDate:MapsSuggestionsShelfLifeForSignalType()];
  *&v10 = value;
  LOBYTE(type) = [(MapsSuggestionsMutableSignalPack *)self writeSignalValue:type forType:gatheredCopy gathered:v9 expires:v10];

  return type;
}

- (BOOL)writeSignalValue:(float)value forType:(int64_t)type
{
  v7 = MapsSuggestionsNow();
  *&v8 = value;
  LOBYTE(type) = [(MapsSuggestionsMutableSignalPack *)self writeSignalValue:type forType:v7 gathered:v8];

  return type;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MapsSuggestionsMutableSignalPack allocWithZone:zone];

  return [(MapsSuggestionsSignalPack *)v4 initWithSignalPack:self];
}

@end