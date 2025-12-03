@interface TKUtils
+ (BOOL)decompressFile:(id)file toDestinationPath:(id)path algorithm:(int)algorithm;
+ (id)URL:(id)l withQueryParameters:(id)parameters addKeys:(id)keys removeKeys:(id)removeKeys escape:(BOOL)escape;
+ (id)applicationLibraryPath;
+ (id)decompressData:(id)data algorithm:(int)algorithm;
+ (id)decompressData:(id)data algorithm:(int)algorithm operation:(int)operation;
+ (id)hexForColor:(id)color withAlpha:(BOOL)alpha;
+ (id)httpDataURLEncoded:(id)encoded;
+ (id)uniqueKeyForURL:(id)l;
@end

@implementation TKUtils

+ (BOOL)decompressFile:(id)file toDestinationPath:(id)path algorithm:(int)algorithm
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, file);
  v12 = 0;
  objc_storeStrong(&v12, path);
  algorithmCopy = algorithm;
  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:location[0]];
  if ([v10 length])
  {
    v8 = [selfCopy decompressData:v10 algorithm:algorithmCopy];
    if ([v8 length])
    {
      v15 = [v8 writeToFile:v12 options:1073741825 error:0] & 1;
    }

    else
    {
      v15 = 0;
    }

    v9 = 1;
    objc_storeStrong(&v8, 0);
  }

  else
  {
    v15 = 0;
    v9 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

+ (id)decompressData:(id)data algorithm:(int)algorithm
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v6 = [selfCopy decompressData:location[0] algorithm:algorithm operation:1];
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)decompressData:(id)data algorithm:(int)algorithm operation:(int)operation
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  algorithmCopy = algorithm;
  operationCopy = operation;
  memset(&__b, 0, sizeof(__b));
  v16 = compression_stream_init(&__b, operation, algorithm);
  if (v16)
  {
    v21 = 0;
    v15 = 1;
  }

  else
  {
    v8 = location[0];
    v5 = location[0];
    __b.src_ptr = [v8 bytes];
    __b.src_size = [location[0] length];
    size = 0x4000;
    v13 = malloc_type_malloc(0x4000uLL, 0x274E5BuLL);
    __b.dst_ptr = v13;
    __b.dst_size = 0x4000;
    v12 = objc_alloc_init(MEMORY[0x277CBEB28]);
    flags = operationCopy == 0;
    while (v16 == COMPRESSION_STATUS_OK)
    {
      v16 = compression_stream_process(&__b, flags);
      if (v16 == COMPRESSION_STATUS_ERROR)
      {
        compression_stream_destroy(&__b);
        v21 = 0;
        v15 = 1;
        goto LABEL_17;
      }

      if (v16)
      {
        if (v16 == COMPRESSION_STATUS_END && __b.dst_ptr > v13)
        {
          [v12 appendBytes:v13 length:__b.dst_ptr - v13];
        }
      }

      else if (!__b.dst_size)
      {
        [v12 appendBytes:v13 length:size];
        __b.dst_ptr = v13;
        __b.dst_size = size;
      }
    }

    compression_stream_destroy(&__b);
    v21 = [v12 copy];
    v15 = 1;
LABEL_17:
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(location, 0);
  v6 = v21;

  return v6;
}

+ (id)applicationLibraryPath
{
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  firstObject = [(NSArray *)v3 firstObject];
  MEMORY[0x277D82BD8](v3);

  return firstObject;
}

+ (id)uniqueKeyForURL:(id)l
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v4 = [MCLURLDataLoader uniqueKeyForURL:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)httpDataURLEncoded:(id)encoded
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, encoded);
  v17 = &httpDataURLEncoded__onceToken;
  v16 = 0;
  objc_storeStrong(&v16, &__block_literal_global_1);
  if (*v17 != -1)
  {
    dispatch_once(v17, v16);
  }

  objc_storeStrong(&v16, 0);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = location[0];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __30__TKUtils_httpDataURLEncoded___block_invoke_2;
  v12 = &unk_2797EE298;
  v13 = MEMORY[0x277D82BE0](v14);
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];
  v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v7 setQueryItems:v14];
  query = [v7 query];
  v6 = [query dataUsingEncoding:4];
  MEMORY[0x277D82BD8](query);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v6;
}

void __30__TKUtils_httpDataURLEncoded___block_invoke(void *a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v3 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v4[0] = [v3 mutableCopy];
  MEMORY[0x277D82BD8](v3);
  [v4[0] removeCharactersInString:{@"!*'();:@&=+$, /?%#[]"}];
  v1 = [v4[0] copy];
  v2 = httpDataURLEncoded__queryParameterCharacterSet;
  httpDataURLEncoded__queryParameterCharacterSet = v1;
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(v4, 0);
}

void __30__TKUtils_httpDataURLEncoded___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[2] = a4;
  v13[1] = a1;
  v13[0] = [location[0] stringByAddingPercentEncodingWithAllowedCharacters:httpDataURLEncoded__queryParameterCharacterSet];
  v12 = [v14 stringByAddingPercentEncodingWithAllowedCharacters:httpDataURLEncoded__queryParameterCharacterSet];
  v10 = a1[4];
  v11 = objc_alloc(MEMORY[0x277CCAD18]);
  if (v13[0])
  {
    v6 = v13[0];
  }

  else
  {
    v6 = location[0];
  }

  if (v12)
  {
    v4 = [v11 initWithName:v6 value:v12];
  }

  else
  {
    v4 = [v11 initWithName:v6 value:v14];
  }

  v5 = v4;
  [v10 addObject:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

+ (id)URL:(id)l withQueryParameters:(id)parameters addKeys:(id)keys removeKeys:(id)removeKeys escape:(BOOL)escape
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v53 = 0;
  objc_storeStrong(&v53, parameters);
  v52 = 0;
  objc_storeStrong(&v52, keys);
  v51 = 0;
  objc_storeStrong(&v51, removeKeys);
  escapeCopy = escape;
  v56 = &URL_withQueryParameters_addKeys_removeKeys_escape__onceToken;
  v55 = 0;
  objc_storeStrong(&v55, &__block_literal_global_10);
  if (*v56 != -1)
  {
    dispatch_once(v56, v55);
  }

  objc_storeStrong(&v55, 0);
  v7 = objc_alloc(MEMORY[0x277CCACE0]);
  v49 = [v7 initWithURL:location[0] resolvingAgainstBaseURL:0];
  percentEncodedQuery = [v49 percentEncodedQuery];
  [v49 setQuery:?];
  MEMORY[0x277D82BD8](percentEncodedQuery);
  queryItems = [v49 queryItems];
  v48 = [queryItems mutableCopy];
  MEMORY[0x277D82BD8](queryItems);
  if (v48)
  {
    v16 = v48;
    v15 = MEMORY[0x277CCAC30];
    v42 = MEMORY[0x277D85DD0];
    v43 = -1073741824;
    v44 = 0;
    v45 = __61__TKUtils_URL_withQueryParameters_addKeys_removeKeys_escape___block_invoke_2;
    v46 = &unk_2797EE2C0;
    v47 = MEMORY[0x277D82BE0](v51);
    v18 = [v15 predicateWithBlock:&v42];
    v17 = [v16 filteredArrayUsingPredicate:?];
    v8 = [v17 mutableCopy];
    v9 = v48;
    v48 = v8;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    v19 = v52;
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __61__TKUtils_URL_withQueryParameters_addKeys_removeKeys_escape___block_invoke_3;
    v38 = &unk_2797EE310;
    v39 = MEMORY[0x277D82BE0](v53);
    v41 = escapeCopy;
    v40 = MEMORY[0x277D82BE0](v48);
    [v19 enumerateObjectsUsingBlock:&v34];
    if ([v48 count])
    {
      [v49 setQueryItems:v48];
    }

    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v47, 0);
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v33 = [v13 initWithCapacity:{objc_msgSend(v53, "count")}];
    v14 = v53;
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __61__TKUtils_URL_withQueryParameters_addKeys_removeKeys_escape___block_invoke_5;
    v30 = &unk_2797EE338;
    v32 = escapeCopy;
    v31 = MEMORY[0x277D82BE0](v33);
    [v14 enumerateKeysAndObjectsUsingBlock:&v26];
    if ([v33 count])
    {
      [v49 setQueryItems:v33];
    }

    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v33, 0);
  }

  query = [v49 query];
  [v49 setPercentEncodedQuery:?];
  MEMORY[0x277D82BD8](query);
  v11 = [v49 URL];
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);

  return v11;
}

void __61__TKUtils_URL_withQueryParameters_addKeys_removeKeys_escape___block_invoke(void *a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v1 = MEMORY[0x277CCAB50];
  v3 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v2 = [v3 bitmapRepresentation];
  v4[0] = [v1 characterSetWithBitmapRepresentation:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  [v4[0] removeCharactersInString:{@"!*'();:@&=+$, /?%#[]"}];
  objc_storeStrong(&URL_withQueryParameters_addKeys_removeKeys_escape__queryParameterCharacterSet, v4[0]);
  objc_storeStrong(v4, 0);
}

uint64_t __61__TKUtils_URL_withQueryParameters_addKeys_removeKeys_escape___block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v6 = a1[4];
  v7 = [location[0] name];
  v8 = [v6 containsObject:?] ^ 1;
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v8;
}

void __61__TKUtils_URL_withQueryParameters_addKeys_removeKeys_escape___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v29[3] = a3;
  v29[2] = a4;
  v29[1] = a1;
  v29[0] = [*(a1 + 32) objectForKeyedSubscript:location[0]];
  if (v29[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v29[0] stringValue];
      v5 = v29[0];
      v29[0] = v4;
      MEMORY[0x277D82BD8](v5);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (*(a1 + 48))
      {
        v6 = [location[0] stringByAddingPercentEncodingWithAllowedCharacters:URL_withQueryParameters_addKeys_removeKeys_escape__queryParameterCharacterSet];
        v7 = location[0];
        location[0] = v6;
        MEMORY[0x277D82BD8](v7);
        v8 = [v29[0] stringByAddingPercentEncodingWithAllowedCharacters:URL_withQueryParameters_addKeys_removeKeys_escape__queryParameterCharacterSet];
        v9 = v29[0];
        v29[0] = v8;
        MEMORY[0x277D82BD8](v9);
      }

      v27 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:location[0] value:v29[0]];
      v22 = 0;
      v23 = &v22;
      v24 = 0x20000000;
      v25 = 32;
      v26 = [*(a1 + 40) count];
      v11 = *(a1 + 40);
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __61__TKUtils_URL_withQueryParameters_addKeys_removeKeys_escape___block_invoke_4;
      v19 = &unk_2797EE2E8;
      v20 = MEMORY[0x277D82BE0](location[0]);
      v21[0] = MEMORY[0x277D82BE0](*(a1 + 40));
      v21[1] = &v22;
      [v11 enumerateObjectsWithOptions:2 usingBlock:&v15];
      v10 = v23[3];
      if (v10 >= [*(a1 + 40) count])
      {
        [*(a1 + 40) addObject:v27];
      }

      else
      {
        [*(a1 + 40) insertObject:v27 atIndex:v23[3]];
      }

      objc_storeStrong(v21, 0);
      objc_storeStrong(&v20, 0);
      _Block_object_dispose(&v22, 8);
      objc_storeStrong(&v27, 0);
    }

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  objc_storeStrong(v29, 0);
  if (!v28)
  {
    v28 = 0;
  }

  objc_storeStrong(location, 0);
}

void __61__TKUtils_URL_withQueryParameters_addKeys_removeKeys_escape___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = [location[0] name];
  v6 = [v5 isEqualToString:*(a1 + 32)];
  MEMORY[0x277D82BD8](v5);
  if (v6)
  {
    [*(a1 + 40) removeObjectAtIndex:a3];
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }

  objc_storeStrong(location, 0);
}

void __61__TKUtils_URL_withQueryParameters_addKeys_removeKeys_escape___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14[2] = a4;
  v14[1] = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v15 stringValue];
    v5 = v15;
    v15 = v4;
    MEMORY[0x277D82BD8](v5);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a1 + 40))
    {
      v6 = [location[0] stringByAddingPercentEncodingWithAllowedCharacters:URL_withQueryParameters_addKeys_removeKeys_escape__queryParameterCharacterSet];
      v7 = location[0];
      location[0] = v6;
      MEMORY[0x277D82BD8](v7);
      v8 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:URL_withQueryParameters_addKeys_removeKeys_escape__queryParameterCharacterSet];
      v9 = v15;
      v15 = v8;
      MEMORY[0x277D82BD8](v9);
    }

    v10 = objc_alloc(MEMORY[0x277CCAD18]);
    v14[0] = [v10 initWithName:location[0] value:v15];
    [*(a1 + 32) addObject:v14[0]];
    objc_storeStrong(v14, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

+ (id)hexForColor:(id)color withAlpha:(BOOL)alpha
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  alphaCopy = alpha;
  v13 = 0.0;
  v12 = 0.0;
  v11 = 0.0;
  v10 = 0.0;
  [location[0] getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
  v9 = (v13 * 255.0);
  v8 = (v12 * 255.0);
  v7 = (v11 * 255.0);
  if (alphaCopy)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X%02X%02X%02X", v9, v8, v7, (v10 * 255.0)];
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X%02X%02X", v9, v8, v7];
  }

  objc_storeStrong(location, 0);
  v4 = v16;

  return v4;
}

@end