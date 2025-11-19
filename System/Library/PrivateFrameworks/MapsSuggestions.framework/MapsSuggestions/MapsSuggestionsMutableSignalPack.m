@interface MapsSuggestionsMutableSignalPack
- (BOOL)addFromEntry:(id)a3;
- (BOOL)addFromMapItem:(id)a3;
- (BOOL)writeSignalValue:(float)a3 forType:(int64_t)a4;
- (BOOL)writeSignalValue:(float)a3 forType:(int64_t)a4 gathered:(id)a5;
- (BOOL)writeSignalValue:(float)a3 forType:(int64_t)a4 gathered:(id)a5 expires:(id)a6;
- (MapsSuggestionsMutableSignalPack)initWithCapacity:(unint64_t)a3;
- (id)copy;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation MapsSuggestionsMutableSignalPack

- (id)copy
{
  v3 = [MapsSuggestionsSignalPack alloc];

  return [(MapsSuggestionsSignalPack *)v3 initWithSignalPack:self];
}

- (BOOL)addFromEntry:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = MapsSuggestionsCurrentBestLocation();
    [v6 coordinate];
    v7 = [v5 extractFromDestinationEntry:v4 originCoordinate:?];

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

  return v4 != 0;
}

- (BOOL)addFromMapItem:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = MapsSuggestionsCurrentBestLocation();
    [v6 coordinate];
    v7 = [v5 extractFromDestinationMapItem:v4 originCoordinate:?];

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

  return v4 != 0;
}

- (MapsSuggestionsMutableSignalPack)initWithCapacity:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = MapsSuggestionsMutableSignalPack;
  v4 = [(MapsSuggestionsMutableSignalPack *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__hash_table<std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::__unordered_map_hasher<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::hash<MapsSuggestionsSignalType>,std::equal_to<MapsSuggestionsSignalType>,true>,std::__unordered_map_equal<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::equal_to<MapsSuggestionsSignalType>,std::hash<MapsSuggestionsSignalType>,true>,std::allocator<std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>>>::__rehash<true>(&v4->super._innerSignalPack, vcvtps_u32_f32(a3 / v4->super._innerSignalPack.dict_.__table_.__max_load_factor_));
  }

  return v5;
}

- (BOOL)writeSignalValue:(float)a3 forType:(int64_t)a4 gathered:(id)a5 expires:(id)a6
{
  v10 = a6;
  v11 = a5;
  LOBYTE(a4) = MSg::SignalPack::set(&self->super._innerSignalPack.dict_.__table_.__bucket_list_.__ptr_, a4, v11, v10, a3);

  return a4;
}

- (BOOL)writeSignalValue:(float)a3 forType:(int64_t)a4 gathered:(id)a5
{
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v8 sinceDate:MapsSuggestionsShelfLifeForSignalType()];
  *&v10 = a3;
  LOBYTE(a4) = [(MapsSuggestionsMutableSignalPack *)self writeSignalValue:a4 forType:v8 gathered:v9 expires:v10];

  return a4;
}

- (BOOL)writeSignalValue:(float)a3 forType:(int64_t)a4
{
  v7 = MapsSuggestionsNow();
  *&v8 = a3;
  LOBYTE(a4) = [(MapsSuggestionsMutableSignalPack *)self writeSignalValue:a4 forType:v7 gathered:v8];

  return a4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MapsSuggestionsMutableSignalPack allocWithZone:a3];

  return [(MapsSuggestionsSignalPack *)v4 initWithSignalPack:self];
}

@end