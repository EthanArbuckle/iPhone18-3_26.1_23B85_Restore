@interface MKPerformanceTable
- (MKPerformanceTable)initWithJSONFile:(id)a3 analytics:(id)a4;
- (id)createNumberFormatterWithLocale:(id)a3;
- (id)createSizeFormatter;
- (id)createThroughputFormatter;
- (id)createTimeFormatterWithLocale:(id)a3;
- (id)importTimesByDataClass;
- (void)generateTableFromJSONFile:(id)a3;
- (void)writeToDisk;
@end

@implementation MKPerformanceTable

- (MKPerformanceTable)initWithJSONFile:(id)a3 analytics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MKPerformanceTable;
  v8 = [(MKTable *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(MKPerformanceTable *)v8 setAnalytics:v7];
    v10 = [v6 stringByDeletingLastPathComponent];
    [(MKPerformanceTable *)v9 setBasePath:v10];

    [(MKPerformanceTable *)v9 generateTableFromJSONFile:v6];
  }

  return v9;
}

- (void)generateTableFromJSONFile:(id)a3
{
  v190 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 contentsAtPath:v4];

  if (v6)
  {
    v182 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v182];
    v8 = v182;
    if (v8)
    {
      p_super = +[MKLog log];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [MKPerformanceTable generateTableFromJSONFile:];
      }
    }

    else
    {
      v108 = v4;
      v10 = [[MKPerformanceData alloc] initWithDictionary:v7];
      v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
      v112 = [(MKPerformanceTable *)self createNumberFormatterWithLocale:v11];
      v105 = v11;
      v115 = [(MKPerformanceTable *)self createTimeFormatterWithLocale:v11];
      v114 = [(MKPerformanceTable *)self createSizeFormatter];
      v113 = [(MKPerformanceTable *)self createThroughputFormatter];
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v12 = [(MKPerformanceData *)v10 dataClasses];
      v13 = [v12 countByEnumeratingWithState:&v178 objects:v189 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v179;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v179 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v15 += [*(*(&v178 + 1) + 8 * i) size];
          }

          v14 = [v12 countByEnumeratingWithState:&v178 objects:v189 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      v18 = [(MKPerformanceTable *)self analytics];
      v19 = [v18 payload];
      v20 = [v19 elapsedTime];

      v107 = v6;
      v106 = v7;
      v109 = v10;
      if (v20)
      {
        v21 = [(MKPerformanceTable *)self analytics];
        v22 = [v21 payload];
        v23 = v15 / [v22 elapsedTime];
      }

      else
      {
        v23 = 0.0;
      }

      v154 = MEMORY[0x277CCACA8];
      v169 = [(MKPerformanceTable *)self analytics];
      v164 = [v169 payload];
      v149 = [v164 androidBrand];
      v159 = [(MKPerformanceTable *)self analytics];
      v24 = [v159 payload];
      v25 = [v24 androidModel];
      [(MKPerformanceTable *)self analytics];
      v26 = v116 = self;
      v27 = [v26 payload];
      v28 = [v27 androidAPILevel];
      v29 = [(MKPerformanceTable *)self analytics];
      v30 = [v29 payload];
      v31 = [v30 androidVersion];
      v32 = [v154 stringWithFormat:@"%@ %@ - API %@ - M2iOS %@ ", v149, v25, v28, v31];

      v104 = v32;
      v33 = [MKTableRow rowWithTitle:v32];
      [(MKTable *)v116 addRow:v33];

      v34 = +[MKTableRow separatorRow];
      [(MKTable *)v116 addRow:v34];

      v170 = [MEMORY[0x277CCACA8] string];
      v165 = [MKTableCell cellWithValue:v170 formatter:0];
      v188[0] = v165;
      v160 = [MEMORY[0x277CCACA8] string];
      v155 = [MKTableCell cellWithValue:v160 formatter:0];
      v188[1] = v155;
      v150 = [MKTableCell cellWithValue:@"Size" formatter:0 alignment:1];
      v188[2] = v150;
      v145 = [MEMORY[0x277CCACA8] string];
      v140 = [MKTableCell cellWithValue:v145 formatter:0];
      v188[3] = v140;
      v138 = [MEMORY[0x277CCACA8] string];
      v135 = [MKTableCell cellWithValue:v138 formatter:0];
      v188[4] = v135;
      v132 = [MEMORY[0x277CCACA8] string];
      v129 = [MKTableCell cellWithValue:v132 formatter:0];
      v188[5] = v129;
      v35 = [MEMORY[0x277CCACA8] string];
      v36 = [MKTableCell cellWithValue:v35 formatter:0];
      v188[6] = v36;
      v37 = [MEMORY[0x277CCACA8] string];
      v38 = [MKTableCell cellWithValue:v37 formatter:0];
      v188[7] = v38;
      v39 = [MKTableCell cellWithValue:@"Duration" formatter:0 alignment:1];
      v188[8] = v39;
      v40 = [MKTableCell cellWithValue:@"Throughput (MB/s)" formatter:0 columnSpan:2 alignment:1];
      v188[9] = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:10];
      v42 = [MKTableRow rowWithCells:v41];
      [(MKTable *)v116 addRow:v42];

      v43 = +[MKTableRow separatorRow];
      [(MKTable *)v116 addRow:v43];

      v171 = [MKTableCell cellWithValue:@"Whole Migration" formatter:0];
      v187[0] = v171;
      v166 = [MEMORY[0x277CCACA8] string];
      v161 = [MKTableCell cellWithValue:v166 formatter:0];
      v187[1] = v161;
      v156 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
      v151 = [MKTableCell cellWithValue:v156 formatter:v114 alignment:2];
      v187[2] = v151;
      v146 = [MEMORY[0x277CCACA8] string];
      v142 = [MKTableCell cellWithValue:v146 formatter:0];
      v187[3] = v142;
      v141 = [MEMORY[0x277CCACA8] string];
      v136 = [MKTableCell cellWithValue:v141 formatter:0];
      v187[4] = v136;
      v133 = [MEMORY[0x277CCACA8] string];
      v130 = [MKTableCell cellWithValue:v133 formatter:0];
      v187[5] = v130;
      v127 = [MEMORY[0x277CCACA8] string];
      v125 = [MKTableCell cellWithValue:v127 formatter:0];
      v187[6] = v125;
      v123 = [MEMORY[0x277CCACA8] string];
      v121 = [MKTableCell cellWithValue:v123 formatter:0];
      v187[7] = v121;
      v44 = MEMORY[0x277CCABB0];
      v45 = [(MKAnalytics *)v116->_analytics payload];
      v46 = [v44 numberWithUnsignedLongLong:{objc_msgSend(v45, "elapsedTime")}];
      v47 = [MKTableCell cellWithValue:v46 formatter:v115 alignment:2];
      v187[8] = v47;
      v48 = [MEMORY[0x277CCACA8] string];
      v49 = [MKTableCell cellWithValue:v48 formatter:0];
      v187[9] = v49;
      v50 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
      v51 = [MKTableCell cellWithValue:v50 formatter:v113 alignment:2];
      v187[10] = v51;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:11];
      v53 = [MKTableRow rowWithCells:v52];
      [(MKTable *)v116 addRow:v53];

      v54 = +[MKTableRow separatorRow];
      [(MKTable *)v116 addRow:v54];

      v55 = [MKTableCell cellWithValue:@"Data Class" formatter:0];
      v186[0] = v55;
      v56 = [MKTableCell cellWithValue:@"Item Count" formatter:0 alignment:1];
      v186[1] = v56;
      v57 = [MKTableCell cellWithValue:@"Size" formatter:0 alignment:1];
      v186[2] = v57;
      v58 = [MKTableCell cellWithValue:@"Phase Duration" formatter:0 columnSpan:6 alignment:1];
      v186[3] = v58;
      v59 = [MKTableCell cellWithValue:@"Throughput (MB/s)" formatter:0 columnSpan:2 alignment:1];
      v186[4] = v59;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:5];
      v61 = [MKTableRow rowWithCells:v60];
      [(MKTable *)v116 addRow:v61];

      v172 = [MEMORY[0x277CCACA8] string];
      v167 = [MKTableCell cellWithValue:v172 formatter:0];
      v185[0] = v167;
      v162 = [MEMORY[0x277CCACA8] string];
      v157 = [MKTableCell cellWithValue:v162 formatter:0];
      v185[1] = v157;
      v152 = [MEMORY[0x277CCACA8] string];
      v147 = [MKTableCell cellWithValue:v152 formatter:0];
      v185[2] = v147;
      v143 = [MKTableCell cellWithValue:@"Prep" formatter:0 alignment:1];
      v185[3] = v143;
      v62 = [MKTableCell cellWithValue:@"Export" formatter:0 alignment:1];
      v185[4] = v62;
      v63 = [MKTableCell cellWithValue:@"Queue" formatter:0 alignment:1];
      v185[5] = v63;
      v64 = [MKTableCell cellWithValue:@"Transfer" formatter:0 alignment:1];
      v185[6] = v64;
      v65 = [MKTableCell cellWithValue:@"Import" formatter:0 alignment:1];
      v185[7] = v65;
      v66 = [MKTableCell cellWithValue:@"Total" formatter:0 alignment:1];
      v185[8] = v66;
      v67 = [MKTableCell cellWithValue:@"Transfer" formatter:0 alignment:1];
      v185[9] = v67;
      v68 = [MKTableCell cellWithValue:@"Total" formatter:0 alignment:1];
      v185[10] = v68;
      v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:11];
      v70 = [MKTableRow rowWithCells:v69];
      [(MKTable *)v116 addRow:v70];

      v71 = +[MKTableRow separatorRow];
      [(MKTable *)v116 addRow:v71];

      v118 = [(MKPerformanceTable *)v116 displayNamesByDataClass];
      v111 = [(MKPerformanceTable *)v116 importTimesByDataClass];
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      obj = [(MKPerformanceData *)v109 dataClasses];
      v119 = [obj countByEnumeratingWithState:&v174 objects:v184 count:16];
      if (v119)
      {
        v117 = *v175;
        do
        {
          for (j = 0; j != v119; ++j)
          {
            if (*v175 != v117)
            {
              objc_enumerationMutation(obj);
            }

            v73 = *(*(&v174 + 1) + 8 * j);
            v74 = [v73 name];
            v75 = [v118 objectForKey:v74];

            if (v75)
            {
              v76 = [v73 name];
              v77 = [v111 objectForKey:v76];

              [v73 preparationTime];
              v79 = v78;
              [v73 exportTime];
              v81 = v79 + v80;
              [v73 networkQueueTime];
              v83 = v81 + v82;
              [v73 transferTime];
              v85 = v83 + v84;
              [v77 doubleValue];
              v87 = v85 + v86;
              v88 = 0.0;
              if (v87 > 0.0)
              {
                v88 = [v73 size] / v87;
              }

              v168 = [MKTableCell cellWithValue:v75 formatter:0];
              v173 = v75;
              v183[0] = v168;
              v163 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v73, "itemCount")}];
              v158 = [MKTableCell cellWithValue:v163 formatter:v112 alignment:2];
              v183[1] = v158;
              v153 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v73, "size")}];
              v148 = [MKTableCell cellWithValue:v153 formatter:v114 alignment:2];
              v183[2] = v148;
              v89 = MEMORY[0x277CCABB0];
              [v73 preparationTime];
              v144 = [v89 numberWithDouble:?];
              v139 = [MKTableCell cellWithValue:v144 formatter:v115 alignment:2];
              v183[3] = v139;
              v90 = MEMORY[0x277CCABB0];
              [v73 exportTime];
              v137 = [v90 numberWithDouble:?];
              v134 = [MKTableCell cellWithValue:v137 formatter:v115 alignment:2];
              v183[4] = v134;
              v91 = MEMORY[0x277CCABB0];
              [v73 networkQueueTime];
              v131 = [v91 numberWithDouble:?];
              v128 = [MKTableCell cellWithValue:v131 formatter:v115 alignment:2];
              v183[5] = v128;
              v92 = MEMORY[0x277CCABB0];
              [v73 transferTime];
              v124 = [v92 numberWithDouble:?];
              v122 = [MKTableCell cellWithValue:v124 formatter:v115 alignment:2];
              v183[6] = v122;
              v120 = [MKTableCell cellWithValue:v77 formatter:v115 alignment:2];
              v183[7] = v120;
              v93 = [MEMORY[0x277CCABB0] numberWithDouble:v87];
              v94 = [MKTableCell cellWithValue:v93 formatter:v115 alignment:2];
              v183[8] = v94;
              v126 = v77;
              v95 = MEMORY[0x277CCABB0];
              [v73 transferSpeed];
              v96 = [v95 numberWithDouble:?];
              v97 = [MKTableCell cellWithValue:v96 formatter:v113 alignment:2];
              v183[9] = v97;
              v98 = [MEMORY[0x277CCABB0] numberWithDouble:v88];
              v99 = [MKTableCell cellWithValue:v98 formatter:v113 alignment:2];
              v183[10] = v99;
              v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:11];
              v101 = [MKTableRow rowWithCells:v100];
              [(MKTable *)v116 addRow:v101];

              v75 = v173;
              [v73 size];
            }
          }

          v119 = [obj countByEnumeratingWithState:&v174 objects:v184 count:16];
        }

        while (v119);
      }

      v102 = +[MKTableRow separatorRow];
      [(MKTable *)v116 addRow:v102];

      v6 = v107;
      v4 = v108;
      v7 = v106;
      v8 = 0;
      p_super = &v109->super;
    }
  }

  else
  {
    v8 = +[MKLog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MKPerformanceTable generateTableFromJSONFile:];
    }
  }

  v103 = *MEMORY[0x277D85DE8];
}

- (void)writeToDisk
{
  v18 = MEMORY[0x277CCACA8];
  v23 = [(MKPerformanceTable *)self analytics];
  v22 = [v23 payload];
  v21 = [v22 androidBrand];
  v17 = [v21 lowercaseString];
  v20 = [(MKPerformanceTable *)self analytics];
  v19 = [v20 payload];
  v3 = [v19 androidModel];
  v4 = [v3 lowercaseString];
  v5 = [(MKPerformanceTable *)self analytics];
  v6 = [v5 payload];
  v7 = [v6 androidAPILevel];
  v8 = [(MKPerformanceTable *)self analytics];
  v9 = [v8 payload];
  v10 = [v9 androidVersion];
  v11 = [v18 stringWithFormat:@"perf-results_%@_%@_api-%@_v%@.csv", v17, v4, v7, v10];

  v12 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/ "];
  v13 = [v11 componentsSeparatedByCharactersInSet:v12];
  v14 = [v13 componentsJoinedByString:@"-"];

  v15 = [(MKPerformanceTable *)self basePath];
  v16 = [v15 stringByAppendingPathComponent:v14];
  v24.receiver = self;
  v24.super_class = MKPerformanceTable;
  [(MKTable *)&v24 writeToDisk:v16];
}

- (id)createNumberFormatterWithLocale:(id)a3
{
  v3 = MEMORY[0x277CCABB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setLocale:v4];

  [v5 setNumberStyle:1];
  [v5 setMaximumFractionDigits:1];
  [v5 setRoundingMode:6];

  return v5;
}

- (id)createTimeFormatterWithLocale:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MKTimeFormatter);
  [(MKTimeFormatter *)v4 setLocale:v3];

  return v4;
}

- (id)createSizeFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA8E8]);
  [v2 setCountStyle:0];
  [v2 setAllowsNonnumericFormatting:0];
  [v2 setZeroPadsFractionDigits:1];
  [v2 setAllowedUnits:12];

  return v2;
}

- (id)createThroughputFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA8E8]);
  [v2 setCountStyle:0];
  [v2 setAllowedUnits:12];
  [v2 setIncludesUnit:0];
  [v2 setZeroPadsFractionDigits:1];

  return v2;
}

- (id)importTimesByDataClass
{
  v47[12] = *MEMORY[0x277D85DE8];
  v46[0] = @"accessibility_settings";
  v45 = [(MKPerformanceTable *)self analytics];
  v44 = [v45 payload];
  v43 = [v44 accessibilitySettings];
  v42 = [v43 importElapsedTime];
  v47[0] = v42;
  v46[1] = @"accounts";
  v41 = [(MKPerformanceTable *)self analytics];
  v40 = [v41 payload];
  v39 = [v40 accounts];
  v38 = [v39 importElapsedTime];
  v47[1] = v38;
  v47[2] = &unk_286AAC650;
  v46[2] = @"application";
  v46[3] = @"calendars";
  v37 = [(MKPerformanceTable *)self analytics];
  v36 = [v37 payload];
  v35 = [v36 calendars];
  v34 = [v35 importElapsedTime];
  v47[3] = v34;
  v46[4] = @"contacts";
  v33 = [(MKPerformanceTable *)self analytics];
  v32 = [v33 payload];
  v31 = [v32 contacts];
  v30 = [v31 importElapsedTime];
  v47[4] = v30;
  v46[5] = @"display_settings";
  v29 = [(MKPerformanceTable *)self analytics];
  v28 = [v29 payload];
  v27 = [v28 displaySettings];
  v26 = [v27 importElapsedTime];
  v47[5] = v26;
  v46[6] = @"files";
  v25 = [(MKPerformanceTable *)self analytics];
  v24 = [v25 payload];
  v23 = [v24 files];
  v22 = [v23 importElapsedTime];
  v47[6] = v22;
  v46[7] = @"messages";
  v21 = [(MKPerformanceTable *)self analytics];
  v20 = [v21 payload];
  v19 = [v20 messages];
  v18 = [v19 importElapsedTime];
  v47[7] = v18;
  v46[8] = @"photos";
  v17 = [(MKPerformanceTable *)self analytics];
  v16 = [v17 payload];
  v3 = [v16 photos];
  v4 = [v3 importElapsedTime];
  v47[8] = v4;
  v46[9] = @"videos";
  v5 = [(MKPerformanceTable *)self analytics];
  v6 = [v5 payload];
  v7 = [v6 videos];
  v8 = [v7 importElapsedTime];
  v47[9] = v8;
  v46[10] = @"whatsapp_container";
  v9 = [(MKPerformanceTable *)self analytics];
  v10 = [v9 payload];
  v11 = [v10 whatsapp];
  v12 = [v11 importElapsedTime];
  v46[11] = @"whatsapp_placeholder";
  v47[10] = v12;
  v47[11] = &unk_286AAC650;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:12];

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

@end