@interface NWSAlgosScoreStreamDataCSV
- (BOOL)matchesMethod:(id)a3 code:(int64_t)a4;
- (BOOL)validMethod:(int64_t)a3;
- (id)setUpMethods;
- (int)transformer;
@end

@implementation NWSAlgosScoreStreamDataCSV

- (id)setUpMethods
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F730, 0}];
  [v2 setObject:v3 forKeyedSubscript:@"PlayEnded"];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F748, &unk_286D2F760, 0}];
  [v2 setObject:v4 forKeyedSubscript:@"PlayRateChanged"];

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F778, &unk_286D2F790, 0}];
  [v2 setObject:v5 forKeyedSubscript:@"PlayStalled"];

  v6 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F7A8, &unk_286D2F7C0, 0}];
  [v2 setObject:v6 forKeyedSubscript:@"PlayLikelyToKeepUp"];

  v7 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F7D8, &unk_286D2F7F0, 0}];
  [v2 setObject:v7 forKeyedSubscript:@"PlayerError"];

  v8 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F808, &unk_286D2F820, 0}];
  [v2 setObject:v8 forKeyedSubscript:@"PlayerSwitchComplete"];

  return v2;
}

- (BOOL)matchesMethod:(id)a3 code:(int64_t)a4
{
  v6 = a3;
  v7 = [(NWSAlgosScoreStreamDataCSV *)self methods];
  v8 = [v7 objectForKey:v6];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
  LOBYTE(a4) = [v8 containsObject:v9];

  return a4;
}

- (BOOL)validMethod:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(NWSAlgosScoreStreamDataCSV *)self methods];
  v5 = [v4 allValues];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{a3, v15}];
        LOBYTE(v10) = [v10 containsObject:v11];

        if (v10)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int)transformer
{
  v73 = *MEMORY[0x277D85DE8];
  [(NWSAlgosScoreDataCSV *)self clearStreamingData];
  v3 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
  csvData = self->super.csvData;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [v3 rows];
  v4 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (!v4)
  {

    v20 = 0;
    v18 = 0;
    v48 = 0;
    v24 = 0.0;
    v30 = 1.0;
    v29 = 1.0;
    v25 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
LABEL_109:
    v39 = [v3 rows];
    v40 = [v39 count] == 0;

    if (!v40)
    {
      v41 = nws_algos_log_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *__p = 0;
        _os_log_impl(&dword_25BA15000, v41, OS_LOG_TYPE_INFO, "Received no play end messages, inserting fake rate and end", __p, 2u);
      }

      std::string::basic_string[abi:ne200100]<0>(v61, "rate");
      AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v61, v18, v20, v25, v8 - v7, v8, v29, v30);
      std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(*__p);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v61, [@"end" cStringUsingEncoding:4]);
      AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v61, v18, v20, v25, v24, v8, 1.0, v30);
      std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(*__p);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }
    }

    goto LABEL_120;
  }

  v5 = 0;
  v48 = 0;
  v51 = 0;
  v59 = 0;
  v57 = *v64;
  v52 = -1;
  v53 = -1;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v56 = 0.0;
  v50 = 0.0;
  v54 = -1;
  v55 = -1;
  do
  {
    v58 = v4;
    v9 = 0;
    v10 = v8;
    do
    {
      if (*v64 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v63 + 1) + 8 * v9);
      v12 = [v3 atRow:v11 col:@"timedelta_ms"];
      [v12 doubleValue];
      v8 = v13;

      [v3 doubleAtRow:v11 col:@"VaRk" defaultValue:v6 * 100.0];
      v15 = v14;
      v16 = [v3 atRow:v11 col:@"IfTy"];
      v17 = [v16 intValue];
      v18 = v17 == 3;

      v19 = [v3 intAtRow:v11 col:@"method" defaultValue:-1];
      v20 = [(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayerError" code:v19];
      if (v5)
      {
        v21 = @"None";
      }

      else
      {
        v21 = @"start";
      }

      if (!v5)
      {
        v7 = v8;
      }

      [v3 doubleAtRow:v11 col:@"StartupTime" defaultValue:0.0];
      if (v22 == 0.0 && v5 == 0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v22;
      }

      v25 = v8 - v10;
      v26 = v15 / 100.0;
      if (![(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayEnded" code:v19])
      {
        if ([(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayerError" code:v19])
        {
          if ([(NWSAlgosScoreStreamDataCSV *)self isMusic])
          {
            v29 = 0.3;
          }

          else
          {
            v29 = 1.0;
          }

          v30 = v26;
          v21 = @"error";
          if (v5)
          {
            goto LABEL_90;
          }

          goto LABEL_85;
        }

        if ([(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayRateChanged" code:v19])
        {
          v31 = [v3 intAtRow:v11 col:@"Rate" defaultValue:-1];
          v24 = v8 - v7;
          if ((v59 & 1) == 0 && !v31)
          {
            v55 = [v3 intAtRow:v11 col:@"IABR" defaultValue:v55];
            v54 = [v3 intAtRow:v11 col:@"VaRk" defaultValue:v54];
            v29 = 1.0;
LABEL_65:
            v30 = v6;
            v21 = @"rate";
            v6 = v26;
            v7 = v8;
            if (v5)
            {
              goto LABEL_90;
            }

LABEL_85:
            if (([(__CFString *)v21 isEqualToString:@"start"]& 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(v61, "start");
              AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v61, v17 == 3, v20, v25, v24, v8, v29, v30);
              std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
              if (SHIBYTE(v70) < 0)
              {
                operator delete(*__p);
              }

              if (v62 < 0)
              {
                operator delete(v61[0]);
              }
            }

            goto LABEL_90;
          }

          if ((v59 & (v31 == 100)) != 1)
          {
            v29 = 1.0;
            if ((v59 & (v31 == 0)) == 1)
            {
              v55 = [v3 intAtRow:v11 col:@"IABR" defaultValue:v55];
              v54 = [v3 intAtRow:v11 col:@"VaRk" defaultValue:v54];
              v59 = 1;
            }

            goto LABEL_65;
          }

          v24 = v8 - v56;
          v29 = 1.0;
          if (v8 - v56 >= 0.5)
          {
            v59 = 0;
          }

          else
          {
            v33 = nws_algos_log_obj();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *__p = 134218496;
              *&__p[4] = 0x3FE0000000000000;
              v68 = 2048;
              v69 = v56;
              v70 = 2048;
              v71 = v8;
              _os_log_impl(&dword_25BA15000, v33, OS_LOG_TYPE_INFO, "Unexpected stallduration cannot be less than %1.2f start: %1.2f, stop: %1.2f", __p, 0x20u);
            }

            v59 = 0;
            ++v48;
          }

          v30 = v6;
          v21 = @"stall-end-1";
          v6 = v26;
          v7 = v8;
LABEL_84:
          v50 = v8;
          if (v5)
          {
            goto LABEL_90;
          }

          goto LABEL_85;
        }

        if ([(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayLikelyToKeepUp" code:v19])
        {
          v32 = [v3 intAtRow:v11 col:@"SwCnt" defaultValue:v52];
          v53 = [v3 intAtRow:v11 col:@"OBRLast" defaultValue:v53];
          v52 = v32;
          v29 = 1.0;
          if (v59)
          {
            if (![(NWSAlgosScoreStreamDataCSV *)self isMusic])
            {
              v24 = v8 - v56;
              if (v8 - v56 < 0.5)
              {
                v37 = nws_algos_log_obj();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  *__p = 134218496;
                  *&__p[4] = 0x3FE0000000000000;
                  v68 = 2048;
                  v69 = v56;
                  v70 = 2048;
                  v71 = v8;
                  _os_log_impl(&dword_25BA15000, v37, OS_LOG_TYPE_INFO, "Unexpected stallduration cannot be less than %1.2f start: %1.2f, stop: %1.2f", __p, 0x20u);
                }

                ++v48;
              }

              v55 = [v3 intAtRow:v11 col:@"IABR" defaultValue:v55];
              v54 = [v3 intAtRow:v11 col:@"VaRk" defaultValue:v54];
              v51 = 0;
              v59 = 0;
              v30 = v26;
              v21 = @"stall-end-2";
              goto LABEL_84;
            }

            v51 = 0;
            v59 = 1;
          }

          else
          {
            v51 = 0;
            v59 = 0;
          }
        }

        else
        {
          if ([(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayStalled" code:v19])
          {
            if ((v59 & 1) == 0)
            {
              v21 = @"stall";
            }

            v34 = v56;
            if ((v59 & 1) == 0)
            {
              v34 = v8;
            }

            v56 = v34;
            v59 = 1;
          }

          else
          {
            if ([(NWSAlgosScoreStreamDataCSV *)self matchesMethod:@"PlayerSwitchComplete" code:v19])
            {
              v35 = [v3 intAtRow:v11 col:@"SwCnt" defaultValue:v52];
              v53 = [v3 intAtRow:v11 col:@"OBRLast" defaultValue:v53];
              v29 = 1.0;
              v30 = v26;
              v52 = v35;
              if (v5)
              {
                goto LABEL_90;
              }

              goto LABEL_85;
            }

            v36 = nws_algos_log_obj();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *__p = 134217984;
              *&__p[4] = v19;
              _os_log_impl(&dword_25BA15000, v36, OS_LOG_TYPE_INFO, "Unused method %lld. Unexpected", __p, 0xCu);
            }
          }

          v29 = 1.0;
        }

        v30 = v26;
        if (v5)
        {
          goto LABEL_90;
        }

        goto LABEL_85;
      }

      v27 = [v3 intAtRow:v11 col:@"TimeWorkingToLTKU" defaultValue:0];
      if (v27 >= 500)
      {
        std::string::basic_string[abi:ne200100]<0>(v61, "stall-end-4-startup");
        AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v61, v17 == 3, v20, v25, v27, v8, 0.5, v15 / 100.0);
        std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(*__p);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }
      }

      if (v59)
      {
        if (v8 - v56 < 0.0)
        {
          v28 = nws_algos_log_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *__p = 134218240;
            *&__p[4] = v56;
            v68 = 2048;
            v69 = v8;
            _os_log_impl(&dword_25BA15000, v28, OS_LOG_TYPE_INFO, "Unexpected stallduration cannot be less than zero start: %1.2f, stop: %1.2f", __p, 0x16u);
          }

          ++v48;
        }

        std::string::basic_string[abi:ne200100]<0>(v61, "stall-end-3");
        AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v61, v17 == 3, v20, v25, v8 - v56, v8, 1.0, v26);
        std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(*__p);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }
      }

      std::string::basic_string[abi:ne200100]<0>(v61, "rate");
      AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v61, v17 == 3, v20, v25, v8 - v7, v8, 1.0, v26);
      std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(*__p);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      v59 = 0;
      v56 = 0.0;
      v51 = 1;
      v52 = -1;
      v53 = -1;
      v54 = -1;
      v29 = 1.0;
      v30 = v26;
      v21 = @"end";
      v55 = -1;
      v50 = 0.0;
      if (!v5)
      {
        goto LABEL_85;
      }

LABEL_90:
      std::string::basic_string[abi:ne200100]<0>(v61, -[__CFString cStringUsingEncoding:](v21, "cStringUsingEncoding:", 4));
      AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v61, v17 == 3, v20, v25, v24, v8, v29, v30);
      std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(*__p);
      }

      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      if (![(__CFString *)v21 isEqualToString:@"rate"])
      {
        v6 = v30;
      }

      ++v5;
      ++v9;
      v10 = v8;
    }

    while (v58 != v9);
    v4 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
  }

  while (v4);

  if (v59)
  {
    std::string::basic_string[abi:ne200100]<0>(v61, [@"fake-stall-end" cStringUsingEncoding:4]);
    AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v61, v17 == 3, v20, v25, v24, v8, 1.0, v30);
    std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(*__p);
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    v38 = nws_algos_log_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *__p = 0;
      _os_log_impl(&dword_25BA15000, v38, OS_LOG_TYPE_INFO, "Received no stall end messages", __p, 2u);
    }

    if (v50 < v56)
    {
      v44 = MEMORY[0x277CCA9B8];
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected stallduration cannot be less than zero start: %1.2f, stop: %1.2f", *&v56, *&v50, 0];
      v46 = [v44 errorWithDomain:v45 code:-1 userInfo:0];
      v47 = v46;

      objc_exception_throw(v46);
    }
  }

  if ((v51 & 1) == 0)
  {
    goto LABEL_109;
  }

LABEL_120:

  v42 = *MEMORY[0x277D85DE8];
  return v48;
}

@end