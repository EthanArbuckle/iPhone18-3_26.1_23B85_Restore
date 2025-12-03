@interface ThreadDiagnosticsManagerInstance
- (BOOL)generateThreadDiagnosticsMonitorLogs;
- (BOOL)shouldRunDiagnostics;
- (BOOL)updateNCPProperties;
- (basic_string<char,)getMLAddress;
- (basic_string<char,)getMLPrefix;
- (basic_string<char,)getNwName;
- (dict)threadDiagnosticsManagerInstance_MsgHandler:()basic_string<char message:()std:(std::allocator<char>> *)std :char_traits<char>;
- (id)init:(id)init;
- (int)getNCPState;
- (unint64_t)getXPanId;
- (unsigned)getChannel;
- (unsigned)getLeaderRouterID;
- (unsigned)getPanId;
- (unsigned)getPartitionId;
- (void)createDriverInterface:(id)interface;
- (void)handlePeriodicTimer;
- (void)send_nwdiagnostics_get_req;
- (void)setupCleanupTimer;
- (void)startThreadDiagnosticsTimer;
@end

@implementation ThreadDiagnosticsManagerInstance

- (BOOL)generateThreadDiagnosticsMonitorLogs
{
  v3 = *(NetworkDiagnosticsManager::getInstance(self) + 40);
  dispatch_suspend(self->_tdm_timer);
  v4 = dispatch_time(0, 0);
  dispatch_source_set_timer(self->_tdm_timer, v4, 1000000000 * v3, 0);
  dispatch_resume(self->_tdm_timer);
  v5 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "TDM: generateThreadDiagnosticsMonitorLogs sysdiagnose triggered thread diagnostics monitor curPeriodicity=%d", v7, 8u);
  }

  return 1;
}

- (id)init:(id)init
{
  initCopy = init;
  v9.receiver = self;
  v9.super_class = ThreadDiagnosticsManagerInstance;
  v6 = [(ThreadDiagnosticsManagerInstance *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fQueue, init);
    [(ThreadDiagnosticsManagerInstance *)v7 createDriverInterface:initCopy];
  }

  return v7;
}

- (BOOL)shouldRunDiagnostics
{
  v21.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v3 = *buf;
  v4 = buf[23];
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "isPrimaryResident");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v21];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if ((v20 & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_13:
    v9 = log_get_logging_obg("com.apple.wpantund.nm", "default");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    *&buf[4] = "[ThreadDiagnosticsManagerInstance shouldRunDiagnostics]";
    v10 = "%s : TDM Failed to get the isPrimaryResident Property";
    v11 = v9;
    v12 = 12;
    goto LABEL_15;
  }

  operator delete(__p[0]);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (any_to_BOOL(&v21))
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v10 = " TDM Current device isPrimaryResident, skip running periodic TDM";
    goto LABEL_9;
  }

  v15 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(v17, "tdm:periodicdiag:enable");
  if (v15)
  {
    [(CtrInternalClient *)v15 getProperty:v17 output:&v21];
    v16 = *buf == 0;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  memset(buf, 0, 32);
  v16 = 1;
  if (v8 < 0)
  {
LABEL_23:
    operator delete(v7);
  }

LABEL_24:
  v7 = *&buf[8];
  LOBYTE(v8) = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if ((v18 & 0x80000000) == 0)
  {
    if (v16)
    {
      goto LABEL_26;
    }

LABEL_32:
    v9 = log_get_logging_obg("com.apple.wpantund.nm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[ThreadDiagnosticsManagerInstance shouldRunDiagnostics]";
      *&buf[12] = 2080;
      *&buf[14] = "tdm:periodicdiag:enable";
      v10 = "%s : TDM Failed to get the property %s";
      v11 = v9;
      v12 = 22;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  operator delete(v17[0]);
  if (!v16)
  {
    goto LABEL_32;
  }

LABEL_26:
  if (!any_to_BOOL(&v21))
  {
    v9 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = " TDM Periodic diagnostics on this device disabled due to extended address logic";
LABEL_9:
      v11 = v9;
      v12 = 2;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
    }

LABEL_16:

    v13 = 0;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v13 = 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_17:
    operator delete(v7);
  }

LABEL_18:
  if (v21.var0)
  {
    (*(*v21.var0 + 8))(v21.var0);
  }

  return v13;
}

- (dict)threadDiagnosticsManagerInstance_MsgHandler:()basic_string<char message:()std:(std::allocator<char>> *)std :char_traits<char>
{
  v5 = v3;
  v8 = v4;
  v9 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    var0 = std;
    if (*(&std->var0.var1 + 23) < 0)
    {
      var0 = std->var0.var1.var0;
    }

    *buf = 136315138;
    *v113 = var0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Message received from client %s", buf, 0xCu);
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (!v11)
  {
    v12 = xpc_null_create();
  }

  v13 = v12;
  v14 = v13;
  *v8 = v13;
  if (!v13 || xpc_get_type(v13) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
    v16 = *v8;
    *v8 = v15;
  }

  v17 = xpc::dict::operator*(v5);
  string = xpc_dictionary_get_string(v17, "method");
  std::string::basic_string[abi:ne200100]<0>(&v111, string);

  v19 = xpc::dict::operator*(v5);
  v20 = xpc_dictionary_get_string(v19, "property_name");
  std::string::basic_string[abi:ne200100]<0>(__p, v20);

  if (!std::string::compare(&v111, "ConfigureThreadDiagnosticsManager"))
  {
    v24 = xpc::dict::operator*(v5);
    v25 = xpc_dictionary_get_BOOL(v24, "readcurrentConfig");

    if (v25)
    {
      v26 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Read current configuration from DB", buf, 2u);
      }

      Instance = NetworkDiagnosticsManager::getInstance(v27);
      v29 = atomic_load((Instance + 11736));
      if (v29)
      {
        v30 = xpc::dict::operator*(v8);
        xpc_dictionary_set_BOOL(v30, "expandEdges", *(Instance + 11737));

        v31 = xpc::dict::operator*(v8);
        xpc_dictionary_set_BOOL(v31, "processDns", *(Instance + 11738));

        v32 = xpc::dict::operator*(v8);
        xpc_dictionary_set_BOOL(v32, "enhancedTlvReq", *(Instance + 11739));

        v33 = xpc::dict::operator*(v8);
        xpc_dictionary_set_uint64(v33, "sendToChildren", *(Instance + 11740));

        v34 = xpc::dict::operator*(v8);
        xpc_dictionary_set_uint64(v34, "routerRspTimeout", *(Instance + 11744));

        v35 = xpc::dict::operator*(v8);
        xpc_dictionary_set_uint64(v35, "childRspTimeout", *(Instance + 11748));

        v36 = xpc::dict::operator*(v8);
        xpc_dictionary_set_uint64(v36, "periodicity", *(Instance + 11760));

        v37 = xpc::dict::operator*(v8);
        xpc_dictionary_set_uint64(v37, "browseTimeout", *(Instance + 11752));

        v38 = xpc::dict::operator*(v8);
        xpc_dictionary_set_uint64(v38, "resolveTimeout", *(Instance + 11756));
      }

      else
      {
        v75 = xpc::dict::operator*(v8);
        v76 = NetworkDiagnosticsManager::getInstance(v75);
        xpc_dictionary_set_BOOL(v75, "expandEdges", *(v76 + 48));

        v77 = xpc::dict::operator*(v8);
        v78 = NetworkDiagnosticsManager::getInstance(v77);
        xpc_dictionary_set_BOOL(v77, "processDns", *(v78 + 49));

        v79 = xpc::dict::operator*(v8);
        v80 = NetworkDiagnosticsManager::getInstance(v79);
        xpc_dictionary_set_BOOL(v79, "enhancedTlvReq", *(v80 + 50));

        v81 = xpc::dict::operator*(v8);
        v82 = NetworkDiagnosticsManager::getInstance(v81);
        xpc_dictionary_set_uint64(v81, "sendToChildren", *(v82 + 44));

        v83 = xpc::dict::operator*(v8);
        v84 = NetworkDiagnosticsManager::getInstance(v83);
        xpc_dictionary_set_uint64(v83, "routerRspTimeout", *(v84 + 32));

        v85 = xpc::dict::operator*(v8);
        v86 = NetworkDiagnosticsManager::getInstance(v85);
        xpc_dictionary_set_uint64(v85, "childRspTimeout", *(v86 + 36));

        v87 = xpc::dict::operator*(v8);
        v88 = NetworkDiagnosticsManager::getInstance(v87);
        xpc_dictionary_set_uint64(v87, "periodicity", *(v88 + 40));

        v89 = xpc::dict::operator*(v8);
        v90 = NetworkDiagnosticsManager::getInstance(v89);
        xpc_dictionary_set_uint64(v89, "browseTimeout", *(v90 + 24));

        v38 = xpc::dict::operator*(v8);
        v91 = NetworkDiagnosticsManager::getInstance(v38);
        xpc_dictionary_set_uint64(v38, "resolveTimeout", *(v91 + 28));
      }

      goto LABEL_31;
    }

    v50 = xpc::dict::operator*(v5);
    v105 = xpc_dictionary_get_BOOL(v50, "expandEdges");

    v51 = xpc::dict::operator*(v5);
    v107 = xpc_dictionary_get_BOOL(v51, "processDns");

    v52 = xpc::dict::operator*(v5);
    v106 = xpc_dictionary_get_BOOL(v52, "enhancedTlvReq");

    v53 = xpc::dict::operator*(v5);
    v54 = xpc_dictionary_get_BOOL(v53, "oneshotmode");

    v55 = xpc::dict::operator*(v5);
    uint64 = xpc_dictionary_get_uint64(v55, "sendToChildren");

    v57 = xpc::dict::operator*(v5);
    v58 = xpc_dictionary_get_uint64(v57, "routerRspTimeout");

    v59 = xpc::dict::operator*(v5);
    v60 = xpc_dictionary_get_uint64(v59, "childRspTimeout");

    v61 = xpc::dict::operator*(v5);
    v62 = xpc_dictionary_get_uint64(v61, "browseTimeout");

    v63 = xpc::dict::operator*(v5);
    v64 = xpc_dictionary_get_uint64(v63, "resolveTimeout");

    v65 = xpc::dict::operator*(v5);
    v66 = xpc_dictionary_get_uint64(v65, "periodicity");

    v68 = NetworkDiagnosticsManager::getInstance(v67);
    NetworkDiagnosticsManager::updatePendingConfig(v68, v105, v107, v106, uint64, v58, v60, v62, v64, v66);
    v69 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 136317698;
      *v113 = "[ThreadDiagnosticsManagerInstance threadDiagnosticsManagerInstance_MsgHandler:message:]";
      *&v113[8] = 1024;
      v114 = v54;
      v115 = 1024;
      v116 = v107;
      v117 = 1024;
      v118 = v106;
      v119 = 1024;
      v120 = v54;
      v121 = 1024;
      v122 = uint64;
      v123 = 1024;
      v124 = v58;
      v125 = 1024;
      v126 = v60;
      v127 = 1024;
      v128 = v62;
      v129 = 1024;
      v130 = v64;
      v131 = 1024;
      v132 = v66;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "%s oneshotmodeflag=%d processDnsFlag=%d enhancedTlvReq=%d oneshotmodeFlag=%d sendToChildren=%d routerRspTimeoutInSecs=%d childRspTimeoutInSecs=%d browseTimeoutInSecs=%d resolveTimeoutInSecs=%d periodicityInSecs=%d : updated ThreadDiagnosticsManager pending configuration ", buf, 0x48u);
    }

    v71 = NetworkDiagnosticsManager::getInstance(v70);
    if (v54)
    {
      dispatch_suspend(self->_tdm_timer);
      *(NetworkDiagnosticsManager::getInstance(v72) + 40) = 0;
      v73 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "TDM: Oneshotmode stop the timer", buf, 2u);
      }

      fQueue = self->_fQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __88__ThreadDiagnosticsManagerInstance_threadDiagnosticsManagerInstance_MsgHandler_message___block_invoke;
      block[3] = &unk_1004C85F8;
      block[4] = self;
      dispatch_async(fQueue, block);
      goto LABEL_31;
    }

    v100 = *(v71 + 40);
    if (v66)
    {
      if (!v100)
      {
        v103 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
        if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v113 = v66;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "TDM: Resume TDM timer. start diagnostics again periodicityInSecs=%d", buf, 8u);
        }

        v104 = dispatch_time(0, 0);
        dispatch_source_set_timer(self->_tdm_timer, v104, 1000000000 * v66, 0);
        dispatch_resume(self->_tdm_timer);
        goto LABEL_31;
      }

      if (v100 != v66)
      {
        dispatch_suspend(self->_tdm_timer);
        v101 = dispatch_time(0, 0);
        dispatch_source_set_timer(self->_tdm_timer, v101, 1000000000 * v66, 0);
        dispatch_resume(self->_tdm_timer);
        v49 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *v113 = v100;
          *&v113[4] = 1024;
          *&v113[6] = v66;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "TDM: Periodicity changed. Suspend and Resume TDM timer with new periodicity curPeriodicity=%d periodicityInSecs=%d", buf, 0xEu);
        }

        goto LABEL_52;
      }
    }

    else if (v100)
    {
      dispatch_suspend(self->_tdm_timer);
      *(NetworkDiagnosticsManager::getInstance(v102) + 40) = 0;
      v49 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *v113 = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "TDM: Stop the timer as requested by client. periodicityInSecs=%d", buf, 8u);
      }

      goto LABEL_52;
    }

LABEL_31:
    v23 = 0;
    goto LABEL_32;
  }

  v21 = std::string::compare(&v111, "GenerateDiagnostics");
  if (!v21)
  {
    v39 = *(NetworkDiagnosticsManager::getInstance(v21) + 40);
    dispatch_suspend(self->_tdm_timer);
    v41 = NetworkDiagnosticsManager::getInstance(v40);
    v42 = NetworkDiagnosticsManager::getInstance(v41);
    v43 = *(v42 + 11);
    v44 = NetworkDiagnosticsManager::getInstance(v42);
    v45 = *(v44 + 49);
    *(v41 + 6736) = 1;
    *(v41 + 6744) = v45;
    *(v41 + 6740) = v43;
    v46 = NetworkDiagnosticsManager::getInstance(v44);
    v47 = NetworkDiagnosticsManager::getInstance(v46);
    *(v47 + 11) = 0;
    *(NetworkDiagnosticsManager::getInstance(v47) + 49) = 0;
    v48 = dispatch_time(0, 0);
    dispatch_source_set_timer(self->_tdm_timer, v48, 1000000000 * v39, 0);
    dispatch_resume(self->_tdm_timer);
    v49 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v113 = v39;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "TDM: sysdiagnose triggered thread diagnostics monitor curPeriodicity=%d", buf, 8u);
    }

LABEL_52:

    goto LABEL_31;
  }

  v22 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [(ThreadDiagnosticsManagerInstance *)&std->var0.var1 threadDiagnosticsManagerInstance_MsgHandler:v22 message:?];
  }

  v23 = 1;
LABEL_32:
  v92 = xpc::dict::operator*(v8);
  v93 = v92;
  if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v94 = &v111;
  }

  else
  {
    v94 = v111.__r_.__value_.__r.__words[0];
  }

  xpc_dictionary_set_string(v92, "method", v94);

  v95 = xpc::dict::operator*(v8);
  v96 = v95;
  if (v110 >= 0)
  {
    v97 = __p;
  }

  else
  {
    v97 = __p[0];
  }

  xpc_dictionary_set_string(v95, "property_name", v97);

  v98 = xpc::dict::operator*(v8);
  xpc_dictionary_set_int64(v98, "ret", v23);

  if (v110 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  return v99;
}

- (void)createDriverInterface:(id)interface
{
  interfaceCopy = interface;
  objc_initWeak(&location, self);
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("wpantund.TDM.SendQueue", v5);
  sendQueue = self->_sendQueue;
  self->_sendQueue = v6;

  if (!self->_sendQueue)
  {
    v12 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ThreadDiagnosticsManagerInstance *)v12 createDriverInterface:v13, v14, v15, v16, v17, v18, v19];
    }

    __assert_rtn("[ThreadDiagnosticsManagerInstance createDriverInterface:]", "ThreadDiagnosticsManagerInstance.mm", 314, "false");
  }

  v8 = [[CtrInternalClient alloc] init:"TDM-Internal"];
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  self->_CtrInternalClientPtr = v8;

  v10 = self->_CtrInternalClientPtr;
  std::string::basic_string[abi:ne200100]<0>(__p, "vendor:networkdiagnosticsrsp");
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __58__ThreadDiagnosticsManagerInstance_createDriverInterface___block_invoke;
  v21[3] = &unk_1004C8BD8;
  objc_copyWeak(&v22, &location);
  v21[4] = self;
  v20 = self->_fQueue;
  [(CtrInternalClient *)v10 setEventHandler:__p InternalClientEventBlock:v21 dqueue:&v20];
  v11 = v20;
  v20 = 0;

  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  [(ThreadDiagnosticsManagerInstance *)self startThreadDiagnosticsTimer];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __58__ThreadDiagnosticsManagerInstance_createDriverInterface___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "vendor:networkdiagnosticsrsp";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s TDM-Internal got TDM_NwDiagnostics_RspEvent\n", buf, 0xCu);
  }

  v6 = boost::any_cast<nl::Data>(a2);
  Instance = NetworkDiagnosticsManager::getInstance(v6);
  v8 = *(v6 + 1);
  if (*v6 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  NetworkDiagnosticsManager::handle_networkdiagnostics_response(Instance, v9, (v8 - *v6));
  v10 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__ThreadDiagnosticsManagerInstance_createDriverInterface___block_invoke_29;
  block[3] = &unk_1004C85F8;
  v13 = WeakRetained;
  v11 = WeakRetained;
  dispatch_async(v10, block);
}

id __58__ThreadDiagnosticsManagerInstance_createDriverInterface___block_invoke_29(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Async call to send_nwdiagnostics_get_req", v3, 2u);
  }

  return [*(a1 + 32) send_nwdiagnostics_get_req];
}

- (int)getNCPState
{
  std::string::basic_string[abi:ne200100]<0>(__p, "Command Error");
  v3 = __p[0];
  v4 = SBYTE7(v23);
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v17.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(v15, "NCP:State");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:v15 output:&v17];
    v6 = LODWORD(__p[0]) == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *__p = 0u;
  v23 = 0u;
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = __p[1];
  v8 = SHIBYTE(v23);
  HIBYTE(v23) = 0;
  LOBYTE(__p[1]) = 0;
  if (v16 < 0)
  {
    operator delete(v15[0]);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
LABEL_6:
    any_to_string(&v17, __p);
    if ((SBYTE7(v23) & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : TDM NCP State Property", buf, 0xCu);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, v9);
    v11 = nl::wpantund::string_to_ncp_state(buf);
    if (v21 < 0)
    {
      operator delete(*buf);
    }

    v12 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = v9;
      v19 = 1024;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "TDM read NCP state as: %s, %d \n", buf, 0x12u);
    }

    if (SBYTE7(v23) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_23;
  }

  v13 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = "[ThreadDiagnosticsManagerInstance getNCPState]";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : TDM Failed to get the NCP State Property", __p, 0xCu);
  }

  v11 = 0;
LABEL_23:
  if (v17.var0)
  {
    (*(*v17.var0 + 8))(v17.var0);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  return v11;
}

- (basic_string<char,)getMLPrefix
{
  v2 = v1;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v4 = *buf;
  v5 = buf[23];
  v6 = *(v2 + 8);
  retstr->var0.var1.var0 = 0;
  retstr->var0.var1.var1 = 0;
  *(&retstr->var0.var1 + 2) = 0;
  v22.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "IPv6:MeshLocalPrefix");
  if (v6)
  {
    [v6 getProperty:__p output:&v22];
    v7 = *buf == 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v7 = 1;
  if (v5 < 0)
  {
LABEL_3:
    operator delete(v4);
  }

LABEL_4:
  v8 = *&buf[8];
  v9 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_6:
      any_to_string(&v22, buf);
      *retstr->var0.var0.var0 = *buf;
      *(&retstr->var0.var1 + 2) = *&buf[16];
      v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        if (*(&retstr->var0.var1 + 23) >= 0)
        {
          var0 = retstr;
        }

        else
        {
          var0 = retstr->var0.var1.var0;
        }

        *buf = 136315394;
        *&buf[4] = "[ThreadDiagnosticsManagerInstance getMLPrefix]";
        *&buf[12] = 2080;
        *&buf[14] = var0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : TDM NCP MLPrefix=%s", buf, 0x16u);
      }

      goto LABEL_16;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(ThreadDiagnosticsManagerInstance *)v10 getMLPrefix:v12];
  }

LABEL_16:

  result = v22.var0;
  if (v22.var0)
  {
    result = (*(*v22.var0 + 8))(v22.var0);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  return result;
}

- (basic_string<char,)getMLAddress
{
  v2 = v1;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v4 = *buf;
  v5 = buf[23];
  v6 = *(v2 + 8);
  retstr->var0.var1.var0 = 0;
  retstr->var0.var1.var1 = 0;
  *(&retstr->var0.var1 + 2) = 0;
  v22.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "IPv6:MeshLocalAddress");
  if (v6)
  {
    [v6 getProperty:__p output:&v22];
    v7 = *buf == 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v7 = 1;
  if (v5 < 0)
  {
LABEL_3:
    operator delete(v4);
  }

LABEL_4:
  v8 = *&buf[8];
  v9 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_6:
      any_to_string(&v22, buf);
      *retstr->var0.var0.var0 = *buf;
      *(&retstr->var0.var1 + 2) = *&buf[16];
      v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        if (*(&retstr->var0.var1 + 23) >= 0)
        {
          var0 = retstr;
        }

        else
        {
          var0 = retstr->var0.var1.var0;
        }

        *buf = 136315394;
        *&buf[4] = "[ThreadDiagnosticsManagerInstance getMLAddress]";
        *&buf[12] = 2080;
        *&buf[14] = var0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : TDM NCP MLAddress=%s", buf, 0x16u);
      }

      goto LABEL_16;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(ThreadDiagnosticsManagerInstance *)v10 getMLAddress:v12];
  }

LABEL_16:

  result = v22.var0;
  if (v22.var0)
  {
    result = (*(*v22.var0 + 8))(v22.var0);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  return result;
}

- (basic_string<char,)getNwName
{
  v2 = v1;
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v4 = *buf;
  v5 = buf[23];
  v6 = *(v2 + 8);
  retstr->var0.var1.var0 = 0;
  retstr->var0.var1.var1 = 0;
  *(&retstr->var0.var1 + 2) = 0;
  v22.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "Network:Name");
  if (v6)
  {
    [v6 getProperty:__p output:&v22];
    v7 = *buf == 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v7 = 1;
  if (v5 < 0)
  {
LABEL_3:
    operator delete(v4);
  }

LABEL_4:
  v8 = *&buf[8];
  v9 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_6:
      any_to_string(&v22, buf);
      *retstr->var0.var0.var0 = *buf;
      *(&retstr->var0.var1 + 2) = *&buf[16];
      v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        if (*(&retstr->var0.var1 + 23) >= 0)
        {
          var0 = retstr;
        }

        else
        {
          var0 = retstr->var0.var1.var0;
        }

        *buf = 136315394;
        *&buf[4] = "[ThreadDiagnosticsManagerInstance getNwName]";
        *&buf[12] = 2080;
        *&buf[14] = var0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : TDM NCP NwName=%s", buf, 0x16u);
      }

      goto LABEL_16;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(ThreadDiagnosticsManagerInstance *)v10 getNwName:v12];
  }

LABEL_16:

  result = v22.var0;
  if (v22.var0)
  {
    result = (*(*v22.var0 + 8))(v22.var0);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  return result;
}

- (unsigned)getLeaderRouterID
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v3 = *buf;
  v4 = buf[23];
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v21.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "Thread:Leader:RouterID");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v21];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_6:
      v9 = any_to_int(&v21);
      v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[ThreadDiagnosticsManagerInstance getLeaderRouterID]";
        *&buf[12] = 1024;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : TDM NCP Leader Router ID=%d", buf, 0x12u);
      }

      goto LABEL_14;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(ThreadDiagnosticsManagerInstance *)v10 getLeaderRouterID:v11];
  }

  v9 = 255;
LABEL_14:

  if (v21.var0)
  {
    (*(*v21.var0 + 8))(v21.var0);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  return v9;
}

- (unsigned)getChannel
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v3 = *buf;
  v4 = buf[23];
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v21.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "NCP:Channel");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v21];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_6:
      v9 = any_to_int(&v21);
      v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[ThreadDiagnosticsManagerInstance getChannel]";
        *&buf[12] = 1024;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : TDM NCP Channel=%d", buf, 0x12u);
      }

      goto LABEL_14;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(ThreadDiagnosticsManagerInstance *)v10 getChannel:v11];
  }

  v9 = 255;
LABEL_14:

  if (v21.var0)
  {
    (*(*v21.var0 + 8))(v21.var0);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  return v9;
}

- (unsigned)getPartitionId
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v3 = *buf;
  v4 = buf[23];
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v21.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "Network:PartitionId");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v21];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_6:
      v9 = any_to_int(&v21);
      v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[ThreadDiagnosticsManagerInstance getPartitionId]";
        *&buf[12] = 1024;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : TDM NCP PartitionId=%d", buf, 0x12u);
      }

      goto LABEL_14;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(ThreadDiagnosticsManagerInstance *)v10 getPartitionId:v11];
  }

  v9 = 255;
LABEL_14:

  if (v21.var0)
  {
    (*(*v21.var0 + 8))(v21.var0);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  return v9;
}

- (unsigned)getPanId
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v3 = *buf;
  v4 = buf[23];
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v21.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "Network:PANID");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v21];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_6:
      v9 = any_to_int(&v21);
      v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[ThreadDiagnosticsManagerInstance getPanId]";
        *&buf[12] = 1024;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : TDM NCP Channel=%d", buf, 0x12u);
      }

      goto LABEL_14;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(ThreadDiagnosticsManagerInstance *)v10 getPanId:v11];
  }

  v9 = 255;
LABEL_14:

  if (v21.var0)
  {
    (*(*v21.var0 + 8))(v21.var0);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  return v9;
}

- (unint64_t)getXPanId
{
  std::string::basic_string[abi:ne200100]<0>(buf, "Command Error");
  v3 = *buf;
  v4 = buf[23];
  CtrInternalClientPtr = self->_CtrInternalClientPtr;
  v21.var0 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "Network:XPANID");
  if (CtrInternalClientPtr)
  {
    [CtrInternalClientPtr getProperty:__p output:&v21];
    v6 = *buf == 0;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(buf, 0, 32);
  v6 = 1;
  if (v4 < 0)
  {
LABEL_3:
    operator delete(v3);
  }

LABEL_4:
  v7 = *&buf[8];
  v8 = buf[31];
  buf[31] = 0;
  buf[8] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_6:
      v9 = any_to_uint64(&v21, 0);
      v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[ThreadDiagnosticsManagerInstance getXPanId]";
        *&buf[12] = 2048;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : TDM NCP XPanId=%llu", buf, 0x16u);
      }

      goto LABEL_14;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v10 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(ThreadDiagnosticsManagerInstance *)v10 getXPanId:v11];
  }

  v9 = 255;
LABEL_14:

  if (v21.var0)
  {
    (*(*v21.var0 + 8))(v21.var0);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  return v9;
}

- (void)send_nwdiagnostics_get_req
{
  Instance = NetworkDiagnosticsManager::getInstance(self);
  v4 = *(Instance + 11728);
  v5 = *(Instance + 11712);
  v6 = *(Instance + 11704);
  inited = objc_initWeak(&location, self);
  if (v4)
  {
    v8 = objc_loadWeakRetained(&location);
    if (v8)
    {
      v9 = 0x8E38E38E38E38E39 * ((v5 - v6) >> 2);
      if (v9)
      {
        v10 = 0;
        v11 = 36 * (v9 - 1);
        v12 = 36 * v9;
        do
        {
          v13 = (*(Instance + 11704) + v10);
          v14 = v13[1];
          v21 = *v13;
          v22 = v14;
          v23 = *(v13 + 8);
          ctrInternalClientPtr = [v8 CtrInternalClientPtr];
          v19[0] = v21;
          v19[1] = v22;
          v20 = v23;
          [ctrInternalClientPtr send_diagnostics_req:v19];
          if (v17 < 0)
          {
            operator delete(__p);
          }

          if (v11 != v10)
          {
            usleep(0x186A0u);
          }

          v10 += 36;
        }

        while (v12 != v10);
      }
    }
  }

  *(NetworkDiagnosticsManager::getInstance(inited) + 11728) = 0;
  objc_destroyWeak(&location);
}

- (BOOL)updateNCPProperties
{
  [(ThreadDiagnosticsManagerInstance *)self getMLPrefix];
  size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v40.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    [(ThreadDiagnosticsManagerInstance *)self getMLAddress];
    v4 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v39.__r_.__value_.__l.__size_;
    }

    v5 = v4 != 0;
    if (v4)
    {
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v7 = v40.__r_.__value_.__r.__words[0];
        v6 = --v40.__r_.__value_.__l.__size_;
      }

      else
      {
        v6 = SHIBYTE(v40.__r_.__value_.__r.__words[2]) - 1;
        *(&v40.__r_.__value_.__s + 23) = v6 & 0x7F;
        v7 = &v40;
      }

      v7->__r_.__value_.__s.__data_[v6] = 0;
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v25 = v40.__r_.__value_.__r.__words[0];
        v24 = --v40.__r_.__value_.__l.__size_;
      }

      else
      {
        v24 = SHIBYTE(v40.__r_.__value_.__r.__words[2]) - 1;
        *(&v40.__r_.__value_.__s + 23) = v24 & 0x7F;
        v25 = &v40;
      }

      v25->__r_.__value_.__s.__data_[v24] = 0;
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v27 = v40.__r_.__value_.__r.__words[0];
        v26 = --v40.__r_.__value_.__l.__size_;
      }

      else
      {
        v26 = SHIBYTE(v40.__r_.__value_.__r.__words[2]) - 1;
        *(&v40.__r_.__value_.__s + 23) = v26 & 0x7F;
        v27 = &v40;
      }

      v27->__r_.__value_.__s.__data_[v26] = 0;
      getPanId = [(ThreadDiagnosticsManagerInstance *)self getPanId];
      [(ThreadDiagnosticsManagerInstance *)self getNwName];
      getPartitionId = [(ThreadDiagnosticsManagerInstance *)self getPartitionId];
      getChannel = [(ThreadDiagnosticsManagerInstance *)self getChannel];
      getLeaderRouterID = [(ThreadDiagnosticsManagerInstance *)self getLeaderRouterID];
      getXPanId = [(ThreadDiagnosticsManagerInstance *)self getXPanId];
      Instance = NetworkDiagnosticsManager::getInstance(getXPanId);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
      }

      else
      {
        v37 = v40;
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
      }

      else
      {
        v36 = v39;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v35, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v35 = __p;
      }

      NetworkDiagnosticsManager::updateNCPProperties(Instance, &v37, &v36, &v35, getPanId, getXPanId, getChannel, getLeaderRouterID, getPartitionId);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v16 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(ThreadDiagnosticsManagerInstance *)v16 updateNCPProperties:v17];
      }
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ThreadDiagnosticsManagerInstance *)v8 updateNCPProperties:v9];
    }

    v5 = 0;
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  return v5;
}

- (void)setupCleanupTimer
{
  v3 = *(NetworkDiagnosticsManager::getInstance(self) + 6736);
  v4 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    v6 = 12000000000;
    if (v5)
    {
      v9 = 67109120;
      v10 = 12;
      v7 = "Setup cleanup timer after %d s for sysdiag trigger";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v7, &v9, 8u);
    }
  }

  else
  {
    v6 = 120000000000;
    if (v5)
    {
      v9 = 67109120;
      v10 = 120;
      v7 = "Setup cleanup timer after %d s";
      goto LABEL_6;
    }
  }

  v8 = dispatch_time(0, v6);
  dispatch_after(v8, self->_fQueue, &__block_literal_global_14);
}

void __53__ThreadDiagnosticsManagerInstance_setupCleanupTimer__block_invoke(id a1)
{
  v1 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[ThreadDiagnosticsManagerInstance setupCleanupTimer]_block_invoke";
    v6 = 1024;
    v7 = 914;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s:%d Cleanup Timer Fired !!! ", &v4, 0x12u);
  }

  Instance = NetworkDiagnosticsManager::getInstance(v2);
  NetworkDiagnosticsManager::cleanupForNextIteration(Instance);
}

- (void)handlePeriodicTimer
{
  if ([(ThreadDiagnosticsManagerInstance *)self getNCPState]!= 8)
  {
    v17 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = 0;
      v18 = "TDM: handlePeriodicTimer return here as NCP state is not associated";
      v19 = &v22;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v18, v19, 2u);
    }

LABEL_13:

    return;
  }

  shouldRunDiagnostics = [(ThreadDiagnosticsManagerInstance *)self shouldRunDiagnostics];
  if ((shouldRunDiagnostics & 1) == 0)
  {
    v17 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v18 = "TDM: handlePeriodicTimer return here as additional checks failed to run TDM on this device (primary resident or extaddr not in the list)";
      v19 = buf;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  Instance = NetworkDiagnosticsManager::getInstance(shouldRunDiagnostics);
  v5 = NetworkDiagnosticsManager::cleanup(Instance, 0, 1);
  v6 = NetworkDiagnosticsManager::getInstance(v5);
  NetworkDiagnosticsManager::initialize(v6);
  if (![(ThreadDiagnosticsManagerInstance *)self updateNCPProperties])
  {
    v7 = log_get_logging_obg("com.apple.wpantund.tdm", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ThreadDiagnosticsManagerInstance *)v7 handlePeriodicTimer:v8];
    }
  }

  v15 = NetworkDiagnosticsManager::getInstance([(ThreadDiagnosticsManagerInstance *)self setupCleanupTimer]);
  NetworkDiagnosticsManager::startDiagnostics(v15);
  v16 = objc_initWeak(&location, self);
  [(ThreadDiagnosticsManagerInstance *)self send_nwdiagnostics_get_req];

  objc_destroyWeak(&location);
}

- (void)startThreadDiagnosticsTimer
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_fQueue);
  tdm_timer = self->_tdm_timer;
  self->_tdm_timer = v3;

  v5 = rand() % 300;
  v6 = dispatch_time(0, 1000000000 * (v5 + 300));
  v7 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v12 = 300;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "TDM: startThreadDiagnosticsTimer period:%d, rand_offset(%d)", buf, 0xEu);
  }

  dispatch_source_set_timer(self->_tdm_timer, v6, 0x34884C48400uLL, 0);
  v8 = self->_tdm_timer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __63__ThreadDiagnosticsManagerInstance_startThreadDiagnosticsTimer__block_invoke;
  handler[3] = &unk_1004C85F8;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_activate(self->_tdm_timer);
  v9 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v12 = 3610;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "TDM: startThreadDiagnosticsTimer : Timer periodicity(s)=%d", buf, 8u);
  }
}

void __63__ThreadDiagnosticsManagerInstance_startThreadDiagnosticsTimer__block_invoke(uint64_t a1)
{
  v2 = log_get_logging_obg("com.apple.wpantund.tnm", "default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "TDM: startThreadDiagnosticsTimer : Timer Triggered", __p, 2u);
  }

  [*(a1 + 32) handlePeriodicTimer];
  std::string::basic_string[abi:ne200100]<0>(__p, "Command Error");
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)threadDiagnosticsManagerInstance_MsgHandler:(os_log_t)log message:.cold.1(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = 136315394;
  v5 = a1;
  v6 = 2080;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Wrong message received from client %s for method %s ", &v4, 0x16u);
}

@end