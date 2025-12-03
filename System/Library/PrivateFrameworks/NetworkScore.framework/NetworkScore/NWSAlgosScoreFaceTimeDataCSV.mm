@interface NWSAlgosScoreFaceTimeDataCSV
+ (id)facetimeDataCSV;
- (BOOL)matchesMethod:(id)method code:(int64_t)code;
- (BOOL)validMethod:(int64_t)method;
- (NWSAlgosScoreFaceTimeDataCSV)init;
- (id)setUpMethods;
- (int)transformer;
@end

@implementation NWSAlgosScoreFaceTimeDataCSV

+ (id)facetimeDataCSV
{
  v2 = objc_alloc_init(NWSAlgosScoreFaceTimeDataCSV);

  return v2;
}

- (id)setUpMethods
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F6E8, 0}];
  [dictionary setObject:v3 forKeyedSubscript:@"RealTimeStats"];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F700, 0}];
  [dictionary setObject:v4 forKeyedSubscript:@"CallSegmentReport"];

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_286D2F718, 0}];
  [dictionary setObject:v5 forKeyedSubscript:@"CallEnd"];

  return dictionary;
}

- (BOOL)matchesMethod:(id)method code:(int64_t)code
{
  methodCopy = method;
  methods = [(NWSAlgosScoreFaceTimeDataCSV *)self methods];
  v8 = [methods objectForKey:methodCopy];

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:code];
  LOBYTE(code) = [v8 containsObject:v9];

  return code;
}

- (BOOL)validMethod:(int64_t)method
{
  v20 = *MEMORY[0x277D85DE8];
  methods = [(NWSAlgosScoreFaceTimeDataCSV *)self methods];
  allValues = [methods allValues];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allValues;
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
        v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{method, v15}];
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

- (NWSAlgosScoreFaceTimeDataCSV)init
{
  v6.receiver = self;
  v6.super_class = NWSAlgosScoreFaceTimeDataCSV;
  v2 = [(NWSAlgosScoreDataCSV *)&v6 init];
  v3 = v2;
  if (v2)
  {
    setUpMethods = [(NWSAlgosScoreFaceTimeDataCSV *)v2 setUpMethods];
    [(NWSAlgosScoreFaceTimeDataCSV *)v3 setMethods:setUpMethods];
  }

  return v3;
}

- (int)transformer
{
  v106 = *MEMORY[0x277D85DE8];
  rawStreamData = [(NWSAlgosScoreDataCSV *)self rawStreamData];
  [rawStreamData sortOnColumn:@"eventTime" ascending:1];

  [(NWSAlgosScoreDataCSV *)self clearStreamingData];
  rawStreamData2 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
  rawStreamData3 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
  rows = [rawStreamData3 rows];
  v6 = [rows objectAtIndexedSubscript:0];
  [rawStreamData2 doubleAtRow:v6 col:@"eventTime" defaultValue:0.0];
  v91 = v7;

  csvData = self->super.csvData;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  rawStreamData4 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
  rows2 = [rawStreamData4 rows];

  obj = rows2;
  v10 = [rows2 countByEnumeratingWithState:&v99 objects:v105 count:16];
  if (!v10)
  {

    v78 = 0.0;
    goto LABEL_98;
  }

  v11 = 0;
  v12 = 0;
  v85 = 0;
  v89 = *v100;
  v88 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v86 = 0.0;
  v15 = 0.0;
  do
  {
    v93 = 0;
    v90 = v10;
    v92 = v11;
    v84 = v11 + v10;
    v16 = v12;
    v17 = v15;
    do
    {
      if (*v100 != v89)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v99 + 1) + 8 * v93);
      rawStreamData5 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
      [rawStreamData5 doubleAtRow:v18 col:@"eventTime" defaultValue:0.0];
      v21 = v20;

      rawStreamData6 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
      v94 = [rawStreamData6 intAtRow:v18 col:@"TTxR" defaultValue:v16];

      if (v94)
      {
        v23 = fmin(v94 / 1949.0, 1.0);
      }

      else
      {
        v23 = 0.0;
      }

      rawStreamData7 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
      v25 = [rawStreamData7 intAtRow:v18 col:@"_method" defaultValue:0];

      rawStreamData8 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
      v27 = [rawStreamData8 intAtRow:v18 col:@"DERR" defaultValue:0];

      rawStreamData9 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
      [rawStreamData9 doubleAtRow:v18 col:@"VST" defaultValue:v14];
      v30 = v29;

      v31 = v30;
      rawStreamData10 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
      [rawStreamData10 doubleAtRow:v18 col:@"APT" defaultValue:v13];
      v34 = v33;

      v35 = v34;
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      array3 = [MEMORY[0x277CBEB18] array];
      v15 = v21 - v91;
      v39 = (v15 - v17) * 1000.0;
      if (v92)
      {
        goto LABEL_10;
      }

      std::string::basic_string[abi:ne200100]<0>(v97, "start");
      AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v97, 0, v27 != 0, v39, 0.0, v15, 1.0, v23);
      std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
      if (v104 < 0)
      {
        operator delete(__p[0]);
      }

      if (v98 < 0)
      {
        operator delete(v97[0]);
      }

      if (v31 == 0.0)
      {
LABEL_10:
        v40 = v15;
      }

      else
      {
        v91 = v91 - v31;
        v39 = v31;
        v40 = v31;
      }

      if ([(NWSAlgosScoreFaceTimeDataCSV *)self matchesMethod:@"CallEnd" code:v25])
      {
        rawStreamData11 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
        [rawStreamData11 doubleAtRow:v18 col:@"AEAP" defaultValue:0.0];
        v42 = 0;
        v35 = 0.0;
        v43 = @"end";
        v31 = 0.0;
        v86 = v44 / 10000.0;
LABEL_66:

        v13 = v35;
        goto LABEL_67;
      }

      if ([(NWSAlgosScoreFaceTimeDataCSV *)self matchesMethod:@"CallSegmentReport" code:v25])
      {
        rawStreamData12 = [(NWSAlgosScoreDataCSV *)self rawStreamData];
        rawStreamData11 = [rawStreamData12 atRow:v18 col:@"CONFIG"];

        if ([rawStreamData11 isEqualToString:&stru_286D2DF20])
        {
          v42 = 0;
        }

        else
        {
          v51 = [rawStreamData11 componentsSeparatedByString:@":"];
          if ([v51 count] <= 3)
          {
            v83 = [MEMORY[0x277CBEAD8] exceptionWithName:@"Not enough components for CONFIG" reason:0 userInfo:0];
            objc_exception_throw(v83);
          }

          v52 = [v51 objectAtIndexedSubscript:0];
          if ([v52 isEqualToString:@"W"])
          {
            v42 = 1;
          }

          else
          {
            v53 = [v51 objectAtIndexedSubscript:1];
            v42 = [v53 isEqualToString:@"W"];
          }
        }

        v54 = 0x8E38E38E38E38E39 * ((csvData[1] - *csvData) >> 3);
        v55 = v54 - v85;
        if (v54 > v85)
        {
          v56 = 0;
          v57 = vdupq_n_s64(v55 - 1);
          v58 = (*csvData + 72 * v85);
          do
          {
            v59 = vdupq_n_s64(v56);
            v60 = vmovn_s64(vcgeq_u64(v57, vorrq_s8(v59, xmmword_25BA32E90)));
            if (vuzp1_s8(vuzp1_s16(v60, *v57.i8), *v57.i8).u8[0])
            {
              v58[64] = v42;
            }

            if (vuzp1_s8(vuzp1_s16(v60, *&v57), *&v57).i8[1])
            {
              v58[136] = v42;
            }

            if (vuzp1_s8(vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, vorrq_s8(v59, xmmword_25BA32E80)))), *&v57).i8[2])
            {
              v58[208] = v42;
              v58[280] = v42;
            }

            v61 = vmovn_s64(vcgeq_u64(v57, vorrq_s8(v59, xmmword_25BA32E70)));
            if (vuzp1_s8(*&v57, vuzp1_s16(v61, *&v57)).i32[1])
            {
              v58[352] = v42;
            }

            if (vuzp1_s8(*&v57, vuzp1_s16(v61, *&v57)).i8[5])
            {
              v58[424] = v42;
            }

            if (vuzp1_s8(*&v57, vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, vorrq_s8(v59, xmmword_25BA32E60))))).i8[6])
            {
              v58[496] = v42;
              v58[568] = v42;
            }

            v62 = vmovn_s64(vcgeq_u64(v57, vorrq_s8(v59, xmmword_25BA32E50)));
            if (vuzp1_s8(vuzp1_s16(v62, *v57.i8), *v57.i8).u8[0])
            {
              v58[640] = v42;
            }

            if (vuzp1_s8(vuzp1_s16(v62, *&v57), *&v57).i8[1])
            {
              v58[712] = v42;
            }

            if (vuzp1_s8(vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, vorrq_s8(v59, xmmword_25BA32E40)))), *&v57).i8[2])
            {
              v58[784] = v42;
              v58[856] = v42;
            }

            v63 = vmovn_s64(vcgeq_u64(v57, vorrq_s8(v59, xmmword_25BA32E30)));
            if (vuzp1_s8(*&v57, vuzp1_s16(v63, *&v57)).i32[1])
            {
              v58[928] = v42;
            }

            if (vuzp1_s8(*&v57, vuzp1_s16(v63, *&v57)).i8[5])
            {
              v58[1000] = v42;
            }

            if (vuzp1_s8(*&v57, vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, vorrq_s8(v59, xmmword_25BA32E20))))).i8[6])
            {
              v58[1072] = v42;
              v58[1144] = v42;
            }

            v56 += 16;
            v58 += 1152;
          }

          while (((v55 + 15) & 0xFFFFFFFFFFFFFFF0) != v56);
        }

        v85 = v54 + 1;
LABEL_65:
        v43 = &stru_286D2DF20;
        goto LABEL_66;
      }

      if ([(NWSAlgosScoreFaceTimeDataCSV *)self matchesMethod:@"RealTimeStats" code:v25])
      {
        if (v31 != v14)
        {
          [array addObject:@"stall-end-1"];
          v46 = (v31 - v14) * 1000.0;
          if (v46 < 500.0)
          {
            v46 = 0.0;
          }

          v47 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
          [array2 addObject:v47];

          v48 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
          [array3 addObject:v48];
        }

        if (v35 != v13)
        {
          [array addObject:@"stall-end-2"];
          v49 = (v35 - v13) * 1000.0;
          if (v49 < 500.0)
          {
            v49 = 0.0;
          }

          v50 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
          [array2 addObject:v50];

          rawStreamData11 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
          [array3 addObject:rawStreamData11];
          v42 = 0;
          goto LABEL_65;
        }
      }

      v42 = 0;
      v13 = v35;
      v43 = &stru_286D2DF20;
LABEL_67:
      v14 = v31;
      if (v16 && v16 == v94)
      {
        v94 = v16;
      }

      else if (-[__CFString isEqualToString:](v43, "isEqualToString:", &stru_286D2DF20) && ![array count])
      {
        v88 = v40;
      }

      else
      {
        if (![array count])
        {
          [array addObject:v43];
          v64 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
          [array2 addObject:v64];

          v65 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
          [array3 addObject:v65];
        }

        [array addObject:@"rate"];
        v66 = [MEMORY[0x277CCABB0] numberWithDouble:(v40 - v88) * 1000.0];
        [array2 addObject:v66];

        [array3 addObject:&unk_286D2F838];
        v88 = v40;
      }

      v67 = [array count];
      v68 = v40 * 1000.0;
      if (v67)
      {
        v69 = 0;
        v70 = v27 != 0;
        do
        {
          v71 = [array objectAtIndexedSubscript:v69];
          v72 = v71;
          std::string::basic_string[abi:ne200100]<0>(v97, [v71 cStringUsingEncoding:4]);
          v73 = [array2 objectAtIndexedSubscript:v69];
          [v73 doubleValue];
          v75 = v74;
          v76 = [array3 objectAtIndexedSubscript:v69];
          [v76 doubleValue];
          AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v97, v42, v70, v39, v75, v68, v77, v23);
          std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
          if (v104 < 0)
          {
            operator delete(__p[0]);
          }

          if (v98 < 0)
          {
            operator delete(v97[0]);
          }

          ++v69;
        }

        while (v67 != v69);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v97, -[__CFString cStringUsingEncoding:](v43, "cStringUsingEncoding:", 4));
        AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v97, v42, v27 != 0, v39, 0.0, v68, 1.0, v23);
        std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
        if (v104 < 0)
        {
          operator delete(__p[0]);
        }

        if (v98 < 0)
        {
          operator delete(v97[0]);
        }
      }

      ++v92;
      v12 = v94;
      v16 = v94;
      v17 = v15;
      ++v93;
    }

    while (v93 != v90);
    v10 = [obj countByEnumeratingWithState:&v99 objects:v105 count:16];
    v11 = v84;
  }

  while (v10);

  if (v86 != 0.0)
  {
    std::string::basic_string[abi:ne200100]<0>(v97, "fixed-penalty");
    AlgosScoreStreamCSVFrameRow::AlgosScoreStreamCSVFrameRow(__p, v97, 0, 0, 0.0, 0.0, v68, v86 * 35.0, 0.0);
    std::vector<AlgosScoreStreamCSVFrameRow>::push_back[abi:ne200100](csvData, __p);
    if (v104 < 0)
    {
      operator delete(__p[0]);
    }

    if (v98 < 0)
    {
      operator delete(v97[0]);
    }
  }

  v78 = v86;
LABEL_98:
  v79 = [MEMORY[0x277CCABB0] numberWithDouble:v78];
  statsDict = [(NWSAlgosScoreDataCSV *)self statsDict];
  [statsDict setObject:v79 forKeyedSubscript:@"audio-erasure"];

  v81 = *MEMORY[0x277D85DE8];
  return 0;
}

@end