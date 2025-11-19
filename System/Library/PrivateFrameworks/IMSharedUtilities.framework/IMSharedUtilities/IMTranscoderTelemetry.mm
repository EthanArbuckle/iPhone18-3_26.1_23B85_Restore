@interface IMTranscoderTelemetry
- (IMTranscoderTelemetry)init;
- (int64_t)_telemetryImageTypeForUTI:(id)a3;
- (void)_emitSignpostPreviewGenerationRange:(int64_t)a3 begin:(BOOL)a4;
- (void)_emitSignpostTranscodeRange:(int64_t)a3 begin:(BOOL)a4;
- (void)emitPreviewGenerationBeginFromUTI:(id)a3;
- (void)emitPreviewGenerationEndFromUTI:(id)a3;
- (void)emitSignpostNoTranscodeFromUTI:(id)a3;
- (void)emitSignpostTranscodeFinalForDestinationUTI:(id)a3;
- (void)emitSignpostTranscodeSkipSourceUTI:(id)a3;
- (void)emitSignpostTranscodeStepForDestinationUTI:(id)a3;
- (void)emitTranscodeBeginFromUTI:(id)a3;
- (void)emitTranscodeEndFromUTI:(id)a3;
@end

@implementation IMTranscoderTelemetry

- (IMTranscoderTelemetry)init
{
  v5.receiver = self;
  v5.super_class = IMTranscoderTelemetry;
  v2 = [(IMTranscoderTelemetry *)&v5 init];
  v3 = _iMessageTelemetryLogHandle();
  v2->_signpostId = os_signpost_id_generate(v3);
  return v2;
}

- (int64_t)_telemetryImageTypeForUTI:(id)a3
{
  if (UTTypeConformsTo(a3, *MEMORY[0x1E6963808]))
  {
    return 1;
  }

  if (UTTypeConformsTo(a3, @"public.heif-standard"))
  {
    return 2;
  }

  if (UTTypeConformsTo(a3, *MEMORY[0x1E6963860]))
  {
    return 3;
  }

  return 4 * (UTTypeConformsTo(a3, *MEMORY[0x1E69637D8]) != 0);
}

- (void)emitTranscodeBeginFromUTI:(id)a3
{
  [(IMTranscoderTelemetry *)self _telemetryImageTypeForUTI:a3];

  MEMORY[0x1EEE66B58](self, sel__emitSignpostTranscodeRange_begin_);
}

- (void)emitTranscodeEndFromUTI:(id)a3
{
  [(IMTranscoderTelemetry *)self _telemetryImageTypeForUTI:a3];

  MEMORY[0x1EEE66B58](self, sel__emitSignpostTranscodeRange_begin_);
}

- (void)emitPreviewGenerationBeginFromUTI:(id)a3
{
  [(IMTranscoderTelemetry *)self _telemetryImageTypeForUTI:a3];

  MEMORY[0x1EEE66B58](self, sel__emitSignpostPreviewGenerationRange_begin_);
}

- (void)emitPreviewGenerationEndFromUTI:(id)a3
{
  [(IMTranscoderTelemetry *)self _telemetryImageTypeForUTI:a3];

  MEMORY[0x1EEE66B58](self, sel__emitSignpostPreviewGenerationRange_begin_);
}

- (void)_emitSignpostPreviewGenerationRange:(int64_t)a3 begin:(BOOL)a4
{
  v4 = a4;
  v7 = _iMessageTelemetryLogHandle();
  v8 = v7;
  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v7))
          {
            v17 = 0;
            v11 = "IMTranscoderImage.previewGeneration.type.jpeg";
            v12 = v9;
            v13 = &v17;
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
      signpostId = self->_signpostId;
      if (signpostId && os_signpost_enabled(v7))
      {
        *buf = 0;
        v11 = "IMTranscoderImage.previewGeneration.type.other";
        v12 = v9;
        v13 = buf;
        goto LABEL_25;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v7))
        {
          v16 = 0;
          v11 = "IMTranscoderImage.previewGeneration.type.heif";
          v12 = v9;
          v13 = &v16;
          goto LABEL_25;
        }

        break;
      case 3:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v7))
        {
          v15 = 0;
          v11 = "IMTranscoderImage.previewGeneration.type.png";
          v12 = v9;
          v13 = &v15;
          goto LABEL_25;
        }

        break;
      case 4:
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v7))
          {
            v14 = 0;
            v11 = "IMTranscoderImage.previewGeneration.type.gif";
            v12 = v9;
            v13 = &v14;
LABEL_25:
            _os_signpost_emit_with_name_impl(&dword_1A85E5000, v8, v12, signpostId, v11, " enableTelemetry=YES ", v13, 2u);
          }
        }

        break;
    }
  }
}

- (void)_emitSignpostTranscodeRange:(int64_t)a3 begin:(BOOL)a4
{
  v4 = a4;
  v7 = _iMessageTelemetryLogHandle();
  v8 = v7;
  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v7))
          {
            v17 = 0;
            v11 = "IMTranscoderImage.transcode.type.jpeg";
            v12 = v9;
            v13 = &v17;
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
      signpostId = self->_signpostId;
      if (signpostId && os_signpost_enabled(v7))
      {
        *buf = 0;
        v11 = "IMTranscoderImage.transcode.type.other";
        v12 = v9;
        v13 = buf;
        goto LABEL_25;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v7))
        {
          v16 = 0;
          v11 = "IMTranscoderImage.transcode.type.heif";
          v12 = v9;
          v13 = &v16;
          goto LABEL_25;
        }

        break;
      case 3:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v7))
        {
          v15 = 0;
          v11 = "IMTranscoderImage.transcode.type.png";
          v12 = v9;
          v13 = &v15;
          goto LABEL_25;
        }

        break;
      case 4:
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v7))
          {
            v14 = 0;
            v11 = "IMTranscoderImage.transcode.type.gif";
            v12 = v9;
            v13 = &v14;
LABEL_25:
            _os_signpost_emit_with_name_impl(&dword_1A85E5000, v8, v12, signpostId, v11, " enableTelemetry=YES ", v13, 2u);
          }
        }

        break;
    }
  }
}

- (void)emitSignpostNoTranscodeFromUTI:(id)a3
{
  v5 = _iMessageTelemetryLogHandle();
  v6 = [(IMTranscoderTelemetry *)self _telemetryImageTypeForUTI:a3];
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v13 = 0;
            v8 = "IMTranscoderImage.transcode.none.jpeg";
            v9 = &v13;
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      signpostId = self->_signpostId;
      if (signpostId && os_signpost_enabled(v5))
      {
        *buf = 0;
        v8 = "IMTranscoderImage.transcode.none.other";
        v9 = buf;
        goto LABEL_22;
      }
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v12 = 0;
          v8 = "IMTranscoderImage.transcode.none.heif";
          v9 = &v12;
          goto LABEL_22;
        }

        break;
      case 3:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v11 = 0;
          v8 = "IMTranscoderImage.transcode.none.png";
          v9 = &v11;
          goto LABEL_22;
        }

        break;
      case 4:
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v10 = 0;
            v8 = "IMTranscoderImage.transcode.none.gif";
            v9 = &v10;
LABEL_22:
            _os_signpost_emit_with_name_impl(&dword_1A85E5000, v5, OS_SIGNPOST_EVENT, signpostId, v8, " enableTelemetry=YES ", v9, 2u);
          }
        }

        break;
    }
  }
}

- (void)emitSignpostTranscodeStepForDestinationUTI:(id)a3
{
  v5 = _iMessageTelemetryLogHandle();
  v6 = [(IMTranscoderTelemetry *)self _telemetryImageTypeForUTI:a3];
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v13 = 0;
            v8 = "IMTranscoderImage.transcode.step.jpeg";
            v9 = &v13;
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      signpostId = self->_signpostId;
      if (signpostId && os_signpost_enabled(v5))
      {
        *buf = 0;
        v8 = "IMTranscoderImage.transcode.step.other";
        v9 = buf;
        goto LABEL_22;
      }
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v12 = 0;
          v8 = "IMTranscoderImage.transcode.step.heif";
          v9 = &v12;
          goto LABEL_22;
        }

        break;
      case 3:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v11 = 0;
          v8 = "IMTranscoderImage.transcode.step.png";
          v9 = &v11;
          goto LABEL_22;
        }

        break;
      case 4:
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v10 = 0;
            v8 = "IMTranscoderImage.transcode.step.gif";
            v9 = &v10;
LABEL_22:
            _os_signpost_emit_with_name_impl(&dword_1A85E5000, v5, OS_SIGNPOST_EVENT, signpostId, v8, " enableTelemetry=YES ", v9, 2u);
          }
        }

        break;
    }
  }
}

- (void)emitSignpostTranscodeFinalForDestinationUTI:(id)a3
{
  v5 = _iMessageTelemetryLogHandle();
  v6 = [(IMTranscoderTelemetry *)self _telemetryImageTypeForUTI:a3];
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v13 = 0;
            v8 = "IMTranscoderImage.transcode.final.jpeg";
            v9 = &v13;
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      signpostId = self->_signpostId;
      if (signpostId && os_signpost_enabled(v5))
      {
        *buf = 0;
        v8 = "IMTranscoderImage.transcode.final.other";
        v9 = buf;
        goto LABEL_22;
      }
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v12 = 0;
          v8 = "IMTranscoderImage.transcode.final.heif";
          v9 = &v12;
          goto LABEL_22;
        }

        break;
      case 3:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v11 = 0;
          v8 = "IMTranscoderImage.transcode.final.png";
          v9 = &v11;
          goto LABEL_22;
        }

        break;
      case 4:
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v10 = 0;
            v8 = "IMTranscoderImage.transcode.final.gif";
            v9 = &v10;
LABEL_22:
            _os_signpost_emit_with_name_impl(&dword_1A85E5000, v5, OS_SIGNPOST_EVENT, signpostId, v8, " enableTelemetry=YES ", v9, 2u);
          }
        }

        break;
    }
  }
}

- (void)emitSignpostTranscodeSkipSourceUTI:(id)a3
{
  v5 = _iMessageTelemetryLogHandle();
  v6 = [(IMTranscoderTelemetry *)self _telemetryImageTypeForUTI:a3];
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v13 = 0;
            v8 = "IMTranscoderImage.transcode.skip.jpeg";
            v9 = &v13;
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      signpostId = self->_signpostId;
      if (signpostId && os_signpost_enabled(v5))
      {
        *buf = 0;
        v8 = "IMTranscoderImage.transcode.skip.other";
        v9 = buf;
        goto LABEL_22;
      }
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v12 = 0;
          v8 = "IMTranscoderImage.transcode.skip.heif";
          v9 = &v12;
          goto LABEL_22;
        }

        break;
      case 3:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v11 = 0;
          v8 = "IMTranscoderImage.transcode.skip.png";
          v9 = &v11;
          goto LABEL_22;
        }

        break;
      case 4:
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v10 = 0;
            v8 = "IMTranscoderImage.transcode.skip.gif";
            v9 = &v10;
LABEL_22:
            _os_signpost_emit_with_name_impl(&dword_1A85E5000, v5, OS_SIGNPOST_EVENT, signpostId, v8, " enableTelemetry=YES ", v9, 2u);
          }
        }

        break;
    }
  }
}

@end