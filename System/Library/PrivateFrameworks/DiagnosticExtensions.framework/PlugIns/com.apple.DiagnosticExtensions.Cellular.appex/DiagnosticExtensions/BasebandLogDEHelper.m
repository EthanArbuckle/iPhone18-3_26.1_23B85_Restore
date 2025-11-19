@interface BasebandLogDEHelper
- (BOOL)checkBasebandBootStateAndReset;
- (BOOL)checkBasebandOperatingModeAndSet;
- (BOOL)checkifBasebandTraceEnabled;
- (BOOL)checkifDefaultBasebandProfileInstalled;
- (BOOL)disableBasebandLog;
- (BOOL)enableBasebandLog:(id)a3;
- (BOOL)installDELoggingProfile;
- (BOOL)isCompressionModeOff;
- (BOOL)triggerBasebandBlindScanning;
- (BOOL)triggerBasebandDiagnostics;
- (BOOL)uninstallDELoggingProfile;
- (BOOL)updateTraceProperties:(array)a3;
- (BasebandLogDEHelper)init;
- (id).cxx_construct;
- (id)collectAttachments:(id)a3;
- (id)dumpLogWithBasebandReset:(id)a3 :(id)a4;
- (id)dumpTelephonyLogs:(id)a3 :(BOOL)a4 :(id)a5;
- (id)previousDumpTimestamp:(id)a3;
- (unsigned)getAgeLimitForAttachment;
- (unsigned)getBasebandLogHistorySize;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation BasebandLogDEHelper

- (BasebandLogDEHelper)init
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v4 = dispatch_queue_create("BasebandLog.DEHelper.queue", v3);
  fObj = self->fQueue.fObj.fObj;
  self->fQueue.fObj.fObj = v4;
  if (fObj)
  {
    dispatch_release(fObj);
  }

  v6 = abm::helper::kBasebandLogDEHelperName;
  v7 = strlen(abm::helper::kBasebandLogDEHelperName);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    __dst[1] = v8;
    v23 = v10 | 0x8000000000000000;
    __dst[0] = v9;
  }

  else
  {
    HIBYTE(v23) = v7;
    v9 = __dst;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  memmove(v9, v6, v8);
LABEL_12:
  *(v8 + v9) = 0;
  v11 = self->fQueue.fObj.fObj;
  abm::client::CreateManager();
  v12 = v24;
  v24 = 0;
  cntrl = self->fManager.__cntrl_;
  self->fManager = v12;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  v14 = v24.__cntrl_;
  if (!v24.__cntrl_ || atomic_fetch_add(v24.__cntrl_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (SHIBYTE(v23) < 0)
  {
LABEL_18:
    operator delete(__dst[0]);
  }

LABEL_19:
  v15 = dispatch_group_create();
  gr_name = self->fGroupLogDump.gr_name;
  self->fGroupLogDump.gr_name = v15;
  if (gr_name)
  {
    dispatch_release(gr_name);
  }

  v17 = dispatch_group_create();
  gr_passwd = self->fGroupLogDump.gr_passwd;
  self->fGroupLogDump.gr_passwd = v17;
  if (gr_passwd)
  {
    dispatch_release(gr_passwd);
  }

  v19 = *&self->fGroupLogDump.gr_gid;
  *&self->fGroupLogDump.gr_gid = 0;
  if (v19)
  {
    dispatch_group_leave(v19);
    dispatch_release(v19);
  }

  gr_mem = self->fGroupLogDump.gr_mem;
  self->fGroupLogDump.gr_mem = 0;
  if (gr_mem)
  {
    dispatch_group_leave(gr_mem);
    dispatch_release(gr_mem);
  }

  LOBYTE(self->fGroupUpdate.gr_mem) = 8;
  return self;
}

- (void)start
{
  if (self->fManager.__ptr_)
  {
    objc_initWeak(&location, self);
    cntrl = self->fManager.__cntrl_;
    ptr = self->fManager.__ptr_;
    v35 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    v4 = abm::kEventTracePostProcessingEnd;
    v5 = strlen(abm::kEventTracePostProcessingEnd);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100001210();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v9 = 25;
      }

      else
      {
        v9 = (v5 | 7) + 1;
      }

      v7 = operator new(v9);
      v32 = v6;
      v33 = v9 | 0x8000000000000000;
      *buf = v7;
    }

    else
    {
      HIBYTE(v33) = v5;
      v7 = buf;
      if (!v5)
      {
LABEL_15:
        v7[v6] = 0;
        v26 = _NSConcreteStackBlock;
        v27 = 3221225472;
        v28 = sub_10001D3B8;
        v29 = &unk_1000311C8;
        objc_copyWeak(&v30, &location);
        abm::client::RegisterEventHandler();
        if (SHIBYTE(v33) < 0)
        {
          operator delete(*buf);
        }

        v10 = v35;
        if (v35 && !atomic_fetch_add(v35 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        v11 = self->fManager.__cntrl_;
        v24[1] = self->fManager.__ptr_;
        v25 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
        }

        v12 = abm::kEventBasebandOperatingModeChange;
        v13 = strlen(abm::kEventBasebandOperatingModeChange);
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_100001210();
        }

        v14 = v13;
        if (v13 >= 0x17)
        {
          if ((v13 | 7) == 0x17)
          {
            v16 = 25;
          }

          else
          {
            v16 = (v13 | 7) + 1;
          }

          v15 = operator new(v16);
          v32 = v14;
          v33 = v16 | 0x8000000000000000;
          *buf = v15;
        }

        else
        {
          HIBYTE(v33) = v13;
          v15 = buf;
          if (!v13)
          {
            goto LABEL_31;
          }
        }

        memmove(v15, v12, v14);
LABEL_31:
        *(v15 + v14) = 0;
        objc_copyWeak(v24, &location);
        abm::client::RegisterEventHandler();
        if (SHIBYTE(v33) < 0)
        {
          operator delete(*buf);
        }

        v17 = v25;
        if (v25 && !atomic_fetch_add(v25 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v18 = self->fManager.__cntrl_;
        v22 = self->fManager.__ptr_;
        v23 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
        }

        abm::client::EventsOff();
        if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
        }

        v19 = self->fManager.__cntrl_;
        v20 = self->fManager.__ptr_;
        v21 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
        }

        abm::client::EventsOn();
        if (v21)
        {
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
          }
        }

        objc_destroyWeak(v24);
        objc_destroyWeak(&v30);
        objc_destroyWeak(&location);
        return;
      }
    }

    memmove(v7, v4, v6);
    goto LABEL_15;
  }

  v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid manager", buf, 2u);
  }
}

- (void)stop
{
  cntrl = self->fManager.__cntrl_;
  ptr = self->fManager.__ptr_;
  v4 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOff();
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

- (void)dealloc
{
  cntrl = self->fManager.__cntrl_;
  self->fManager.__ptr_ = 0;
  self->fManager.__cntrl_ = 0;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl, a2);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  v4 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BasebandLogDEHelper dealloc", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = BasebandLogDEHelper;
  [(BasebandLogDEHelper *)&v5 dealloc];
}

- (id)previousDumpTimestamp:(id)a3
{
  v4 = a3;
  v5 = [(BasebandLogDEHelper *)self getAgeLimitForAttachment];
  memset(__p, 170, sizeof(__p));
  util::findLastLogDumpTimestamp(abm::trace::kSnapshotFolder, abm::trace::kLogDirPrefix, v5, 1, [v4 UTF8String], __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (!HIBYTE(__p[2]))
    {
      v7 = 0;
      goto LABEL_11;
    }

    v6 = __p;
    goto LABEL_6;
  }

  if (__p[1])
  {
    v6 = __p[0];
LABEL_6:
    v7 = [NSString stringWithUTF8String:v6];
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  operator delete(__p[0]);
LABEL_11:

  return v7;
}

- (id)collectAttachments:(id)a3
{
  v155 = a3;
  v156 = objc_alloc_init(NSMutableArray);
  v158 = 0;
  v159 = 0uLL;
  if ([v155 isEqualToString:@"BasebandSnapshotFolder"])
  {
    if (SHIBYTE(v159) < 0)
    {
      *&v159 = 2;
      v4 = v158;
    }

    else
    {
      HIBYTE(v159) = 2;
      v4 = &v158;
    }

    strcpy(v4, ".*");
    goto LABEL_213;
  }

  if ([v155 isEqualToString:@"Crash"])
  {
    v5 = abm::trace::kMobileCrashReporterFolder;
    v6 = v156;
    v170 = 0uLL;
    v171 = 0;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v168[32] = v7;
    v169 = v7;
    *v168 = v7;
    *&v168[16] = v7;
    sub_100002670(v168, "CommCenter-.*ips.*", 0);
    v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      buf.st_dev = 136315650;
      *&buf.st_mode = v5;
      WORD2(buf.st_ino) = 2080;
      *(&buf.st_ino + 6) = "CommCenter-.*ips.*";
      HIWORD(buf.st_gid) = 1024;
      buf.st_rdev = 3;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "search files and attach: basedir [%s], pattern [%s], maxAttachments [%d]", &buf, 0x1Cu);
      v9 = strlen(v5);
      if (v9 <= 0x7FFFFFFFFFFFFFF7)
      {
LABEL_7:
        v10 = v9;
        if (v9 >= 0x17)
        {
          if ((v9 | 7) == 0x17)
          {
            v30 = 25;
          }

          else
          {
            v30 = (v9 | 7) + 1;
          }

          v11 = operator new(v30);
          __dst[1] = v10;
          v162 = v30 | 0x8000000000000000;
          __dst[0] = v11;
        }

        else
        {
          HIBYTE(v162) = v9;
          v11 = __dst;
          if (!v9)
          {
LABEL_32:
            *(v10 + v11) = 0;
            std::locale::locale(&v163, v168);
            *&v163.__r_.__value_.__r.__words[1] = *&v168[8];
            v164 = *&v168[24];
            v165 = *&v168[40];
            v166 = v169;
            if (v169)
            {
              atomic_fetch_add_explicit((v169 + 8), 1uLL, memory_order_relaxed);
            }

            v167 = *(&v169 + 1);
            v31 = sub_1000018B8(__dst, &v163, &v170, 0);
            v32 = v166;
            if (v166 && !atomic_fetch_add(&v166->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v32->__on_zero_shared)(v32);
              std::__shared_weak_count::__release_weak(v32);
              std::locale::~locale(&v163);
              if ((SHIBYTE(v162) & 0x80000000) == 0)
              {
LABEL_37:
                if (v31)
                {
                  goto LABEL_38;
                }

                goto LABEL_48;
              }
            }

            else
            {
              std::locale::~locale(&v163);
              if ((SHIBYTE(v162) & 0x80000000) == 0)
              {
                goto LABEL_37;
              }
            }

            operator delete(__dst[0]);
            if (v31)
            {
LABEL_38:
              v33 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v170 + 1) - v170) >> 3));
              if (*(&v170 + 1) == v170)
              {
                v34 = 0;
              }

              else
              {
                v34 = v33;
              }

              sub_1000158E4(v170, *(&v170 + 1), &buf, v34, 1);
              v35 = v170;
              if (v170 == *(&v170 + 1))
              {
LABEL_178:
                v104 = v169;
                if (v169 && !atomic_fetch_add((v169 + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v104->__on_zero_shared)(v104);
                  std::__shared_weak_count::__release_weak(v104);
                }

                std::locale::~locale(v168);
                v105 = v170;
                if (v170)
                {
                  v106 = *(&v170 + 1);
                  v107 = v170;
                  if (*(&v170 + 1) != v170)
                  {
                    do
                    {
                      v108 = *(v106 - 1);
                      v106 -= 3;
                      if (v108 < 0)
                      {
                        operator delete(*v106);
                      }
                    }

                    while (v106 != v105);
                    v107 = v170;
                  }

                  *(&v170 + 1) = v105;
                  operator delete(v107);
                }

                goto LABEL_213;
              }

              memset(__p, 170, sizeof(__p));
              v36 = strlen(v5);
              if (v36 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_319;
              }

              v37 = v36;
              if (v36 >= 0x17)
              {
                if ((v36 | 7) == 0x17)
                {
                  v41 = 25;
                }

                else
                {
                  v41 = (v36 | 7) + 1;
                }

                p_buf = operator new(v41);
                buf.st_ino = v37;
                *&buf.st_uid = v41 | 0x8000000000000000;
                *&buf.st_dev = p_buf;
              }

              else
              {
                HIBYTE(buf.st_gid) = v36;
                p_buf = &buf;
                if (!v36)
                {
LABEL_57:
                  *(&p_buf->st_dev + v37) = 0;
                  v42 = *(v35 + 23);
                  if (v42 >= 0)
                  {
                    v43 = v35;
                  }

                  else
                  {
                    v43 = *v35;
                  }

                  if (v42 >= 0)
                  {
                    v44 = *(v35 + 23);
                  }

                  else
                  {
                    v44 = *(v35 + 8);
                  }

                  v45 = std::string::append(&buf, v43, v44);
                  v46 = *&v45->__r_.__value_.__l.__data_;
                  __p[2] = v45->__r_.__value_.__r.__words[2];
                  *__p = v46;
                  v45->__r_.__value_.__l.__size_ = 0;
                  v45->__r_.__value_.__r.__words[2] = 0;
                  v45->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(buf.st_gid) < 0)
                  {
                    operator delete(*&buf.st_dev);
                  }

                  v47.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                  v47.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                  *&buf.st_blksize = v47;
                  *buf.st_qspare = v47;
                  buf.st_birthtimespec = v47;
                  *&buf.st_size = v47;
                  buf.st_mtimespec = v47;
                  buf.st_ctimespec = v47;
                  *&buf.st_uid = v47;
                  buf.st_atimespec = v47;
                  *&buf.st_dev = v47;
                  if (SHIBYTE(__p[2]) >= 0)
                  {
                    v48 = __p;
                  }

                  else
                  {
                    v48 = __p[0];
                  }

                  if (!stat(v48, &buf))
                  {
                    v49 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                    v50 = opendir(v49);
                    v51 = v50;
                    if (v50)
                    {
                      readdir(v50);
                      closedir(v51);
                    }
                  }

                  v52 = __p;
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    v52 = __p[0];
                  }

                  v53 = [NSString stringWithFormat:@"%s", v52];
                  [v6 addObject:v53];

                  if (SHIBYTE(__p[2]) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (v35 + 24 == *(&v170 + 1))
                  {
                    goto LABEL_178;
                  }

                  memset(__p, 170, sizeof(__p));
                  v54 = strlen(v5);
                  if (v54 > 0x7FFFFFFFFFFFFFF7)
                  {
                    goto LABEL_319;
                  }

                  v55 = v54;
                  if (v54 >= 0x17)
                  {
                    if ((v54 | 7) == 0x17)
                    {
                      v75 = 25;
                    }

                    else
                    {
                      v75 = (v54 | 7) + 1;
                    }

                    v56 = operator new(v75);
                    buf.st_ino = v55;
                    *&buf.st_uid = v75 | 0x8000000000000000;
                    *&buf.st_dev = v56;
                  }

                  else
                  {
                    HIBYTE(buf.st_gid) = v54;
                    v56 = &buf;
                    if (!v54)
                    {
LABEL_126:
                      *(&v56->st_dev + v55) = 0;
                      v76 = *(v35 + 47);
                      if (v76 >= 0)
                      {
                        v77 = (v35 + 24);
                      }

                      else
                      {
                        v77 = *(v35 + 24);
                      }

                      if (v76 >= 0)
                      {
                        v78 = *(v35 + 47);
                      }

                      else
                      {
                        v78 = *(v35 + 32);
                      }

                      v79 = std::string::append(&buf, v77, v78);
                      v80 = *&v79->__r_.__value_.__l.__data_;
                      __p[2] = v79->__r_.__value_.__r.__words[2];
                      *__p = v80;
                      v79->__r_.__value_.__l.__size_ = 0;
                      v79->__r_.__value_.__r.__words[2] = 0;
                      v79->__r_.__value_.__r.__words[0] = 0;
                      if (SHIBYTE(buf.st_gid) < 0)
                      {
                        operator delete(*&buf.st_dev);
                      }

                      v81.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                      v81.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                      *&buf.st_blksize = v81;
                      *buf.st_qspare = v81;
                      buf.st_birthtimespec = v81;
                      *&buf.st_size = v81;
                      buf.st_mtimespec = v81;
                      buf.st_ctimespec = v81;
                      *&buf.st_uid = v81;
                      buf.st_atimespec = v81;
                      *&buf.st_dev = v81;
                      if (SHIBYTE(__p[2]) >= 0)
                      {
                        v82 = __p;
                      }

                      else
                      {
                        v82 = __p[0];
                      }

                      if (!stat(v82, &buf))
                      {
                        v83 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                        v84 = opendir(v83);
                        v85 = v84;
                        if (v84)
                        {
                          readdir(v84);
                          closedir(v85);
                        }
                      }

                      v86 = __p;
                      if (SHIBYTE(__p[2]) < 0)
                      {
                        v86 = __p[0];
                      }

                      v87 = [NSString stringWithFormat:@"%s", v86];
                      [v6 addObject:v87];

                      if (SHIBYTE(__p[2]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (v35 + 48 == *(&v170 + 1))
                      {
                        goto LABEL_178;
                      }

                      memset(__p, 170, sizeof(__p));
                      v88 = strlen(v5);
                      if (v88 <= 0x7FFFFFFFFFFFFFF7)
                      {
                        v89 = v88;
                        if (v88 >= 0x17)
                        {
                          if ((v88 | 7) == 0x17)
                          {
                            v91 = 25;
                          }

                          else
                          {
                            v91 = (v88 | 7) + 1;
                          }

                          v90 = operator new(v91);
                          buf.st_ino = v89;
                          *&buf.st_uid = v91 | 0x8000000000000000;
                          *&buf.st_dev = v90;
                        }

                        else
                        {
                          HIBYTE(buf.st_gid) = v88;
                          v90 = &buf;
                          if (!v88)
                          {
                            goto LABEL_157;
                          }
                        }

                        memcpy(v90, v5, v89);
LABEL_157:
                        *(&v90->st_dev + v89) = 0;
                        v92 = *(v35 + 71);
                        if (v92 >= 0)
                        {
                          v93 = (v35 + 48);
                        }

                        else
                        {
                          v93 = *(v35 + 48);
                        }

                        if (v92 >= 0)
                        {
                          v94 = *(v35 + 71);
                        }

                        else
                        {
                          v94 = *(v35 + 56);
                        }

                        v95 = std::string::append(&buf, v93, v94);
                        v96 = *&v95->__r_.__value_.__l.__data_;
                        __p[2] = v95->__r_.__value_.__r.__words[2];
                        *__p = v96;
                        v95->__r_.__value_.__l.__size_ = 0;
                        v95->__r_.__value_.__r.__words[2] = 0;
                        v95->__r_.__value_.__r.__words[0] = 0;
                        if (SHIBYTE(buf.st_gid) < 0)
                        {
                          operator delete(*&buf.st_dev);
                        }

                        v97.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                        v97.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                        *&buf.st_blksize = v97;
                        *buf.st_qspare = v97;
                        buf.st_birthtimespec = v97;
                        *&buf.st_size = v97;
                        buf.st_mtimespec = v97;
                        buf.st_ctimespec = v97;
                        *&buf.st_uid = v97;
                        buf.st_atimespec = v97;
                        *&buf.st_dev = v97;
                        if (SHIBYTE(__p[2]) >= 0)
                        {
                          v98 = __p;
                        }

                        else
                        {
                          v98 = __p[0];
                        }

                        if (!stat(v98, &buf))
                        {
                          v99 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                          v100 = opendir(v99);
                          v101 = v100;
                          if (v100)
                          {
                            readdir(v100);
                            closedir(v101);
                          }
                        }

                        v102 = __p;
                        if (SHIBYTE(__p[2]) < 0)
                        {
                          v102 = __p[0];
                        }

                        v103 = [NSString stringWithFormat:@"%s", v102];
                        [v6 addObject:v103];

                        if (SHIBYTE(__p[2]) < 0)
                        {
                          operator delete(__p[0]);
                        }

                        goto LABEL_178;
                      }

LABEL_319:
                      sub_100001210();
                    }
                  }

                  memcpy(v56, v5, v55);
                  goto LABEL_126;
                }
              }

              memcpy(p_buf, v5, v37);
              goto LABEL_57;
            }

LABEL_48:
            v39 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              buf.st_dev = 136315394;
              *&buf.st_mode = v5;
              WORD2(buf.st_ino) = 2080;
              *(&buf.st_ino + 6) = "CommCenter-.*ips.*";
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No file found: dir [%s] pattern [%s]", &buf, 0x16u);
            }

            goto LABEL_178;
          }
        }

        memcpy(v11, v5, v10);
        goto LABEL_32;
      }
    }

    else
    {
      v9 = strlen(v5);
      if (v9 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_7;
      }
    }

    sub_100001210();
  }

  if ([v155 isEqualToString:@"basebandLogLastDumped"])
  {
    v12 = [(BasebandLogDEHelper *)self getAgeLimitForAttachment];
    v13 = v12;
    memset(&buf, 170, 24);
    util::findLastLogDumpTimestamp(abm::trace::kSnapshotFolder, abm::trace::kLogDirPrefix, v12, 1, 0, &buf);
    if ((buf.st_gid & 0x80000000) == 0)
    {
      st_gid_high = HIBYTE(buf.st_gid);
    }

    else
    {
      st_gid_high = buf.st_ino;
    }

    if (!st_gid_high)
    {
      v40 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *v168 = 67109120;
        *&v168[4] = v13;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Finding the last dumped log: No log found in last %d sec", v168, 8u);
      }

      goto LABEL_201;
    }

    *(&v163.__r_.__value_.__s + 23) = 2;
    strcpy(&v163, ".*");
    if ((buf.st_gid & 0x80000000) == 0)
    {
      v15 = &buf;
    }

    else
    {
      v15 = *&buf.st_dev;
    }

    v16 = std::string::append(&v163, v15, st_gid_high);
    v17 = *&v16->__r_.__value_.__l.__data_;
    *&v168[16] = *(&v16->__r_.__value_.__l + 2);
    *v168 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = v168[23];
    if ((v168[23] & 0x8000000000000000) != 0)
    {
      v18 = *&v168[8];
      v21 = (*&v168[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v21 - *&v168[8] < 2)
      {
        v57 = 0x7FFFFFFFFFFFFFF7;
        v19 = *&v168[8] + 2;
        if (0x7FFFFFFFFFFFFFF7 - (*&v168[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v168[8] + 2 - v21)
        {
          sub_100001210();
        }

        v20 = *v168;
        if (v21 >= 0x3FFFFFFFFFFFFFF3)
        {
          v60 = 0;
LABEL_95:
          v61 = operator new(v57);
          v62 = v61;
          if (v18)
          {
            memmove(v61, v20, v18);
          }

          *&v62[v18] = 10798;
          if (!v60)
          {
            operator delete(v20);
          }

          *&v168[8] = v19;
          *&v168[16] = v57 | 0x8000000000000000;
          *v168 = v62;
          v63 = &v62[v19];
          goto LABEL_195;
        }

LABEL_86:
        v58 = 2 * v21;
        if (v19 > 2 * v21)
        {
          v58 = v19;
        }

        if ((v58 | 7) == 0x17)
        {
          v59 = 25;
        }

        else
        {
          v59 = (v58 | 7) + 1;
        }

        if (v58 >= 0x17)
        {
          v57 = v59;
        }

        else
        {
          v57 = 23;
        }

        v60 = v21 == 22;
        goto LABEL_95;
      }

      v71 = *v168;
      *(*v168 + *&v168[8]) = 10798;
      v72 = v18 + 2;
      if ((v168[23] & 0x80000000) == 0)
      {
        goto LABEL_118;
      }
    }

    else
    {
      if ((v168[23] - 21) < 2)
      {
        v19 = v168[23] + 2;
        v20 = v168;
        v21 = 22;
        goto LABEL_86;
      }

      v71 = v168;
      *&v168[v168[23]] = 10798;
      v72 = v18 + 2;
      if ((v168[23] & 0x80000000) == 0)
      {
LABEL_118:
        v168[23] = v72 & 0x7F;
LABEL_194:
        v63 = &v71[v72];
LABEL_195:
        *v63 = 0;
        *&v170 = *&v168[8];
        v109 = *v168;
        *(&v170 + 7) = *&v168[15];
        v110 = v168[23];
        memset(v168, 0, 24);
        if (SHIBYTE(v159) < 0)
        {
          operator delete(v158);
          v158 = v109;
          *&v159 = v170;
          *(&v159 + 7) = *(&v170 + 7);
          HIBYTE(v159) = v110;
          if ((v168[23] & 0x80000000) != 0)
          {
            operator delete(*v168);
          }
        }

        else
        {
          v158 = v109;
          *&v159 = v170;
          *(&v159 + 7) = *(&v170 + 7);
          HIBYTE(v159) = v110;
        }

        if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v163.__r_.__value_.__l.__data_);
        }

LABEL_201:
        if ((SHIBYTE(buf.st_gid) & 0x80000000) == 0)
        {
          goto LABEL_213;
        }

        v111 = *&buf.st_dev;
        goto LABEL_212;
      }
    }

    *&v168[8] = v72;
    goto LABEL_194;
  }

  if (![v155 length])
  {
    goto LABEL_213;
  }

  v168[23] = 2;
  strcpy(v168, ".*");
  v22 = [v155 UTF8String];
  v23 = strlen(v22);
  v24 = std::string::append(v168, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  *&buf.st_uid = *(&v24->__r_.__value_.__l + 2);
  *&buf.st_dev = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  st_ino = SHIBYTE(buf.st_gid);
  if ((SHIBYTE(buf.st_gid) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf.st_gid) - 21) < 2)
    {
      v27 = SHIBYTE(buf.st_gid) + 2;
      v28 = &buf;
      v29 = 22;
LABEL_103:
      v65 = 2 * v29;
      if (v27 > 2 * v29)
      {
        v65 = v27;
      }

      if ((v65 | 7) == 0x17)
      {
        v66 = 25;
      }

      else
      {
        v66 = (v65 | 7) + 1;
      }

      if (v65 >= 0x17)
      {
        v64 = v66;
      }

      else
      {
        v64 = 23;
      }

      v67 = v29 == 22;
      goto LABEL_112;
    }

    v73 = &buf;
    *(&buf.st_dev + SHIBYTE(buf.st_gid)) = 10798;
    v74 = st_ino + 2;
    if ((SHIBYTE(buf.st_gid) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_204;
  }

  st_ino = buf.st_ino;
  v29 = (*&buf.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v29 - buf.st_ino >= 2)
  {
    v73 = *&buf.st_dev;
    *(*&buf.st_dev + buf.st_ino) = 10798;
    v74 = st_ino + 2;
    if ((SHIBYTE(buf.st_gid) & 0x80000000) == 0)
    {
LABEL_120:
      HIBYTE(buf.st_gid) = v74 & 0x7F;
LABEL_205:
      v70 = v73 + v74;
      goto LABEL_206;
    }

LABEL_204:
    buf.st_ino = v74;
    goto LABEL_205;
  }

  v64 = 0x7FFFFFFFFFFFFFF7;
  v27 = buf.st_ino + 2;
  if (0x7FFFFFFFFFFFFFF7 - (*&buf.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < buf.st_ino + 2 - v29)
  {
    sub_100001210();
  }

  v28 = *&buf.st_dev;
  if (v29 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_103;
  }

  v67 = 0;
LABEL_112:
  v68 = operator new(v64);
  v69 = v68;
  if (st_ino)
  {
    memmove(v68, v28, st_ino);
  }

  *&v69[st_ino] = 10798;
  if (!v67)
  {
    operator delete(v28);
  }

  buf.st_ino = v27;
  *&buf.st_uid = v64 | 0x8000000000000000;
  *&buf.st_dev = v69;
  v70 = &v69[v27];
LABEL_206:
  *v70 = 0;
  v112 = *&buf.st_dev;
  v163.__r_.__value_.__r.__words[0] = buf.st_ino;
  *(v163.__r_.__value_.__r.__words + 7) = *(&buf.st_ino + 7);
  v113 = HIBYTE(buf.st_gid);
  memset(&buf, 0, 24);
  if (SHIBYTE(v159) < 0)
  {
    operator delete(v158);
    v158 = v112;
    *&v159 = v163.__r_.__value_.__r.__words[0];
    *(&v159 + 7) = *(v163.__r_.__value_.__r.__words + 7);
    HIBYTE(v159) = v113;
    if (SHIBYTE(buf.st_gid) < 0)
    {
      operator delete(*&buf.st_dev);
    }
  }

  else
  {
    v158 = v112;
    *&v159 = v163.__r_.__value_.__r.__words[0];
    *(&v159 + 7) = *(v163.__r_.__value_.__r.__words + 7);
    HIBYTE(v159) = v113;
  }

  if ((v168[23] & 0x80000000) != 0)
  {
    v111 = *v168;
LABEL_212:
    operator delete(v111);
  }

LABEL_213:
  v114 = HIBYTE(v159);
  v115 = HIBYTE(v159);
  if (v159 < 0)
  {
    v114 = v159;
  }

  if (v114)
  {
    __dst[0] = 0xAAAAAAAAAAAAAAAALL;
    v116 = xpc_dictionary_create(0, 0, 0);
    v117 = v116;
    if (v116)
    {
      __dst[0] = v116;
    }

    else
    {
      v117 = xpc_null_create();
      __dst[0] = v117;
      if (!v117)
      {
        v118 = xpc_null_create();
        v117 = 0;
        goto LABEL_223;
      }
    }

    if (xpc_get_type(v117) == &_xpc_type_dictionary)
    {
      xpc_retain(v117);
      goto LABEL_224;
    }

    v118 = xpc_null_create();
LABEL_223:
    __dst[0] = v118;
LABEL_224:
    xpc_release(v117);
    v163.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    v163.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    abm::HelperClient::create(&v163, abm::helper::kBasebandLogDEHelperName, v119);
    if (!v163.__r_.__value_.__r.__words[0])
    {
LABEL_260:
      size = v163.__r_.__value_.__l.__size_;
      if (v163.__r_.__value_.__l.__size_ && !atomic_fetch_add((v163.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (size->__on_zero_shared)(size);
        std::__shared_weak_count::__release_weak(size);
      }

      xpc_release(__dst[0]);
      v115 = HIBYTE(v159);
      goto LABEL_264;
    }

    v120 = xpc_dictionary_create(0, 0, 0);
    if (v120 || (v120 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v120) == &_xpc_type_dictionary)
      {
        xpc_retain(v120);
        v121 = v120;
      }

      else
      {
        v121 = xpc_null_create();
      }
    }

    else
    {
      v121 = xpc_null_create();
      v120 = 0;
    }

    xpc_release(v120);
    v122 = xpc_array_create(0, 0);
    if (v122 || (v122 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v122) == &_xpc_type_array)
      {
        xpc_retain(v122);
        v123 = v122;
      }

      else
      {
        v123 = xpc_null_create();
      }
    }

    else
    {
      v123 = xpc_null_create();
      v122 = 0;
    }

    xpc_release(v122);
    if (v159 >= 0)
    {
      v124 = &v158;
    }

    else
    {
      v124 = v158;
    }

    v125 = xpc_string_create(v124);
    if (!v125)
    {
      v125 = xpc_null_create();
    }

    xpc_array_append_value(v123, v125);
    xpc_release(v125);
    if (v123)
    {
      xpc_retain(v123);
      v126 = v123;
    }

    else
    {
      v126 = xpc_null_create();
    }

    xpc_dictionary_set_value(v121, abm::helper::kKeyMatchingPattern, v126);
    v127 = xpc_null_create();
    xpc_release(v126);
    xpc_release(v127);
    v128 = xpc_BOOL_create(1);
    if (!v128)
    {
      v128 = xpc_null_create();
    }

    xpc_dictionary_set_value(v121, abm::helper::kKeyAllowToDelete, v128);
    v129 = xpc_null_create();
    xpc_release(v128);
    xpc_release(v129);
    v130 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
    {
      v132 = &v158;
      if (v159 < 0)
      {
        v132 = v158;
      }

      buf.st_dev = 136315138;
      *&buf.st_mode = v132;
      _os_log_error_impl(&_mh_execute_header, v130, OS_LOG_TYPE_ERROR, "Getting baseband snapshot logs with [%s]", &buf, 0xCu);
      *&v133 = 0xAAAAAAAAAAAAAAAALL;
      *(&v133 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_dev = v133;
      *&buf.st_uid = v133;
      object = v121;
      if (v121)
      {
        goto LABEL_249;
      }
    }

    else
    {
      *&v131 = 0xAAAAAAAAAAAAAAAALL;
      *(&v131 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buf.st_dev = v131;
      *&buf.st_uid = v131;
      object = v121;
      if (v121)
      {
LABEL_249:
        xpc_retain(v121);
LABEL_254:
        abm::HelperClient::perform();
        xpc_release(object);
        if (buf.st_dev || xpc_get_type(__dst[0]) != &_xpc_type_dictionary)
        {
          v134 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            sub_10001F3AC(v168, &buf);
            v142 = v168[23] >= 0 ? v168 : *v168;
            LODWORD(v170) = 136315138;
            *(&v170 + 4) = v142;
            _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "Failed to get baseband snapshot logs: %s", &v170, 0xCu);
            if ((v168[23] & 0x80000000) != 0)
            {
              operator delete(*v168);
            }
          }

LABEL_257:
          if (*(&buf.st_rdev + 7) < 0)
          {
            operator delete(buf.st_ino);
          }

          xpc_release(v123);
          xpc_release(v121);
          goto LABEL_260;
        }

        value = xpc_dictionary_get_value(__dst[0], abm::helper::kKeyFoundList);
        v139 = value;
        if (value)
        {
          xpc_retain(value);
        }

        else
        {
          v139 = xpc_null_create();
        }

        v140 = xpc_null_create();
        if (v139 && xpc_get_type(v139) == &_xpc_type_array)
        {
          xpc_retain(v139);
          v141 = v139;
        }

        else
        {
          v141 = xpc_null_create();
        }

        if (xpc_get_type(v141) != &_xpc_type_array)
        {
          if (v140)
          {
            xpc_retain(v140);
            v143 = v140;
          }

          else
          {
            v143 = xpc_null_create();
          }

          xpc_release(v141);
          v141 = v143;
        }

        xpc_release(v140);
        xpc_release(v139);
        if (v141)
        {
          xpc_retain(v141);
          v144 = v141;
        }

        else
        {
          v144 = xpc_null_create();
          if (!v144)
          {
            v144 = xpc_null_create();
            v145 = 0;
            goto LABEL_290;
          }
        }

        xpc_retain(v144);
        v145 = v144;
LABEL_290:
        xpc_release(v145);
        for (i = 0; ; ++i)
        {
          if (v141)
          {
            xpc_retain(v141);
            v148 = v141;
          }

          else
          {
            v148 = xpc_null_create();
          }

          if (xpc_get_type(v141) == &_xpc_type_array)
          {
            count = xpc_array_get_count(v141);
            if (!v148)
            {
LABEL_300:
              v150 = xpc_null_create();
              goto LABEL_301;
            }
          }

          else
          {
            count = 0;
            if (!v148)
            {
              goto LABEL_300;
            }
          }

          xpc_retain(v148);
          v150 = v148;
LABEL_301:
          xpc_release(v148);
          xpc_release(v150);
          if (i == count && v144 == v150)
          {
            xpc_release(v144);
            xpc_release(v141);
            goto LABEL_257;
          }

          memset(v168, 170, 24);
          v151 = xpc_array_get_value(v144, i);
          *&v170 = v151;
          if (v151)
          {
            xpc_retain(v151);
          }

          else
          {
            *&v170 = xpc_null_create();
          }

          xpc::dyn_cast_or_default(v168, &v170, "", v152);
          xpc_release(v170);
          if ((v168[23] & 0x80000000) == 0)
          {
            if (!v168[23])
            {
              goto LABEL_313;
            }

            v153 = v168;
LABEL_311:
            v154 = [NSString stringWithUTF8String:v153];
            [v156 addObject:v154];

            if ((v168[23] & 0x80000000) == 0)
            {
              goto LABEL_313;
            }

            goto LABEL_312;
          }

          if (*&v168[8])
          {
            v153 = *v168;
            goto LABEL_311;
          }

LABEL_312:
          operator delete(*v168);
LABEL_313:
          if (v144)
          {
            xpc_retain(v144);
            v147 = v144;
          }

          else
          {
            v147 = xpc_null_create();
          }

          xpc_release(v147);
        }
      }
    }

    object = xpc_null_create();
    goto LABEL_254;
  }

LABEL_264:
  v136 = v156;
  if (v115 < 0)
  {
    operator delete(v158);
  }

  return v136;
}

- (BOOL)triggerBasebandDiagnostics
{
  v3 = dispatch_group_create();
  v4 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    v12 = 30;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Log monitor timer1 [%ds] started", &v11, 8u);
  }

  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v5 = dispatch_time(0, 30000000000);
  dispatch_group_wait(v3, v5);
  v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Log monitor timer1 completed", &v11, 2u);
  }

  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  if (![(BasebandLogDEHelper *)self checkBasebandBootStateAndReset]&& ![(BasebandLogDEHelper *)self checkBasebandOperatingModeAndSet])
  {
    [(BasebandLogDEHelper *)self triggerBasebandBlindScanning];
  }

  v7 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    v12 = 90;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Log monitor timer2 [%ds] started", &v11, 8u);
  }

  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v8 = dispatch_time(0, 90000000000);
  dispatch_group_wait(v3, v8);
  v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Log monitor timer2 completed", &v11, 2u);
  }

  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
    dispatch_release(v3);
  }

  return 1;
}

- (BOOL)triggerBasebandBlindScanning
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Try baseband blind scanning", buf, 2u);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_dictionary)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = xpc_int64_create(5000);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, abm::kKeyTimeout, v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  cntrl = self->fManager.__cntrl_;
  ptr = self->fManager.__ptr_;
  v22 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v9 = abm::kCommandTryBlindScanning;
  v10 = strlen(abm::kCommandTryBlindScanning);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    __dst[1] = v11;
    v20 = v13 | 0x8000000000000000;
    __dst[0] = v12;
    goto LABEL_21;
  }

  HIBYTE(v20) = v10;
  v12 = __dst;
  if (v10)
  {
LABEL_21:
    memmove(v12, v9, v11);
  }

  *(v11 + v12) = 0;
  abm::client::PerformCommand();
  v14 = *buf;
  v15 = v24;
  v16 = v25;
  HIBYTE(v25) = 0;
  LOBYTE(v24) = 0;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }

  v17 = v22;
  if (v22 && !atomic_fetch_add(v22 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v5);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  return v14 == 0;
}

- (BOOL)checkBasebandOperatingModeAndSet
{
  v70 = 0xAAAAAAAAE020E002;
  __p = 0uLL;
  v72 = 0;
  object = xpc_null_create();
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = xpc_int64_create(5000);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v6 = abm::kKeyTimeout;
  xpc_dictionary_set_value(v4, abm::kKeyTimeout, v5);
  v7 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v7);
  cntrl = self->fManager.__cntrl_;
  ptr = self->fManager.__ptr_;
  v68 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v9 = abm::kCommandGetBasebandOperatingMode;
  v10 = strlen(abm::kCommandGetBasebandOperatingMode);
  v61 = v4;
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001210();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *&__dst[8] = v11;
    *&__dst[16] = v13 | 0x8000000000000000;
    *__dst = v12;
    goto LABEL_19;
  }

  __dst[23] = v10;
  v12 = __dst;
  if (v10)
  {
LABEL_19:
    memmove(v12, v9, v11);
  }

  v12[v11] = 0;
  abm::client::PerformCommand();
  LODWORD(v70) = *buf;
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p);
  }

  __p = *&buf[8];
  v72 = *&buf[24];
  buf[31] = 0;
  buf[8] = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v68->__on_zero_shared)(v68);
    std::__shared_weak_count::__release_weak(v68);
    v14 = object;
    if (object)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v14 = object;
    if (object)
    {
      goto LABEL_30;
    }
  }

  v14 = xpc_null_create();
  if (!v14)
  {
    v15 = xpc_null_create();
    v14 = 0;
    goto LABEL_33;
  }

LABEL_30:
  if (xpc_get_type(v14) == &_xpc_type_dictionary)
  {
    xpc_retain(v14);
    v15 = v14;
  }

  else
  {
    v15 = xpc_null_create();
  }

LABEL_33:
  xpc_release(v14);
  if (v70)
  {
    v16 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10001F3AC(buf, &v70);
      v17 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      *__dst = 136315138;
      *&__dst[4] = v17;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Getting baseband operating mode failed : %s", __dst, 0xCu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_41;
  }

  if (xpc_get_type(v15) != &_xpc_type_dictionary)
  {
LABEL_41:
    v18 = 8;
    goto LABEL_42;
  }

  value = xpc_dictionary_get_value(v15, abm::kKeyBasebandOperatingMode);
  *buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v58 = xpc::dyn_cast_or_default(buf, 8, v27);
  xpc_release(*buf);
  v18 = v58;
LABEL_42:
  v19 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (v18 > 7)
    {
      v20 = "Unknown";
    }

    else
    {
      v20 = (&off_100031210)[v18];
    }

    *buf = 136315138;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Baseband operating mode: %s", buf, 0xCu);
  }

  v21 = objc_alloc_init(RadiosPreferences);
  if ([v21 airplaneMode])
  {
    v22 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (v18 > 7)
      {
        v23 = "Unknown";
      }

      else
      {
        v23 = (&off_100031210)[v18];
      }

      *buf = 136315138;
      *&buf[4] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Airplane mode enabled. continue with [%s] mode", buf, 0xCu);
    }

    goto LABEL_119;
  }

  v24 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (v18 > 7)
    {
      v25 = "Unknown";
    }

    else
    {
      v25 = (&off_100031210)[v18];
    }

    *buf = 136315138;
    *&buf[4] = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "BB mode [%s], airplane mode OFF. Toggling BB mode", buf, 0xCu);
  }

  v28 = xpc_dictionary_create(0, 0, 0);
  if (v28 || (v28 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v28) == &_xpc_type_dictionary)
    {
      xpc_retain(v28);
      v29 = v28;
    }

    else
    {
      v29 = xpc_null_create();
    }
  }

  else
  {
    v29 = xpc_null_create();
    v28 = 0;
  }

  xpc_release(v28);
  v30 = xpc_int64_create(1);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v31 = abm::kKeyBasebandOperatingMode;
  xpc_dictionary_set_value(v29, abm::kKeyBasebandOperatingMode, v30);
  v32 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v32);
  v33 = xpc_int64_create(5000);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  xpc_dictionary_set_value(v29, v6, v33);
  v34 = xpc_null_create();
  xpc_release(v33);
  xpc_release(v34);
  LOBYTE(self->fGroupUpdate.gr_mem) = 1;
  gr_passwd = self->fGroupLogDump.gr_passwd;
  if (gr_passwd)
  {
    dispatch_retain(self->fGroupLogDump.gr_passwd);
    dispatch_group_enter(gr_passwd);
  }

  gr_mem = self->fGroupLogDump.gr_mem;
  self->fGroupLogDump.gr_mem = gr_passwd;
  if (gr_mem)
  {
    dispatch_group_leave(gr_mem);
    dispatch_release(gr_mem);
  }

  *&v37 = 0xAAAAAAAAAAAAAAAALL;
  *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v37;
  *&buf[16] = v37;
  v38 = self->fManager.__cntrl_;
  v65 = self->fManager.__ptr_;
  v66 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(v38 + 1, 1uLL, memory_order_relaxed);
  }

  v39 = abm::kCommandSetBasebandOperatingMode;
  v40 = strlen(abm::kCommandSetBasebandOperatingMode);
  if (v40 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001210();
  }

  v41 = v40;
  if (v40 >= 0x17)
  {
    if ((v40 | 7) == 0x17)
    {
      v43 = 25;
    }

    else
    {
      v43 = (v40 | 7) + 1;
    }

    v42 = operator new(v43);
    *&__dst[8] = v41;
    *&__dst[16] = v43 | 0x8000000000000000;
    *__dst = v42;
    goto LABEL_84;
  }

  __dst[23] = v40;
  v42 = __dst;
  if (v40)
  {
LABEL_84:
    memmove(v42, v39, v41);
  }

  v42[v41] = 0;
  abm::client::PerformCommand();
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v66->__on_zero_shared)(v66);
    std::__shared_weak_count::__release_weak(v66);
    if (!*buf)
    {
      goto LABEL_91;
    }
  }

  else if (!*buf)
  {
    goto LABEL_91;
  }

  v44 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    sub_10001F3AC(__dst, buf);
    v59 = __dst[23] >= 0 ? __dst : *__dst;
    LODWORD(v73) = 136315138;
    *(&v73 + 4) = v59;
    _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Setting BB mode to LowPower failed : %s", &v73, 0xCu);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

LABEL_91:
  v45 = self->fGroupLogDump.gr_passwd;
  v46 = dispatch_time(0, 5000000000);
  if (!dispatch_group_wait(v45, v46))
  {
    goto LABEL_95;
  }

  v47 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v48 = self->fGroupLogDump.gr_mem;
    self->fGroupLogDump.gr_mem = 0;
    if (!v48)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  *__dst = 0;
  _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Setting BB mode timed out", __dst, 2u);
  v48 = self->fGroupLogDump.gr_mem;
  self->fGroupLogDump.gr_mem = 0;
  if (v48)
  {
LABEL_94:
    dispatch_group_leave(v48);
    dispatch_release(v48);
  }

LABEL_95:
  LOBYTE(self->fGroupUpdate.gr_mem) = 8;
  v49 = xpc_int64_create(0);
  if (!v49)
  {
    v49 = xpc_null_create();
  }

  xpc_dictionary_set_value(v29, v31, v49);
  v50 = xpc_null_create();
  xpc_release(v49);
  xpc_release(v50);
  v51 = self->fManager.__cntrl_;
  v63 = self->fManager.__ptr_;
  v64 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(v51 + 1, 1uLL, memory_order_relaxed);
  }

  v52 = strlen(v39);
  if (v52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001210();
  }

  v53 = v52;
  if (v52 >= 0x17)
  {
    if ((v52 | 7) == 0x17)
    {
      v55 = 25;
    }

    else
    {
      v55 = (v52 | 7) + 1;
    }

    v54 = operator new(v55);
    *(&v73 + 1) = v53;
    v74 = v55 | 0x8000000000000000;
    *&v73 = v54;
    goto LABEL_107;
  }

  HIBYTE(v74) = v52;
  v54 = &v73;
  if (v52)
  {
LABEL_107:
    memmove(v54, v39, v53);
  }

  *(v54 + v53) = 0;
  abm::client::PerformCommand();
  *buf = *__dst;
  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }

  *&buf[8] = *&__dst[8];
  *&buf[24] = v76;
  HIBYTE(v76) = 0;
  __dst[8] = 0;
  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v64->__on_zero_shared)(v64);
    std::__shared_weak_count::__release_weak(v64);
    if (*buf)
    {
      goto LABEL_115;
    }
  }

  else if (*buf)
  {
LABEL_115:
    v56 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_10001F3AC(__dst, buf);
      v60 = __dst[23] >= 0 ? __dst : *__dst;
      LODWORD(v73) = 136315138;
      *(&v73 + 4) = v60;
      _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Setting BB mode to Online failed : %s", &v73, 0xCu);
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }
    }
  }

  if (buf[31] < 0)
  {
    operator delete(*&buf[8]);
  }

  xpc_release(v29);
LABEL_119:

  xpc_release(v15);
  xpc_release(v62);
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p);
  }

  return 1;
}

- (BOOL)checkBasebandBootStateAndReset
{
  v87 = 0xAAAAAAAAE020E002;
  __p = 0uLL;
  v89 = 0;
  object = xpc_null_create();
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = xpc_int64_create(5000);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v6 = abm::kKeyTimeout;
  xpc_dictionary_set_value(v4, abm::kKeyTimeout, v5);
  v7 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v7);
  cntrl = self->fManager.__cntrl_;
  ptr = self->fManager.__ptr_;
  v85 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v9 = abm::kCommandGetBasebandBootState;
  v10 = strlen(abm::kCommandGetBasebandBootState);
  v79 = v4;
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001210();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *&__dst[8] = v11;
    *&__dst[16] = v13 | 0x8000000000000000;
    *__dst = v12;
    goto LABEL_19;
  }

  __dst[23] = v10;
  v12 = __dst;
  if (v10)
  {
LABEL_19:
    memmove(v12, v9, v11);
  }

  v12[v11] = 0;
  abm::client::PerformCommand();
  LODWORD(v87) = *v92;
  if (SHIBYTE(v89) < 0)
  {
    operator delete(__p);
  }

  __p = *&v92[8];
  v89 = v93;
  HIBYTE(v93) = 0;
  v92[8] = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    v14 = v85;
    if (!v85)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v14 = v85;
    if (!v85)
    {
      goto LABEL_27;
    }
  }

  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = object;
    if (object)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = object;
  if (object)
  {
    goto LABEL_31;
  }

LABEL_28:
  v15 = xpc_null_create();
  if (!v15)
  {
    v16 = xpc_null_create();
    v15 = 0;
    goto LABEL_34;
  }

LABEL_31:
  if (xpc_get_type(v15) == &_xpc_type_dictionary)
  {
    xpc_retain(v15);
    v16 = v15;
  }

  else
  {
    v16 = xpc_null_create();
  }

LABEL_34:
  xpc_release(v15);
  memset(__dst, 170, sizeof(__dst));
  v17 = abm::kBasebandBootStateUnknown;
  v18 = strlen(abm::kBasebandBootStateUnknown);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001210();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v18 | 7) + 1;
    }

    v20 = operator new(v24);
    *&__dst[8] = v19;
    *&__dst[16] = v24 | 0x8000000000000000;
    *__dst = v20;
LABEL_48:
    memmove(v20, v17, v19);
    v20[v19] = 0;
    v21 = &CellularExtension__metaData;
    if (v87)
    {
      goto LABEL_38;
    }

    goto LABEL_49;
  }

  __dst[23] = v18;
  v20 = __dst;
  if (v18)
  {
    goto LABEL_48;
  }

  __dst[0] = 0;
  v21 = &CellularExtension__metaData;
  if (v87)
  {
LABEL_38:
    v22 = [&v21[19].base_props getOSLogHandler];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10001F3AC(v92, &v87);
      v23 = v92[23] >= 0 ? v92 : *v92;
      *buf = 136315138;
      *&buf[4] = v23;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Check baseband boot state failed : %s", buf, 0xCu);
      if ((v92[23] & 0x80000000) != 0)
      {
        operator delete(*v92);
      }
    }

    goto LABEL_56;
  }

LABEL_49:
  if (xpc_get_type(v16) == &_xpc_type_dictionary)
  {
    value = xpc_dictionary_get_value(v16, abm::kKeyBasebandBootState);
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    xpc::dyn_cast_or_default(v92, buf, v17, v26);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

    *__dst = *v92;
    *&__dst[16] = *&v92[16];
    v92[23] = 0;
    v92[0] = 0;
    xpc_release(*buf);
  }

LABEL_56:
  v27 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = __dst;
    if (__dst[23] < 0)
    {
      v28 = *__dst;
    }

    *v92 = 136315138;
    *&v92[4] = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Baseband boot state: %s", v92, 0xCu);
  }

  v29 = strlen(v17);
  v30 = __dst[23];
  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    if (v29 == *&__dst[8])
    {
      if (v29 == -1)
      {
        sub_100002158();
      }

      if (!memcmp(*__dst, v17, v29))
      {
        goto LABEL_78;
      }
    }
  }

  else if (v29 == __dst[23] && !memcmp(__dst, v17, v29))
  {
    goto LABEL_78;
  }

  v31 = strlen(abm::kBasebandBootStateIsReady);
  if ((v30 & 0x80000000) == 0)
  {
    if (v31 == v30 && !memcmp(__dst, abm::kBasebandBootStateIsReady, v31))
    {
      goto LABEL_78;
    }

LABEL_74:
    v32 = xpc_dictionary_create(0, 0, 0);
    if (v32 || (v32 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v32) == &_xpc_type_dictionary)
      {
        xpc_retain(v32);
        v33 = v32;
      }

      else
      {
        v33 = xpc_null_create();
      }
    }

    else
    {
      v33 = xpc_null_create();
      v32 = 0;
    }

    xpc_release(v32);
    v35 = xpc_int64_create(5000);
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    xpc_dictionary_set_value(v33, v6, v35);
    v36 = xpc_null_create();
    xpc_release(v35);
    xpc_release(v36);
    v37 = xpc_string_create(abm::kBasebandResetTypeSoft);
    if (!v37)
    {
      v37 = xpc_null_create();
    }

    xpc_dictionary_set_value(v33, abm::kKeyBasebandResetType, v37);
    v38 = xpc_null_create();
    xpc_release(v37);
    xpc_release(v38);
    v39 = xpc_string_create(abm::kBasebandResetSubTypeOtherErrors);
    if (!v39)
    {
      v39 = xpc_null_create();
    }

    xpc_dictionary_set_value(v33, abm::kKeyBasebandResetSubType, v39);
    v40 = xpc_null_create();
    xpc_release(v39);
    xpc_release(v40);
    v41 = abm::helper::kBasebandLogDEHelperName;
    v42 = strlen(abm::helper::kBasebandLogDEHelperName);
    if (v42 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100001210();
    }

    v43 = v42;
    if (v42 >= 0x17)
    {
      if ((v42 | 7) == 0x17)
      {
        v45 = 25;
      }

      else
      {
        v45 = (v42 | 7) + 1;
      }

      v44 = operator new(v45);
      *&buf[8] = v43;
      v91 = v45 | 0x8000000000000000;
      *buf = v44;
    }

    else
    {
      HIBYTE(v91) = v42;
      v44 = buf;
      if (!v42)
      {
LABEL_97:
        v44[v43] = 0;
        v46 = operator new(0x38uLL);
        strcpy(v46, ": Detected baseband is not ready, attempting reset.");
        v47 = SHIBYTE(v91);
        if ((SHIBYTE(v91) & 0x8000000000000000) != 0)
        {
          v47 = *&buf[8];
          v51 = (v91 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v51 - *&buf[8] < 0x33)
          {
            v49 = *&buf[8] + 51;
            if (0x7FFFFFFFFFFFFFF7 - (v91 & 0x7FFFFFFFFFFFFFFFLL) < *&buf[8] + 51 - v51)
            {
              sub_100001210();
            }

            v50 = *buf;
            v48 = v16;
            if (v51 > 0x3FFFFFFFFFFFFFF2)
            {
              v55 = 0;
              v54 = 0x7FFFFFFFFFFFFFF7;
LABEL_112:
              v56 = operator new(v54);
              v57 = v56;
              if (v47)
              {
                memmove(v56, v50, v47);
              }

              v58 = &v57[v47];
              v59 = *(v46 + 1);
              *v58 = *v46;
              *(v58 + 1) = v59;
              *(v58 + 2) = *(v46 + 2);
              *(v58 + 47) = *(v46 + 47);
              if (!v55)
              {
                operator delete(v50);
              }

              *&buf[8] = v49;
              v91 = v54 | 0x8000000000000000;
              *buf = v57;
              v60 = &v57[v49];
              v16 = v48;
              v4 = v79;
LABEL_120:
              *v60 = 0;
              *&v92[16] = v91;
              *v92 = *buf;
              v91 = 0;
              memset(buf, 0, sizeof(buf));
              if (v92[23] >= 0)
              {
                v63 = v92;
              }

              else
              {
                v63 = *v92;
              }

              v64 = xpc_string_create(v63);
              if (!v64)
              {
                v64 = xpc_null_create();
              }

              xpc_dictionary_set_value(v33, abm::kKeyBasebandResetReason, v64);
              v65 = xpc_null_create();
              xpc_release(v64);
              xpc_release(v65);
              if ((v92[23] & 0x80000000) != 0)
              {
                operator delete(*v92);
                operator delete(v46);
                if ((SHIBYTE(v91) & 0x80000000) == 0)
                {
LABEL_127:
                  v66 = self->fManager.__cntrl_;
                  v80 = self->fManager.__ptr_;
                  v82 = v66;
                  if (!v66)
                  {
                    goto LABEL_129;
                  }

                  goto LABEL_128;
                }
              }

              else
              {
                operator delete(v46);
                if ((SHIBYTE(v91) & 0x80000000) == 0)
                {
                  goto LABEL_127;
                }
              }

              operator delete(*buf);
              v66 = self->fManager.__cntrl_;
              v81 = self->fManager.__ptr_;
              v82 = v66;
              if (!v66)
              {
LABEL_129:
                v67 = abm::kCommandResetBaseband;
                v68 = strlen(abm::kCommandResetBaseband);
                if (v68 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_100001210();
                }

                v69 = v68;
                if (v68 >= 0x17)
                {
                  if ((v68 | 7) == 0x17)
                  {
                    v71 = 25;
                  }

                  else
                  {
                    v71 = (v68 | 7) + 1;
                  }

                  v70 = operator new(v71);
                  *&buf[8] = v69;
                  v91 = v71 | 0x8000000000000000;
                  *buf = v70;
                }

                else
                {
                  HIBYTE(v91) = v68;
                  v70 = buf;
                  if (!v68)
                  {
LABEL_138:
                    v70[v69] = 0;
                    abm::client::PerformCommand();
                    LODWORD(v87) = *v92;
                    if (SHIBYTE(v89) < 0)
                    {
                      operator delete(__p);
                    }

                    __p = *&v92[8];
                    v89 = v93;
                    HIBYTE(v93) = 0;
                    v92[8] = 0;
                    if (SHIBYTE(v91) < 0)
                    {
                      operator delete(*buf);
                      v72 = v82;
                      v73 = &CellularExtension__metaData;
                      if (!v82)
                      {
                        goto LABEL_148;
                      }
                    }

                    else
                    {
                      v72 = v82;
                      v73 = &CellularExtension__metaData;
                      if (!v82)
                      {
                        goto LABEL_148;
                      }
                    }

                    if (!atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v72->__on_zero_shared)(v72);
                      std::__shared_weak_count::__release_weak(v72);
                      p_base_props = &v73[19].base_props;
                      if (v87)
                      {
                        goto LABEL_149;
                      }

                      goto LABEL_156;
                    }

LABEL_148:
                    p_base_props = &v73[19].base_props;
                    if (v87)
                    {
LABEL_149:
                      v75 = [p_base_props getOSLogHandler];
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                      {
                        sub_10001F3AC(v92, &v87);
                        v76 = v92[23] >= 0 ? v92 : *v92;
                        *buf = 136315138;
                        *&buf[4] = v76;
                        _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "Baseband soft-reset failed : %s", buf, 0xCu);
                        if ((v92[23] & 0x80000000) != 0)
                        {
                          operator delete(*v92);
                        }
                      }

                      goto LABEL_158;
                    }

LABEL_156:
                    v77 = [p_base_props getOSLogHandler];
                    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                    {
                      *v92 = 0;
                      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Baseband soft-reset success", v92, 2u);
                    }

LABEL_158:
                    xpc_release(v33);
                    v34 = 1;
                    if ((__dst[23] & 0x80) == 0)
                    {
                      goto LABEL_160;
                    }

                    goto LABEL_159;
                  }
                }

                memmove(v70, v67, v69);
                goto LABEL_138;
              }

LABEL_128:
              atomic_fetch_add_explicit(v66 + 1, 1uLL, memory_order_relaxed);
              goto LABEL_129;
            }

LABEL_103:
            v52 = 2 * v51;
            if (v49 > 2 * v51)
            {
              v52 = v49;
            }

            if ((v52 | 7) == 0x17)
            {
              v53 = 25;
            }

            else
            {
              v53 = (v52 | 7) + 1;
            }

            if (v52 >= 0x17)
            {
              v54 = v53;
            }

            else
            {
              v54 = 23;
            }

            v55 = v51 == 22;
            goto LABEL_112;
          }

          v61 = *buf;
          memmove((*buf + *&buf[8]), v46, 0x33uLL);
          v62 = v47 + 51;
          *&buf[8] = v47 + 51;
        }

        else
        {
          if (SHIBYTE(v91) < 0x17)
          {
            v48 = v16;
            v49 = SHIBYTE(v91) + 51;
            v50 = buf;
            v51 = 22;
            goto LABEL_103;
          }

          v61 = buf;
          qmemcpy(&buf[SHIBYTE(v91)], ": Detected baseband is not ready, attempting reset.", 51);
          v62 = v47 + 51;
          HIBYTE(v91) = (v47 + 51) & 0x7F;
        }

        v60 = &v61[v62];
        goto LABEL_120;
      }
    }

    memmove(v44, v41, v43);
    goto LABEL_97;
  }

  if (v31 != *&__dst[8])
  {
    goto LABEL_74;
  }

  if (v31 == -1)
  {
    sub_100002158();
  }

  if (memcmp(*__dst, abm::kBasebandBootStateIsReady, v31))
  {
    goto LABEL_74;
  }

LABEL_78:
  v34 = 0;
  if ((v30 & 0x80) == 0)
  {
    goto LABEL_160;
  }

LABEL_159:
  operator delete(*__dst);
LABEL_160:
  xpc_release(v16);
  xpc_release(v4);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(__p);
  }

  return v34;
}

- (BOOL)isCompressionModeOff
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = xpc_string_create(abm::kTraceCompression);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTraceName, v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = xpc_string_create(abm::helper::kKeyMode);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTracePropertyName, v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_int64_create(5000);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTimeout, v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v38 = xpc_null_create();
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v11;
  v37 = v11;
  cntrl = self->fManager.__cntrl_;
  ptr = self->fManager.__ptr_;
  v35 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v13 = abm::kCommandGetTraceProperty;
  v14 = strlen(abm::kCommandGetTraceProperty);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    p_dst = operator new(v17);
    __dst.__r_.__value_.__l.__size_ = v15;
    __dst.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_23;
  }

  *(&__dst.__r_.__value_.__s + 23) = v14;
  p_dst = &__dst;
  if (v14)
  {
LABEL_23:
    memmove(p_dst, v13, v15);
  }

  p_dst->__r_.__value_.__s.__data_[v15] = 0;
  abm::client::PerformCommand();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v18 = v35;
  if (v35 && !atomic_fetch_add(v35 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = v38;
    if (v38)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v19 = v38;
    if (v38)
    {
      goto LABEL_32;
    }
  }

  v19 = xpc_null_create();
  if (!v19)
  {
    v20 = xpc_null_create();
    v19 = 0;
    goto LABEL_35;
  }

LABEL_32:
  if (xpc_get_type(v19) == &_xpc_type_dictionary)
  {
    xpc_retain(v19);
    v20 = v19;
  }

  else
  {
    v20 = xpc_null_create();
  }

LABEL_35:
  xpc_release(v19);
  memset(&__dst, 0, sizeof(__dst));
  if (!LODWORD(__p[0]) && xpc_get_type(v20) == &_xpc_type_dictionary)
  {
    value = xpc_dictionary_get_value(v20, abm::kKeyTracePropertyValue);
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::dyn_cast_or_default(&v32, &object, abm::kUnknown, v22);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    __dst = v32;
    *(&v32.__r_.__value_.__s + 23) = 0;
    v32.__r_.__value_.__s.__data_[0] = 0;
    xpc_release(object);
  }

  std::to_string(&v32, 0);
  v23 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v24 = __dst.__r_.__value_.__r.__words[0];
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &__dst;
  }

  else
  {
    v25 = __dst.__r_.__value_.__r.__words[0];
  }

  v26 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  v27 = v32.__r_.__value_.__r.__words[0];
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v32;
  }

  else
  {
    v28 = v32.__r_.__value_.__r.__words[0];
  }

  v29 = strcasecmp(v25, v28);
  if (v26 < 0)
  {
    operator delete(v27);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

  operator delete(v24);
LABEL_51:
  xpc_release(v20);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[1]);
  }

  xpc_release(v4);
  return v29 == 0;
}

- (unsigned)getBasebandLogHistorySize
{
  v33 = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = xpc_string_create(abm::kTraceBaseband);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTraceName, v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = xpc_string_create(abm::kKeyTraceHistory);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTracePropertyName, v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_int64_create(5000);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTimeout, v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v32 = xpc_null_create();
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v11;
  v31 = v11;
  cntrl = self->fManager.__cntrl_;
  ptr = self->fManager.__ptr_;
  v29 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v13 = abm::kCommandGetTraceProperty;
  v14 = strlen(abm::kCommandGetTraceProperty);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    p_dst = operator new(v17);
    __dst.__r_.__value_.__l.__size_ = v15;
    __dst.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_23;
  }

  *(&__dst.__r_.__value_.__s + 23) = v14;
  p_dst = &__dst;
  if (v14)
  {
LABEL_23:
    memmove(p_dst, v13, v15);
  }

  p_dst->__r_.__value_.__s.__data_[v15] = 0;
  abm::client::PerformCommand();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v18 = v29;
  if (v29 && !atomic_fetch_add(v29 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = v32;
    if (v32)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v19 = v32;
    if (v32)
    {
      goto LABEL_32;
    }
  }

  v19 = xpc_null_create();
  if (!v19)
  {
    v20 = xpc_null_create();
    v19 = 0;
    goto LABEL_35;
  }

LABEL_32:
  if (xpc_get_type(v19) == &_xpc_type_dictionary)
  {
    xpc_retain(v19);
    v20 = v19;
  }

  else
  {
    v20 = xpc_null_create();
  }

LABEL_35:
  xpc_release(v19);
  memset(&__dst, 0, sizeof(__dst));
  if (!LODWORD(__p[0]) && xpc_get_type(v20) == &_xpc_type_dictionary)
  {
    value = xpc_dictionary_get_value(v20, abm::kKeyTracePropertyValue);
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::dyn_cast_or_default(&v26, &object, "0", v22);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    __dst = v26;
    *(&v26.__r_.__value_.__s + 23) = 0;
    v26.__r_.__value_.__s.__data_[0] = 0;
    xpc_release(object);
    sub_1000224D4(&__dst, &v33);
  }

  v23 = v33;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  xpc_release(v20);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[1]);
  }

  xpc_release(v4);
  return v23;
}

- (unsigned)getAgeLimitForAttachment
{
  v32 = 43200;
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = xpc_string_create(abm::kTraceTapToRadar);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTraceName, v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = xpc_string_create(abm::kKeyTraceAttachmentAgeLimit);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTracePropertyName, v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_int64_create(5000);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTimeout, v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  object = xpc_null_create();
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v29 = v11;
  v30 = v11;
  cntrl = self->fManager.__cntrl_;
  ptr = self->fManager.__ptr_;
  v28 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v13 = abm::kCommandGetTraceProperty;
  v14 = strlen(abm::kCommandGetTraceProperty);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v14 | 7) + 1;
    }

    p_dst = operator new(v17);
    __dst.__r_.__value_.__l.__size_ = v15;
    __dst.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_23;
  }

  *(&__dst.__r_.__value_.__s + 23) = v14;
  p_dst = &__dst;
  if (v14)
  {
LABEL_23:
    memmove(p_dst, v13, v15);
  }

  p_dst->__r_.__value_.__s.__data_[v15] = 0;
  abm::client::PerformCommand();
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v28 && !atomic_fetch_add(v28 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v28 + 16))(v28);
    std::__shared_weak_count::__release_weak(v28);
    v18 = object;
    if (object)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v18 = object;
    if (object)
    {
      goto LABEL_32;
    }
  }

  v18 = xpc_null_create();
  if (!v18)
  {
    v19 = xpc_null_create();
    v18 = 0;
    goto LABEL_35;
  }

LABEL_32:
  if (xpc_get_type(v18) == &_xpc_type_dictionary)
  {
    xpc_retain(v18);
    v19 = v18;
  }

  else
  {
    v19 = xpc_null_create();
  }

LABEL_35:
  xpc_release(v18);
  if (!LODWORD(v29[0]) && xpc_get_type(v19) == &_xpc_type_dictionary)
  {
    memset(&__dst, 170, sizeof(__dst));
    value = xpc_dictionary_get_value(v19, abm::kKeyTracePropertyValue);
    v26 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v26 = xpc_null_create();
    }

    std::to_string(&__p, v32);
    xpc::dyn_cast_or_default();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    xpc_release(v26);
    sub_1000224D4(&__dst, &v32);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v21 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  v23 = v32;
  if (v22)
  {
    LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__dst.__r_.__value_.__r.__words[0]) = v32;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "log age limit for attachement = %d sec", &__dst, 8u);
  }

  xpc_release(v19);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  xpc_release(v4);
  return v23;
}

- (id)dumpTelephonyLogs:(id)a3 :(BOOL)a4 :(id)a5
{
  v6 = a4;
  v78 = a3;
  v79 = a5;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v78;
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_dictionary)
    {
      xpc_retain(v8);
      v10 = v8;
    }

    else
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v11 = xpc_string_create(abm::kCollectTelephonyLogs);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, abm::kKeyTraceAction, v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  Timestamp::Timestamp(&buf);
  Timestamp::asString();
  p_fGroupUpdate = &self->fGroupUpdate;
  if (&self->fGroupUpdate != __p)
  {
    if (*(&self->fGroupUpdate.gr_gid + 7) < 0)
    {
      if (SHIBYTE(__p[2]) >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v15 = HIBYTE(__p[2]);
      }

      else
      {
        v15 = __p[1];
      }

      sub_100002558(&self->fGroupUpdate.gr_name, v14, v15);
    }

    else if ((HIBYTE(__p[2]) & 0x80) != 0)
    {
      sub_100002498(&self->fGroupUpdate.gr_name, __p[0], __p[1]);
    }

    else
    {
      *&p_fGroupUpdate->gr_name = *__p;
      *&self->fGroupUpdate.gr_gid = __p[2];
    }
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    sub_1000267F8(buf.__r_.__value_.__l.__size_);
    gr_name = &self->fGroupUpdate;
    if ((*(&self->fGroupUpdate.gr_gid + 7) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_1000267F8(buf.__r_.__value_.__l.__size_);
    gr_name = &self->fGroupUpdate;
    if ((*(&self->fGroupUpdate.gr_gid + 7) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  gr_name = p_fGroupUpdate->gr_name;
LABEL_23:
  v17 = xpc_string_create(gr_name);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, abm::kKeyTimestampString, v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  if (TelephonyUtilIsInternalBuild() & 1) != 0 || (TelephonyUtilIsCarrierBuild())
  {
    if ([(BasebandLogDEHelper *)self isCompressionModeOff])
    {
      v19 = [(BasebandLogDEHelper *)self getBasebandLogHistorySize];
      if (v19 <= 0x200)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      v21 = xpc_int64_create(v20);
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      xpc_dictionary_set_value(v10, abm::kKeyTraceDumpStatePerformCompression, v21);
      v22 = xpc_null_create();
      xpc_release(v21);
      xpc_release(v22);
      v23 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        abm::helper::asString();
        v24 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = v24;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v19;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Setting compression to %s for log dump based on baseband history size [%d]", &buf, 0x12u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v25 = 1500;
  }

  else
  {
    v26 = xpc_int64_create(2);
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, abm::kKeyTraceDumpStatePerformCompression, v26);
    v27 = xpc_null_create();
    xpc_release(v26);
    xpc_release(v27);
    v25 = 300;
  }

  v28 = xpc_int64_create(v6);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, abm::kTraceSystemLogs, v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
  memset(__p, 170, 24);
  v30 = v9;
  v31 = [v9 UTF8String];
  v32 = strlen(v31);
  if (v32 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001210();
  }

  v33 = v32;
  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v39 = 25;
    }

    else
    {
      v39 = (v32 | 7) + 1;
    }

    p_dst = operator new(v39);
    __dst.__r_.__value_.__l.__size_ = v33;
    __dst.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v32;
    p_dst = &__dst;
    if (!v32)
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_58;
    }
  }

  memmove(p_dst, v31, v33);
  p_dst->__r_.__value_.__s.__data_[v33] = 0;
  size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
LABEL_51:
    if (size - 21 < 2)
    {
      v36 = size + 2;
      v37 = &__dst;
      v38 = 22;
LABEL_61:
      v40 = 2 * v38;
      if (v36 > 2 * v38)
      {
        v40 = v36;
      }

      if ((v40 | 7) == 0x17)
      {
        v41 = 25;
      }

      else
      {
        v41 = (v40 | 7) + 1;
      }

      if (v40 >= 0x17)
      {
        v42 = v41;
      }

      else
      {
        v42 = 23;
      }

      v43 = v38 == 22;
      goto LABEL_70;
    }

    v47 = &__dst;
    *(&__dst.__r_.__value_.__l.__data_ + size) = 8250;
    v48 = size + 2;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_78;
  }

LABEL_58:
  size = __dst.__r_.__value_.__l.__size_;
  v38 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v38 - __dst.__r_.__value_.__l.__size_ >= 2)
  {
    v47 = __dst.__r_.__value_.__r.__words[0];
    *(__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_) = 8250;
    v48 = size + 2;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_76:
      *(&__dst.__r_.__value_.__s + 23) = v48 & 0x7F;
LABEL_79:
      v46 = v47 + v48;
      goto LABEL_80;
    }

LABEL_78:
    __dst.__r_.__value_.__l.__size_ = v48;
    goto LABEL_79;
  }

  v36 = __dst.__r_.__value_.__l.__size_ + 2;
  if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 2 - v38)
  {
    sub_100001210();
  }

  v37 = __dst.__r_.__value_.__r.__words[0];
  if (v38 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_61;
  }

  v43 = 0;
  v42 = 0x7FFFFFFFFFFFFFF7;
LABEL_70:
  v44 = operator new(v42);
  v45 = v44;
  if (size)
  {
    memmove(v44, v37, size);
  }

  *(v45 + size) = 8250;
  if (!v43)
  {
    operator delete(v37);
  }

  __dst.__r_.__value_.__l.__size_ = v36;
  __dst.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
  __dst.__r_.__value_.__r.__words[0] = v45;
  v46 = (v45 + v36);
  v9 = v78;
LABEL_80:
  *v46 = 0;
  buf = __dst;
  memset(&__dst, 0, sizeof(__dst));
  v49 = strlen(abm::trace::kDiagnosticExtensionDumpingReason);
  v50 = std::string::append(&buf, abm::trace::kDiagnosticExtensionDumpingReason, v49);
  v51 = *&v50->__r_.__value_.__l.__data_;
  __p[2] = v50->__r_.__value_.__r.__words[2];
  *__p = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_82:
      if (!v79)
      {
        goto LABEL_88;
      }

      goto LABEL_86;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_82;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (!v79)
  {
    goto LABEL_88;
  }

LABEL_86:
  if ([v79 length])
  {
    v52 = v79;
    sub_100017704(__p, [v79 UTF8String]);
  }

LABEL_88:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v53 = __p;
  }

  else
  {
    v53 = __p[0];
  }

  v54 = xpc_string_create(v53);
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, abm::kKeyTraceDumpStateReason, v54);
  v55 = xpc_null_create();
  xpc_release(v54);
  xpc_release(v55);
  v56 = xpc_int64_create(1000 * v25 - 1000);
  if (!v56)
  {
    v56 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, abm::kKeyTimeout, v56);
  v57 = xpc_null_create();
  xpc_release(v56);
  xpc_release(v57);
  v58 = self->fGroupLogDump.gr_name;
  if (v58)
  {
    dispatch_retain(self->fGroupLogDump.gr_name);
    dispatch_group_enter(v58);
  }

  v59 = *&self->fGroupLogDump.gr_gid;
  *&self->fGroupLogDump.gr_gid = v58;
  if (v59)
  {
    dispatch_group_leave(v59);
    dispatch_release(v59);
  }

  v60 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = &self->fGroupUpdate;
    if (*(&self->fGroupUpdate.gr_gid + 7) < 0)
    {
      v61 = p_fGroupUpdate->gr_name;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v61;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Trigger telephony log dump: %s", &buf, 0xCu);
  }

  objc_initWeak(&__dst.__r_.__value_.__l.__data_, self);
  cntrl = self->fManager.__cntrl_;
  v80[1] = self->fManager.__ptr_;
  v81 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v63 = abm::kCommandTraceDumpState;
  v64 = strlen(abm::kCommandTraceDumpState);
  if (v64 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001210();
  }

  v65 = v64;
  if (v64 >= 0x17)
  {
    if ((v64 | 7) == 0x17)
    {
      v67 = 25;
    }

    else
    {
      v67 = (v64 | 7) + 1;
    }

    p_buf = operator new(v67);
    buf.__r_.__value_.__l.__size_ = v65;
    buf.__r_.__value_.__r.__words[2] = v67 | 0x8000000000000000;
    buf.__r_.__value_.__r.__words[0] = p_buf;
    goto LABEL_113;
  }

  *(&buf.__r_.__value_.__s + 23) = v64;
  p_buf = &buf;
  if (v64)
  {
LABEL_113:
    memmove(p_buf, v63, v65);
  }

  p_buf->__r_.__value_.__s.__data_[v65] = 0;
  objc_copyWeak(v80, &__dst.__r_.__value_.__l.__data_);
  abm::client::PerformCommand();
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v68 = v81;
  if (v81 && !atomic_fetch_add(v81 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v68->__on_zero_shared)(v68);
    std::__shared_weak_count::__release_weak(v68);
  }

  v69 = self->fGroupLogDump.gr_name;
  v70 = dispatch_time(0, 1000000000 * v25);
  if (dispatch_group_wait(v69, v70))
  {
    v71 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v25;
      _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "Dumping telephony logs not completed in %d sec", &buf, 8u);
      v72 = *&self->fGroupLogDump.gr_gid;
      *&self->fGroupLogDump.gr_gid = 0;
      if (!v72)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v72 = *&self->fGroupLogDump.gr_gid;
      *&self->fGroupLogDump.gr_gid = 0;
      if (!v72)
      {
LABEL_123:
        v73 = &stru_1000314F0;
        goto LABEL_134;
      }
    }

    dispatch_group_leave(v72);
    dispatch_release(v72);
    goto LABEL_123;
  }

  v74 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v75 = &self->fGroupUpdate;
    if (*(&self->fGroupUpdate.gr_gid + 7) < 0)
    {
      v75 = p_fGroupUpdate->gr_name;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v75;
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Dumping telephony logs [%s] completed", &buf, 0xCu);
  }

  if (*(&self->fGroupUpdate.gr_gid + 7) < 0)
  {
    if (!self->fGroupUpdate.gr_passwd)
    {
      goto LABEL_123;
    }

    p_fGroupUpdate = p_fGroupUpdate->gr_name;
  }

  else if (!*(&self->fGroupUpdate.gr_gid + 7))
  {
    v73 = &stru_1000314F0;
LABEL_135:
    LOBYTE(self->fGroupUpdate.gr_name) = 0;
    *(&self->fGroupUpdate.gr_gid + 7) = 0;
    goto LABEL_137;
  }

  v73 = [NSString stringWithUTF8String:p_fGroupUpdate];
LABEL_134:
  if ((*(&self->fGroupUpdate.gr_gid + 7) & 0x80000000) == 0)
  {
    goto LABEL_135;
  }

  *self->fGroupUpdate.gr_name = 0;
  self->fGroupUpdate.gr_passwd = 0;
LABEL_137:
  v76 = v73;
  objc_destroyWeak(v80);
  objc_destroyWeak(&__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v10);

  return v76;
}

- (id)dumpLogWithBasebandReset:(id)a3 :(id)a4
{
  v6 = a3;
  v69 = a4;
  Timestamp::Timestamp(&v74);
  Timestamp::asString();
  p_fGroupUpdate = &self->fGroupUpdate;
  if (&self->fGroupUpdate != __p)
  {
    if (*(&self->fGroupUpdate.gr_gid + 7) < 0)
    {
      if (SHIBYTE(__p[2]) >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v9 = HIBYTE(__p[2]);
      }

      else
      {
        v9 = __p[1];
      }

      sub_100002558(&self->fGroupUpdate.gr_name, v8, v9);
    }

    else if ((HIBYTE(__p[2]) & 0x80) != 0)
    {
      sub_100002498(&self->fGroupUpdate.gr_name, __p[0], __p[1]);
    }

    else
    {
      *&p_fGroupUpdate->gr_name = *__p;
      *&self->fGroupUpdate.gr_gid = __p[2];
    }
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000267F8(v74.__r_.__value_.__l.__size_);
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v10) == &_xpc_type_dictionary)
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  xpc_release(v10);
  v12 = xpc_string_create(abm::kBasebandResetTypeHard);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, abm::kKeyBasebandResetType, v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  gr_name = &self->fGroupUpdate;
  if (*(&self->fGroupUpdate.gr_gid + 7) < 0)
  {
    gr_name = p_fGroupUpdate->gr_name;
  }

  v15 = xpc_string_create(gr_name);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, abm::kKeyTimestampString, v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_string_create(abm::kBasebandResetSubTypeOtherErrors);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, abm::kKeyBasebandResetSubType, v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  memset(__p, 170, 24);
  v19 = v6;
  v20 = [v6 UTF8String];
  v21 = strlen(v20);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001210();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v21 | 7) + 1;
    }

    p_dst = operator new(v29);
    __dst.__r_.__value_.__l.__size_ = v22;
    __dst.__r_.__value_.__r.__words[2] = v29 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v21;
    p_dst = &__dst;
    if (!v21)
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    }
  }

  memmove(p_dst, v20, v22);
  p_dst->__r_.__value_.__s.__data_[v22] = 0;
  size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (size - 21 < 2)
    {
      v25 = v6;
      v26 = size + 2;
      v27 = &__dst;
      v28 = 22;
LABEL_43:
      v31 = 2 * v28;
      if (v26 > 2 * v28)
      {
        v31 = v26;
      }

      if ((v31 | 7) == 0x17)
      {
        v32 = 25;
      }

      else
      {
        v32 = (v31 | 7) + 1;
      }

      if (v31 >= 0x17)
      {
        v33 = v32;
      }

      else
      {
        v33 = 23;
      }

      v34 = v28 == 22;
      goto LABEL_52;
    }

    v38 = &__dst;
    v30 = v69;
    *(&__dst.__r_.__value_.__l.__data_ + size) = 8250;
    v39 = size + 2;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_60;
  }

LABEL_40:
  size = __dst.__r_.__value_.__l.__size_;
  v28 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v30 = v69;
  if (v28 - __dst.__r_.__value_.__l.__size_ >= 2)
  {
    v38 = __dst.__r_.__value_.__r.__words[0];
    *(__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_) = 8250;
    v39 = size + 2;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_58:
      *(&__dst.__r_.__value_.__s + 23) = v39 & 0x7F;
LABEL_61:
      v37 = v38 + v39;
      goto LABEL_62;
    }

LABEL_60:
    __dst.__r_.__value_.__l.__size_ = v39;
    goto LABEL_61;
  }

  v26 = __dst.__r_.__value_.__l.__size_ + 2;
  if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 2 - v28)
  {
    sub_100001210();
  }

  v27 = __dst.__r_.__value_.__r.__words[0];
  v25 = v6;
  if (v28 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_43;
  }

  v34 = 0;
  v33 = 0x7FFFFFFFFFFFFFF7;
LABEL_52:
  v35 = operator new(v33);
  v36 = v35;
  if (size)
  {
    memmove(v35, v27, size);
  }

  *(v36 + size) = 8250;
  if (!v34)
  {
    operator delete(v27);
  }

  __dst.__r_.__value_.__l.__size_ = v26;
  __dst.__r_.__value_.__r.__words[2] = v33 | 0x8000000000000000;
  __dst.__r_.__value_.__r.__words[0] = v36;
  v37 = (v36 + v26);
  v6 = v25;
  v30 = v69;
LABEL_62:
  *v37 = 0;
  v74 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  v40 = strlen(abm::trace::kDiagnosticExtensionDumpingReason);
  v41 = std::string::append(&v74, abm::trace::kDiagnosticExtensionDumpingReason, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  __p[2] = v41->__r_.__value_.__r.__words[2];
  *__p = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_64:
      if (!v30)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (!v30)
  {
    goto LABEL_70;
  }

LABEL_68:
  if ([v30 length])
  {
    v43 = v30;
    sub_100017704(__p, [v30 UTF8String]);
  }

LABEL_70:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v44 = __p;
  }

  else
  {
    v44 = __p[0];
  }

  v45 = xpc_string_create(v44);
  if (!v45)
  {
    v45 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, abm::kKeyBasebandResetReason, v45);
  v46 = xpc_null_create();
  xpc_release(v45);
  xpc_release(v46);
  v47 = xpc_int64_create(1499000);
  if (!v47)
  {
    v47 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, abm::kKeyTimeout, v47);
  v48 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v48);
  v49 = self->fGroupLogDump.gr_name;
  if (v49)
  {
    dispatch_retain(self->fGroupLogDump.gr_name);
    dispatch_group_enter(v49);
  }

  v50 = *&self->fGroupLogDump.gr_gid;
  *&self->fGroupLogDump.gr_gid = v49;
  if (v50)
  {
    dispatch_group_leave(v50);
    dispatch_release(v50);
  }

  v51 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    v52 = &self->fGroupUpdate;
    if (*(&self->fGroupUpdate.gr_gid + 7) < 0)
    {
      v52 = p_fGroupUpdate->gr_name;
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 136315138;
    *(v74.__r_.__value_.__r.__words + 4) = v52;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Reset baseband: %s", &v74, 0xCu);
  }

  objc_initWeak(&__dst.__r_.__value_.__l.__data_, self);
  cntrl = self->fManager.__cntrl_;
  v70[1] = self->fManager.__ptr_;
  v71 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v54 = abm::kCommandResetBaseband;
  v55 = strlen(abm::kCommandResetBaseband);
  if (v55 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001210();
  }

  v56 = v55;
  if (v55 >= 0x17)
  {
    if ((v55 | 7) == 0x17)
    {
      v58 = 25;
    }

    else
    {
      v58 = (v55 | 7) + 1;
    }

    v57 = operator new(v58);
    v74.__r_.__value_.__l.__size_ = v56;
    v74.__r_.__value_.__r.__words[2] = v58 | 0x8000000000000000;
    v74.__r_.__value_.__r.__words[0] = v57;
    goto LABEL_95;
  }

  *(&v74.__r_.__value_.__s + 23) = v55;
  v57 = &v74;
  if (v55)
  {
LABEL_95:
    memmove(v57, v54, v56);
  }

  *(v57 + v56) = 0;
  objc_copyWeak(v70, &__dst.__r_.__value_.__l.__data_);
  abm::client::PerformCommand();
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  v59 = v71;
  if (v71 && !atomic_fetch_add(v71 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v59->__on_zero_shared)(v59);
    std::__shared_weak_count::__release_weak(v59);
  }

  v60 = self->fGroupLogDump.gr_name;
  v61 = dispatch_time(0, 1500000000000);
  if (dispatch_group_wait(v60, v61))
  {
    v62 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v74.__r_.__value_.__r.__words[0] = 0x5DC04000100;
      _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Dumping telephony logs with baseband reset not completed in %d sec", &v74, 8u);
      v63 = *&self->fGroupLogDump.gr_gid;
      *&self->fGroupLogDump.gr_gid = 0;
      if (!v63)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v63 = *&self->fGroupLogDump.gr_gid;
      *&self->fGroupLogDump.gr_gid = 0;
      if (!v63)
      {
LABEL_105:
        v64 = &stru_1000314F0;
        goto LABEL_116;
      }
    }

    dispatch_group_leave(v63);
    dispatch_release(v63);
    goto LABEL_105;
  }

  v65 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = &self->fGroupUpdate;
    if (*(&self->fGroupUpdate.gr_gid + 7) < 0)
    {
      v66 = p_fGroupUpdate->gr_name;
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 136315138;
    *(v74.__r_.__value_.__r.__words + 4) = v66;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Dumping telephony logs [%s] completed", &v74, 0xCu);
  }

  if (*(&self->fGroupUpdate.gr_gid + 7) < 0)
  {
    if (!self->fGroupUpdate.gr_passwd)
    {
      goto LABEL_105;
    }

    p_fGroupUpdate = p_fGroupUpdate->gr_name;
  }

  else if (!*(&self->fGroupUpdate.gr_gid + 7))
  {
    v64 = &stru_1000314F0;
LABEL_117:
    LOBYTE(self->fGroupUpdate.gr_name) = 0;
    *(&self->fGroupUpdate.gr_gid + 7) = 0;
    goto LABEL_119;
  }

  v64 = [NSString stringWithUTF8String:p_fGroupUpdate];
LABEL_116:
  if ((*(&self->fGroupUpdate.gr_gid + 7) & 0x80000000) == 0)
  {
    goto LABEL_117;
  }

  *self->fGroupUpdate.gr_name = 0;
  self->fGroupUpdate.gr_passwd = 0;
LABEL_119:
  v67 = v64;
  objc_destroyWeak(v70);
  objc_destroyWeak(&__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v11);

  return v67;
}

- (BOOL)checkifBasebandTraceEnabled
{
  v38 = 0xAAAAAAAAE020E002;
  __p = 0uLL;
  v40 = 0;
  object = xpc_null_create();
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = xpc_string_create(abm::kTraceBaseband);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTraceName, v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = xpc_string_create(abm::kKeyEnabled);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTracePropertyName, v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = xpc_int64_create(5000);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, abm::kKeyTimeout, v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  cntrl = self->fManager.__cntrl_;
  v33[1] = self->fManager.__ptr_;
  v34 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v12 = abm::kCommandGetTraceProperty;
  v13 = strlen(abm::kCommandGetTraceProperty);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v16 = 25;
    }

    else
    {
      v16 = (v13 | 7) + 1;
    }

    p_dst = operator new(v16);
    __dst.__r_.__value_.__l.__size_ = v14;
    __dst.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_23;
  }

  *(&__dst.__r_.__value_.__s + 23) = v13;
  p_dst = &__dst;
  if (v13)
  {
LABEL_23:
    memmove(p_dst, v12, v14);
  }

  p_dst->__r_.__value_.__s.__data_[v14] = 0;
  abm::client::PerformCommand();
  LODWORD(v38) = v35.__r_.__value_.__l.__data_;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  __p = *&v35.__r_.__value_.__r.__words[1];
  v40 = v36;
  HIBYTE(v36) = 0;
  v35.__r_.__value_.__s.__data_[8] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v34 && !atomic_fetch_add(v34 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v34 + 16))(v34);
    std::__shared_weak_count::__release_weak(v34);
    v17 = object;
    if (object)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v17 = object;
    if (object)
    {
      goto LABEL_34;
    }
  }

  v17 = xpc_null_create();
  if (!v17)
  {
    v18 = xpc_null_create();
    v17 = 0;
    goto LABEL_37;
  }

LABEL_34:
  if (xpc_get_type(v17) == &_xpc_type_dictionary)
  {
    xpc_retain(v17);
    v18 = v17;
  }

  else
  {
    v18 = xpc_null_create();
  }

LABEL_37:
  xpc_release(v17);
  if (v38 || xpc_get_type(v18) != &_xpc_type_dictionary)
  {
    v19 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10001F3AC(&v35, &v38);
      v32 = (v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v35 : v35.__r_.__value_.__r.__words[0];
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
      *(__dst.__r_.__value_.__r.__words + 4) = v32;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to check if baseband trace enabled: %s", &__dst, 0xCu);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }
    }

    LOBYTE(v20) = 0;
    goto LABEL_41;
  }

  value = xpc_dictionary_get_value(v18, abm::kKeyTracePropertyValue);
  v33[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v33[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&__dst, v33, abm::kUnknown, v23);
  memset(&buf, 0, sizeof(buf));
  std::to_string(&v35, 1);
  buf = v35;
  v24 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v26 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  v27 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v26 = buf.__r_.__value_.__l.__size_;
  }

  if (size == v26)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &__dst;
    }

    else
    {
      v28 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v20 = memcmp(v28, p_buf, size) == 0;
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v20 = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_62:
    operator delete(buf.__r_.__value_.__l.__data_);
    v24 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

LABEL_63:
  if (v24 < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  xpc_release(v33[0]);
  v30 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    memset(&__dst, 0, sizeof(__dst));
    std::to_string(&v35, v20);
    __dst = v35;
    v31 = &__dst;
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = __dst.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Baseband trace enabled: %s", &buf, 0xCu);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

LABEL_41:
  xpc_release(v18);
  xpc_release(v4);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  return v20;
}

- (BOOL)checkifDefaultBasebandProfileInstalled
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  abm::HelperClient::create(&v23, abm::helper::kBasebandLogDEHelperName, a2);
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v2) == &_xpc_type_dictionary)
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v4 = xpc_string_create(abm::helper::kDefaultCarrierLoggingProfileName);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(v3, abm::helper::kKeyProfileName, v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  xdict = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    xdict = v6;
  }

  else
  {
    v7 = xpc_null_create();
    xdict = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_17;
  }

  v8 = xpc_null_create();
LABEL_16:
  xdict = v8;
LABEL_17:
  xpc_release(v7);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v9;
  v21 = v9;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::HelperClient::perform();
  xpc_release(object);
  if (!LODWORD(__p[0]) && xpc_get_type(xdict) == &_xpc_type_dictionary)
  {
    value = xpc_dictionary_get_value(xdict, abm::helper::kKeyProfileIsInstalled);
    *v25 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *v25 = xpc_null_create();
    }

    v11 = xpc::dyn_cast_or_default(v25, 0, v15);
    xpc_release(*v25);
    v16 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "not found";
      if (v11)
      {
        v17 = "found";
      }

      *v25 = 136315138;
      *&v25[4] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Installed baseband profile %s", v25, 0xCu);
    }
  }

  else
  {
    v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001F3AC(v25, __p);
      v18 = v26 >= 0 ? v25 : *v25;
      *buf = 136315138;
      v28 = v18;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to check if baseband profile installed: %s", buf, 0xCu);
      if (v26 < 0)
      {
        operator delete(*v25);
      }
    }

    LOBYTE(v11) = 0;
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[1]);
  }

  xpc_release(xdict);
  xpc_release(v3);
  v12 = v24;
  if (v24 && !atomic_fetch_add((v24 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  return v11;
}

- (BOOL)installDELoggingProfile
{
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  abm::HelperClient::create(&v24, abm::helper::kBasebandLogDEHelperName, a2);
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v2) == &_xpc_type_dictionary)
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v4 = xpc_string_create(abm::helper::kDefaultDELoggingProfileName);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(v3, abm::helper::kKeyProfileName, v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  v6 = xpc_BOOL_create(0);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v3, abm::helper::kKeyRequireUserConfirmation, v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v23 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v23 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    goto LABEL_19;
  }

  v10 = xpc_null_create();
LABEL_18:
  v23 = v10;
LABEL_19:
  xpc_release(v9);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v21 = v11;
  v22 = v11;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::HelperClient::perform();
  xpc_release(object);
  object = 0;
  if (LODWORD(v21[0]))
  {
    v12 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001F3AC(__p, v21);
      v13 = v19 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v27 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Install logging profile failed : %s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v14 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Install logging profile success", __p, 2u);
    }
  }

  v15 = v21[0];
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  xpc_release(v23);
  xpc_release(v3);
  v16 = v25;
  if (v25 && !atomic_fetch_add((v25 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  return v15 == 0;
}

- (BOOL)uninstallDELoggingProfile
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  abm::HelperClient::create(&v22, abm::helper::kBasebandLogDEHelperName, a2);
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v2) == &_xpc_type_dictionary)
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v4 = xpc_string_create(abm::helper::kDefaultDELoggingProfileName);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(v3, abm::helper::kKeyProfileName, v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v21 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v21 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_17;
  }

  v8 = xpc_null_create();
LABEL_16:
  v21 = v8;
LABEL_17:
  xpc_release(v7);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v19 = v9;
  v20 = v9;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  abm::HelperClient::perform();
  xpc_release(object);
  object = 0;
  if (LODWORD(v19[0]))
  {
    v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001F3AC(__p, v19);
      v11 = v17 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v25 = v11;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Uninstall logging profile failed : %s", buf, 0xCu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v12 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Uninstall logging profile success", __p, 2u);
    }
  }

  v13 = v19[0];
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  xpc_release(v21);
  xpc_release(v3);
  v14 = v23;
  if (v23 && !atomic_fetch_add((v23 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  return v13 == 0;
}

- (BOOL)updateTraceProperties:(array)a3
{
  if (!self->fManager.__ptr_)
  {
    v7 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Invalid manager";
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    return v10 & 1;
  }

  fObj = a3.var0.fObj;
  v4 = self;
  type = xpc_get_type(*a3.var0.fObj);
  v6 = &_xpc_type_array;
  v7 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (type == &_xpc_type_array)
  {
    if (v8)
    {
      xpc::object::to_string(buf, fObj);
      v11 = (SBYTE7(v51) & 0x80u) == 0 ? buf : *buf;
      *v52 = 136315138;
      *&v52[4] = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Update trace properties: %s", v52, 0xCu);
      if (SBYTE7(v51) < 0)
      {
        operator delete(*buf);
      }
    }

    v12 = *fObj;
    if (*fObj)
    {
      xpc_retain(*fObj);
    }

    else
    {
      v12 = xpc_null_create();
      if (!v12)
      {
        v12 = xpc_null_create();
        v13 = 0;
        goto LABEL_19;
      }
    }

    xpc_retain(v12);
    v13 = v12;
LABEL_19:
    xpc_release(v13);
    v14 = 0;
    v15 = abm::kKeyTimeout;
    key = abm::kKeyTracePropertyWaitForCompletion;
    v43 = abm::kKeyTraceName;
    __s = abm::kCommandSetTraceProperty;
    v10 = 1;
    v42 = v12;
    while (1)
    {
      v17 = *fObj;
      if (*fObj)
      {
        xpc_retain(*fObj);
      }

      else
      {
        v17 = xpc_null_create();
      }

      if (xpc_get_type(*fObj) == v6)
      {
        count = xpc_array_get_count(*fObj);
        if (!v17)
        {
LABEL_29:
          v19 = xpc_null_create();
          goto LABEL_30;
        }
      }

      else
      {
        count = 0;
        if (!v17)
        {
          goto LABEL_29;
        }
      }

      xpc_retain(v17);
      v19 = v17;
LABEL_30:
      xpc_release(v17);
      xpc_release(v19);
      if (v14 == count && v12 == v19)
      {
        xpc_release(v12);
        return v10 & 1;
      }

      value = xpc_array_get_value(v12, v14);
      v21 = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        v21 = xpc_null_create();
        if (!v21)
        {
          v22 = xpc_null_create();
          v21 = 0;
          goto LABEL_39;
        }
      }

      if (xpc_get_type(v21) == &_xpc_type_dictionary)
      {
        xpc_retain(v21);
        v22 = v21;
      }

      else
      {
        v22 = xpc_null_create();
      }

LABEL_39:
      xpc_release(v21);
      v23 = xpc_int64_create(5000);
      if (!v23)
      {
        v23 = xpc_null_create();
      }

      xpc_dictionary_set_value(v22, v15, v23);
      v24 = xpc_null_create();
      xpc_release(v23);
      xpc_release(v24);
      v25 = xpc_BOOL_create(0);
      if (!v25)
      {
        v25 = xpc_null_create();
      }

      xpc_dictionary_set_value(v22, key, v25);
      v26 = xpc_null_create();
      xpc_release(v25);
      xpc_release(v26);
      memset(v52, 170, sizeof(v52));
      v27 = xpc_dictionary_get_value(v22, v43);
      *buf = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        *buf = xpc_null_create();
      }

      xpc::dyn_cast_or_default(v52, buf, "", v28);
      xpc_release(*buf);
      *&v29 = 0xAAAAAAAAAAAAAAAALL;
      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *buf = v29;
      v51 = v29;
      cntrl = v4->fManager.__cntrl_;
      ptr = v4->fManager.__ptr_;
      v49 = cntrl;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      v31 = strlen(__s);
      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100001210();
      }

      v32 = v31;
      if (v31 >= 0x17)
      {
        v34 = fObj;
        v35 = v15;
        v36 = v4;
        v37 = v6;
        if ((v31 | 7) == 0x17)
        {
          v38 = 25;
        }

        else
        {
          v38 = (v31 | 7) + 1;
        }

        v33 = operator new(v38);
        __dst[1] = v32;
        v47 = v38 | 0x8000000000000000;
        __dst[0] = v33;
        v6 = v37;
        v4 = v36;
        v15 = v35;
        fObj = v34;
        v12 = v42;
LABEL_56:
        memmove(v33, __s, v32);
        goto LABEL_57;
      }

      HIBYTE(v47) = v31;
      v33 = __dst;
      if (v31)
      {
        goto LABEL_56;
      }

LABEL_57:
      *(v32 + v33) = 0;
      abm::client::PerformCommand();
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__dst[0]);
        v39 = v49;
        if (!v49)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v39 = v49;
        if (!v49)
        {
          goto LABEL_62;
        }
      }

      if (atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_62:
        v40 = *buf == 0;
        if (SHIBYTE(v51) < 0)
        {
          goto LABEL_67;
        }

        goto LABEL_63;
      }

      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
      v40 = *buf == 0;
      if (SHIBYTE(v51) < 0)
      {
LABEL_67:
        operator delete(*&buf[8]);
        if ((v52[23] & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_68;
      }

LABEL_63:
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

LABEL_68:
      operator delete(*v52);
LABEL_64:
      xpc_release(v22);
      if (v12)
      {
        xpc_retain(v12);
        v16 = v12;
      }

      else
      {
        v16 = xpc_null_create();
      }

      v10 &= v40;
      ++v14;
      xpc_release(v16);
    }
  }

  if (!v8)
  {
    goto LABEL_8;
  }

  *buf = 0;
  v9 = "Invalid parameter";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
  v10 = 0;
  return v10 & 1;
}

- (BOOL)enableBasebandLog:(id)a3
{
  v4 = a3;
  v5 = [v4 UTF8String];
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    v21 = v9 | 0x8000000000000000;
    __dst[0] = v8;
  }

  else
  {
    HIBYTE(v21) = v6;
    v8 = __dst;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  memmove(v8, v5, v7);
LABEL_10:
  *(v7 + v8) = 0;
  util::readPlistToCFDictionary(__dst, cf);
  v10 = *cf;
  if (!*cf || (v11 = CFGetTypeID(*cf), v11 != CFDictionaryGetTypeID()))
  {
    v10 = 0;
    v22 = 0;
    v12 = *cf;
    if (!*cf)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v22 = v10;
  CFRetain(v10);
  v12 = *cf;
  if (*cf)
  {
LABEL_15:
    CFRelease(v12);
  }

LABEL_16:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst[0]);
  }

  v13 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 138412290;
    *&cf[4] = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Update trace property with logConfig: %@", cf, 0xCu);
  }

  ctu::cf_to_xpc(cf, v10, v14);
  v15 = *cf;
  v18 = *cf;
  if (*cf && xpc_get_type(*cf) == &_xpc_type_dictionary)
  {
    xpc_retain(v15);
  }

  else
  {
    v18 = xpc_null_create();
  }

  logs::convertToTraceProperties(&v18, &object);
  v16 = [(BasebandLogDEHelper *)self updateTraceProperties:&object];
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  xpc_release(*cf);
  if (v10)
  {
    CFRelease(v10);
  }

  return v16;
}

- (BOOL)disableBasebandLog
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Update trace property to default setting", buf, 2u);
  }

  logs::getDefaultTraceProperties(&object);
  v4 = [(BasebandLogDEHelper *)self updateTraceProperties:&object];
  xpc_release(object);
  return v4;
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end