@interface UARPSuperBinaryAssetPayload
- (BOOL)appendCompressedPayloadToFile:(id)file error:(id *)error;
- (BOOL)compressPayloadURLToFileHandle:(id)handle error:(id *)error;
- (BOOL)expandDictionaryWithPayloadsFolder:(id)folder metaDataTable:(id)table error:(id *)error;
- (BOOL)expandPayloadToURL:(id)l payloadFilename:(id)filename superbinary:(id)superbinary offset:(unint64_t)offset length:(unint64_t)length error:(id *)error;
- (BOOL)isValid;
- (BOOL)parseFromPlistPayloadMetaDataTLVs:(id)vs payloadsURL:(id)l error:(id *)error;
- (BOOL)parseFromPlistVersion:(id *)version;
- (BOOL)prepareUarpVersion:(UARPVersion *)version;
- (BOOL)setPayloadToContentsOfFile:(id)file friendlyName:(id)name error:(id *)error;
- (BOOL)setPayloadToContentsOfURL:(id)l friendlyName:(id)name;
- (BOOL)setPayloadToData:(id)data;
- (BOOL)updateFormatVersion:(unint64_t)version;
- (BOOL)writePayloadData:(id)data offset:(unint64_t)offset error:(id *)error;
- (UARPAssetTag)payloadTag;
- (UARPSuperBinaryAssetPayload)init;
- (UARPSuperBinaryAssetPayload)initWithDictionary:(id)dictionary;
- (UARPSuperBinaryAssetPayload)initWithPayloadHeader:(UARPPayloadHeader *)header;
- (UARPSuperBinaryAssetPayload)initWithPayloadTag:(id)tag assetVersion:(id)version;
- (UARPSuperBinaryAssetPayload)initWithPayloadTag:(id)tag majorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion releaseVersion:(unint64_t)releaseVersion buildVersion:(unint64_t)buildVersion;
- (UARPSuperBinaryAssetPayload)initWithTag:(id)tag majorVersion:(id)version minorVersion:(id)minorVersion releaseVersion:(id)releaseVersion buildVersion:(id)buildVersion;
- (_NSRange)rangeMetadata;
- (_NSRange)rangePayload;
- (id)description;
- (id)prepareData;
- (id)prepareMetaData;
- (unint64_t)preparePackedTag;
- (unint64_t)preparedDataLength;
- (unint64_t)unpreparedDataLength;
- (void)addMetaDataTLV:(id)v;
- (void)addMetaDataTLVs:(id)vs;
- (void)prepareData;
- (void)processBVERVersionString:(id)string;
- (void)processVersionString:(id)string;
@end

@implementation UARPSuperBinaryAssetPayload

- (UARPSuperBinaryAssetPayload)init
{
  v12.receiver = self;
  v12.super_class = UARPSuperBinaryAssetPayload;
  v2 = [(UARPSuperBinaryAssetPayload *)&v12 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.accessoryupdater.uarp", "superbinarypayload");
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(v2 + 6);
    *(v2 + 6) = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = *(v2 + 7);
    *(v2 + 7) = v7;

    *(v2 + 100) = 4096;
    *(v2 + 44) = -1;
    v9 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v10 = *(v2 + 21);
    *(v2 + 21) = v9;

    *(v2 + 26) = 4;
    v2[180] = 1;
  }

  return v2;
}

- (UARPSuperBinaryAssetPayload)initWithPayloadTag:(id)tag assetVersion:(id)version
{
  tagCopy = tag;
  versionCopy = version;
  v9 = [(UARPSuperBinaryAssetPayload *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payloadTag, tag);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c", -[UARPAssetTag char1](v10->_payloadTag, "char1"), -[UARPAssetTag char2](v10->_payloadTag, "char2"), -[UARPAssetTag char3](v10->_payloadTag, "char3"), -[UARPAssetTag char4](v10->_payloadTag, "char4")];
    tag = v10->_tag;
    v10->_tag = v11;

    objc_storeStrong(&v10->_assetVersion, version);
  }

  return v10;
}

- (UARPSuperBinaryAssetPayload)initWithPayloadTag:(id)tag majorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion releaseVersion:(unint64_t)releaseVersion buildVersion:(unint64_t)buildVersion
{
  tagCopy = tag;
  v12 = [[UARPAssetVersion alloc] initWithMajorVersion:version minorVersion:version releaseVersion:releaseVersion buildVersion:buildVersion];
  v13 = [(UARPSuperBinaryAssetPayload *)self initWithPayloadTag:tagCopy assetVersion:v12];

  return v13;
}

- (UARPSuperBinaryAssetPayload)initWithTag:(id)tag majorVersion:(id)version minorVersion:(id)minorVersion releaseVersion:(id)releaseVersion buildVersion:(id)buildVersion
{
  tagCopy = tag;
  versionCopy = version;
  releaseVersionCopy = releaseVersion;
  buildVersionCopy = buildVersion;
  if ([tagCopy length] >= 4)
  {
    uTF8String = [tagCopy UTF8String];
    v17 = [[UARPAssetTag alloc] initWithChar1:*uTF8String char2:uTF8String[1] char3:uTF8String[2] char4:uTF8String[3]];
    v18 = -[UARPAssetVersion initWithMajorVersion:minorVersion:releaseVersion:buildVersion:]([UARPAssetVersion alloc], "initWithMajorVersion:minorVersion:releaseVersion:buildVersion:", [versionCopy unsignedIntegerValue], objc_msgSend(versionCopy, "unsignedIntegerValue"), objc_msgSend(releaseVersionCopy, "unsignedIntegerValue"), objc_msgSend(buildVersionCopy, "unsignedIntegerValue"));
    self = [(UARPSuperBinaryAssetPayload *)self initWithPayloadTag:v17 assetVersion:v18];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (UARPSuperBinaryAssetPayload)initWithPayloadHeader:(UARPPayloadHeader *)header
{
  v4 = [(UARPSuperBinaryAssetPayload *)self init];
  v5 = v4;
  if (v4)
  {
    v6 = *&header->payloadHeaderLength;
    v7 = *&header->payloadVersion.release;
    *&v4->_payloadHeader.payloadOffset = *&header->payloadOffset;
    *&v4->_payloadHeader.payloadVersion.release = v7;
    *&v4->_payloadHeader.payloadHeaderLength = v6;
    uarpPayloadTagUnpack(v4->_payloadHeader.payloadTag, v13);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c", v13[0], v13[1], v13[2], v13[3]];
    tag = v5->_tag;
    v5->_tag = v8;

    v5->_uarpVersion = v5->_payloadHeader.payloadVersion;
    v10 = [[UARPAssetVersion alloc] initWithMajorVersion:v5->_uarpVersion.major minorVersion:v5->_uarpVersion.minor releaseVersion:v5->_uarpVersion.release buildVersion:v5->_uarpVersion.build];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v10;
  }

  return v5;
}

- (BOOL)updateFormatVersion:(unint64_t)version
{
  if (version <= 3)
  {
    self->_formatVersion = version;
  }

  return version < 4;
}

- (UARPAssetTag)payloadTag
{
  tag = self->_tag;
  if (tag)
  {
    if ([(NSString *)tag length]== 4)
    {
      payloadTag = self->_payloadTag;
      if (!payloadTag)
      {
        uTF8String = [(NSString *)self->_tag UTF8String];
        v6 = [[UARPAssetTag alloc] initWithChar1:*uTF8String char2:uTF8String[1] char3:uTF8String[2] char4:uTF8String[3]];
        v7 = self->_payloadTag;
        self->_payloadTag = v6;

        payloadTag = self->_payloadTag;
      }

      tag = payloadTag;
    }

    else
    {
      tag = 0;
    }
  }

  return tag;
}

- (void)addMetaDataTLV:(id)v
{
  vCopy = v;
  v5 = vCopy;
  if (vCopy)
  {
    if ([vCopy type] == 3166200577 || objc_msgSend(v5, "type") == 3166200578 || objc_msgSend(v5, "type") == 3166200576 || objc_msgSend(v5, "type") == 3166200579)
    {
      composeTLVs = self->_composeTLVs;
LABEL_7:
      [(NSMutableArray *)composeTLVs addObject:v5];
      goto LABEL_10;
    }

    if ([v5 type] == 3166200581)
    {
      [(UARPSuperBinaryAssetPayload *)self processVersionString:v5];
      goto LABEL_10;
    }

    if ([v5 type] == 3166200582)
    {
      [(UARPSuperBinaryAssetPayload *)self processBVERVersionString:v5];
      goto LABEL_10;
    }

    if ([v5 type] == 3436347660)
    {
      valueAsNumber = [v5 valueAsNumber];
      self->_compression = [valueAsNumber unsignedLongValue];
    }

    else if ([v5 type] == 3436347659)
    {
      valueAsNumber = [v5 valueAsNumber];
      self->_blockSize = [valueAsNumber unsignedShortValue];
    }

    else if ([v5 type] == 3436347663)
    {
      valueAsNumber = [v5 valueAsNumber];
      self->_compressionHeaderIndex = [valueAsNumber unsignedLongValue];
    }

    else
    {
      if ([v5 type] != 3436347674)
      {
LABEL_24:
        if ([v5 type] == 3436347678)
        {
          valueAsString = [v5 valueAsString];
          vendorVersionString = self->_vendorVersionString;
          self->_vendorVersionString = valueAsString;
        }

        composeTLVs = self->_tlvs;
        goto LABEL_7;
      }

      valueAsNumber = [v5 valueAsNumber];
      self->_allowCompressionHeaders = [valueAsNumber BOOLValue];
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(UARPSuperBinaryAssetPayload *)self addMetaDataTLV:v7, v8, v9, v10, v11, v12, v13];
  }

LABEL_10:
}

- (void)addMetaDataTLVs:(id)vs
{
  v10 = [UARPSuperBinaryAssetTLV decomposeTLVs:vs];
  objc_storeStrong(&self->_tlvs, v10);
  v4 = [UARPSuperBinaryAssetTLV findTLVWithType:3436347659 tlvs:self->_tlvs];
  v5 = [UARPSuperBinaryAssetTLV findTLVWithType:3436347660 tlvs:self->_tlvs];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    valueAsNumber = [v4 valueAsNumber];
    self->_blockSize = [valueAsNumber unsignedIntValue];

    valueAsNumber2 = [v6 valueAsNumber];
    self->_compression = [valueAsNumber2 unsignedIntValue];
  }
}

- (BOOL)setPayloadToContentsOfFile:(id)file friendlyName:(id)name error:(id *)error
{
  v7 = MEMORY[0x277CBEBC0];
  nameCopy = name;
  stringByExpandingTildeInPath = [file stringByExpandingTildeInPath];
  v10 = [v7 fileURLWithPath:stringByExpandingTildeInPath];
  LOBYTE(self) = [(UARPSuperBinaryAssetPayload *)self setPayloadToContentsOfURL:v10 friendlyName:nameCopy];

  return self;
}

- (BOOL)setPayloadToContentsOfURL:(id)l friendlyName:(id)name
{
  lCopy = l;
  nameCopy = name;
  objc_storeStrong(&self->_url, l);
  if (nameCopy)
  {
    v9 = [nameCopy copy];
    friendlyName = self->_friendlyName;
    self->_friendlyName = v9;
  }

  return 1;
}

- (BOOL)setPayloadToData:(id)data
{
  v4 = [data copy];
  payload = self->_payload;
  self->_payload = v4;

  return 1;
}

- (id)prepareMetaData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  metaData = self->_metaData;
  self->_metaData = v3;

  if ([(NSMutableArray *)self->_tlvs count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSMutableArray *)self->_tlvs objectAtIndex:v5];
      v7 = [v6 generateTLV:0];
      [(NSMutableData *)self->_metaData appendData:v7];

      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_tlvs count]);
  }

  if (self->_compression)
  {
    if (self->_url)
    {
      unpreparedDataLength = [(UARPSuperBinaryAssetPayload *)self unpreparedDataLength];
    }

    else
    {
      payload = self->_payload;
      if (!payload)
      {
        v10 = 0;
        goto LABEL_10;
      }

      unpreparedDataLength = [(NSData *)payload length];
    }

    v10 = unpreparedDataLength;
LABEL_10:
    v11 = [[UARPSuperBinaryAssetTLV alloc] initWithType:3436347673 unsignedInt32:v10];
    v12 = [(UARPSuperBinaryAssetTLV *)v11 generateTLV:0];
    [(NSMutableData *)self->_metaData appendData:v12];
  }

  v13 = MEMORY[0x277CBEA90];
  v14 = self->_metaData;

  return [v13 dataWithData:v14];
}

- (BOOL)compressPayloadURLToFileHandle:(id)handle error:(id *)error
{
  handleCopy = handle;
  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  compressionHeaders = self->_compressionHeaders;
  self->_compressionHeaders = v7;

  v9 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:self->_url error:error];
  if (v9)
  {
    v10 = 0;
    blockSize = self->_blockSize;
    while (1)
    {
      v12 = [v9 uarpReadDataUpToLength:blockSize error:error];
      v13 = v12;
      if (!v12 || ![v12 length])
      {

LABEL_9:
        [v9 uarpCloseAndReturnError:error];
        v16 = 1;
        goto LABEL_12;
      }

      v14 = [v13 length];
      v15 = [(UARPSuperBinaryAssetPayload *)self compressPayloadChunk:v13 offset:v10 error:error];
      if (([handleCopy uarpWriteData:v15 error:error] & 1) == 0)
      {
        break;
      }

      v10 = (v10 + v14);

      blockSize = self->_blockSize;
      if (v14 != blockSize)
      {
        goto LABEL_9;
      }
    }

    [v9 uarpCloseAndReturnError:error];
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (id)prepareData
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  compressionHeaders = self->_compressionHeaders;
  self->_compressionHeaders = v3;

  v5 = UARPUtilsBuildURLForTemporaryFile();
  p_compressedPayloadURL = &self->_compressedPayloadURL;
  compressedPayloadURL = self->_compressedPayloadURL;
  self->_compressedPayloadURL = v5;

  if (!self->_compressedPayloadURL)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPSuperBinaryAssetPayload prepareData];
    }

    v8 = *p_compressedPayloadURL;
  }

  v40 = 0;
  v9 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:? error:?];
  v10 = 0;
  if (v9)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = self->_tlvs;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
LABEL_8:
      v15 = 0;
      while (1)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if ([*(*(&v36 + 1) + 8 * v15) type] == 3166200583)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
          if (v13)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }

      v16 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:self->_url];

      if (!v16)
      {
        goto LABEL_22;
      }

      v35 = v10;
      v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:0 error:&v35];
      v18 = v35;

      if (!v17 || (v34 = 0, v19 = [v9 uarpWriteData:v17 error:&v34], v20 = v34, v18, v18 = v20, (v19 & 1) == 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [(UARPSuperBinaryAssetPayload *)p_compressedPayloadURL prepareData];
        }

        v21 = *p_compressedPayloadURL;
        *p_compressedPayloadURL = 0;
      }

      goto LABEL_39;
    }

LABEL_14:

LABEL_22:
    if (self->_url)
    {
      v33 = v10;
      v22 = [(UARPSuperBinaryAssetPayload *)self compressPayloadURLToFileHandle:v9 error:&v33];
      v18 = v33;

      if (!v22)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [(UARPSuperBinaryAssetPayload *)p_compressedPayloadURL prepareData];
        }

LABEL_33:
        v27 = *p_compressedPayloadURL;
        *p_compressedPayloadURL = 0;
      }
    }

    else
    {
      payload = self->_payload;
      if (!payload)
      {
        metaData = self->_metaData;
        if ((!metaData || ![(NSMutableData *)metaData length]) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [(UARPSuperBinaryAssetPayload *)&self->_compressedPayloadURL prepareData];
        }

        v18 = v10;
        goto LABEL_39;
      }

      v32 = 0;
      v26 = [v9 uarpWriteData:payload error:&v32];
      v18 = v32;

      if ((v26 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [(UARPSuperBinaryAssetPayload *)p_compressedPayloadURL prepareData];
        }

        goto LABEL_33;
      }
    }

LABEL_39:
    v31 = 0;
    [v9 uarpCloseAndReturnError:&v31];
    v10 = v31;

    v24 = [*p_compressedPayloadURL copy];
    goto LABEL_40;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [(UARPSuperBinaryAssetPayload *)&self->_compressedPayloadURL prepareData];
  }

  v23 = *p_compressedPayloadURL;
  *p_compressedPayloadURL = 0;

  v24 = 0;
LABEL_40:

  v29 = *MEMORY[0x277D85DE8];

  return v24;
}

- (unint64_t)unpreparedDataLength
{
  if (!self->_url)
  {
    return 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_url path];
  v5 = [defaultManager attributesOfItemAtPath:path error:0];

  fileSize = [v5 fileSize];
  return fileSize;
}

- (unint64_t)preparedDataLength
{
  if (!self->_compressedPayloadURL)
  {
    return 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_compressedPayloadURL path];
  v5 = [defaultManager attributesOfItemAtPath:path error:0];

  fileSize = [v5 fileSize];
  return fileSize;
}

- (unint64_t)preparePackedTag
{
  uTF8String = [(NSString *)self->_tag UTF8String];
  if ([(NSString *)self->_tag length]== 4)
  {
    return uarpPayloadTagPack(uTF8String);
  }

  else
  {
    return 0;
  }
}

- (BOOL)prepareUarpVersion:(UARPVersion *)version
{
  version->major = [(UARPAssetVersion *)self->_assetVersion majorVersion];
  version->minor = [(UARPAssetVersion *)self->_assetVersion minorVersion];
  version->release = [(UARPAssetVersion *)self->_assetVersion releaseVersion];
  version->build = [(UARPAssetVersion *)self->_assetVersion buildVersion];
  return 1;
}

- (BOOL)appendCompressedPayloadToFile:(id)file error:(id *)error
{
  fileCopy = file;
  v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:self->_compressedPayloadURL error:error];
  if (v7)
  {
    blockSize = self->_blockSize;
    while (1)
    {
      v9 = [v7 uarpReadDataUpToLength:blockSize error:error];
      v10 = [v9 length];
      if (([fileCopy uarpWriteData:v9 error:error] & 1) == 0)
      {
        break;
      }

      blockSize = self->_blockSize;
      if (v10 != blockSize)
      {
        [v7 uarpCloseAndReturnError:error];
        v11 = 1;
        goto LABEL_12;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPSuperBinaryAssetPayload appendCompressedPayloadToFile:? error:?];
    }

    [v7 uarpCloseAndReturnError:error];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryAssetPayload appendCompressedPayloadToFile:? error:?];
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)processVersionString:(id)string
{
  v4 = MEMORY[0x277CCACA8];
  valueAsURL = [string valueAsURL];
  v8 = [v4 stringWithContentsOfURL:valueAsURL encoding:4 error:0];

  v6 = [[UARPAssetVersion alloc] initWithVersionString:v8];
  assetVersion = self->_assetVersion;
  self->_assetVersion = v6;
}

- (void)processBVERVersionString:(id)string
{
  v4 = MEMORY[0x277CCACA8];
  valueAsURL = [string valueAsURL];
  v8 = [v4 stringWithContentsOfURL:valueAsURL encoding:4 error:0];

  v6 = [[UARPAssetVersion alloc] initWithBVERString:v8];
  assetVersion = self->_assetVersion;
  self->_assetVersion = v6;
}

- (UARPSuperBinaryAssetPayload)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(UARPSuperBinaryAssetPayload *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dict = v5->_dict;
    v5->_dict = v6;
  }

  return v5;
}

- (BOOL)expandDictionaryWithPayloadsFolder:(id)folder metaDataTable:(id)table error:(id *)error
{
  folderCopy = folder;
  dict = self->_dict;
  tableCopy = table;
  v11 = [(NSDictionary *)dict objectForKey:@"Payload 4CC"];
  v12 = [v11 copy];
  tag = self->_tag;
  self->_tag = v12;

  v14 = [(NSDictionary *)self->_dict objectForKey:@"Payload Filepath"];
  v15 = [v14 copy];

  if (v15)
  {
    v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15 relativeToURL:folderCopy];
    url = self->_url;
    self->_url = v16;
  }

  v18 = [(NSDictionary *)self->_dict objectForKey:@"Payload Long Name"];
  v19 = [v18 copy];
  friendlyName = self->_friendlyName;
  self->_friendlyName = v19;

  LOBYTE(v18) = [(UARPSuperBinaryAssetPayload *)self parseFromPlistPayloadMetaDataTLVs:tableCopy payloadsURL:folderCopy error:error];
  if ((v18 & 1) == 0)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to parse superbinary payload metadata tlvs"];
    v23 = objc_opt_new();
    [v23 setObject:v22 forKeyedSubscript:*MEMORY[0x277CCA450]];
    v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v23];
    v25 = v24;
    if (error)
    {
      v26 = v24;
      *error = v25;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

LABEL_10:
    [(UARPSuperBinaryAssetPayload *)v22 expandDictionaryWithPayloadsFolder:v27 metaDataTable:v28 error:v29, v30, v31, v32, v33];
LABEL_11:

    v21 = 0;
    goto LABEL_12;
  }

  if (!self->_assetVersion && ![(UARPSuperBinaryAssetPayload *)self parseFromPlistVersion:error])
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to parse superbinary payload version"];
    v23 = objc_opt_new();
    [v23 setObject:v22 forKeyedSubscript:*MEMORY[0x277CCA450]];
    v35 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v23];
    v25 = v35;
    if (error)
    {
      v36 = v35;
      *error = v25;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = 1;
LABEL_12:

  return v21;
}

- (BOOL)parseFromPlistVersion:(id *)version
{
  v9 = 0;
  v4 = [(NSDictionary *)self->_dict objectForKeyedSubscript:@"Payload Version"];
  if (v4 && [UARPSuperBinaryAsset versionFromString:v4 version:&v9])
  {
    self->_uarpVersion = v9;
    v5 = [[UARPAssetVersion alloc] initWithMajorVersion:self->_uarpVersion.major minorVersion:self->_uarpVersion.minor releaseVersion:self->_uarpVersion.release buildVersion:self->_uarpVersion.build];
    assetVersion = self->_assetVersion;
    self->_assetVersion = v5;

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)parseFromPlistPayloadMetaDataTLVs:(id)vs payloadsURL:(id)l error:(id *)error
{
  vsCopy = vs;
  lCopy = l;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v10 = [(NSDictionary *)self->_dict objectForKeyedSubscript:@"Payload MetaData"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__UARPSuperBinaryAssetPayload_parseFromPlistPayloadMetaDataTLVs_payloadsURL_error___block_invoke;
  v14[3] = &unk_278EC2590;
  v11 = vsCopy;
  v15 = v11;
  v12 = lCopy;
  selfCopy = self;
  v18 = &v19;
  v16 = v12;
  [v10 enumerateKeysAndObjectsUsingBlock:v14];
  *error = v20[5];

  _Block_object_dispose(&v19, 8);
  return 1;
}

void __83__UARPSuperBinaryAssetPayload_parseFromPlistPayloadMetaDataTLVs_payloadsURL_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = 0;
  v7 = [v4 tlvArrayWithKey:a2 keyValue:a3 payloadsURL:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 48) addMetaDataTLV:{*(*(&v14 + 1) + 8 * v12++), v14}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)expandPayloadToURL:(id)l payloadFilename:(id)filename superbinary:(id)superbinary offset:(unint64_t)offset length:(unint64_t)length error:(id *)error
{
  v72 = *MEMORY[0x277D85DE8];
  lCopy = l;
  filenameCopy = filename;
  superbinaryCopy = superbinary;
  v16 = objc_alloc(MEMORY[0x277CBEBC0]);
  if (filenameCopy)
  {
    tag = filenameCopy;
  }

  else
  {
    tag = self->_tag;
  }

  v18 = [v16 initFileURLWithPath:tag relativeToURL:lCopy];
  uRLByDeletingLastPathComponent = [v18 URLByDeletingLastPathComponent];
  if (uRLByDeletingLastPathComponent && (v59 = offset, [MEMORY[0x277CCAA00] defaultManager], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", uRLByDeletingLastPathComponent, 1, 0, error), v20, v21) && objc_msgSend(superbinaryCopy, "uarpSeekToOffset:error:", v59, error))
  {
    v57 = superbinaryCopy;
    selfCopy = self;
    v55 = lCopy;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v22 = self->_tlvs;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v62;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v62 != v25)
          {
            objc_enumerationMutation(v22);
          }

          if ([*(*(&v61 + 1) + 8 * i) type] == 3166200583)
          {

            superbinaryCopy = v57;
            v27 = [v57 uarpReadDataUpToLength:length error:0];
            v41 = MEMORY[0x277CBEB98];
            v42 = objc_opt_class();
            v43 = objc_opt_class();
            v44 = objc_opt_class();
            v45 = [v41 setWithObjects:{v42, v43, v44, objc_opt_class(), 0}];
            v46 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v45 fromData:v27 error:0];
            [v46 writeToURL:v18 error:0];

            v48 = 1;
            lCopy = v55;
            goto LABEL_36;
          }
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v18, "fileSystemRepresentation")}];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v29 = [defaultManager createFileAtPath:v27 contents:0 attributes:0];

    if (v29)
    {
      [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v18 error:error];
      v54 = superbinaryCopy = v57;
      if (v54)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          lengthCopy2 = length;
          _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Decomposing Payload of length <%lu>", buf, 0xCu);
        }

        v53 = v27;
        if (length)
        {
          v31 = 0;
          v56 = 0;
          v32 = 0;
          while (1)
          {
            if (length - v31 >= 0x1000)
            {
              v33 = 4096;
            }

            else
            {
              v33 = length - v31;
            }

            v34 = [v57 uarpReadDataUpToLength:v33 error:error];
            v35 = v34;
            if (!v34 || ![v34 length])
            {
              v36 = selfCopy->_log;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218496;
                lengthCopy2 = length;
                v67 = 2048;
                v68 = v59;
                v69 = 2048;
                v70 = v31;
                _os_log_error_impl(&dword_247AA7000, v36, OS_LOG_TYPE_ERROR, "Could not read payload data; payload length is <%lu>, Payload Offset is <%lu>, Bytes Read is <%lu>", buf, 0x20u);
              }
            }

            v32 += v33;
            v37 = [v35 length];
            if (([v54 uarpWriteData:v35 error:error] & 1) == 0)
            {
              break;
            }

            v56 += [v35 length];
            v38 = selfCopy->_log;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              lengthCopy2 = v56;
              _os_log_impl(&dword_247AA7000, v38, OS_LOG_TYPE_INFO, "Bytes Written <%lu>", buf, 0xCu);
            }

            v31 += v37;

            if (v31 >= length)
            {
              v48 = 1;
              goto LABEL_44;
            }
          }

          v47 = selfCopy->_log;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            [UARPSuperBinaryAssetPayload expandPayloadToURL:v47 payloadFilename:? superbinary:? offset:? length:? error:?];
          }

          v48 = 0;
LABEL_44:
          lCopy = v55;
          superbinaryCopy = v57;
        }

        else
        {
          v32 = 0;
          v48 = 1;
          lCopy = v55;
        }

        v45 = v54;
        [v54 uarpCloseAndReturnError:0];
        v49 = selfCopy->_log;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(lengthCopy2) = 0;
          _os_log_impl(&dword_247AA7000, v49, OS_LOG_TYPE_INFO, "Total Headers <%u>\n", buf, 8u);
        }

        v50 = selfCopy->_log;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(lengthCopy2) = 0;
          _os_log_impl(&dword_247AA7000, v50, OS_LOG_TYPE_INFO, "Total Header Bytes <%u>\n", buf, 8u);
        }

        v51 = selfCopy->_log;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(lengthCopy2) = 0;
          _os_log_impl(&dword_247AA7000, v51, OS_LOG_TYPE_INFO, "Total Compressed Bytes <%u>\n", buf, 8u);
        }

        v52 = selfCopy->_log;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(lengthCopy2) = v32;
          _os_log_impl(&dword_247AA7000, v52, OS_LOG_TYPE_INFO, "Total Uncompressed Bytes <%u>\n", buf, 8u);
        }

        v27 = v53;
      }

      else
      {
        v48 = 0;
        v45 = 0;
        lCopy = v55;
      }

LABEL_36:
    }

    else
    {
      v48 = 0;
      lCopy = v55;
      superbinaryCopy = v57;
    }
  }

  else
  {
    v48 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v48;
}

- (id)description
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"--------------\n"];
  [v3 appendFormat:@"Payload Header\n"];
  [v3 appendFormat:@"---------------\n"];
  [v3 appendFormat:@"Header Length   - %u\n", self->_payloadHeader.payloadHeaderLength];
  [v3 appendFormat:@"Tag             - "];
  uarpPayloadTagUnpack(self->_payloadHeader.payloadTag, v32);
  [v3 appendFormat:@"%c%c%c%c\n", v32[0], v32[1], v32[2], v32[3]];
  [v3 appendFormat:@"Version         - <"];
  [v3 appendFormat:@"%u.", self->_payloadHeader.payloadVersion.major];
  [v3 appendFormat:@"%u.", self->_payloadHeader.payloadVersion.minor];
  [v3 appendFormat:@"%u.", self->_payloadHeader.payloadVersion.release];
  [v3 appendFormat:@"%u", self->_payloadHeader.payloadVersion.build];
  [v3 appendFormat:@">\n"];
  [v3 appendFormat:@"MetaData Offset - %u\n", self->_payloadHeader.payloadMetadataOffset];
  [v3 appendFormat:@"MetaData Length - %u\n", self->_payloadHeader.payloadMetadataLength];
  [v3 appendFormat:@"Payload Offset  - %u\n", self->_payloadHeader.payloadOffset];
  [v3 appendFormat:@"Payload Length  - %u\n", self->_payloadHeader.payloadLength];
  [v3 appendFormat:@"\n"];
  [v3 appendFormat:@"---------------------\n"];
  [v3 appendFormat:@"Payload MetaData TLVs\n"];
  [v3 appendFormat:@"---------------------\n"];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_tlvs;
  v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * i);
        [v3 appendFormat:@"%@\n", v5];
        if ([v5 type] == 3436347667)
        {
          valueAsData = [v5 valueAsData];
          bytes = [valueAsData bytes];
          v8 = [valueAsData length];
          [v3 appendFormat:@"    Compression Header: "];
          if (v8 >= 0xA)
          {
            do
            {
              v9 = uarpHtons(*bytes);
              v10 = uarpHtonl(*(bytes + 1));
              v11 = uarpHtons(bytes[3]);
              [v3 appendFormat:@" Algorithm <%u>, Actual Offset <%u>, Compressed Length <%u>, Uncompressed Length <%u> ", v9, v10, v11, uarpHtons(bytes[4])];
              v8 -= 10;
              bytes += 5;
            }

            while (v8 > 9);
          }

          [v3 appendFormat:@"\n"];
        }

        if ([v5 type] == 2293403920 || objc_msgSend(v5, "type") == 2293403932)
        {
          valueAsData2 = [v5 valueAsData];
          v13 = [UARPSuperBinaryAssetTLV decomposeTLVs:valueAsData2];
          [v3 appendFormat:@"<Nested TLVs>\n"];
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v25;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v25 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                [v3 appendFormat:@"    %@\n", *(*(&v24 + 1) + 8 * j)];
              }

              v16 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
            }

            while (v16);
          }

          [v3 appendFormat:@"</Nested TLVs>\n"];
        }
      }

      v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v23);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

- (_NSRange)rangeMetadata
{
  payloadMetadataLength = self->_payloadHeader.payloadMetadataLength;
  payloadMetadataOffset = self->_payloadHeader.payloadMetadataOffset;
  result.length = payloadMetadataLength;
  result.location = payloadMetadataOffset;
  return result;
}

- (_NSRange)rangePayload
{
  payloadLength = self->_payloadHeader.payloadLength;
  payloadOffset = self->_payloadHeader.payloadOffset;
  result.length = payloadLength;
  result.location = payloadOffset;
  return result;
}

- (BOOL)writePayloadData:(id)data offset:(unint64_t)offset error:(id *)error
{
  dataCopy = data;
  if (self->_isWritable && (url = self->_url) != 0)
  {
    v10 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingURL:url error:error];
    if ([v10 uarpSeekToOffset:offset error:error] && objc_msgSend(v10, "uarpWriteData:error:", dataCopy, error))
    {
      v11 = [v10 uarpCloseAndReturnError:error];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isValid
{
  if (self->_url)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [(NSURL *)self->_url path];
    v5 = [defaultManager fileExistsAtPath:path];

    return v5;
  }

  payload = self->_payload;
  if (payload)
  {
    v8 = [(NSData *)payload length]== 0;
  }

  else
  {
    if (self->_tlvs)
    {
      return 1;
    }

    v8 = self->_composeTLVs == 0;
  }

  return !v8;
}

- (void)addMetaDataTLV:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, MEMORY[0x277D86220], a3, "attempting to add a nil tlv to payload %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)prepareData
{
  OUTLINED_FUNCTION_4_0(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, MEMORY[0x277D86220], v1, "could not open url for writing %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)appendCompressedPayloadToFile:(uint64_t *)a1 error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, MEMORY[0x277D86220], v1, "Could not write data to %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)appendCompressedPayloadToFile:(uint64_t *)a1 error:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, MEMORY[0x277D86220], v1, "Could not open file handle for reading %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)expandDictionaryWithPayloadsFolder:(uint64_t)a3 metaDataTable:(uint64_t)a4 error:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, MEMORY[0x277D86220], a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end