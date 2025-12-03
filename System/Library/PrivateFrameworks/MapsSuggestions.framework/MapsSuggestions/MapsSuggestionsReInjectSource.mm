@interface MapsSuggestionsReInjectSource
+ (id)_entriesFromMultilineString:(id)string;
- (double)updateSuggestionEntriesWithHandler:(id)handler;
- (id)initFromResourceDepot:(id)depot name:(id)name;
- (void)_processFileAtPath:(void *)path handler:;
@end

@implementation MapsSuggestionsReInjectSource

- (id)initFromResourceDepot:(id)depot name:(id)name
{
  v30 = *MEMORY[0x1E69E9840];
  depotCopy = depot;
  nameCopy = name;
  if (!depotCopy)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReInjectSource.m";
      v24 = 1024;
      v25 = 84;
      v26 = 2082;
      v27 = "[MapsSuggestionsReInjectSource initFromResourceDepot:name:]";
      v28 = 2082;
      v29 = "nil == (resourceDepot)";
      v19 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot to buid!";
LABEL_12:
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x26u);
    }

LABEL_13:

    selfCopy = 0;
    goto LABEL_14;
  }

  oneSourceDelegate = [depotCopy oneSourceDelegate];

  if (!oneSourceDelegate)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v23 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReInjectSource.m";
      v24 = 1024;
      v25 = 85;
      v26 = 2082;
      v27 = "[MapsSuggestionsReInjectSource initFromResourceDepot:name:]";
      v28 = 2082;
      v29 = "nil == (resourceDepot.oneSourceDelegate)";
      v19 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires one SourceDelegate!";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  oneSourceDelegate2 = [depotCopy oneSourceDelegate];
  v21.receiver = self;
  v21.super_class = MapsSuggestionsReInjectSource;
  v10 = [(MapsSuggestionsBaseSource *)&v21 initWithDelegate:oneSourceDelegate2 name:nameCopy];

  if (v10)
  {
    v11 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    firstObject = [v11 firstObject];
    v13 = [firstObject stringByAppendingPathComponent:@"MapsSuggestionsInjections.txt"];
    path = v10->_path;
    v10->_path = v13;

    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = v10->_path;
      *buf = 138412290;
      v23 = v16;
      _os_log_impl(&dword_1C5126000, v15, OS_LOG_TYPE_DEBUG, "Using path: %@", buf, 0xCu);
    }
  }

  self = v10;
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (double)updateSuggestionEntriesWithHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(MapsSuggestionsBaseSource *)self uniqueName];
    v8 = NSStringFromMapsSuggestionsCurrentBestLocation();
    v11 = 138412802;
    v12 = uniqueName;
    v13 = 2112;
    v14 = @"ALL";
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_DEBUG, "{MSgDebug} UPDATING SOURCE{%@} for TYPE{%@} at LATLONG{%@}", &v11, 0x20u);
  }

  if ([defaultManager fileExistsAtPath:self->_path])
  {
    [(MapsSuggestionsReInjectSource *)self _processFileAtPath:handlerCopy handler:?];
    v9 = 300.0;
  }

  else
  {
    v9 = 0.0;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  return v9;
}

+ (id)_entriesFromMultilineString:(id)string
{
  v87 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "_entriesFromMultilineString", buf, 2u);
  }

  v4 = 0x1E696A000uLL;
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v5 = [stringCopy componentsSeparatedByCharactersInSet:?];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v75 objects:buf count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v76;
    v65 = *v76;
    v59 = v7;
    v60 = v6;
LABEL_5:
    v11 = 0;
    v63 = v9;
    while (1)
    {
      if (*v76 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v67 = v11;
      v12 = *(*(&v75 + 1) + 8 * v11);
      whitespaceCharacterSet = [*(v4 + 2824) whitespaceCharacterSet];
      v14 = [v12 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if ([v14 length])
      {
        if ([v14 characterAtIndex:0] != 35)
        {
          break;
        }
      }

LABEL_81:

      v11 = v67 + 1;
      if (v67 + 1 == v9)
      {
        v9 = [v7 countByEnumeratingWithState:&v75 objects:buf count:16];
        if (!v9)
        {
          goto LABEL_83;
        }

        goto LABEL_5;
      }
    }

    if (![v14 hasPrefix:@"APPLY "])
    {
      v21 = [MapsSuggestionsEntry entryFromSerializedString:v14];
      lastObject = v21;
      if (v21)
      {
        [v21 setExpires:0];
        [v6 addObject:lastObject];
      }

      else
      {
        v22 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *v81 = 138412290;
          v82 = v12;
          _os_log_impl(&dword_1C5126000, v22, OS_LOG_TYPE_ERROR, "Cannot deserialize '%@'", v81, 0xCu);
        }
      }

      goto LABEL_80;
    }

    if ([v6 count])
    {
      lastObject = [v6 lastObject];
      v16 = [v14 substringFromIndex:{objc_msgSend(@"APPLY ", "length")}];
      v17 = [v16 dataUsingEncoding:4];

      v18 = v17;
      v74 = 0;
      v19 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v17 options:0 error:&v74];
      v66 = v74;
      v64 = v19;
      if (v66)
      {
        v20 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *v81 = 138412546;
          v82 = v66;
          v83 = 2112;
          *v84 = v14;
          _os_log_impl(&dword_1C5126000, v20, OS_LOG_TYPE_ERROR, "Could not decode JSON: %@, for line: %@", v81, 0x16u);
        }

        goto LABEL_79;
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v20 = v19;
      v23 = [v20 countByEnumeratingWithState:&v70 objects:v79 count:16];
      if (!v23)
      {
        v4 = 0x1E696A000;
LABEL_79:

        v9 = v63;
LABEL_80:

        v10 = v65;
        goto LABEL_81;
      }

      v24 = v23;
      v61 = v18;
      v62 = v14;
      v69 = *v71;
LABEL_22:
      v25 = 0;
      while (1)
      {
        if (*v71 != v69)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v70 + 1) + 8 * v25);
        v27 = [v20 objectForKeyedSubscript:v26];
        v28 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *v81 = 138412546;
          v82 = v26;
          v83 = 2112;
          *v84 = v27;
          _os_log_impl(&dword_1C5126000, v28, OS_LOG_TYPE_DEBUG, "Applying %@ => %@", v81, 0x16u);
        }

        v29 = lastObject;
        v30 = v26;
        v31 = v27;
        v32 = v31;
        if (!lastObject)
        {
          v37 = GEOFindOrCreateLog();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          *v81 = 136446978;
          v82 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReInjectSource.m";
          v83 = 1024;
          *v84 = 158;
          *&v84[4] = 2082;
          *&v84[6] = "void _applyValue(MapsSuggestionsEntry *__strong, NSString *__strong, NSObject *__strong)";
          v85 = 2082;
          v86 = "nil == (entry)";
          v38 = v37;
          v39 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_39:
          v40 = 38;
          goto LABEL_40;
        }

        if (!v30)
        {
          v37 = GEOFindOrCreateLog();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          *v81 = 136446978;
          v82 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReInjectSource.m";
          v83 = 1024;
          *v84 = 159;
          *&v84[4] = 2082;
          *&v84[6] = "void _applyValue(MapsSuggestionsEntry *__strong, NSString *__strong, NSObject *__strong)";
          v85 = 2082;
          v86 = "nil == (key)";
          v38 = v37;
          v39 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a key";
          goto LABEL_39;
        }

        if (!v31)
        {
          v37 = GEOFindOrCreateLog();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          *v81 = 136446978;
          v82 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReInjectSource.m";
          v83 = 1024;
          *v84 = 160;
          *&v84[4] = 2082;
          *&v84[6] = "void _applyValue(MapsSuggestionsEntry *__strong, NSString *__strong, NSObject *__strong)";
          v85 = 2082;
          v86 = "nil == (value)";
          v38 = v37;
          v39 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a value";
          goto LABEL_39;
        }

        v33 = v31;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v41 = v29;
          v42 = v30;
          v43 = v33;
          if ([v42 isEqualToString:@".type"])
          {
            [v41 _overrideType:{objc_msgSend(v43, "unsignedIntegerValue")}];
          }

          else
          {
            if (![v42 isEqualToString:@".weight"])
            {

              [v41 setNumber:v43 forKey:v42];
              goto LABEL_58;
            }

            [v43 doubleValue];
            [v41 setWeight:?];
          }

          goto LABEL_54;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v37 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *v81 = 138412290;
            v82 = v30;
            v38 = v37;
            v39 = "Cannot apply unknown type for key %@";
            v40 = 12;
LABEL_40:
            _os_log_impl(&dword_1C5126000, v38, OS_LOG_TYPE_ERROR, v39, v81, v40);
          }

LABEL_41:

          goto LABEL_58;
        }

        v44 = qword_1EDC51F00;
        v45 = v33;
        if (v44 != -1)
        {
          +[MapsSuggestionsReInjectSource _entriesFromMultilineString:];
        }

        v46 = [_MergedGlobals_5 dateFromString:v45];

        v68 = v29;
        v47 = v30;
        v48 = v45;
        if (!v46)
        {
          if ([v47 isEqualToString:@".title"])
          {
            v50 = [v48 copy];
            [v68 setTitle:v50];
LABEL_71:

LABEL_72:
            goto LABEL_58;
          }

          if ([v47 isEqualToString:@".subtitle"])
          {
            v50 = [v48 copy];
            [v68 setSubtitle:v50];
            goto LABEL_71;
          }

          if ([v47 isEqualToString:@".undecoratedTitle"])
          {
            v50 = [v48 copy];
            [v68 setUndecoratedTitle:v50];
            goto LABEL_71;
          }

          if ([v47 isEqualToString:@".undecoratedSubtitle"])
          {
            v50 = [v48 copy];
            [v68 setUndecoratedSubtitle:v50];
            goto LABEL_71;
          }

          if ([v47 isEqualToString:@".type"])
          {
            [v68 _overrideType:MapsSuggestionsEntryTypeFromString(v48)];
            goto LABEL_72;
          }

          v34 = v68;
          v35 = v48;
          v36 = v47;
          goto LABEL_32;
        }

        if (![v47 isEqualToString:@".expires"])
        {

          v51 = qword_1EDC51F00;
          v52 = v48;
          if (v51 != -1)
          {
            +[MapsSuggestionsReInjectSource _entriesFromMultilineString:];
          }

          v41 = [_MergedGlobals_5 dateFromString:v52];

          [v68 setDate:v41 forKey:v47];
LABEL_54:

          goto LABEL_58;
        }

        v49 = [v48 copy];
        [v68 setExpires:v49];

LABEL_58:
        if (v24 == ++v25)
        {
          v53 = [v20 countByEnumeratingWithState:&v70 objects:v79 count:16];
          v24 = v53;
          if (!v53)
          {
            v7 = v59;
            v6 = v60;
            v4 = 0x1E696A000;
            v18 = v61;
            v14 = v62;
            goto LABEL_79;
          }

          goto LABEL_22;
        }
      }

      v34 = v29;
      v35 = 0;
      v36 = v30;
LABEL_32:
      [v34 setString:v35 forKey:v36];
      goto LABEL_58;
    }

    v55 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *v81 = 136446978;
      v82 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReInjectSource.m";
      v83 = 1024;
      *v84 = 222;
      *&v84[4] = 2082;
      *&v84[6] = "MapsSuggestionsEntries *_entriesFromMultilineString(NSString *__strong)";
      v85 = 2082;
      v86 = "0u == entries.count";
      _os_log_impl(&dword_1C5126000, v55, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Cannot modify a non-existing entry", v81, 0x26u);
    }

    v54 = 0;
  }

  else
  {
LABEL_83:

    if (![v6 count])
    {

      v6 = 0;
    }

    v54 = [v6 copy];
  }

  return v54;
}

- (void)_processFileAtPath:(void *)path handler:
{
  v185 = *MEMORY[0x1E69E9840];
  v5 = a2;
  pathCopy = path;
  selfCopy = self;
  if (self)
  {
    v7 = v5;
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v178 = v7;
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_DEBUG, "Reading from: %@", buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfFile:v7 encoding:4 error:0];
    v147 = v9;
    if ([v9 length])
    {
      v146 = v9;
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "_entriesFromMultilineString", buf, 2u);
      }

      v11 = 0x1E696A000uLL;
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v12 = [v146 componentsSeparatedByCharactersInSet:?];
      v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v14 = v12;
      v163 = [v14 countByEnumeratingWithState:&v172 objects:buf count:16];
      if (v163)
      {
        v162 = *v173;
        *&v15 = 138412290;
        v157 = v15;
        v150 = pathCopy;
        v151 = v5;
        v149 = v7;
        v152 = v13;
        v154 = v14;
LABEL_9:
        v16 = 0;
        while (1)
        {
          if (*v173 != v162)
          {
            objc_enumerationMutation(v14);
          }

          v164 = v16;
          v17 = *(*(&v172 + 1) + 8 * v16);
          whitespaceCharacterSet = [*(v11 + 2824) whitespaceCharacterSet];
          v19 = [v17 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

          if ([v19 length])
          {
            if ([v19 characterAtIndex:0] != 35)
            {
              break;
            }
          }

LABEL_86:

          v16 = v164 + 1;
          if (v164 + 1 == v163)
          {
            v163 = [v14 countByEnumeratingWithState:&v172 objects:buf count:16];
            if (!v163)
            {
              goto LABEL_88;
            }

            goto LABEL_9;
          }
        }

        v159 = v19;
        if (![v19 hasPrefix:@"APPLY "])
        {
          v25 = [MapsSuggestionsEntry entryFromSerializedString:v19];
          lastObject = v25;
          if (v25)
          {
            [v25 setExpires:0];
            [v13 addObject:lastObject];
          }

          else
          {
            v26 = GEOFindOrCreateLog();
            if (OUTLINED_FUNCTION_12(v26))
            {
              *v179 = v157;
              v180 = v17;
              OUTLINED_FUNCTION_1_5();
              _os_log_impl(v27, v28, v29, "Cannot deserialize '%@'", v30, 0xCu);
            }
          }

          goto LABEL_85;
        }

        if ([v13 count])
        {
          lastObject = [v13 lastObject];
          v21 = [v19 substringFromIndex:{objc_msgSend(@"APPLY ", "length")}];
          v22 = [v21 dataUsingEncoding:4];

          v171 = 0;
          v23 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v22 options:0 error:&v171];
          v155 = v23;
          v156 = v171;
          if (v156)
          {
            v24 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *v179 = 138412546;
              v180 = v156;
              v181 = 2112;
              *v182 = v19;
              _os_log_impl(&dword_1C5126000, v24, OS_LOG_TYPE_ERROR, "Could not decode JSON: %@, for line: %@", v179, 0x16u);
            }

            goto LABEL_84;
          }

          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v24 = v23;
          v31 = [v24 countByEnumeratingWithState:&v167 objects:v176 count:16];
          if (!v31)
          {
            v13 = v152;
LABEL_84:

            v14 = v154;
LABEL_85:

            v11 = 0x1E696A000;
            v19 = v159;
            goto LABEL_86;
          }

          v32 = v31;
          v153 = v22;
          v166 = *v168;
LABEL_26:
          v33 = 0;
          while (1)
          {
            if (*v168 != v166)
            {
              objc_enumerationMutation(v24);
            }

            v34 = *(*(&v167 + 1) + 8 * v33);
            v35 = [v24 objectForKeyedSubscript:v34];
            v36 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              *v179 = 138412546;
              v180 = v34;
              v181 = 2112;
              *v182 = v35;
              _os_log_impl(&dword_1C5126000, v36, OS_LOG_TYPE_DEBUG, "Applying %@ => %@", v179, 0x16u);
            }

            v37 = lastObject;
            v38 = v34;
            v39 = v35;
            v40 = v39;
            if (!lastObject)
            {
              v45 = GEOFindOrCreateLog();
              v46 = OUTLINED_FUNCTION_12(v45);
              if (!v46)
              {
                goto LABEL_45;
              }

              OUTLINED_FUNCTION_5_6(v46, v47, v48, v49, v50, v51, v52, v53, newlineCharacterSet, v146, v147, selfCopy, v149, v150, v151, v152, v153, v154, v155, v156, v157, *(&v157 + 1), v158, v159, v160, v161, v162, v163, v164, v165, v54);
              OUTLINED_FUNCTION_3_4("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReInjectSource.m");
              OUTLINED_FUNCTION_2_8(158);
              *&v182[6] = "void _applyValue(MapsSuggestionsEntry *__strong, NSString *__strong, NSObject *__strong)";
              v183 = v55;
              v184 = "nil == (entry)";
              OUTLINED_FUNCTION_1_5();
              v60 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
LABEL_43:
              v83 = 38;
              goto LABEL_44;
            }

            if (!v38)
            {
              v61 = GEOFindOrCreateLog();
              v62 = OUTLINED_FUNCTION_12(v61);
              if (!v62)
              {
                goto LABEL_45;
              }

              OUTLINED_FUNCTION_5_6(v62, v63, v64, v65, v66, v67, v68, v69, newlineCharacterSet, v146, v147, selfCopy, v149, v150, v151, v152, v153, v154, v155, v156, v157, *(&v157 + 1), v158, v159, v160, v161, v162, v163, v164, v165, v70);
              OUTLINED_FUNCTION_3_4("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReInjectSource.m");
              OUTLINED_FUNCTION_2_8(159);
              *&v182[6] = "void _applyValue(MapsSuggestionsEntry *__strong, NSString *__strong, NSObject *__strong)";
              v183 = v71;
              v184 = "nil == (key)";
              OUTLINED_FUNCTION_1_5();
              v60 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a key";
              goto LABEL_43;
            }

            if (!v39)
            {
              v72 = GEOFindOrCreateLog();
              v73 = OUTLINED_FUNCTION_12(v72);
              if (!v73)
              {
                goto LABEL_45;
              }

              OUTLINED_FUNCTION_5_6(v73, v74, v75, v76, v77, v78, v79, v80, newlineCharacterSet, v146, v147, selfCopy, v149, v150, v151, v152, v153, v154, v155, v156, v157, *(&v157 + 1), v158, v159, v160, v161, v162, v163, v164, v165, v81);
              OUTLINED_FUNCTION_3_4("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReInjectSource.m");
              OUTLINED_FUNCTION_2_8(160);
              *&v182[6] = "void _applyValue(MapsSuggestionsEntry *__strong, NSString *__strong, NSObject *__strong)";
              v183 = v82;
              v184 = "nil == (value)";
              OUTLINED_FUNCTION_1_5();
              v60 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a value";
              goto LABEL_43;
            }

            v41 = v39;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {

              v84 = v37;
              v85 = v38;
              v86 = v41;
              if ([v85 isEqualToString:@".type"])
              {
                [v84 _overrideType:{objc_msgSend(v86, "unsignedIntegerValue")}];
              }

              else
              {
                if (![v85 isEqualToString:@".weight"])
                {

                  [v84 setNumber:v86 forKey:v85];
                  goto LABEL_59;
                }

                [v86 doubleValue];
                [v84 setWeight:?];
              }

              goto LABEL_58;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v100 = GEOFindOrCreateLog();
              if (OUTLINED_FUNCTION_12(v100))
              {
                *v179 = v157;
                v180 = v38;
                OUTLINED_FUNCTION_1_5();
                v60 = "Cannot apply unknown type for key %@";
                v83 = 12;
LABEL_44:
                _os_log_impl(v56, v57, v58, v60, v59, v83);
              }

LABEL_45:

              goto LABEL_59;
            }

            v87 = qword_1EDC51F00;
            v88 = v41;
            if (v87 != -1)
            {
              dispatch_once(&qword_1EDC51F00, &__block_literal_global_39);
            }

            v89 = [_MergedGlobals_5 dateFromString:v88];

            v165 = v37;
            v90 = v38;
            v91 = v88;
            if (!v89)
            {
              v161 = v91;
              if ([v90 isEqualToString:@".title"])
              {
                v101 = [v91 copy];
                v84 = v165;
                [v165 setTitle:v101];

                goto LABEL_76;
              }

              if ([v90 isEqualToString:@".subtitle"])
              {
                v104 = [v91 copy];
                [OUTLINED_FUNCTION_0_9(v104 v105];
                goto LABEL_75;
              }

              if ([v90 isEqualToString:@".undecoratedTitle"])
              {
                v104 = [v91 copy];
                [OUTLINED_FUNCTION_0_9(v104 v112];
                goto LABEL_75;
              }

              if ([v90 isEqualToString:@".undecoratedSubtitle"])
              {
                v104 = [v91 copy];
                [OUTLINED_FUNCTION_0_9(v104 v119];
LABEL_75:

                v84 = v91;
LABEL_76:
                v91 = v161;
                goto LABEL_77;
              }

              if ([v90 isEqualToString:@".type"])
              {
                v84 = v165;
                [v165 _overrideType:MapsSuggestionsEntryTypeFromString(v91)];
LABEL_77:

LABEL_58:
                goto LABEL_59;
              }

              v42 = v165;
              v43 = v91;
              v44 = v90;
              goto LABEL_36;
            }

            if (![v90 isEqualToString:@".expires"])
            {

              v102 = qword_1EDC51F00;
              v103 = v91;
              if (v102 != -1)
              {
                dispatch_once(&qword_1EDC51F00, &__block_literal_global_39);
              }

              v84 = [_MergedGlobals_5 dateFromString:v103];

              [v165 setDate:v84 forKey:v90];
              goto LABEL_58;
            }

            v92 = [v91 copy];
            [OUTLINED_FUNCTION_0_9(v92 v93];

LABEL_59:
            if (v32 == ++v33)
            {
              v126 = [v24 countByEnumeratingWithState:&v167 objects:v176 count:16];
              v32 = v126;
              if (!v126)
              {
                pathCopy = v150;
                v5 = v151;
                v7 = v149;
                v13 = v152;
                v22 = v153;
                goto LABEL_84;
              }

              goto LABEL_26;
            }
          }

          v42 = v37;
          v43 = 0;
          v44 = v38;
LABEL_36:
          [v42 setString:v43 forKey:v44];
          goto LABEL_59;
        }

        v129 = GEOFindOrCreateLog();
        v130 = OUTLINED_FUNCTION_12(v129);
        if (v130)
        {
          OUTLINED_FUNCTION_5_6(v130, v131, v132, v133, v134, v135, v136, v137, newlineCharacterSet, v146, v147, selfCopy, v149, v150, v151, v152, v153, v154, v155, v156, v157, *(&v157 + 1), v158, v19, v160, v161, v162, v163, v164, v165, v138);
          v180 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsReInjectSource.m";
          v181 = 1024;
          *v182 = 222;
          *&v182[4] = 2082;
          *&v182[6] = "MapsSuggestionsEntries *_entriesFromMultilineString(NSString *__strong)";
          v183 = 2082;
          v184 = "0u == entries.count";
          OUTLINED_FUNCTION_1_5();
          _os_log_impl(v139, v140, v141, v142, v143, 0x26u);
        }

        v128 = 0;
        v127 = newlineCharacterSet;
      }

      else
      {
LABEL_88:

        if (![v13 count])
        {

          v13 = 0;
        }

        v127 = newlineCharacterSet;
        v128 = [v13 copy];
      }
    }

    else
    {
      v128 = 0;
    }

    if (v128)
    {
      v144 = v128;
    }

    else
    {
      v144 = MEMORY[0x1E695E0F0];
    }

    [selfCopy addOrUpdateMySuggestionEntries:v144];
    if (pathCopy)
    {
      pathCopy[2](pathCopy);
    }
  }
}

@end