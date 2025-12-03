@interface MapsSuggestionsSignalPack
+ (id)extractFromDestinationEntry:(id)entry originCoordinate:(CLLocationCoordinate2D)coordinate;
+ (id)extractFromDestinationMapItem:(id)item originCoordinate:(CLLocationCoordinate2D)coordinate;
+ (id)signalPackFromData:(id)data;
- (BOOL)mergeIntoSignalPack:(id)pack;
- (MapsSuggestionsSignalPack)initWithCoder:(id)coder;
- (MapsSuggestionsSignalPack)initWithSignalPack:(id)pack;
- (id).cxx_construct;
- (id)copy;
- (id)encodedFeatureDictionary;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)rawSignalDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MapsSuggestionsSignalPack

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

- (id)copy
{
  v3.receiver = self;
  v3.super_class = MapsSuggestionsSignalPack;
  return [(MapsSuggestionsSignalPack *)&v3 copy];
}

- (id)mutableCopy
{
  v3.receiver = self;
  v3.super_class = MapsSuggestionsSignalPack;
  return [(MapsSuggestionsSignalPack *)&v3 mutableCopy];
}

+ (id)extractFromDestinationEntry:(id)entry originCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v57 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v8 = entryCopy;
  if (entryCopy)
  {
    geoMapItem = [entryCopy geoMapItem];

    if (!geoMapItem || ([v8 geoMapItem], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "extractFromDestinationMapItem:originCoordinate:", v10, latitude, longitude), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
    {
      v11 = objc_alloc_init(MapsSuggestionsMutableSignalPack);
    }

    *&v12 = [v8 type];
    [(MapsSuggestionsMutableSignalPack *)v11 writeSignalValue:1 forType:v12];
    v13 = v8;
    if ([v13 containsKey:@"MapsSuggestionsScheduledTimeKey"])
    {
      v14 = [v13 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
      v15 = MapsSuggestionsNow();
      [v14 timeIntervalSinceDate:v15];
      v17 = v16;

      v18 = v17;
    }

    else
    {
      v18 = NAN;
    }

    v21 = v11;
    v23 = v21;
    if (v21)
    {
      *&v22 = v18;
      [(MapsSuggestionsMutableSignalPack *)v21 writeSignalValue:2 forType:v22];
    }

    else
    {
      v24 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v49 = 136446978;
        v50 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
        v51 = 1024;
        v52 = 27;
        v53 = 2082;
        v54 = "BOOL _addIfValid(MapsSuggestionsMutableSignalPack *__strong, MapsSuggestionsSignalType, MapsSuggestionsSignalValue)";
        v55 = 2082;
        v56 = "nil == (pack)";
        _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal pack", &v49, 0x26u);
      }
    }

    v25 = v13;
    if ([v25 containsKey:@"MapsSuggestionsScheduledTimeKey"])
    {
      v26 = [v25 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
      v27 = MapsSuggestionsTimeSinceMidnightOfDate(v26);
    }

    else
    {
      v27 = NAN;
    }

    v28 = v23;
    v30 = v28;
    if (v23)
    {
      *&v29 = v27;
      [(MapsSuggestionsMutableSignalPack *)v28 writeSignalValue:4 forType:v29];
    }

    else
    {
      v31 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v49 = 136446978;
        v50 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
        v51 = 1024;
        v52 = 27;
        v53 = 2082;
        v54 = "BOOL _addIfValid(MapsSuggestionsMutableSignalPack *__strong, MapsSuggestionsSignalType, MapsSuggestionsSignalValue)";
        v55 = 2082;
        v56 = "nil == (pack)";
        _os_log_impl(&dword_1C5126000, v31, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal pack", &v49, 0x26u);
      }
    }

    v32 = v25;
    if ([v32 containsKey:@"MapsSuggestionsScheduledEndTimeKey"])
    {
      v33 = [v32 dateForKey:@"MapsSuggestionsScheduledEndTimeKey"];
      v34 = MapsSuggestionsNow();
      [v33 timeIntervalSinceDate:v34];
      v36 = v35;

      v37 = v36;
    }

    else
    {
      v37 = NAN;
    }

    v38 = v30;
    v40 = v38;
    if (v23)
    {
      *&v39 = v37;
      [(MapsSuggestionsMutableSignalPack *)v38 writeSignalValue:3 forType:v39];
    }

    else
    {
      v41 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v49 = 136446978;
        v50 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
        v51 = 1024;
        v52 = 27;
        v53 = 2082;
        v54 = "BOOL _addIfValid(MapsSuggestionsMutableSignalPack *__strong, MapsSuggestionsSignalType, MapsSuggestionsSignalValue)";
        v55 = 2082;
        v56 = "nil == (pack)";
        _os_log_impl(&dword_1C5126000, v41, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal pack", &v49, 0x26u);
      }
    }

    v42 = v32;
    if ([v42 containsKey:@"MapsSuggestionsScheduledEndTimeKey"])
    {
      v43 = [v42 dateForKey:@"MapsSuggestionsScheduledEndTimeKey"];
      v44 = MapsSuggestionsTimeSinceMidnightOfDate(v43);
    }

    else
    {
      v44 = NAN;
    }

    v45 = v40;
    v19 = v45;
    if (v23)
    {
      *&v46 = v44;
      [v45 writeSignalValue:5 forType:v46];
    }

    else
    {
      v47 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v49 = 136446978;
        v50 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
        v51 = 1024;
        v52 = 27;
        v53 = 2082;
        v54 = "BOOL _addIfValid(MapsSuggestionsMutableSignalPack *__strong, MapsSuggestionsSignalType, MapsSuggestionsSignalValue)";
        v55 = 2082;
        v56 = "nil == (pack)";
        _os_log_impl(&dword_1C5126000, v47, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal pack", &v49, 0x26u);
      }
    }

    v20 = v19;
  }

  else
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v49 = 136446978;
      v50 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
      v51 = 1024;
      v52 = 128;
      v53 = 2082;
      v54 = "+[MapsSuggestionsSignalPack(MapsSuggestionsEntry) extractFromDestinationEntry:originCoordinate:]";
      v55 = 2082;
      v56 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", &v49, 0x26u);
    }

    v20 = 0;
  }

  return v20;
}

+ (id)extractFromDestinationMapItem:(id)item originCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v56 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (itemCopy)
  {
    v7 = objc_alloc_init(MapsSuggestionsMutableSignalPack);
    v8 = itemCopy;
    v9 = MapsSuggestionsCurrentBestLocation();
    if (v9)
    {
      [v8 coordinate];
      v12 = NAN;
      if (fabs(v11) <= 180.0 && fabs(v10) <= 90.0)
      {
        v13 = objc_alloc(MEMORY[0x1E6985C40]);
        [v8 coordinate];
        v15 = v14;
        [v8 coordinate];
        v16 = [v13 initWithLatitude:v15 longitude:?];
        [v16 distanceFromLocation:v9];
        v12 = v17;
      }
    }

    else
    {
      v12 = NAN;
    }

    v20 = v7;
    v22 = v20;
    if (v20)
    {
      *&v21 = v12;
      [(MapsSuggestionsMutableSignalPack *)v20 writeSignalValue:13 forType:v21];
    }

    else
    {
      v23 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v48 = 136446978;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
        v50 = 1024;
        v51 = 27;
        v52 = 2082;
        v53 = "BOOL _addIfValid(MapsSuggestionsMutableSignalPack *__strong, MapsSuggestionsSignalType, MapsSuggestionsSignalValue)";
        v54 = 2082;
        v55 = "nil == (pack)";
        _os_log_impl(&dword_1C5126000, v23, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal pack", &v48, 0x26u);
      }
    }

    v18 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
    if (v18)
    {
      v24 = MapsSuggestionsCurrentBestLocation();
      if (v24 && ([v18 coordinate], CLLocationCoordinate2DIsValid(v58)))
      {
        [v18 distanceFromLocation:v24];
        v26 = v25;
      }

      else
      {
        v26 = NAN;
      }

      v27 = v22;
      if (v22)
      {
        *&v28 = v26;
        [(MapsSuggestionsMutableSignalPack *)v27 writeSignalValue:14 forType:v28];
        goto LABEL_28;
      }
    }

    else
    {
      v29 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v48 = 136446978;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
        v50 = 1024;
        v51 = 90;
        v52 = 2082;
        v53 = "MapsSuggestionsSignalValue _distanceFromHereToLocation(CLLocation *__strong)";
        v54 = 2082;
        v55 = "nil == (there)";
        _os_log_impl(&dword_1C5126000, v29, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a location", &v48, 0x26u);
      }

      v30 = v22;
      if (v22)
      {
LABEL_28:

        v32 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
        v33 = objc_alloc(MEMORY[0x1E6985C40]);
        [v8 coordinate];
        v35 = v34;
        [v8 coordinate];
        v36 = [v33 initWithLatitude:v35 longitude:?];
        v37 = v32;
        v38 = v36;
        v39 = v38;
        if (v37)
        {
          if (v38)
          {
            [v37 coordinate];
            if (CLLocationCoordinate2DIsValid(v59))
            {
              [v39 coordinate];
              if (CLLocationCoordinate2DIsValid(v60))
              {
                [v37 distanceFromLocation:v39];
                v41 = v40;
LABEL_40:

                v44 = v22;
                v19 = v44;
                if (v22)
                {
                  *&v45 = v41;
                  [(MapsSuggestionsMutableSignalPack *)v44 writeSignalValue:15 forType:v45];
                }

                else
                {
                  v46 = GEOFindOrCreateLog();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    v48 = 136446978;
                    v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
                    v50 = 1024;
                    v51 = 27;
                    v52 = 2082;
                    v53 = "BOOL _addIfValid(MapsSuggestionsMutableSignalPack *__strong, MapsSuggestionsSignalType, MapsSuggestionsSignalValue)";
                    v54 = 2082;
                    v55 = "nil == (pack)";
                    _os_log_impl(&dword_1C5126000, v46, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal pack", &v48, 0x26u);
                  }
                }

                goto LABEL_46;
              }
            }

LABEL_39:
            v41 = NAN;
            goto LABEL_40;
          }

          v42 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v48 = 136446978;
            v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
            v50 = 1024;
            v51 = 112;
            v52 = 2082;
            v53 = "MapsSuggestionsSignalValue _distanceFromOriginToDestination(CLLocation *__strong, CLLocation *__strong)";
            v54 = 2082;
            v55 = "nil == (destination)";
            v43 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a destination";
            goto LABEL_37;
          }
        }

        else
        {
          v42 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v48 = 136446978;
            v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
            v50 = 1024;
            v51 = 111;
            v52 = 2082;
            v53 = "MapsSuggestionsSignalValue _distanceFromOriginToDestination(CLLocation *__strong, CLLocation *__strong)";
            v54 = 2082;
            v55 = "nil == (origin)";
            v43 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an origin";
LABEL_37:
            _os_log_impl(&dword_1C5126000, v42, OS_LOG_TYPE_ERROR, v43, &v48, 0x26u);
          }
        }

        goto LABEL_39;
      }
    }

    v31 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v48 = 136446978;
      v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
      v50 = 1024;
      v51 = 27;
      v52 = 2082;
      v53 = "BOOL _addIfValid(MapsSuggestionsMutableSignalPack *__strong, MapsSuggestionsSignalType, MapsSuggestionsSignalValue)";
      v54 = 2082;
      v55 = "nil == (pack)";
      _os_log_impl(&dword_1C5126000, v31, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a signal pack", &v48, 0x26u);
    }

    goto LABEL_28;
  }

  v18 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v48 = 136446978;
    v49 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack+MapsSuggestionsEntry.m";
    v50 = 1024;
    v51 = 166;
    v52 = 2082;
    v53 = "+[MapsSuggestionsSignalPack(MapsSuggestionsEntry) extractFromDestinationMapItem:originCoordinate:]";
    v54 = 2082;
    v55 = "nil == (mapItem)";
    _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a map item", &v48, 0x26u);
  }

  v19 = 0;
LABEL_46:

  return v19;
}

- (MapsSuggestionsSignalPack)initWithSignalPack:(id)pack
{
  packCopy = pack;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsSignalPack;
  v5 = [(MapsSuggestionsSignalPack *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = v5 == packCopy;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v5->_innerSignalPack.dict_.__table_.__max_load_factor_ = packCopy->_innerSignalPack.dict_.__table_.__max_load_factor_;
    std::__hash_table<std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::__unordered_map_hasher<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::hash<MapsSuggestionsSignalType>,std::equal_to<MapsSuggestionsSignalType>,true>,std::__unordered_map_equal<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::equal_to<MapsSuggestionsSignalType>,std::hash<MapsSuggestionsSignalType>,true>,std::allocator<std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,void *> *>>(&v5->_innerSignalPack.dict_.__table_.__bucket_list_.__ptr_, packCopy->_innerSignalPack.dict_.__table_.__first_node_.__next_, 0);
  }

  return v6;
}

+ (id)signalPackFromData:(id)data
{
  v3 = MapsSuggestionsSignalPackFromData(data);

  return v3;
}

- (BOOL)mergeIntoSignalPack:(id)pack
{
  v16 = *MEMORY[0x1E69E9840];
  packCopy = pack;
  if (packCopy)
  {
    for (i = self->_innerSignalPack.dict_.__table_.__first_node_.__next_; i; i = *i)
    {
      std::unordered_map<MapsSuggestionsSignalType,MSg::Signal>::insert_or_assign[abi:ne200100]<MSg::Signal const&>(packCopy + 1, i + 2, (i + 3));
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446978;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsSignalPack.mm";
      v10 = 1024;
      v11 = 72;
      v12 = 2082;
      v13 = "[MapsSuggestionsSignalPack mergeIntoSignalPack:]";
      v14 = 2082;
      v15 = "nil == (signalPack)";
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires another signal pack", &v8, 0x26u);
    }
  }

  return packCopy != 0;
}

- (id)rawSignalDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  for (i = self->_innerSignalPack.dict_.__table_.__first_node_.__next_; i; i = *i)
  {
    v5 = objc_alloc(MEMORY[0x1E696AD98]);
    LODWORD(v6) = *(i + 6);
    v7 = [v5 initWithFloat:v6];
    v8 = NSStringFromMapsSuggestionsSignalType(*(i + 2));
    [v3 setObject:v7 forKeyedSubscript:v8];
  }

  return v3;
}

- (id)encodedFeatureDictionary
{
  v3 = objc_autoreleasePoolPush();
  v20 = 0u;
  v21 = 0u;
  v22 = 1065353216;
  MSg::EncodedSignalPack::encodeFrom(&v20, &self->_innerSignalPack);
  context = v3;
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = [v4 initWithCapacity:*(&v21 + 1)];
  for (i = v21; i; i = *i)
  {
    v7 = NSStringFromMapsSuggestionsSignalType(i[2]);
    v9 = i[3];
    v10 = i[4];
    if (v10 - v9 == 4)
    {
      LODWORD(v8) = *v9;
      v11 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
      [v5 setObject:v11 forKeyedSubscript:v7];
    }

    else if (v10 != v9)
    {
      v12 = 0;
      if (((v10 - v9) >> 2) <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = (v10 - v9) >> 2;
      }

      do
      {
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%u", v7, v12];
        LODWORD(v15) = *(i[3] + 4 * v12);
        v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
        [v5 setObject:v16 forKeyedSubscript:v14];

        ++v12;
      }

      while (v13 != v12);
    }
  }

  v17 = [v5 copy];

  std::__hash_table<std::__hash_value_type<MapsSuggestionsSignalType,std::vector<float>>,std::__unordered_map_hasher<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,std::vector<float>>,std::hash<MapsSuggestionsSignalType>,std::equal_to<MapsSuggestionsSignalType>,true>,std::__unordered_map_equal<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,std::vector<float>>,std::equal_to<MapsSuggestionsSignalType>,std::hash<MapsSuggestionsSignalType>,true>,std::allocator<std::__hash_value_type<MapsSuggestionsSignalType,std::vector<float>>>>::~__hash_table(&v20);
  objc_autoreleasePoolPop(context);

  return v17;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [MapsSuggestionsMutableSignalPack allocWithZone:zone];

  return [(MapsSuggestionsSignalPack *)v4 initWithSignalPack:self];
}

- (MapsSuggestionsSignalPack)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsSignalPackInnerDataKey"];
  if ([(MSg::SignalPack *)v5 length])
  {
    v6 = objc_alloc_init(MapsSuggestionsSignalPack);

    v11.super.isa = 0;
    MSg::SignalPack::deserialize(v5, &v11, v10);
    std::__hash_table<std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::__unordered_map_hasher<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::hash<MapsSuggestionsSignalType>,std::equal_to<MapsSuggestionsSignalType>,true>,std::__unordered_map_equal<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::equal_to<MapsSuggestionsSignalType>,std::hash<MapsSuggestionsSignalType>,true>,std::allocator<std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>>>::__move_assign(&v6->_innerSignalPack, v10);
    std::__hash_table<std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::__unordered_map_hasher<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::hash<MapsSuggestionsSignalType>,std::equal_to<MapsSuggestionsSignalType>,true>,std::__unordered_map_equal<MapsSuggestionsSignalType,std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>,std::equal_to<MapsSuggestionsSignalType>,std::hash<MapsSuggestionsSignalType>,true>,std::allocator<std::__hash_value_type<MapsSuggestionsSignalType,MSg::Signal>>>::~__hash_table(v10);
    self = v6;
    selfCopy = self;
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "Decoded empty data for MapsSuggestionsSignalPack?", v10, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:3800];
  v5 = MSg::SignalPack::serialize(&self->_innerSignalPack, v4);

  v6 = [v5 copy];
  [coderCopy encodeObject:v6 forKey:@"MapsSuggestionsSignalPackInnerDataKey"];
}

@end