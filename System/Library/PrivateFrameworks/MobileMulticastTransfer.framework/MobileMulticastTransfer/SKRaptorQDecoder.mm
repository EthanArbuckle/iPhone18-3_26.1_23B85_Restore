@interface SKRaptorQDecoder
- (BOOL)addPacket:(id)packet error:(id *)error;
- (BOOL)addPacketsFromFilesInSummary:(id)summary error:(id *)error;
- (BOOL)decodeAllSourceBlocks:(id *)blocks discarded:(unint64_t *)discarded;
- (BOOL)decodeBlock:(unint64_t)block error:(id *)error discarded:(unint64_t *)discarded;
- (BOOL)decodeInputURL:(id)l error:(id *)error;
- (SKRaptorQDecoder)initWithBasicParameters:(unint64_t)parameters extendedParameters:(unsigned int)extendedParameters repairFactor:(unsigned int)factor threshold:(unint64_t)threshold outputURL:(id)l error:(id *)error;
- (double)calculateSymbolLostRate;
- (unint64_t)missingSymbolCount;
- (void)dealloc;
@end

@implementation SKRaptorQDecoder

- (SKRaptorQDecoder)initWithBasicParameters:(unint64_t)parameters extendedParameters:(unsigned int)extendedParameters repairFactor:(unsigned int)factor threshold:(unint64_t)threshold outputURL:(id)l error:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v72.receiver = self;
  v72.super_class = SKRaptorQDecoder;
  v71 = [(SKRaptorQDecoder *)&v72 init];
  if (!v71)
  {
    goto LABEL_35;
  }

  if (MIBUOnceToken != -1)
  {
    [SKRaptorQDecoder initWithBasicParameters:extendedParameters:repairFactor:threshold:outputURL:error:];
  }

  v14 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B04000, v14, OS_LOG_TYPE_DEFAULT, "Initialize NanoRQ decoder...", buf, 2u);
  }

  v15 = nanorq_decoder_new(parameters, extendedParameters);
  *(v71 + 2) = v15;
  if (!v15)
  {
    if (!error)
    {
      goto LABEL_35;
    }

    v56 = *MEMORY[0x277CCA590];
LABEL_34:
    NSErrorF();
    *error = v35 = 0;
    goto LABEL_36;
  }

  nanorq_set_repair_factor(v15, factor);
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    if (!error)
    {
      goto LABEL_35;
    }

    v57 = *MEMORY[0x277CCA590];
    goto LABEL_34;
  }

  v17 = ioctx_mmap_file(fileSystemRepresentation, 0);
  *(v71 + 1) = v17;
  if (!v17)
  {
    if (error)
    {
      v58 = *MEMORY[0x277CCA590];
      goto LABEL_34;
    }

LABEL_35:
    v35 = 0;
    goto LABEL_36;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  lastPathComponent = [lCopy lastPathComponent];
  v20 = [lastPathComponent stringByAppendingPathExtension:@"intermediate"];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v22 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v20 isDirectory:1];

  path = [v22 path];
  v24 = [defaultManager fileExistsAtPath:path];

  if ((!v24 || [defaultManager removeItemAtURL:v22 error:error]) && objc_msgSend(defaultManager, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v22, 1, 0, error))
  {
    v61 = v20;
    v62 = lastPathComponent;
    v70 = defaultManager;
    errorCopy = error;
    v63 = lCopy;
    v25 = nanorq_blocks(*(v71 + 2));
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
    obj = objc_alloc_init(MEMORY[0x277CCAB58]);
    if (v25)
    {
      v28 = 0;
      while (1)
      {
        v29 = nanorq_block_symbols(*(v71 + 2), v28);
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"encoded.%lu", v28];
        v31 = v22;
        v32 = [v22 URLByAppendingPathComponent:v30];
        path2 = [v32 path];
        v34 = [v70 createFileAtPath:path2 contents:0 attributes:0];

        if ((v34 & 1) == 0)
        {
          [SKRaptorQDecoder initWithBasicParameters:errorCopy extendedParameters:v32 repairFactor:v30 threshold:? outputURL:? error:?];
          v35 = 0;
          goto LABEL_26;
        }

        v35 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v32 error:errorCopy];
        if (!v35)
        {
          break;
        }

        v36 = v29 + threshold;
        [v26 addObject:v32];
        [v27 addObject:v35];
        v37 = objc_alloc_init(MEMORY[0x277CCAB58]);
        [v69 addObject:v37];

        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v36];
        [v68 addObject:v38];

        v39 = objc_alloc_init(_SKRaptorQRReceptionDetails);
        [v67 addObject:v39];

        [obj addIndex:v28];
        if (MIBUOnceToken != -1)
        {
          [SKRaptorQDecoder initWithBasicParameters:extendedParameters:repairFactor:threshold:outputURL:error:];
        }

        v40 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v74 = v28;
          v75 = 2048;
          v76 = v36;
          _os_log_impl(&dword_259B04000, v40, OS_LOG_TYPE_DEFAULT, ">> [SBN #%lu] Target Symbol Count: %lu", buf, 0x16u);
        }

        ++v28;
        v22 = v31;
        if (v25 == v28)
        {
          goto LABEL_21;
        }
      }

LABEL_26:
      v22 = v31;
      v48 = v68;
      v45 = v69;
      v54 = obj;
      v51 = v67;
    }

    else
    {
LABEL_21:
      v41 = [v26 copy];
      v42 = *(v71 + 4);
      *(v71 + 4) = v41;

      v43 = [v27 copy];
      v44 = *(v71 + 5);
      *(v71 + 5) = v43;

      v45 = v69;
      v46 = [v69 copy];
      v47 = *(v71 + 6);
      *(v71 + 6) = v46;

      v48 = v68;
      v49 = [v68 copy];
      v50 = *(v71 + 7);
      *(v71 + 7) = v49;

      v51 = v67;
      v52 = [v67 copy];
      v53 = *(v71 + 3);
      *(v71 + 3) = v52;

      v54 = obj;
      objc_storeStrong(v71 + 8, obj);
      v55 = *(v71 + 9);
      *(v71 + 9) = &unk_286AD0DD0;

      v35 = v71;
    }

    lastPathComponent = v62;
    lCopy = v63;
    defaultManager = v70;
    v20 = v61;
  }

  else
  {
    v35 = 0;
  }

LABEL_36:
  v59 = *MEMORY[0x277D85DE8];
  return v35;
}

void __102__SKRaptorQDecoder_initWithBasicParameters_extendedParameters_repairFactor_threshold_outputURL_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __102__SKRaptorQDecoder_initWithBasicParameters_extendedParameters_repairFactor_threshold_outputURL_error___block_invoke_29()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    [SKRaptorQDecoder dealloc];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B04000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating RaptorQ Decoder...", buf, 2u);
  }

  rq = self->_rq;
  if (rq)
  {
    nanorq_free(rq);
    self->_rq = 0;
  }

  outputIO = self->_outputIO;
  if (outputIO)
  {
    (outputIO->var5)();
    self->_outputIO = 0;
  }

  encodedFileHandles = self->_encodedFileHandles;
  if (encodedFileHandles)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = encodedFileHandles;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v18 + 1) + 8 * i) closeAndReturnError:0];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }

    v12 = self->_encodedFileHandles;
    self->_encodedFileHandles = 0;
  }

  encodedFileURLs = self->_encodedFileURLs;
  self->_encodedFileURLs = 0;

  encodedSymbolSets = self->_encodedSymbolSets;
  self->_encodedSymbolSets = 0;

  sbnStillReceiving = self->_sbnStillReceiving;
  self->_sbnStillReceiving = 0;

  v17.receiver = self;
  v17.super_class = SKRaptorQDecoder;
  [(SKRaptorQDecoder *)&v17 dealloc];
  v16 = *MEMORY[0x277D85DE8];
}

void __27__SKRaptorQDecoder_dealloc__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)decodeInputURL:(id)l error:(id *)error
{
  v25[5] = *MEMORY[0x277D85DE8];
  lCopy = l;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    v8 = fopen(fileSystemRepresentation, "rb");
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __41__SKRaptorQDecoder_decodeInputURL_error___block_invoke;
    v25[3] = &__block_descriptor_40_e5_v8__0l;
    v25[4] = v8;
    v9 = MEMORY[0x259CAE830](v25);
    v10 = nanorq_blocks(self->_rq);
    v11 = nanorq_symbol_size(self->_rq);
    v23 = *MEMORY[0x277CCA590];
    if (error)
    {
      v12 = fread(&__ptr, 1uLL, 4uLL, v8);
      if (v12)
      {
        while (v12 == 4)
        {
          v13 = __ptr;
          MEMORY[0x28223BE20](4);
          if (fread(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 1uLL, v11, v8) != v11 || nanorq_decoder_add_symbol(self->_rq, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, self->_outputIO, v14) == -1)
          {
            *error = NSErrorF();
            goto LABEL_22;
          }

          v12 = fread(&__ptr, 1uLL, 4uLL, v8);
          if (!v12)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
      while (1)
      {
        v17 = fread(&__ptr, 1uLL, 4uLL, v8);
        if (!v17)
        {
          break;
        }

        if (v17 != 4)
        {
          goto LABEL_20;
        }

        v18 = __ptr;
        MEMORY[0x28223BE20](4);
        if (fread(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 1uLL, v11, v8) != v11 || nanorq_decoder_add_symbol(self->_rq, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18, self->_outputIO, v19) == -1)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_8:
    if (feof(v8))
    {
      if (v10)
      {
        v15 = 0;
        while (1)
        {
          if (v15 == 256)
          {
            if (!error)
            {
              goto LABEL_22;
            }

            goto LABEL_28;
          }

          if (!nanorq_repair_block(self->_rq, self->_outputIO, v15))
          {
            break;
          }

          nanorq_encoder_cleanup(self->_rq, v15++);
          if (v10 == v15)
          {
            goto LABEL_14;
          }
        }

        if (!error)
        {
          goto LABEL_22;
        }

LABEL_28:
        NSErrorF();
        *error = v16 = 0;
      }

      else
      {
LABEL_14:
        v16 = 1;
      }

LABEL_23:
      v9[2](v9);

      goto LABEL_24;
    }

LABEL_20:
    if (error)
    {
      *error = NSErrorF();
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  if (error)
  {
    v22 = *MEMORY[0x277CCA590];
    NSErrorF();
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_24:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)addPacketsFromFilesInSummary:(id)summary error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  rqEncodedFileURLs = [summaryCopy rqEncodedFileURLs];
  v8 = nanorq_symbol_size(self->_rq);
  if (![rqEncodedFileURLs count])
  {
    if (error)
    {
      v22 = *MEMORY[0x277CCA590];
      NSErrorF();
      *error = v19 = 0;
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  errorCopy = error;
  v25 = summaryCopy;
  if (![rqEncodedFileURLs count])
  {
LABEL_15:
    if ([(SKRaptorQDecoder *)self sufficientSymbolsReceived])
    {
      v19 = 1;
      summaryCopy = v25;
      goto LABEL_21;
    }

    summaryCopy = v25;
    if (errorCopy)
    {
      v23 = *MEMORY[0x277CCA590];
      NSErrorF();
      *errorCopy = v19 = 0;
      goto LABEL_21;
    }

LABEL_27:
    v19 = 0;
    goto LABEL_21;
  }

  v9 = 0;
  v26 = rqEncodedFileURLs;
  while (1)
  {
    v10 = [(NSArray *)self->_targetSymbolCounts objectAtIndexedSubscript:v9];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    v12 = [rqEncodedFileURLs objectAtIndexedSubscript:v9];
    if (MIBUOnceToken != -1)
    {
      [SKRaptorQDecoder addPacketsFromFilesInSummary:error:];
    }

    v13 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_259B04000, v13, OS_LOG_TYPE_DEFAULT, "Adding symbols from encoded file: %{public}@", buf, 0xCu);
    }

    v29 = 0;
    v14 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v12 error:&v29];
    v15 = v29;
    if (!v14)
    {
      [(SKRaptorQDecoder *)errorCopy addPacketsFromFilesInSummary:v15 error:buf];
      v18 = *buf;
      goto LABEL_20;
    }

    if (unsignedIntegerValue)
    {
      break;
    }

LABEL_4:
    [v14 closeAndReturnError:0];

    ++v9;
    rqEncodedFileURLs = v26;
    if (v9 >= [v26 count])
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v16 = objc_autoreleasePoolPush();
    v28 = 0;
    v17 = [v14 readDataUpToLength:v8 + 4 error:&v28];
    v18 = v28;

    if (!v17)
    {
      [SKRaptorQDecoder addPacketsFromFilesInSummary:errorCopy error:v18];
      goto LABEL_19;
    }

    if (![v17 length])
    {
      break;
    }

    v27 = v18;
    [(SKRaptorQDecoder *)self addPacket:v17 error:&v27];
    v15 = v27;

    objc_autoreleasePoolPop(v16);
    if (!--unsignedIntegerValue)
    {
      goto LABEL_4;
    }
  }

  [SKRaptorQDecoder addPacketsFromFilesInSummary:errorCopy error:?];
LABEL_19:

  objc_autoreleasePoolPop(v16);
LABEL_20:
  summaryCopy = v25;

  v19 = 0;
  rqEncodedFileURLs = v26;
LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __55__SKRaptorQDecoder_addPacketsFromFilesInSummary_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)addPacket:(id)packet error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  v25 = 0;
  [packetCopy getBytes:&v25 range:{0, 4}];
  v7 = nanorq_sbn_in_tag(v25);
  v8 = nanorq_esi_in_tag(v25);
  v9 = v7;
  if ([(NSArray *)self->_encodedSymbolSets count]> v7)
  {
    v10 = [(NSMutableArray *)self->_receptionDetails objectAtIndexedSubscript:v7];
    [v10 updateWithESI:v8];

    v11 = [(NSArray *)self->_encodedSymbolSets objectAtIndexedSubscript:v9];
    v12 = v8;
    if ([v11 containsIndex:v8])
    {
      v13 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v14 = [(NSArray *)self->_encodedFileHandles objectAtIndexedSubscript:v9];
    v15 = v14;
    if (v14)
    {
      if ([v14 writeData:packetCopy error:error])
      {
        [v11 addIndex:v12];
        v16 = [(NSArray *)self->_targetSymbolCounts objectAtIndexedSubscript:v9];
        unsignedIntegerValue = [v16 unsignedIntegerValue];

        if ([v11 count] >= unsignedIntegerValue && -[NSMutableIndexSet containsIndex:](self->_sbnStillReceiving, "containsIndex:", v9))
        {
          if (MIBUOnceToken != -1)
          {
            [SKRaptorQDecoder addPacket:error:];
          }

          v18 = MIBUConnObj;
          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
            v20 = [v11 count];
            *buf = 67109632;
            v27 = v9;
            v28 = 2048;
            v29 = v20;
            v30 = 2048;
            v31 = unsignedIntegerValue;
            _os_log_impl(&dword_259B04000, v19, OS_LOG_TYPE_DEFAULT, "Received enough symbols for source block #%u: %lu of %lu", buf, 0x1Cu);
          }

          [(NSMutableIndexSet *)self->_sbnStillReceiving removeIndex:v9];
        }

        v13 = 1;
        goto LABEL_14;
      }
    }

    else if (error)
    {
      v24 = *MEMORY[0x277CCA590];
      NSErrorF();
      *error = v13 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v13 = 0;
    goto LABEL_14;
  }

  if (error)
  {
    v23 = *MEMORY[0x277CCA590];
    NSErrorF();
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

void __36__SKRaptorQDecoder_addPacket_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)decodeAllSourceBlocks:(id *)blocks discarded:(unint64_t *)discarded
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = nanorq_blocks(self->_rq);
  if (v7 >= 0x100)
  {
    if (blocks)
    {
      v26 = *MEMORY[0x277CCA590];
      NSErrorF();
      *blocks = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v8 = v7;
    v35 = 0;
    v36 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke;
    v30[3] = &unk_2798EC108;
    v31 = 0;
    blocksCopy = blocks;
    discardedCopy = discarded;
    v34 = &v35;
    v28 = MEMORY[0x259CAE830](v30);
    v27 = [MEMORY[0x277CBEAA8] now];
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v13 = objc_autoreleasePoolPush();
        if (MIBUOnceToken != -1)
        {
          [SKRaptorQDecoder decodeAllSourceBlocks:discarded:];
        }

        v14 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v38 = v12;
          _os_log_impl(&dword_259B04000, v14, OS_LOG_TYPE_DEFAULT, ">> Decoding source block #%lu...", buf, 0xCu);
        }

        v29 = v11;
        v15 = [(SKRaptorQDecoder *)self decodeBlock:v12 error:&v29 discarded:&v36, v27];
        v16 = v29;

        v11 = v16;
        v35 += v36;
        if (v15)
        {
          if (MIBUOnceToken != -1)
          {
            [SKRaptorQDecoder decodeAllSourceBlocks:discarded:];
          }

          v17 = MIBUConnObj;
          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v38 = v36;
            _os_log_impl(&dword_259B04000, v17, OS_LOG_TYPE_DEFAULT, ">>>> Source block successfully decoded (%lu discarded)!", buf, 0xCu);
          }

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v9 / v8)];
          decodingProgress = self->_decodingProgress;
          self->_decodingProgress = v18;
        }

        else
        {
          if (MIBUOnceToken != -1)
          {
            [SKRaptorQDecoder decodeAllSourceBlocks:discarded:];
          }

          v20 = MIBUConnObj;
          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = v11;
            _os_log_impl(&dword_259B04000, v20, OS_LOG_TYPE_DEFAULT, ">>>> Failed to decode source block: %{public}@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v13);
        if (!v15)
        {
          break;
        }

        v10 = ++v12 >= v8;
        v9 += 100;
        if (v8 == v12)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v11 = 0;
LABEL_22:
      v21 = [MEMORY[0x277CBEAA8] now];
      if (MIBUOnceToken != -1)
      {
        [SKRaptorQDecoder decodeAllSourceBlocks:discarded:];
      }

      v22 = MIBUConnObj;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        [v21 timeIntervalSinceDate:v27];
        *buf = 134217984;
        v38 = v23;
        _os_log_impl(&dword_259B04000, v22, OS_LOG_TYPE_DEFAULT, "Total time taken for decoding all source blocks: %.3f", buf, 0xCu);
      }

      v10 = 1;
    }

    v28[2]();
  }

  v24 = *MEMORY[0x277D85DE8];
  return v10;
}

id *__52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke(id *result)
{
  v1 = result;
  if (result[5])
  {
    result = result[4];
    *v1[5] = result;
  }

  v2 = v1[6];
  if (v2)
  {
    *v2 = *v1[7];
  }

  return result;
}

void __52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke_60()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke_63()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __52__SKRaptorQDecoder_decodeAllSourceBlocks_discarded___block_invoke_66()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)decodeBlock:(unint64_t)block error:(id *)error discarded:(unint64_t *)discarded
{
  v78 = *MEMORY[0x277D85DE8];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke;
  v62[3] = &unk_2798EBC60;
  v62[4] = self;
  blockCopy = block;
  blockCopy2 = block;
  v45 = MEMORY[0x259CAE830](v62, a2);
  v41 = [(NSArray *)self->_encodedFileURLs objectAtIndexedSubscript:blockCopy2];
  v8 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:? error:?];
  if (!v8)
  {
    v32 = 0;
    goto LABEL_43;
  }

  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_2;
  v60[3] = &unk_2798EB9A8;
  v39 = v8;
  v9 = v8;
  v61 = v9;
  v40 = MEMORY[0x259CAE830](v60);
  v10 = nanorq_symbol_size(self->_rq);
  v48 = nanorq_block_symbols(self->_rq, blockCopy2);
  v59 = 0;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_3;
  v54[3] = &unk_2798EC108;
  errorCopy = error;
  v55 = 0;
  discardedCopy = discarded;
  v58 = &v59;
  v43 = MEMORY[0x259CAE830](v54);
  v11 = 0;
  v12 = 0;
  v44 = 0;
  v13 = v10 + 4;
  v51 = *MEMORY[0x277CCA590];
  *&v14 = 138543362;
  v50 = v14;
  *&v14 = 134219520;
  v42 = v14;
  *&v14 = 134217984;
  v47 = v14;
  v46 = -1;
  while (1)
  {
    v15 = objc_autoreleasePoolPush();
    v53 = 0;
    v16 = [v9 readDataUpToLength:v13 error:&v53];
    v17 = v53;

    if (v16)
    {
      if ([v16 length] == v13)
      {
        if ([v16 length])
        {
          v52 = 0;
          v18 = [v16 length];
          v19 = &v38 - ((MEMORY[0x28223BE20](v18) + 11) & 0xFFFFFFFFFFFFFFF0);
          [v16 getBytes:&v52 range:{0, 4}];
          [v16 getBytes:v19 range:{4, objc_msgSend(v16, "length") - 4}];
          if (nanorq_decoder_add_symbol(self->_rq, v19, v52, self->_outputIO, v20) == -1)
          {
            if (MIBUOnceToken != -1)
            {
              [SKRaptorQDecoder decodeBlock:error:discarded:];
            }

            v28 = MIBUConnObj;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = v52;
              max_esi = nanorq_get_max_esi(self->_rq);
              *buf = v42;
              v65 = v12;
              v66 = 2048;
              v67 = blockCopy2;
              v68 = 1024;
              v69 = -1;
              v70 = 1024;
              v71 = v29;
              v72 = 1024;
              v73 = v46;
              v74 = 1024;
              v75 = max_esi;
              v76 = 2048;
              v77 = v48;
              _os_log_impl(&dword_259B04000, v28, OS_LOG_TYPE_DEFAULT, "Failed to add symbol for symbol %lu for sbn %lu: %d. tag = 0x%x, lastTag = 0x%x, rq->max_esi = %u, esiCount = %lu", buf, 0x38u);
            }

            ++v59;
            v21 = 6;
          }

          else
          {
            if (&v12[-v59] >= v48 && nanorq_repair_block(self->_rq, self->_outputIO, blockCopy2))
            {
              v21 = 4;
              v22 = 1;
              v23 = &blockCopy + 2;
            }

            else
            {
              v21 = 0;
              v22 = v52;
              v23 = &v66;
            }

            *(v23 - 64) = v22;
          }
        }

        else
        {
          v21 = 4;
        }
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          [SKRaptorQDecoder decodeBlock:error:discarded:];
        }

        v25 = MIBUConnObj;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v16 length];
          *buf = v47;
          v65 = v26;
          _os_log_impl(&dword_259B04000, v25, OS_LOG_TYPE_DEFAULT, "Invalid data length read from file: %lu", buf, 0xCu);
        }

        v27 = NSErrorF();

        v21 = 1;
        v17 = v27;
      }
    }

    else
    {
      if (MIBUOnceToken != -1)
      {
        [SKRaptorQDecoder decodeBlock:error:discarded:];
      }

      v24 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v50;
        v65 = v17;
        _os_log_impl(&dword_259B04000, v24, OS_LOG_TYPE_DEFAULT, "Failed to read data from file: %{public}@", buf, 0xCu);
      }

      v21 = 1;
    }

    objc_autoreleasePoolPop(v15);
    if (v21)
    {
      if (v21 != 6)
      {
        break;
      }
    }

    ++v12;
    v11 = v17;
  }

  if (v21 != 4)
  {
    v32 = 0;
LABEL_41:
    v31 = v43;
    goto LABEL_42;
  }

  v31 = v43;
  if ((v44 & 1) == 0)
  {
    if (MIBUOnceToken != -1)
    {
      [SKRaptorQDecoder decodeBlock:error:discarded:];
    }

    v33 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B04000, v33, OS_LOG_TYPE_DEFAULT, "Failed to repair source block.", buf, 2u);
    }

    v34 = NSErrorF();

    v32 = 0;
    v17 = v34;
    goto LABEL_41;
  }

  v32 = 1;
LABEL_42:
  v31[2](v31);

  v35 = v40;
  (*(v40 + 16))(v40);

  v8 = v39;
LABEL_43:

  v45[2]();
  v36 = *MEMORY[0x277D85DE8];
  return v32;
}

id *__48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_3(id *result)
{
  v1 = result;
  if (result[5])
  {
    result = result[4];
    *v1[5] = result;
  }

  v2 = v1[6];
  if (v2)
  {
    *v2 = *v1[7];
  }

  return result;
}

void __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_4()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_71()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_75()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __48__SKRaptorQDecoder_decodeBlock_error_discarded___block_invoke_78()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (unint64_t)missingSymbolCount
{
  v3 = 0;
  if ([(NSArray *)self->_encodedSymbolSets count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_encodedSymbolSets objectAtIndexedSubscript:v4];
      v6 = [v5 count];

      v7 = [(NSArray *)self->_targetSymbolCounts objectAtIndexedSubscript:v4];
      unsignedIntegerValue = [v7 unsignedIntegerValue];

      v9 = unsignedIntegerValue - v6;
      if (unsignedIntegerValue < v6)
      {
        v9 = 0;
      }

      v3 += v9;
      ++v4;
    }

    while (v4 < [(NSArray *)self->_encodedSymbolSets count]);
  }

  return v3;
}

- (double)calculateSymbolLostRate
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = nanorq_symbol_size(self->_rq);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  encodedSymbolSets = self->_encodedSymbolSets;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__SKRaptorQDecoder_calculateSymbolLostRate__block_invoke;
  v13[3] = &unk_2798EC130;
  v13[4] = self;
  v13[5] = &v18;
  v13[6] = &v14;
  [(NSArray *)encodedSymbolSets enumerateObjectsUsingBlock:v13];
  v5 = v15[3];
  v6 = v19[3];
  if (MIBUOnceToken != -1)
  {
    [SKRaptorQDecoder calculateSymbolLostRate];
  }

  v7 = v5 / v6 * 100.0;
  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v19[3];
    v10 = v15[3];
    *buf = 134219008;
    v23 = v9;
    v24 = 2048;
    v25 = v9 * (v3 + 4);
    v26 = 2048;
    v27 = v10;
    v28 = 2048;
    v29 = v10 * (v3 + 4);
    v30 = 2048;
    v31 = v7;
    _os_log_impl(&dword_259B04000, v8, OS_LOG_TYPE_DEFAULT, "Total expected symbols: %lu (=%lu bytes), Total lost symbols: %lu (=%lu bytes), Symbol loss rate: %.3f%%", buf, 0x34u);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

void __43__SKRaptorQDecoder_calculateSymbolLostRate__block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a1[4] + 16);
  v6 = a2;
  v7 = nanorq_block_symbols(v5, a3);
  v8 = [*(a1[4] + 24) objectAtIndexedSubscript:a3];
  LODWORD(v7) = [v8 symbolsShouldHaveReceived:v7];

  *(*(a1[5] + 8) + 24) += v7;
  v9 = [v6 count];

  *(*(a1[6] + 8) + 24) += v7 - v9;
}

void __43__SKRaptorQDecoder_calculateSymbolLostRate__block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)initWithBasicParameters:(void *)a3 extendedParameters:repairFactor:threshold:outputURL:error:.cold.2(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = *MEMORY[0x277CCA590];
    *a1 = NSErrorF();
  }
}

- (void)addPacketsFromFilesInSummary:(void *)result error:.cold.2(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277CCA590];
    result = NSErrorF();
    *v1 = result;
  }

  return result;
}

- (void)addPacketsFromFilesInSummary:(void *)a1 error:(void *)a2 .cold.3(void *a1, void *a2)
{
  if (a1)
  {
    v3 = *MEMORY[0x277CCA590];
    v4 = [a2 localizedDescription];
    *a1 = NSErrorF();
  }
}

- (void)addPacketsFromFilesInSummary:(void *)a3 error:.cold.4(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = *MEMORY[0x277CCA590];
    v7 = [a2 localizedDescription];
    *a1 = NSErrorF();
  }

  *a3 = a2;
}

@end