@interface BRLTPreprocessorHelper
+ (id)mergeLocationMap:(id)map withLocationMap:(id)locationMap;
+ (void)mergePreprocessorOutputLocationMap:(id)map outputToPreprocessedMap:(int *)preprocessedMap outputLen:(int64_t)len outputToTextMap:(id *)textMap;
@end

@implementation BRLTPreprocessorHelper

+ (id)mergeLocationMap:(id)map withLocationMap:(id)locationMap
{
  mapCopy = map;
  locationMapCopy = locationMap;
  v7 = locationMapCopy;
  if (locationMapCopy)
  {
    bytes = [locationMapCopy bytes];
    v9 = [v7 length];
    bytes2 = [mapCopy bytes];
    v11 = [mapCopy length];
    v12 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v7, "length")}];
    if (v9 >= 8)
    {
      v13 = v9 >> 3;
      v14 = v11 >> 3;
      do
      {
        if (*bytes >= v14)
        {
          v16 = v12;
          v15 = bytes;
        }

        else
        {
          v18 = *(bytes2 + 8 * *bytes);
          v15 = &v18;
          v16 = v12;
        }

        [v16 appendBytes:v15 length:8];
        ++bytes;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v12 = mapCopy;
  }

  return v12;
}

+ (void)mergePreprocessorOutputLocationMap:(id)map outputToPreprocessedMap:(int *)preprocessedMap outputLen:(int64_t)len outputToTextMap:(id *)textMap
{
  mapCopy = map;
  if (mapCopy && preprocessedMap && textMap)
  {
    v10 = 8 * len;
    v16 = mapCopy;
    v11 = malloc_type_malloc(8 * len, 0xE9777531uLL);
    v12 = v16;
    bytes = [v16 bytes];
    if (len >= 1)
    {
      v14 = v11;
      do
      {
        v15 = *preprocessedMap++;
        *v14++ = *(bytes + 8 * v15);
        --len;
      }

      while (len);
    }

    *textMap = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:v10];
    free(v11);
    mapCopy = v16;
  }
}

@end