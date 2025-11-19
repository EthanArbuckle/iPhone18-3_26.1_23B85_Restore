@interface _NBMetadataHelper
+ (BOOL)hasValue:(id)a3;
+ (id)CCode2CNMap;
+ (id)CN2CCodeMap;
+ (id)countryCodeFromRegionCode:(id)a3;
+ (id)jsonObjectFromZippedDataWithBytes:(char *)a3 compressedLength:(unint64_t)a4 expandedLength:(unint64_t)a5;
+ (id)phoneNumberDataMap;
+ (id)regionCodeFromCountryCode:(id)a3;
- (_NBMetadataHelper)init;
- (id)getAllMetadata;
- (id)getMetadataForNonGeographicalRegion:(id)a3;
- (id)getMetadataForRegion:(id)a3;
@end

@implementation _NBMetadataHelper

- (_NBMetadataHelper)init
{
  v6.receiver = self;
  v6.super_class = _NBMetadataHelper;
  v2 = [(_NBMetadataHelper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    metadataCache = v2->_metadataCache;
    v2->_metadataCache = v3;
  }

  return v2;
}

+ (id)phoneNumberDataMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39___NBMetadataHelper_phoneNumberDataMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_281346940 != -1)
  {
    dispatch_once(&qword_281346940, block);
  }

  v2 = _MergedGlobals;

  return v2;
}

+ (id)CCode2CNMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32___NBMetadataHelper_CCode2CNMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_281346950 != -1)
  {
    dispatch_once(&qword_281346950, block);
  }

  v2 = qword_281346948;

  return v2;
}

+ (id)CN2CCodeMap
{
  v2 = [a1 phoneNumberDataMap];
  v3 = [v2 objectForKeyedSubscript:@"countryCodeToRegionCodeMap"];

  return v3;
}

- (id)getAllMetadata
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = 0x277CBE000uLL;
  v4 = [MEMORY[0x277CBEAF8] ISOCountryCodes];
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = [v4 count];
  v7 = v5;
  v8 = self;
  v9 = [v7 initWithCapacity:v6];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v34)
  {
    v33 = *v36;
    v32 = *MEMORY[0x277CBE690];
    v10 = *MEMORY[0x277CBE6C0];
    v31 = *MEMORY[0x277CBE6C0];
    v29 = v9;
    do
    {
      v11 = 0;
      do
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v12 forKey:{v32, v29}];
        v14 = [*(v3 + 2808) localeIdentifierFromComponents:v13];
        v15 = [*(v3 + 2808) currentLocale];
        v16 = [v15 displayNameForKey:v10 value:v14];

        v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v18 = v10;
        v19 = v17;
        if (v16)
        {
          [v17 setObject:v16 forKey:@"name"];
          if (!v12)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v19 setObject:v12 forKey:@"code"];
          goto LABEL_9;
        }

        v21 = v3;
        v22 = v8;
        v23 = v21;
        v24 = [*(v21 + 2808) systemLocale];
        v25 = [v24 displayNameForKey:v18 value:v14];

        if (v25)
        {
          [v19 setObject:v25 forKey:@"name"];
        }

        v8 = v22;
        v3 = v23;
        v9 = v29;
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_9:
        v20 = [(_NBMetadataHelper *)v8 getMetadataForRegion:v12];
        if (v20)
        {
          [v19 setObject:v20 forKey:@"metadata"];
        }

        [v9 addObject:v19];

        ++v11;
        v10 = v31;
      }

      while (v34 != v11);
      v26 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      v34 = v26;
    }

    while (v26);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)regionCodeFromCountryCode:(id)a3
{
  v4 = a3;
  v5 = [a1 CN2CCodeMap];
  v6 = [v4 stringValue];

  v7 = [v5 objectForKeyedSubscript:v6];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)countryCodeFromRegionCode:(id)a3
{
  v4 = a3;
  v5 = [a1 CCode2CNMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)getMetadataForRegion:(id)a3
{
  v4 = StringByTrimming(a3);
  if ([v4 length])
  {
    v5 = [v4 uppercaseString];

    v6 = [(NSCache *)self->_metadataCache objectForKey:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [objc_opt_class() phoneNumberDataMap];
      v10 = [v9 objectForKeyedSubscript:@"countryToMetadata"];

      v11 = [v10 objectForKeyedSubscript:v5];
      if (v11)
      {
        v8 = [[_NBPhoneMetaData alloc] initWithEntry:v11];
        [(NSCache *)self->_metadataCache setObject:v8 forKey:v5];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
    v5 = v4;
  }

  return v8;
}

- (id)getMetadataForNonGeographicalRegion:(id)a3
{
  v4 = [a3 stringValue];
  v5 = [(_NBMetadataHelper *)self getMetadataForRegion:v4];

  return v5;
}

+ (BOOL)hasValue:(id)a3
{
  v3 = StringByTrimming(a3);
  v4 = [v3 length] != 0;

  return v4;
}

+ (id)jsonObjectFromZippedDataWithBytes:(char *)a3 compressedLength:(unint64_t)a4 expandedLength:(unint64_t)a5
{
  v5 = a4;
  v7 = [MEMORY[0x277CBEB28] dataWithLength:a5];
  memset(&strm, 0, sizeof(strm));
  inflateInit2_(&strm, 16, "1.2.12", 112);
  strm.next_in = a3;
  strm.avail_in = v5;
  strm.next_out = [v7 bytes];
  strm.avail_out = [v7 length];
  inflate(&strm, 4);
  inflateEnd(&strm);
  v10 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v10];

  return v8;
}

@end