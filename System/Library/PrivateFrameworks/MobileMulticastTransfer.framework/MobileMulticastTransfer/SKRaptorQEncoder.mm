@interface SKRaptorQEncoder
- (BOOL)_writeESI:(unsigned int)i sbn:(unsigned __int8)sbn rq:(nanorq *)rq inputIO:(ioctx *)o outputFile:(__sFILE *)file error:(id *)error;
- (SKRaptorQEncoder)initWithInputURL:(id)l symbolSize:(unint64_t)size error:(id *)error;
- (id)encodeInputFile:(id *)file;
- (id)encodeWithInputURL:(id)l packetSize:(unint64_t)size repairFactor:(unint64_t)factor error:(id *)error;
- (id)generatePacketWithESI:(unsigned int)i sourceBlock:(unsigned __int8)block error:(id *)error;
- (void)dealloc;
- (void)encodeWithInputURL:(id)l packetSize:(unint64_t)size repairFactor:(unint64_t)factor dispatchQueue:(id)queue completionHandler:(id)handler;
@end

@implementation SKRaptorQEncoder

- (SKRaptorQEncoder)initWithInputURL:(id)l symbolSize:(unint64_t)size error:(id *)error
{
  lCopy = l;
  v22.receiver = self;
  v22.super_class = SKRaptorQEncoder;
  v9 = [(SKRaptorQEncoder *)&v22 init];
  if (!v9)
  {
    goto LABEL_20;
  }

  if (MIBUOnceToken != -1)
  {
    [SKRaptorQEncoder initWithInputURL:symbolSize:error:];
  }

  v10 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_259B04000, v10, OS_LOG_TYPE_DEFAULT, "Initialize NanoRQ encoder...", v21, 2u);
  }

  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v16 = *MEMORY[0x277CCA590];
LABEL_19:
    NSErrorF();
    *error = v15 = 0;
    goto LABEL_21;
  }

  v12 = ioctx_from_file(fileSystemRepresentation, 1);
  v9->_inputIO = v12;
  if (!v12)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v17 = *MEMORY[0x277CCA590];
    goto LABEL_19;
  }

  v13 = (v12->var3)();
  if (size >= 0x10000)
  {
    if (!error)
    {
      goto LABEL_20;
    }

    v18 = *MEMORY[0x277CCA590];
    goto LABEL_19;
  }

  v14 = nanorq_encoder_new(v13, size, 8u);
  v9->_rq = v14;
  if (!v14)
  {
    if (error)
    {
      v19 = *MEMORY[0x277CCA590];
      goto LABEL_19;
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v15 = v9;
LABEL_21:

  return v15;
}

void __54__SKRaptorQEncoder_initWithInputURL_symbolSize_error___block_invoke()
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
  rq = self->_rq;
  if (rq)
  {
    nanorq_free(rq);
    self->_rq = 0;
  }

  inputIO = self->_inputIO;
  if (inputIO)
  {
    (inputIO->var5)(inputIO, a2);
    self->_inputIO = 0;
  }

  v5.receiver = self;
  v5.super_class = SKRaptorQEncoder;
  [(SKRaptorQEncoder *)&v5 dealloc];
}

- (id)encodeInputFile:(id *)file
{
  rq = self->_rq;
  if (rq)
  {
    v6 = nanorq_blocks(rq);
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
    if (v6)
    {
      v8 = 0;
      while (1)
      {
        v9 = nanorq_block_symbols(self->_rq, v8);
        if (v8 == 256)
        {
          break;
        }

        v10 = v9;
        if ((nanorq_generate_symbols(self->_rq, v8, self->_inputIO) & 1) == 0)
        {
          if (file)
          {
            v16 = *MEMORY[0x277CCA590];
            goto LABEL_16;
          }

          goto LABEL_17;
        }

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
        [v7 setObject:v11 atIndexedSubscript:v8];

        if (v6 == ++v8)
        {
          goto LABEL_7;
        }
      }

      if (file)
      {
        v15 = *MEMORY[0x277CCA590];
LABEL_16:
        NSErrorF();
        *file = v12 = 0;
        goto LABEL_8;
      }

LABEL_17:
      v12 = 0;
    }

    else
    {
LABEL_7:
      v12 = objc_alloc_init(SKRaptorQEncoderSummary);
      v13 = [v7 copy];
      [(SKRaptorQEncoderSummary *)v12 setRqSourceSymbolCounts:v13];

      [(SKRaptorQEncoderSummary *)v12 setRqBasicParameters:nanorq_oti_common(self->_rq)];
      [(SKRaptorQEncoderSummary *)v12 setRqExtendedParameters:nanorq_oti_scheme_specific(self->_rq)];
    }

LABEL_8:
  }

  else if (file)
  {
    v17 = *MEMORY[0x277CCA590];
    NSErrorF();
    *file = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)generatePacketWithESI:(unsigned int)i sourceBlock:(unsigned __int8)block error:(id *)error
{
  rq = self->_rq;
  if (rq)
  {
    blockCopy = block;
    v10 = nanorq_symbol_size(rq);
    v11 = malloc_type_calloc(v10 + 4, 1uLL, 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      *v11 = nanorq_tag(blockCopy, i);
      if (nanorq_encode(self->_rq, (v12 + 1), i, blockCopy, self->_inputIO) == v10)
      {
        v13 = dispatch_data_create(v12, v10 + 4, 0, *MEMORY[0x277D85CB0]);

        return v13;
      }

      if (error)
      {
        v17 = *MEMORY[0x277CCA590];
LABEL_13:
        v18 = NSErrorF();
        v19 = v18;
        v13 = 0;
        *error = v18;

        return v13;
      }
    }

    else if (error)
    {
      v16 = *MEMORY[0x277CCA590];
      goto LABEL_13;
    }
  }

  else if (error)
  {
    v15 = *MEMORY[0x277CCA590];
    goto LABEL_13;
  }

  v13 = 0;

  return v13;
}

- (void)encodeWithInputURL:(id)l packetSize:(unint64_t)size repairFactor:(unint64_t)factor dispatchQueue:(id)queue completionHandler:(id)handler
{
  lCopy = l;
  queueCopy = queue;
  handlerCopy = handler;
  if (queueCopy)
  {
    v15 = queueCopy;
  }

  else
  {
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("SKRaptorQEncoder", v16);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__SKRaptorQEncoder_encodeWithInputURL_packetSize_repairFactor_dispatchQueue_completionHandler___block_invoke;
  block[3] = &unk_2798EBF58;
  block[4] = self;
  v20 = lCopy;
  sizeCopy = size;
  factorCopy = factor;
  v21 = handlerCopy;
  v17 = handlerCopy;
  v18 = lCopy;
  dispatch_async(v15, block);
}

void __95__SKRaptorQEncoder_encodeWithInputURL_packetSize_repairFactor_dispatchQueue_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5 = a1[8];
  v8 = 0;
  v6 = [v2 encodeWithInputURL:v3 packetSize:v4 repairFactor:v5 error:&v8];
  v7 = v8;
  (*(a1[6] + 16))();
}

- (id)encodeWithInputURL:(id)l packetSize:(unint64_t)size repairFactor:(unint64_t)factor error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  lastPathComponent = [lCopy lastPathComponent];
  v51 = [lastPathComponent stringByAppendingPathExtension:@"encoded"];
  v50 = [lastPathComponent stringByAppendingPathExtension:@"summary"];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v61 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v51 isDirectory:1];

  v54 = [v61 URLByAppendingPathComponent:v50];
  path = [v54 path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (v9)
  {
    if (MIBUOnceToken != -1)
    {
      [SKRaptorQEncoder encodeWithInputURL:packetSize:repairFactor:error:];
    }

    v10 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v66 = v54;
      _os_log_impl(&dword_259B04000, v10, OS_LOG_TYPE_DEFAULT, "Load encoder summary from file: %{public}@", buf, 0xCu);
    }

    path2 = [v54 path];
    v12 = [SKRaptorQEncoderSummary encoderSummaryFromFile:path2];

    if (v12)
    {
      goto LABEL_56;
    }

    if (MIBUOnceToken != -1)
    {
      [SKRaptorQEncoder encodeWithInputURL:packetSize:repairFactor:error:];
    }

    v13 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *error;
      *buf = 138543362;
      v66 = v14;
      _os_log_impl(&dword_259B04000, v13, OS_LOG_TYPE_DEFAULT, "Failed to load summary from file: %{public}@", buf, 0xCu);
    }

    [defaultManager removeItemAtURL:v61 error:0];
    v15 = defaultManager;
    v16 = v61;
  }

  else
  {
    v16 = v61;
    [defaultManager removeItemAtURL:v61 error:0];
    v15 = defaultManager;
  }

  if ([v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:error])
  {
    v17 = lCopy;
    fileSystemRepresentation = [lCopy fileSystemRepresentation];
    if (fileSystemRepresentation)
    {
      v19 = ioctx_from_file(fileSystemRepresentation, 1);
      v20 = v19;
      if (v19)
      {
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __69__SKRaptorQEncoder_encodeWithInputURL_packetSize_repairFactor_error___block_invoke_90;
        v64[3] = &__block_descriptor_40_e5_v8__0l;
        v64[4] = v19;
        v49 = MEMORY[0x259CAE830](v64);
        v21 = (*(v20 + 24))(v20);
        if (size >= 0x10000)
        {
          if (error)
          {
LABEL_68:
            v46 = *MEMORY[0x277CCA590];
            NSErrorF();
            *error = v12 = 0;
LABEL_55:
            v49[2]();

            goto LABEL_56;
          }
        }

        else
        {
          v22 = nanorq_encoder_new(v21, size, 8u);
          v23 = v22;
          if (v22)
          {
            v63[0] = MEMORY[0x277D85DD0];
            v63[1] = 3221225472;
            v63[2] = __69__SKRaptorQEncoder_encodeWithInputURL_packetSize_repairFactor_error___block_invoke_2;
            v63[3] = &__block_descriptor_40_e5_v8__0l;
            v63[4] = v22;
            v48 = MEMORY[0x259CAE830](v63);
            v24 = nanorq_blocks(v23);
            v59 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v24];
            v58 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v24];
            if (v24)
            {
              v25 = 0;
              v47 = *MEMORY[0x277CCA590];
              while (1)
              {
                v26 = objc_autoreleasePoolPush();
                if (v25 < 0x100)
                {
                  break;
                }

                if (error)
                {
                  NSErrorF();
                  *error = v36 = 0;
                }

                else
                {
                  v36 = 0;
                }

LABEL_32:
                objc_autoreleasePoolPop(v26);
                if ((v36 & 1) == 0)
                {
                  v38 = 0;
                  v12 = 0;
                  goto LABEL_54;
                }

                if (v24 == ++v25)
                {
                  goto LABEL_49;
                }
              }

              v27 = nanorq_block_symbols(v23, v25);
              v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"encoded.%lu", v25];
              v29 = [v61 URLByAppendingPathComponent:v28];
              if (MIBUOnceToken != -1)
              {
                [SKRaptorQEncoder encodeWithInputURL:packetSize:repairFactor:error:];
              }

              v30 = MIBUConnObj;
              if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                v66 = v25;
                v67 = 2114;
                v68 = v29;
                _os_log_impl(&dword_259B04000, v30, OS_LOG_TYPE_DEFAULT, ">> [SBN #%lu] Write encoded symbols to file: %{public}@", buf, 0x16u);
              }

              [v59 setObject:v29 atIndexedSubscript:v25];
              v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v27];
              [v58 setObject:v31 atIndexedSubscript:v25];

              if (nanorq_generate_symbols(v23, v25, v20))
              {
                v32 = v29;
                fileSystemRepresentation2 = [v29 fileSystemRepresentation];
                if (fileSystemRepresentation2)
                {
                  v34 = fopen(fileSystemRepresentation2, "wb+");
                  v62[0] = MEMORY[0x277D85DD0];
                  v62[1] = 3221225472;
                  v62[2] = __69__SKRaptorQEncoder_encodeWithInputURL_packetSize_repairFactor_error___block_invoke_101;
                  v62[3] = &__block_descriptor_40_e5_v8__0l;
                  v62[4] = v34;
                  v35 = MEMORY[0x259CAE830](v62);
                  if (v34)
                  {
                    if ([(SKRaptorQEncoder *)self _writeSBN:v25 rq:v23 repairFactor:factor inputIO:v20 outputFile:v34 error:error])
                    {
                      nanorq_encoder_cleanup(v23, v25);
                      v36 = 1;
LABEL_30:
                      v35[2](v35);

LABEL_31:
                      goto LABEL_32;
                    }

                    if (error)
                    {
                      v37 = 0;
                      goto LABEL_45;
                    }
                  }

                  else if (error)
                  {
                    v37 = NSErrorF();
LABEL_45:
                    v36 = 0;
                    *error = v37;
                    goto LABEL_30;
                  }

                  v36 = 0;
                  goto LABEL_30;
                }

                if (error)
                {
LABEL_40:
                  NSErrorF();
                  *error = v36 = 0;
                  goto LABEL_31;
                }
              }

              else if (error)
              {
                goto LABEL_40;
              }

              v36 = 0;
              goto LABEL_31;
            }

LABEL_49:
            v38 = objc_alloc_init(SKRaptorQEncoderSummary);
            v39 = [MEMORY[0x277CBEA60] arrayWithArray:v59];
            [(SKRaptorQEncoderSummary *)v38 setRqEncodedFileURLs:v39];

            v40 = [MEMORY[0x277CBEA60] arrayWithArray:v58];
            [(SKRaptorQEncoderSummary *)v38 setRqSourceSymbolCounts:v40];

            [(SKRaptorQEncoderSummary *)v38 setRqBasicParameters:nanorq_oti_common(v23)];
            [(SKRaptorQEncoderSummary *)v38 setRqExtendedParameters:nanorq_oti_scheme_specific(v23)];
            v41 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v38 requiringSecureCoding:1 error:error];
            v42 = v41;
            if (v41 && [v41 writeToURL:v54 options:0 error:error])
            {
              v12 = v38;
            }

            else
            {
              v12 = 0;
            }

LABEL_54:
            v48[2](v48);

            goto LABEL_55;
          }

          if (error)
          {
            goto LABEL_68;
          }
        }

        v12 = 0;
        goto LABEL_55;
      }

      if (error)
      {
        goto LABEL_63;
      }
    }

    else if (error)
    {
LABEL_63:
      v45 = *MEMORY[0x277CCA590];
      NSErrorF();
      *error = v12 = 0;
      goto LABEL_56;
    }
  }

  v12 = 0;
LABEL_56:

  v43 = *MEMORY[0x277D85DE8];

  return v12;
}

void __69__SKRaptorQEncoder_encodeWithInputURL_packetSize_repairFactor_error___block_invoke()
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

void __69__SKRaptorQEncoder_encodeWithInputURL_packetSize_repairFactor_error___block_invoke_87()
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

void __69__SKRaptorQEncoder_encodeWithInputURL_packetSize_repairFactor_error___block_invoke_3()
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

void __71__SKRaptorQEncoder__writeSBN_rq_repairFactor_inputIO_outputFile_error___block_invoke()
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

void __71__SKRaptorQEncoder__writeSBN_rq_repairFactor_inputIO_outputFile_error___block_invoke_108()
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

- (BOOL)_writeESI:(unsigned int)i sbn:(unsigned __int8)sbn rq:(nanorq *)rq inputIO:(ioctx *)o outputFile:(__sFILE *)file error:(id *)error
{
  sbnCopy = sbn;
  v21 = *MEMORY[0x277D85DE8];
  HIDWORD(v20) = nanorq_tag(sbn, i);
  v14 = nanorq_symbol_size(rq);
  v15 = (&v20 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v15, v14);
  if (nanorq_encode(rq, v15, i, sbnCopy, o) != v14)
  {
    if (error)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (fwrite(&v20 + 4, 1uLL, 4uLL, file) != 4)
  {
    if (error)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v16 = 1;
  if (fwrite(v15, 1uLL, v14, file) != v14)
  {
    if (error)
    {
LABEL_10:
      v19 = *MEMORY[0x277CCA590];
      NSErrorF();
      *error = v16 = 0;
      goto LABEL_4;
    }

LABEL_11:
    v16 = 0;
  }

LABEL_4:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end