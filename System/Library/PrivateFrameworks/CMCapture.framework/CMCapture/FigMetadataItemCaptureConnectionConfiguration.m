@interface FigMetadataItemCaptureConnectionConfiguration
- (BOOL)isEqual:(id)a3;
- (FigMetadataItemCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)description;
- (void)dealloc;
@end

@implementation FigMetadataItemCaptureConnectionConfiguration

- (FigMetadataItemCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3
{
  if (a3)
  {
    v10.receiver = self;
    v10.super_class = FigMetadataItemCaptureConnectionConfiguration;
    v4 = [(FigCaptureConnectionConfiguration *)&v10 initWithXPCEncoding:?];
    if (v4)
    {
      v9 = 0;
      FigXPCMessageCopyCFData();
      int64 = xpc_dictionary_get_int64(a3, "clock");
      if (int64 == 2)
      {
        CMAudioClockCreate(*MEMORY[0x1E695E480], &v4->_clock);
      }

      else if (int64 == 1)
      {
        HostTimeClock = CMClockGetHostTimeClock();
        v4->_clock = CFRetain(HostTimeClock);
      }

      v7 = xpc_dictionary_get_int64(a3, "inputType");
      if ((v7 - 1) <= 2)
      {
        v4->_sourceSubType = v7;
      }
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v11.receiver = self;
  v11.super_class = FigMetadataItemCaptureConnectionConfiguration;
  blockBufferOut = 0;
  v3 = [(FigCaptureConnectionConfiguration *)&v11 copyXPCEncoding];
  CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(*MEMORY[0x1E695E480], self->_formatDescription, 0, &blockBufferOut);
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v8 = 0;
  CMBlockBufferGetDataPointer(blockBufferOut, 0, &lengthAtOffsetOut, &v8, &dataPointerOut);
  v4 = objc_alloc(MEMORY[0x1E695DEF0]);
  v5 = [v4 initWithBytes:dataPointerOut length:v8];
  FigXPCMessageSetCFData();

  CMClockGetHostTimeClock();
  if (FigCFEqual())
  {
    v6 = 1;
  }

  else
  {
    if (!self->_clock)
    {
      goto LABEL_6;
    }

    v6 = 2;
  }

  xpc_dictionary_set_int64(v3, "clock", v6);
LABEL_6:
  xpc_dictionary_set_int64(v3, "inputType", self->_sourceSubType);
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v3;
}

- (void)dealloc
{
  formatDescription = self->_formatDescription;
  if (formatDescription)
  {
    CFRelease(formatDescription);
  }

  clock = self->_clock;
  if (clock)
  {
    CFRelease(clock);
  }

  v5.receiver = self;
  v5.super_class = FigMetadataItemCaptureConnectionConfiguration;
  [(FigCaptureConnectionConfiguration *)&v5 dealloc];
}

- (id)description
{
  v3 = [(FigCaptureConnectionConfiguration *)self underlyingDeviceType];
  if (v3 == [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] sourceDeviceType])
  {
    v4 = &stru_1F216A3D0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (SUB-DEVICE:%@)", +[FigCaptureSourceConfiguration stringForSourceDeviceType:](FigCaptureSourceConfiguration, "stringForSourceDeviceType:", -[FigCaptureConnectionConfiguration underlyingDeviceType](self, "underlyingDeviceType"))];
  }

  return [MEMORY[0x1E696AD60] stringWithFormat:@"MIC %p: <%@>%@ -> <%@>, SST: %d, E:%d", self, -[FigCaptureConnectionConfiguration sourceConfiguration](self, "sourceConfiguration"), v4, -[FigCaptureConnectionConfiguration sinkConfiguration](self, "sinkConfiguration"), -[FigMetadataItemCaptureConnectionConfiguration sourceSubType](self, "sourceSubType"), -[FigCaptureConnectionConfiguration enabled](self, "enabled")];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FigMetadataItemCaptureConnectionConfiguration;
  v4 = [(FigCaptureConnectionConfiguration *)&v6 copyWithZone:a3];
  [v4 setFormatDescription:{-[FigMetadataItemCaptureConnectionConfiguration formatDescription](self, "formatDescription")}];
  [v4 setClock:{-[FigMetadataItemCaptureConnectionConfiguration clock](self, "clock")}];
  [v4 setSourceSubType:{-[FigMetadataItemCaptureConnectionConfiguration sourceSubType](self, "sourceSubType")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v8.receiver = self;
  v8.super_class = FigMetadataItemCaptureConnectionConfiguration;
  v5 = [(FigCaptureConnectionConfiguration *)&v8 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = CMFormatDescriptionEqual(-[FigMetadataItemCaptureConnectionConfiguration formatDescription](self, "formatDescription"), [a3 formatDescription]);
      if (v5)
      {
        [(FigMetadataItemCaptureConnectionConfiguration *)self clock];
        [a3 clock];
        v5 = FigCFEqual();
        if (v5)
        {
          v6 = [(FigMetadataItemCaptureConnectionConfiguration *)self sourceSubType];
          LOBYTE(v5) = v6 == [a3 sourceSubType];
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end