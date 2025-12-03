@interface DIController2IO_XPCHandlerAttach
- (BOOL)checkQuarantineWithFlags:(char *)flags buffer:(id *)buffer error:(id *)error;
- (BOOL)createDeviceWithError:(id *)error;
- (BOOL)disconnectFromDriverWithError:(id *)error;
- (BOOL)setupDriverWithError:(id *)error;
- (BOOL)updateFileBackingInfoWithRootDeviceEntryID:(unint64_t *)d error:(id *)error;
- (BOOL)updateQuarantineFlagWithHandlerArray:(id)array flags:(char *)flags buffer:(id *)buffer error:(id *)error;
- (DIController2IO_XPCHandlerAttach)initWithParams:(id)params;
- (id)launchIODaemonWithError:(id *)error;
- (id)runWithError:(id *)error;
- (unsigned)getInterconnectLocation;
- (void)setConnectionMode;
@end

@implementation DIController2IO_XPCHandlerAttach

- (DIController2IO_XPCHandlerAttach)initWithParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = DIController2IO_XPCHandlerAttach;
  v6 = [(DIController2IO_XPCHandlerBase *)&v9 initWithParams:paramsCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachParams, params);
    v7->_ucConnection = 0;
  }

  return v7;
}

- (id)launchIODaemonWithError:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000117F8;
  v25 = sub_100011808;
  v26 = 0;
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100011810;
  v18[3] = &unk_1002029E0;
  objc_copyWeak(&v19, &location);
  v18[4] = &v21;
  v5 = objc_retainBlock(v18);
  if ([(DIController2IO_XPCHandlerAttach *)self isNewDevice])
  {
    v6 = *__error();
    if (sub_1000E044C())
    {
      v7 = sub_1000E03D8();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v28 = 60;
      v29 = 2080;
      v30 = "[DIController2IO_XPCHandlerAttach launchIODaemonWithError:]";
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        fprintf(__stderrp, "%s\n", v8);
        free(v8);
      }
    }

    else
    {
      v12 = sub_1000E03D8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v28 = 60;
        v29 = 2080;
        v30 = "[DIController2IO_XPCHandlerAttach launchIODaemonWithError:]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Device created, attaching to the new device", buf, 0x12u);
      }
    }

    *__error() = v6;
    remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
    attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
    [remoteProxy attachToNewDeviceWithParams:attachParams reply:v5];
  }

  else
  {
    v9 = *__error();
    if (sub_1000E044C())
    {
      v10 = sub_1000E03D8();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v28 = 60;
      v29 = 2080;
      v30 = "[DIController2IO_XPCHandlerAttach launchIODaemonWithError:]";
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v15 = sub_1000E03D8();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v28 = 60;
        v29 = 2080;
        v30 = "[DIController2IO_XPCHandlerAttach launchIODaemonWithError:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%.*s: Attaching to an existing device", buf, 0x12u);
      }
    }

    *__error() = v9;
    remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
    attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
    [remoteProxy attachToExistingDeviceWithParams:attachParams reply:v5];
  }

  if ([(DIBaseXPCHandler *)self completeCommandWithError:error])
  {
    v16 = v22[5];
  }

  else
  {
    v16 = 0;
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v21, 8);

  return v16;
}

- (BOOL)setupDriverWithError:(id *)error
{
  v5 = [DIIOObject copyDiskImagesControllerWithError:?];
  v6 = v5;
  if (v5)
  {
    ioObj = [v5 ioObj];
    v8 = IOServiceOpen(ioObj, mach_task_self_, 0, &self->_ucConnection);
    if (v8)
    {
      v9 = [NSString stringWithFormat:@"IOServiceOpen failed. error=0x%x", v8];
      v10 = [DIError failWithEnumValue:153 verboseInfo:v9 error:error];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)disconnectFromDriverWithError:(id *)error
{
  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v14 = 66;
    v15 = 2080;
    v16 = "[DIController2IO_XPCHandlerAttach disconnectFromDriverWithError:]";
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(__stderrp, "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = sub_1000E03D8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v14 = 66;
      v15 = 2080;
      v16 = "[DIController2IO_XPCHandlerAttach disconnectFromDriverWithError:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: Closing IO service", buf, 0x12u);
    }
  }

  *__error() = v5;
  v9 = IOServiceClose(self->_ucConnection);
  self->_ucConnection = 0;
  if (!v9)
  {
    return 1;
  }

  v10 = [NSString stringWithFormat:@"IOServiceClose failed. error=0x%x", v9];
  v11 = [DIError failWithEnumValue:153 verboseInfo:v10 error:error];

  return v11;
}

- (BOOL)updateFileBackingInfoWithRootDeviceEntryID:(unint64_t *)d error:(id *)error
{
  attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  inputStatFS = [attachParams inputStatFS];
  if (!inputStatFS)
  {

    goto LABEL_11;
  }

  attachParams2 = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  inputStatFS2 = [attachParams2 inputStatFS];
  mountedFrom = [inputStatFS2 mountedFrom];

  if (!mountedFrom)
  {
LABEL_11:
    *d = 0;
    v26 = *__error();
    if (sub_1000E044C())
    {
      v27 = sub_1000E03D8();
      os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v34 = 85;
      v35 = 2080;
      v36 = "[DIController2IO_XPCHandlerAttach updateFileBackingInfoWithRootDeviceEntryID:error:]";
      v28 = _os_log_send_and_compose_impl();

      if (v28)
      {
        fprintf(__stderrp, "%s\n", v28);
        free(v28);
      }
    }

    else
    {
      v29 = sub_1000E03D8();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v34 = 85;
        v35 = 2080;
        v36 = "[DIController2IO_XPCHandlerAttach updateFileBackingInfoWithRootDeviceEntryID:error:]";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%.*s: Disk image file is not backed by local storage, root device entry ID will be the disk image device itself", buf, 0x12u);
      }
    }

    *__error() = v26;
    return 1;
  }

  v12 = [DIIOMedia alloc];
  attachParams3 = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  inputStatFS3 = [attachParams3 inputStatFS];
  mountedFrom2 = [inputStatFS3 mountedFrom];
  v16 = [(DIIOMedia *)v12 initWithDevName:mountedFrom2 error:error];

  if (v16)
  {
    v17 = [(DIIOMedia *)v16 copyBlockDeviceWithError:error];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 copyRootBlockDeviceWithError:error];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 registryEntryIDWithError:error];
        *d = v21;
        if (v21)
        {
          v22 = *__error();
          if (sub_1000E044C())
          {
            v23 = sub_1000E03D8();
            os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
            v24 = *d;
            *buf = 68158210;
            v34 = 85;
            v35 = 2080;
            v36 = "[DIController2IO_XPCHandlerAttach updateFileBackingInfoWithRootDeviceEntryID:error:]";
            v37 = 2048;
            v38 = v24;
            v25 = _os_log_send_and_compose_impl();

            if (v25)
            {
              fprintf(__stderrp, "%s\n", v25);
              free(v25);
            }
          }

          else
          {
            v31 = sub_1000E03D8();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = *d;
              *buf = 68158210;
              v34 = 85;
              v35 = 2080;
              v36 = "[DIController2IO_XPCHandlerAttach updateFileBackingInfoWithRootDeviceEntryID:error:]";
              v37 = 2048;
              v38 = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%.*s: Entry ID of root block storage device: 0x%llx", buf, 0x1Cu);
            }
          }

          *__error() = v22;

          return 1;
        }
      }
    }
  }

  return 0;
}

- (unsigned)getInterconnectLocation
{
  attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  inputURL = [attachParams inputURL];
  scheme = [inputURL scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"file"])
  {
    v6 = 1;
  }

  else if ([lowercaseString isEqualToString:@"ram"])
  {
    v6 = 2;
  }

  else if ([lowercaseString isEqualToString:@"http"])
  {
    v6 = 3;
  }

  else if ([lowercaseString isEqualToString:@"https"])
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)updateQuarantineFlagWithHandlerArray:(id)array flags:(char *)flags buffer:(id *)buffer error:(id *)error
{
  arrayCopy = array;
  v10 = arrayCopy;
  if (arrayCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = arrayCopy;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v12)
    {
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v15 getFileInfoWithError:error];
          *buffer = v16;
          if (!v16 && ([v15 isQuarantined] & 1) != 0)
          {
            v17 = 0;
            goto LABEL_22;
          }

          if ([v15 isQuarantined])
          {
            v18 = *__error();
            if (sub_1000E044C())
            {
              v19 = sub_1000E03D8();
              os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
              *buf = 68157954;
              v28 = 92;
              v29 = 2080;
              v30 = "[DIController2IO_XPCHandlerAttach updateQuarantineFlagWithHandlerArray:flags:buffer:error:]";
              v20 = _os_log_send_and_compose_impl();

              if (v20)
              {
                fprintf(__stderrp, "%s\n", v20);
                free(v20);
              }
            }

            else
            {
              v21 = sub_1000E03D8();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68157954;
                v28 = 92;
                v29 = 2080;
                v30 = "[DIController2IO_XPCHandlerAttach updateQuarantineFlagWithHandlerArray:flags:buffer:error:]";
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%.*s: Attaching a quarantined image", buf, 0x12u);
              }
            }

            *__error() = v18;
            *flags |= 2u;
            goto LABEL_21;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
    v17 = 1;
LABEL_22:
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (BOOL)checkQuarantineWithFlags:(char *)flags buffer:(id *)buffer error:(id *)error
{
  v6 = +[NSMutableArray array];
  v7 = [QuarantineFileHandler alloc];
  attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  v9 = attachParams;
  if (attachParams)
  {
    [attachParams backend];
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v10 = [(QuarantineFileHandler *)v7 initWithBackend:&v41 error:error];
  if (v42)
  {
    sub_10000367C(v42);
  }

  if (!v10)
  {
LABEL_34:
    v26 = 0;
    goto LABEL_35;
  }

  [v6 addObject:v10];
  attachParams2 = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  shadowChain = [attachParams2 shadowChain];
  if (shadowChain)
  {

LABEL_10:
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    attachParams3 = [(DIController2IO_XPCHandlerAttach *)self attachParams];
    shadowChain2 = [attachParams3 shadowChain];
    nodes = [shadowChain2 nodes];

    v19 = [nodes countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v19)
    {
      v20 = *v38;
      while (2)
      {
        v21 = 0;
        v22 = v10;
        do
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(nodes);
          }

          fileBackend = [*(*(&v37 + 1) + 8 * v21) fileBackend];
          v24 = fileBackend;
          if (fileBackend)
          {
            [fileBackend backend];
          }

          else
          {
            v33 = 0;
            v34 = 0;
          }

          sub_10019A824(&v33, &v35);
          if (v34)
          {
            sub_10000367C(v34);
          }

          v25 = [QuarantineFileHandler alloc];
          v31 = v35;
          v32 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v10 = [(QuarantineFileHandler *)v25 initWithBackend:&v31 error:error];

          if (v32)
          {
            sub_10000367C(v32);
          }

          if (!v10)
          {
            if (v36)
            {
              sub_10000367C(v36);
            }

            v10 = 0;
            goto LABEL_34;
          }

          [v6 addObject:v10];
          if (v36)
          {
            sub_10000367C(v36);
          }

          v21 = v21 + 1;
          v22 = v10;
        }

        while (v19 != v21);
        v19 = [nodes countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_30;
  }

  attachParams4 = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  shadowChain3 = [attachParams4 shadowChain];
  isEmpty = [shadowChain3 isEmpty];

  if ((isEmpty & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_30:
  v26 = [(DIController2IO_XPCHandlerAttach *)self updateQuarantineFlagWithHandlerArray:v6 flags:flags buffer:buffer error:error];
LABEL_35:

  return v26;
}

- (BOOL)createDeviceWithError:(id *)error
{
  v3 = __chkstk_darwin(self, a2, error);
  v129 = v4;
  v5 = v3;
  outputStructCnt = 12;
  attachParams = [v3 attachParams];
  autoMount = [attachParams autoMount];

  v131 = autoMount != 0;
  v130 = 0;
  v8 = [v5 checkQuarantineWithFlags:&v131 buffer:&v130 error:v129];
  v128 = v130;
  if (!v8)
  {
    goto LABEL_101;
  }

  getInterconnectLocation = [v5 getInterconnectLocation];
  attachParams2 = [v5 attachParams];
  if ([attachParams2 emulateExternalDisk])
  {
    v11 = os_variant_allows_internal_security_policies();

    if (v11)
    {
      v12 = *__error();
      if (sub_1000E044C())
      {
        v140 = 0;
        v13 = sub_1000E03D8();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        buf[0].st_dev = 68157954;
        *&buf[0].st_mode = 58;
        LOWORD(buf[0].st_ino) = 2080;
        *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
        LODWORD(v115) = 18;
        v112 = buf;
        v14 = _os_log_send_and_compose_impl();

        if (v14)
        {
          fprintf(__stderrp, "%s\n", v14);
          free(v14);
        }
      }

      else
      {
        v15 = sub_1000E03D8();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          buf[0].st_dev = 68157954;
          *&buf[0].st_mode = 58;
          LOWORD(buf[0].st_ino) = 2080;
          *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%.*s: [Apple Internal] Creating an emulated external disk", buf, 0x12u);
        }
      }

      *__error() = v12;
      getInterconnectLocation = 4;
    }
  }

  else
  {
  }

  attachParams3 = [v5 attachParams];
  diskImageParamsXPC = [attachParams3 diskImageParamsXPC];
  numBlocks = [diskImageParamsXPC numBlocks];

  attachParams4 = [v5 attachParams];
  diskImageParamsXPC2 = [attachParams4 diskImageParamsXPC];
  shadowChain = [diskImageParamsXPC2 shadowChain];
  isEmpty = [shadowChain isEmpty];

  if ((isEmpty & 1) == 0)
  {
    attachParams5 = [v5 attachParams];
    diskImageParamsXPC3 = [attachParams5 diskImageParamsXPC];
    shadowChain2 = [diskImageParamsXPC3 shadowChain];
    topDiskImageNumBlocks = [shadowChain2 topDiskImageNumBlocks];

    if (topDiskImageNumBlocks > 0)
    {
      numBlocks = topDiskImageNumBlocks;
    }
  }

  memset(v145, 0, 448);
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v140 = 9;
  v141 = numBlocks;
  attachParams6 = [v5 attachParams];
  diskImageParamsXPC4 = [attachParams6 diskImageParamsXPC];
  LODWORD(v142) = [diskImageParamsXPC4 blockSize];
  attachParams7 = [v5 attachParams];
  diskImageParamsXPC5 = [attachParams7 diskImageParamsXPC];
  isWritableFormat = [diskImageParamsXPC5 isWritableFormat];
  if (isWritableFormat)
  {
    v28 = 0;
  }

  else
  {
    attachParams8 = [v5 attachParams];
    shadowChain3 = [attachParams8 shadowChain];
    activeShadowURL = [shadowChain3 activeShadowURL];
    v28 = activeShadowURL == 0;
  }

  BYTE4(v142) = v28;
  attachParams9 = [v5 attachParams];
  *(&v142 + 5) = [attachParams9 hasUnlockedBackend];
  BYTE7(v142) = getInterconnectLocation;
  attachParams10 = [v5 attachParams];
  v122 = getuid();
  v30 = getgid();
  hasUnlockedBackend = [attachParams10 hasUnlockedBackend];
  st_gid = v30;
  if ((getInterconnectLocation & 0xFE) == 2)
  {
    v33 = 1;
  }

  else
  {
    v33 = hasUnlockedBackend;
  }

  if (v33)
  {
    v34 = 384;
    goto LABEL_80;
  }

  if (getInterconnectLocation != 1)
  {
    v34 = 416;
    goto LABEL_80;
  }

  shadowChain4 = [attachParams10 shadowChain];
  activeShadowURL2 = [shadowChain4 activeShadowURL];
  if (activeShadowURL2)
  {
    shadowChain5 = [attachParams10 shadowChain];
    nodes = [shadowChain5 nodes];
    lastObject = [nodes lastObject];
    fileBackend = [lastObject fileBackend];
    v40 = fileBackend;
    if (fileBackend)
    {
      [fileBackend backend];
    }

    else
    {
      *&buf[0].st_dev = 0;
      buf[0].st_ino = 0;
    }

    sub_10019A824(buf, &v136);
    if (buf[0].st_ino)
    {
      sub_10000367C(buf[0].st_ino);
    }

    v41 = shadowChain4;
  }

  else
  {
    if (attachParams10)
    {
      [attachParams10 backend];
    }

    else
    {
      *&buf[0].st_dev = 0;
      buf[0].st_ino = 0;
    }

    sub_10019A824(buf, &v136);
    if (buf[0].st_ino)
    {
      sub_10000367C(buf[0].st_ino);
    }

    v41 = shadowChain4;
  }

  v42 = v136;
  v43 = v137;
  *&buf[0].st_dev = v136;
  buf[0].st_ino = v137;
  if (v137)
  {
    atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  while (1)
  {
    if (!v42)
    {
      st_ino = buf[0].st_ino;
      if (!buf[0].st_ino)
      {
        goto LABEL_44;
      }

LABEL_43:
      atomic_fetch_add_explicit((st_ino + 8), 1uLL, memory_order_relaxed);
      goto LABEL_44;
    }

    v44 = **v42;
    st_ino = buf[0].st_ino;
    if (v45)
    {
      break;
    }

    if (buf[0].st_ino)
    {
      goto LABEL_43;
    }

LABEL_44:
    if (v43)
    {
      sub_10000367C(v43);
    }

    sub_10019AD28(buf, v147);
    v47 = *v147;
    *v147 = 0;
    *&v147[8] = 0;
    v48 = buf[0].st_ino;
    *&buf[0].st_dev = v47;
    if (v48)
    {
      sub_10000367C(v48);
      v49 = *&buf[0].st_dev;
      if (*&v147[8])
      {
        sub_10000367C(*&v147[8]);
        if (v49 == v42)
        {
          goto LABEL_57;
        }

        v42 = *&buf[0].st_dev;
        v43 = st_ino;
      }

      else
      {
        v43 = st_ino;
        v50 = *&buf[0].st_dev == v42;
        v42 = *&buf[0].st_dev;
        if (v50)
        {
LABEL_57:
          v51 = 0;
          v52 = 0;
          v43 = st_ino;
          goto LABEL_61;
        }
      }
    }

    else
    {
      v43 = st_ino;
      v50 = v47 == v42;
      v42 = v47;
      if (v50)
      {
        goto LABEL_57;
      }
    }
  }

  v51 = v45;
  if (buf[0].st_ino)
  {
    atomic_fetch_add_explicit((buf[0].st_ino + 8), 1uLL, memory_order_relaxed);
    v52 = st_ino;
  }

  else
  {
    v52 = 0;
  }

LABEL_61:
  if (v43)
  {
    sub_10000367C(v43);
  }

  if (buf[0].st_ino)
  {
    sub_10000367C(buf[0].st_ino);
  }

  if (v51)
  {
    v53 = (**v51)(v51);
    if (fstat(v53, buf))
    {
      v54 = *__error();
      if (sub_1000E044C())
      {
        v135 = 0;
        v55 = sub_1000E03D8();
        os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);
        v56 = *__error();
        *v147 = 68158210;
        *&v147[4] = 97;
        *&v147[8] = 2080;
        *&v147[10] = "DIDevicePermissions calculateDevicePermissions(DIAttachParams *__strong, kDIInterconnectLocation)";
        v148 = 1024;
        v149 = v56;
        LODWORD(v116) = 24;
        v113 = v147;
        v57 = _os_log_send_and_compose_impl();

        if (v57)
        {
          fprintf(__stderrp, "%s\n", v57);
          free(v57);
        }
      }

      else
      {
        v58 = sub_1000E03D8();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = *__error();
          *v147 = 68158210;
          *&v147[4] = 97;
          *&v147[8] = 2080;
          *&v147[10] = "DIDevicePermissions calculateDevicePermissions(DIAttachParams *__strong, kDIInterconnectLocation)";
          v148 = 1024;
          v149 = v59;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%.*s: fstat failed with errno %d", v147, 0x18u);
        }
      }

      *__error() = v54;
      v34 = 384;
    }

    else
    {
      st_gid = buf[0].st_gid;
      v34 = buf[0].st_mode & 0x1A0;
    }
  }

  else
  {
    v34 = 416;
  }

  if (v52)
  {
    sub_10000367C(v52);
  }

  if (v137)
  {
    sub_10000367C(v137);
  }

LABEL_80:

  *(&v142 + 1) = v34 | (v122 << 32);
  *&v143 = st_gid;
  bzero(&v143 + 8, 0x818uLL);

  if ((isWritableFormat & 1) == 0)
  {
  }

  attachParams11 = [v5 attachParams];
  instanceID = [attachParams11 instanceID];
  [instanceID getUUIDBytes:&v143 + 8];

  v62 = *__error();
  if (sub_1000E044C())
  {
    *v147 = 0;
    v63 = sub_1000E03D8();
    os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
    v64 = v141;
    v65 = v142;
    v66 = [[NSUUID alloc] initWithUUIDBytes:&v143 + 8];
    buf[0].st_dev = 68158978;
    *&buf[0].st_mode = 58;
    LOWORD(buf[0].st_ino) = 2080;
    *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
    HIWORD(buf[0].st_uid) = 2048;
    *&buf[0].st_gid = v64;
    *(&buf[0].st_rdev + 2) = 1024;
    *(&buf[0].st_rdev + 6) = v65;
    WORD1(buf[0].st_atimespec.tv_sec) = 2114;
    *(&buf[0].st_atimespec.tv_sec + 4) = v66;
    WORD2(buf[0].st_atimespec.tv_nsec) = 1024;
    *(&buf[0].st_atimespec.tv_nsec + 6) = 9;
    LODWORD(v116) = 50;
    v113 = buf;
    v67 = _os_log_send_and_compose_impl();

    if (v67)
    {
      fprintf(__stderrp, "%s\n", v67);
      free(v67);
    }
  }

  else
  {
    v68 = sub_1000E03D8();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v69 = v141;
      v70 = v142;
      v71 = [[NSUUID alloc] initWithUUIDBytes:&v143 + 8];
      buf[0].st_dev = 68158978;
      *&buf[0].st_mode = 58;
      LOWORD(buf[0].st_ino) = 2080;
      *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
      HIWORD(buf[0].st_uid) = 2048;
      *&buf[0].st_gid = v69;
      *(&buf[0].st_rdev + 2) = 1024;
      *(&buf[0].st_rdev + 6) = v70;
      WORD1(buf[0].st_atimespec.tv_sec) = 2114;
      *(&buf[0].st_atimespec.tv_sec + 4) = v71;
      WORD2(buf[0].st_atimespec.tv_nsec) = 1024;
      *(&buf[0].st_atimespec.tv_nsec + 6) = 9;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%.*s: Creating device with %llu blocks of %u bytes, instance ID %{public}@, ABI version %d", buf, 0x32u);
    }
  }

  *__error() = v62;
  attachParams12 = [v5 attachParams];
  inputURL = [attachParams12 inputURL];
  v74 = [DIAttachParams copyWithURL:inputURL outURLStr:v145 maxLen:1024 error:v129];

  if ((v74 & 1) == 0)
  {
    goto LABEL_100;
  }

  attachParams13 = [v5 attachParams];
  shadowChain6 = [attachParams13 shadowChain];
  activeShadowURL3 = [shadowChain6 activeShadowURL];
  if (activeShadowURL3)
  {
    attachParams14 = [v5 attachParams];
    shadowChain7 = [attachParams14 shadowChain];
    activeShadowURL4 = [shadowChain7 activeShadowURL];
    v81 = [DIAttachParams copyWithURL:activeShadowURL4 outURLStr:&v146 maxLen:1024 error:v129];

    if ((v81 & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  else
  {
  }

  attachParams15 = [v5 attachParams];
  inputURL2 = [attachParams15 inputURL];
  isFileURL = [inputURL2 isFileURL];

  if (!isFileURL || ([v5 updateFileBackingInfoWithRootDeviceEntryID:&v144 + 8 error:v129] & 1) != 0)
  {
    attachParams16 = [v5 attachParams];
    suppressSsdFlags = [attachParams16 suppressSsdFlags];

    if ((suppressSsdFlags & 1) == 0)
    {
      attachParams17 = [v5 attachParams];
      v88 = [attachParams17 isDeviceSolidStateWithRegistryEntryID:*(&v144 + 1)];

      if (v88)
      {
        HIBYTE(v140) |= 1u;
        v89 = *__error();
        if (sub_1000E044C())
        {
          *v147 = 0;
          v90 = sub_1000E03D8();
          os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT);
          buf[0].st_dev = 68157954;
          *&buf[0].st_mode = 58;
          LOWORD(buf[0].st_ino) = 2080;
          *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
          LODWORD(v117) = 18;
          v114 = buf;
          v91 = _os_log_send_and_compose_impl();

          if (v91)
          {
            fprintf(__stderrp, "%s\n", v91);
            free(v91);
          }
        }

        else
        {
          v93 = sub_1000E03D8();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].st_dev = 68157954;
            *&buf[0].st_mode = 58;
            LOWORD(buf[0].st_ino) = 2080;
            *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "%.*s: Device will be marked as solid state", buf, 0x12u);
          }
        }

        *__error() = v89;
      }

      attachParams18 = [v5 attachParams];
      v95 = [attachParams18 isDeviceHighThroughputWithRegistryEntryID:*(&v144 + 1)];

      if (v95)
      {
        HIBYTE(v140) |= 2u;
        v96 = *__error();
        if (sub_1000E044C())
        {
          *v147 = 0;
          v97 = sub_1000E03D8();
          os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT);
          buf[0].st_dev = 68157954;
          *&buf[0].st_mode = 58;
          LOWORD(buf[0].st_ino) = 2080;
          *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
          LODWORD(v117) = 18;
          v114 = buf;
          v98 = _os_log_send_and_compose_impl();

          if (v98)
          {
            fprintf(__stderrp, "%s\n", v98);
            free(v98);
          }
        }

        else
        {
          v99 = sub_1000E03D8();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].st_dev = 68157954;
            *&buf[0].st_mode = 58;
            LOWORD(buf[0].st_ino) = 2080;
            *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "%.*s: Device will be marked as high throughput", buf, 0x12u);
          }
        }

        *__error() = v96;
      }
    }

    v100 = IOConnectCallStructMethod([v5 ucConnection], 0, &v140, 0x840uLL, &outputStruct, &outputStructCnt);
    if (v100)
    {
      v100 = [NSString stringWithFormat:@"Create device call failed, error=0x%x", v100];
      LOBYTE(v8) = [DIError failWithEnumValue:153 verboseInfo:v100 error:v129];
    }

    else
    {
      [v5 setIsNewDevice:v134 != 0];
      v102 = outputStruct;
      attachParams19 = [v5 attachParams];
      [attachParams19 setRegEntryID:v102];

      v104 = *__error();
      if (sub_1000E044C())
      {
        *v147 = 0;
        v105 = sub_1000E03D8();
        os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT);
        buf[0].st_dev = 68158210;
        *&buf[0].st_mode = 58;
        LOWORD(buf[0].st_ino) = 2080;
        *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
        HIWORD(buf[0].st_uid) = 2048;
        *&buf[0].st_gid = outputStruct;
        v106 = _os_log_send_and_compose_impl();

        if (v106)
        {
          fprintf(__stderrp, "%s\n", v106);
          free(v106);
        }
      }

      else
      {
        v107 = sub_1000E03D8();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          buf[0].st_dev = 68158210;
          *&buf[0].st_mode = 58;
          LOWORD(buf[0].st_ino) = 2080;
          *(&buf[0].st_ino + 2) = "[DIController2IO_XPCHandlerAttach createDeviceWithError:]";
          HIWORD(buf[0].st_uid) = 2048;
          *&buf[0].st_gid = outputStruct;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "%.*s: Device registry entry ID: 0x%llx", buf, 0x1Cu);
        }
      }

      *__error() = v104;
      isNewDevice = [v5 isNewDevice];
      if (v128)
      {
        v109 = isNewDevice;
      }

      else
      {
        v109 = 0;
      }

      if (v109 == 1 && [v128 length] && (bzero(buf, 0x1060uLL), v139 = objc_msgSend(v128, "length"), objc_msgSend(v128, "getBytes:length:", buf, objc_msgSend(v128, "length")), v110 = IOConnectCallStructMethod(objc_msgSend(v5, "ucConnection"), 1u, buf, 0x1062uLL, 0, 0), v110))
      {
        v110 = [NSString stringWithFormat:@"Failed to quarantine device, error=0x%x", v110];
        LOBYTE(v8) = [DIError failWithEnumValue:153 verboseInfo:v110 error:v129];
      }

      else
      {
        LOBYTE(v8) = 1;
      }
    }
  }

  else
  {
LABEL_100:
    LOBYTE(v8) = 0;
  }

LABEL_101:

  return v8;
}

- (id)runWithError:(id *)error
{
  if (![(DIController2IO_XPCHandlerAttach *)self setupDriverWithError:?])
  {
    v11 = 0;
LABEL_11:
    v8 = 0;
    goto LABEL_13;
  }

  if (![(DIController2IO_XPCHandlerAttach *)self createDeviceWithError:error])
  {
    goto LABEL_12;
  }

  if ([(DIController2IO_XPCHandlerAttach *)self isNewDevice])
  {
    attachParams = [(DIController2IO_XPCHandlerAttach *)self attachParams];
    diskImageParamsXPC = [attachParams diskImageParamsXPC];
    v7 = [diskImageParamsXPC lockWritableBackendsWithError:error];

    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (![(DIBaseXPCHandler *)self connectWithError:error]|| (v8 = [(DIController2IO_XPCHandlerAttach *)self launchIODaemonWithError:error]) == 0)
  {
LABEL_12:
    [(DIController2IO_XPCHandlerAttach *)self disconnectFromDriverWithError:0];
    v11 = 0;
    v8 = 0;
    goto LABEL_13;
  }

  attachParams2 = [(DIController2IO_XPCHandlerAttach *)self attachParams];
  handleRefCount = [attachParams2 handleRefCount];

  if (!handleRefCount)
  {
    [(DIController2IO_XPCHandlerAttach *)self disconnectFromDriverWithError:0];
    goto LABEL_15;
  }

  if ([(DIController2IO_XPCHandlerAttach *)self disconnectFromDriverWithError:error])
  {
LABEL_15:
    v11 = v8;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)setConnectionMode
{
  v2.receiver = self;
  v2.super_class = DIController2IO_XPCHandlerAttach;
  [(DIController2IO_XPCHandlerBase *)&v2 setConnectionMode];
}

@end