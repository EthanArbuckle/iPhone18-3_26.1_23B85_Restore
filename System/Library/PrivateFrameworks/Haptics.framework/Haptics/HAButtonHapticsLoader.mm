@interface HAButtonHapticsLoader
+ (id)sharedInstance;
- (BOOL)hapticAssetType:(int64_t)type hasAudio:(BOOL *)audio hasHaptic:(BOOL *)haptic error:(id *)error;
- (BOOL)loadButtonHapticOfType:(int64_t)type withParameters:(id)parameters atSlot:(int64_t)slot error:(id *)error;
- (float)audioGainForType:(int64_t)type;
- (float)defaultDownGainForType:(int64_t)type;
- (float)defaultUpGainForType:(int64_t)type;
- (float)hapticGainForType:(int64_t)type;
- (void)dealloc;
@end

@implementation HAButtonHapticsLoader

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = HAButtonHapticsLoader;
  [(HAButtonHapticsLoader *)&v2 dealloc];
}

+ (id)sharedInstance
{
  if (+[HAButtonHapticsLoader sharedInstance]::onceToken != -1)
  {
    +[HAButtonHapticsLoader sharedInstance];
  }

  v3 = gHapticsWaveLoader;

  return v3;
}

void __39__HAButtonHapticsLoader_sharedInstance__block_invoke()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(HAButtonHapticsLoader);
  v1 = gHapticsWaveLoader;
  gHapticsWaveLoader = v0;

  gNotificationPort = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
  RunLoopSource = IONotificationPortGetRunLoopSource(gNotificationPort);
  if (!RunLoopSource)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "Haptics IONotificationPortGetRunLoopSource returned NULL";
LABEL_22:
    v12 = 2;
    goto LABEL_23;
  }

  v3 = RunLoopSource;
  Current = CFRunLoopGetCurrent();
  if (!Current)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "Haptics CFRunLoopGetCurrent returned NULL";
    goto LABEL_22;
  }

  CFRunLoopAddSource(Current, v3, *MEMORY[0x277CBF058]);
  v5 = gNotificationPort;
  v14 = 1;
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[31],int>(&v16, "Button Haptics Asset Interface", &v14);
  *buf = &v16;
  v19 = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(buf);
  v15 = CFDictionaryRef;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  applesauce::CF::TypeRef::TypeRef(&v16, "IOPropertyMatch");
  if (CFDictionaryRef)
  {
    CFRetain(CFDictionaryRef);
  }

  cf = CFDictionaryRef;
  *buf = &v16;
  v19 = 1;
  v7 = applesauce::CF::details::make_CFDictionaryRef(buf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (CFDictionaryRef)
  {
    CFRelease(CFDictionaryRef);
  }

  v8 = IOServiceAddMatchingNotification(v5, "IOServiceMatched", v7, MatchingNotificationHandler, 0, &gIOIterator);
  v9 = v8;
  if (!v8)
  {
    MatchingNotificationHandler(v8, gIOIterator);
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    v10 = MEMORY[0x277D86220];
    v11 = "Haptics IOServiceAddMatchingNotification err %d";
    v12 = 8;
LABEL_23:
    _os_log_impl(&dword_2510D3000, v10, OS_LOG_TYPE_ERROR, v11, buf, v12);
  }

LABEL_25:
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadButtonHapticOfType:(int64_t)type withParameters:(id)parameters atSlot:(int64_t)slot error:(id *)error
{
  slotCopy = slot;
  v52 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v10 = *MEMORY[0x277CCA590];
  if (error)
  {
    *error = 0;
  }

  if (gServiceAvailable == 1)
  {
    v11 = _sharedMemoryPtr;
    bzero(_sharedMemoryPtr, _sharedMemorySize);
    *v11 = slotCopy;
    v42 = 0;
    Property = dictForType(type, &v42);
    if (Property)
    {
      [HAButtonHapticsLoader loadButtonHapticOfType:withParameters:atSlot:error:];
      goto LABEL_40;
    }

    v13 = v42;
    v41 = v42;
    String = getString(v42, @"AudioFilePath");
    if (String)
    {
      v15 = CFURLCreateWithFileSystemPath(0, String, kCFURLPOSIXPathStyle, 0);
      *&outAudioFile = 0.0;
      Property = AudioFileOpenURL(v15, kAudioFileReadPermission, 0, &outAudioFile);
      CFRelease(v15);
      if (Property)
      {
        [HAButtonHapticsLoader loadButtonHapticOfType:withParameters:atSlot:error:];
        goto LABEL_39;
      }

      outPropertyData = 0;
      ioDataSize = 8;
      Property = AudioFileGetProperty(outAudioFile, 0x62636E74u, &ioDataSize, &outPropertyData);
      if (Property)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 136316162;
        *&buf[4] = "HAButtonHapticsLoader.mm";
        v44 = 1024;
        v45 = 376;
        v46 = 2080;
        v47 = "result = AudioFileGetProperty(afid, kAudioFilePropertyAudioDataByteCount, &propSize, &numBytes64)";
        v48 = 1024;
        v49 = Property;
        v50 = 2080;
        v51 = "FAIL";
        v35 = MEMORY[0x277D86220];
        goto LABEL_61;
      }

      v16 = outPropertyData;
      if (outPropertyData >= 0x800)
      {
        v16 = 2048;
      }

      ioNumBytes = v16;
      Property = AudioFileReadBytes(outAudioFile, 1u, 0, &ioNumBytes, v11 + 1030);
      if (Property)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 136316162;
        *&buf[4] = "HAButtonHapticsLoader.mm";
        v44 = 1024;
        v45 = 379;
        v46 = 2080;
        v47 = "result = AudioFileReadBytes(afid, true, 0, &numBytes, buttonInfo.audioWaveformBuffer)";
        v48 = 1024;
        v49 = Property;
        v50 = 2080;
        v51 = "FAIL";
        v35 = MEMORY[0x277D86220];
        goto LABEL_61;
      }

      ioDataSize = 40;
      Property = AudioFileGetProperty(outAudioFile, 0x64666D74u, &ioDataSize, v36);
      if (Property)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        *buf = 136316162;
        *&buf[4] = "HAButtonHapticsLoader.mm";
        v44 = 1024;
        v45 = 383;
        v46 = 2080;
        v47 = "result = AudioFileGetProperty(afid, kAudioFilePropertyDataFormat, &propSize, &fmt)";
        v48 = 1024;
        v49 = Property;
        v50 = 2080;
        v51 = "FAIL";
        v35 = MEMORY[0x277D86220];
        goto LABEL_61;
      }

      v17 = v36[0];
      AudioFileClose(outAudioFile);
      v11[1029] = ioNumBytes >> 1;
    }

    else
    {
      bzero(v11 + 1029, 0x802uLL);
      v17 = 48000.0;
    }

    v18 = getString(v13, @"HapticFilePath");
    v19 = v18 != 0;
    if (!v18)
    {
      if (error)
      {
        *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v10 code:-50 userInfo:0];
      }

      goto LABEL_44;
    }

    v20 = CFURLCreateWithFileSystemPath(0, v18, kCFURLPOSIXPathStyle, 0);
    *&outAudioFile = 0.0;
    Property = AudioFileOpenURL(v20, kAudioFileReadPermission, 0, &outAudioFile);
    CFRelease(v20);
    if (Property)
    {
      [HAButtonHapticsLoader loadButtonHapticOfType:withParameters:atSlot:error:];
      goto LABEL_39;
    }

    outPropertyData = 0;
    ioDataSize = 8;
    Property = AudioFileGetProperty(outAudioFile, 0x62636E74u, &ioDataSize, &outPropertyData);
    if (Property)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 136316162;
      *&buf[4] = "HAButtonHapticsLoader.mm";
      v44 = 1024;
      v45 = 412;
      v46 = 2080;
      v47 = "result = AudioFileGetProperty(afid, kAudioFilePropertyAudioDataByteCount, &propSize, &numBytes64)";
      v48 = 1024;
      v49 = Property;
      v50 = 2080;
      v51 = "FAIL";
      v35 = MEMORY[0x277D86220];
    }

    else
    {
      v21 = outPropertyData;
      if (outPropertyData >= 0x800)
      {
        v21 = 2048;
      }

      ioNumBytes = v21;
      Property = AudioFileReadBytes(outAudioFile, 1u, 0, &ioNumBytes, v11 + 5);
      if (!Property)
      {
        ioDataSize = 40;
        Property = AudioFileGetProperty(outAudioFile, 0x64666D74u, &ioDataSize, v36);
        if (!Property)
        {
          v22 = v36[0];
          AudioFileClose(outAudioFile);
          v11[4] = ioNumBytes >> 1;
          if (v11[1029])
          {
            *buf = 0x3F847AE147AE147BLL;
            getFloat64(v13, @"AudioPreSilence", buf);
            v23 = vcvtmd_s64_f64(*buf * v17 + 0.5);
          }

          else
          {
            v23 = 0;
          }

          *buf = 0x3F847AE147AE147BLL;
          getFloat64(v13, @"HapticPreSilence", buf);
          v24 = *buf;
          v36[0] = 0.01;
          getFloat64(v13, @"PostSilence", v36);
          v25 = vcvtmd_s64_f64(v24 * v22 + 0.5);
          v26 = vcvtmd_s64_f64(v36[0] * v22 + 0.5);
          if (parametersCopy)
          {
            *buf = 0;
            if (getFloat64(parametersCopy, @"AudioPreSilence", buf) && v11[1029])
            {
              v23 = vcvtmd_s64_f64(*buf * v17 + 0.5);
            }

            v36[0] = 0.0;
            Float64 = getFloat64(parametersCopy, @"HapticPreSilence", v36);
            v28 = v36[0];
            *&outAudioFile = 0.0;
            v29 = getFloat64(parametersCopy, @"PostSilence", &outAudioFile);
            v30 = vcvtmd_s64_f64(v28 * v22 + 0.5);
            if (Float64)
            {
              v25 = v30;
            }

            v31 = vcvtmd_s64_f64(*&outAudioFile * v22 + 0.5);
            if (v29)
            {
              v26 = v31;
            }
          }

          v11[1] = v23;
          v11[2] = v25;
          v11[3] = v26;
          Property = IOConnectCallStructMethod(gButtonServiceConnection, 0, 0, 0, 0, 0);
          if (Property)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = Property;
              _os_log_impl(&dword_2510D3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Haptics IOConnectCallStructMethod UpdateSSHBAsset err %d", buf, 8u);
            }

            v32 = *MEMORY[0x277CCA4A8];

            v10 = v32;
            goto LABEL_39;
          }

LABEL_44:
          CFDictionaryReleaser::~CFDictionaryReleaser(&v41);
          goto LABEL_45;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = "HAButtonHapticsLoader.mm";
          v44 = 1024;
          v45 = 419;
          v46 = 2080;
          v47 = "result = AudioFileGetProperty(afid, kAudioFilePropertyDataFormat, &propSize, &fmt)";
          v48 = 1024;
          v49 = Property;
          v50 = 2080;
          v51 = "FAIL";
          v35 = MEMORY[0x277D86220];
          goto LABEL_61;
        }

LABEL_39:
        CFDictionaryReleaser::~CFDictionaryReleaser(&v41);
        goto LABEL_40;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 136316162;
      *&buf[4] = "HAButtonHapticsLoader.mm";
      v44 = 1024;
      v45 = 415;
      v46 = 2080;
      v47 = "result = AudioFileReadBytes(afid, true, 0, &numBytes, buttonInfo.hapticWaveformBuffer)";
      v48 = 1024;
      v49 = Property;
      v50 = 2080;
      v51 = "FAIL";
      v35 = MEMORY[0x277D86220];
    }

LABEL_61:
    _os_log_impl(&dword_2510D3000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require_noerr: [%s, %d] (goto %s;)", buf, 0x2Cu);
    goto LABEL_39;
  }

  Property = 1936881185;
LABEL_40:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = Property;
    _os_log_impl(&dword_2510D3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Haptics loadButtonHapticOfType FAILED %d", buf, 8u);
  }

  v19 = 0;
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v10 code:Property userInfo:0];
  }

LABEL_45:

  v33 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)hapticAssetType:(int64_t)type hasAudio:(BOOL *)audio hasHaptic:(BOOL *)haptic error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = *MEMORY[0x277CCA590];
  if (error)
  {
    *error = 0;
  }

  v15 = 0;
  v11 = dictForType(type, &v15);
  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "HAButtonHapticsLoader.mm";
      v17 = 1024;
      v18 = 527;
      v19 = 2080;
      v20 = "result = dictForType(type, typeDictionary)";
      v21 = 1024;
      v22 = v11;
      v23 = 2080;
      v24 = "FAIL";
      _os_log_impl(&dword_2510D3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require_noerr: [%s, %d] (goto %s;)", buf, 0x2Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&dword_2510D3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Haptics loadButtonHapticOfType FAILED %d", buf, 8u);
    }

    if (error)
    {
      *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v10 code:v11 userInfo:0];
    }
  }

  else
  {
    v12 = v15;
    *buf = v15;
    if (audio)
    {
      *audio = getString(v15, @"AudioFilePath") != 0;
    }

    if (haptic)
    {
      *haptic = getString(v12, @"HapticFilePath") != 0;
    }

    CFDictionaryReleaser::~CFDictionaryReleaser(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11 == 0;
}

- (float)defaultDownGainForType:(int64_t)type
{
  v8 = 0;
  v3 = dictForType(type, &v8);
  v7 = v8;
  v4 = 0.0;
  if (!v3)
  {
    v6 = 0.0;
    getFloat64(v8, @"DownGain", &v6);
    v4 = v6;
  }

  CFDictionaryReleaser::~CFDictionaryReleaser(&v7);
  return v4;
}

- (float)defaultUpGainForType:(int64_t)type
{
  v8 = 0;
  v3 = dictForType(type, &v8);
  v7 = v8;
  v4 = 0.5;
  if (!v3)
  {
    v6 = 0.0;
    getFloat64(v8, @"UpGain", &v6);
    v4 = v6;
  }

  CFDictionaryReleaser::~CFDictionaryReleaser(&v7);
  return v4;
}

- (float)hapticGainForType:(int64_t)type
{
  v8 = 0;
  v3 = dictForType(type, &v8);
  v7 = v8;
  v4 = 0.5;
  if (!v3)
  {
    v6 = 0.0;
    getFloat64(v8, @"HapticGain", &v6);
    v4 = v6;
  }

  CFDictionaryReleaser::~CFDictionaryReleaser(&v7);
  return v4;
}

- (float)audioGainForType:(int64_t)type
{
  v8 = 0;
  v3 = dictForType(type, &v8);
  v7 = v8;
  v4 = 0.5;
  if (!v3)
  {
    v6 = 0.0;
    getFloat64(v8, @"AudioGain", &v6);
    v4 = v6;
  }

  CFDictionaryReleaser::~CFDictionaryReleaser(&v7);
  return v4;
}

- (void)loadButtonHapticOfType:withParameters:atSlot:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_2510D3000, MEMORY[0x277D86220], v0, "%25s:%-5d  ca_require_noerr: [%s, %d] (goto %s;)", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadButtonHapticOfType:withParameters:atSlot:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_2510D3000, MEMORY[0x277D86220], v0, "%25s:%-5d  ca_require_noerr: [%s, %d] (goto %s;)", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadButtonHapticOfType:withParameters:atSlot:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_2510D3000, MEMORY[0x277D86220], v0, "%25s:%-5d  ca_require_noerr: [%s, %d] (goto %s;)", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end