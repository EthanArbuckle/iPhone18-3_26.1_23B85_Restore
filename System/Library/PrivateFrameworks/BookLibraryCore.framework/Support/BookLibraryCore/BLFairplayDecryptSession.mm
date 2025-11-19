@interface BLFairplayDecryptSession
- (BLFairplayDecryptSession)initWithDPInfo:(id)a3;
- (id)decryptBytes:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation BLFairplayDecryptSession

- (BLFairplayDecryptSession)initWithDPInfo:(id)a3
{
  v5 = a3;
  v6 = [(BLFairplayDecryptSession *)self init];
  if (v6)
  {
    if ([v5 length])
    {
      objc_storeStrong(&v6->_dpInfo, a3);
      v7 = [NSString alloc];
      v8 = +[NSUUID UUID];
      v9 = [v8 UUIDString];
      v10 = [v7 initWithFormat:@"com.apple.itunesstored.fairplay.decryptfile.%@", v9];
      identifier = v6->_identifier;
      v6->_identifier = v10;
    }

    else
    {
      v12 = BLBookInstallLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = objc_opt_class();
        v13 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%@] No DPInfo provided", buf, 0xCu);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  decryptSession = self->_decryptSession;
  if (decryptSession)
  {
    sub_1000AACA4(decryptSession);
    self->_decryptSession = 0;
  }

  v4.receiver = self;
  v4.super_class = BLFairplayDecryptSession;
  [(BLFairplayDecryptSession *)&v4 dealloc];
}

- (id)decryptBytes:(id)a3 error:(id *)a4
{
  v6 = a3;
  decryptSession = self->_decryptSession;
  if (decryptSession)
  {
    goto LABEL_8;
  }

  if (!sub_1000AACC4(self->_dpInfo, &self->_decryptSession))
  {
    v8 = BLBookInstallLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = objc_opt_class();
      v9 = v19;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: Could not begin decrypt", buf, 0xCu);
    }

    if (a4)
    {
      *a4 = sub_1000A8F44(15, 0, 0);
    }
  }

  dpInfo = self->_dpInfo;
  self->_dpInfo = 0;

  decryptSession = self->_decryptSession;
  if (decryptSession)
  {
LABEL_8:
    v17 = 0;
    v11 = sub_1000AAE24(decryptSession, v6, &v17);
    v12 = v17;
    if ((v11 & 1) == 0)
    {
      v13 = BLBookInstallLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        *buf = 138412290;
        v19 = v14;
        v15 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@: Decrypt failed", buf, 0xCu);
      }

      if (a4)
      {
        *a4 = sub_1000A91BC(@"FairPlayErrorDomain", 15, 0, 0);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end