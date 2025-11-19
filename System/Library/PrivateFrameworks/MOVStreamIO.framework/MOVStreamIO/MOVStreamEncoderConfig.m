@interface MOVStreamEncoderConfig
+ (BOOL)isEncoderAvailableOfType:(unsigned int)a3 withId:(id)a4;
+ (BOOL)isProResCodec:(unsigned int)a3;
+ (id)encoderIdsForType:(unsigned int)a3;
+ (id)monochrome10BitEncoderConfigUsingAVEWithBitrate:(unint64_t)a3;
+ (id)monochrome10BitEncoderConfigUsingAVEWithQuality:(double)a3;
+ (id)supportedProfileLevelsForHEVC;
- (BOOL)applySessionProperties:(OpaqueVTCompressionSession *)a3;
- (BOOL)writeToFile:(id)a3 error:(id *)a4;
- (MOVStreamEncoderConfig)initWithCodecType:(unsigned int)a3 encoderSpecification:(id)a4 sessionProperties:(id)a5;
- (MOVStreamEncoderConfig)initWithContentsOfFile:(id)a3 error:(id *)a4;
- (MOVStreamEncoderConfig)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (void)enableAVEHighPerformanceProfile;
@end

@implementation MOVStreamEncoderConfig

+ (BOOL)isProResCodec:(unsigned int)a3
{
  result = 1;
  if (a3 <= 1634755431)
  {
    if (a3 == 1634743400)
    {
      return result;
    }

    v4 = 13432;
    goto LABEL_8;
  }

  if ((a3 - 1634755432 > 0xB || ((1 << (a3 - 104)) & 0x8C1) == 0) && a3 != 1634759272)
  {
    v4 = 29294;
LABEL_8:
    if (a3 != (v4 | 0x61700000))
    {
      return 0;
    }
  }

  return result;
}

+ (BOOL)isEncoderAvailableOfType:(unsigned int)a3 withId:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B98], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2BA0], v7);
  listOfVideoEncodersOut = 0;
  v8 = VTCopyVideoEncoderList(Mutable, &listOfVideoEncodersOut);
  CFRelease(Mutable);
  if (v8)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"⛔️⛔️⛔️ ERROR: Cannot get encoder list. Error:'%d'. ⛔️⛔️⛔️", v8];
    v20 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v19;
      _os_log_impl(&dword_257883000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v19 userInfo:0];
    objc_exception_throw(v21);
  }

  Count = CFArrayGetCount(listOfVideoEncodersOut);
  if (Count < 1)
  {
    v13 = 0;
LABEL_12:
    v17 = listOfVideoEncodersOut;
    if (listOfVideoEncodersOut)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v10 = 0;
  v11 = *MEMORY[0x277CE2B88];
  v12 = *MEMORY[0x277CE2B90];
  v13 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(listOfVideoEncodersOut, v10);
    v15 = CFGetTypeID(ValueAtIndex);
    if (v15 != CFDictionaryGetTypeID() || [CFDictionaryGetValue(ValueAtIndex v11)] != a3)
    {
      goto LABEL_9;
    }

    if (!v5)
    {
      break;
    }

    v16 = CFDictionaryGetValue(ValueAtIndex, v12);
    if ([v16 isEqualToString:v5])
    {
      if (listOfVideoEncodersOut)
      {
        CFRelease(listOfVideoEncodersOut);
      }

      goto LABEL_14;
    }

LABEL_9:
    v13 = ++v10 < Count;
    if (Count == v10)
    {
      goto LABEL_12;
    }
  }

  v17 = listOfVideoEncodersOut;
  if (!listOfVideoEncodersOut)
  {
    goto LABEL_14;
  }

LABEL_13:
  CFRelease(v17);
LABEL_14:

  return v13;
}

+ (id)encoderIdsForType:(unsigned int)a3
{
  v22 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2B98], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CE2BA0], v5);
  listOfVideoEncodersOut = 0;
  v6 = VTCopyVideoEncoderList(Mutable, &listOfVideoEncodersOut);
  if (v6)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"⛔️⛔️⛔️ ERROR: Cannot get encoder list. Error:'%d'. ⛔️⛔️⛔️", v6];
    v17 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v16;
      _os_log_impl(&dword_257883000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v16 userInfo:0];
    objc_exception_throw(v18);
  }

  Count = CFArrayGetCount(listOfVideoEncodersOut);
  v8 = objc_opt_new();
  if (Count >= 1)
  {
    v9 = 0;
    v10 = *MEMORY[0x277CE2B88];
    v11 = *MEMORY[0x277CE2B90];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(listOfVideoEncodersOut, v9);
      v13 = CFGetTypeID(ValueAtIndex);
      if (v13 == CFDictionaryGetTypeID() && [CFDictionaryGetValue(ValueAtIndex v10)] == a3)
      {
        v14 = CFDictionaryGetValue(ValueAtIndex, v11);
        [v8 addObject:v14];
      }

      ++v9;
    }

    while (Count != v9);
  }

  return v8;
}

+ (id)monochrome10BitEncoderConfigUsingAVEWithQuality:(double)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = +[MOVStreamIOUtility AVEProfileLevel10BitMonochrome];
  v5 = [MOVStreamEncoderConfig alloc];
  v18 = *MEMORY[0x277CE2BB0];
  v6 = MEMORY[0x277CBEC38];
  v19[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v8 = *MEMORY[0x277CE2500];
  v16[0] = *MEMORY[0x277CE25D8];
  v16[1] = v8;
  v17[0] = v4;
  v17[1] = MEMORY[0x277CBEC28];
  v9 = *MEMORY[0x277CE25F0];
  v17[2] = v6;
  v10 = *MEMORY[0x277CE25E0];
  v16[2] = v9;
  v16[3] = v10;
  v11 = MEMORY[0x277CCABB0];
  [MOVStreamIOUtility clampedQuality:a3];
  v12 = [v11 numberWithDouble:?];
  v17[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v14 = [(MOVStreamEncoderConfig *)v5 initWithCodecType:1752589105 encoderSpecification:v7 sessionProperties:v13];

  return v14;
}

+ (id)monochrome10BitEncoderConfigUsingAVEWithBitrate:(unint64_t)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = +[MOVStreamIOUtility AVEProfileLevel10BitMonochrome];
  v5 = [MOVStreamEncoderConfig alloc];
  v16 = *MEMORY[0x277CE2BB0];
  v6 = MEMORY[0x277CBEC38];
  v17[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v8 = *MEMORY[0x277CE2500];
  v14[0] = *MEMORY[0x277CE25D8];
  v14[1] = v8;
  v15[0] = v4;
  v15[1] = MEMORY[0x277CBEC28];
  v15[2] = v6;
  v9 = *MEMORY[0x277CE2518];
  v14[2] = *MEMORY[0x277CE25F0];
  v14[3] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v12 = [(MOVStreamEncoderConfig *)v5 initWithCodecType:1752589105 encoderSpecification:v7 sessionProperties:v11];

  return v12;
}

+ (id)supportedProfileLevelsForHEVC
{
  session = 0;
  v2 = VTCompressionSessionCreate(*MEMORY[0x277CBECE8], 640, 480, 0x68766331u, MEMORY[0x277CBEC10], 0, 0, 0, 0, &session);
  if (v2)
  {
    NSLog(&cfstr_AssertDSFSLD.isa, v2, "VTCompressionSessionCreate failed\n", "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamEncoderConfig.mm", 421);
    v3 = 0;
  }

  else
  {
    supportedPropertyDictionaryOut = 0;
    VTSessionCopySupportedPropertyDictionary(session, &supportedPropertyDictionaryOut);
    v4 = [(__CFDictionary *)supportedPropertyDictionaryOut objectForKey:@"ProfileLevel"];
    v3 = [v4 objectForKey:@"SupportedValueList"];

    if (supportedPropertyDictionaryOut)
    {
      CFRelease(supportedPropertyDictionaryOut);
    }

    VTCompressionSessionInvalidate(session);
    CFRelease(session);
  }

  return v3;
}

- (MOVStreamEncoderConfig)initWithCodecType:(unsigned int)a3 encoderSpecification:(id)a4 sessionProperties:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = MOVStreamEncoderConfig;
  v10 = [(MOVStreamEncoderConfig *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_codecType = a3;
    v12 = [v8 copy];
    encoderSpecification = v11->_encoderSpecification;
    v11->_encoderSpecification = v12;

    v14 = [v9 copy];
    sessionProperties = v11->_sessionProperties;
    v11->_sessionProperties = v14;
  }

  return v11;
}

- (MOVStreamEncoderConfig)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MOVStreamEncoderConfig;
  v5 = [(MOVStreamEncoderConfig *)&v17 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  if (v4)
  {
    v6 = [v4 objectForKey:@"codecType"];
    v5->_codecType = [v6 unsignedIntValue];

    v7 = [v4 objectForKey:@"encoderSpecification"];
    v8 = [v7 copy];
    encoderSpecification = v5->_encoderSpecification;
    v5->_encoderSpecification = v8;

    v10 = [v4 objectForKey:@"sessionProperties"];
    v11 = [v10 copy];
    sessionProperties = v5->_sessionProperties;
    v5->_sessionProperties = v11;

LABEL_4:
    v13 = v5;
    goto LABEL_8;
  }

  v14 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_impl(&dword_257883000, v14, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: Cannot read config from nil dictionary", v16, 2u);
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (MOVStreamEncoderConfig)initWithContentsOfFile:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:a4];
    if (v8)
    {
      self = [(MOVStreamEncoderConfig *)self initWithDictionary:v8];
      v9 = self;
    }

    else
    {
      v12 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *a4;
        *buf = 138543362;
        v16 = v13;
        _os_log_impl(&dword_257883000, v12, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: Cannot read config from file '%{public}@'. ⛔️⛔️⛔️", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot read config from file '%@'.", v6];
    v11 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v10 code:24];
    if (a4)
    {
      v11 = v11;
      *a4 = v11;
    }

    v9 = 0;
  }

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"codecType";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[MOVStreamEncoderConfig codecType](self, "codecType")}];
  v9[0] = v3;
  v8[1] = @"encoderSpecification";
  v4 = [(MOVStreamEncoderConfig *)self encoderSpecification];
  v9[1] = v4;
  v8[2] = @"sessionProperties";
  v5 = [(MOVStreamEncoderConfig *)self sessionProperties];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (BOOL)writeToFile:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CCAC58];
  v8 = [(MOVStreamEncoderConfig *)self dictionaryRepresentation];
  v9 = [v7 dataWithPropertyList:v8 format:100 options:0 error:a4];

  if (a4 && *a4)
  {
    v10 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *a4;
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_257883000, v10, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: %{public}@. ⛔️⛔️⛔️", buf, 0xCu);
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (([v9 writeToFile:v6 atomically:1] & 1) == 0)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot write to file %@.", v6];
    v14 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v13 code:24];
    if (a4)
    {
      v14 = v14;
      *a4 = v14;
    }

    goto LABEL_11;
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (void)enableAVEHighPerformanceProfile
{
  v5 = [(NSDictionary *)self->_sessionProperties mutableCopy];
  [v5 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25F0]];
  [v5 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE25B0]];
  [v5 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CE2500]];
  v3 = [v5 copy];
  sessionProperties = self->_sessionProperties;
  self->_sessionProperties = v3;
}

- (BOOL)applySessionProperties:(OpaqueVTCompressionSession *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(MOVStreamEncoderConfig *)self sessionProperties];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(MOVStreamEncoderConfig *)self sessionProperties];
        v12 = [v11 valueForKey:v10];

        v13 = VTSessionSetProperty(a3, v10, v12);
        if (v13)
        {
          v15 = v13;
          v16 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v23 = v10;
            v24 = 2114;
            v25 = v12;
            v26 = 1024;
            v27 = v15;
            _os_log_impl(&dword_257883000, v16, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: Set '%{public}@' to '%{public}@' in encoder config (Err: %d). ⛔️⛔️⛔️", buf, 0x1Cu);
          }

          v14 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

@end