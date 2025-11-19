@interface HRCDiagnosticExtension
- (BOOL)_callingHostIsDiagnostics:(id)a3;
- (BOOL)_forceFlushLogs;
- (id)_collectFilesFrom:(const void *)a3 withFilter:(void *)a4 skipNewest:(BOOL)a5;
- (id)_getPalomaLogs;
- (id)attachmentsForParameters:(id)a3;
- (void)setupWithParameters:(id)a3;
- (void)teardownWithParameters:(id)a3;
@end

@implementation HRCDiagnosticExtension

- (BOOL)_callingHostIsDiagnostics:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 isEqualToString:@"com.apple.enhancedloggingd"];
  if ((v7 & 1) == 0)
  {
    v8 = sub_10000391C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unexpected calling host: %{public}@", &v10, 0xCu);
    }
  }

  return v7;
}

- (void)setupWithParameters:(id)a3
{
  v4 = a3;
  v5 = sub_10000391C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setupWithParameters: %{public}@", &buf, 0xCu);
  }

  if ([(HRCDiagnosticExtension *)self _callingHostIsDiagnostics:v4])
  {
    v6 = objc_alloc_init(CBUserController);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x2020000000;
    v29 = 0;
    v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.HeartRateCoordinator"];
    v8 = [v7 objectForKey:@"InitialLimitedLoggingState"];
    v9 = v8 == 0;

    if (v9)
    {
      v13 = dispatch_group_create();
      dispatch_group_enter(v13);
      v14 = sub_10000391C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Querying limited logging state", v25, 2u);
      }

      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_100001538;
      v22 = &unk_1000083B8;
      p_buf = &buf;
      v11 = v13;
      v23 = v11;
      [v6 appleAudioAccessoryLimitedLoggingWithCompletion:&v19];
      v15 = dispatch_time(0, 10000000000);
      if (dispatch_group_wait(v11, v15))
      {
        v16 = sub_10000391C();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100003A5C();
        }

        goto LABEL_20;
      }

      v17 = sub_10000391C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(&buf + 1) + 24);
        *v25 = 67240192;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "storing initial limited logging state in defaults: %{public,BOOL}d", v25, 8u);
      }

      [v7 setBool:*(*(&buf + 1) + 24) forKey:{@"InitialLimitedLoggingState", v19, v20, v21, v22}];
    }

    else
    {
      v10 = [v7 BOOLForKey:@"InitialLimitedLoggingState"];
      *(*(&buf + 1) + 24) = v10;
      v11 = sub_10000391C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(*(&buf + 1) + 24);
        *v25 = 67240192;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "initial limited logging state found in defaults: %{public,BOOL}d", v25, 8u);
      }
    }

    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      [(HRCDiagnosticExtension *)self _updateLimitedLogging:v6 enabled:1];
    }

LABEL_20:

    _Block_object_dispose(&buf, 8);
    goto LABEL_21;
  }

  v6 = sub_10000391C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setup run outside of expected TL flow!", &buf, 2u);
  }

LABEL_21:
}

- (void)teardownWithParameters:(id)a3
{
  v4 = a3;
  v5 = sub_10000391C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "teardownWithParameters: %{public}@", &v13, 0xCu);
  }

  if ([(HRCDiagnosticExtension *)self _callingHostIsDiagnostics:v4])
  {
    v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.HeartRateCoordinator"];
    v7 = [v6 objectForKey:@"InitialLimitedLoggingState"];
    v8 = v7 == 0;

    if (v8)
    {
      v12 = sub_10000391C();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100003B14();
      }
    }

    else
    {
      v9 = [v6 BOOLForKey:@"InitialLimitedLoggingState"];
      v10 = sub_10000391C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 67240192;
        LODWORD(v14) = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "initial limited logging state retrieved from defaults: %{public,BOOL}d", &v13, 8u);
      }

      if ((v9 & 1) == 0)
      {
        v11 = objc_alloc_init(CBUserController);
        [(HRCDiagnosticExtension *)self _updateLimitedLogging:v11 enabled:0];
      }

      [v6 removeObjectForKey:@"InitialLimitedLoggingState"];
    }
  }

  else
  {
    v6 = sub_10000391C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "teardown run outside of expected TL flow!", &v13, 2u);
    }
  }
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  v5 = sub_10000391C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attachmentsForParameters: %{public}@", &v14, 0xCu);
  }

  v6 = [v4 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if ((([v6 isEqualToString:@"com.apple.taptoradard"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"com.apple.TapToRadar")) && (objc_msgSend(v4, "objectForKeyedSubscript:", @"DEExtensionAttachmentsParamConsentProvidedKey"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, (v8 & 1) == 0))
  {
    v12 = sub_10000391C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "consent not provided: returning an empty list of attachments", &v14, 2u);
    }

    v10 = &__NSArray0__struct;
  }

  else
  {
    v9 = [(HRCDiagnosticExtension *)self _forceFlushLogs];
    v10 = objc_opt_new();
    v11 = [(HRCDiagnosticExtension *)self _getHRCLP5s:v9];
    [v10 addObjectsFromArray:v11];

    v12 = [(HRCDiagnosticExtension *)self _getPalomaLogs];
    [v10 addObjectsFromArray:v12];
  }

  return v10;
}

- (BOOL)_forceFlushLogs
{
  v2 = dispatch_group_create();
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.heartratecoordinator.diagnosticextension", v3);

  v25 = -1;
  out_token = -1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001EA4;
  handler[3] = &unk_1000083E0;
  v20 = &v21;
  v5 = v2;
  v19 = v5;
  notify_register_dispatch("com.apple.HeartRateCoordinator.logFlushFinshed", &out_token, v4, handler);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001EC4;
  v15[3] = &unk_1000083E0;
  v17 = &v21;
  v6 = v5;
  v16 = v6;
  notify_register_dispatch("com.apple.HeartRateCoordinator.logFlushNotNeeded", &v25, v4, v15);
  dispatch_group_enter(v6);
  v7 = sub_10000391C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending flush command to daemon", &v14, 2u);
  }

  notify_post("com.apple.HeartRateCoordinator.logFlush");
  v8 = dispatch_time(0, 5000000000);
  v9 = dispatch_group_wait(v6, v8);
  if (v9)
  {
    v10 = sub_10000391C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v14 = 0;
    v11 = "Failed to flush daemon logs";
  }

  else
  {
    v10 = sub_10000391C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v14 = 0;
    v11 = "Successfully flushed daemon logs";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v14, 2u);
LABEL_9:

  if (out_token != -1)
  {
    notify_cancel(out_token);
  }

  if (v25 != -1)
  {
    notify_cancel(v25);
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v22 + 24);
  }

  _Block_object_dispose(&v21, 8);
  return v12 & 1;
}

- (id)_getPalomaLogs
{
  sub_1000033A4(&__p, "/var/mobile/Library/Logs/Bluetooth/");
  if ((atomic_load_explicit(&qword_10000C1B8, memory_order_acquire) & 1) == 0)
  {
    sub_100003B54();
  }

  v3 = [(HRCDiagnosticExtension *)self _collectFilesFrom:&__p withFilter:&qword_10000C1C0 skipNewest:0];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

- (id)_collectFilesFrom:(const void *)a3 withFilter:(void *)a4 skipNewest:(BOOL)a5
{
  v5 = a5;
  v40 = objc_opt_new();
  v8 = sub_10000391C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
    *(buf[0].__r_.__value_.__r.__words + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attaching files from %{public}s", buf, 0xCu);
  }

  __ec.__val_ = 0;
  v10 = std::system_category();
  __ec.__cat_ = v10;
  std::__fs::filesystem::__status(a3, &__ec);
  if (buf[0].__r_.__value_.__s.__data_[0])
  {
    __ec.__val_ = 0;
    __ec.__cat_ = v10;
    if (buf[0].__r_.__value_.__s.__data_[0] != 255)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      buf[0].__r_.__value_.__s.__data_[0] = 0;
      v48 = 0;
      std::__fs::filesystem::directory_iterator::directory_iterator(&v46, a3, &__ec, none);
      ptr = v46.__imp_.__ptr_;
      cntrl = v46.__imp_.__cntrl_;
      if (v46.__imp_.__cntrl_)
      {
        atomic_fetch_add_explicit(&v46.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = v46.__imp_.__cntrl_;
        v42.__imp_.__ptr_ = ptr;
        v42.__imp_.__cntrl_ = cntrl;
        if (v46.__imp_.__cntrl_)
        {
          atomic_fetch_add_explicit(&v46.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100002B4C(v14);
        }
      }

      else
      {
        v42.__imp_.__ptr_ = v46.__imp_.__ptr_;
        v42.__imp_.__cntrl_ = 0;
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        if (!v42.__imp_.__ptr_)
        {
LABEL_50:
          if (v42.__imp_.__cntrl_)
          {
            sub_100002B4C(v42.__imp_.__cntrl_);
          }

          if (v46.__imp_.__cntrl_)
          {
            sub_100002B4C(v46.__imp_.__cntrl_);
          }

          v31 = v49;
          v32 = v50;
          if (v49 != v50)
          {
            *&v11 = 138543362;
            v39 = v11;
            do
            {
              v33 = v31;
              if (SHIBYTE(v31->__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                v33 = v31->__pn_.__r_.__value_.__r.__words[0];
              }

              v35 = [NSString stringWithCString:v33 encoding:4, v39];
              if (v5 && v48 == 1 && (v34.__data_ = buf, sub_100002904(v31, v34)))
              {
                v36 = sub_10000391C();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v46.__imp_.__ptr_) = v39;
                  *(&v46.__imp_.__ptr_ + 4) = v35;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Skipping newest file: %{public}@", &v46, 0xCu);
                }
              }

              else
              {
                v36 = [DEAttachmentItem attachmentWithPath:v35];
                [v40 addObject:v36];
                v37 = sub_10000391C();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v46.__imp_.__ptr_) = v39;
                  *(&v46.__imp_.__ptr_ + 4) = v35;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Attaching %{public}@", &v46, 0xCu);
                }
              }

              v31 = (v31 + 80);
            }

            while (v31 != v32);
          }

          if (v48 == 1 && SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf[0].__r_.__value_.__l.__data_);
          }

          buf[0].__r_.__value_.__r.__words[0] = &v49;
          sub_100003078(buf);
          goto LABEL_71;
        }

        v20 = std::__fs::filesystem::directory_iterator::__dereference(&v42);
        if (__ec.__val_)
        {
          v30 = sub_10000391C();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            std::error_code::message(&v41, &__ec);
            sub_100003BCC(&v41);
          }

          goto LABEL_50;
        }

        v21 = v20;
        v22 = sub_100002BB8(&v20->__p_, &__ec);
        if (__ec.__val_ || v22 != 1)
        {
          break;
        }

        if (!a4)
        {
          goto LABEL_77;
        }

        v23 = *(a4 + 3);
        if (!v23)
        {
          sub_1000038B4();
        }

        if ((*(*v23 + 48))(v23, v21))
        {
LABEL_77:
          sub_100002830(&v49, v21);
          if (v5)
          {
            v24.__d_.__rep_ = std::__fs::filesystem::__last_write_time(v21, &__ec).__d_.__rep_;
            if (__ec.__val_)
            {
              v25 = sub_10000391C();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                std::error_code::message(&v41, &__ec);
                if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v26 = &v41;
                }

                else
                {
                  v26 = v41.__r_.__value_.__r.__words[0];
                }

                *v44 = 136446210;
                v45 = v26;
                v27 = v25;
                v28 = "Error getting last write time: %{public}s";
                goto LABEL_45;
              }

              goto LABEL_36;
            }

            if ((v19 & (__PAIR128__(v18, v17) >= v24.__d_.__rep_)) != 0)
            {
              v19 = 1;
            }

            else
            {
              sub_100002870(buf, v21);
              v19 = 1;
              v18 = *(&v24.__d_.__rep_ + 1);
              v17 = *&v24.__d_.__rep_;
            }
          }
        }

LABEL_37:
        std::__fs::filesystem::directory_iterator::__increment(&v42, 0);
      }

      if (!__ec.__val_)
      {
        goto LABEL_37;
      }

      v25 = sub_10000391C();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(&v41, &__ec);
        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v41;
        }

        else
        {
          v29 = v41.__r_.__value_.__r.__words[0];
        }

        *v44 = 136446210;
        v45 = v29;
        v27 = v25;
        v28 = "Error checking if entry is a regular file: %{public}s";
LABEL_45:
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v28, v44, 0xCu);
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }
      }

LABEL_36:

      goto LABEL_37;
    }

    goto LABEL_15;
  }

  if (!__ec.__val_)
  {
LABEL_15:
    v16 = sub_10000391C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100003CA4(a3);
    }

    goto LABEL_71;
  }

  v15 = sub_10000391C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    std::error_code::message(buf, &__ec);
    sub_100003C38(buf);
  }

LABEL_71:

  return v40;
}

@end