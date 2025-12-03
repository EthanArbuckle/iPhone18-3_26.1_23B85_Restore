@interface _CDDataCollection
- (BOOL)submitDataForCollection;
- (_CDDataCollection)initWithStorage:(id)storage activity:(id)activity;
- (_CDDataCollection)initWithStorage:(id)storage activity:(id)activity sessionPath:(id)path dataDirectory:(id)directory collectionDate:(id)date samplingRate:(double)rate daysPerBatch:(unint64_t)batch eventStreams:(id)self0 maxBatches:(unint64_t)self1;
- (id)dataPath;
- (id)truncatedFileHandle;
- (void)_execute;
- (void)cleanup;
- (void)execute;
- (void)setSession:(uint64_t)session;
@end

@implementation _CDDataCollection

- (_CDDataCollection)initWithStorage:(id)storage activity:(id)activity
{
  storageCopy = storage;
  activityCopy = activity;
  v8 = +[_CDPaths defaultSessionPathForDataCollection];
  v9 = +[_CDPaths defaultDirectoryPathForDataCollection];
  date = [MEMORY[0x1E695DF00] date];
  v11 = 1.0;
  if (!CRIsAppleInternal())
  {
    v12 = OSAGetDATaskingValue();
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 doubleValue];
        v11 = v13;
      }

      else
      {
        v11 = 0.0001;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 doubleValue];
        v11 = v14;
      }
    }

    else
    {
      v11 = 0.0001;
    }
  }

  v15 = +[_CDLogging dataCollectionChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [_CDDataCollection initWithStorage:v15 activity:?];
  }

  v16 = OSAGetDATaskingValue();
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v16 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 7;
  }

  v18 = OSAGetDATaskingValue();
  if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue2 = [v18 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 1000;
  }

  v20 = [(_CDDataCollection *)self initWithStorage:storageCopy activity:activityCopy sessionPath:v8 dataDirectory:v9 collectionDate:date samplingRate:unsignedIntegerValue daysPerBatch:v11 eventStreams:0 maxBatches:unsignedIntegerValue2];

  return v20;
}

- (_CDDataCollection)initWithStorage:(id)storage activity:(id)activity sessionPath:(id)path dataDirectory:(id)directory collectionDate:(id)date samplingRate:(double)rate daysPerBatch:(unint64_t)batch eventStreams:(id)self0 maxBatches:(unint64_t)self1
{
  storageCopy = storage;
  activityCopy = activity;
  pathCopy = path;
  directoryCopy = directory;
  dateCopy = date;
  streamsCopy = streams;
  v45.receiver = self;
  v45.super_class = _CDDataCollection;
  v25 = [(_CDDataCollection *)&v45 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_storage, storage);
    objc_storeStrong(&v26->_activity, activity);
    v28 = [pathCopy copy];
    sessionPath = v26->_sessionPath;
    v26->_sessionPath = v28;

    v30 = [directoryCopy copy];
    dataDirectory = v26->_dataDirectory;
    v26->_dataDirectory = v30;

    v32 = [dateCopy copy];
    collectionDate = v26->_collectionDate;
    v26->_collectionDate = v32;

    v26->_samplingRate = rate;
    v26->_daysPerBatch = batch;
    v26->_maxBatches = batches;
    v34 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v26->_sessionPath options:0 error:0];
    v35 = 0;
    if (v34)
    {
      v44 = 0;
      v35 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v34 error:&v44];
      v36 = v44;
      if (v36)
      {
        v43 = +[_CDLogging dataCollectionChannel];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [_CDDataCollection initWithStorage:v36 activity:v43 sessionPath:v37 dataDirectory:? collectionDate:? samplingRate:? daysPerBatch:? eventStreams:? maxBatches:?];
        }
      }
    }

    session = v26->_session;
    v26->_session = v35;
    v39 = v35;

    *&v26->_selectedForDataCollection = 256;
    submissionBlock = v26->_submissionBlock;
    v26->_submissionBlock = &__block_literal_global_81;

    v41 = [[_CDEventStreamsRegister alloc] initWithEventStreams:streamsCopy];
    eventStreamsRegister = v26->_eventStreamsRegister;
    v26->_eventStreamsRegister = v41;
  }

  return v26;
}

- (void)execute
{
  [(_CDDataCollection *)self _execute];

  [(_CDDataCollection *)self cleanup];
}

- (void)_execute
{
  v216 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = *(self + 56);
    if (!*(self + 64))
    {
      v1 = +[_CDDataCollectionSession generateNewSession];
      [(_CDDataCollection *)self setSession:v1];

      v4 = *(self + 72);
      v5 = arc4random_uniform(0xF4241u) / 1000000.0;
      *(self + 8) = v5 <= v4;
      if (v5 > v4)
      {
        goto LABEL_22;
      }

      v6 = +[_CDLogging dataCollectionChannel];
      if (OUTLINED_FUNCTION_44(v6))
      {
        *buf = 0;
        OUTLINED_FUNCTION_1_29();
        _os_log_debug_impl(v7, v8, v9, v10, v11, 2u);
      }
    }

    if ([(_CDCloudFamilyDataCollectionSession *)*(self + 64) isValidForCollectionDate:v3])
    {
      v12 = +[_CDLogging dataCollectionChannel];
      if (OUTLINED_FUNCTION_44(v12))
      {
        v26 = MEMORY[0x1E696AD98];
        v27 = *(self + 64);
        if (v27)
        {
          v28 = v27[5];
        }

        else
        {
          v28 = 0;
        }

        v29 = v27;
        [v26 numberWithUnsignedInteger:v28];
        v213 = *buf = 138412290;
        OUTLINED_FUNCTION_1_29();
        _os_log_debug_impl(v30, v31, v32, v33, v34, 0xCu);
      }

      v13 = *(self + 64);
      if (v13)
      {
        v13 = *(v13 + 32);
      }

      v14 = *(self + 80) * 86400.0;
      if (v13)
      {
        v15 = *(self + 64);
        v16 = v15 ? v15[4] : 0;
        v17 = v15;
        [v3 timeIntervalSinceDate:v16];
        v19 = v18;

        if (v19 < v14)
        {
          v24 = +[_CDLogging dataCollectionChannel];
          if (OUTLINED_FUNCTION_44(v24))
          {
            *buf = 0;
            OUTLINED_FUNCTION_1_29();
            _os_log_debug_impl(v45, v46, v47, v48, v49, 2u);
          }

          *(self + 9) = 0;
          goto LABEL_22;
        }
      }

      v20 = *(self + 64);
      if (v20)
      {
        v21 = v20[5];
        v22 = *(self + 88);

        if (v21 > v22)
        {
          v23 = +[_CDLogging dataCollectionChannel];
          if (OUTLINED_FUNCTION_44(v23))
          {
            v35 = MEMORY[0x1E696AD98];
            v36 = *(self + 64);
            if (v36)
            {
              v37 = v36[5];
            }

            else
            {
              v37 = 0;
            }

            v38 = v36;
            v39 = [v35 numberWithUnsignedInteger:v37];
            [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(self + 88)];
            *buf = 138412546;
            v213 = v39;
            v215 = v214 = 2112;
            OUTLINED_FUNCTION_1_29();
            _os_log_debug_impl(v40, v41, v42, v43, v44, 0x16u);
          }

          goto LABEL_22;
        }
      }

      truncatedFileHandle = [(_CDDataCollection *)self truncatedFileHandle];
      if (!truncatedFileHandle)
      {
        obj = +[_CDLogging dataCollectionChannel];
        if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_191750000, obj, OS_LOG_TYPE_ERROR, "Failed to open file for writing data collection data", buf, 2u);
        }

LABEL_30:

        goto LABEL_22;
      }

      v50 = *(self + 96);
      if (v50)
      {
        v51 = v50[1];
      }

      else
      {
        v51 = 0;
      }

      v52 = v50;
      v53 = [v51 copy];

      v54 = [_DKQuery startDateSortDescriptorAscending:1];
      v211 = v54;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v211 count:1];

      v56 = *(self + 64);
      v57 = v56;
      if (!v56 || (v58 = v56[3]) == 0)
      {
        v58 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v3 sinceDate:-v14];
      }

      v183 = v55;

      v59 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v213 = v58;
        OUTLINED_FUNCTION_4_20(&dword_191750000, v59, v60, "Querying for events since %@", buf);
      }

      v181 = v58;
      v182 = [_DKQuery predicateForEventsWithStartInDateRangeFromAfter:v58 to:v3];
      v196 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v204 = 0u;
      v205 = 0u;
      v206 = 0u;
      v207 = 0u;
      obj = v53;
      v61 = [obj countByEnumeratingWithState:&v204 objects:v210 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v205;
        do
        {
          for (i = 0; i != v62; ++i)
          {
            if (*v205 != v63)
            {
              objc_enumerationMutation(obj);
            }

            name = [*(*(&v204 + 1) + 8 * i) name];
            v66 = [_DKQuery predicateForEventsWithStreamName:name];

            [v196 addObject:v66];
          }

          v62 = [obj countByEnumeratingWithState:&v204 objects:v210 count:16];
        }

        while (v62);
      }

      v67 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v196];
      v68 = MEMORY[0x1E696AB28];
      v209[0] = v182;
      v209[1] = v67;
      v179 = v67;
      v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v209 count:2];
      v184 = [v68 andPredicateWithSubpredicates:v69];

      v70 = MEMORY[0x1E696AEC0];
      v71 = *(self + 64);
      if (v71)
      {
        v72 = v71[1];
      }

      else
      {
        v72 = 0;
      }

      v73 = MEMORY[0x1E696AD98];
      v74 = *(self + 64);
      v75 = v183;
      v180 = v3;
      if (v74)
      {
        v76 = v74[5];
      }

      else
      {
        v76 = 0;
      }

      v77 = v74;
      v78 = v72;
      v79 = v71;
      v177 = [v73 numberWithUnsignedInteger:v76];
      v80 = [v70 stringWithFormat:@"{collection_id: new_format, sessionID:%@, batch:%@, events:[", v78];

      v178 = v80;
      v81 = [v80 dataUsingEncoding:4];
      [truncatedFileHandle writeData:v81];

      getEventHandlerDictForStreams = [(_CDEventStreamsRegister *)*(self + 96) getEventHandlerDictForStreams];
      v191 = 0;
      v83 = 0;
      v193 = 0;
      v84 = v184;
      while (1)
      {
        v85 = objc_autoreleasePoolPush();
        activity = [self activity];
        if (activity)
        {
          v87 = activity;
          activity2 = [self activity];
          if (xpc_activity_should_defer(activity2))
          {
            activity3 = [self activity];
            v90 = xpc_activity_set_state(activity3, 3);

            if (v90)
            {
              *(self + 9) = 0;
              objc_autoreleasePoolPop(v85);
              v120 = 0;
              v121 = v83;
              v3 = v180;
              goto LABEL_83;
            }
          }

          else
          {
          }
        }

        v192 = v85;
        v91 = v193;
        v92 = [_DKEventQuery eventQueryWithPredicate:v84 eventStreams:obj offset:v193 limit:128 sortDescriptors:v75];
        v93 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_CDDataCollection.m"];
        v176 = 474;
        v94 = [v93 stringByAppendingFormat:@":%d"];
        [v92 setClientName:v94];

        [v92 setTracker:&__block_literal_global_99];
        storage = [self storage];
        v203 = 0;
        v121 = [storage executeQuery:v92 error:&v203];
        v120 = v203;

        if (!v120 && [v121 count])
        {
          v186 = v92;
          v187 = 0;
          context = objc_autoreleasePoolPush();
          v199 = 0u;
          v200 = 0u;
          v201 = 0u;
          v202 = 0u;
          v189 = v121;
          v96 = v121;
          v97 = [v96 countByEnumeratingWithState:&v199 objects:v208 count:16];
          if (v97)
          {
            v98 = v97;
            v99 = *v200;
            do
            {
              for (j = 0; j != v98; ++j)
              {
                if (*v200 != v99)
                {
                  objc_enumerationMutation(v96);
                }

                v101 = *(*(&v199 + 1) + 8 * j);
                stream = [v101 stream];
                name2 = [stream name];
                v104 = [getEventHandlerDictForStreams objectForKey:name2];

                if (v104)
                {
                  stream2 = [v101 stream];
                  name3 = [stream2 name];
                  v107 = [getEventHandlerDictForStreams objectForKey:name3];

                  [v107 eventHandler:v101 withFileHandle:truncatedFileHandle];
                }

                else
                {
                  v107 = +[_CDLogging dataCollectionChannel];
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
                  {
                    stream3 = [v101 stream];
                    name4 = [stream3 name];
                    OUTLINED_FUNCTION_0_37(name4, v110, v111, v112, v113, v114, v115, v116, v176, v177, v178, v179, v180, v181, v182, v183, v184, context, v186, v187, v189, v191, v192, v193, v117);
                    *(v119 + 4) = v118;
                    _os_log_debug_impl(&dword_191750000, v107, OS_LOG_TYPE_DEBUG, "Event handler not found for eventStream: %@ in eventStreamHandlerDict", buf, 0xCu);
                  }
                }
              }

              v98 = [v96 countByEnumeratingWithState:&v199 objects:v208 count:16];
            }

            while (v98);
          }

          v191 += [v96 count];
          objc_autoreleasePoolPop(context);
          v75 = v183;
          v84 = v184;
          v120 = v187;
          v121 = v189;
          v91 = v193;
          v92 = v186;
        }

        objc_autoreleasePoolPop(v192);
        if (v120)
        {
          break;
        }

        v193 = v91 + 128;
        v83 = v121;
        if ([v121 count] != 128)
        {
          goto LABEL_78;
        }
      }

      v122 = +[_CDLogging dataCollectionChannel];
      v123 = os_log_type_enabled(v122, OS_LOG_TYPE_ERROR);
      if (v123)
      {
        OUTLINED_FUNCTION_0_37(v123, v124, v125, v126, v127, v128, v129, v130, v176, v177, v178, v179, v180, v181, v182, v183, v184, context, v186, v187, v189, v191, v192, v193, v131);
        *(v132 + 4) = v120;
        OUTLINED_FUNCTION_10(&dword_191750000, v122, v133, "Error querying events during data collection: %@", buf);
      }

LABEL_78:
      if (v191)
      {
        v134 = [@" "];
        v135 = [v134 length];

        [truncatedFileHandle truncateFileAtOffset:{objc_msgSend(truncatedFileHandle, "offsetInFile") - v135}];
      }

      v136 = [MEMORY[0x1E696AEC0] stringWithFormat:@"]}"];
      v137 = [v136 dataUsingEncoding:4];
      [truncatedFileHandle writeData:v137];

      [truncatedFileHandle closeFile];
      v138 = +[_CDLogging dataCollectionChannel];
      v3 = v180;
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
      {
        v139 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v191];
        OUTLINED_FUNCTION_0_37(v139, v140, v141, v142, v143, v144, v145, v146, v176, v177, v178, v179, v180, v181, v182, v183, v184, context, v186, v187, v189, v191, v192, v193, v147);
        *(v149 + 4) = v148;
        OUTLINED_FUNCTION_4_20(&dword_191750000, v138, v150, "Wrote %@ events for data collection", buf);
      }

      v84 = v184;
      if (![(_CDDataCollection *)self submitDataForCollection])
      {
LABEL_83:
        v152 = v178;
        v151 = v179;
        goto LABEL_84;
      }

      v188 = v120;
      v190 = v121;
      lastObject = [v121 lastObject];
      startDate = [lastObject startDate];

      v155 = v3;
      v156 = [(_CDDataCollectionSession *)*(self + 64) subsequentSessionWithlatestStartDate:startDate lastCollectionDate:v3];
      v198 = 0;
      v157 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v156 requiringSecureCoding:1 error:&v198];
      v158 = v198;
      if (v158)
      {
        v159 = v158;
      }

      else
      {
        stringByDeletingLastPathComponent = [*(self + 48) stringByDeletingLastPathComponent];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

        v162 = *(self + 48);
        v197 = 0;
        v163 = v162;
        [v157 writeToFile:v163 options:0 error:&v197];
        v159 = v197;

        if (!v159)
        {
          *(self + 9) = 0;
          goto LABEL_91;
        }
      }

      v164 = +[_CDLogging dataCollectionChannel];
      v165 = os_log_type_enabled(v164, OS_LOG_TYPE_ERROR);
      if (v165)
      {
        OUTLINED_FUNCTION_0_37(v165, v166, v167, v168, v169, v170, v171, v172, v176, v177, v178, v179, v180, v181, v182, v183, v184, context, v186, v188, v190, v191, v192, v193, v173);
        *(v174 + 4) = v159;
        OUTLINED_FUNCTION_10(&dword_191750000, v164, v175, "Error archiving subsequent data collection session: %@", buf);
      }

LABEL_91:
      v3 = v155;
      v75 = v183;
      v84 = v184;
      v152 = v178;
      v151 = v179;
      v120 = v188;
      v121 = v190;
LABEL_84:

      goto LABEL_30;
    }

LABEL_22:
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)cleanup
{
  v16 = *MEMORY[0x1E69E9840];
  if (self && *(self + 9) == 1)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v3 = *(self + 48);
    v13 = 0;
    v4 = v3;
    [defaultManager removeItemAtPath:v4 error:&v13];
    v5 = v13;

    if (!v5)
    {
LABEL_13:

      goto LABEL_14;
    }

    userInfo = [v5 userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v7)
    {
      domain = [v7 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A798]])
      {
        code = [v7 code];

        if (code == 2)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v10 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v5;
        OUTLINED_FUNCTION_10(&dword_191750000, v10, v11, "Error remove previous session file: %@", &v14);
      }
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
}

- (void)setSession:(uint64_t)session
{
  if (session)
  {
    objc_storeStrong((session + 64), a2);
  }
}

- (id)truncatedFileHandle
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dataPath = [(_CDDataCollection *)self dataPath];
    stringByDeletingLastPathComponent = [dataPath stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v12 = 0;
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v12];
    v4 = v12;

    if (v4)
    {
      v5 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v4;
        OUTLINED_FUNCTION_10(&dword_191750000, v5, v6, "Error creating directory for data collection: %@", &v13);
      }

      v7 = 0;
    }

    else
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      data = [MEMORY[0x1E695DEF0] data];
      [defaultManager2 createFileAtPath:dataPath contents:data attributes:0];

      v7 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:dataPath];
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)submitDataForCollection
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v2 = +[_CDLogging dataCollectionChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_191750000, v2, OS_LOG_TYPE_DEBUG, "Compressing data collection json file", buf, 2u);
  }

  dataPath = [(_CDDataCollection *)self dataPath];
  v4 = [dataPath stringByAppendingPathExtension:@"tar.gz"];
  fileSystemRepresentation = [dataPath fileSystemRepresentation];
  lastPathComponent = [dataPath lastPathComponent];
  [lastPathComponent fileSystemRepresentation];

  [v4 fileSystemRepresentation];
  archive_write_new();
  if (!archive_write_add_filter_gzip() && !archive_write_set_format_pax_restricted() && !archive_write_open_filename())
  {
    bzero(&v21, 0x90uLL);
    stat(fileSystemRepresentation, &v21);
    archive_entry_new();
    archive_entry_set_size();
    archive_entry_set_filetype();
    archive_entry_set_perm();
    archive_entry_set_pathname();
    if (!archive_write_header())
    {
      v14 = open(fileSystemRepresentation, 0);
      while (read(v14, buf, 0x2000uLL))
      {
        archive_write_data();
      }

      close(v14);
      archive_entry_free();
      archive_write_close();
      archive_write_free();
      v20 = 0;
      v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4 options:8 error:&v20];
      v16 = v20;
      v10 = v16 == 0;
      if (v16)
      {
        lastPathComponent2 = +[_CDLogging dataCollectionChannel];
        if (os_log_type_enabled(lastPathComponent2, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v16;
          OUTLINED_FUNCTION_10(&dword_191750000, lastPathComponent2, v18, "Error mapping gzipped data collection file for DA submission: %@", buf);
        }
      }

      else
      {
        lastPathComponent2 = [v4 lastPathComponent];
        submissionBlock = [self submissionBlock];
        (submissionBlock)[2](submissionBlock, lastPathComponent2, v15);
      }

      goto LABEL_12;
    }

    archive_entry_free();
  }

  v7 = archive_errno();
  v8 = archive_error_string();
  v9 = +[_CDLogging dataCollectionChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    *buf = 138412546;
    v23 = v13;
    v24 = 2080;
    v25 = v8;
    _os_log_error_impl(&dword_191750000, v9, OS_LOG_TYPE_ERROR, "Error compressing data collection file. code:%@ %s", buf, 0x16u);
  }

  archive_write_close();
  archive_write_free();
  v10 = 0;
LABEL_12:

LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)dataPath
{
  selfCopy = self;
  if (self)
  {
    if (self[8])
    {
      v2 = self[8];
      if (v2)
      {
        v3 = v2[1];
      }

      else
      {
        v3 = 0;
      }

      v4 = MEMORY[0x1E696AD98];
      v5 = self[8];
      if (v5)
      {
        v6 = v5[5];
      }

      else
      {
        v6 = 0;
      }

      v7 = v5;
      v8 = v3;
      v9 = v2;
      v10 = [v4 numberWithUnsignedInteger:v6];
      v11 = [v8 stringByAppendingFormat:@".%@.json", v10];

      selfCopy = [selfCopy[5] stringByAppendingPathComponent:v11];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)initWithStorage:(NSObject *)a1 activity:.cold.1(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v5 = 138412290;
  v6 = v2;
  OUTLINED_FUNCTION_4_20(&dword_191750000, a1, v3, "Sampling Rate: %@", &v5);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)initWithStorage:(uint64_t)a3 activity:sessionPath:dataDirectory:collectionDate:samplingRate:daysPerBatch:eventStreams:maxBatches:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = a1;
  OUTLINED_FUNCTION_10(&dword_191750000, a2, a3, "Error unarchiving data collection session: %@", &v4);
  v3 = *MEMORY[0x1E69E9840];
}

@end