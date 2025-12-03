@interface IMRemoteURLConnection
- (IMRemoteURLConnection)initWithURLRequest:(id)request completionBlock:(id)block;
- (IMRemoteURLConnection)initWithURLRequest:(id)request completionBlockWithTimingData:(id)data;
- (void)_direct_cancel;
- (void)_direct_load;
- (void)cancel;
- (void)dealloc;
- (void)load;
@end

@implementation IMRemoteURLConnection

- (void)load
{
  if (!self->_loading)
  {
    self->_cancelled = 0;
    (MEMORY[0x1EEE66B58])(self, sel__direct_load);
  }
}

- (void)_direct_load
{
  v130 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(self->_request, a2, v2);
  if (objc_msgSend_forceCellularIfPossible(self, v5, v6) && (objc_msgSend_sharedInstance(IMMobileNetworkManager, v7, v8), v9 = objc_claimAutoreleasedReturnValue(), isDataConnectionActive = objc_msgSend_isDataConnectionActive(v9, v10, v11), v9, isDataConnectionActive))
  {
    v13 = IMPCInterfaceName();
    v16 = objc_msgSend_length(v13, v14, v15);
  }

  else
  {
    v13 = 0;
    v16 = objc_msgSend_length(0, v7, v8);
  }

  if (v16)
  {
    objc_msgSend_setBoundInterfaceIdentifier_(v4, v17, v13);
  }

  if (objc_msgSend_disableKeepAlive(self, v17, v18))
  {
    objc_msgSend_addValue_forHTTPHeaderField_(v4, v19, @"close", @"Connection");
  }

  shouldUsePipelining = objc_msgSend_shouldUsePipelining(self, v19, v20);
  objc_msgSend_setHTTPShouldUsePipelining_(v4, v22, shouldUsePipelining);
  v25 = objc_msgSend_ephemeralSessionConfiguration(MEMORY[0x1E696AF80], v23, v24);
  v28 = objc_msgSend_bundleIdentifierForDataUsage(self, v26, v27);

  if (v28)
  {
    v31 = objc_msgSend_bundleIdentifierForDataUsage(self, v29, v30);
    objc_msgSend_set_sourceApplicationBundleIdentifier_(v25, v32, v31);
  }

  if (objc_msgSend_concurrentConnections(self, v29, v30) >= 1 && objc_msgSend_concurrentConnections(self, v33, v34) <= 49)
  {
    v35 = objc_msgSend_concurrentConnections(self, v33, v34);
    objc_msgSend_setHTTPMaximumConnectionsPerHost_(v25, v36, v35);
  }

  if (objc_msgSend_keepAliveWifi(self, v33, v34) >= 1 && objc_msgSend_keepAliveWifi(self, v37, v38) < 600000)
  {
    v39 = objc_msgSend_keepAliveWifi(self, v37, v38);
    objc_msgSend_set_connectionCachePurgeTimeout_(v25, v40, v41, v39);
  }

  if (objc_msgSend_keepAliveCell(self, v37, v38) >= 1 && objc_msgSend_keepAliveCell(self, v42, v43) < 600000)
  {
    v44 = objc_msgSend_keepAliveCell(self, v42, v43);
    objc_msgSend_set_connectionCacheCellPurgeTimeout_(v25, v45, v46, v44);
  }

  if (objc_msgSend_allowsUltraConstrainedNetworks(self, v42, v43))
  {
    objc_msgSend__setAllowsUCA_(v25, v47, 1);
  }

  if (objc_msgSend_shouldReturnTimingData(self, v47, v48))
  {
    objc_msgSend_set_timingDataOptions_(v25, v49, 132);
  }

  v51 = objc_msgSend_URLLoading(IMIDSLog, v49, v50);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    request = self->_request;
    *buf = 138412290;
    v129 = request;
    _os_log_impl(&dword_195988000, v51, OS_LOG_TYPE_DEFAULT, "Beginning direct load of URL request: %@", buf, 0xCu);
  }

  v55 = objc_msgSend_URLLoading(IMIDSLog, v53, v54);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_forceCellularIfPossible(self, v56, v57))
    {
      v58 = @"YES";
    }

    else
    {
      v58 = @"NO";
    }

    *buf = 138412290;
    v129 = v58;
    _os_log_impl(&dword_195988000, v55, OS_LOG_TYPE_DEFAULT, " Try force cell: %@", buf, 0xCu);
  }

  v61 = objc_msgSend_URLLoading(IMIDSLog, v59, v60);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v64 = objc_msgSend_bundleIdentifierForDataUsage(self, v62, v63);
    *buf = 138412290;
    v129 = v64;
    _os_log_impl(&dword_195988000, v61, OS_LOG_TYPE_DEFAULT, " data usage identifier: %@", buf, 0xCu);
  }

  v67 = objc_msgSend_URLLoading(IMIDSLog, v65, v66);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_requireIDSHost(self, v68, v69))
    {
      v70 = @"YES";
    }

    else
    {
      v70 = @"NO";
    }

    *buf = 138412290;
    v129 = v70;
    _os_log_impl(&dword_195988000, v67, OS_LOG_TYPE_DEFAULT, " requireIDSHost: %@", buf, 0xCu);
  }

  v73 = objc_msgSend_URLLoading(IMIDSLog, v71, v72);
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_shouldUsePipelining(self, v74, v75))
    {
      v76 = @"YES";
    }

    else
    {
      v76 = @"NO";
    }

    *buf = 138412290;
    v129 = v76;
    _os_log_impl(&dword_195988000, v73, OS_LOG_TYPE_DEFAULT, " shouldUsePipelining: %@", buf, 0xCu);
  }

  v79 = objc_msgSend_URLLoading(IMIDSLog, v77, v78);
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    v82 = objc_msgSend_concurrentConnections(self, v80, v81);
    *buf = 67109120;
    LODWORD(v129) = v82;
    _os_log_impl(&dword_195988000, v79, OS_LOG_TYPE_DEFAULT, " concurreentConnection: %d", buf, 8u);
  }

  v85 = objc_msgSend_URLLoading(IMIDSLog, v83, v84);
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_msgSend_disableKeepAlive(self, v86, v87))
    {
      v88 = @"YES";
    }

    else
    {
      v88 = @"NO";
    }

    *buf = 138412290;
    v129 = v88;
    _os_log_impl(&dword_195988000, v85, OS_LOG_TYPE_DEFAULT, " disableKeepAlive: %@", buf, 0xCu);
  }

  v91 = objc_msgSend_URLLoading(IMIDSLog, v89, v90);
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    v94 = MEMORY[0x1E696AD98];
    v95 = objc_msgSend_keepAliveWifi(self, v92, v93);
    v97 = objc_msgSend_numberWithInt_(v94, v96, v95);
    *buf = 138412290;
    v129 = v97;
    _os_log_impl(&dword_195988000, v91, OS_LOG_TYPE_DEFAULT, " keepAliveWifi: %@", buf, 0xCu);
  }

  v100 = objc_msgSend_URLLoading(IMIDSLog, v98, v99);
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    v103 = MEMORY[0x1E696AD98];
    v104 = objc_msgSend_keepAliveCell(self, v101, v102);
    v106 = objc_msgSend_numberWithInt_(v103, v105, v104);
    *buf = 138412290;
    v129 = v106;
    _os_log_impl(&dword_195988000, v100, OS_LOG_TYPE_DEFAULT, " keepAliveCell: %@", buf, 0xCu);
  }

  v109 = objc_msgSend_URLLoading(IMIDSLog, v107, v108);
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
  {
    shouldReturnTimingData = objc_msgSend_shouldReturnTimingData(self, v110, v111);
    v113 = @"YES";
    if (!shouldReturnTimingData)
    {
      v113 = @"NO";
    }

    *buf = 138412290;
    v129 = v113;
    _os_log_impl(&dword_195988000, v109, OS_LOG_TYPE_DEFAULT, " shouldReturnTimingData: %@", buf, 0xCu);
  }

  v114 = im_primary_queue();
  v117 = objc_msgSend_requireIDSHost(self, v115, v116);
  v119 = objc_msgSend_sessionWithConfiguration_queue_requiresIDSHost_(IMURLRequestSession, v118, v25, v114, v117);
  URLSession = self->_URLSession;
  self->_URLSession = v119;

  v121 = self->_URLSession;
  v122 = self->_request;
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = sub_1959C9D0C;
  v127[3] = &unk_1E7439BC8;
  v127[4] = self;
  objc_msgSend_performRequest_completionBlockWithTimingData_(v121, v123, v122, v127);
  objc_msgSend_finishTasksAndInvalidate(self->_URLSession, v124, v125);

  v126 = *MEMORY[0x1E69E9840];
}

- (IMRemoteURLConnection)initWithURLRequest:(id)request completionBlock:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1959C9900;
  v11[3] = &unk_1E74398E0;
  v12 = blockCopy;
  v7 = blockCopy;
  v9 = objc_msgSend_initWithURLRequest_completionBlockWithTimingData_(self, v8, request, v11);

  return v9;
}

- (IMRemoteURLConnection)initWithURLRequest:(id)request completionBlockWithTimingData:(id)data
{
  v25 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = IMRemoteURLConnection;
  v9 = [(IMRemoteURLConnection *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    v13 = objc_msgSend_URLLoading(IMIDSLog, v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = requestCopy;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&dword_195988000, v13, OS_LOG_TYPE_DEFAULT, "Init with URL request: %@  (%p)", buf, 0x16u);
    }

    v16 = objc_msgSend_copy(dataCopy, v14, v15);
    block = v10->_block;
    v10->_block = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_URLLoading(IMIDSLog, a2, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    request = self->_request;
    *buf = 138412546;
    v9 = request;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_195988000, v4, OS_LOG_TYPE_DEFAULT, "Released URL request: %@  (%p)", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = IMRemoteURLConnection;
  [(IMRemoteURLConnection *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_URLLoading(IMIDSLog, a2, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    request = self->_request;
    v10 = 138412546;
    v11 = request;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_195988000, v4, OS_LOG_TYPE_DEFAULT, "Cancelling URL request: %@  (%p)", &v10, 0x16u);
  }

  self->_cancelled = 1;
  block = self->_block;
  if (block)
  {
    self->_block = 0;
  }

  objc_msgSend__direct_cancel(self, v6, v7);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_direct_cancel
{
  URLSession = self->_URLSession;
  self->_URLSession = 0;
  MEMORY[0x1EEE66BB8]();
}

@end