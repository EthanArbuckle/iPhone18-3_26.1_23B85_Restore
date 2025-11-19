@interface UARPSuperBinaryAsset
+ (BOOL)versionFromBNIString:(id)a3 version:(UARPVersion *)a4;
+ (BOOL)versionFromString:(id)a3 version:(UARPVersion *)a4;
- (BOOL)decomposeToURL:(id)a3 error:(id *)a4;
- (BOOL)expandPlistWithPayloadsFolder:(id)a3 error:(id *)a4;
- (BOOL)exportSuperBinaryContentToFilepath:(id)a3 range:(_NSRange)a4 error:(id *)a5;
- (BOOL)parseFromPlistFormatVersion:(id)a3 error:(id *)a4;
- (BOOL)parseFromPlistSuperBinaryMetaDataTLVs:(id)a3 payloadsURL:(id)a4 error:(id *)a5;
- (BOOL)parseFromPlistSuperBinaryMetaDataValuesTable:(id *)a3;
- (BOOL)parseFromPlistSuperBinaryPayloads:(id)a3 payloadsURL:(id)a4 error:(id *)a5;
- (BOOL)parseFromPlistSuperBinaryVersion:(id)a3 error:(id *)a4;
- (BOOL)writeToURL:(id)a3 payloadStartOffset:(unint64_t)a4 error:(id *)a5;
- (UARPSuperBinaryAsset)initWithFormatVersion:(id)a3 majorVersion:(id)a4 minorVersion:(id)a5 releaseVersion:(id)a6 buildVersion:(id)a7;
- (UARPSuperBinaryAsset)initWithFormatVersion:(unint64_t)a3 assetVersion:(id)a4;
- (UARPSuperBinaryAsset)initWithPlist:(id)a3 metadataPlist:(id)a4;
- (UARPSuperBinaryAsset)initWithURL:(id)a3;
- (UARPSuperBinaryAsset)initWithURL:(id)a3 assetTag:(id)a4 serialNumber:(id)a5;
- (_NSRange)rangeMetadata;
- (id)computeHash;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)payloadData:(id)a3 range:(_NSRange)a4 error:(id *)a5;
- (id)prepareMetaData;
- (void)addMetaDataTLV:(id)a3;
- (void)addPayload:(id)a3;
- (void)processBVERVersionString:(id)a3;
- (void)processVersionString:(id)a3;
@end

@implementation UARPSuperBinaryAsset

- (UARPSuperBinaryAsset)initWithFormatVersion:(id)a3 majorVersion:(id)a4 minorVersion:(id)a5 releaseVersion:(id)a6 buildVersion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [UARPAssetVersion alloc];
  v16 = [v13 unsignedIntegerValue];
  v17 = [v13 unsignedIntegerValue];

  v18 = [v12 unsignedIntegerValue];
  v19 = [v11 unsignedIntegerValue];

  v20 = [(UARPAssetVersion *)v15 initWithMajorVersion:v16 minorVersion:v17 releaseVersion:v18 buildVersion:v19];
  v21 = [v14 unsignedIntegerValue];

  v22 = [(UARPSuperBinaryAsset *)self initWithFormatVersion:v21 assetVersion:v20];
  return v22;
}

- (UARPSuperBinaryAsset)initWithFormatVersion:(unint64_t)a3 assetVersion:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = UARPSuperBinaryAsset;
  v7 = [(UARPSuperBinaryAsset *)&v13 init];
  if (v7)
  {
    v8 = os_log_create("com.apple.accessoryupdater.uarp", "uploader");
    log = v7->_log;
    v7->_log = v8;

    v7->_formatVersion = a3;
    v10 = [v6 copy];
    assetVersion = v7->_assetVersion;
    v7->_assetVersion = v10;
  }

  return v7;
}

- (UARPSuperBinaryAsset)initWithPlist:(id)a3 metadataPlist:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = UARPSuperBinaryAsset;
  v8 = [(UARPSuperBinaryAsset *)&v16 init];
  if (v8)
  {
    v9 = os_log_create("com.apple.accessoryupdater.uarp", "uploader");
    log = v8->_log;
    v8->_log = v9;

    v11 = [v6 copy];
    plist = v8->_plist;
    v8->_plist = v11;

    if (v7)
    {
      v13 = [v7 copy];
      plistMetaData = v8->_plistMetaData;
      v8->_plistMetaData = v13;
    }
  }

  return v8;
}

- (UARPSuperBinaryAsset)initWithURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UARPSuperBinaryAsset;
  v5 = [(UARPSuperBinaryAsset *)&v11 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.accessoryupdater.uarp", "uploader");
    log = v5->_log;
    v5->_log = v6;

    v8 = [v4 copy];
    url = v5->_url;
    v5->_url = v8;
  }

  return v5;
}

- (UARPSuperBinaryAsset)initWithURL:(id)a3 assetTag:(id)a4 serialNumber:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = UARPSuperBinaryAsset;
  v11 = [(UARPSuperBinaryAsset *)&v23 init];
  if (v11)
  {
    v12 = os_log_create("com.apple.accessoryupdater.uarp", "uploader");
    log = v11->_log;
    v11->_log = v12;

    v14 = [v8 copy];
    url = v11->_url;
    v11->_url = v14;

    v16 = [v9 copy];
    assetTag = v11->_assetTag;
    v11->_assetTag = v16;

    v18 = [MEMORY[0x277CBEAA8] date];
    timeCreated = v11->_timeCreated;
    v11->_timeCreated = v18;

    v20 = [v10 copy];
    serialNumber = v11->_serialNumber;
    v11->_serialNumber = v20;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UARPSuperBinaryAsset alloc] initWithFormatVersion:self->_formatVersion assetVersion:self->_assetVersion];
  tlvs = self->_tlvs;
  if (tlvs)
  {
    v6 = [(NSMutableArray *)tlvs copy];
    v7 = v4->_tlvs;
    v4->_tlvs = v6;
  }

  payloads = self->_payloads;
  if (payloads)
  {
    v9 = [(NSMutableArray *)payloads copy];
    v10 = v4->_payloads;
    v4->_payloads = v9;
  }

  plist = self->_plist;
  if (plist)
  {
    v12 = [(NSURL *)plist copy];
    v13 = v4->_plist;
    v4->_plist = v12;
  }

  plistMetaData = self->_plistMetaData;
  if (plistMetaData)
  {
    v15 = [(NSURL *)plistMetaData copy];
    v16 = v4->_plistMetaData;
    v4->_plistMetaData = v15;
  }

  url = self->_url;
  if (url)
  {
    v18 = [(NSURL *)url copy];
    v19 = v4->_url;
    v4->_url = v18;
  }

  metaDataTable = self->_metaDataTable;
  if (metaDataTable)
  {
    v21 = [(UARPSuperBinaryMetaDataTable *)metaDataTable copy];
    v22 = v4->_metaDataTable;
    v4->_metaDataTable = v21;
  }

  plistDictionary = self->_plistDictionary;
  if (plistDictionary)
  {
    v24 = [(NSDictionary *)plistDictionary copy];
    v25 = v4->_plistDictionary;
    v4->_plistDictionary = v24;
  }

  v26 = *&self->_superBinaryHeader.superBinaryFormatVersion;
  v27 = *&self->_superBinaryHeader.superBinaryVersion.minor;
  *&v4->_superBinaryHeader.superBinaryMetadataOffset = *&self->_superBinaryHeader.superBinaryMetadataOffset;
  *&v4->_superBinaryHeader.superBinaryVersion.minor = v27;
  *&v4->_superBinaryHeader.superBinaryFormatVersion = v26;
  metaData = self->_metaData;
  if (metaData)
  {
    v29 = [(NSMutableData *)metaData copy];
    v30 = v4->_metaData;
    v4->_metaData = v29;
  }

  assetTag = self->_assetTag;
  if (assetTag)
  {
    v32 = [(UARPAssetTag *)assetTag copy];
    v33 = v4->_assetTag;
    v4->_assetTag = v32;
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    v35 = [(NSString *)serialNumber copy];
    v36 = v4->_serialNumber;
    v4->_serialNumber = v35;
  }

  objc_storeStrong(&v4->_timeCreated, self->_timeCreated);
  return v4;
}

- (void)addMetaDataTLV:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (!self->_tlvs)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      tlvs = self->_tlvs;
      self->_tlvs = v5;
    }

    if ([v4 type] == 3166200581)
    {
      [(UARPSuperBinaryAsset *)self processVersionString:v4];
    }

    else if ([v4 type] == 3166200582)
    {
      [(UARPSuperBinaryAsset *)self processBVERVersionString:v4];
    }

    else
    {
      [(NSMutableArray *)self->_tlvs addObject:v4];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryAsset addMetaDataTLV:];
  }
}

- (void)addPayload:(id)a3
{
  v4 = a3;
  if (v4)
  {
    payloads = self->_payloads;
    if (!payloads)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = self->_payloads;
      self->_payloads = v6;

      payloads = self->_payloads;
    }

    [(NSMutableArray *)payloads addObject:v4];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryAsset addPayload:];
  }
}

- (BOOL)writeToURL:(id)a3 payloadStartOffset:(unint64_t)a4 error:(id *)a5
{
  v159 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v145 = a5;
  if (self->_plist)
  {
    v146 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:?];
    v147 = [v146 objectForKeyedSubscript:@"SuperBinary Payloads"];
  }

  else
  {
    v146 = 0;
    v147 = 0;
  }

  v8 = objc_opt_new();
  p_payloads = &self->_payloads;
  if ([(NSMutableArray *)self->_payloads count])
  {
    v10 = 0;
    v11 = MEMORY[0x277CBEC38];
    do
    {
      v12 = [(NSMutableArray *)*p_payloads objectAtIndexedSubscript:v10];
      v13 = [v12 isValid];

      if (v13)
      {
        v14 = [(NSMutableArray *)*p_payloads objectAtIndexedSubscript:v10];
        [v8 addObject:v14];
      }

      else
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v16 = *p_payloads;
          v17 = log;
          v18 = [(NSMutableArray *)v16 objectAtIndexedSubscript:v10];
          *buf = 138412290;
          *v156 = v18;
          _os_log_error_impl(&dword_247AA7000, v17, OS_LOG_TYPE_ERROR, "Missing payload\n%@", buf, 0xCu);
        }

        v14 = [v147 objectAtIndexedSubscript:v10];
        [v14 setObject:v11 forKeyedSubscript:@"Payload Missing"];
      }

      ++v10;
    }

    while (v10 < [(NSMutableArray *)*p_payloads count]);
  }

  objc_storeStrong(&self->_payloads, v8);
  if (!v7)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create file for composing superbinary, url is nil"];
    v26 = objc_opt_new();
    [v26 setObject:v21 forKeyedSubscript:*MEMORY[0x277CCA450]];
    v43 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v26];
    v24 = v43;
    if (v145)
    {
      v44 = v43;
      *v145 = v24;
    }

    if (!os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v19 = [v7 fileSystemRepresentation];
  if (v19)
  {
    v20 = v19;
    if (*v19)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:v19];
      v22 = [MEMORY[0x277CCAA00] defaultManager];
      v23 = [v22 createFileAtPath:v21 contents:0 attributes:0];

      if (v23)
      {
        v154 = 0;
        v24 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v7 error:&v154];
        v25 = v154;
        v26 = v25;
        if (v24)
        {
          v135 = v25;
          v136 = v7;
          v137 = v21;
          v158 = 0;
          v157 = 0u;
          *&v156[4] = 0u;
          *buf = self->_formatVersion;
          *v156 = 44;
          *&v156[8] = [(UARPAssetVersion *)self->_assetVersion majorVersion];
          *&v156[12] = [(UARPAssetVersion *)self->_assetVersion minorVersion];
          *&v156[16] = [(UARPAssetVersion *)self->_assetVersion releaseVersion];
          LODWORD(v157) = [(UARPAssetVersion *)self->_assetVersion buildVersion];
          *&v156[4] = 44;
          v133 = 40 * [(NSMutableArray *)self->_payloads count];
          v138 = malloc_type_calloc([(NSMutableArray *)self->_payloads count], 0x28uLL, 0x10000400A747E1EuLL);
          v142 = v24;
          if ([(NSMutableArray *)self->_payloads count])
          {
            v27 = 0;
            v28 = v138 + 7;
            do
            {
              v29 = [(NSMutableArray *)*p_payloads objectAtIndex:v27];
              *(v28 - 7) = 40;
              *(v28 - 6) = [v29 preparePackedTag];
              [v29 prepareUarpVersion:v28 - 5];
              v30 = [v29 prepareMetaData];
              *v28 = [v30 length];
              v31 = [v29 prepareData];
              v28[2] = [v29 preparedDataLength];
              v32 = [v29 hashMetaData];
              *v28 = [v32 length];
              if ([v29 needsCompression] && objc_msgSend(v29, "allowCompressionHeaders"))
              {
                if (self->_formatVersion <= 2)
                {
                  v33 = -[NSMutableArray objectAtIndex:](*p_payloads, "objectAtIndex:", [v29 compressionHeaderIndex]);
                  v34 = [v29 compressionHeaders];
                  [v33 setPayloadToData:v34];

                  v24 = v142;
                }

                v35 = [v29 metaData];
                *v28 = [v35 length];
              }

              ++v27;
              v28 += 10;
            }

            while (v27 < [(NSMutableArray *)*p_payloads count]);
          }

          HIDWORD(v157) = *&v156[4];
          v158 = v133;
          *&v156[4] += v133;
          DWORD1(v157) = *&v156[4];
          v36 = [(UARPSuperBinaryAsset *)self prepareMetaData];
          DWORD2(v157) = [v36 length];
          *&v156[4] += DWORD2(v157);
          if ([(NSMutableArray *)self->_payloads count])
          {
            v37 = 0;
            v38 = v138 + 7;
            do
            {
              v39 = *&v156[4];
              *(v38 - 1) = *&v156[4];
              v40 = *v38;
              v38 += 10;
              *&v156[4] = v40 + v39;
              ++v37;
            }

            while (v37 < [(NSMutableArray *)*p_payloads count]);
          }

          if (a4)
          {
            v41 = [MEMORY[0x277CBEB28] dataWithLength:a4 - *&v156[4]];
            v42 = [v41 length];
            *&v156[4] += v42;
          }

          else
          {
            v41 = 0;
          }

          v21 = v137;
          if ([(NSMutableArray *)*p_payloads count])
          {
            v57 = 0;
            v58 = v138 + 9;
            do
            {
              v59 = *&v156[4];
              *(v58 - 1) = *&v156[4];
              v60 = *v58;
              v58 += 10;
              *&v156[4] = v60 + v59;
              ++v57;
            }

            while (v57 < [(NSMutableArray *)*p_payloads count]);
          }

          v141 = v41;
          uarpSuperBinaryHeaderEndianSwap(buf, buf);
          [MEMORY[0x277CBEA90] dataWithBytes:buf length:44];
          v132 = v153[1] = 0;
          v61 = [v24 uarpWriteData:? error:?];
          v62 = 0;
          v134 = v62;
          if (!v61)
          {
            v86 = v62;
            free(v138);
            v87 = @"<unknown>";
            if (v86)
            {
              v87 = v86;
            }

            v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to superbinary header at %@ %@", v137, v87];;
            v88 = objc_opt_new();
            [v88 setObject:v65 forKeyedSubscript:*MEMORY[0x277CCA450]];
            v89 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v88];
            v90 = v89;
            if (v145)
            {
              v91 = v89;
              *v145 = v90;
            }

            v7 = v136;
            v92 = v132;
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              [UARPSuperBinaryAsset writeToURL:payloadStartOffset:error:];
            }

            v47 = 0;
            v48 = v146;
            goto LABEL_134;
          }

          v131 = v36;
          if ([(NSMutableArray *)*p_payloads count])
          {
            v63 = 0;
            v64 = v138;
            while (1)
            {
              uarpPayloadHeaderEndianSwap(v64, v64);
              v65 = [MEMORY[0x277CBEA90] dataWithBytes:v64 length:40];
              v153[0] = 0;
              v66 = [v142 uarpWriteData:v65 error:v153];
              v67 = v153[0];
              v68 = v67;
              if ((v66 & 1) == 0)
              {
                break;
              }

              ++v63;
              v64 += 10;
              if (v63 >= [(NSMutableArray *)*p_payloads count])
              {
                goto LABEL_62;
              }
            }

            free(v138);
            v99 = @"<unknown>";
            if (v68)
            {
              v99 = v68;
            }

            v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to superbinary payload header index %lu at %@ %@", v63, v137, v99];;
            v101 = objc_opt_new();
            [v101 setObject:v100 forKeyedSubscript:*MEMORY[0x277CCA450]];
            v102 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v101];
            v103 = v102;
            if (v145)
            {
              v104 = v102;
              *v145 = v103;
            }

            v7 = v136;
            v24 = v142;
            v36 = v131;
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              [UARPSuperBinaryAsset writeToURL:payloadStartOffset:error:];
            }

            v47 = 0;
            v48 = v146;
            v21 = v137;
            goto LABEL_133;
          }

LABEL_62:
          free(v138);
          metaData = self->_metaData;
          v152 = 0;
          v24 = v142;
          v70 = [v142 uarpWriteData:metaData error:&v152];
          v65 = v152;
          v7 = v136;
          if (!v70)
          {
            v93 = @"<unknown>";
            if (v65)
            {
              v93 = v65;
            }

            v94 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to superbinary metadata at %@ %@", v137, v93];;
            v95 = objc_opt_new();
            [v95 setObject:v94 forKeyedSubscript:*MEMORY[0x277CCA450]];
            v96 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v95];
            v97 = v96;
            if (v145)
            {
              v98 = v96;
              *v145 = v97;
            }

            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              [UARPSuperBinaryAsset writeToURL:payloadStartOffset:error:];
            }

            v47 = 0;
            v48 = v146;
            goto LABEL_132;
          }

          if ([(NSMutableArray *)*p_payloads count])
          {
            v71 = 0;
            while (1)
            {
              v72 = [(NSMutableArray *)*p_payloads objectAtIndex:v71];
              v73 = [v72 metaData];
              v151 = 0;
              v74 = [v24 uarpWriteData:v73 error:&v151];
              v75 = v151;

              if ((v74 & 1) == 0)
              {
                break;
              }

              ++v71;
              v24 = v142;
              if (v71 >= [(NSMutableArray *)*p_payloads count])
              {
                goto LABEL_67;
              }
            }

            if (v75)
            {
              v105 = v75;
            }

            else
            {
              v105 = @"<unknown>";
            }

            v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to superbinary payload metadata index %lu at %@ %@", v71, v137, v105];;
            v107 = objc_opt_new();
            v139 = v106;
            [v107 setObject:v106 forKeyedSubscript:*MEMORY[0x277CCA450]];
            v108 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v107];
            v109 = v108;
            if (v145)
            {
              v110 = v108;
              *v145 = v109;
            }

            v24 = v142;
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              [UARPSuperBinaryAsset writeToURL:payloadStartOffset:error:];
            }

            goto LABEL_131;
          }

LABEL_67:
          if (v141)
          {
            v150 = 0;
            v76 = [v24 uarpWriteData:v141 error:&v150];
            v77 = v150;
            v78 = v77;
            if ((v76 & 1) == 0)
            {
              if (v77)
              {
                v111 = v77;
              }

              else
              {
                v111 = @"<unknown>";
              }

              v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to superbinary padding at %@ %@", v137, v111];;
              v113 = objc_opt_new();
              [v113 setObject:v112 forKeyedSubscript:*MEMORY[0x277CCA450]];
              v114 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v113];
              v115 = v114;
              if (v145)
              {
                v116 = v114;
                *v145 = v115;
              }

              if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
              {
                [UARPSuperBinaryAsset writeToURL:payloadStartOffset:error:];
              }

              goto LABEL_130;
            }
          }

          if ([(NSMutableArray *)*p_payloads count])
          {
            v79 = 0;
            while (1)
            {
              v78 = [(NSMutableArray *)*p_payloads objectAtIndex:v79];
              v149 = 0;
              v80 = [v78 appendCompressedPayloadToFile:v24 error:&v149];
              v81 = v149;
              v82 = v81;
              if ((v80 & 1) == 0)
              {
                break;
              }

              if (++v79 >= [(NSMutableArray *)*p_payloads count])
              {
                goto LABEL_74;
              }
            }

            if (v81)
            {
              v117 = v81;
            }

            else
            {
              v117 = @"<unknown>";
            }

            v118 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to superbinary payload data index %lu at %@ %@", v79, v137, v117];;
            v119 = objc_opt_new();
            v143 = v118;
            [v119 setObject:v118 forKeyedSubscript:*MEMORY[0x277CCA450]];
            v120 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v119];
            v121 = v120;
            if (v145)
            {
              v122 = v120;
              *v145 = v121;
            }

            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              [UARPSuperBinaryAsset writeToURL:payloadStartOffset:error:];
            }

            goto LABEL_130;
          }

LABEL_74:
          v48 = v146;
          v21 = v137;
          if (!v146)
          {
LABEL_77:
            [v24 uarpCloseAndReturnError:v145];
            v47 = 1;
LABEL_132:
            v36 = v131;
LABEL_133:
            v92 = v132;
LABEL_134:

            v26 = v135;
            v50 = v141;
            goto LABEL_135;
          }

          v78 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v146 requiringSecureCoding:0 error:v145];
          v148 = 0;
          v83 = [v24 uarpWriteData:v78 error:&v148];
          v84 = v148;
          v85 = v84;
          if (v83)
          {

            v48 = v146;
            goto LABEL_77;
          }

          v123 = @"<unknown>";
          if (v84)
          {
            v123 = v84;
          }

          v124 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to superbinary plist at %@ %@", v137, v123];;
          v125 = objc_opt_new();
          v144 = v124;
          [v125 setObject:v124 forKeyedSubscript:*MEMORY[0x277CCA450]];
          v126 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v125];
          v127 = v126;
          if (v145)
          {
            v128 = v126;
            *v145 = v127;
          }

          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPSuperBinaryAsset writeToURL:payloadStartOffset:error:];
          }

LABEL_130:
LABEL_131:
          v47 = 0;
          v48 = v146;
          v21 = v137;
          goto LABEL_132;
        }

        v52 = @"<unknown>";
        if (v25)
        {
          v52 = v25;
        }

        v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open file for composing superbinary at %@ %@", v7, v52];;
        v53 = objc_opt_new();
        [v53 setObject:v50 forKeyedSubscript:*MEMORY[0x277CCA450]];
        v54 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v53];
        v55 = v54;
        if (v145)
        {
          v56 = v54;
          *v145 = v55;
        }

        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [UARPSuperBinaryAsset writeToURL:payloadStartOffset:error:];
        }
      }

      else
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create file for composing superbinary at %@", v21];
        v24 = objc_opt_new();
        [v24 setObject:v26 forKeyedSubscript:*MEMORY[0x277CCA450]];
        v49 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v24];
        v50 = v49;
        if (v145)
        {
          v51 = v49;
          *v145 = v50;
        }

        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [UARPSuperBinaryAsset writeToURL:payloadStartOffset:error:];
        }
      }

      v47 = 0;
      v48 = v146;
LABEL_135:

      goto LABEL_136;
    }

    v19 = strlen(v19);
  }

  else
  {
    v20 = "NULL";
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create file for composing superbinary, filename is %s or length is %lu", v20, v19];
  v26 = objc_opt_new();
  [v26 setObject:v21 forKeyedSubscript:*MEMORY[0x277CCA450]];
  v45 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v26];
  v24 = v45;
  if (v145)
  {
    v46 = v45;
    *v145 = v24;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
LABEL_39:
    [UARPSuperBinaryAsset writeToURL:payloadStartOffset:error:];
  }

LABEL_40:
  v47 = 0;
  v48 = v146;
LABEL_136:

  v129 = *MEMORY[0x277D85DE8];
  return v47;
}

+ (BOOL)versionFromString:(id)a3 version:(UARPVersion *)a4
{
  v5 = [a3 componentsSeparatedByString:@"."];
  if ([v5 count] < 4)
  {
    a4->build = 0;
  }

  else
  {
    v6 = [v5 objectAtIndex:3];
    a4->build = [v6 integerValue];
  }

  if ([v5 count] < 3)
  {
    a4->release = 0;
  }

  else
  {
    v7 = [v5 objectAtIndex:2];
    a4->release = [v7 integerValue];
  }

  if ([v5 count] < 2)
  {
    a4->minor = 0;
  }

  else
  {
    v8 = [v5 objectAtIndex:1];
    a4->minor = [v8 integerValue];
  }

  v9 = [v5 count];
  if (v9)
  {
    v10 = [v5 objectAtIndex:0];
    a4->major = [v10 integerValue];
  }

  else
  {
    a4->major = 0;
  }

  return v9 != 0;
}

+ (BOOL)versionFromBNIString:(id)a3 version:(UARPVersion *)a4
{
  v5 = [a3 componentsSeparatedByString:@"."];
  if ([v5 count] == 3)
  {
    v6 = [v5 objectAtIndexedSubscript:1];
    v7 = [v6 longLongValue];

    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 objectAtIndexedSubscript:0];
    v10 = [v5 objectAtIndexedSubscript:2];
    v11 = [v8 stringWithFormat:@"%@.%d.%d.%@", v9, HIDWORD(v7), v7, v10];

    v12 = [UARPSuperBinaryAsset versionFromString:v11 version:a4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)expandPlistWithPayloadsFolder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:self->_plist];
  v8 = [(UARPSuperBinaryAsset *)self parseFromPlistFormatVersion:v7 error:a4]&& [(UARPSuperBinaryAsset *)self parseFromPlistSuperBinaryMetaDataValuesTable:a4]&& [(UARPSuperBinaryAsset *)self parseFromPlistSuperBinaryMetaDataTLVs:v7 payloadsURL:v6 error:a4]&& (self->_assetVersion || [(UARPSuperBinaryAsset *)self parseFromPlistSuperBinaryVersion:v7 error:a4]) && [(UARPSuperBinaryAsset *)self parseFromPlistSuperBinaryPayloads:v7 payloadsURL:v6 error:a4];

  return v8;
}

- (BOOL)parseFromPlistFormatVersion:(id)a3 error:(id *)a4
{
  v6 = [a3 objectForKeyedSubscript:@"SuperBinary Format Version"];
  v7 = v6;
  if (v6)
  {
    self->_formatVersion = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"superbinary format version is nil"];
    v9 = objc_opt_new();
    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA450]];
    v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v9];
    if (a4)
    {
      v10 = v10;
      *a4 = v10;
    }
  }

  return v7 != 0;
}

- (BOOL)parseFromPlistSuperBinaryVersion:(id)a3 error:(id *)a4
{
  v6 = [a3 objectForKeyedSubscript:@"SuperBinary Firmware Version"];
  if (v6)
  {
    v17 = 0;
    v18 = 0;
    v7 = [UARPSuperBinaryAsset versionFromString:v6 version:&v17];
    if (v7)
    {
      v8 = [UARPAssetVersion alloc];
      v9 = [(UARPAssetVersion *)v8 initWithMajorVersion:v17 minorVersion:HIDWORD(v17) releaseVersion:v18 buildVersion:HIDWORD(v18)];
      assetVersion = self->_assetVersion;
      self->_assetVersion = v9;
    }

    else
    {
      assetVersion = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot convert superbinary version string to object"];
      v14 = objc_opt_new();
      [v14 setObject:assetVersion forKeyedSubscript:*MEMORY[0x277CCA450]];
      v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v14];
      if (a4)
      {
        v15 = v15;
        *a4 = v15;
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"superbinary plist does not contain superbinary version"];
    v12 = objc_opt_new();
    [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA450]];
    v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v12];
    if (a4)
    {
      v13 = v13;
      *a4 = v13;
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)parseFromPlistSuperBinaryMetaDataValuesTable:(id *)a3
{
  plistMetaData = self->_plistMetaData;
  v6 = [UARPSuperBinaryMetaDataTable alloc];
  v7 = v6;
  if (plistMetaData)
  {
    v8 = [(UARPSuperBinaryMetaDataTable *)v6 initWithPlist:self->_plistMetaData];
    metaDataTable = self->_metaDataTable;
    self->_metaDataTable = v8;

    v10 = self->_metaDataTable;

    return [(UARPSuperBinaryMetaDataTable *)v10 expandPlist:a3];
  }

  else
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_formatVersion];
    v13 = [(UARPSuperBinaryMetaDataTable *)v7 initAppleSpecificWithFormatVersion:v12];
    v14 = self->_metaDataTable;
    self->_metaDataTable = v13;

    return 1;
  }
}

- (BOOL)parseFromPlistSuperBinaryMetaDataTLVs:(id)a3 payloadsURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v10 = [v8 objectForKeyedSubscript:@"SuperBinary MetaData"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__UARPSuperBinaryAsset_parseFromPlistSuperBinaryMetaDataTLVs_payloadsURL_error___block_invoke;
  v13[3] = &unk_278EC2430;
  v13[4] = self;
  v11 = v9;
  v14 = v11;
  v15 = &v16;
  [v10 enumerateKeysAndObjectsUsingBlock:v13];
  *a5 = v17[5];

  _Block_object_dispose(&v16, 8);
  return 1;
}

void __80__UARPSuperBinaryAsset_parseFromPlistSuperBinaryMetaDataTLVs_payloadsURL_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 56);
  v8 = *(*(a1 + 48) + 8);
  obj = 0;
  v9 = [v7 tlvArrayWithKey:a2 keyValue:a3 payloadsURL:v6 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(a1 + 32) addMetaDataTLV:{*(*(&v16 + 1) + 8 * v14++), v16}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }

  if (!v10 || ![v10 count])
  {
    *a4 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)parseFromPlistSuperBinaryPayloads:(id)a3 payloadsURL:(id)a4 error:(id *)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a4;
  [a3 objectForKeyedSubscript:@"SuperBinary Payloads"];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = v43 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v41 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [[UARPSuperBinaryAssetPayload alloc] initWithDictionary:*(*(&v40 + 1) + 8 * v13)];
      v15 = v14;
      if (!v14)
      {
        break;
      }

      [(UARPSuperBinaryAssetPayload *)v14 updateFormatVersion:self->_formatVersion];
      [(UARPSuperBinaryAsset *)self addPayload:v15];
      if (![(UARPSuperBinaryAssetPayload *)v15 expandDictionaryWithPayloadsFolder:v8 metaDataTable:self->_metaDataTable error:a5])
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          [UARPSuperBinaryAsset parseFromPlistSuperBinaryPayloads:? payloadsURL:? error:?];
        }

LABEL_30:

        v26 = 0;
        v25 = v9;
        goto LABEL_31;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not expand payload while parsing plist"];
    v28 = objc_opt_new();
    [v28 setObject:v27 forKeyedSubscript:*MEMORY[0x277CCA450]];
    v29 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v28];
    if (a5)
    {
      v29 = v29;
      *a5 = v29;
    }

    goto LABEL_30;
  }

LABEL_10:
  v33 = v9;
  v34 = v8;

  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = self->_payloads;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v36 + 1) + 8 * i);
        if ([v21 needsCompression] && self->_formatVersion <= 2)
        {
          v22 = [[UARPSuperBinaryAssetPayload alloc] initWithTag:@"CHDR" majorVersion:&unk_2859CAC28 minorVersion:&unk_2859CAC28 releaseVersion:0 buildVersion:0];
          if (v22)
          {
            v23 = -[UARPSuperBinaryAssetTLV initWithType:unsignedInt32:]([UARPSuperBinaryAssetTLV alloc], "initWithType:unsignedInt32:", 3436347663, [v35 count] + -[NSMutableArray count](self->_payloads, "count"));
            [v21 addMetaDataTLV:v23];
            [v35 addObject:v22];
          }

          else
          {
            v24 = self->_log;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v45 = self;
              _os_log_error_impl(&dword_247AA7000, v24, OS_LOG_TYPE_ERROR, "attempting to add a nil header payload to payload %@", buf, 0xCu);
            }
          }
        }
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v18);
  }

  v25 = v35;
  [(NSMutableArray *)self->_payloads addObjectsFromArray:v35];
  v26 = 1;
  v9 = v33;
  v8 = v34;
LABEL_31:

  v31 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)decomposeToURL:(id)a3 error:(id *)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  url = self->_url;
  p_url = &self->_url;
  v59 = 0;
  v8 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:url error:&v59];
  v9 = v59;
  if (!v8)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPSuperBinaryAsset decomposeToURL:? error:?];
      if (a4)
      {
        goto LABEL_30;
      }
    }

    else if (a4)
    {
LABEL_30:
      v39 = v9;
      v36 = 0;
      *a4 = v9;
      goto LABEL_46;
    }

    v36 = 0;
    goto LABEL_46;
  }

  v10 = [v8 uarpReadDataUpToLength:44 error:a4];
  [v10 getBytes:&self->_superBinaryHeader length:44];
  uarpSuperBinaryHeaderEndianSwap(&self->_superBinaryHeader.superBinaryFormatVersion, &self->_superBinaryHeader.superBinaryFormatVersion);
  self->_formatVersion = self->_superBinaryHeader.superBinaryFormatVersion;
  v11 = [[UARPAssetVersion alloc] initWithMajorVersion:self->_superBinaryHeader.superBinaryVersion.major minorVersion:self->_superBinaryHeader.superBinaryVersion.minor releaseVersion:self->_superBinaryHeader.superBinaryVersion.release buildVersion:self->_superBinaryHeader.superBinaryVersion.build];
  assetVersion = self->_assetVersion;
  self->_assetVersion = v11;

  if (self->_superBinaryHeader.superBinaryMetadataLength)
  {
    superBinaryMetadataOffset = self->_superBinaryHeader.superBinaryMetadataOffset;
    v58 = 0;
    v14 = [v8 uarpSeekToOffset:superBinaryMetadataOffset error:&v58];
    v15 = v58;
    if ((v14 & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPSuperBinaryAsset decomposeToURL:error:];
        if (!a4)
        {
          goto LABEL_44;
        }
      }

      else if (!a4)
      {
        goto LABEL_44;
      }

      v40 = v15;
      *a4 = v15;
      goto LABEL_44;
    }

    v16 = [v8 uarpReadDataUpToLength:self->_superBinaryHeader.superBinaryMetadataLength error:a4];
    v17 = [UARPSuperBinaryAssetTLV decomposeTLVs:v16];
    tlvs = self->_tlvs;
    self->_tlvs = v17;
  }

  v45 = v10;
  v46 = v9;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  payloads = self->_payloads;
  self->_payloads = v19;

  payloadHeadersLength = self->_superBinaryHeader.payloadHeadersLength;
  if (payloadHeadersLength < 0x28)
  {
LABEL_23:
    v50 = 0;
    v36 = [v8 uarpCloseAndReturnError:&v50];
    v37 = v50;
    v10 = v45;
    v9 = v46;
    if ((v36 & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPSuperBinaryAsset decomposeToURL:? error:?];
        if (!a4)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (a4)
      {
LABEL_26:
        v38 = v37;
        *a4 = v37;
      }
    }

LABEL_27:

    goto LABEL_45;
  }

  v22 = 0;
  v23 = 0;
  v24 = payloadHeadersLength / 0x28uLL;
  v47 = a4;
  v48 = v24;
  while (1)
  {
    [v8 uarpSeekToOffset:v22 + self->_superBinaryHeader.payloadHeadersOffset error:a4];
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v15 = [v8 uarpReadDataUpToLength:40 error:a4];
    [v15 getBytes:&v55 length:40];
    uarpPayloadHeaderEndianSwap(&v55, &v55);
    v25 = [[UARPSuperBinaryAssetPayload alloc] initWithPayloadHeader:&v55];
    if (!v25)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v61 = self;
        _os_log_error_impl(&dword_247AA7000, log, OS_LOG_TYPE_ERROR, "attempting to decompose a nil payload for superbinary %@", buf, 0xCu);
      }

      goto LABEL_22;
    }

    v26 = v25;
    v54 = 0;
    uarpTagStructUnpack32(DWORD1(v55), &v54);
    v53 = 1380206659;
    if (!uarp4ccCompare(&v54, &v53))
    {
      break;
    }

    v27 = self->_log;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = self;
      _os_log_error_impl(&dword_247AA7000, v27, OS_LOG_TYPE_ERROR, "skipping CHDR payload for superbinary %@", buf, 0xCu);
    }

LABEL_21:

LABEL_22:
    ++v23;
    v22 += 40;
    if (v24 == v23)
    {
      goto LABEL_23;
    }
  }

  [(UARPSuperBinaryAssetPayload *)v26 setSuperBinaryURL:*p_url];
  if (!HIDWORD(v56))
  {
LABEL_16:
    if (v6 && HIDWORD(v57))
    {
      *buf = 0;
      uarpTagStructUnpack32(DWORD1(v55), buf);
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c.%lu", buf[0], buf[1], buf[2], buf[3], v23];
      v51 = 0;
      v32 = v6;
      v33 = [(UARPSuperBinaryAssetPayload *)v26 expandPayloadToURL:v6 payloadFilename:v30 superbinary:v8 offset:v57 length:HIDWORD(v57) error:&v51];
      v34 = v51;
      v35 = v34;
      if (!v33)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [UARPSuperBinaryAsset decomposeToURL:error:];
        }

        v6 = v32;
        v9 = v46;
        if (v47)
        {
          v42 = v35;
          *v47 = v35;
        }

        v10 = v45;
        goto LABEL_43;
      }

      v6 = v32;
      a4 = v47;
      v24 = v48;
    }

    [(NSMutableArray *)self->_payloads addObject:v26];
    goto LABEL_21;
  }

  v52 = 0;
  v29 = [v8 uarpSeekToOffset:DWORD2(v56) error:&v52];
  v30 = v52;
  if (v29)
  {
    v31 = [v8 uarpReadDataUpToLength:HIDWORD(v56) error:a4];
    [(UARPSuperBinaryAssetPayload *)v26 addMetaDataTLVs:v31];

    v24 = v48;
    goto LABEL_16;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryAsset decomposeToURL:error:];
  }

  v10 = v45;
  v9 = v46;
  if (a4)
  {
    v41 = v30;
    *a4 = v30;
  }

LABEL_43:

LABEL_44:
  v36 = 0;
LABEL_45:

LABEL_46:
  v43 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)description
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"------------------\n"];
  [v3 appendFormat:@"SuperBinary Header\n"];
  [v3 appendFormat:@"------------------\n"];
  [v3 appendFormat:@"Format Version  - %u\n", self->_superBinaryHeader.superBinaryFormatVersion];
  [v3 appendFormat:@"Header Length   - %u\n", self->_superBinaryHeader.superBinaryHeaderLength];
  [v3 appendFormat:@"Length          - %u\n", self->_superBinaryHeader.superBinaryLength];
  [v3 appendFormat:@"Version         - <"];
  [v3 appendFormat:@"%u.", self->_superBinaryHeader.superBinaryVersion.major];
  [v3 appendFormat:@"%u.", self->_superBinaryHeader.superBinaryVersion.minor];
  [v3 appendFormat:@"%u.", self->_superBinaryHeader.superBinaryVersion.release];
  [v3 appendFormat:@"%u", self->_superBinaryHeader.superBinaryVersion.build];
  [v3 appendFormat:@">\n"];
  [v3 appendFormat:@"SuperBinary MetaData Offset - %u\n", self->_superBinaryHeader.superBinaryMetadataOffset];
  [v3 appendFormat:@"SuperBinary MetaData Length - %u\n", self->_superBinaryHeader.superBinaryMetadataLength];
  [v3 appendFormat:@"Payloads Headers Offset - %u\n", self->_superBinaryHeader.payloadHeadersOffset];
  [v3 appendFormat:@"Payloads Headers Length - %u\n", self->_superBinaryHeader.payloadHeadersLength];
  [v3 appendFormat:@"\n"];
  [v3 appendFormat:@"-------------------------\n"];
  [v3 appendFormat:@"SuperBinary MetaData TLVs\n"];
  [v3 appendFormat:@"-------------------------\n"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_tlvs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"%@\n", *(*(&v21 + 1) + 8 * i)];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@"\n"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_payloads;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 appendFormat:@"%@\n", *(*(&v17 + 1) + 8 * j)];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }

  [v3 appendFormat:@"-----------------\n"];
  [v3 appendFormat:@"SuperBinary Plist\n"];
  [v3 appendFormat:@"-----------------\n"];
  [v3 appendFormat:@"%@\n", self->_plistDictionary];
  [v3 appendFormat:@"\n"];
  [v3 appendFormat:@"--------------\n"];
  [v3 appendFormat:@"MetaData Plist\n"];
  [v3 appendFormat:@"--------------\n"];
  v14 = [(UARPSuperBinaryMetaDataTable *)self->_metaDataTable dict];
  [v3 appendFormat:@"%@\n", v14];

  [v3 appendFormat:@"\n"];
  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)computeHash
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  url = self->_url;
  v20 = 0;
  v5 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:url error:&v20];
  v6 = v20;
  v19 = 0;
  v7 = [v5 uarpSeekToOffset:0 error:&v19];
  v8 = v19;

  if (v7)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    v9 = 0;
    do
    {
      v10 = v8;
      v17 = 0;
      v11 = [v5 uarpReadDataUpToLength:4096 error:&v17];
      v8 = v17;

      v9 = v11;
      CC_SHA256_Update(&c, [v11 bytes], objc_msgSend(v11, "length"));
    }

    while ([v11 length] == 4096);
    v16 = 0;
    [v5 uarpCloseAndReturnError:&v16];
    v12 = v16;

    CC_SHA256_Final(md, &c);
    for (i = 0; i != 32; ++i)
    {
      [v3 appendFormat:@"%02x", md[i]];
    }
  }

  else
  {
    v12 = v8;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (_NSRange)rangeMetadata
{
  superBinaryMetadataLength = self->_superBinaryHeader.superBinaryMetadataLength;
  superBinaryMetadataOffset = self->_superBinaryHeader.superBinaryMetadataOffset;
  result.length = superBinaryMetadataLength;
  result.location = superBinaryMetadataOffset;
  return result;
}

- (BOOL)exportSuperBinaryContentToFilepath:(id)a3 range:(_NSRange)a4 error:(id *)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:self->_url error:a5];
  v11 = v10;
  if (v10 && [v10 uarpSeekToOffset:location error:a5])
  {
    v12 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v9 error:a5];
    v13 = v12 != 0;
    if (v12)
    {
      do
      {
        if (length >= 0x1000)
        {
          v14 = 4096;
        }

        else
        {
          v14 = length;
        }

        v15 = [v11 uarpReadDataUpToLength:v14 error:a5];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = [v12 uarpWriteData:v15 error:a5];
        if (!v17)
        {
          v14 = 0;
        }

        if (!v17)
        {
          break;
        }

        length -= v14;
      }

      while (length);
      [v11 uarpCloseAndReturnError:a5];
      [v12 uarpCloseAndReturnError:a5];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)prepareMetaData
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  metaData = self->_metaData;
  self->_metaData = v3;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_tlvs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) generateTLV:{0, v14}];
        [(NSMutableData *)self->_metaData appendData:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x277CBEA90] dataWithData:self->_metaData];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)payloadData:(id)a3 range:(_NSRange)a4 error:(id *)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  if ([(NSMutableArray *)self->_payloads containsObject:v9])
  {
    v10 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:self->_url error:a5];
    if (v10 && [v10 uarpSeekToOffset:objc_msgSend(v9 error:{"rangePayload") + location, a5}])
    {
      v11 = [v10 uarpReadDataUpToLength:length error:a5];
      if (v11 && [v10 uarpCloseAndReturnError:a5])
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)processVersionString:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a3 valueAsURL];
  v8 = [v4 stringWithContentsOfURL:v5 encoding:4 error:0];

  v6 = [[UARPAssetVersion alloc] initWithVersionString:v8];
  assetVersion = self->_assetVersion;
  self->_assetVersion = v6;
}

- (void)processBVERVersionString:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a3 valueAsURL];
  v8 = [v4 stringWithContentsOfURL:v5 encoding:4 error:0];

  v6 = [[UARPAssetVersion alloc] initWithBVERString:v8];
  assetVersion = self->_assetVersion;
  self->_assetVersion = v6;
}

- (void)addMetaDataTLV:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "attempting to add a nil tlv to superbinary %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addPayload:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "attempting to add a nil payload to superbinary %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)writeToURL:payloadStartOffset:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)decomposeToURL:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Error seeking to offset for superbinary header; error is %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)decomposeToURL:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Error seeking to offset for payload header; error is %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)decomposeToURL:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, v0, v1, "Error expanding payload to URL; error is %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)decomposeToURL:(uint64_t *)a1 error:.cold.4(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_247AA7000, v2, v3, "Error closing URL %@ to decompose superbinary; error is %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)decomposeToURL:(uint64_t *)a1 error:.cold.5(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_0(&dword_247AA7000, v2, v3, "Error opening URL %@ to decompose superbinary; error is %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end