@interface NWSAlgosScoreDataCSV
- (NWSAlgosScoreDataCSV)init;
- (id)readData:(id)data;
- (id)readData:(id)data catchException:(BOOL)exception;
- (id)readDirectoryAndScore:(id)score score:(id)a4 options:(id)options;
- (int)transformer;
- (void)dealloc;
- (void)populateScore:(id)score;
@end

@implementation NWSAlgosScoreDataCSV

- (NWSAlgosScoreDataCSV)init
{
  v5.receiver = self;
  v5.super_class = NWSAlgosScoreDataCSV;
  v2 = [(NWSAlgosScoreDataCSV *)&v5 init];
  if (!v2)
  {
    return v2;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(NWSAlgosScoreDataCSV *)v2 setStatsDict:dictionary];

  result = malloc_type_calloc(1uLL, 0x18uLL, 0x168BC42DuLL);
  if (result)
  {
    result->super.isa = 0;
    result->csvData = 0;
    *&result->_debug = 0;
    v2->csvData = result;
    return v2;
  }

  __break(1u);
  return result;
}

- (void)populateScore:(id)score
{
  scoreCopy = score;
  [scoreCopy clearStreamRows];
  csvData = self->csvData;
  v6 = *csvData;
  v7 = csvData[1];
  v24 = csvData;
  if (*csvData != v7)
  {
    while (1)
    {
      AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(&v28, v6);
      v8 = v32 / 1000.0;
      v9 = v31 / 1000.0;
      if ((v30 & 0x80000000) == 0)
      {
        break;
      }

      if (v29 == 4)
      {
        if (*v28 == 1702125938)
        {
          goto LABEL_23;
        }
      }

      else if (v29 == 5 && *v28 == 1918989427 && *(v28 + 4) == 116)
      {
        goto LABEL_25;
      }

      if (v29)
      {
        goto LABEL_24;
      }

LABEL_30:
      v13 = v30;
      if (v35)
      {
        if (v30 < 0)
        {
          if (v29 == 5)
          {
            v14 = v28;
            goto LABEL_36;
          }
        }

        else if (v30 == 5)
        {
          v14 = &v28;
LABEL_36:
          v15 = *v14;
          v16 = v14[4];
          if (v15 == 1869771365 && v16 == 114)
          {
            goto LABEL_41;
          }
        }

        [scoreCopy addStreamFailure:v8 weight:v33];
        v13 = v30;
      }

LABEL_41:
      if (v13 < 0)
      {
        operator delete(v28);
      }

      v6 = (v6 + 72);
      if (v6 == v7)
      {
        goto LABEL_44;
      }
    }

    if (!v30)
    {
      goto LABEL_30;
    }

    if (v30 == 4)
    {
      if (v28 != 1702125938)
      {
        goto LABEL_24;
      }

LABEL_23:
      [scoreCopy addStreamTierSwitch:v8 - v9 end:v32 / 1000.0 quality:v34 weight:v33];
      goto LABEL_30;
    }

    if (v30 != 5 || (v28 == 1918989427 ? (v10 = BYTE4(v28) == 116) : (v10 = 0), !v10))
    {
LABEL_24:
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v27, "stall-end-[0-9]+.*", 0);
    }

LABEL_25:
    [scoreCopy addStreamStart:0.0 play:v32 / 1000.0];
    if (v8 > 0.5)
    {
      if (v9 == 0.0)
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      [scoreCopy addStreamStall:0.0 end:v12 quality:v34 weight:0.1];
    }

    goto LABEL_30;
  }

LABEL_44:
  if ([(NWSAlgosScoreDataCSV *)self debug]>= 2)
  {
    v18 = *v24;
    v19 = v24[1];
    if (*v24 != v19)
    {
      do
      {
        AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v18);
        v20 = objc_alloc(MEMORY[0x277CCACA8]);
        AlgosScoreStreamCSVFrameRow::GetDescription(__p, &v28);
        if (v30 >= 0)
        {
          v21 = &v28;
        }

        else
        {
          v21 = v28;
        }

        v22 = [v20 initWithFormat:@"%s\n", v21];
        if (v30 < 0)
        {
          operator delete(v28);
        }

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __38__NWSAlgosScoreDataCSV_populateScore___block_invoke;
        v25[3] = &unk_27996CF98;
        v23 = v22;
        v26 = v23;
        __nws_log_run_with_lock(v25);

        if (SBYTE7(v37) < 0)
        {
          operator delete(__p[0]);
        }

        v18 = (v18 + 72);
      }

      while (v18 != v19);
    }
  }
}

uint64_t __38__NWSAlgosScoreDataCSV_populateScore___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

- (int)transformer
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Unimplemented Transformer" code:-1 userInfo:0];
  objc_exception_throw(v2);
}

- (id)readData:(id)data catchException:(BOOL)exception
{
  v26[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  [(NWSAlgosScoreDataCSV *)self setRawStreamData:0];
  v6 = [NWSAlgosScoreCSVReader csvReader:dataCopy header:1];
  if ([(NWSAlgosScoreDataCSV *)self debug])
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"--> Read %s\n", objc_msgSend(dataCopy, "cStringUsingEncoding:", 4)];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__NWSAlgosScoreDataCSV_readData_catchException___block_invoke;
    v23[3] = &unk_27996CF98;
    v24 = v7;
    v8 = v7;
    __nws_log_run_with_lock(v23);
  }

  if ([(NWSAlgosScoreDataCSV *)self debug]>= 2)
  {
    [v6 debugPrint:10];
  }

  error = [v6 error];
  v10 = error == 0;

  if (v10)
  {
    [(NWSAlgosScoreDataCSV *)self setRawStreamData:v6];
    [(NWSAlgosScoreDataCSV *)self transformer];

    if ([(NWSAlgosScoreDataCSV *)self debug])
    {
      AlgosScoreStreamCSVFrame::DebugPrint(self->csvData, 30);
    }

    v20 = 0;
  }

  else
  {
    v11 = *MEMORY[0x277D85DF8];
    error2 = [v6 error];
    v13 = [error2 description];
    v14 = v13;
    fprintf(v11, "ReadData: %s\n", [v13 cStringUsingEncoding:4]);

    v15 = MEMORY[0x277CBEAD8];
    error3 = [v6 error];
    v17 = [error3 description];
    v25 = @"error";
    error4 = [v6 error];
    v26[0] = error4;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v20 = [v15 exceptionWithName:@"ReaderError" reason:v17 userInfo:v19];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __48__NWSAlgosScoreDataCSV_readData_catchException___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __48__NWSAlgosScoreDataCSV_readData_catchException___block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

- (id)readData:(id)data
{
  v3 = [(NWSAlgosScoreDataCSV *)self readData:data catchException:0];

  return v3;
}

- (id)readDirectoryAndScore:(id)score score:(id)a4 options:(id)options
{
  v80[1] = *MEMORY[0x277D85DE8];
  scoreCopy = score;
  v8 = a4;
  optionsCopy = options;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [optionsCopy objectForKey:@"continue_on_error"];
  bOOLValue = [v9 BOOLValue];

  v58 = [optionsCopy objectForKey:@"tracePath"];
  if (stat([scoreCopy cStringUsingEncoding:4], &v73))
  {
    v79 = @"error";
    v80[0] = [MEMORY[0x277CCABB0] numberWithInt:*__error()];
    obj = v80[0];
    dictionary = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:&v79 count:1];
    [array addObject:dictionary];
LABEL_40:

    goto LABEL_41;
  }

  v11 = v73.st_mode & 0xF000;
  if (v11 == 0x4000)
  {
    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:scoreCopy];
    v78 = *MEMORY[0x277CBE868];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __60__NWSAlgosScoreDataCSV_readDirectoryAndScore_score_options___block_invoke;
    v71[3] = &__block_descriptor_33_e27_B24__0__NSURL_8__NSError_16l;
    v72 = bOOLValue;
    v15 = [defaultManager enumeratorAtURL:v13 includingPropertiesForKeys:v14 options:0 errorHandler:v71];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v12 = v15;
    v16 = [v12 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v16)
    {
      v17 = *v68;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v68 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v67 + 1) + 8 * i);
          pathExtension = [v19 pathExtension];
          if ([pathExtension isEqualToString:@"csv"])
          {
            isFileURL = [v19 isFileURL];

            if (isFileURL)
            {
              [array2 addObject:v19];
            }
          }

          else
          {
          }
        }

        v16 = [v12 countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v16);
    }

    goto LABEL_18;
  }

  if (v11 == 0x8000)
  {
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:scoreCopy];
    [array2 addObject:v12];
LABEL_18:
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v22 = array2;
  v23 = [v22 countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (!v23)
  {
    goto LABEL_42;
  }

  obj = v22;
  v56 = *v64;
  while (2)
  {
    v57 = v23;
    for (j = 0; j != v57; ++j)
    {
      if (*v64 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v63 + 1) + 8 * j);
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      path = [v25 path];
      v27 = [(NWSAlgosScoreDataCSV *)self readData:path];

      if (v27)
      {
        [dictionary setObject:v27 forKeyedSubscript:@"error"];
        if ((bOOLValue & 1) == 0)
        {

          goto LABEL_40;
        }
      }

      if (v8)
      {
        [(NWSAlgosScoreDataCSV *)self populateScore:v8];
        if (v58)
        {
          path2 = [v25 path];
          lastPathComponent = [path2 lastPathComponent];
          v30 = [lastPathComponent stringByAppendingPathExtension:@"trace"];
          v31 = [v58 stringByAppendingPathComponent:v30];

          if ([v8 saveEventsToFile:v31])
          {
            v32 = nws_algos_log_obj();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = v31;
              v34 = [v31 cStringUsingEncoding:4];
              *buf = 136315138;
              v75 = v34;
              _os_log_impl(&dword_25BA15000, v32, OS_LOG_TYPE_INFO, "Trace in %s\n", buf, 0xCu);
            }
          }

          else
          {
            v35 = *MEMORY[0x277D85DF8];
            v36 = v31;
            fprintf(v35, "Couldn't write trace file to %s\n", [v31 cStringUsingEncoding:4]);
          }
        }

        path3 = [v25 path];
        v38 = [v8 scoreStreaming:path3];
        [dictionary setObject:v38 forKeyedSubscript:@"score"];

        v39 = [dictionary objectForKeyedSubscript:@"score"];
        v40 = [v39 objectForKeyedSubscript:@"stats"];
        statsDict = [(NWSAlgosScoreDataCSV *)self statsDict];
        [v40 addEntriesFromDictionary:statsDict];

        if ([(NWSAlgosScoreDataCSV *)self debug])
        {
          v42 = objc_alloc(MEMORY[0x277CCACA8]);
          v43 = [dictionary objectForKeyedSubscript:@"score"];
          v44 = [v43 objectForKeyedSubscript:@"score"];
          v45 = [v44 description];
          v46 = v45;
          v47 = [v42 initWithFormat:@"Score: %s\n", objc_msgSend(v45, "cStringUsingEncoding:", 4)];

          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __60__NWSAlgosScoreDataCSV_readDirectoryAndScore_score_options___block_invoke_61;
          v61[3] = &unk_27996CF98;
          v62 = v47;
          v48 = v47;
          __nws_log_run_with_lock(v61);
        }
      }

      [array addObject:dictionary];
    }

    v23 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_41:
  v22 = obj;
LABEL_42:

  v49 = *MEMORY[0x277D85DE8];

  return array;
}

uint64_t __60__NWSAlgosScoreDataCSV_readDirectoryAndScore_score_options___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x277D85DF8];
  v5 = [a3 description];
  fprintf(v4, "Enumeration: %s\n", [v5 cStringUsingEncoding:4]);

  return *(a1 + 32);
}

uint64_t __60__NWSAlgosScoreDataCSV_readDirectoryAndScore_score_options___block_invoke_61(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

- (void)dealloc
{
  csvData = self->csvData;
  if (csvData)
  {
    v5 = self->csvData;
    std::vector<AlgosScoreStreamCSVFrameRow>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x25F8748F0](csvData, 0x20C40960023A9);
  }

  v4.receiver = self;
  v4.super_class = NWSAlgosScoreDataCSV;
  [(NWSAlgosScoreDataCSV *)&v4 dealloc];
}

@end