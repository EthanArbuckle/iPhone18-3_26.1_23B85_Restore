@interface VUARPAsset
- (BOOL)assetAllHeadersAndMetaDataComplete:(id)complete error:(id *)error;
- (BOOL)assetMetaDataComplete:(id)complete error:(id *)error;
- (BOOL)assetMetaDataTLV:(id)v type:(unsigned int)type length:(unsigned int)length value:(char *)value error:(id *)error;
- (BOOL)assetReady:(id)ready error:(id *)error;
- (BOOL)getBytesAtOffset:(unsigned int)offset accessory:(id)accessory buffer:(void *)buffer length:(unsigned __int16)length bytesCopied:(unsigned __int16 *)copied;
- (BOOL)isAcceptablePayloadVersion:(id)version error:(id *)error;
- (BOOL)payloadDataComplete:(id)complete error:(id *)error;
- (BOOL)payloadMatchesAtIndex:(id)index index:(unint64_t)a4;
- (BOOL)payloadMetaDataTLV:(id)v type:(unsigned int)type length:(unsigned int)length value:(char *)value error:(id *)error;
- (BOOL)payloadReady:(id)ready error:(id *)error;
- (BOOL)selectMatchingPayloadIndex:(id)index error:(id *)error;
- (BOOL)setBytesAtOffset:(unsigned int)offset accessory:(id)accessory buffer:(void *)buffer length:(unsigned __int16)length;
- (UARPAssetVersion)assetVersion;
- (VUARPAsset)init;
- (VUARPAsset)initWithLayer2Asset:(uarpPlatformAsset *)asset controller:(id)controller;
- (id)initSolicitedDynamicAsset:(id)asset controller:(id)controller;
- (void)abandonAsset:(id)asset reason:(unsigned __int16)reason;
- (void)setCallbacks;
@end

@implementation VUARPAsset

- (VUARPAsset)init
{
  [(VUARPAsset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VUARPAsset)initWithLayer2Asset:(uarpPlatformAsset *)asset controller:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = VUARPAsset;
  v8 = [(VUARPAsset *)&v12 init];
  if (v8)
  {
    v9 = os_log_create("com.apple.accessoryupdater.uarp", "virtualUARP");
    log = v8->_log;
    v8->_log = v9;

    v8->_uarpAssetInternal = asset;
    [(VUARPAsset *)v8 setCallbacks];
    objc_storeStrong(&v8->_uarpController, controller);
  }

  return v8;
}

- (id)initSolicitedDynamicAsset:(id)asset controller:(id)controller
{
  assetCopy = asset;
  v8 = [(VUARPAsset *)self initWithLayer2Asset:0 controller:controller];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assetTag, asset);
    assetTag = v9->_assetTag;
    v11 = uarpDynamicAssetURL();
    url = v9->_url;
    v9->_url = v11;
  }

  return v9;
}

- (void)setCallbacks
{
  self->_uarpCallbacksInternal.fAssetReady = sub_10000D93C;
  self->_uarpCallbacksInternal.fAssetMetaDataTLV = sub_10000D94C;
  self->_uarpCallbacksInternal.fAssetMetaDataComplete = sub_10000D968;
  self->_uarpCallbacksInternal.fAssetMetaDataProcessingError = nullsub_1;
  self->_uarpCallbacksInternal.fPayloadReady = sub_10000D97C;
  self->_uarpCallbacksInternal.fPayloadMetaDataTLV = sub_10000D98C;
  self->_uarpCallbacksInternal.fPayloadMetaDataComplete = sub_10000D9A8;
  self->_uarpCallbacksInternal.fPayloadMetaDataProcessingError = nullsub_2;
  self->_uarpCallbacksInternal.fPayloadData = sub_10000D9BC;
  self->_uarpCallbacksInternal.fPayloadDataComplete = sub_10000DA70;
  self->_uarpCallbacksInternal.fAssetGetBytesAtOffset2 = sub_10000DAE0;
  self->_uarpCallbacksInternal.fAssetSetBytesAtOffset2 = sub_10000DB1C;
  self->_uarpCallbacksInternal.fAssetRescinded = sub_10000DB58;
  self->_uarpCallbacksInternal.fAssetCorrupt = sub_10000DB68;
  self->_uarpCallbacksInternal.fAssetOrphaned = sub_10000DB74;
  self->_uarpCallbacksInternal.fAssetReleased2 = j__objc_msgSend_assetReleased_;
  self->_uarpCallbacksInternal.fAssetProcessingNotification2 = sub_10000DB84;
  self->_uarpCallbacksInternal.fAssetProcessingNotificationAck = 0;
  self->_uarpCallbacksInternal.fAssetAllHeadersAndMetaDataComplete = sub_10000DBCC;
}

- (UARPAssetVersion)assetVersion
{
  v2 = [[UARPAssetVersion alloc] initWithMajorVersion:self->_uarpAssetInternal->var0.var3.major minorVersion:self->_uarpAssetInternal->var0.var3.minor releaseVersion:self->_uarpAssetInternal->var0.var3.release buildVersion:self->_uarpAssetInternal->var0.var3.build];

  return v2;
}

- (BOOL)assetReady:(id)ready error:(id *)error
{
  v5 = uarpPlatformEndpointPayloadRequestAllHeadersAndMetaData([ready uarpEndpoint], self->_uarpAssetInternal);
  if (v5 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10002547C();
  }

  return v5 == 0;
}

- (BOOL)assetMetaDataTLV:(id)v type:(unsigned int)type length:(unsigned int)length value:(char *)value error:(id *)error
{
  vCopy = v;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v14[0] = 67109632;
    v14[1] = type;
    v15 = 1024;
    lengthCopy = length;
    v17 = 2048;
    valueCopy = value;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Asset TLV T = 0x%08x, L = %d, V = %p", v14, 0x18u);
  }

  if (type == -858619645 && length == 4 && *value)
  {
    self->_ignoreVersion = 1;
  }

  return 1;
}

- (BOOL)assetMetaDataComplete:(id)complete error:(id *)error
{
  completeCopy = complete;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[VUARPAsset assetMetaDataComplete:error:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Checking version of asset %@", &v10, 0x16u);
  }

  self->_payloadIndex = 0;
  v7 = uarpPlatformEndpointAssetSetPayloadIndex([completeCopy uarpEndpoint], self->_uarpAssetInternal, self->_payloadIndex);
  if (v7)
  {
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000254FC(v8);
    }
  }

  return v7 == 0;
}

- (BOOL)payloadReady:(id)ready error:(id *)error
{
  readyCopy = ready;
  if ([readyCopy payloadReady:self error:error])
  {
    if (uarpPlatformEndpointPayloadRequestMetaData([readyCopy uarpEndpoint], self->_uarpAssetInternal) == 40)
    {
      v7 = [(VUARPAsset *)self payloadMetaDataComplete:readyCopy error:error];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)payloadMetaDataTLV:(id)v type:(unsigned int)type length:(unsigned int)length value:(char *)value error:(id *)error
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109632;
    v11[1] = type;
    v12 = 1024;
    lengthCopy = length;
    v14 = 2048;
    valueCopy = value;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Payload TLV T = 0x%08x, L = %d, V = %p", v11, 0x18u);
  }

  return 1;
}

- (BOOL)payloadDataComplete:(id)complete error:(id *)error
{
  completeCopy = complete;
  if ([completeCopy payloadDataComplete:self error:error])
  {
    v7 = [completeCopy fullyStaged:self error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)abandonAsset:(id)asset reason:(unsigned __int16)reason
{
  if (uarpPlatformEndpointAssetAbandon([asset uarpEndpoint], -[VUARPController uarpRemoteEndpoint](self->_uarpController, "uarpRemoteEndpoint"), self->_uarpAssetInternal, reason))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100025590(log);
    }
  }
}

- (BOOL)getBytesAtOffset:(unsigned int)offset accessory:(id)accessory buffer:(void *)buffer length:(unsigned __int16)length bytesCopied:(unsigned __int16 *)copied
{
  lengthCopy = length;
  v12 = [NSFileHandle fileHandleForReadingFromURL:self->_url error:0];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 uarpSeekToOffset:offset error:0];
    if ((v14 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100025624();
    }

    v15 = [v13 uarpReadDataUpToLength:lengthCopy error:0];
    memmove(buffer, [v15 bytes], objc_msgSend(v15, "length"));
    if (copied)
    {
      *copied = [v15 length];
    }

    [v13 uarpCloseAndReturnError:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)setBytesAtOffset:(unsigned int)offset accessory:(id)accessory buffer:(void *)buffer length:(unsigned __int16)length
{
  lengthCopy = length;
  v10 = [NSFileHandle fileHandleForUpdatingURL:self->_url error:0];
  v11 = v10;
  if (v10)
  {
    if (([v10 uarpSeekToOffset:offset error:0] & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000256A0();
    }

    v12 = [NSData dataWithBytes:buffer length:lengthCopy];
    v13 = [v11 uarpWriteData:v12 error:0];

    if ((v13 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10002571C(&self->_url);
    }

    [v11 uarpCloseAndReturnError:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)payloadMatchesAtIndex:(id)index index:(unint64_t)a4
{
  indexCopy = index;
  PayloadInfo = uarpAssetQueryPayloadInfo([indexCopy uarpEndpoint], self->_uarpAssetInternal, a4, &self->_currentPayloadInfo);
  log = self->_log;
  if (PayloadInfo)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000257A8(log);
    }

    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[VUARPAsset payloadMatchesAtIndex:index:]";
      v28 = 2048;
      *v29 = a4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Payload Index %lu", buf, 0x16u);
    }

    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      char1 = self->_currentPayloadInfo.payloadTag.char1;
      char2 = self->_currentPayloadInfo.payloadTag.char2;
      char3 = self->_currentPayloadInfo.payloadTag.char3;
      char4 = self->_currentPayloadInfo.payloadTag.char4;
      *buf = 136316162;
      v27 = "[VUARPAsset payloadMatchesAtIndex:index:]";
      v28 = 1024;
      *v29 = char1;
      *&v29[4] = 1024;
      *&v29[6] = char2;
      v30 = 1024;
      v31 = char3;
      v32 = 1024;
      v33 = char4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: - Tag is %c%c%c%c", buf, 0x24u);
    }

    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      major = self->_currentPayloadInfo.payloadVersion.major;
      minor = self->_currentPayloadInfo.payloadVersion.minor;
      release = self->_currentPayloadInfo.payloadVersion.release;
      build = self->_currentPayloadInfo.payloadVersion.build;
      *buf = 136316162;
      v27 = "[VUARPAsset payloadMatchesAtIndex:index:]";
      v28 = 1024;
      *v29 = major;
      *&v29[4] = 1024;
      *&v29[6] = minor;
      v30 = 1024;
      v31 = release;
      v32 = 1024;
      v33 = build;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: - Version is %u.%u.%u.%u", buf, 0x24u);
    }

    v20 = [UARPAssetTag alloc];
    expectedTag = [indexCopy expectedTag];
    v22 = [v20 initWithString:expectedTag];

    v23 = [NSString stringWithFormat:@"%c%c%c%c", self->_currentPayloadInfo.payloadTag.char1, self->_currentPayloadInfo.payloadTag.char2, self->_currentPayloadInfo.payloadTag.char3, self->_currentPayloadInfo.payloadTag.char4];
    v24 = [[UARPAssetTag alloc] initWithString:v23];
    v9 = [v24 isEqual:v22];
  }

  return v9;
}

- (BOOL)selectMatchingPayloadIndex:(id)index error:(id *)error
{
  indexCopy = index;
  expectedTag = [indexCopy expectedTag];

  if (!expectedTag)
  {
    self->_payloadIndex = 0;
LABEL_11:
    v9 = 1;
    goto LABEL_12;
  }

  if (self->_numPayloads)
  {
    v7 = 0;
    while (![(VUARPAsset *)self payloadMatchesAtIndex:indexCopy index:v7])
    {
      if (++v7 >= self->_numPayloads)
      {
        goto LABEL_6;
      }
    }

    self->_payloadIndex = v7;
    goto LABEL_11;
  }

LABEL_6:
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10002583C(log);
  }

  [(VUARPAsset *)self abandonAsset:indexCopy reason:4];
  v9 = 0;
LABEL_12:

  return v9;
}

- (BOOL)isAcceptablePayloadVersion:(id)version error:(id *)error
{
  versionCopy = version;
  expectedTag = [versionCopy expectedTag];

  if (expectedTag)
  {
    fwActiveVersion = [versionCopy fwActiveVersion];
    v8 = [[UARPAssetVersion alloc] initWithMajorVersion:self->_currentPayloadInfo.payloadVersion.major minorVersion:self->_currentPayloadInfo.payloadVersion.minor releaseVersion:self->_currentPayloadInfo.payloadVersion.release buildVersion:self->_currentPayloadInfo.payloadVersion.build];
    v9 = [v8 compare:fwActiveVersion];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[VUARPAsset isAcceptablePayloadVersion:error:]";
      v18 = 2112;
      v19 = fwActiveVersion;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: activeFwVersion <%@>", &v16, 0x16u);
    }

    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[VUARPAsset isAcceptablePayloadVersion:error:]";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: payloadFwVersion <%@>", &v16, 0x16u);
    }

    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000258CC(self, v9, v12);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else if (v9)
    {
LABEL_8:
      if (v9 != -1)
      {
        v14 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v13 = 1536;
LABEL_14:
      [(VUARPAsset *)self abandonAsset:versionCopy reason:v13];
      v14 = 0;
      goto LABEL_15;
    }

    v13 = 1024;
    goto LABEL_14;
  }

  v14 = 1;
LABEL_16:

  return v14;
}

- (BOOL)assetAllHeadersAndMetaDataComplete:(id)complete error:(id *)error
{
  completeCopy = complete;
  v15 = 0;
  if (uarpPlatformEndpointAssetQueryNumberOfPayloads([completeCopy uarpEndpoint], self->_uarpAssetInternal, &v15))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100025968(log);
    }
  }

  else
  {
    v12 = v15;
    self->_numPayloads = v15;
    if (!v12)
    {
      v14 = self->_log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100025B90(v14);
      }

      selfCopy2 = self;
      v8 = completeCopy;
      v9 = 4;
      goto LABEL_5;
    }

    if (![(VUARPAsset *)self selectMatchingPayloadIndex:completeCopy error:0])
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_1000259FC();
      }

      goto LABEL_6;
    }

    if (![(VUARPAsset *)self isAcceptablePayloadVersion:completeCopy error:0])
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100025A7C();
      }

      goto LABEL_6;
    }

    if (!uarpPlatformEndpointAssetSetPayloadIndex([completeCopy uarpEndpoint], self->_uarpAssetInternal, self->_payloadIndex))
    {
      v10 = 1;
      goto LABEL_7;
    }

    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100025AFC(v13);
    }
  }

  selfCopy2 = self;
  v8 = completeCopy;
  v9 = 2304;
LABEL_5:
  [(VUARPAsset *)selfCopy2 abandonAsset:v8 reason:v9];
LABEL_6:
  v10 = 0;
LABEL_7:

  return v10;
}

@end