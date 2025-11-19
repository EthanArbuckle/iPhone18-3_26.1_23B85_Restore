@interface NWSAlgosStreamScore
+ (id)streamScore;
- (BOOL)restoreEventsFromFile:(id)a3 clear:(BOOL)a4;
- (BOOL)saveEventsToFile:(id)a3;
- (NWSAlgosStreamScore)init;
- (double)findTotalTime:(id)a3 debug:(BOOL)a4;
- (id)scoreStreaming:(id)a3;
- (void)clearStreamRows;
- (void)dealloc;
@end

@implementation NWSAlgosStreamScore

+ (id)streamScore
{
  v2 = objc_alloc_init(NWSAlgosStreamScore);

  return v2;
}

- (NWSAlgosStreamScore)init
{
  v4.receiver = self;
  v4.super_class = NWSAlgosStreamScore;
  v2 = [(NWSAlgosStreamScore *)&v4 init];
  if (!v2)
  {
    return v2;
  }

  result = malloc_type_calloc(1uLL, 0x18uLL, 0x168BC42DuLL);
  if (result)
  {
    result->super.isa = 0;
    result->streamData = 0;
    result->logisticScale = 0.0;
    v2->streamData = result;
    v2->logisticScale = 7.5;
    [(NWSAlgosStreamScore *)v2 setMusic:0];
    return v2;
  }

  __break(1u);
  return result;
}

- (void)clearStreamRows
{
  streamData = self->streamData;
  v4 = *streamData;
  v3 = streamData[1];
  if (v3 != *streamData)
  {
    do
    {
      v5 = v3 - 64;
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v3 - 24, *(v3 - 16));
      v3 = v5;
    }

    while (v5 != v4);
  }

  streamData[1] = v4;
}

- (double)findTotalTime:(id)a3 debug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  AlgosScoreStreamFrameRow::AlgosScoreStreamFrameRow(v32, *self->streamData);
  AlgosScoreStreamFrameRow::AlgosScoreStreamFrameRow(v29, (*(self->streamData + 1) - 64));
  streamData = self->streamData;
  v8 = *streamData;
  v9 = streamData[1];
  if (*streamData == v9)
  {
    v11 = 0;
    v12 = 0.0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0.0;
    do
    {
      AlgosScoreStreamFrameRow::AlgosScoreStreamFrameRow(&v25, v8);
      v13 = v25;
      if (!((v25 != 0) | v10 & 1))
      {
        AlgosScoreStreamFrameRow::operator=(v32, &v25);
        v10 = 1;
        v13 = v25;
      }

      if (v13 == 5)
      {
        AlgosScoreStreamFrameRow::operator=(v29, &v25);
        v11 = (v11 + 1);
      }

      else if (v13 == 1)
      {
        v12 = v12 + v27 - v26;
      }

      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v28, v28[1]);
      v8 = (v8 + 64);
    }

    while (v8 != v9);
  }

  v14 = v30 - v33;
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v30 - v33];
  [v6 setObject:v15 forKeyedSubscript:@"total-duration"];

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  [v6 setObject:v16 forKeyedSubscript:@"stall-time"];
  v17 = fmax(v14 - v12, 0.1);

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  [v6 setObject:v18 forKeyedSubscript:@"net-time"];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  [v6 setObject:v19 forKeyedSubscript:@"end-count"];

  if (v4)
  {
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"duration: %1.3f, stall: %1.3f", *&v14, *&v12];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__NWSAlgosStreamScore_findTotalTime_debug___block_invoke;
    v23[3] = &unk_27996CF98;
    v24 = v20;
    v21 = v20;
    __nws_log_run_with_lock(v23);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v31, v31[1]);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v34, v34[1]);

  return v17;
}

uint64_t __43__NWSAlgosStreamScore_findTotalTime_debug___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

- (id)scoreStreaming:(id)a3
{
  v138[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*self->streamData == *(self->streamData + 1))
  {
    v73 = 0;
  }

  else
  {
    if (!v4)
    {
      v4 = @"no-label";
    }

    v98 = v4;
    v108 = [MEMORY[0x277CBEB38] dictionary];
    [(NWSAlgosStreamScore *)self findTotalTime:v108 debug:[(NWSAlgosStreamScore *)self debug]];
    v95 = *v5.i64;
    streamData = self->streamData;
    v8 = *streamData;
    v7 = streamData[1];
    if (*streamData != v7)
    {
      v9 = 0;
      v101 = 0;
      v106 = 0;
      v104 = 0;
      v10 = 1.0;
      v11 = 1;
      v5.i64[0] = 0;
      v109 = v5;
      v12 = 0.0;
      v107 = 0.0;
      v99 = 0.0;
      v100 = 0.0;
      v105 = 0.0;
      v102 = 0.0;
      v103 = 0.0;
      while (1)
      {
        AlgosScoreStreamFrameRow::AlgosScoreStreamFrameRow(&v131, v8);
        v13 = v131;
        if ([(NWSAlgosStreamScore *)self debug])
        {
          v14 = objc_alloc(MEMORY[0x277CCACA8]);
          AlgosScoreStreamFrameRow::StringForEvent(v13, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v16 = [v14 initWithFormat:@"Event: %s", p_p];
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v128[2] = __38__NWSAlgosStreamScore_scoreStreaming___block_invoke;
          v128[3] = &unk_27996CF98;
          v17 = v16;
          v129 = v17;
          __nws_log_run_with_lock(v128);

          if (v136[2])
          {
            v18 = objc_alloc(MEMORY[0x277CCACA8]);
            AlgosScoreStreamFrameRow::GetParamString(&v131, &__p);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = &__p;
            }

            else
            {
              v19 = __p.__r_.__value_.__r.__words[0];
            }

            v20 = [v18 initWithFormat:@", Params: %s\n", v19];
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v126[0] = MEMORY[0x277D85DD0];
            v126[1] = 3221225472;
            v126[2] = __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_2;
            v126[3] = &unk_27996CF98;
            v21 = v20;
            v127 = v21;
            __nws_log_run_with_lock(v126);
            v22 = &v127;
          }

          else
          {
            v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"\n"];
            v124[0] = MEMORY[0x277D85DD0];
            v124[1] = 3221225472;
            v124[2] = __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_3;
            v124[3] = &unk_27996CF98;
            v21 = v23;
            v125 = v21;
            __nws_log_run_with_lock(v124);
            v22 = &v125;
          }
        }

        if (v11)
        {
          if (v13)
          {
            v93 = objc_alloc(MEMORY[0x277CBEAD8]);
            objc_exception_throw([v93 initWithName:*MEMORY[0x277CBE660] reason:@"first event must be a stream-start" userInfo:0]);
          }

          v12 = v132;
        }

        else
        {
          v24 = v134;
          if (v13 <= 2)
          {
            if (v13 == 1)
            {
              std::string::basic_string[abi:ne200100]<0>(v122, "startup");
              std::string::basic_string[abi:ne200100]<0>(v120, "false");
              AlgosScoreStreamFrameRow::GetParam(&v131, v122, v120, &__p);
              if (v121 < 0)
              {
                operator delete(v120[0]);
              }

              if (v123 < 0)
              {
                operator delete(v122[0]);
              }

              v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v45 = (&__p + HIBYTE(__p.__r_.__value_.__r.__words[2]));
              }

              else
              {
                v45 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v46 = &__p;
              }

              else
              {
                v46 = __p.__r_.__value_.__r.__words[0];
              }

              if (v46 != v45)
              {
                do
                {
                  v46->__r_.__value_.__s.__data_[0] = __tolower(v46->__r_.__value_.__s.__data_[0]);
                  v46 = (v46 + 1);
                }

                while (v46 != v45);
                v44 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              if ((v44 & 0x80) != 0)
              {
                if (__p.__r_.__value_.__l.__size_ != 4)
                {
                  goto LABEL_63;
                }

                v47 = __p.__r_.__value_.__r.__words[0];
LABEL_62:
                v48 = LODWORD(v47->__r_.__value_.__l.__data_) == 1702195828;
              }

              else
              {
                if (v44 == 4)
                {
                  v47 = &__p;
                  goto LABEL_62;
                }

LABEL_63:
                v48 = 0;
              }

              v49 = 0.0;
              v50 = v132;
              v51 = v107;
              if (v107 != 0.0 && !v48)
              {
                v51 = exp((v132 - v107) / -30.0);
                v49 = v51;
              }

              v97 = v12;
              v52 = v133;
              v53 = v135;
              v96 = v24;
              v10 = 1.0;
              if ([(NWSAlgosStreamScore *)self music])
              {
                v53 = 1.0;
              }

              if (v53 >= 0.5)
              {
                v54 = 1.0 - v53 + 0.5;
              }

              else
              {
                v54 = 1.0;
              }

              logisticScale = self->logisticScale;
              [(NWSAlgosStreamScore *)self debug];
              v56 = v52 - v50;
              v57 = v49 + 0.2 + v56 / 10.0;
              v58 = v49;
              v59 = -(logisticScale - (v49 + 0.2) * logisticScale * 2.0);
              v60 = exp(-(logisticScale - v57 * logisticScale * 2.0));
              v61 = log(v60 + 1.0);
              v62 = exp(v59);
              v63 = log(v62 + 1.0);
              v64 = v58;
              if (v48)
              {
                v65 = 0.0;
              }

              else
              {
                v65 = (1.0 - v58) * 8.5;
              }

              v66 = v54 * (v61 - v63) * 8.0;
              v67 = v65 + v66;
              if ([(NWSAlgosStreamScore *)self debug])
              {
                v68 = objc_alloc(MEMORY[0x277CCACA8]);
                v69 = [v68 initWithFormat:@"%1.2f: last_stall: %1.2f, shift: %1.2f, deltat: %1.2f, quality: %1.2f, qfactor: %1.2f, wgt: %1.2f, lscore: %1.2f\n", v132 - v97, *&v107, *&v64, *&v56, *&v53, *&v54, *&v96, *&v67];
                v118[0] = MEMORY[0x277D85DD0];
                v118[1] = 3221225472;
                v118[2] = __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_4;
                v118[3] = &unk_27996CF98;
                v70 = v69;
                v119 = v70;
                __nws_log_run_with_lock(v118);
              }

              v71 = v107;
              if (!v48)
              {
                v71 = v133;
              }

              v107 = v71;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              LODWORD(v101) = v101 + v48;
              v12 = v97;
              v99 = v99 + v66 * v96;
              v100 = v100 + v65 * v96;
              ++HIDWORD(v101);
              v72.i64[1] = v109.i64[1];
              *v72.i64 = *v109.i64 + v67 * v96;
              v109 = v72;
              goto LABEL_24;
            }

            if (v13 == 2)
            {
              v25 = [(NWSAlgosStreamScore *)self debug];
              v26.i64[1] = v109.i64[1];
              *v26.i64 = *v109.i64 + v24 * 75.0;
              v109 = v26;
              ++v106;
              v105 = v105 + v24 * 75.0;
              if (v25)
              {
                v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Fixed failure penalty: %1.2f\n", v24 * 75.0];
                v116[0] = MEMORY[0x277D85DD0];
                v116[1] = 3221225472;
                v116[2] = __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_5;
                v116[3] = &unk_27996CF98;
                v28 = v27;
                v117 = v28;
                __nws_log_run_with_lock(v116);
              }
            }
          }

          else if (v13 == 3)
          {
            v29 = v133;
            v30 = v132;
            v31 = v135;
            v32 = v12;
            if ([(NWSAlgosStreamScore *)self music])
            {
              v31 = v10;
            }

            v33 = [(NWSAlgosStreamScore *)self debug];
            v34 = v29 - v30;
            v35 = v24 * (v34 / v95 * (v10 - v31) * 85.0);
            v102 = v102 + v35;
            v36.i64[1] = v109.i64[1];
            *v36.i64 = *v109.i64 + v35;
            v109 = v36;
            ++v104;
            if (v33)
            {
              v37 = objc_alloc(MEMORY[0x277CCACA8]);
              v38 = [v37 initWithFormat:@"%1.2f: quality: %1.2f, deltat: %1.2f, pct: %1.2f%%, dscore: %1.2f, weight: %1.2f\n", *&v132, *&v31, *&v34, v34 / v95 * 100.0, *&v35, *&v24];
              v114[0] = MEMORY[0x277D85DD0];
              v114[1] = 3221225472;
              v114[2] = __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_6;
              v114[3] = &unk_27996CF98;
              v39 = v38;
              v115 = v39;
              __nws_log_run_with_lock(v114);

              v12 = v32;
            }

            else
            {
              v12 = v32;
            }
          }

          else if (v13 == 4)
          {
            v40 = [(NWSAlgosStreamScore *)self debug];
            v41.i64[1] = v109.i64[1];
            *v41.i64 = *v109.i64 + v24;
            v109 = v41;
            v103 = v103 + v24;
            if (v40)
            {
              v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Penalty imposed: %1.2f", *&v24];
              v112[0] = MEMORY[0x277D85DD0];
              v112[1] = 3221225472;
              v112[2] = __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_7;
              v112[3] = &unk_27996CF98;
              v43 = v42;
              v113 = v43;
              __nws_log_run_with_lock(v112);
            }
          }

          else if (v13 == 5 && [(NWSAlgosStreamScore *)self enforceStreamEnd]&& ((*(self->streamData + 1) - *self->streamData) >> 6) - 1 != v9)
          {
            v94 = objc_alloc(MEMORY[0x277CBEAD8]);
            objc_exception_throw([v94 initWithName:*MEMORY[0x277CBE660] reason:@"end must be last event" userInfo:0]);
          }
        }

LABEL_24:
        ++v9;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v136, v136[1]);
        v11 = 0;
        v8 = (v8 + 64);
        if (v8 == v7)
        {
          goto LABEL_84;
        }
      }
    }

    v104 = 0;
    v106 = 0;
    v101 = 0;
    v102 = 0.0;
    v103 = 0.0;
    v99 = 0.0;
    v100 = 0.0;
    v105 = 0.0;
    v5.i64[0] = 0;
    v109 = v5;
LABEL_84:
    if ([(NWSAlgosStreamScore *)self debug])
    {
      v74 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Uncompressed Score: %f", v109.i64[0]];
      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_8;
      v110[3] = &unk_27996CF98;
      v111 = v74;
      v75 = v74;
      __nws_log_run_with_lock(v110);
    }

    v76 = log1p(fabs(*v109.i64) * 0.02);
    v77 = log1p(0.02);
    v78 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v101)];
    [v108 setObject:v78 forKeyedSubscript:@"stall-count"];

    v79 = [MEMORY[0x277CCABB0] numberWithInt:v101];
    [v108 setObject:v79 forKeyedSubscript:@"startup-stalls"];

    v80 = [MEMORY[0x277CCABB0] numberWithInt:v106];
    [v108 setObject:v80 forKeyedSubscript:@"failures"];

    v81 = [MEMORY[0x277CCABB0] numberWithDouble:v105];
    [v108 setObject:v81 forKeyedSubscript:@"failure-penalty"];

    v82 = [MEMORY[0x277CCABB0] numberWithInt:v104];
    [v108 setObject:v82 forKeyedSubscript:@"tier-switches"];

    v83 = [MEMORY[0x277CCABB0] numberWithDouble:v103];
    [v108 setObject:v83 forKeyedSubscript:@"direct-penalty"];

    v84 = [MEMORY[0x277CCABB0] numberWithDouble:v100];
    [v108 setObject:v84 forKeyedSubscript:@"stall-boost-penalty"];

    v85 = [MEMORY[0x277CCABB0] numberWithDouble:v99];
    [v108 setObject:v85 forKeyedSubscript:@"stall-penalty"];

    v86 = [MEMORY[0x277CCABB0] numberWithDouble:v102];
    [v108 setObject:v86 forKeyedSubscript:@"quality-penalty"];

    [v108 setObject:@"streaming" forKeyedSubscript:@"type"];
    v87 = [MEMORY[0x277CCABB0] numberWithBool:{-[NWSAlgosStreamScore music](self, "music")}];
    [v108 setObject:v87 forKeyedSubscript:@"music"];

    *v88.i64 = v76 / v77;
    v89.f64[0] = NAN;
    v89.f64[1] = NAN;
    v137[0] = @"score";
    v90 = [MEMORY[0x277CCABB0] numberWithDouble:{*vbslq_s8(vnegq_f64(v89), v88, v109).i64}];
    v138[0] = v90;
    v138[1] = v98;
    v137[1] = @"label";
    v137[2] = @"stats";
    v138[2] = v108;
    v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v137 count:3];
  }

  v91 = *MEMORY[0x277D85DE8];

  return v73;
}

uint64_t __38__NWSAlgosStreamScore_scoreStreaming___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_4(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_5(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_6(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_7(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __38__NWSAlgosStreamScore_scoreStreaming___block_invoke_8(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

- (BOOL)saveEventsToFile:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 createFileAtPath:v4 contents:0 attributes:0];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v4];
    if (v7)
    {
      AlgosScoreStreamFrameRow::GetCSVHeader(1, &v24);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v24;
      }

      else
      {
        v8 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:size freeWhenDone:0];
      [v7 writeData:v10 error:0];

      streamData = self->streamData;
      v12 = *streamData;
      v13 = streamData[1];
      if (*streamData == v13)
      {
LABEL_20:
        [v7 closeFile];
        v18 = 1;
      }

      else
      {
        while (1)
        {
          AlgosScoreStreamFrameRow::AlgosScoreStreamFrameRow(v22, v12);
          AlgosScoreStreamFrameRow::GetCSVRow(v22, 1, __p);
          if ((v21 & 0x80u) == 0)
          {
            v14 = __p;
          }

          else
          {
            v14 = __p[0];
          }

          if ((v21 & 0x80u) == 0)
          {
            v15 = v21;
          }

          else
          {
            v15 = __p[1];
          }

          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v14 length:v15 freeWhenDone:0];
          v17 = [v7 writeData:v16 error:0];

          if (v21 < 0)
          {
            operator delete(__p[0]);
          }

          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v23, v23[1]);
          if ((v17 & 1) == 0)
          {
            break;
          }

          v12 = (v12 + 64);
          if (v12 == v13)
          {
            goto LABEL_20;
          }
        }

        v18 = 0;
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)restoreEventsFromFile:(id)a3 clear:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4)
  {
    [(NWSAlgosStreamScore *)self clearStreamRows];
  }

  v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:v6];
  v8 = v7;
  if (v7)
  {
    v21 = [v7 readDataUpToLength:0x200000 error:0];
    if (v21)
    {
      v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v21 encoding:4];
      [v20 componentsSeparatedByString:@"\n"];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v9 = v27 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        v11 = *v27;
        v12 = 1;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v26 + 1) + 8 * i);
            if (!(([v14 length] == 0) | v12 & 1))
            {
              streamData = self->streamData;
              v16 = v14;
              std::string::basic_string[abi:ne200100]<0>(__p, [v14 cStringUsingEncoding:4]);
              AlgosScoreStreamFrameRow::AlgosScoreStreamFrameRow(v24, __p);
              std::vector<AlgosScoreStreamFrameRow>::push_back[abi:ne200100](streamData, v24);
              std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v25, v25[1]);
              if (v23 < 0)
              {
                operator delete(__p[0]);
              }
            }

            v12 = 0;
          }

          v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
          v12 = 0;
        }

        while (v10);
      }

      [v8 closeFile];
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)dealloc
{
  streamData = self->streamData;
  if (streamData)
  {
    v5 = self->streamData;
    std::vector<AlgosScoreStreamFrameRow>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x25F8748F0](streamData, 0x20C40960023A9);
  }

  v4.receiver = self;
  v4.super_class = NWSAlgosStreamScore;
  [(NWSAlgosStreamScore *)&v4 dealloc];
}

@end