@interface INInteraction(CoreDuetContext)
- (id)contextMetadataWithBundleIdentifier:()CoreDuetContext eventUUID:;
@end

@implementation INInteraction(CoreDuetContext)

- (id)contextMetadataWithBundleIdentifier:()CoreDuetContext eventUUID:
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithCapacity:5];
  v10 = +[_CDContextQueries intentSourceBundleIDKey];
  [v9 setObject:v8 forKeyedSubscript:v10];

  v11 = [a1 identifier];
  v12 = [v11 copy];
  v13 = +[_CDContextQueries intentSourceItemIDKey];
  [v9 setObject:v12 forKeyedSubscript:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "_donatedBySiri")}];
  v15 = +[_CDContextQueries intentDonatedBySiriKey];
  [v9 setObject:v14 forKeyedSubscript:v15];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "intentHandlingStatus")}];
  v17 = +[_CDContextQueries intentHandlingStatusKey];
  [v9 setObject:v16 forKeyedSubscript:v17];

  v18 = [v7 copy];
  v19 = +[_CDContextQueries intentDKObjUUIDKey];
  [v9 setObject:v18 forKeyedSubscript:v19];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "direction")}];
  v21 = +[_CDContextQueries intentDirectionKey];
  [v9 setObject:v20 forKeyedSubscript:v21];

  v22 = [a1 intent];
  v23 = [v22 contextMetadata];
  [v9 addEntriesFromDictionary:v23];

  v24 = [v9 copy];

  return v24;
}

@end