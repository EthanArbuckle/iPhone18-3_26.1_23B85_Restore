@interface BLPurchaseDAAPParser
+ (id)decodeData:(id)data;
+ (id)decodeHexString:(id)string;
+ (id)sharedInstance;
+ (id)typeForDRCPValueType:(int64_t)type;
- (id)parseBookletItem:(const char *)item count:(int64_t)count;
- (id)parseBookletListing:(const char *)listing count:(int64_t)count;
- (id)parseBrowseResults:(const char *)results count:(int64_t)count;
- (id)parseContentCodes:(const char *)codes count:(int64_t)count;
- (id)parseControlPromptCollection:(const char *)collection count:(int64_t)count;
- (id)parseControlPromptResponse:(const char *)response count:(int64_t)count;
- (id)parseDACPPropertyResponse:(const char *)response count:(int64_t)count;
- (id)parseDeletedIDsList:(const char *)list count:(int64_t)count;
- (id)parseError:(const char *)error count:(int64_t)count;
- (id)parseFlavor:(const char *)flavor size:(int64_t)size;
- (id)parseFlavorListing:(const char *)listing size:(int64_t)size;
- (id)parseGetSpeakersResponse:(const char *)response count:(int64_t)count;
- (id)parseListingCollection:(const char *)collection count:(int64_t)count capacity:(int)capacity;
- (id)parseListingHeader:(const char *)header count:(int64_t)count;
- (id)parseListingItem:(const char *)item count:(int64_t)count;
- (id)parseLogin:(const char *)login count:(int64_t)count;
- (id)parseMACAddressListing:(const char *)listing count:(int64_t)count;
- (id)parseServerInfo:(const char *)info count:(int64_t)count;
- (id)parseUTF8String:(const char *)string length:(int64_t)length;
- (id)parseUnicodeCharacter:(const char *)character count:(int64_t)count;
- (id)parseXMLContent:(const char *)content count:(int64_t)count;
- (id)processResponseCode:(unsigned int)code bytes:(const char *)bytes count:(int64_t)count;
- (unint64_t)SwapInt64BigToHost:(const char *)host size:(int64_t)size;
- (void)parseDict:(const char *)dict size:(int64_t)size intoDict:(id)intoDict;
- (void)setBool:(const char *)bool size:(int64_t)size inDict:(id)dict forKey:(id)key;
- (void)setDate:(const char *)date size:(int64_t)size inDict:(id)dict forKey:(id)key;
- (void)setFloat32:(const char *)float32 size:(int64_t)size inDict:(id)dict forKey:(id)key;
- (void)setSInt16:(const char *)int16 size:(int64_t)size inDict:(id)dict forKey:(id)key;
- (void)setSInt8:(const char *)int8 size:(int64_t)size inDict:(id)dict forKey:(id)key;
- (void)setString:(const char *)string size:(int64_t)size inDict:(id)dict forKey:(id)key;
- (void)setUInt16:(const char *)int16 size:(int64_t)size inDict:(id)dict forKey:(id)key;
- (void)setUInt32:(const char *)int32 size:(int64_t)size inDict:(id)dict forKey:(id)key;
- (void)setUInt64:(const char *)int64 size:(int64_t)size inDict:(id)dict forKey:(id)key;
- (void)setUInt8:(const char *)int8 size:(int64_t)size inDict:(id)dict forKey:(id)key;
- (void)unknownCode:(unsigned int)code bytes:(const char *)bytes size:(int64_t)size context:(const char *)context;
@end

@implementation BLPurchaseDAAPParser

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D3D9AC;
  block[3] = &unk_278D16940;
  block[4] = self;
  if (qword_280BC59B8 != -1)
  {
    dispatch_once(&qword_280BC59B8, block);
  }

  v2 = qword_280BC5848;

  return v2;
}

+ (id)decodeHexString:(id)string
{
  v4 = [string stringByReplacingOccurrencesOfString:@" " withString:&stru_2853E2EC8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v11 = 0;
  if ([v4 length] >= 2)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      __str[0] = [v4 characterAtIndex:v7 - 1];
      __str[1] = [v4 characterAtIndex:v7];
      HIBYTE(v11) = strtol(__str, 0, 16);
      [v5 appendBytes:&v11 + 1 length:1];
      ++v6;
      v7 += 2;
    }

    while (v6 < [v4 length] >> 1);
  }

  v8 = [self decodeData:v5];

  return v8;
}

+ (id)decodeData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = +[BLPurchaseDAAPParser sharedInstance];
  v5 = [dataCopy length];
  if (v5 <= 7)
  {
    v6 = BLJaliscoLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      v7 = "DMAPParser processResponse: couldn't get 8-byte message header";
      v8 = v6;
      v9 = 2;
LABEL_7:
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, v7, &v17, v9);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = v5;
  bytes = [dataCopy bytes];
  v12 = bswap32(bytes[1]);
  v13 = v10 - 8;
  if (v10 - 8 < v12)
  {
    v6 = BLJaliscoLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "+[BLPurchaseDAAPParser decodeData:]";
      v19 = 2048;
      v20 = v12;
      v21 = 2048;
      v22 = v13;
      v7 = "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld";
      v8 = v6;
      v9 = 32;
      goto LABEL_7;
    }

LABEL_8:

    v14 = 0;
    goto LABEL_10;
  }

  v14 = [v4 processResponseCode:bswap32(*bytes) bytes:bytes + 2 count:v12];
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (unint64_t)SwapInt64BigToHost:(const char *)host size:(int64_t)size
{
  v6 = malloc_type_malloc(size, 0xF3FEAAB4uLL);
  memcpy(v6, host, size);
  v7 = bswap64(*v6);
  free(v6);
  return v7;
}

- (id)parseUTF8String:(const char *)string length:(int64_t)length
{
  if (length < 1)
  {
    v5 = &stru_2853E2EC8;
  }

  else
  {
    if (length == 1 && !*string)
    {
      v5 = &stru_2853E2EC8;
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:string length:length encoding:4];
    }
  }

  return v5;
}

- (id)parseUnicodeCharacter:(const char *)character count:(int64_t)count
{
  if (count == 2)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:character length:2 encoding:2415919360];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)parseXMLContent:(const char *)content count:(int64_t)count
{
  v14 = *MEMORY[0x277D85DE8];
  if (count < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:content length:?];
    v11 = 0;
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v11];
    v6 = v11;
    if (v6)
    {
      v7 = BLJaliscoLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v6 description];
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "Attempting to process XML response: %@", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)parseFlavorListing:(const char *)listing size:(int64_t)size
{
  v28 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (size < 1)
  {
LABEL_12:
    v16 = array;
  }

  else
  {
    while (size > 3)
    {
      v8 = size - 4;
      if ((size - 4) <= 3)
      {
        v18 = BLJaliscoLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315650;
          v23 = "[BLPurchaseDAAPParser parseFlavorListing:size:]";
          v24 = 2048;
          v25 = 4;
          v26 = 2048;
          sizeCopy = v8;
          goto LABEL_20;
        }

LABEL_21:

        goto LABEL_22;
      }

      v9 = bswap32(*(listing + 1));
      v10 = size - 8;
      v11 = size - 8 >= v9;
      size = size - 8 - v9;
      if (!v11)
      {
        v18 = BLJaliscoLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315650;
          v23 = "[BLPurchaseDAAPParser parseFlavorListing:size:]";
          v24 = 2048;
          v25 = v9;
          v26 = 2048;
          sizeCopy = v10;
LABEL_20:
          _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v22, 0x20u);
        }

        goto LABEL_21;
      }

      v14 = *listing;
      v13 = listing + 8;
      v12 = v14;
      if (v14 == 1718183265)
      {
        v15 = [(BLPurchaseDAAPParser *)self parseFlavor:v13 size:v9];
        if (v15)
        {
          [array addObject:v15];
        }
      }

      else
      {
        [(BLPurchaseDAAPParser *)self unknownCode:bswap32(v12) bytes:v13 size:v9 context:"[BLPurchaseDAAPParser parseFlavorListing:size:]"];
      }

      listing = &v13[v9];
      if (size <= 0)
      {
        goto LABEL_12;
      }
    }

    v17 = BLJaliscoLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315650;
      v23 = "[BLPurchaseDAAPParser parseFlavorListing:size:]";
      v24 = 2048;
      v25 = 4;
      v26 = 2048;
      sizeCopy = size;
      _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v22, 0x20u);
    }

LABEL_22:
    v16 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)parseFlavor:(const char *)flavor size:(int64_t)size
{
  v37 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (size < 1)
  {
LABEL_32:
    v25 = dictionary;
    goto LABEL_43;
  }

  while (size > 3)
  {
    v8 = size - 4;
    if ((size - 4) <= 3)
    {
      v27 = BLJaliscoLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v31 = 136315650;
        v32 = "[BLPurchaseDAAPParser parseFlavor:size:]";
        v33 = 2048;
        v34 = 4;
        v35 = 2048;
        sizeCopy = v8;
        goto LABEL_40;
      }

LABEL_41:

      goto LABEL_42;
    }

    v9 = bswap32(*(flavor + 1));
    v10 = size - 8;
    v11 = size - 8 >= v9;
    size = size - 8 - v9;
    if (!v11)
    {
      v27 = BLJaliscoLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v31 = 136315650;
        v32 = "[BLPurchaseDAAPParser parseFlavor:size:]";
        v33 = 2048;
        v34 = v9;
        v35 = 2048;
        sizeCopy = v10;
LABEL_40:
        _os_log_impl(&dword_241D1F000, v27, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v31, 0x20u);
      }

      goto LABEL_41;
    }

    v13 = *flavor;
    v12 = flavor + 8;
    v14 = bswap32(v13);
    if (v14 > 1634952298)
    {
      if (v14 <= 1634954354)
      {
        if (v14 == 1634952299)
        {
          [(BLPurchaseDAAPParser *)self setUInt8:v12 size:v9 inDict:dictionary forKey:@"daap.songdatakind"];
          goto LABEL_31;
        }

        if (v14 == 1634952813)
        {
          selfCopy4 = self;
          v21 = v12;
          v22 = v9;
          v23 = dictionary;
          v24 = @"daap.songformat";
LABEL_24:
          [(BLPurchaseDAAPParser *)selfCopy4 setString:v21 size:v22 inDict:v23 forKey:v24];
        }
      }

      else
      {
        switch(v14)
        {
          case 1634954355:
            [(BLPurchaseDAAPParser *)self setUInt64:v12 size:v9 inDict:dictionary forKey:@"daap.songlongsize"];
            break;
          case 1634956146:
            selfCopy7 = self;
            v16 = v12;
            v17 = v9;
            v18 = dictionary;
            v19 = @"daap.songsamplerate";
            goto LABEL_30;
          case 1634956397:
            selfCopy7 = self;
            v16 = v12;
            v17 = v9;
            v18 = dictionary;
            v19 = @"daap.songtime";
            goto LABEL_30;
        }
      }
    }

    else if (v14 <= 1634951793)
    {
      if (v14 == 1634030192)
      {
        selfCopy4 = self;
        v21 = v12;
        v22 = v9;
        v23 = dictionary;
        v24 = @"com.apple.itunes.item-redownload-param-2";
        goto LABEL_24;
      }

      if (v14 == 1634035300)
      {
        selfCopy7 = self;
        v16 = v12;
        v17 = v9;
        v18 = dictionary;
        v19 = @"com.apple.itunes.item-flavor-id";
        goto LABEL_30;
      }
    }

    else
    {
      switch(v14)
      {
        case 1634951794:
          [(BLPurchaseDAAPParser *)self setUInt16:v12 size:v9 inDict:dictionary forKey:@"daap.songbitrate"];
          break;
        case 1634952036:
          selfCopy7 = self;
          v16 = v12;
          v17 = v9;
          v18 = dictionary;
          v19 = @"daap.songcodectype";
          goto LABEL_30;
        case 1634952051:
          selfCopy7 = self;
          v16 = v12;
          v17 = v9;
          v18 = dictionary;
          v19 = @"daap.songcodecsubtype";
LABEL_30:
          [(BLPurchaseDAAPParser *)selfCopy7 setUInt32:v16 size:v17 inDict:v18 forKey:v19];
          break;
      }
    }

LABEL_31:
    flavor = &v12[v9];
    if (size <= 0)
    {
      goto LABEL_32;
    }
  }

  v26 = BLJaliscoLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v31 = 136315650;
    v32 = "[BLPurchaseDAAPParser parseFlavor:size:]";
    v33 = 2048;
    v34 = 4;
    v35 = 2048;
    sizeCopy = size;
    _os_log_impl(&dword_241D1F000, v26, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v31, 0x20u);
  }

LABEL_42:
  v25 = 0;
LABEL_43:

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)setBool:(const char *)bool size:(int64_t)size inDict:(id)dict forKey:(id)key
{
  v21 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  keyCopy = key;
  if (size > 3)
  {
    if (size == 4)
    {
      v11 = *bool;
      goto LABEL_13;
    }

    if (size == 8)
    {
      v12 = *bool == 0;
LABEL_14:
      v14 = !v12;
      v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:v14];
      [dictCopy setObject:v15 forKey:keyCopy];

      goto LABEL_18;
    }
  }

  else
  {
    if (size == 1)
    {
      v11 = *bool;
      goto LABEL_13;
    }

    if (size == 2)
    {
      v11 = *bool;
LABEL_13:
      v12 = v11 == 0;
      goto LABEL_14;
    }
  }

  v13 = BLJaliscoLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v17 = 134218242;
    sizeCopy = size;
    v19 = 2112;
    v20 = keyCopy;
    _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_ERROR, "setBool being passed a %ld byte value for: <%@>!", &v17, 0x16u);
  }

LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)setSInt8:(const char *)int8 size:(int64_t)size inDict:(id)dict forKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  keyCopy = key;
  if (size == 1)
  {
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithChar:*int8];
    [dictCopy setObject:v11 forKey:keyCopy];
  }

  else
  {
    v12 = BLJaliscoLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 134218242;
      sizeCopy = size;
      v16 = 2112;
      v17 = keyCopy;
      _os_log_impl(&dword_241D1F000, v12, OS_LOG_TYPE_ERROR, "setSInt8 being passed a %ld byte value for: <%@>!", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setUInt8:(const char *)int8 size:(int64_t)size inDict:(id)dict forKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  keyCopy = key;
  if (size == 1)
  {
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*int8];
    [dictCopy setValue:v11 forKey:keyCopy];
  }

  else
  {
    v12 = BLJaliscoLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 134218242;
      sizeCopy = size;
      v16 = 2112;
      v17 = keyCopy;
      _os_log_impl(&dword_241D1F000, v12, OS_LOG_TYPE_ERROR, "setUInt8 being passed a %ld byte value for: <%@>!", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setSInt16:(const char *)int16 size:(int64_t)size inDict:(id)dict forKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  keyCopy = key;
  if (size == 2)
  {
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithShort:(bswap32(*int16) >> 16)];
    [dictCopy setObject:v11 forKey:keyCopy];
  }

  else
  {
    v12 = BLJaliscoLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 134218242;
      sizeCopy = size;
      v16 = 2112;
      v17 = keyCopy;
      _os_log_impl(&dword_241D1F000, v12, OS_LOG_TYPE_ERROR, "setSInt16 being passed a %ld byte value for: <%@>!", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setUInt16:(const char *)int16 size:(int64_t)size inDict:(id)dict forKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  keyCopy = key;
  if (size == 2)
  {
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:bswap32(*int16) >> 16];
    [dictCopy setObject:v11 forKey:keyCopy];
  }

  else
  {
    v12 = BLJaliscoLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 134218242;
      sizeCopy = size;
      v16 = 2112;
      v17 = keyCopy;
      _os_log_impl(&dword_241D1F000, v12, OS_LOG_TYPE_ERROR, "setUInt16 being passed a %ld byte value for: <%@>!", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setDate:(const char *)date size:(int64_t)size inDict:(id)dict forKey:(id)key
{
  if (size == 4)
  {
    v8 = MEMORY[0x277CBEAA8];
    v9 = bswap32(*date);
    keyCopy = key;
    dictCopy = dict;
    v12 = [v8 dateWithTimeIntervalSince1970:v9];
    [dictCopy setObject:v12 forKey:keyCopy];
  }
}

- (void)setUInt32:(const char *)int32 size:(int64_t)size inDict:(id)dict forKey:(id)key
{
  if (size == 4)
  {
    v8 = bswap32(*int32);
    v9 = MEMORY[0x277CCABB0];
    keyCopy = key;
    dictCopy = dict;
    v12 = [[v9 alloc] initWithUnsignedInt:v8];
    [dictCopy setObject:v12 forKey:keyCopy];
  }
}

- (void)setFloat32:(const char *)float32 size:(int64_t)size inDict:(id)dict forKey:(id)key
{
  v21 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  keyCopy = key;
  if (size == 4)
  {
    v11 = *float32;
    v12 = objc_alloc(MEMORY[0x277CCABB0]);
    LODWORD(v13) = v11;
    v14 = [v12 initWithFloat:v13];
    [dictCopy setObject:v14 forKey:keyCopy];
  }

  else
  {
    v15 = BLJaliscoLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218242;
      sizeCopy = size;
      v19 = 2112;
      v20 = keyCopy;
      _os_log_impl(&dword_241D1F000, v15, OS_LOG_TYPE_ERROR, "setFloat32 being passed a %ld byte value for: <%@>!", &v17, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setUInt64:(const char *)int64 size:(int64_t)size inDict:(id)dict forKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  keyCopy = key;
  if (size == 8)
  {
    v12 = [(BLPurchaseDAAPParser *)self SwapInt64BigToHost:int64 size:8];
    v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:v12];
    [dictCopy setObject:v13 forKey:keyCopy];
  }

  else
  {
    v14 = BLJaliscoLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 134218242;
      sizeCopy = size;
      v18 = 2112;
      v19 = keyCopy;
      _os_log_impl(&dword_241D1F000, v14, OS_LOG_TYPE_ERROR, "setUInt64 being passed a %ld byte value for: <%@>!", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setString:(const char *)string size:(int64_t)size inDict:(id)dict forKey:(id)key
{
  if (size >= 1)
  {
    keyCopy = key;
    dictCopy = dict;
    v13 = [(BLPurchaseDAAPParser *)self parseUTF8String:string length:size];
    [dictCopy setValue:v13 forKey:keyCopy];
  }
}

- (void)unknownCode:(unsigned int)code bytes:(const char *)bytes size:(int64_t)size context:(const char *)context
{
  v33 = *MEMORY[0x277D85DE8];
  if (code != 1634028888)
  {
    if (size <= 1)
    {
      if (!size)
      {
        v7 = BLJaliscoLog();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v19 = 136316418;
        contextCopy7 = context;
        v21 = 1024;
        v22 = code >> 24;
        v23 = 1024;
        v24 = (code << 8) >> 24;
        v25 = 1024;
        v26 = code >> 8;
        v27 = 1024;
        codeCopy6 = code;
        v29 = 2048;
        sizeCopy = 0;
        v8 = "Unknown code at %s: '%c%c%c%c', size=%ld";
        goto LABEL_21;
      }

      if (size != 1)
      {
LABEL_24:
        v7 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:size];
        v18 = BLJaliscoLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = 136316674;
          contextCopy7 = context;
          v21 = 1024;
          v22 = code >> 24;
          v23 = 1024;
          v24 = (code << 8) >> 24;
          v25 = 1024;
          v26 = code >> 8;
          v27 = 1024;
          codeCopy6 = code;
          v29 = 2048;
          sizeCopy = size;
          v31 = 2112;
          v32 = v7;
          _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_ERROR, "Unknown code at %s: '%c%c%c%c', size=%ld, value=%@", &v19, 0x38u);
        }

        goto LABEL_23;
      }

      v7 = BLJaliscoLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v14 = *bytes;
      v19 = 136316674;
      contextCopy7 = context;
      v21 = 1024;
      v22 = code >> 24;
      v23 = 1024;
      v24 = (code << 8) >> 24;
      v25 = 1024;
      v26 = code >> 8;
      v27 = 1024;
      codeCopy6 = code;
      v29 = 2048;
      sizeCopy = 1;
      v31 = 1024;
      LODWORD(v32) = v14;
      v8 = "Unknown code at %s: '%c%c%c%c', size=%ld, value=%u";
    }

    else
    {
      switch(size)
      {
        case 2:
          v7 = BLJaliscoLog();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v15 = *bytes;
          v19 = 136316674;
          contextCopy7 = context;
          v21 = 1024;
          v22 = code >> 24;
          v23 = 1024;
          v24 = (code << 8) >> 24;
          v25 = 1024;
          v26 = code >> 8;
          v27 = 1024;
          codeCopy6 = code;
          v29 = 2048;
          sizeCopy = 2;
          v31 = 1024;
          LODWORD(v32) = v15;
          v8 = "Unknown code at %s: '%c%c%c%c', size=%ld, value=%u";
          break;
        case 4:
          v7 = BLJaliscoLog();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v16 = *bytes;
          v19 = 136316674;
          contextCopy7 = context;
          v21 = 1024;
          v22 = code >> 24;
          v23 = 1024;
          v24 = (code << 8) >> 24;
          v25 = 1024;
          v26 = code >> 8;
          v27 = 1024;
          codeCopy6 = code;
          v29 = 2048;
          sizeCopy = 4;
          v31 = 1024;
          LODWORD(v32) = v16;
          v8 = "Unknown code at %s: '%c%c%c%c', size=%ld, value=0x%x";
          break;
        case 8:
          v7 = BLJaliscoLog();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v19 = 136316418;
          contextCopy7 = context;
          v21 = 1024;
          v22 = code >> 24;
          v23 = 1024;
          v24 = (code << 8) >> 24;
          v25 = 1024;
          v26 = code >> 8;
          v27 = 1024;
          codeCopy6 = code;
          v29 = 2048;
          sizeCopy = 8;
          v8 = "Unknown code at %s: '%c%c%c%c', size=%ld";
LABEL_21:
          v9 = v7;
          v10 = 46;
          goto LABEL_22;
        default:
          goto LABEL_24;
      }
    }

    v9 = v7;
    v10 = 52;
    goto LABEL_22;
  }

  v7 = BLJaliscoLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315138;
    contextCopy7 = context;
    v8 = "Unexpected xmlcode! at %s";
    v9 = v7;
    v10 = 12;
LABEL_22:
    _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, v8, &v19, v10);
  }

LABEL_23:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)parseMACAddressListing:(const char *)listing count:(int64_t)count
{
  v29 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (count < 1)
  {
LABEL_10:
    v17 = array;
  }

  else
  {
    while (count > 3)
    {
      v8 = count - 4;
      if ((count - 4) <= 3)
      {
        v19 = BLJaliscoLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315650;
          v24 = "[BLPurchaseDAAPParser parseMACAddressListing:count:]";
          v25 = 2048;
          v26 = 4;
          v27 = 2048;
          countCopy = v8;
          goto LABEL_18;
        }

LABEL_19:

        goto LABEL_20;
      }

      v9 = bswap32(*(listing + 1));
      v10 = count - 8;
      v11 = count - 8 >= v9;
      count = count - 8 - v9;
      if (!v11)
      {
        v19 = BLJaliscoLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315650;
          v24 = "[BLPurchaseDAAPParser parseMACAddressListing:count:]";
          v25 = 2048;
          v26 = v9;
          v27 = 2048;
          countCopy = v10;
LABEL_18:
          _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v23, 0x20u);
        }

        goto LABEL_19;
      }

      v14 = *listing;
      v13 = listing + 8;
      v12 = v14;
      if (v14 == 1634562925)
      {
        v15 = [(BLPurchaseDAAPParser *)self SwapInt64BigToHost:v13 size:v9];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
        [array addObject:v16];
      }

      else
      {
        [(BLPurchaseDAAPParser *)self unknownCode:bswap32(v12) bytes:v13 size:v9 context:"[BLPurchaseDAAPParser parseMACAddressListing:count:]"];
      }

      listing = &v13[v9];
      if (count <= 0)
      {
        goto LABEL_10;
      }
    }

    v18 = BLJaliscoLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "[BLPurchaseDAAPParser parseMACAddressListing:count:]";
      v25 = 2048;
      v26 = 4;
      v27 = 2048;
      countCopy = count;
      _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v23, 0x20u);
    }

LABEL_20:
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)parseServerInfo:(const char *)info count:(int64_t)count
{
  v58 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (count < 1 || !info)
  {
LABEL_111:
    v46 = dictionary;
    goto LABEL_122;
  }

  while (count > 3)
  {
    v8 = count - 4;
    if ((count - 4) <= 3)
    {
      v48 = BLJaliscoLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v52 = 136315650;
        v53 = "[BLPurchaseDAAPParser parseServerInfo:count:]";
        v54 = 2048;
        v55 = 4;
        v56 = 2048;
        countCopy = v8;
        goto LABEL_119;
      }

LABEL_120:

      goto LABEL_121;
    }

    v9 = bswap32(*(info + 1));
    v10 = count - 8;
    v11 = count - 8 >= v9;
    count = count - 8 - v9;
    if (!v11)
    {
      v48 = BLJaliscoLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v52 = 136315650;
        v53 = "[BLPurchaseDAAPParser parseServerInfo:count:]";
        v54 = 2048;
        v55 = v9;
        v56 = 2048;
        countCopy = v10;
LABEL_119:
        _os_log_impl(&dword_241D1F000, v48, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v52, 0x20u);
      }

      goto LABEL_120;
    }

    v13 = *info;
    v12 = info + 8;
    v14 = bswap32(v13);
    if (v14 > 1836278130)
    {
      if (v14 <= 1836281195)
      {
        if (v14 > 1836279159)
        {
          if (v14 <= 1836280183)
          {
            if (v14 == 1836279160)
            {
              selfCopy37 = self;
              v31 = v12;
              v32 = v9;
              v33 = dictionary;
              v34 = @"dmap.supportsextensions";
              goto LABEL_107;
            }

            if (v14 != 1836280169)
            {
              goto LABEL_110;
            }

            selfCopy33 = self;
            v21 = v12;
            v22 = v9;
            v23 = dictionary;
            v24 = @"dmap.supportsinlinecontaineritems";
          }

          else
          {
            if (v14 == 1836280184)
            {
              selfCopy37 = self;
              v31 = v12;
              v32 = v9;
              v33 = dictionary;
              v34 = @"dmap.supportsindex";
              goto LABEL_107;
            }

            if (v14 != 1836280937)
            {
              if (v14 != 1836280946)
              {
                goto LABEL_110;
              }

              selfCopy37 = self;
              v31 = v12;
              v32 = v9;
              v33 = dictionary;
              v34 = @"dmap.loginrequired";
              goto LABEL_107;
            }

            selfCopy33 = self;
            v21 = v12;
            v22 = v9;
            v23 = dictionary;
            v24 = @"dmap.supportslongitemid";
          }
        }

        else
        {
          if (v14 <= 1836278385)
          {
            if (v14 == 1836278131)
            {
              selfCopy37 = self;
              v31 = v12;
              v32 = v9;
              v33 = dictionary;
              v34 = @"dmap.authenticationschemes";
            }

            else
            {
              if (v14 != 1836278133)
              {
                goto LABEL_110;
              }

              selfCopy37 = self;
              v31 = v12;
              v32 = v9;
              v33 = dictionary;
              v34 = @"dmap.authenticationmethod";
            }

            goto LABEL_107;
          }

          if (v14 == 1836278386)
          {
            selfCopy37 = self;
            v31 = v12;
            v32 = v9;
            v33 = dictionary;
            v34 = @"dmap.supportsbrowse";
LABEL_107:
            [(BLPurchaseDAAPParser *)selfCopy37 setUInt8:v31 size:v32 inDict:v33 forKey:v34];
            goto LABEL_108;
          }

          if (v14 == 1836278883)
          {
            selfCopy38 = self;
            v16 = v12;
            v17 = v9;
            v18 = dictionary;
            v19 = @"dmap.databasescount";
            goto LABEL_105;
          }

          if (v14 != 1836279140)
          {
            goto LABEL_110;
          }

          selfCopy33 = self;
          v21 = v12;
          v22 = v9;
          v23 = dictionary;
          v24 = @"supportsEditing";
        }

        goto LABEL_103;
      }

      if (v14 > 1836282988)
      {
        if (v14 <= 1836282995)
        {
          if (v14 == 1836282989)
          {
            selfCopy38 = self;
            v16 = v12;
            v17 = v9;
            v18 = dictionary;
            v19 = @"dmap.timeoutinterval";
          }

          else
          {
            if (v14 != 1836282991)
            {
LABEL_110:
              [(BLPurchaseDAAPParser *)self unknownCode:v14 bytes:v12 size:v9 context:"[BLPurchaseDAAPParser parseServerInfo:count:]"];
              goto LABEL_108;
            }

            selfCopy38 = self;
            v16 = v12;
            v17 = v9;
            v18 = dictionary;
            v19 = @"dmap.utcoffset";
          }
        }

        else
        {
          switch(v14)
          {
            case 0x7070726F:
              selfCopy38 = self;
              v16 = v12;
              v17 = v9;
              v18 = dictionary;
              v19 = @"ppro";
              break;
            case 0x6D737570:
              selfCopy37 = self;
              v31 = v12;
              v32 = v9;
              v33 = dictionary;
              v34 = @"dmap.supportsupdate";
              goto LABEL_107;
            case 0x6D737474:
              selfCopy38 = self;
              v16 = v12;
              v17 = v9;
              v18 = dictionary;
              v19 = @"dmap.status";
              break;
            default:
              goto LABEL_110;
          }
        }

        goto LABEL_105;
      }

      if (v14 > 1836282232)
      {
        if (v14 == 1836282233)
        {
          selfCopy37 = self;
          v31 = v12;
          v32 = v9;
          v33 = dictionary;
          v34 = @"dmap.supportsquery";
          goto LABEL_107;
        }

        if (v14 == 1836282483)
        {
          selfCopy37 = self;
          v31 = v12;
          v32 = v9;
          v33 = dictionary;
          v34 = @"dmap.supportsresolve";
          goto LABEL_107;
        }

        if (v14 != 1836282979)
        {
          goto LABEL_110;
        }

        selfCopy38 = self;
        v16 = v12;
        v17 = v9;
        v18 = dictionary;
        v19 = @"dmap.utctime";
        goto LABEL_105;
      }

      if (v14 != 1836281196)
      {
        if (v14 != 1836281961)
        {
          goto LABEL_110;
        }

        selfCopy37 = self;
        v31 = v12;
        v32 = v9;
        v33 = dictionary;
        v34 = @"dmap.supportspersistentids";
        goto LABEL_107;
      }

      v45 = [(BLPurchaseDAAPParser *)self parseMACAddressListing:v12 count:v9];
      [dictionary setValue:v45 forKey:@"macAddresses"];
    }

    else
    {
      if (v14 <= 1635013461)
      {
        if (v14 <= 1634030423)
        {
          if (v14 <= 1634027089)
          {
            if (v14 != 1634026320)
            {
              if (v14 != 1634027088)
              {
                goto LABEL_110;
              }

              selfCopy37 = self;
              v31 = v12;
              v32 = v9;
              v33 = dictionary;
              v34 = @"com.apple.itunes.req-fplay";
              goto LABEL_107;
            }

            selfCopy33 = self;
            v21 = v12;
            v22 = v9;
            v23 = dictionary;
            v24 = @"supportsPurchases";
          }

          else
          {
            switch(v14)
            {
              case 0x61654652:
                selfCopy33 = self;
                v21 = v12;
                v22 = v9;
                v23 = dictionary;
                v24 = @"com.apple.itunes.supports-fprap";
                break;
              case 0x61654D51:
                selfCopy33 = self;
                v21 = v12;
                v22 = v9;
                v23 = dictionary;
                v24 = @"com.apple.itunes.playlist-contains-media-type";
                break;
              case 0x61655356:
                selfCopy38 = self;
                v16 = v12;
                v17 = v9;
                v18 = dictionary;
                v19 = @"com.apple.itunes.music-sharing-version";
                goto LABEL_105;
              default:
                goto LABEL_110;
            }
          }

          goto LABEL_103;
        }

        if (v14 > 1634759278)
        {
          if (v14 == 1634759279)
          {
            selfCopy38 = self;
            v16 = v12;
            v17 = v9;
            v18 = dictionary;
            v19 = @"daap.protocolversion";
LABEL_105:
            [(BLPurchaseDAAPParser *)selfCopy38 setUInt32:v16 size:v17 inDict:v18 forKey:v19];
            goto LABEL_108;
          }

          if (v14 != 1634953074)
          {
            if (v14 != 1634956133)
            {
              goto LABEL_110;
            }

            selfCopy33 = self;
            v21 = v12;
            v22 = v9;
            v23 = dictionary;
            v24 = @"daap.supportssetproperty";
            goto LABEL_103;
          }

          selfCopy31 = self;
          v36 = v12;
          v37 = v9;
          v38 = dictionary;
          v39 = @"daap.supportsgroups";
          goto LABEL_101;
        }

        if (v14 != 1634030424)
        {
          if (v14 != 1634038895)
          {
            goto LABEL_110;
          }

          selfCopy38 = self;
          v16 = v12;
          v17 = v9;
          v18 = dictionary;
          v19 = @"com.apple.itunes.cloud-purchase-token";
          goto LABEL_105;
        }

        selfCopy34 = self;
        v26 = v12;
        v27 = v9;
        v28 = dictionary;
        v29 = @"com.apple.itunes.supportedextensions";
LABEL_91:
        [(BLPurchaseDAAPParser *)selfCopy34 setUInt64:v26 size:v27 inDict:v28 forKey:v29];
        goto LABEL_108;
      }

      if (v14 <= 1835626092)
      {
        if (v14 <= 1685484664)
        {
          if (v14 == 1635013462)
          {
            selfCopy38 = self;
            v16 = v12;
            v17 = v9;
            v18 = dictionary;
            v19 = @"Client-ATV-Sharing-Version";
            goto LABEL_105;
          }

          if (v14 != 1635018084)
          {
            goto LABEL_110;
          }

          selfCopy31 = self;
          v36 = v12;
          v37 = v9;
          v38 = dictionary;
          v39 = @"daap.supportsextradata";
LABEL_101:
          [(BLPurchaseDAAPParser *)selfCopy31 setUInt16:v36 size:v37 inDict:v38 forKey:v39];
          goto LABEL_108;
        }

        if (v14 == 1685484665)
        {
          selfCopy37 = self;
          v31 = v12;
          v32 = v9;
          v33 = dictionary;
          v34 = @"deviceType";
          goto LABEL_107;
        }

        if (v14 == 1835361395)
        {
          selfCopy33 = self;
          v21 = v12;
          v22 = v9;
          v23 = dictionary;
          v24 = @"dmap.editcommandssupported";
LABEL_103:
          [(BLPurchaseDAAPParser *)selfCopy33 setBool:v21 size:v22 inDict:v23 forKey:v24];
          goto LABEL_108;
        }

        if (v14 != 1835625572)
        {
          goto LABEL_110;
        }

        selfCopy34 = self;
        v26 = v12;
        v27 = v9;
        v28 = dictionary;
        v29 = @"dmap.longitemid";
        goto LABEL_91;
      }

      if (v14 <= 1835888229)
      {
        if (v14 == 1835626093)
        {
          selfCopy39 = self;
          v41 = v12;
          v42 = v9;
          v43 = dictionary;
          v44 = @"dmap.itemname";
        }

        else
        {
          if (v14 != 1835885676)
          {
            goto LABEL_110;
          }

          selfCopy39 = self;
          v41 = v12;
          v42 = v9;
          v43 = dictionary;
          v44 = @"model";
        }
      }

      else
      {
        if (v14 != 1835888230)
        {
          if (v14 != 1836085871)
          {
            if (v14 != 1836278124)
            {
              goto LABEL_110;
            }

            selfCopy37 = self;
            v31 = v12;
            v32 = v9;
            v33 = dictionary;
            v34 = @"dmap.supportsautologout";
            goto LABEL_107;
          }

          selfCopy38 = self;
          v16 = v12;
          v17 = v9;
          v18 = dictionary;
          v19 = @"dmap.protocolversion";
          goto LABEL_105;
        }

        selfCopy39 = self;
        v41 = v12;
        v42 = v9;
        v43 = dictionary;
        v44 = @"manufacturer";
      }

      [(BLPurchaseDAAPParser *)selfCopy39 setString:v41 size:v42 inDict:v43 forKey:v44];
    }

LABEL_108:
    info = &v12[v9];
    if (count <= 0)
    {
      goto LABEL_111;
    }
  }

  v47 = BLJaliscoLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v52 = 136315650;
    v53 = "[BLPurchaseDAAPParser parseServerInfo:count:]";
    v54 = 2048;
    v55 = 4;
    v56 = 2048;
    countCopy = count;
    _os_log_impl(&dword_241D1F000, v47, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v52, 0x20u);
  }

LABEL_121:
  v46 = 0;
LABEL_122:

  v50 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)parseContentCodes:(const char *)codes count:(int64_t)count
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (count < 1)
  {
LABEL_9:
    v15 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
  }

  else
  {
    while (count > 3)
    {
      v8 = count - 4;
      if ((count - 4) <= 3)
      {
        v17 = BLJaliscoLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315650;
          v22 = "[BLPurchaseDAAPParser parseContentCodes:count:]";
          v23 = 2048;
          v24 = 4;
          v25 = 2048;
          countCopy = v8;
          goto LABEL_17;
        }

LABEL_18:

        goto LABEL_19;
      }

      v9 = bswap32(*(codes + 1));
      v10 = count - 8;
      v11 = count - 8 >= v9;
      count = count - 8 - v9;
      if (!v11)
      {
        v17 = BLJaliscoLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315650;
          v22 = "[BLPurchaseDAAPParser parseContentCodes:count:]";
          v23 = 2048;
          v24 = v9;
          v25 = 2048;
          countCopy = v10;
LABEL_17:
          _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v21, 0x20u);
        }

        goto LABEL_18;
      }

      v14 = *codes;
      v13 = codes + 8;
      v12 = v14;
      if (v14 != 1953788781)
      {
        [(BLPurchaseDAAPParser *)self unknownCode:bswap32(v12) bytes:v13 size:v9 context:"[BLPurchaseDAAPParser parseContentCodes:count:]"];
      }

      codes = &v13[v9];
      if (count <= 0)
      {
        goto LABEL_9;
      }
    }

    v16 = BLJaliscoLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315650;
      v22 = "[BLPurchaseDAAPParser parseContentCodes:count:]";
      v23 = 2048;
      v24 = 4;
      v25 = 2048;
      countCopy = count;
      _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v21, 0x20u);
    }

LABEL_19:
    v15 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)parseError:(const char *)error count:(int64_t)count
{
  v29 = *MEMORY[0x277D85DE8];
  if (count < 9)
  {
    goto LABEL_23;
  }

  countCopy = count;
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  while (1)
  {
    if (countCopy <= 3)
    {
      v19 = BLJaliscoLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v23 = 136315650;
      v24 = "[BLPurchaseDAAPParser parseError:count:]";
      v25 = 2048;
      v26 = 4;
      v27 = 2048;
      v28 = countCopy;
      goto LABEL_21;
    }

    if ((countCopy - 4) <= 3)
    {
      v19 = BLJaliscoLog();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v23 = 136315650;
      v24 = "[BLPurchaseDAAPParser parseError:count:]";
      v25 = 2048;
      v26 = 4;
      v27 = 2048;
      v28 = countCopy - 4;
      goto LABEL_21;
    }

    v8 = bswap32(*(error + 1));
    v9 = countCopy - 8;
    v10 = countCopy - 8 >= v8;
    countCopy = countCopy - 8 - v8;
    if (!v10)
    {
      break;
    }

    v12 = *error;
    v11 = error + 8;
    v13 = bswap32(v12);
    if (v13 == 1634030147)
    {
      v14 = v11;
      v15 = v8;
      v16 = v7;
      v17 = @"com.apple.itunes.reconnect-interval";
    }

    else
    {
      if (v13 != 1836282996)
      {
        [(BLPurchaseDAAPParser *)self unknownCode:v13 bytes:v11 size:v8 context:"[BLPurchaseDAAPParser parseError:count:]"];
        goto LABEL_13;
      }

      v14 = v11;
      v15 = v8;
      v16 = v7;
      v17 = @"dmap.status";
    }

    [(BLPurchaseDAAPParser *)self setUInt32:v14 size:v15 inDict:v16 forKey:v17];
LABEL_13:
    error = &v11[v8];
    if (countCopy < 1)
    {
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];

      goto LABEL_24;
    }
  }

  v19 = BLJaliscoLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v23 = 136315650;
    v24 = "[BLPurchaseDAAPParser parseError:count:]";
    v25 = 2048;
    v26 = v8;
    v27 = 2048;
    v28 = v9;
LABEL_21:
    _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v23, 0x20u);
  }

LABEL_22:

LABEL_23:
  v18 = 0;
LABEL_24:
  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)parseLogin:(const char *)login count:(int64_t)count
{
  v23 = *MEMORY[0x277D85DE8];
  if (count < 1)
  {
    v6 = 0;
LABEL_12:
    v6 = v6;
    v12 = v6;
  }

  else
  {
    countCopy = count;
    v6 = 0;
    while (countCopy > 3)
    {
      v7 = countCopy - 4;
      if ((countCopy - 4) <= 3)
      {
        v14 = BLJaliscoLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v17 = 136315650;
          v18 = "[BLPurchaseDAAPParser parseLogin:count:]";
          v19 = 2048;
          v20 = 4;
          v21 = 2048;
          v22 = v7;
          _os_log_impl(&dword_241D1F000, v14, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v17, 0x20u);
        }

        goto LABEL_19;
      }

      v8 = bswap32(*login);
      v9 = bswap32(*(login + 1));
      v10 = (login + 8);
      if (v8 != 1836282996)
      {
        if (v8 == 1835821412)
        {
          v11 = [MEMORY[0x277CCABB0] numberWithInteger:bswap32(*v10)];

          v6 = v11;
        }

        else
        {
          [(BLPurchaseDAAPParser *)self unknownCode:v8 bytes:v10 size:v9 context:"[BLPurchaseDAAPParser parseLogin:count:]"];
        }
      }

      login = v10 + v9;
      countCopy = countCopy - 8 - v9;
      if (countCopy <= 0)
      {
        goto LABEL_12;
      }
    }

    v13 = BLJaliscoLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "[BLPurchaseDAAPParser parseLogin:count:]";
      v19 = 2048;
      v20 = 4;
      v21 = 2048;
      v22 = countCopy;
      _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v17, 0x20u);
    }

LABEL_19:
    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)parseListingItem:(const char *)item count:(int64_t)count
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = +[BLPurchaseDAAPItem item];
  if (count < 1)
  {
LABEL_414:
    [v7 freeze];
    v66 = v7;
    goto LABEL_422;
  }

  v71 = 0;
  v8 = @"booklets";
  while (count > 3)
  {
    v9 = count - 4;
    if ((count - 4) <= 3)
    {
      v68 = BLJaliscoLog();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v75 = "[BLPurchaseDAAPParser parseListingItem:count:]";
        v76 = 2048;
        v77 = 4;
        v78 = 2048;
        countCopy = v9;
        _os_log_impl(&dword_241D1F000, v68, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", buf, 0x20u);
      }

      goto LABEL_421;
    }

    v11 = *item;
    v10 = *(item + 1);
    v12 = (item + 8);
    v13 = bswap32(v11);
    v14 = bswap32(v10);
    if (v13 > 1634952812)
    {
      if (v13 <= 1668116593)
      {
        if (v13 <= 1667328367)
        {
          if (v13 <= 1634956148)
          {
            if (v13 <= 1634954338)
            {
              if (v13 > 1634953327)
              {
                if (v13 != 1634953328)
                {
                  if (v13 == 1634954096)
                  {
                    selfCopy129 = self;
                    v30 = v12;
                    v31 = v14;
                    v32 = v7;
                    v33 = @"daap.songuserskipcount";
                    goto LABEL_404;
                  }

                  goto LABEL_391;
                }

                selfCopy117 = self;
                v40 = v12;
                v41 = v14;
                v42 = v7;
                v43 = @"daap.songhasbeenplayed";
                goto LABEL_384;
              }

              if (v13 == 1634952813)
              {
                selfCopy125 = self;
                v24 = v12;
                v25 = v14;
                v26 = v7;
                v27 = @"daap.songformat";
              }

              else
              {
                if (v13 != 1634953070)
                {
                  goto LABEL_391;
                }

                selfCopy125 = self;
                v24 = v12;
                v25 = v14;
                v26 = v7;
                v27 = @"daap.songgenre";
              }
            }

            else if (v13 <= 1634955380)
            {
              if (v13 != 1634954339)
              {
                if (v13 == 1634955363)
                {
                  selfCopy129 = self;
                  v30 = v12;
                  v31 = v14;
                  v32 = v7;
                  v33 = @"daap.songuserplaycount";
                  goto LABEL_404;
                }

                goto LABEL_391;
              }

              selfCopy125 = self;
              v24 = v12;
              v25 = v14;
              v26 = v7;
              v27 = @"daap.songlongcontentdescription";
            }

            else
            {
              switch(v13)
              {
                case 1634955381:
                  selfCopy125 = self;
                  v24 = v12;
                  v25 = v14;
                  v26 = v7;
                  v27 = @"daap.songpodcasturl";
                  break;
                case 1634956129:
                  selfCopy125 = self;
                  v24 = v12;
                  v25 = v14;
                  v26 = v7;
                  v27 = @"daap.sortartist";
                  break;
                case 1634956142:
                  selfCopy125 = self;
                  v24 = v12;
                  v25 = v14;
                  v26 = v7;
                  v27 = @"daap.sortname";
                  break;
                default:
                  goto LABEL_391;
              }
            }

            goto LABEL_379;
          }

          if (v13 <= 1634956651)
          {
            if (v13 > 1634956396)
            {
              if (v13 == 1634956397)
              {
                selfCopy129 = self;
                v30 = v12;
                v31 = v14;
                v32 = v7;
                v33 = @"daap.songtime";
                goto LABEL_404;
              }

              if (v13 != 1634956398)
              {
                goto LABEL_391;
              }

              selfCopy109 = self;
              v51 = v12;
              v52 = v14;
              v53 = v7;
              v54 = @"daap.songtracknumber";
            }

            else
            {
              if (v13 == 1634956149)
              {
                selfCopy125 = self;
                v24 = v12;
                v25 = v14;
                v26 = v7;
                v27 = @"daap.sortalbum";
                goto LABEL_379;
              }

              if (v13 != 1634956387)
              {
                goto LABEL_391;
              }

              selfCopy109 = self;
              v51 = v12;
              v52 = v14;
              v53 = v7;
              v54 = @"daap.songtrackcount";
            }
          }

          else
          {
            if (v13 <= 1634957681)
            {
              if (v13 != 1634956652)
              {
                if (v13 != 1634956658)
                {
                  goto LABEL_391;
                }

                selfCopy117 = self;
                v40 = v12;
                v41 = v14;
                v42 = v7;
                v43 = @"daap.songuserrating";
                goto LABEL_384;
              }

              selfCopy125 = self;
              v24 = v12;
              v25 = v14;
              v26 = v7;
              v27 = @"daap.songdataurl";
              goto LABEL_379;
            }

            if (v13 != 1634957682)
            {
              if (v13 == 1667328112)
              {
                selfCopy117 = self;
                v40 = v12;
                v41 = v14;
                v42 = v7;
                v43 = @"hasPassword";
                goto LABEL_384;
              }

              if (v13 != 1667328353)
              {
                goto LABEL_391;
              }

              selfCopy128 = self;
              v19 = v12;
              v20 = v14;
              v21 = v7;
              v22 = @"selected";
              goto LABEL_382;
            }

            selfCopy109 = self;
            v51 = v12;
            v52 = v14;
            v53 = v7;
            v54 = @"daap.songyear";
          }

          goto LABEL_370;
        }

        if (v13 <= 1667584855)
        {
          if (v13 <= 1667330930)
          {
            if (v13 > 1667329909)
            {
              if (v13 != 1667329910)
              {
                if (v13 == 1667330162)
                {
                  selfCopy129 = self;
                  v30 = v12;
                  v31 = v14;
                  v32 = v7;
                  v33 = @"dacp.protocolversion";
                  goto LABEL_404;
                }

                goto LABEL_391;
              }

              selfCopy128 = self;
              v19 = v12;
              v20 = v14;
              v21 = v7;
              v22 = @"supportsMultiSpeakerVolume";
            }

            else if (v13 == 1667328368)
            {
              selfCopy128 = self;
              v19 = v12;
              v20 = v14;
              v21 = v7;
              v22 = @"isPlaying";
            }

            else
            {
              if (v13 != 1667328374)
              {
                goto LABEL_391;
              }

              selfCopy128 = self;
              v19 = v12;
              v20 = v14;
              v21 = v7;
              v22 = @"supportsVideo";
            }
          }

          else if (v13 <= 1667331683)
          {
            if (v13 == 1667330931)
            {
              selfCopy128 = self;
              v19 = v12;
              v20 = v14;
              v21 = v7;
              v22 = @"supportsSpeakerSelection";
            }

            else
            {
              if (v13 != 1667330933)
              {
                goto LABEL_391;
              }

              selfCopy128 = self;
              v19 = v12;
              v20 = v14;
              v21 = v7;
              v22 = @"supportsSetUserRating";
            }
          }

          else
          {
            switch(v13)
            {
              case 1667331684:
                selfCopy128 = self;
                v19 = v12;
                v20 = v14;
                v21 = v7;
                v22 = @"selectedForVideo";
                break;
              case 1667584343:
                selfCopy129 = self;
                v30 = v12;
                v31 = v14;
                v32 = v7;
                v33 = @"com.apple.itunes.playqueue-warning-threshold";
                goto LABEL_404;
              case 1667584839:
                selfCopy128 = self;
                v19 = v12;
                v20 = v14;
                v21 = v7;
                v22 = @"com.apple.itunes.supports-genius-control";
                break;
              default:
                goto LABEL_391;
            }
          }

          goto LABEL_382;
        }

        if (v13 <= 1668114787)
        {
          if (v13 <= 1668113004)
          {
            if (v13 == 1667584856)
            {
              selfCopy123 = self;
              v35 = v12;
              v36 = v14;
              v37 = v7;
              v38 = @"kExtDACPSupportediTunesExtensionsCode";
              goto LABEL_406;
            }

            if (v13 != 1668112996)
            {
              goto LABEL_391;
            }

            selfCopy125 = self;
            v24 = v12;
            v25 = v14;
            v26 = v7;
            v27 = @"libraryDisplayName";
          }

          else
          {
            switch(v13)
            {
              case 1668113005:
                selfCopy125 = self;
                v24 = v12;
                v25 = v14;
                v26 = v7;
                v27 = @"libraryServiceDomain";
                break;
              case 1668113011:
                selfCopy125 = self;
                v24 = v12;
                v25 = v14;
                v26 = v7;
                v27 = @"libraryServiceName";
                break;
              case 1668113012:
                selfCopy125 = self;
                v24 = v12;
                v25 = v14;
                v26 = v7;
                v27 = @"libraryServiceType";
                break;
              default:
                goto LABEL_391;
            }
          }

          goto LABEL_379;
        }

        if (v13 > 1668115821)
        {
          if (v13 == 1668115822)
          {
            selfCopy129 = self;
            v30 = v12;
            v31 = v14;
            v32 = v7;
            v33 = @"minimum";
            goto LABEL_404;
          }

          if (v13 == 1668115832)
          {
            selfCopy129 = self;
            v30 = v12;
            v31 = v14;
            v32 = v7;
            v33 = @"maximum";
            goto LABEL_404;
          }

          if (v13 != 1668116077)
          {
            goto LABEL_391;
          }

          selfCopy125 = self;
          v24 = v12;
          v25 = v14;
          v26 = v7;
          v27 = @"name";
          goto LABEL_379;
        }

        if (v13 == 1668114788)
        {
          selfCopy125 = self;
          v24 = v12;
          v25 = v14;
          v26 = v7;
          v27 = @"identifier";
          goto LABEL_379;
        }

        v28 = 1668114795;
LABEL_262:
        if (v13 != v28)
        {
          goto LABEL_391;
        }

        goto LABEL_407;
      }

      if (v13 > 1835624552)
      {
        if (v13 > 1836216433)
        {
          if (v13 <= 1836279917)
          {
            if (v13 <= 1836278132)
            {
              if (v13 == 1836216434)
              {
                selfCopy123 = self;
                v35 = v12;
                v36 = v14;
                v37 = v7;
                v38 = @"dmap.remotepersistentid";
                goto LABEL_406;
              }

              if (v13 != 1836278131)
              {
                goto LABEL_391;
              }

              selfCopy117 = self;
              v40 = v12;
              v41 = v14;
              v42 = v7;
              v43 = @"dmap.authenticationschemes";
            }

            else
            {
              if (v13 != 1836278133)
              {
                if (v13 == 1836279907)
                {
                  v15 = [(BLPurchaseDAAPParser *)self parseUnicodeCharacter:v12 count:v14];
                  v47 = v7;
                  v48 = v15;
                  v49 = @"headerItemCharacter";
                  goto LABEL_399;
                }

                if (v13 == 1836279913)
                {
                  selfCopy129 = self;
                  v30 = v12;
                  v31 = v14;
                  v32 = v7;
                  v33 = @"headerItemIndex";
LABEL_404:
                  [(BLPurchaseDAAPParser *)selfCopy129 setUInt32:v30 size:v31 inDict:v32 forKey:v33];
                  goto LABEL_407;
                }

                goto LABEL_391;
              }

              selfCopy117 = self;
              v40 = v12;
              v41 = v14;
              v42 = v7;
              v43 = @"dmap.authenticationmethod";
            }

            goto LABEL_384;
          }

          if (v13 <= 1836282995)
          {
            if (v13 == 1836279918)
            {
              selfCopy129 = self;
              v30 = v12;
              v31 = v14;
              v32 = v7;
              v33 = @"headerItemCount";
              goto LABEL_404;
            }

            if (v13 == 1836281185)
            {
              selfCopy123 = self;
              v35 = v12;
              v36 = v14;
              v37 = v7;
              v38 = @"macAddress";
              goto LABEL_406;
            }

            goto LABEL_391;
          }

          if (v13 == 1836282996)
          {
            selfCopy129 = self;
            v30 = v12;
            v31 = v14;
            v32 = v7;
            v33 = @"dmap.status";
            goto LABEL_404;
          }

          if (v13 != 1885434736)
          {
            if (v13 == 1885758580)
            {
              v15 = [MEMORY[0x277CBEA90] dataWithBytes:v12 length:v14];
              v47 = v7;
              v48 = v15;
              v49 = @"fileData";
LABEL_399:
              [v47 setObject:v48 forKey:v49];
              goto LABEL_400;
            }

            goto LABEL_391;
          }

          selfCopy125 = self;
          v24 = v12;
          v25 = v14;
          v26 = v7;
          v27 = @"aspectRatio";
          goto LABEL_379;
        }

        if (v13 <= 1835625826)
        {
          if (v13 > 1835625315)
          {
            if (v13 != 1835625316)
            {
              if (v13 == 1835625572)
              {
                selfCopy123 = self;
                v35 = v12;
                v36 = v14;
                v37 = v7;
                v38 = @"dmap.longitemid";
                goto LABEL_406;
              }

              goto LABEL_391;
            }

            selfCopy117 = self;
            v40 = v12;
            v41 = v14;
            v42 = v7;
            v43 = @"dmap.itemkind";
            goto LABEL_384;
          }

          if (v13 == 1835624553)
          {
            selfCopy128 = self;
            v19 = v12;
            v20 = v14;
            v21 = v7;
            v22 = @"dmap.itemhidden";
LABEL_382:
            [(BLPurchaseDAAPParser *)selfCopy128 setBool:v19 size:v20 inDict:v21 forKey:v22];
            goto LABEL_407;
          }

          if (v13 != 1835624804)
          {
            goto LABEL_391;
          }

          if (v14 == 8)
          {
            v55 = [(BLPurchaseDAAPParser *)self SwapInt64BigToHost:v12 size:8];
            goto LABEL_402;
          }

          if (v14 == 4)
          {
            v55 = bswap32(*v12);
LABEL_402:
            [v7 setItemID:v55];
          }
        }

        else if (v13 <= 1835821427)
        {
          if (v13 == 1835625827)
          {
            selfCopy129 = self;
            v30 = v12;
            v31 = v14;
            v32 = v7;
            v33 = @"dmap.itemcount";
            goto LABEL_404;
          }

          if (v13 != 1835626093)
          {
            goto LABEL_391;
          }

          if (v10)
          {
            v15 = [(BLPurchaseDAAPParser *)self parseUTF8String:v12 length:v14];
            [v7 setName:v15];
            goto LABEL_400;
          }
        }

        else if (v13 != 1835821428)
        {
          if (v13 != 1836082031)
          {
            if (v13 == 1836082546)
            {
              selfCopy123 = self;
              v35 = v12;
              v36 = v14;
              v37 = v7;
              v38 = @"dmap.persistentid";
              goto LABEL_406;
            }

            goto LABEL_391;
          }

          if (v14 == 8)
          {
            selfCopy123 = self;
            v35 = v12;
            v36 = 8;
            v37 = v7;
            v38 = @"dmap.parentcontainerid";
            goto LABEL_406;
          }

          if (v14 == 4)
          {
            selfCopy129 = self;
            v30 = v12;
            v31 = 4;
            v32 = v7;
            v33 = @"dmap.parentcontainerid";
            goto LABEL_404;
          }
        }
      }

      else if (v13 <= 1668444011)
      {
        if (v13 <= 1668117359)
        {
          if (v13 > 1668117345)
          {
            if (v13 == 1668117346)
            {
              selfCopy128 = self;
              v19 = v12;
              v20 = v14;
              v21 = v7;
              v22 = @"supportsBonjourSourcesUpdates";
            }

            else
            {
              if (v13 != 1668117347)
              {
                goto LABEL_391;
              }

              selfCopy128 = self;
              v19 = v12;
              v20 = v14;
              v21 = v7;
              v22 = @"supportsControlPromptRequests";
            }
          }

          else
          {
            if (v13 == 1668116594)
            {
              selfCopy129 = self;
              v30 = v12;
              v31 = v14;
              v32 = v7;
              v33 = @"dmcp.protocolversion";
              goto LABEL_404;
            }

            if (v13 != 1668117100)
            {
              goto LABEL_391;
            }

            selfCopy128 = self;
            v19 = v12;
            v20 = v14;
            v21 = v7;
            v22 = @"supportsRemoteLibrarySelection";
          }

          goto LABEL_382;
        }

        if (v13 <= 1668118123)
        {
          if (v13 == 1668117360)
          {
            selfCopy128 = self;
            v19 = v12;
            v20 = v14;
            v21 = v7;
            v22 = @"supportsPlayStatusUpdate";
          }

          else
          {
            if (v13 != 1668117366)
            {
              goto LABEL_391;
            }

            selfCopy128 = self;
            v19 = v12;
            v20 = v14;
            v21 = v7;
            v22 = @"supportsVolume";
          }

          goto LABEL_382;
        }

        if (v13 == 1668118124)
        {
          v15 = [(BLPurchaseDAAPParser *)self parseListingCollection:v12 count:v14 capacity:0];
          v47 = v7;
          v48 = v15;
          v49 = @"context";
          goto LABEL_399;
        }

        if (v13 == 1668118127)
        {
          v56 = bswap32(*v12) / 100.0;
          v57 = objc_alloc(MEMORY[0x277CCABB0]);
          *&v58 = v56;
          v15 = [v57 initWithFloat:v58];
          v47 = v7;
          v48 = v15;
          v49 = @"volume";
          goto LABEL_399;
        }

        if (v13 != 1668118132)
        {
          goto LABEL_391;
        }

        if (v10 == 0x2000000)
        {
          v71 = bswap32(*v12) >> 16;
          v15 = [objc_opt_class() typeForDRCPValueType:v71];
          v44 = v7;
          v45 = v15;
          v46 = @"type";
LABEL_393:
          [v44 setValue:v45 forKey:v46];
          goto LABEL_400;
        }
      }

      else if (v13 > 1835295338)
      {
        if (v13 <= 1835299699)
        {
          if (v13 == 1835295339)
          {
            selfCopy129 = self;
            v30 = v12;
            v31 = v14;
            v32 = v7;
            v33 = @"dmap.databasekind";
            goto LABEL_404;
          }

          if (v13 != 1835295596)
          {
            goto LABEL_391;
          }

          [(BLPurchaseDAAPParser *)self parseDict:v12 size:v14 intoDict:v7];
        }

        else
        {
          if (v13 != 1835299700)
          {
            if (v13 == 1835364978)
            {
              selfCopy129 = self;
              v30 = v12;
              v31 = v14;
              v32 = v7;
              v33 = @"dmap.errorresponse";
              goto LABEL_404;
            }

            if (v13 != 1835492467)
            {
              goto LABEL_391;
            }

            selfCopy117 = self;
            v40 = v12;
            v41 = v14;
            v42 = v7;
            v43 = @"dmap.groupdownloadstatus";
            goto LABEL_384;
          }

          [v7 setDownloadStatus:*v12];
        }
      }

      else if (v13 <= 1835103851)
      {
        if (v13 == 1668444012)
        {
          selfCopy128 = self;
          v19 = v12;
          v20 = v14;
          v21 = v7;
          v22 = @"readOnly";
          goto LABEL_382;
        }

        if (v13 != 1668702572)
        {
          goto LABEL_391;
        }

        if (v71 <= 3)
        {
          switch(v71)
          {
            case 1:
              [(BLPurchaseDAAPParser *)self setBool:v12 size:v14 inDict:v7 forKey:@"value"];
              v64 = 1;
              goto LABEL_413;
            case 2:
              [(BLPurchaseDAAPParser *)self setUInt16:v12 size:v14 inDict:v7 forKey:@"value"];
              v64 = 2;
              goto LABEL_413;
            case 3:
              [(BLPurchaseDAAPParser *)self setUInt32:v12 size:v14 inDict:v7 forKey:@"value"];
              v64 = 3;
LABEL_413:
              v71 = v64;
              break;
          }
        }

        else
        {
          if ((v71 - 5) < 3)
          {
            selfCopy125 = self;
            v24 = v12;
            v25 = v14;
            v26 = v7;
            v27 = @"value";
LABEL_379:
            [(BLPurchaseDAAPParser *)selfCopy125 setString:v24 size:v25 inDict:v26 forKey:v27];
            goto LABEL_407;
          }

          if (v71 == 4)
          {
            [(BLPurchaseDAAPParser *)self setFloat32:v12 size:v14 inDict:v7 forKey:@"value"];
            v64 = 4;
            goto LABEL_413;
          }
        }
      }

      else
      {
        if (v13 == 1835103852)
        {
          selfCopy128 = self;
          v19 = v12;
          v20 = v14;
          v21 = v7;
          v22 = @"dmap.itemavailable";
          goto LABEL_382;
        }

        if (v13 == 1835234403)
        {
          selfCopy129 = self;
          v30 = v12;
          v31 = v14;
          v32 = v7;
          v33 = @"dmap.containercount";
          goto LABEL_404;
        }

        if (v13 != 1835234409)
        {
          goto LABEL_391;
        }

        [v7 setContainerItemID:bswap32(*v12)];
      }
    }

    else if (v13 <= 1634030404)
    {
      if (v13 <= 1634027587)
      {
        if (v13 <= 1634026336)
        {
          if (v13 <= 1634026307)
          {
            if (v13 > 1634025800)
            {
              if (v13 == 1634025801)
              {
                selfCopy123 = self;
                v35 = v12;
                v36 = v14;
                v37 = v7;
                v38 = @"com.apple.itunes.itms-artistid";
                goto LABEL_406;
              }

              if (v13 == 1634025833)
              {
                selfCopy123 = self;
                v35 = v12;
                v36 = v14;
                v37 = v7;
                v38 = @"com.apple.itunes.adam-id";
                goto LABEL_406;
              }

LABEL_391:
              [BLPurchaseDAAPParser unknownCode:"unknownCode:bytes:size:context:" bytes:? size:? context:?];
              goto LABEL_407;
            }

            if (v13 != 1633841260)
            {
              if (v13 == 1634025796)
              {
                selfCopy123 = self;
                v35 = v12;
                v36 = v14;
                v37 = v7;
                v38 = @"com.apple.itunes.adam-ids-array";
                goto LABEL_406;
              }

              goto LABEL_391;
            }

            selfCopy128 = self;
            v19 = v12;
            v20 = v14;
            v21 = v7;
            v22 = @"daap.baseplaylist";
            goto LABEL_382;
          }

          if (v13 <= 1634026322)
          {
            if (v13 == 1634026308)
            {
              selfCopy125 = self;
              v24 = v12;
              v25 = v14;
              v26 = v7;
              v27 = @"com.apple.itunes.flat-chapter-data";
            }

            else
            {
              if (v13 != 1634026322)
              {
                goto LABEL_391;
              }

              selfCopy125 = self;
              v24 = v12;
              v25 = v14;
              v26 = v7;
              v27 = @"com.apple.itunes.content-rating";
            }
          }

          else
          {
            if (v13 == 1634026323)
            {
              if (v10 != 0x4000000)
              {
                v15 = [(BLPurchaseDAAPParser *)self parseUTF8String:v12 length:v14];
                v44 = v7;
                v45 = v15;
                v46 = @"com.apple.itunes.artworkchecksum";
                goto LABEL_393;
              }

              v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:bswap32(*v12)];
              [v15 stringValue];
              v17 = v16 = v8;
              [v7 setValue:v17 forKey:@"com.apple.itunes.artworkchecksum"];
LABEL_332:

              v8 = v16;
              goto LABEL_400;
            }

            if (v13 != 1634026324)
            {
              if (v13 == 1634026325)
              {
                selfCopy123 = self;
                v35 = v12;
                v36 = v14;
                v37 = v7;
                v38 = @"com.apple.itunes.cloud-user-id";
LABEL_406:
                [(BLPurchaseDAAPParser *)selfCopy123 setUInt64:v35 size:v36 inDict:v37 forKey:v38];
                goto LABEL_407;
              }

              goto LABEL_391;
            }

            selfCopy125 = self;
            v24 = v12;
            v25 = v14;
            v26 = v7;
            v27 = @"com.apple.itunes.cloud-artwork-token";
          }

          goto LABEL_379;
        }

        if (v13 <= 1634026356)
        {
          if (v13 > 1634026353)
          {
            if (v13 != 1634026354)
            {
              if (v13 == 1634026355)
              {
                selfCopy129 = self;
                v30 = v12;
                v31 = v14;
                v32 = v7;
                v33 = @"com.apple.itunes.cloud-connect-status";
                goto LABEL_404;
              }

              goto LABEL_391;
            }

            selfCopy125 = self;
            v24 = v12;
            v25 = v14;
            v26 = v7;
            v27 = @"com.apple.itunes.copyright";
          }

          else
          {
            if (v13 != 1634026337)
            {
              if (v13 == 1634026340)
              {
                selfCopy123 = self;
                v35 = v12;
                v36 = v14;
                v37 = v7;
                v38 = @"com.apple.itunes.cloud-id";
                goto LABEL_406;
              }

              goto LABEL_391;
            }

            selfCopy125 = self;
            v24 = v12;
            v25 = v14;
            v26 = v7;
            v27 = @"com.apple.itunes.cloud-artwork-url";
          }

          goto LABEL_379;
        }

        if (v13 <= 1634026834)
        {
          if (v13 == 1634026357)
          {
            selfCopy125 = self;
            v24 = v12;
            v25 = v14;
            v26 = v7;
            v27 = @"com.apple.itunes.chapter-metadata-url";
          }

          else
          {
            if (v13 != 1634026830)
            {
              goto LABEL_391;
            }

            selfCopy125 = self;
            v24 = v12;
            v25 = v14;
            v26 = v7;
            v27 = @"com.apple.itunes.episode-num-str";
          }

          goto LABEL_379;
        }

        if (v13 == 1634026835)
        {
          selfCopy129 = self;
          v30 = v12;
          v31 = v14;
          v32 = v7;
          v33 = @"com.apple.itunes.episode-sort";
          goto LABEL_404;
        }

        if (v13 == 1634027090)
        {
          selfCopy128 = self;
          v19 = v12;
          v20 = v14;
          v21 = v7;
          v22 = @"com.apple.itunes.supports-fprap";
          goto LABEL_382;
        }

        if (v13 != 1634027587)
        {
          goto LABEL_391;
        }

        if (*v12 == 1)
        {
          selfCopy117 = self;
          v40 = v12;
          v41 = v14;
          v42 = v7;
          v43 = @"com.apple.itunes.has-chapter-data";
LABEL_384:
          [(BLPurchaseDAAPParser *)selfCopy117 setUInt8:v40 size:v41 inDict:v42 forKey:v43];
        }
      }

      else if (v13 <= 1634029640)
      {
        if (v13 <= 1634028872)
        {
          if (v13 <= 1634027605)
          {
            if (v13 == 1634027588)
            {
              selfCopy117 = self;
              v40 = v12;
              v41 = v14;
              v42 = v7;
              v43 = @"com.apple.itunes.is-hd-video";
              goto LABEL_384;
            }

            if (v13 != 1634027603)
            {
              goto LABEL_391;
            }

            selfCopy128 = self;
            v19 = v12;
            v20 = v14;
            v21 = v7;
            v22 = @"com.apple.itunes.is-homeshare";
            goto LABEL_382;
          }

          if (v13 != 1634027606)
          {
            if (v13 == 1634027853)
            {
              selfCopy123 = self;
              v35 = v12;
              v36 = v14;
              v37 = v7;
              v38 = @"com.apple.itunes.itunes-machine-id";
              goto LABEL_406;
            }

            goto LABEL_391;
          }

          if (*v12 == 1)
          {
            selfCopy117 = self;
            v40 = v12;
            v41 = v14;
            v42 = v7;
            v43 = @"com.apple.itunes.has-video";
            goto LABEL_384;
          }
        }

        else
        {
          if (v13 <= 1634028887)
          {
            if (v13 != 1634028873)
            {
              if (v13 != 1634028875)
              {
                goto LABEL_391;
              }

              selfCopy117 = self;
              v40 = v12;
              v41 = v14;
              v42 = v7;
              v43 = @"com.apple.itunes.mediakind";
              goto LABEL_384;
            }

            selfCopy128 = self;
            v19 = v12;
            v20 = v14;
            v21 = v7;
            v22 = @"com.apple.itunes.mastered-for-itunes";
            goto LABEL_382;
          }

          if (v13 == 1634028888)
          {
            v15 = [(BLPurchaseDAAPParser *)self parseXMLContent:v12 count:v14];
            if (!v15)
            {
              goto LABEL_400;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_400;
            }

            v47 = v7;
            v48 = v15;
            v49 = @"com.apple.itunes.movie-info-xml";
            goto LABEL_399;
          }

          if (v13 != 1634028907)
          {
            if (v13 != 1634029635)
            {
              goto LABEL_391;
            }

            selfCopy117 = self;
            v40 = v12;
            v41 = v14;
            v42 = v7;
            v43 = @"com.apple.itunes.is-podcast";
            goto LABEL_384;
          }

          if (v14 == 4)
          {
            selfCopy129 = self;
            v30 = v12;
            v31 = 4;
            v32 = v7;
            v33 = @"com.apple.itunes.extended-media-kind";
            goto LABEL_404;
          }

          if (v14 == 1)
          {
            selfCopy117 = self;
            v40 = v12;
            v41 = 1;
            v42 = v7;
            v43 = @"com.apple.itunes.extended-media-kind";
            goto LABEL_384;
          }
        }
      }

      else
      {
        if (v13 > 1634030147)
        {
          if (v13 <= 1634030159)
          {
            if (v13 == 1634030148)
            {
              selfCopy129 = self;
              v30 = v12;
              v31 = v14;
              v32 = v7;
              v33 = @"com.apple.itunes.rental-duration";
              goto LABEL_404;
            }

            if (v13 == 1634030157)
            {
              selfCopy123 = self;
              v35 = v12;
              v36 = v14;
              v37 = v7;
              v38 = @"com.apple.itunes.remote-itunes-machine-id";
              goto LABEL_406;
            }
          }

          else
          {
            switch(v13)
            {
              case 1634030160:
                selfCopy129 = self;
                v30 = v12;
                v31 = v14;
                v32 = v7;
                v33 = @"com.apple.itunes.rental-pb-start";
                goto LABEL_404;
              case 1634030163:
                selfCopy129 = self;
                v30 = v12;
                v31 = v14;
                v32 = v7;
                v33 = @"com.apple.itunes.rental-start";
                goto LABEL_404;
              case 1634030165:
                selfCopy129 = self;
                v30 = v12;
                v31 = v14;
                v32 = v7;
                v33 = @"com.apple.itunes.rental-pb-duration";
                goto LABEL_404;
            }
          }

          goto LABEL_391;
        }

        if (v13 > 1634029664)
        {
          switch(v13)
          {
            case 1634029665:
              selfCopy128 = self;
              v19 = v12;
              v20 = v14;
              v21 = v7;
              v22 = @"com.apple.itunes.publication-contains-audio";
              break;
            case 1634029676:
              selfCopy128 = self;
              v19 = v12;
              v20 = v14;
              v21 = v7;
              v22 = @"com.apple.itunes.publication-is-read-aloud";
              break;
            case 1634029680:
              selfCopy128 = self;
              v19 = v12;
              v20 = v14;
              v21 = v7;
              v22 = @"com.apple.itunes.publication-is-picture-book";
              break;
            default:
              goto LABEL_391;
          }

          goto LABEL_382;
        }

        if (v13 != 1634029641)
        {
          if (v13 != 1634029651)
          {
            goto LABEL_391;
          }

          selfCopy117 = self;
          v40 = v12;
          v41 = v14;
          v42 = v7;
          v43 = @"com.apple.itunes.special-playlist";
          goto LABEL_384;
        }
      }
    }

    else if (v13 > 1634951520)
    {
      if (v13 > 1634952049)
      {
        if (v13 > 1634952300)
        {
          if (v13 > 1634952303)
          {
            if (v13 == 1634952304)
            {
              selfCopy114 = self;
              v60 = v12;
              v61 = v14;
              v62 = v7;
              v63 = @"daap.songdatepurchased";
LABEL_389:
              [(BLPurchaseDAAPParser *)selfCopy114 setDate:v60 size:v61 inDict:v62 forKey:v63];
              goto LABEL_407;
            }

            if (v13 == 1634952306)
            {
              selfCopy114 = self;
              v60 = v12;
              v61 = v14;
              v62 = v7;
              v63 = @"daap.songdatereleased";
              goto LABEL_389;
            }

            if (v13 != 1634952308)
            {
              goto LABEL_391;
            }

            selfCopy125 = self;
            v24 = v12;
            v25 = v14;
            v26 = v7;
            v27 = @"daap.songdescription";
            goto LABEL_379;
          }

          if (v13 == 1634952301)
          {
            selfCopy114 = self;
            v60 = v12;
            v61 = v14;
            v62 = v7;
            v63 = @"daap.songdatemodified";
            goto LABEL_389;
          }

          if (v13 != 1634952302)
          {
            goto LABEL_391;
          }

          selfCopy109 = self;
          v51 = v12;
          v52 = v14;
          v53 = v7;
          v54 = @"daap.songdiscnumber";
          goto LABEL_370;
        }

        if (v13 <= 1634952289)
        {
          if (v13 == 1634952050)
          {
            selfCopy117 = self;
            v40 = v12;
            v41 = v14;
            v42 = v7;
            v43 = @"daap.songcontentrating";
            goto LABEL_384;
          }

          if (v13 != 1634952052)
          {
            goto LABEL_391;
          }

          selfCopy125 = self;
          v24 = v12;
          v25 = v14;
          v26 = v7;
          v27 = @"daap.songcategory";
          goto LABEL_379;
        }

        if (v13 == 1634952290)
        {
          selfCopy128 = self;
          v19 = v12;
          v20 = v14;
          v21 = v7;
          v22 = @"daap.songdisabled";
          goto LABEL_382;
        }

        if (v13 == 1634952291)
        {
          selfCopy109 = self;
          v51 = v12;
          v52 = v14;
          v53 = v7;
          v54 = @"daap.songdisccount";
LABEL_370:
          [(BLPurchaseDAAPParser *)selfCopy109 setUInt16:v51 size:v52 inDict:v53 forKey:v54];
          goto LABEL_407;
        }

        v28 = 1634952299;
        goto LABEL_262;
      }

      if (v13 <= 1634951537)
      {
        if (v13 > 1634951528)
        {
          if (v13 == 1634951529)
          {
            [v7 setSongalbumid:{-[BLPurchaseDAAPParser SwapInt64BigToHost:size:](self, "SwapInt64BigToHost:size:", v12, v14)}];
          }

          else
          {
            if (v13 != 1634951532)
            {
              goto LABEL_391;
            }

            if (v10)
            {
              v15 = [(BLPurchaseDAAPParser *)self parseUTF8String:v12 length:v14];
              [v7 setSongalbum:v15];
LABEL_400:
            }
          }
        }

        else
        {
          if (v13 != 1634951521)
          {
            if (v13 != 1634951523)
            {
              goto LABEL_391;
            }

            selfCopy109 = self;
            v51 = v12;
            v52 = v14;
            v53 = v7;
            v54 = @"daap.songartworkcount";
            goto LABEL_370;
          }

          if (v10)
          {
            v15 = [(BLPurchaseDAAPParser *)self parseUTF8String:v12 length:v14];
            [v7 setSongalbumartist:v15];
            goto LABEL_400;
          }
        }
      }

      else
      {
        if (v13 > 1634951790)
        {
          switch(v13)
          {
            case 1634951791:
              selfCopy129 = self;
              v30 = v12;
              v31 = v14;
              v32 = v7;
              v33 = @"daap.songbookmark";
              goto LABEL_404;
            case 1634952046:
              selfCopy125 = self;
              v24 = v12;
              v25 = v14;
              v26 = v7;
              v27 = @"daap.songcontentdescription";
              break;
            case 1634952048:
              selfCopy125 = self;
              v24 = v12;
              v25 = v14;
              v26 = v7;
              v27 = @"daap.songcomposer";
              break;
            default:
              goto LABEL_391;
          }

          goto LABEL_379;
        }

        if (v13 != 1634951538)
        {
          if (v13 != 1634951787)
          {
            goto LABEL_391;
          }

          selfCopy117 = self;
          v40 = v12;
          v41 = v14;
          v42 = v7;
          v43 = @"daap.bookmarkable";
          goto LABEL_384;
        }

        if (v10)
        {
          v15 = [(BLPurchaseDAAPParser *)self parseUTF8String:v12 length:v14];
          [v7 setSongartist:v15];
          goto LABEL_400;
        }
      }
    }

    else
    {
      if (v13 > 1634165090)
      {
        if (v13 > 1634354531)
        {
          if (v13 <= 1634363508)
          {
            if (v13 == 1634354532)
            {
              selfCopy114 = self;
              v60 = v12;
              v61 = v14;
              v62 = v7;
              v63 = @"com.apple.itunes.preorder-expected-date";
              goto LABEL_389;
            }

            if (v13 != 1634355312)
            {
              goto LABEL_391;
            }

            selfCopy117 = self;
            v40 = v12;
            v41 = v14;
            v42 = v7;
            v43 = @"com.apple.itunes.store.supports-hls-playback";
            goto LABEL_384;
          }

          if (v13 != 1634363509)
          {
            if (v13 == 1634759277)
            {
              selfCopy117 = self;
              v40 = v12;
              v41 = v14;
              v42 = v7;
              v43 = @"daap.playlistrepeatmode";
            }

            else
            {
              if (v13 != 1634759533)
              {
                goto LABEL_391;
              }

              selfCopy117 = self;
              v40 = v12;
              v41 = v14;
              v42 = v7;
              v43 = @"daap.playlistshufflemode";
            }

            goto LABEL_384;
          }

          selfCopy125 = self;
          v24 = v12;
          v25 = v14;
          v26 = v7;
          v27 = @"com.apple.itunes.store.hls-playback-url";
        }

        else
        {
          if (v13 <= 1634168168)
          {
            if (v13 == 1634165091)
            {
              selfCopy129 = self;
              v30 = v12;
              v31 = v14;
              v32 = v7;
              v33 = @"daap.groupalbumcount";
              goto LABEL_404;
            }

            if (v13 == 1634168161)
            {
              selfCopy129 = self;
              v30 = v12;
              v31 = v14;
              v32 = v7;
              v33 = @"daap.groupmatchedqueryalbumcount";
              goto LABEL_404;
            }

            goto LABEL_391;
          }

          if (v13 == 1634168169)
          {
            selfCopy129 = self;
            v30 = v12;
            v31 = v14;
            v32 = v7;
            v33 = @"daap.groupmatchedqueryitemcount";
            goto LABEL_404;
          }

          if (v13 != 1634169456)
          {
            if (v13 == 1634353740)
            {
              v15 = [(BLPurchaseDAAPParser *)self parseBookletListing:v12 count:v14];
              v72 = v8;
              v73 = v15;
              [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
              v17 = v16 = v8;
              [v7 updateItemWithDictionary:v17];
              goto LABEL_332;
            }

            goto LABEL_391;
          }

          selfCopy125 = self;
          v24 = v12;
          v25 = v14;
          v26 = v7;
          v27 = @"daap.songgrouping";
        }

        goto LABEL_379;
      }

      if (v13 <= 1634030415)
      {
        if (v13 <= 1634030408)
        {
          if (v13 == 1634030405)
          {
            selfCopy123 = self;
            v35 = v12;
            v36 = v14;
            v37 = v7;
            v38 = @"com.apple.itunes.store-pers-id";
            goto LABEL_406;
          }

          if (v13 != 1634030407)
          {
            goto LABEL_391;
          }

          selfCopy128 = self;
          v19 = v12;
          v20 = v14;
          v21 = v7;
          v22 = @"com.apple.itunes.saved-genius";
          goto LABEL_382;
        }

        if (v13 != 1634030409)
        {
          if (v13 != 1634030414)
          {
            goto LABEL_391;
          }

          selfCopy125 = self;
          v24 = v12;
          v25 = v14;
          v26 = v7;
          v27 = @"com.apple.itunes.series-name";
          goto LABEL_379;
        }

        if (v14 == 8)
        {
          v65 = [(BLPurchaseDAAPParser *)self SwapInt64BigToHost:v12 size:8];
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v65];
          v47 = v7;
          v48 = v15;
          v49 = @"com.apple.itunes.itms-songid";
          goto LABEL_399;
        }

        if (v14 == 4)
        {
          selfCopy129 = self;
          v30 = v12;
          v31 = 4;
          v32 = v7;
          v33 = @"com.apple.itunes.itms-songid";
          goto LABEL_404;
        }
      }

      else
      {
        if (v13 <= 1634030705)
        {
          if (v13 != 1634030416)
          {
            if (v13 == 1634030421)
            {
              selfCopy129 = self;
              v30 = v12;
              v31 = v14;
              v32 = v7;
              v33 = @"com.apple.itunes.season-num";
              goto LABEL_404;
            }

            goto LABEL_391;
          }

          selfCopy128 = self;
          v19 = v12;
          v20 = v14;
          v21 = v7;
          v22 = @"com.apple.itunes.smart-playlist";
          goto LABEL_382;
        }

        if (v13 != 1634030706)
        {
          if (v13 == 1634035308)
          {
            v15 = [(BLPurchaseDAAPParser *)self parseFlavorListing:v12 size:v14];
            v47 = v7;
            v48 = v15;
            v49 = @"com.apple.itunes.item-flavor-listing";
            goto LABEL_399;
          }

          if (v13 == 1634038895)
          {
            selfCopy129 = self;
            v30 = v12;
            v31 = v14;
            v32 = v7;
            v33 = @"com.apple.itunes.cloud-purchased-token";
            goto LABEL_404;
          }

          goto LABEL_391;
        }
      }
    }

LABEL_407:
    item = v12 + v14;
    count = count - 8 - v14;
    if (count <= 0)
    {
      goto LABEL_414;
    }
  }

  v67 = BLJaliscoLog();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v75 = "[BLPurchaseDAAPParser parseListingItem:count:]";
    v76 = 2048;
    v77 = 4;
    v78 = 2048;
    countCopy = count;
    _os_log_impl(&dword_241D1F000, v67, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", buf, 0x20u);
  }

LABEL_421:
  v66 = 0;
LABEL_422:

  v69 = *MEMORY[0x277D85DE8];

  return v66;
}

- (id)parseBookletListing:(const char *)listing count:(int64_t)count
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  if (count < 1)
  {
LABEL_10:
    v16 = v7;
  }

  else
  {
    while (count > 3)
    {
      v8 = count - 4;
      if ((count - 4) <= 3)
      {
        v18 = BLJaliscoLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315650;
          v23 = "[BLPurchaseDAAPParser parseBookletListing:count:]";
          v24 = 2048;
          v25 = 4;
          v26 = 2048;
          countCopy = v8;
          goto LABEL_18;
        }

LABEL_19:

        goto LABEL_20;
      }

      v9 = bswap32(*(listing + 1));
      v10 = count - 8;
      v11 = count - 8 >= v9;
      count = count - 8 - v9;
      if (!v11)
      {
        v18 = BLJaliscoLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315650;
          v23 = "[BLPurchaseDAAPParser parseBookletListing:count:]";
          v24 = 2048;
          v25 = v9;
          v26 = 2048;
          countCopy = v10;
LABEL_18:
          _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v22, 0x20u);
        }

        goto LABEL_19;
      }

      v14 = *listing;
      v13 = listing + 8;
      v12 = v14;
      if (v14 == 1765960289)
      {
        v15 = [(BLPurchaseDAAPParser *)self parseBookletItem:v13 count:v9];
        [v7 addObject:v15];
      }

      else
      {
        [(BLPurchaseDAAPParser *)self unknownCode:bswap32(v12) bytes:v13 size:v9 context:"[BLPurchaseDAAPParser parseBookletListing:count:]"];
      }

      listing = &v13[v9];
      if (count <= 0)
      {
        goto LABEL_10;
      }
    }

    v17 = BLJaliscoLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315650;
      v23 = "[BLPurchaseDAAPParser parseBookletListing:count:]";
      v24 = 2048;
      v25 = 4;
      v26 = 2048;
      countCopy = count;
      _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v22, 0x20u);
    }

LABEL_20:
    v16 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)parseBookletItem:(const char *)item count:(int64_t)count
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  if (count < 1)
  {
LABEL_19:
    v25 = v7;
    goto LABEL_30;
  }

  while (count > 3)
  {
    v8 = count - 4;
    if ((count - 4) <= 3)
    {
      v27 = BLJaliscoLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v31 = 136315650;
        v32 = "[BLPurchaseDAAPParser parseBookletItem:count:]";
        v33 = 2048;
        v34 = 4;
        v35 = 2048;
        countCopy = v8;
        goto LABEL_27;
      }

LABEL_28:

      goto LABEL_29;
    }

    v9 = bswap32(*(item + 1));
    v10 = count - 8;
    v11 = count - 8 >= v9;
    count = count - 8 - v9;
    if (!v11)
    {
      v27 = BLJaliscoLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v31 = 136315650;
        v32 = "[BLPurchaseDAAPParser parseBookletItem:count:]";
        v33 = 2048;
        v34 = v9;
        v35 = 2048;
        countCopy = v10;
LABEL_27:
        _os_log_impl(&dword_241D1F000, v27, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v31, 0x20u);
      }

      goto LABEL_28;
    }

    v13 = *item;
    v12 = item + 8;
    v14 = bswap32(v13);
    if (v14 > 1634353773)
    {
      if (v14 == 1634353779)
      {
        selfCopy3 = self;
        v21 = v12;
        v22 = v9;
        v23 = v7;
        v24 = @"com.apple.itunes.store.booklet-item-size";
        goto LABEL_17;
      }

      if (v14 != 1634353774)
      {
LABEL_14:
        [(BLPurchaseDAAPParser *)self unknownCode:v14 bytes:v12 size:v9 context:"[BLPurchaseDAAPParser parseBookletItem:count:]"];
        goto LABEL_18;
      }

      selfCopy4 = self;
      v16 = v12;
      v17 = v9;
      v18 = v7;
      v19 = @"com.apple.itunes.store.booklet-item-name";
    }

    else
    {
      if (v14 == 1634353761)
      {
        selfCopy3 = self;
        v21 = v12;
        v22 = v9;
        v23 = v7;
        v24 = @"com.apple.itunes.store.booklet-item-store-id";
LABEL_17:
        [(BLPurchaseDAAPParser *)selfCopy3 setUInt64:v21 size:v22 inDict:v23 forKey:v24];
        goto LABEL_18;
      }

      if (v14 != 1634353764)
      {
        goto LABEL_14;
      }

      selfCopy4 = self;
      v16 = v12;
      v17 = v9;
      v18 = v7;
      v19 = @"com.apple.itunes.store.booklet-item-redownload-param";
    }

    [(BLPurchaseDAAPParser *)selfCopy4 setString:v16 size:v17 inDict:v18 forKey:v19];
LABEL_18:
    item = &v12[v9];
    if (count <= 0)
    {
      goto LABEL_19;
    }
  }

  v26 = BLJaliscoLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v31 = 136315650;
    v32 = "[BLPurchaseDAAPParser parseBookletItem:count:]";
    v33 = 2048;
    v34 = 4;
    v35 = 2048;
    countCopy = count;
    _os_log_impl(&dword_241D1F000, v26, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v31, 0x20u);
  }

LABEL_29:
  v25 = 0;
LABEL_30:

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)parseListingCollection:(const char *)collection count:(int64_t)count capacity:(int)capacity
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:capacity];
  if (count < 1)
  {
LABEL_11:
    v17 = v8;
  }

  else
  {
    while (count > 3)
    {
      v9 = count - 4;
      if ((count - 4) <= 3)
      {
        v19 = BLJaliscoLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315650;
          v24 = "[BLPurchaseDAAPParser parseListingCollection:count:capacity:]";
          v25 = 2048;
          v26 = 4;
          v27 = 2048;
          countCopy = v9;
          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }

      v10 = bswap32(*(collection + 1));
      v11 = count - 8;
      v12 = count - 8 >= v10;
      count = count - 8 - v10;
      if (!v12)
      {
        v19 = BLJaliscoLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315650;
          v24 = "[BLPurchaseDAAPParser parseListingCollection:count:capacity:]";
          v25 = 2048;
          v26 = v10;
          v27 = 2048;
          countCopy = v11;
LABEL_19:
          _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v23, 0x20u);
        }

        goto LABEL_20;
      }

      v14 = *collection;
      v13 = collection + 8;
      v15 = bswap32(v14);
      if (v15 != 1836282996)
      {
        if (v15 == 1835821428)
        {
          v16 = [(BLPurchaseDAAPParser *)self parseListingItem:v13 count:v10];
          [v8 addObject:v16];
        }

        else
        {
          [(BLPurchaseDAAPParser *)self unknownCode:v15 bytes:v13 size:v10 context:"[BLPurchaseDAAPParser parseListingCollection:count:capacity:]"];
        }
      }

      collection = &v13[v10];
      if (count <= 0)
      {
        goto LABEL_11;
      }
    }

    v18 = BLJaliscoLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "[BLPurchaseDAAPParser parseListingCollection:count:capacity:]";
      v25 = 2048;
      v26 = 4;
      v27 = 2048;
      countCopy = count;
      _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v23, 0x20u);
    }

LABEL_21:
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)parseBrowseResults:(const char *)results count:(int64_t)count
{
  v29 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (count < 1)
  {
LABEL_10:
    v17 = array;
  }

  else
  {
    while (count > 3)
    {
      v8 = count - 4;
      if ((count - 4) <= 3)
      {
        v19 = BLJaliscoLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315650;
          v24 = "[BLPurchaseDAAPParser parseBrowseResults:count:]";
          v25 = 2048;
          v26 = 4;
          v27 = 2048;
          countCopy = v8;
          goto LABEL_18;
        }

LABEL_19:

        goto LABEL_20;
      }

      v9 = bswap32(*(results + 1));
      v10 = count - 8;
      v11 = count - 8 >= v9;
      count = count - 8 - v9;
      if (!v11)
      {
        v19 = BLJaliscoLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315650;
          v24 = "[BLPurchaseDAAPParser parseBrowseResults:count:]";
          v25 = 2048;
          v26 = v9;
          v27 = 2048;
          countCopy = v10;
LABEL_18:
          _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v23, 0x20u);
        }

        goto LABEL_19;
      }

      v14 = *results;
      v13 = results + 8;
      v12 = v14;
      if (v14 == 1953066093)
      {
        v15 = objc_alloc_init(BLPurchaseDAAPItem);
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v13 length:v9 encoding:4];
        [(BLPurchaseDAAPItem *)v15 setName:v16];
        [(BLPurchaseDAAPItem *)v15 freeze];
        [array addObject:v15];
      }

      else
      {
        [(BLPurchaseDAAPParser *)self unknownCode:bswap32(v12) bytes:v13 size:v9 context:"[BLPurchaseDAAPParser parseBrowseResults:count:]"];
      }

      results = &v13[v9];
      if (count <= 0)
      {
        goto LABEL_10;
      }
    }

    v18 = BLJaliscoLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "[BLPurchaseDAAPParser parseBrowseResults:count:]";
      v25 = 2048;
      v26 = 4;
      v27 = 2048;
      countCopy = count;
      _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v23, 0x20u);
    }

LABEL_20:
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)parseListingHeader:(const char *)header count:(int64_t)count
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  if (count < 1)
  {
LABEL_40:
    v24 = v7;
    goto LABEL_49;
  }

  v8 = 0;
  while (1)
  {
    if (count <= 3)
    {
      v25 = BLJaliscoLog();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v29 = 136315650;
      v30 = "[BLPurchaseDAAPParser parseListingHeader:count:]";
      v31 = 2048;
      v32 = 4;
      v33 = 2048;
      countCopy = count;
      goto LABEL_47;
    }

    if ((count - 4) <= 3)
    {
      v25 = BLJaliscoLog();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v29 = 136315650;
      v30 = "[BLPurchaseDAAPParser parseListingHeader:count:]";
      v31 = 2048;
      v32 = 4;
      v33 = 2048;
      countCopy = count - 4;
      goto LABEL_47;
    }

    v9 = bswap32(*(header + 1));
    v10 = count - 8;
    v11 = count - 8 >= v9;
    count = count - 8 - v9;
    if (!v11)
    {
      break;
    }

    v13 = *header;
    v12 = (header + 8);
    v14 = bswap32(v13);
    if (v14 <= 1836213102)
    {
      if (v14 > 1633838957)
      {
        if (v14 == 1633838958)
        {
          goto LABEL_26;
        }

        if (v14 == 1668113010)
        {
          selfCopy4 = self;
          v20 = v12;
          v21 = v9;
          v22 = v7;
          v23 = @"dmcp.bonjoursourcesrevision";
          goto LABEL_36;
        }

        if (v14 != 1835819884)
        {
          goto LABEL_39;
        }

        v15 = [(BLPurchaseDAAPParser *)self parseListingCollection:v12 count:v9 capacity:v8];
        v16 = v7;
        v17 = v15;
        v18 = @"dmap.listing";
      }

      else
      {
        if (v14 != 1633837420 && v14 != 1633837426 && v14 != 1633837936)
        {
LABEL_39:
          [BLPurchaseDAAPParser unknownCode:"unknownCode:bytes:size:context:" bytes:? size:? context:?];
          goto LABEL_37;
        }

LABEL_26:
        v15 = [(BLPurchaseDAAPParser *)self parseBrowseResults:v12 count:v9];
        v16 = v7;
        v17 = v15;
        v18 = @"items";
      }

LABEL_27:
      [v16 setObject:v17 forKey:v18];

      goto LABEL_37;
    }

    if (v14 <= 1836344174)
    {
      if (v14 == 1836213103)
      {
        [(BLPurchaseDAAPParser *)self setUInt32:v12 size:v9 inDict:v7 forKey:@"dmap.returnedcount"];
        v8 = bswap32(*v12);
        goto LABEL_37;
      }

      if (v14 != 1836279916)
      {
        if (v14 != 1836282996)
        {
          goto LABEL_39;
        }

        selfCopy4 = self;
        v20 = v12;
        v21 = v9;
        v22 = v7;
        v23 = @"dmap.status";
        goto LABEL_36;
      }

      v15 = [(BLPurchaseDAAPParser *)self parseListingCollection:v12 count:v9 capacity:30];
      v16 = v7;
      v17 = v15;
      v18 = @"headers";
      goto LABEL_27;
    }

    if (v14 <= 1836413809)
    {
      if (v14 == 1836344175)
      {
        selfCopy4 = self;
        v20 = v12;
        v21 = v9;
        v22 = v7;
        v23 = @"dmap.specifiedtotalcount";
LABEL_36:
        [(BLPurchaseDAAPParser *)selfCopy4 setUInt32:v20 size:v21 inDict:v22 forKey:v23];
        goto LABEL_37;
      }

      if (v14 != 1836409964)
      {
        goto LABEL_39;
      }

      v15 = [(BLPurchaseDAAPParser *)self parseDeletedIDsList:v12 count:v9];
      v16 = v7;
      v17 = v15;
      v18 = @"dmap.deletedidlisting";
      goto LABEL_27;
    }

    if (v14 == 1836413810)
    {
      selfCopy4 = self;
      v20 = v12;
      v21 = v9;
      v22 = v7;
      v23 = @"dmap.serverrevision";
      goto LABEL_36;
    }

    if (v14 != 1836414073)
    {
      goto LABEL_39;
    }

    [(BLPurchaseDAAPParser *)self setUInt8:v12 size:v9 inDict:v7 forKey:@"dmap.updatetype"];
LABEL_37:
    header = v12 + v9;
    if (count <= 0)
    {
      goto LABEL_40;
    }
  }

  v25 = BLJaliscoLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v29 = 136315650;
    v30 = "[BLPurchaseDAAPParser parseListingHeader:count:]";
    v31 = 2048;
    v32 = v9;
    v33 = 2048;
    countCopy = v10;
LABEL_47:
    _os_log_impl(&dword_241D1F000, v25, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v29, 0x20u);
  }

LABEL_48:

  v24 = 0;
LABEL_49:

  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)parseDict:(const char *)dict size:(int64_t)size intoDict:(id)intoDict
{
  v32 = *MEMORY[0x277D85DE8];
  intoDictCopy = intoDict;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (size < 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    if (size <= 3)
    {
      v21 = BLJaliscoLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 136315650;
      v27 = "[BLPurchaseDAAPParser parseDict:size:intoDict:]";
      v28 = 2048;
      v29 = 4;
      v30 = 2048;
      sizeCopy = size;
      goto LABEL_22;
    }

    if ((size - 4) <= 3)
    {
      v21 = BLJaliscoLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 136315650;
      v27 = "[BLPurchaseDAAPParser parseDict:size:intoDict:]";
      v28 = 2048;
      v29 = 4;
      v30 = 2048;
      sizeCopy = size - 4;
      goto LABEL_22;
    }

    v9 = bswap32(*(dict + 1));
    v10 = size - 8;
    v11 = size - 8 >= v9;
    size = size - 8 - v9;
    if (!v11)
    {
      break;
    }

    v13 = *dict;
    v12 = dict + 8;
    v14 = bswap32(v13);
    if (v14 == 1835297657)
    {
      v15 = @"key";
    }

    else
    {
      if (v14 != 1835300460)
      {
        goto LABEL_11;
      }

      v15 = @"value";
    }

    [(BLPurchaseDAAPParser *)self setString:v12 size:v9 inDict:dictionary forKey:v15];
LABEL_11:
    v16 = [dictionary objectForKey:@"key"];
    if (v16)
    {
      v17 = v16;
      v18 = [dictionary objectForKey:@"value"];

      if (v18)
      {
        v19 = [dictionary objectForKey:@"value"];
        v20 = [dictionary objectForKey:@"key"];
        [intoDictCopy setValue:v19 forKey:v20];

        [dictionary removeAllObjects];
      }
    }

    dict = &v12[v9];
    if (size <= 0)
    {
      goto LABEL_24;
    }
  }

  v21 = BLJaliscoLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v27 = "[BLPurchaseDAAPParser parseDict:size:intoDict:]";
    v28 = 2048;
    v29 = v9;
    v30 = 2048;
    sizeCopy = v10;
LABEL_22:
    _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", buf, 0x20u);
  }

LABEL_23:

LABEL_24:
  v23 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)parseDeletedIDsList:(const char *)list count:(int64_t)count
{
  v29 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  if (count < 1)
  {
LABEL_12:
    v17 = array;
  }

  else
  {
    while (count > 3)
    {
      v9 = count - 4;
      if ((count - 4) <= 3)
      {
        v19 = BLJaliscoLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315650;
          v24 = "[BLPurchaseDAAPParser parseDeletedIDsList:count:]";
          v25 = 2048;
          v26 = 4;
          v27 = 2048;
          countCopy = v9;
          goto LABEL_20;
        }

LABEL_21:

        goto LABEL_22;
      }

      v10 = bswap32(*(list + 1));
      v11 = count - 8;
      v12 = count - 8 >= v10;
      count = count - 8 - v10;
      if (!v12)
      {
        v19 = BLJaliscoLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315650;
          v24 = "[BLPurchaseDAAPParser parseDeletedIDsList:count:]";
          v25 = 2048;
          v26 = v10;
          v27 = 2048;
          countCopy = v11;
LABEL_20:
          _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v23, 0x20u);
        }

        goto LABEL_21;
      }

      v15 = *list;
      v14 = list + 8;
      v13 = v15;
      if (v15 == 1684826477)
      {
        [(BLPurchaseDAAPParser *)self setUInt64:v14 size:v10 inDict:dictionary forKey:@"dmap.longitemid"];
      }

      else
      {
        [(BLPurchaseDAAPParser *)self unknownCode:bswap32(v13) bytes:v14 size:v10 context:"[BLPurchaseDAAPParser parseDeletedIDsList:count:]"];
      }

      v16 = [dictionary objectForKey:@"dmap.longitemid"];
      if (v16)
      {
        [array addObject:v16];
      }

      [dictionary removeAllObjects];
      list = &v14[v10];

      if (count <= 0)
      {
        goto LABEL_12;
      }
    }

    v18 = BLJaliscoLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "[BLPurchaseDAAPParser parseDeletedIDsList:count:]";
      v25 = 2048;
      v26 = 4;
      v27 = 2048;
      countCopy = count;
      _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v23, 0x20u);
    }

LABEL_22:
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)parseControlPromptCollection:(const char *)collection count:(int64_t)count
{
  v31 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (count < 1)
  {
LABEL_15:
    v19 = dictionary;
    goto LABEL_26;
  }

  while (count > 3)
  {
    v8 = count - 4;
    if ((count - 4) <= 3)
    {
      v21 = BLJaliscoLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315650;
        v26 = "[BLPurchaseDAAPParser parseControlPromptCollection:count:]";
        v27 = 2048;
        v28 = 4;
        v29 = 2048;
        countCopy = v8;
        goto LABEL_23;
      }

LABEL_24:

      goto LABEL_25;
    }

    v9 = bswap32(*(collection + 1));
    v10 = count - 8;
    v11 = count - 8 >= v9;
    count = count - 8 - v9;
    if (!v11)
    {
      v21 = BLJaliscoLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315650;
        v26 = "[BLPurchaseDAAPParser parseControlPromptCollection:count:]";
        v27 = 2048;
        v28 = v9;
        v29 = 2048;
        countCopy = v10;
LABEL_23:
        _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v25, 0x20u);
      }

      goto LABEL_24;
    }

    v13 = *collection;
    v12 = collection + 8;
    v14 = bswap32(v13);
    switch(v14)
    {
      case 0x636D6361:
        v15 = v12;
        v16 = v9;
        v17 = dictionary;
        v18 = @"attributes";
        break;
      case 0x636D6376:
        v15 = v12;
        v16 = v9;
        v17 = dictionary;
        v18 = @"value";
        break;
      case 0x636D6365:
        v15 = v12;
        v16 = v9;
        v17 = dictionary;
        v18 = @"name";
        break;
      default:
        [(BLPurchaseDAAPParser *)self unknownCode:v14 bytes:v12 size:v9 context:"[BLPurchaseDAAPParser parseControlPromptCollection:count:]"];
        goto LABEL_14;
    }

    [(BLPurchaseDAAPParser *)self setString:v15 size:v16 inDict:v17 forKey:v18];
LABEL_14:
    collection = &v12[v9];
    if (count <= 0)
    {
      goto LABEL_15;
    }
  }

  v20 = BLJaliscoLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v25 = 136315650;
    v26 = "[BLPurchaseDAAPParser parseControlPromptCollection:count:]";
    v27 = 2048;
    v28 = 4;
    v29 = 2048;
    countCopy = count;
    _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v25, 0x20u);
  }

LABEL_25:
  v19 = 0;
LABEL_26:

  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)parseControlPromptResponse:(const char *)response count:(int64_t)count
{
  v30 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (count < 1)
  {
LABEL_15:
    if ([v8 count])
    {
      [dictionary setObject:v8 forKey:@"items"];
    }

    v18 = dictionary;
  }

  else
  {
    while (count > 3)
    {
      v9 = count - 4;
      if ((count - 4) <= 3)
      {
        v20 = BLJaliscoLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v24 = 136315650;
          v25 = "[BLPurchaseDAAPParser parseControlPromptResponse:count:]";
          v26 = 2048;
          v27 = 4;
          v28 = 2048;
          countCopy = v9;
          goto LABEL_25;
        }

LABEL_26:

        goto LABEL_27;
      }

      v10 = *(response + 1);
      v11 = bswap32(v10);
      v12 = count - 8;
      v13 = count - 8 >= v11;
      count = count - 8 - v11;
      if (!v13)
      {
        v20 = BLJaliscoLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v24 = 136315650;
          v25 = "[BLPurchaseDAAPParser parseControlPromptResponse:count:]";
          v26 = 2048;
          v27 = v11;
          v28 = 2048;
          countCopy = v12;
LABEL_25:
          _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v24, 0x20u);
        }

        goto LABEL_26;
      }

      v15 = *response;
      v14 = response + 8;
      v16 = bswap32(v15);
      if (v16 == 1835295596)
      {
        v17 = [(BLPurchaseDAAPParser *)self parseControlPromptCollection:v14 count:v11];
        [v8 addObject:v17];
      }

      else if (v16 != 1836282996)
      {
        if (v16 == 1835624804)
        {
          if (v10 == 0x4000000)
          {
            [(BLPurchaseDAAPParser *)self setUInt32:v14 size:4 inDict:dictionary forKey:@"dmap.itemid"];
          }

          else
          {
            [(BLPurchaseDAAPParser *)self setUInt64:v14 size:v11 inDict:dictionary forKey:@"dmap.itemid"];
          }
        }

        else
        {
          [(BLPurchaseDAAPParser *)self unknownCode:v16 bytes:v14 size:v11 context:"[BLPurchaseDAAPParser parseControlPromptResponse:count:]"];
        }
      }

      response = &v14[v11];
      if (count <= 0)
      {
        goto LABEL_15;
      }
    }

    v19 = BLJaliscoLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315650;
      v25 = "[BLPurchaseDAAPParser parseControlPromptResponse:count:]";
      v26 = 2048;
      v27 = 4;
      v28 = 2048;
      countCopy = count;
      _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v24, 0x20u);
    }

LABEL_27:
    v18 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)parseGetSpeakersResponse:(const char *)response count:(int64_t)count
{
  v28 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (count < 1)
  {
LABEL_11:
    v16 = array;
  }

  else
  {
    while (count > 3)
    {
      v8 = count - 4;
      if ((count - 4) <= 3)
      {
        v18 = BLJaliscoLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315650;
          v23 = "[BLPurchaseDAAPParser parseGetSpeakersResponse:count:]";
          v24 = 2048;
          v25 = 4;
          v26 = 2048;
          countCopy = v8;
          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }

      v9 = bswap32(*(response + 1));
      v10 = count - 8;
      v11 = count - 8 >= v9;
      count = count - 8 - v9;
      if (!v11)
      {
        v18 = BLJaliscoLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315650;
          v23 = "[BLPurchaseDAAPParser parseGetSpeakersResponse:count:]";
          v24 = 2048;
          v25 = v9;
          v26 = 2048;
          countCopy = v10;
LABEL_19:
          _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v22, 0x20u);
        }

        goto LABEL_20;
      }

      v13 = *response;
      v12 = response + 8;
      v14 = bswap32(v13);
      if (v14 != 1836282996)
      {
        if (v14 == 1835295596)
        {
          v15 = [(BLPurchaseDAAPParser *)self parseListingItem:v12 count:v9];
          [array addObject:v15];
        }

        else
        {
          [(BLPurchaseDAAPParser *)self unknownCode:v14 bytes:v12 size:v9 context:"[BLPurchaseDAAPParser parseGetSpeakersResponse:count:]"];
        }
      }

      response = &v12[v9];
      if (count <= 0)
      {
        goto LABEL_11;
      }
    }

    v17 = BLJaliscoLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315650;
      v23 = "[BLPurchaseDAAPParser parseGetSpeakersResponse:count:]";
      v24 = 2048;
      v25 = 4;
      v26 = 2048;
      countCopy = count;
      _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v22, 0x20u);
    }

LABEL_21:
    v16 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)parseDACPPropertyResponse:(const char *)response count:(int64_t)count
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  if (count < 1)
  {
LABEL_121:
    v49 = v7;
    goto LABEL_132;
  }

  while (count > 3)
  {
    v8 = count - 4;
    if ((count - 4) <= 3)
    {
      v51 = BLJaliscoLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v55 = 136315650;
        v56 = "[BLPurchaseDAAPParser parseDACPPropertyResponse:count:]";
        v57 = 2048;
        v58 = 4;
        v59 = 2048;
        countCopy = v8;
        goto LABEL_129;
      }

LABEL_130:

      goto LABEL_131;
    }

    v9 = *(response + 1);
    v10 = bswap32(v9);
    v11 = count - 8;
    v12 = count - 8 >= v10;
    count = count - 8 - v10;
    if (!v12)
    {
      v51 = BLJaliscoLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v55 = 136315650;
        v56 = "[BLPurchaseDAAPParser parseDACPPropertyResponse:count:]";
        v57 = 2048;
        v58 = v10;
        v59 = 2048;
        countCopy = v11;
LABEL_129:
        _os_log_impl(&dword_241D1F000, v51, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v55, 0x20u);
      }

      goto LABEL_130;
    }

    v13 = bswap32(*response);
    v14 = (response + 8);
    if (v13 > 1667581778)
    {
      if (v13 > 1667584835)
      {
        if (v13 > 1668115818)
        {
          if (v13 <= 1668118126)
          {
            if (v13 == 1668115819)
            {
              selfCopy35 = self;
              v16 = response + 8;
              v17 = v10;
              v18 = v7;
              v19 = @"mediaKind";
              goto LABEL_115;
            }

            if (v13 == 1668117362)
            {
              selfCopy35 = self;
              v16 = response + 8;
              v17 = v10;
              v18 = v7;
              v19 = @"dmcp.playstatusrevision";
              goto LABEL_115;
            }
          }

          else
          {
            switch(v13)
            {
              case 1668118127:
                v41 = bswap32(*v14) / 100.0;
                v42 = objc_alloc(MEMORY[0x277CCABB0]);
                *&v43 = v41;
                v44 = [v42 initWithFloat:v43];
                [v7 setObject:v44 forKey:@"volume"];
LABEL_120:

                goto LABEL_116;
              case 1836082546:
                selfCopy25 = self;
                v36 = response + 8;
                v38 = v10;
                v39 = v7;
                v40 = @"dmap.persistentid";
                goto LABEL_109;
              case 1836282996:
                selfCopy35 = self;
                v16 = response + 8;
                v17 = v10;
                v18 = v7;
                v19 = @"dmap.status";
                goto LABEL_115;
            }
          }
        }

        else if (v13 <= 1668113004)
        {
          if (v13 == 1667584836)
          {
            v45 = [(BLPurchaseDAAPParser *)self parseXMLContent:response + 8 count:v10];
            if (v45)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v46 = [v45 objectForKey:@"id"];
                if ([v46 length])
                {
                  [v7 setObject:v46 forKey:@"secondScreenAdamID"];
                }

                v47 = [v45 objectForKey:@"url"];
                if ([v47 length])
                {
                  [v7 setObject:v46 forKey:@"secondScreenURL"];
                }
              }
            }

            goto LABEL_116;
          }

          if (v13 == 1668112996)
          {
            selfCopy28 = self;
            v32 = response + 8;
            v33 = v10;
            v34 = v7;
            v35 = @"libraryDisplayName";
            goto LABEL_113;
          }
        }

        else
        {
          switch(v13)
          {
            case 1668113005:
              selfCopy28 = self;
              v32 = response + 8;
              v33 = v10;
              v34 = v7;
              v35 = @"libraryServiceDomain";
              goto LABEL_113;
            case 1668113011:
              selfCopy28 = self;
              v32 = response + 8;
              v33 = v10;
              v34 = v7;
              v35 = @"libraryServiceName";
              goto LABEL_113;
            case 1668113012:
              selfCopy28 = self;
              v32 = response + 8;
              v33 = v10;
              v34 = v7;
              v35 = @"libraryServiceType";
LABEL_113:
              [(BLPurchaseDAAPParser *)selfCopy28 setString:v32 size:v33 inDict:v34 forKey:v35];
              goto LABEL_116;
          }
        }

        goto LABEL_80;
      }

      if (v13 <= 1667584325)
      {
        if (v13 == 1667581779)
        {
          selfCopy33 = self;
          v27 = response + 8;
          v28 = v10;
          v29 = v7;
          v30 = @"com.apple.itunes.can-be-genius-seed";
          goto LABEL_111;
        }

        if (v13 != 1667583313)
        {
          if (v13 == 1667583569)
          {
            selfCopy35 = self;
            v16 = response + 8;
            v17 = v10;
            v18 = v7;
            v19 = @"com.apple.itunes.num-manually-queued";
            goto LABEL_115;
          }

LABEL_80:
          [BLPurchaseDAAPParser unknownCode:"unknownCode:bytes:size:context:" bytes:? size:? context:?];
          goto LABEL_116;
        }

        if (*v14 == 1)
        {
          selfCopy34 = self;
          v22 = response + 8;
          v23 = v10;
          v24 = v7;
          v25 = @"com.apple.itunes.manually-queued";
          goto LABEL_93;
        }
      }

      else
      {
        v20 = (v13 - 1667584329);
        if (v20 > 0x2C)
        {
          goto LABEL_78;
        }

        if (((1 << (v13 - 73)) & 0x62041000001) == 0)
        {
          if (v20 == 14)
          {
            selfCopy35 = self;
            v16 = response + 8;
            v17 = v10;
            v18 = v7;
            v19 = @"com.apple.itunes.playqueue-warning-threshold";
            goto LABEL_115;
          }

          if (v20 != 44)
          {
LABEL_78:
            if (v13 == 1667584326)
            {
              selfCopy28 = self;
              v32 = response + 8;
              v33 = v10;
              v34 = v7;
              v35 = @"com.apple.itunes.active-queue-feed-name";
              goto LABEL_113;
            }

            goto LABEL_80;
          }

          if (*v14 == 1)
          {
            selfCopy34 = self;
            v22 = response + 8;
            v23 = v10;
            v24 = v7;
            v25 = @"com.apple.itunes.playqueue-mode";
LABEL_93:
            [(BLPurchaseDAAPParser *)selfCopy34 setUInt8:v22 size:v23 inDict:v24 forKey:v25];
          }
        }
      }
    }

    else if (v13 <= 1667329645)
    {
      if (v13 > 1667326322)
      {
        if (v13 > 1667329632)
        {
          switch(v13)
          {
            case 1667329633:
              selfCopy28 = self;
              v32 = response + 8;
              v33 = v10;
              v34 = v7;
              v35 = @"daap.songartist";
              goto LABEL_113;
            case 1667329639:
              selfCopy28 = self;
              v32 = response + 8;
              v33 = v10;
              v34 = v7;
              v35 = @"NPGenre";
              goto LABEL_113;
            case 1667329644:
              selfCopy28 = self;
              v32 = response + 8;
              v33 = v10;
              v34 = v7;
              v35 = @"daap.songalbum";
              goto LABEL_113;
          }
        }

        else
        {
          switch(v13)
          {
            case 1667326323:
              selfCopy35 = self;
              v16 = response + 8;
              v17 = v10;
              v18 = v7;
              v19 = @"dacp.availableshufflestates";
              goto LABEL_115;
            case 1667327589:
              selfCopy33 = self;
              v27 = response + 8;
              v28 = v10;
              v29 = v7;
              v30 = @"dacp.fullscreenenabled";
              goto LABEL_111;
            case 1667327603:
              selfCopy33 = self;
              v27 = response + 8;
              v28 = v10;
              v29 = v7;
              v30 = @"dacp.fullscreen";
LABEL_111:
              [(BLPurchaseDAAPParser *)selfCopy33 setBool:v27 size:v28 inDict:v29 forKey:v30];
              goto LABEL_116;
          }
        }

        goto LABEL_80;
      }

      if (v13 > 1634030408)
      {
        switch(v13)
        {
          case 1634030409:
            selfCopy35 = self;
            v16 = response + 8;
            v17 = v10;
            v18 = v7;
            v19 = @"com.apple.itunes.itms-songid";
            goto LABEL_115;
          case 1634951529:
            selfCopy25 = self;
            v36 = response + 8;
            v38 = v10;
            v39 = v7;
            v40 = @"daap.songalbumid";
            goto LABEL_109;
          case 1667326322:
            selfCopy35 = self;
            v16 = response + 8;
            v17 = v10;
            v18 = v7;
            v19 = @"dacp.availablerepeatstates";
            goto LABEL_115;
        }

        goto LABEL_80;
      }

      if (v13 == 1634026323)
      {
        if (v9 == 0x4000000)
        {
          v44 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:bswap32(*v14)];
          [v44 stringValue];
        }

        else
        {
          v44 = [(BLPurchaseDAAPParser *)self parseUTF8String:response + 8 length:v10];
          [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v44, "longLongValue")}];
        }
        v48 = ;
        [v7 setValue:v48 forKey:@"com.apple.itunes.artworkchecksum"];

        goto LABEL_120;
      }

      if (v13 != 1634027587)
      {
        goto LABEL_80;
      }

      if (*v14 == 1)
      {
        selfCopy34 = self;
        v22 = response + 8;
        v23 = v10;
        v24 = v7;
        v25 = @"com.apple.itunes.has-chapter-data";
        goto LABEL_93;
      }
    }

    else
    {
      if (v13 <= 1667330919)
      {
        if (v13 > 1667330155)
        {
          switch(v13)
          {
            case 1667330156:
              [(BLPurchaseDAAPParser *)self setUInt64:response + 8 size:8 inDict:v7 forKey:@"databaseID"];
              [(BLPurchaseDAAPParser *)self setUInt64:response + 16 size:8 inDict:v7 forKey:@"com.apple.itunes.itms-playlistid"];
              [(BLPurchaseDAAPParser *)self setUInt64:response + 24 size:8 inDict:v7 forKey:@"dmap.containeritemid"];
              v36 = response + 32;
              selfCopy25 = self;
              v38 = 8;
              v39 = v7;
              v40 = @"dmap.itemid";
LABEL_109:
              [(BLPurchaseDAAPParser *)selfCopy25 setUInt64:v36 size:v38 inDict:v39 forKey:v40];
              goto LABEL_116;
            case 1667330163:
              selfCopy34 = self;
              v22 = response + 8;
              v23 = v10;
              v24 = v7;
              v25 = @"dacp.playerstate";
              goto LABEL_93;
            case 1667330672:
              selfCopy34 = self;
              v22 = response + 8;
              v23 = v10;
              v24 = v7;
              v25 = @"dacp.repeatstate";
              goto LABEL_93;
          }
        }

        else
        {
          switch(v13)
          {
            case 1667329646:
              selfCopy28 = self;
              v32 = response + 8;
              v33 = v10;
              v34 = v7;
              v35 = @"dmap.itemname";
              goto LABEL_113;
            case 1667329648:
              [(BLPurchaseDAAPParser *)self setUInt32:response + 8 size:4 inDict:v7 forKey:@"databaseID"];
              [(BLPurchaseDAAPParser *)self setUInt32:response + 12 size:4 inDict:v7 forKey:@"com.apple.itunes.itms-playlistid"];
              [(BLPurchaseDAAPParser *)self setUInt32:response + 16 size:4 inDict:v7 forKey:@"dmap.containeritemid"];
              v16 = response + 20;
              selfCopy35 = self;
              v17 = 4;
              v18 = v7;
              v19 = @"dmap.itemid";
              goto LABEL_115;
            case 1667329652:
              selfCopy35 = self;
              v16 = response + 8;
              v17 = v10;
              v18 = v7;
              v19 = @"dacp.playingtime";
LABEL_115:
              [(BLPurchaseDAAPParser *)selfCopy35 setUInt32:v16 size:v17 inDict:v18 forKey:v19];
              goto LABEL_116;
          }
        }

        goto LABEL_80;
      }

      if (v13 > 1667331682)
      {
        switch(v13)
        {
          case 1667331683:
            selfCopy33 = self;
            v27 = response + 8;
            v28 = v10;
            v29 = v7;
            v30 = @"dacp.volumecontrollable";
            goto LABEL_111;
          case 1667331685:
            selfCopy33 = self;
            v27 = response + 8;
            v28 = v10;
            v29 = v7;
            v30 = @"dacp.visualizerenabled";
            goto LABEL_111;
          case 1667331699:
            selfCopy33 = self;
            v27 = response + 8;
            v28 = v10;
            v29 = v7;
            v30 = @"dacp.visualizer";
            goto LABEL_111;
        }

        goto LABEL_80;
      }

      if (v13 == 1667330920)
      {
        selfCopy34 = self;
        v22 = response + 8;
        v23 = v10;
        v24 = v7;
        v25 = @"dacp.shufflestate";
        goto LABEL_93;
      }

      if (v13 == 1667330932)
      {
        selfCopy35 = self;
        v16 = response + 8;
        v17 = v10;
        v18 = v7;
        v19 = @"daap.songtime";
        goto LABEL_115;
      }

      if (v13 != 1667330933)
      {
        goto LABEL_80;
      }
    }

LABEL_116:
    response = v14 + v10;
    if (count <= 0)
    {
      goto LABEL_121;
    }
  }

  v50 = BLJaliscoLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v55 = 136315650;
    v56 = "[BLPurchaseDAAPParser parseDACPPropertyResponse:count:]";
    v57 = 2048;
    v58 = 4;
    v59 = 2048;
    countCopy = count;
    _os_log_impl(&dword_241D1F000, v50, OS_LOG_TYPE_ERROR, "ERROR: %s, Invalid data in DAAP response: trying to read %ld bytes from a buffer of size %ld", &v55, 0x20u);
  }

LABEL_131:
  v49 = 0;
LABEL_132:

  v53 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)processResponseCode:(unsigned int)code bytes:(const char *)bytes count:(int64_t)count
{
  if (code > 1668113012)
  {
    if (code <= 1835360879)
    {
      if (code > 1668117363)
      {
        if (code != 1668117364)
        {
          if (code == 1668313712)
          {
            goto LABEL_36;
          }

          v5 = 1835234412;
          goto LABEL_35;
        }
      }

      else
      {
        if (code == 1668113013)
        {
          goto LABEL_36;
        }

        if (code == 1668113264)
        {
          v6 = [(BLPurchaseDAAPParser *)self parseControlPromptResponse:bytes count:count];
          goto LABEL_37;
        }

        if (code != 1668114292)
        {
          goto LABEL_51;
        }
      }

      v6 = [(BLPurchaseDAAPParser *)self parseDACPPropertyResponse:bytes count:count];
      goto LABEL_37;
    }

    if (code <= 1835822950)
    {
      if (code != 1835360880)
      {
        if (code != 1835361379)
        {
          if (code == 1835364978)
          {
            v6 = [(BLPurchaseDAAPParser *)self parseError:bytes count:count];
            goto LABEL_37;
          }

          goto LABEL_51;
        }

        goto LABEL_46;
      }

LABEL_36:
      v6 = [(BLPurchaseDAAPParser *)self parseListingHeader:bytes count:count];
      goto LABEL_37;
    }

    if (code > 1836282485)
    {
      if (code != 1836413028)
      {
        if (code == 1836282486)
        {
          v6 = [(BLPurchaseDAAPParser *)self parseServerInfo:bytes count:count];
          goto LABEL_37;
        }

        goto LABEL_51;
      }

      goto LABEL_36;
    }

    if (code == 1835822951)
    {
      v6 = [(BLPurchaseDAAPParser *)self parseLogin:bytes count:count];
      goto LABEL_37;
    }

    v5 = 1836278642;
LABEL_35:
    if (code != v5)
    {
LABEL_51:
      [BLPurchaseDAAPParser unknownCode:"unknownCode:bytes:size:context:" bytes:? size:? context:?];
      goto LABEL_52;
    }

    goto LABEL_36;
  }

  if (code <= 1634759534)
  {
    if (code > 1634165099)
    {
      if (code == 1634165100 || code == 1634165106)
      {
        goto LABEL_36;
      }

      v5 = 1634757753;
    }

    else
    {
      if (code == 1633841775 || code == 1633968755)
      {
        goto LABEL_36;
      }

      v5 = 1634026066;
    }

    goto LABEL_35;
  }

  if (code > 1667326824)
  {
    if (code > 1667330927)
    {
      if (code == 1667330928)
      {
        v6 = [(BLPurchaseDAAPParser *)self parseGetSpeakersResponse:bytes count:count];
        goto LABEL_37;
      }

      if (code == 1667581769)
      {
        v6 = [(BLPurchaseDAAPParser *)self parseListingCollection:bytes count:count capacity:0];
        goto LABEL_37;
      }

      goto LABEL_51;
    }

    if (code != 1667326825)
    {
      if (code != 1667326834)
      {
        goto LABEL_51;
      }

LABEL_46:
      v6 = [(BLPurchaseDAAPParser *)self parseListingItem:bytes count:count];
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (code == 1634759535)
  {
    goto LABEL_36;
  }

  if (code != 1634890614)
  {
    v5 = 1635148898;
    goto LABEL_35;
  }

LABEL_52:
  v6 = 0;
LABEL_37:

  return v6;
}

+ (id)typeForDRCPValueType:(int64_t)type
{
  if ((type - 1) > 0x13)
  {
    return @"undefined";
  }

  else
  {
    return off_278D17650[type - 1];
  }
}

@end