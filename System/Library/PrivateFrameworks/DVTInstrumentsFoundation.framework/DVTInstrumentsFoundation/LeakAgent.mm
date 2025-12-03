@interface LeakAgent
- (LeakAgent)initWithTask:(unsigned int)task pid:(int)pid;
- (id)getSerializedGraphWithFullDiskStackLogs:(id)logs serializedGraph:(id)graph error:(id *)error;
- (id)logAndGenerateReceiptForErrorWithFormat:(id)format;
- (id)mallocStackLogForAddress:(id)address size:(id)size isLiteZone:(id)zone;
- (id)serializedGraphWithOptions:(id)options;
- (id)vmRegionStackLogForAddress:(id)address size:(id)size;
- (void)dealloc;
@end

@implementation LeakAgent

- (LeakAgent)initWithTask:(unsigned int)task pid:(int)pid
{
  v7.receiver = self;
  v7.super_class = LeakAgent;
  result = [(LeakAgent *)&v7 init];
  if (result)
  {
    result->_targetTask = task;
    result->_targetPid = pid;
  }

  return result;
}

- (void)dealloc
{
  targetTask = self->_targetTask;
  if (targetTask + 1 >= 2)
  {
    mach_port_deallocate(mach_task_self_, targetTask);
    self->_targetTask = 0;
  }

  v4.receiver = self;
  v4.super_class = LeakAgent;
  [(LeakAgent *)&v4 dealloc];
}

- (id)getSerializedGraphWithFullDiskStackLogs:(id)logs serializedGraph:(id)graph error:(id *)error
{
  logsCopy = logs;
  graphCopy = graph;
  v46 = 0;
  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = &v46;
  }

  stackLogReader = [logsCopy stackLogReader];

  if (stackLogReader)
  {
    v11 = +[NSFileManager defaultManager];
    temporaryDirectory = [v11 temporaryDirectory];
    v13 = +[NSUUID UUID];
    uUIDString = [v13 UUIDString];
    v15 = [NSString stringWithFormat:@"%@.memgraph", uUIDString];
    v16 = [temporaryDirectory URLByAppendingPathComponent:v15];

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000016B8;
    v44[3] = &unk_100008360;
    v17 = v16;
    v45 = v17;
    v18 = objc_retainBlock(v44);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000017CC;
    v41[3] = &unk_100008388;
    v19 = v17;
    v42 = v19;
    v20 = v18;
    v43 = v20;
    v21 = objc_retainBlock(v41);
    v22 = +[NSFileManager defaultManager];
    path = [v19 path];
    [v22 createFileAtPath:path contents:0 attributes:0];

    v24 = [NSFileHandle fileHandleForWritingToURL:v19 error:errorCopy];
    v25 = v24;
    if (!v24)
    {
      (v20[2])(v20, "create", *errorCopy);
      v29 = 0;
LABEL_21:

      goto LABEL_22;
    }

    [v24 truncateFileAtOffset:0];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100001878;
    v39[3] = &unk_1000083B0;
    v40 = logsCopy;
    v26 = [VMUDirectedGraph encapsulateData:graphCopy to:v25 withSupplementalDataTag:"DISKLOGS" error:errorCopy dataGeneratorBlock:v39];
    [v25 closeFile];
    if ((v26 & 1) == 0)
    {
      if (!*errorCopy)
      {
        v47 = NSLocalizedDescriptionKey;
        v33 = [NSString stringWithFormat:@"failed to write memgraph with full disk stack logs with unknown error"];
        v48 = v33;
        v34 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        *errorCopy = [NSError errorWithDomain:@"LeakAgent" code:-1 userInfo:v34];

        v35 = *errorCopy;
      }

      (v20[2])(v20, "write to");
      v36 = (v21[2])(v21);
      v29 = 0;
      goto LABEL_20;
    }

    v27 = [NSData dataWithContentsOfURL:v19 options:1 error:errorCopy];
    if (v27)
    {
      v28 = (v21[2])(v21);
      *errorCopy = v28;
      if (!v28)
      {
        v29 = v27;
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
      (v20[2])(v20, "read from", *errorCopy);
      v37 = (v21[2])(v21);
    }

    v29 = 0;
    goto LABEL_19;
  }

  v51 = NSLocalizedDescriptionKey;
  v30 = [NSString stringWithFormat:@"%@", @"stack log reader not present in memgraph, so can't save memgraph with full disk stack logs"];
  v52 = v30;
  v31 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  *errorCopy = [NSError errorWithDomain:@"LeakAgent" code:-1 userInfo:v31];

  v19 = sub_100001674();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v32 = [@"stack log reader not present in memgraph so can't save memgraph with full disk stack logs"];
    *buf = 136315138;
    v50 = v32;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  v29 = 0;
LABEL_22:

  return v29;
}

- (id)logAndGenerateReceiptForErrorWithFormat:(id)format
{
  formatCopy = format;
  v5 = [[NSString alloc] initWithFormat:formatCopy arguments:&v21];

  v6 = sub_100001674();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    targetPid = self->_targetPid;
    *buf = 67109378;
    v17 = targetPid;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to generate memory graph for pid %u: %@", buf, 0x12u);
  }

  v8 = [[NSString alloc] initWithFormat:@"Failed to generate memory graph for pid %u: %@", self->_targetPid, v5];
  v9 = objc_opt_new();
  v10 = [NSError alloc];
  v14 = NSLocalizedDescriptionKey;
  v15 = v8;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [v10 initWithDomain:@"LeakAgent" code:-1 userInfo:v11];

  [v9 invokeCompletionWithReturnValue:0 error:v12];

  return v9;
}

- (id)serializedGraphWithOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100001674();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    targetPid = self->_targetPid;
    targetTask = self->_targetTask;
    LODWORD(buf) = 67109634;
    DWORD1(buf) = targetPid;
    WORD4(buf) = 1024;
    *(&buf + 10) = targetTask;
    HIWORD(buf) = 2112;
    *&v114 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "requested memgraph for %u (%#x) with options: %@", &buf, 0x18u);
  }

  v8 = sub_100001674();
  if (os_signpost_enabled(v8))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Request memgraph", &unk_1000066FB, &buf, 2u);
  }

  if (self->_targetTask + 1 <= 1)
  {
    unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"no valid task available"];
    goto LABEL_119;
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"LeakedCount"];
  bOOLValue = [v10 BOOLValue];

  v11 = [optionsCopy objectForKeyedSubscript:@"LeakedAddresses"];
  bOOLValue2 = [v11 BOOLValue];

  v12 = [optionsCopy objectForKeyedSubscript:@"MarkedCount"];
  bOOLValue3 = [v12 BOOLValue];

  v13 = [optionsCopy objectForKeyedSubscript:@"MarkedAddresses"];
  bOOLValue4 = [v13 BOOLValue];

  v14 = [optionsCopy objectForKeyedSubscript:@"AnalyzeCorpse"];
  v94 = v14;
  if (v14)
  {
    v15 = [v14 BOOLValue] ^ 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"LeakedGraphOnly"];
  bOOLValue5 = [v16 BOOLValue];

  v93 = [optionsCopy objectForKeyedSubscript:@"CompressionOption"];
  v92 = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  if (bOOLValue2)
  {
    v92 = +[NSMutableArray array];
  }

  v17 = [optionsCopy objectForKeyedSubscript:@"RegionDescriptionOptions"];

  if (v17)
  {
    v18 = [optionsCopy objectForKeyedSubscript:@"RegionDescriptionOptions"];
    unsignedLongValue = [v18 unsignedLongValue];
  }

  else if (bOOLValue5)
  {
    unsignedLongValue = 0;
  }

  else
  {
    unsignedLongValue = (VMUGetFlagsForAllVMRegionStatistics() | 0xC000);
  }

  if (v93)
  {
    v19 = [v93 intValue] > 0;
  }

  else
  {
    v19 = 1;
  }

  v85 = v19;
  corpse_task_port = 0;
  v20 = self->_targetTask;
  v21 = sub_100001674();
  if (os_signpost_enabled(v21))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Init memory scanner", &unk_1000066FB, &buf, 2u);
  }

  if (v15)
  {
LABEL_28:
    v26 = [[VMUTaskMemoryScanner alloc] initWithTask:v20 options:unsignedLongValue];
    if (!v26)
    {
      unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"failed to create a VMUTaskMemoryScanner, probably because the target's libmalloc hasn't been initialized"];
      v90 = 0;
LABEL_117:

      goto LABEL_118;
    }

    v27 = [optionsCopy objectForKeyedSubscript:@"ScannerSettings"];

    if (v27)
    {
      unsignedLongValue = [optionsCopy objectForKeyedSubscript:@"ScannerSettings"];
      v28 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingExactScanningEnabled"];
      [v26 setExactScanningEnabled:{objc_msgSend(v28, "BOOLValue")}];

      v29 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingAbandonedMarkingEnabled"];
      [v26 setAbandonedMarkingEnabled:{objc_msgSend(v29, "BOOLValue")}];

      v30 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingShowRawClassNames"];
      [v26 setShowRawClassNames:{objc_msgSend(v30, "BOOLValue")}];

      v31 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingObjectContentLevel"];
      [v26 setObjectContentLevel:{objc_msgSend(v31, "unsignedIntValue")}];

      v32 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingScanningMask"];
      [v26 setScanningMask:{objc_msgSend(v32, "unsignedIntValue")}];

      v33 = [unsignedLongValue objectForKeyedSubscript:@"ScannerSettingMaxInteriorOffset"];
      v34 = v33;
      if (v33)
      {
        [v26 setMaxInteriorOffset:{objc_msgSend(v33, "unsignedLongValue")}];
      }
    }

    v35 = sub_100001674();
    if (os_signpost_enabled(v35))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Init memory scanner", &unk_1000066FB, &buf, 2u);
    }

    v36 = sub_100001674();
    if (os_signpost_enabled(v36))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Add root and malloc nodes", &unk_1000066FB, &buf, 2u);
    }

    v106 = 0;
    v37 = [v26 addAllNodesFromTaskWithError:&v106];
    v38 = v106;
    v39 = v38;
    if ((v37 & 1) == 0)
    {
      localizedDescription = [v38 localizedDescription];
      unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"failed to add nodes to VMUTaskMemoryScanner with the error %@", localizedDescription];
    }

    v41 = sub_100001674();
    if (os_signpost_enabled(v41))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Add root and malloc nodes", &unk_1000066FB, &buf, 2u);
    }

    if (!v37)
    {
      v90 = 0;
      v46 = 0;
      goto LABEL_66;
    }

    v42 = sub_100001674();
    if (os_signpost_enabled(v42))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Process graph", &unk_1000066FB, &buf, 2u);
    }

    v43 = [optionsCopy objectForKeyedSubscript:@"ProcessSnapshotGraphOptions"];

    if (v43)
    {
      v44 = [optionsCopy objectForKeyedSubscript:@"ProcessSnapshotGraphOptions"];
      unsignedLongValue2 = [v44 unsignedLongValue];

      [v26 processSnapshotGraphWithOptions:unsignedLongValue2];
    }

    else
    {
      [v26 processSnapshotGraph];
    }
    v84 = ;
    v47 = sub_100001674();
    if (os_signpost_enabled(v47))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Process graph", &unk_1000066FB, &buf, 2u);
    }

    v48 = sub_100001674();
    if (os_signpost_enabled(v48))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Find leaks", &unk_1000066FB, &buf, 2u);
    }

    if (!bOOLValue5)
    {
      v90 = v84;
LABEL_63:
      v55 = sub_100001674();
      if (os_signpost_enabled(v55))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Find leaks", &unk_1000066FB, &buf, 2u);
      }

      v46 = 1;
LABEL_66:
      [v26 detachFromTask];
      v56 = sub_100001674();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = self->_targetPid;
        LODWORD(buf) = 67109376;
        DWORD1(buf) = v57;
        WORD4(buf) = 1024;
        *(&buf + 10) = v20;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "detached from process: %u (%#x)", &buf, 0xEu);
      }

      if (corpse_task_port - 1 <= 0xFFFFFFFD)
      {
        mach_port_deallocate(mach_task_self_, corpse_task_port);
      }

      if (!v46)
      {
        goto LABEL_117;
      }

      v58 = v20;
      v59 = +[NSMutableDictionary dictionary];
      if (v58 == self->_targetTask)
      {
        v115 = 0;
        buf = 0u;
        v114 = 0u;
        task_info_outCnt = 10;
        if (task_info(v58, 0x12u, &buf, &task_info_outCnt))
        {
          unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"target process no longer exists"];
LABEL_116:

          goto LABEL_117;
        }
      }

      if (!(bOOLValue5 & 1 | ((bOOLValue & 1) == 0)))
      {
        v60 = sub_100001674();
        if (os_signpost_enabled(v60))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Count leaks", &unk_1000066FB, &buf, 2u);
        }

        v98 = _NSConcreteStackBlock;
        v99 = 3221225472;
        v100 = sub_100002CEC;
        v101 = &unk_100008400;
        v102 = v90;
        v104 = &v108;
        v103 = v92;
        VMUWithRootNodeMarkingMap();
        v61 = sub_100001674();
        if (os_signpost_enabled(v61))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Count leaks", &unk_1000066FB, &buf, 2u);
        }
      }

      if ((bOOLValue3 | bOOLValue4))
      {
        v62 = sub_100001674();
        if (os_signpost_enabled(v62))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v62, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Count marked", &unk_1000066FB, &buf, 2u);
        }

        copyUserMarked = [v90 copyUserMarked];
        if (bOOLValue4)
        {
          v64 = +[NSMutableArray array];
        }

        else
        {
          v64 = 0;
        }

        if (copyUserMarked)
        {
          v96[0] = _NSConcreteStackBlock;
          v96[1] = 3221225472;
          v96[2] = sub_100002E54;
          v96[3] = &unk_1000083D8;
          v97 = v64;
          v65 = [v90 enumerateMarkedObjects:copyUserMarked withBlock:v96];
          free(copyUserMarked);
        }

        else
        {
          v65 = 0;
        }

        if (bOOLValue3)
        {
          v66 = [NSNumber numberWithUnsignedInt:v65];
          [v59 setObject:v66 forKeyedSubscript:@"MarkedCount"];
        }

        if (bOOLValue4)
        {
          [v59 setObject:v64 forKeyedSubscript:@"MarkedAddresses"];
        }

        v67 = sub_100001674();
        if (os_signpost_enabled(v67))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v67, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Count marked", &unk_1000066FB, &buf, 2u);
        }
      }

      v68 = sub_100001674();
      if (os_signpost_enabled(v68))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Serialize graph", &unk_1000066FB, &buf, 2u);
      }

      v69 = [v90 plistRepresentationWithOptions:v85];
      v70 = sub_100001674();
      if (os_signpost_enabled(v70))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Serialize graph", &unk_1000066FB, &buf, 2u);
      }

      v71 = [optionsCopy objectForKeyedSubscript:@"CollectFullDiskStackLogs"];
      bOOLValue6 = [v71 BOOLValue];

      if (bOOLValue6)
      {
        v95 = 0;
        v73 = [(LeakAgent *)self getSerializedGraphWithFullDiskStackLogs:v90 serializedGraph:v69 error:&v95];
        v74 = v95;

        if (!v73)
        {
          localizedDescription2 = [v74 localizedDescription];
          unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"failed to collect full disk stack logs with the error %@", localizedDescription2];

LABEL_115:
          goto LABEL_116;
        }

        v69 = v73;
      }

      else if (!v69)
      {
        v74 = 0;
        goto LABEL_106;
      }

      [v59 setObject:v69 forKeyedSubscript:@"SerializedGraph"];
      v74 = v69;
LABEL_106:
      if (bOOLValue)
      {
        v75 = [NSNumber numberWithUnsignedInt:*(v109 + 6)];
        [v59 setObject:v75 forKeyedSubscript:@"LeakedCount"];
      }

      if (bOOLValue2)
      {
        [v59 setObject:v92 forKeyedSubscript:@"LeakedAddresses"];
      }

      v76 = sub_100001674();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v77 = self->_targetPid;
        nodeCount = [v90 nodeCount];
        edgeCount = [v90 edgeCount];
        v80 = *(v109 + 6);
        *&buf = __PAIR64__(v77, 67109888);
        WORD4(buf) = 1024;
        *(&buf + 10) = nodeCount;
        HIWORD(buf) = 1024;
        LODWORD(v114) = edgeCount;
        WORD2(v114) = 1024;
        *(&v114 + 6) = v80;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "returning result for pid %u with %u nodes, %u edges (%u leaked)", &buf, 0x1Au);
      }

      v81 = sub_100001674();
      if (os_signpost_enabled(v81))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v81, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Request memgraph", &unk_1000066FB, &buf, 2u);
      }

      unsignedLongValue = v59;
      goto LABEL_115;
    }

    v49 = [[VMULeakDetector alloc] initWithTask:self->_targetTask graph:v84 scanner:v26 stackLogReader:0];
    [v49 setSuppressOutput:1];
    v105 = 0;
    v50 = [v49 doNormalLeakDetectionWithError:&v105];
    v51 = v105;
    *(v109 + 6) = v50;
    if (v51)
    {
      v52 = sub_100001674();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        localizedDescription3 = [v51 localizedDescription];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = localizedDescription3;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "LeakDetector error: %@", &buf, 0xCu);
      }

      v90 = 0;
    }

    else
    {
      if (!v50)
      {
        v90 = 0;
        goto LABEL_62;
      }

      graph = [v49 graph];
      v90 = -[NSObject subgraphWithMarkedNodes:](graph, "subgraphWithMarkedNodes:", [v49 leakedNodes]);
      v52 = v84;
      v84 = graph;
    }

LABEL_62:
    goto LABEL_63;
  }

  v22 = task_generate_corpse(self->_targetTask, &corpse_task_port);
  if (!v22)
  {
    v23 = sub_100001674();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = self->_targetPid;
      v25 = self->_targetTask;
      LODWORD(buf) = 67109632;
      DWORD1(buf) = v24;
      WORD4(buf) = 1024;
      *(&buf + 10) = v25;
      HIWORD(buf) = 1024;
      LODWORD(v114) = corpse_task_port;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "generated a corpse for pid: %u (task: %#x): %#x", &buf, 0x14u);
    }

    v20 = corpse_task_port;
    goto LABEL_28;
  }

  unsignedLongValue = [(LeakAgent *)self logAndGenerateReceiptForErrorWithFormat:@"failed to generate corpse: %#x - %s", v22, mach_error_string(v22)];
LABEL_118:

  _Block_object_dispose(&v108, 8);
LABEL_119:

  return unsignedLongValue;
}

- (id)mallocStackLogForAddress:(id)address size:(id)size isLiteZone:(id)zone
{
  addressCopy = address;
  sizeCopy = size;
  zoneCopy = zone;
  if (self->_targetTask + 1 <= 1)
  {
    v29 = sub_100001674();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      targetPid = self->_targetPid;
      targetTask = self->_targetTask;
      *buf = 67109376;
      v41 = targetPid;
      v42 = 1024;
      v43 = targetTask;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "no valid task available for target: %u (%#x)", buf, 0xEu);
    }

    exit(4);
  }

  v11 = zoneCopy;
  if (self->_stackLogReader || (v12 = [[VMUTaskStackLogReader alloc] initWithTask:self->_targetTask], stackLogReader = self->_stackLogReader, self->_stackLogReader = v12, stackLogReader, self->_stackLogReader))
  {
    unsignedLongLongValue = [addressCopy unsignedLongLongValue];
    unsignedLongLongValue2 = [sizeCopy unsignedLongLongValue];
    bOOLValue = [v11 BOOLValue];
    v17 = self->_targetTask;
    task_start_peeking();
    v18 = [(VMUTaskStackLogReader *)self->_stackLogReader getFramesForAddress:unsignedLongLongValue size:unsignedLongLongValue2 inLiteZone:bOOLValue stackFramesBuffer:buf];
    v19 = self->_targetTask;
    task_stop_peeking();
    if (v18 == -1)
    {
      v26 = sub_100001674();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = "NO";
        v32 = 134218754;
        v33 = unsignedLongLongValue;
        v34 = 2048;
        if (bOOLValue)
        {
          v27 = "YES";
        }

        v35 = &unsignedLongLongValue[unsignedLongLongValue2];
        v36 = 2048;
        v37 = unsignedLongLongValue2;
        v38 = 2080;
        v39 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "unable to get malloc stack log for %#llx-%#llx [%llu] (liteZone: %s)", &v32, 0x2Au);
      }

      v21 = +[NSArray array];
    }

    else
    {
      v20 = v18 - ((v18 > 0) & ~[(VMUTaskStackLogReader *)self->_stackLogReader usesLiteMode]);
      v21 = [NSMutableArray arrayWithCapacity:v20];
      if (v20 >= 1)
      {
        v22 = 0;
        v23 = 1;
        do
        {
          v24 = [NSNumber numberWithUnsignedLongLong:*&buf[8 * v22]];
          [v21 setObject:v24 atIndexedSubscript:v22];

          v22 = v23;
        }

        while (v20 > v23++);
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)vmRegionStackLogForAddress:(id)address size:(id)size
{
  v4 = __chkstk_darwin(self, a2, address, size);
  v6 = v5;
  v7 = v4;
  v9 = v8;
  v10 = v6;
  if ((*(v7 + 8) + 1) <= 1)
  {
    v33 = sub_100001674();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = *(v7 + 12);
      v35 = *(v7 + 8);
      *buf = 67109376;
      v43 = v34;
      v44 = 1024;
      v45 = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "no valid task available for target: %u (%#x)", buf, 0xEu);
    }

    exit(4);
  }

  v11 = v10;
  if (*(v7 + 16) || (v12 = [[VMUTaskStackLogReader alloc] initWithTask:*(v7 + 8)], v13 = *(v7 + 16), *(v7 + 16) = v12, v13, *(v7 + 16)))
  {
    unsignedLongLongValue = [v9 unsignedLongLongValue];
    unsignedLongLongValue2 = [v11 unsignedLongLongValue];
    usesLiteMode = [*(v7 + 16) usesLiteMode];
    v17 = *(v7 + 16);
    if (usesLiteMode)
    {
      [v17 liteMSLPayloadforVMregionAddress:unsignedLongLongValue];
      uniquing_table_index = msl_payload_get_uniquing_table_index();
    }

    else
    {
      regionTracker = [v17 regionTracker];
      v20 = regionTracker;
      if (regionTracker)
      {
        v21 = [regionTracker vmRegionRangeInfoForRange:{unsignedLongLongValue, unsignedLongLongValue2}];
        uniquing_table_index = [v21 stackIdentifier];
      }

      else
      {
        uniquing_table_index = -1;
      }
    }

    if (uniquing_table_index == -1 || (v22 = [*(v7 + 16) getFramesForStackID:uniquing_table_index stackFramesBuffer:buf], v22 == -1))
    {
      v31 = sub_100001674();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v36 = 134218496;
        v37 = unsignedLongLongValue;
        v38 = 2048;
        v39 = &unsignedLongLongValue[unsignedLongLongValue2];
        v40 = 2048;
        v41 = unsignedLongLongValue2;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "unable to get VM region stack log for %#llx-%#llx [%llu]", &v36, 0x20u);
      }

      v26 = +[NSArray array];
    }

    else
    {
      v23 = v22;
      LODWORD(v24) = [*(v7 + 16) usesLiteMode] ^ 1;
      if (v23 > 0)
      {
        v24 = v24;
      }

      else
      {
        v24 = 0;
      }

      v25 = v23 - v24;
      v26 = [NSMutableArray arrayWithCapacity:v23 - v24];
      if (v25 >= 1)
      {
        v27 = 0;
        v28 = 1;
        do
        {
          v29 = [NSNumber numberWithUnsignedLongLong:*&buf[8 * v27]];
          [v26 setObject:v29 atIndexedSubscript:v27];

          v27 = v28;
        }

        while (v25 > v28++);
      }
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end