@interface IDSOTREncrypter
- (IDSOTREncrypter)initWithOTRController:(id)a3 OTRToken:(id)a4;
- (id)decryptData:(id)a3 onQueue:(id)a4 error:(int64_t *)a5;
- (id)encryptData:(id)a3 onQueue:(id)a4 error:(int64_t *)a5;
@end

@implementation IDSOTREncrypter

- (IDSOTREncrypter)initWithOTRController:(id)a3 OTRToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSOTREncrypter;
  v9 = [(IDSOTREncrypter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_OTRController, a3);
    objc_storeStrong(&v10->_OTRToken, a4);
  }

  return v10;
}

- (id)encryptData:(id)a3 onQueue:(id)a4 error:(int64_t *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 length];
  if (v9 && v10 && self->_OTRToken)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = sub_10000AA64;
    v34 = sub_10000BCA4;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1005C58D8;
    v24[3] = &unk_100BE11B8;
    v24[4] = self;
    v26 = buf;
    v25 = v8;
    v27 = &v28;
    [v9 performSyncBlock:v24];
    v11 = *(v29 + 24);
    if (a5 || (v11 & 1) != 0)
    {
      if (!a5)
      {
        v11 = 1;
      }

      v12 = v11 == 0;
      v13 = 101;
      if (!v12)
      {
        v13 = 0;
      }

      *a5 = v13;
    }

    v14 = *(*&buf[8] + 40);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 length];
      v17 = [(IDSOTREncrypter *)self OTRToken];
      *buf = 134218498;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid OTR Encrypt parameters -- failing {inputDataLength: %llu, queue: %@, OTRToken: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v18 = [v8 length];
      v21 = [(IDSOTREncrypter *)self OTRToken];
      _IDSWarnV();

      v19 = [v8 length];
      v22 = [(IDSOTREncrypter *)self OTRToken];
      _IDSLogV();

      [v8 length];
      v23 = [(IDSOTREncrypter *)self OTRToken];
      _IDSLogTransport();
    }

    v14 = 0;
    if (a5)
    {
      *a5 = 101;
    }
  }

  return v14;
}

- (id)decryptData:(id)a3 onQueue:(id)a4 error:(int64_t *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 length];
  if (v9 && v10 && self->_OTRToken)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = sub_10000AA64;
    v34 = sub_10000BCA4;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1005C5F54;
    v24[3] = &unk_100BE11B8;
    v24[4] = self;
    v26 = buf;
    v25 = v8;
    v27 = &v28;
    [v9 performSyncBlock:v24];
    v11 = *(v29 + 24);
    if (a5 || (v11 & 1) != 0)
    {
      if (!a5)
      {
        v11 = 1;
      }

      v12 = v11 == 0;
      v13 = 100;
      if (!v12)
      {
        v13 = 0;
      }

      *a5 = v13;
    }

    v14 = *(*&buf[8] + 40);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v8 length];
      v17 = [(IDSOTREncrypter *)self OTRToken];
      *buf = 134218498;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid OTR Encrypt parameters -- failing {inputDataLength: %llu, queue: %@, OTRToken: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v18 = [v8 length];
      v21 = [(IDSOTREncrypter *)self OTRToken];
      _IDSWarnV();

      v19 = [v8 length];
      v22 = [(IDSOTREncrypter *)self OTRToken];
      _IDSLogV();

      [v8 length];
      v23 = [(IDSOTREncrypter *)self OTRToken];
      _IDSLogTransport();
    }

    v14 = 0;
    if (a5)
    {
      *a5 = 100;
    }
  }

  return v14;
}

@end