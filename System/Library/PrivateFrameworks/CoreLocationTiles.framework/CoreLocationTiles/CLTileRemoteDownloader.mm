@interface CLTileRemoteDownloader
- (BOOL)downloadAndDecompressFrom:(const char *)a3 toDecompressedDestination:(const char *)a4 withTimeout:(double)a5 withCompletionHandler:(id)a6;
- (CLTileRemoteDownloader)initWithConnection:()unique_ptr<CLConnection onQueue:(CLConnectionDeleter>)a3;
- (void)cancel;
- (void)dealloc;
- (void)handleDisconnection;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)a3;
- (void)setup;
@end

@implementation CLTileRemoteDownloader

- (CLTileRemoteDownloader)initWithConnection:()unique_ptr<CLConnection onQueue:(CLConnectionDeleter>)a3
{
  v10.receiver = self;
  v10.super_class = CLTileRemoteDownloader;
  v6 = [(CLTileRemoteDownloader *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(CLTileRemoteDownloader *)v6 setQueue:a4];
    v8 = *a3.__ptr_;
    *a3.__ptr_ = 0;
    std::unique_ptr<CLConnection,CLConnectionDeleter>::reset[abi:ne200100](&v7->_connection.__ptr_, v8);
    [(CLTileRemoteDownloader *)v7 setup];
  }

  return v7;
}

- (void)setup
{
  dispatch_assert_queue_V2([(CLTileRemoteDownloader *)self queue]);
  objc_initWeak(&location, self);
  ptr = self->_connection.__ptr_;
  v7[1] = MEMORY[0x277D85DD0];
  v7[2] = 3221225472;
  v7[3] = __31__CLTileRemoteDownloader_setup__block_invoke;
  v7[4] = &unk_278E8FBD0;
  objc_copyWeak(&v8, &location);
  CLConnection::setDefaultMessageHandler();
  v4 = self->_connection.__ptr_;
  v6[1] = MEMORY[0x277D85DD0];
  v6[2] = 3221225472;
  v6[3] = __31__CLTileRemoteDownloader_setup__block_invoke_2;
  v6[4] = &unk_278E8FBF8;
  objc_copyWeak(v7, &location);
  CLConnection::setDisconnectionHandler();
  v5 = self->_connection.__ptr_;
  objc_copyWeak(v6, &location);
  CLConnection::setInterruptionHandler();
  CLConnection::start(self->_connection.__ptr_);
  objc_destroyWeak(v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __31__CLTileRemoteDownloader_setup__block_invoke(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [Weak handleMessage:&v5];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

uint64_t __31__CLTileRemoteDownloader_setup__block_invoke_2(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak handleDisconnection];
}

uint64_t __31__CLTileRemoteDownloader_setup__block_invoke_3(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak handleDisconnection];
}

- (void)dealloc
{
  [(CLTileRemoteDownloader *)self setOnDownloadAndDecompression:0];
  v3 = [(CLTileRemoteDownloader *)self queue];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  ptr = self->_connection.__ptr_;
  self->_connection.__ptr_ = 0;
  v8[3] = ptr;
  v5 = [(CLTileRemoteDownloader *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CLTileRemoteDownloader_dealloc__block_invoke;
  block[3] = &unk_278E8FC20;
  block[4] = v3;
  block[5] = v8;
  dispatch_async(v5, block);
  [(CLTileRemoteDownloader *)self setQueue:0];
  v6.receiver = self;
  v6.super_class = CLTileRemoteDownloader;
  [(CLTileRemoteDownloader *)&v6 dealloc];
  _Block_object_dispose(v8, 8);
}

CLConnection *__33__CLTileRemoteDownloader_dealloc__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 24);
  if (result)
  {
    result = CLConnection::deferredDelete(result);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)downloadAndDecompressFrom:(const char *)a3 toDecompressedDestination:(const char *)a4 withTimeout:(double)a5 withCompletionHandler:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2([(CLTileRemoteDownloader *)self queue]);
  if (a5 <= 0.0)
  {
    if (onceToken_TilesFramework_Default != -1)
    {
      [CLTileRemoteDownloader downloadAndDecompressFrom:toDecompressedDestination:withTimeout:withCompletionHandler:];
    }

    v20 = logObject_TilesFramework_Default;
    if (os_log_type_enabled(logObject_TilesFramework_Default, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v32 = 2082;
      v33 = &unk_245B71571;
      v34 = 2050;
      v35 = a5;
      _os_log_impl(&dword_245B6E000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Ignoring #TileRemoteDownloader request with invalid timeout, Timeout_s:%{public}.09f}", buf, 0x1Cu);
      if (onceToken_TilesFramework_Default != -1)
      {
        [CLTileRemoteDownloader downloadAndDecompressFrom:toDecompressedDestination:withTimeout:withCompletionHandler:];
      }
    }

    v21 = logObject_TilesFramework_Default;
    if (!os_signpost_enabled(logObject_TilesFramework_Default))
    {
      goto LABEL_39;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    v32 = 2082;
    v33 = &unk_245B71571;
    v34 = 2050;
    v35 = a5;
    v22 = "Ignoring #TileRemoteDownloader request with invalid timeout";
    v23 = "{msg%{public}.0s:Ignoring #TileRemoteDownloader request with invalid timeout, Timeout_s:%{public}.09f}";
LABEL_38:
    _os_signpost_emit_with_name_impl(&dword_245B6E000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v22, v23, buf, 0x1Cu);
    goto LABEL_39;
  }

  *&v11 = COERCE_DOUBLE([MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", a3)}]);
  if (*&v11 == 0.0)
  {
    if (onceToken_TilesFramework_Default != -1)
    {
      [CLTileRemoteDownloader downloadAndDecompressFrom:toDecompressedDestination:withTimeout:withCompletionHandler:];
    }

    v24 = logObject_TilesFramework_Default;
    if (os_log_type_enabled(logObject_TilesFramework_Default, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v32 = 2082;
      v33 = &unk_245B71571;
      v34 = 2082;
      v35 = *&a3;
      _os_log_impl(&dword_245B6E000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TileRemoteDownloader Ignoring new download request with invalid source string, URLString:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (onceToken_TilesFramework_Default != -1)
      {
        [CLTileRemoteDownloader downloadAndDecompressFrom:toDecompressedDestination:withTimeout:withCompletionHandler:];
      }
    }

    v21 = logObject_TilesFramework_Default;
    if (!os_signpost_enabled(logObject_TilesFramework_Default))
    {
      goto LABEL_39;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    v32 = 2082;
    v33 = &unk_245B71571;
    v34 = 2082;
    v35 = *&a3;
    v22 = "#TileRemoteDownloader Ignoring new download request with invalid source string";
    v23 = "{msg%{public}.0s:#TileRemoteDownloader Ignoring new download request with invalid source string, URLString:%{public, location:escape_only}s}";
    goto LABEL_38;
  }

  v12 = *&v11;
  v13 = [MEMORY[0x277CBAB50] requestWithURL:v11];
  if (!v13)
  {
    if (onceToken_TilesFramework_Default != -1)
    {
      [CLTileRemoteDownloader downloadAndDecompressFrom:toDecompressedDestination:withTimeout:withCompletionHandler:];
    }

    v25 = logObject_TilesFramework_Default;
    if (os_log_type_enabled(logObject_TilesFramework_Default, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v32 = 2082;
      v33 = &unk_245B71571;
      v34 = 2114;
      v35 = v12;
      _os_log_impl(&dword_245B6E000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TileRemoteDownloader Ignoring new download request with invalid source url, URL:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (onceToken_TilesFramework_Default != -1)
      {
        [CLTileRemoteDownloader downloadAndDecompressFrom:toDecompressedDestination:withTimeout:withCompletionHandler:];
      }
    }

    v21 = logObject_TilesFramework_Default;
    if (!os_signpost_enabled(logObject_TilesFramework_Default))
    {
      goto LABEL_39;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    v32 = 2082;
    v33 = &unk_245B71571;
    v34 = 2114;
    v35 = v12;
    v22 = "#TileRemoteDownloader Ignoring new download request with invalid source url";
    v23 = "{msg%{public}.0s:#TileRemoteDownloader Ignoring new download request with invalid source url, URL:%{public, location:escape_only}@}";
    goto LABEL_38;
  }

  v14 = v13;
  v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:objc_msgSend(MEMORY[0x277CCACA8] isDirectory:{"stringWithUTF8String:", a4), 0}];
  if (v15)
  {
    v16 = v15;
    if (onceToken_TilesFramework_Default != -1)
    {
      [CLTileRemoteDownloader downloadAndDecompressFrom:toDecompressedDestination:withTimeout:withCompletionHandler:];
    }

    v17 = logObject_TilesFramework_Default;
    if (os_log_type_enabled(logObject_TilesFramework_Default, OS_LOG_TYPE_DEFAULT))
    {
      ptr = self->_connection.__ptr_;
      *buf = 68290307;
      *&buf[4] = 0;
      v32 = 2082;
      v33 = &unk_245B71571;
      v34 = 2050;
      v35 = *&self;
      v36 = 2050;
      v37 = ptr;
      v38 = 1026;
      v39 = [(CLTileRemoteDownloader *)self canDownloadOverCellular];
      v40 = 2114;
      v41 = v12;
      v42 = 2113;
      v43 = v16;
      _os_log_impl(&dword_245B6E000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TileRemoteDownloader - starting request, self:%{public}p, connection:%{public}p, canDownloadOverCellular:%{public}hhd, srcURL:%{public, location:escape_only}@, decompressedDestination:%{private, location:escape_only}@}", buf, 0x40u);
    }

    [v14 setTimeoutInterval:a5];
    [v14 setAllowsCellularAccess:{-[CLTileRemoteDownloader canDownloadOverCellular](self, "canDownloadOverCellular")}];
    [(CLTileRemoteDownloader *)self setOnDownloadAndDecompression:a6];
    v29[0] = @"kCLConnectionDownloadAndDecompressDestinationURLKey";
    v29[1] = @"kCLConnectionDownloadAndDecompressRequestKey";
    v30[0] = v16;
    v30[1] = v14;
    *buf = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v19 = self->_connection.__ptr_;
    std::allocate_shared[abi:ne200100]<CLConnectionMessage,std::allocator<CLConnectionMessage>,char const(&)[35],NSDictionary *&,0>();
  }

  if (onceToken_TilesFramework_Default != -1)
  {
    [CLTileRemoteDownloader downloadAndDecompressFrom:toDecompressedDestination:withTimeout:withCompletionHandler:];
  }

  v26 = logObject_TilesFramework_Default;
  if (os_log_type_enabled(logObject_TilesFramework_Default, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    v32 = 2082;
    v33 = &unk_245B71571;
    v34 = 2113;
    v35 = 0.0;
    _os_log_impl(&dword_245B6E000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:TileRemoteDownloader Ignoring new download request with invalid decompressed destination url, decompressedDestination:%{private, location:escape_only}@}", buf, 0x1Cu);
    if (onceToken_TilesFramework_Default != -1)
    {
      [CLTileRemoteDownloader downloadAndDecompressFrom:toDecompressedDestination:withTimeout:withCompletionHandler:];
    }
  }

  v21 = logObject_TilesFramework_Default;
  if (os_signpost_enabled(logObject_TilesFramework_Default))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    v32 = 2082;
    v33 = &unk_245B71571;
    v34 = 2113;
    v35 = 0.0;
    v22 = "TileRemoteDownloader Ignoring new download request with invalid decompressed destination url";
    v23 = "{msg%{public}.0s:TileRemoteDownloader Ignoring new download request with invalid decompressed destination url, decompressedDestination:%{private, location:escape_only}@}";
    goto LABEL_38;
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)cancel
{
  dispatch_assert_queue_V2([(CLTileRemoteDownloader *)self queue]);
  if ([(CLTileRemoteDownloader *)self onDownloadAndDecompression])
  {
    ptr = self->_connection.__ptr_;
    std::allocate_shared[abi:ne200100]<CLConnectionMessage,std::allocator<CLConnectionMessage>,char const(&)[41],0>();
  }
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)a3
{
  var0 = a3.var0;
  v39 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2([(CLTileRemoteDownloader *)self queue:a3.var0]);
  v5 = CLConnectionMessage::name(*var0);
  if (*(v5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v28.__r_.__value_.__r.__words[2] = *(v5 + 16);
    *&v28.__r_.__value_.__l.__data_ = v6;
  }

  v7 = _os_activity_create(&dword_245B6E000, "CL: #TileRemoteDownloader Handling message from service", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  if (onceToken_TilesFramework_Default != -1)
  {
    [CLTileRemoteDownloader downloadAndDecompressFrom:toDecompressedDestination:withTimeout:withCompletionHandler:];
  }

  v8 = logObject_TilesFramework_Default;
  if (os_log_type_enabled(logObject_TilesFramework_Default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v28.__r_.__value_.__r.__words[0];
    }

    *buf = 68289794;
    v30 = 0;
    v31 = 2082;
    v32 = &unk_245B71571;
    v33 = 2082;
    v34 = "activity";
    v35 = 2082;
    v36 = v9;
    v37 = 2050;
    v38 = self;
    _os_log_impl(&dword_245B6E000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TileRemoteDownloader Handling message from service, event:%{public, location:escape_only}s, messageName:%{public, location:escape_only}s, self:%{public}p}", buf, 0x30u);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0 && v28.__r_.__value_.__l.__size_ == 41)
  {
    if (!memcmp(v28.__r_.__value_.__l.__data_, "kCLConnectionDownloadAndDecompressSuccess", 0x29uLL))
    {
      v10 = *var0;
      v11 = MEMORY[0x277CBEB98];
      v12 = objc_opt_class();
      v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v10, v13);
      v15 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionDownloadAndDecompressFileKey"];
      v16 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionDownloadAndDecompressURLResponseKey"];
      v17 = [(CLTileRemoteDownloader *)self onDownloadAndDecompression];
      v17[2](v17, v15, v16, 0);
    }
  }

  else if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0 && v28.__r_.__value_.__l.__size_ == 39 && !memcmp(v28.__r_.__value_.__l.__data_, "kCLConnectionDownloadAndDecompressError", 0x27uLL))
  {
    v18 = *var0;
    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = CLConnectionMessage::getDictionaryOfClasses(v18, v21);
    v23 = [v22 objectForKeyedSubscript:@"kCLConnectionDownloadAndDecompressErrorKey"];
    v24 = [v22 objectForKeyedSubscript:@"kCLConnectionDownloadAndDecompressURLResponseKey"];
    v25 = [(CLTileRemoteDownloader *)self onDownloadAndDecompression];
    v25[2](v25, 0, v24, v23);
  }

  [(CLTileRemoteDownloader *)self setOnDownloadAndDecompression:0];
  os_activity_scope_leave(&state);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleDisconnection
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2([(CLTileRemoteDownloader *)self queue]);
  if ([(CLTileRemoteDownloader *)self onDownloadAndDecompression])
  {
    v3 = _os_activity_create(&dword_245B6E000, "CL: #TileRemoteDownloader Service is unavailable, sending error to clients", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &v8);

    if (onceToken_TilesFramework_Default != -1)
    {
      [CLTileRemoteDownloader downloadAndDecompressFrom:toDecompressedDestination:withTimeout:withCompletionHandler:];
    }

    v4 = logObject_TilesFramework_Default;
    if (os_log_type_enabled(logObject_TilesFramework_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = &unk_245B71571;
      v13 = 2082;
      v14 = "activity";
      _os_log_impl(&dword_245B6E000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TileRemoteDownloader Service is unavailable, sending error to clients, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kCLTileErrorDomain" code:2 userInfo:0];
    v6 = [(CLTileRemoteDownloader *)self onDownloadAndDecompression];
    (*(v6 + 2))(v6, 0, 0, v5);
    [(CLTileRemoteDownloader *)self setOnDownloadAndDecompression:0];
    os_activity_scope_leave(&v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end