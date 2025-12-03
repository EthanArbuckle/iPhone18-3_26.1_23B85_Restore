@interface IMTranscoderTelemetry
- (IMTranscoderTelemetry)init;
- (int64_t)_telemetryImageTypeForUTI:(id)i;
- (void)_emitSignpostPreviewGenerationRange:(int64_t)range begin:(BOOL)begin;
- (void)_emitSignpostTranscodeRange:(int64_t)range begin:(BOOL)begin;
- (void)emitPreviewGenerationBeginFromUTI:(id)i;
- (void)emitPreviewGenerationEndFromUTI:(id)i;
- (void)emitSignpostNoTranscodeFromUTI:(id)i;
- (void)emitSignpostTranscodeFinalForDestinationUTI:(id)i;
- (void)emitSignpostTranscodeSkipSourceUTI:(id)i;
- (void)emitSignpostTranscodeStepForDestinationUTI:(id)i;
- (void)emitTranscodeBeginFromUTI:(id)i;
- (void)emitTranscodeEndFromUTI:(id)i;
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

- (int64_t)_telemetryImageTypeForUTI:(id)i
{
  if (UTTypeConformsTo(i, *MEMORY[0x277CC20C8]))
  {
    return 1;
  }

  if (UTTypeConformsTo(i, @"public.heif-standard"))
  {
    return 2;
  }

  if (UTTypeConformsTo(i, *MEMORY[0x277CC2120]))
  {
    return 3;
  }

  return 4 * (UTTypeConformsTo(i, *MEMORY[0x277CC2088]) != 0);
}

- (void)emitTranscodeBeginFromUTI:(id)i
{
  v8 = objc_msgSend__telemetryImageTypeForUTI_(self, a2, i, v3, v4, v5, v6);

  MEMORY[0x2821F9670](self, sel__emitSignpostTranscodeRange_begin_, v8, 1, v9, v10, v11);
}

- (void)emitTranscodeEndFromUTI:(id)i
{
  v8 = objc_msgSend__telemetryImageTypeForUTI_(self, a2, i, v3, v4, v5, v6);

  MEMORY[0x2821F9670](self, sel__emitSignpostTranscodeRange_begin_, v8, 0, v9, v10, v11);
}

- (void)emitPreviewGenerationBeginFromUTI:(id)i
{
  v8 = objc_msgSend__telemetryImageTypeForUTI_(self, a2, i, v3, v4, v5, v6);

  MEMORY[0x2821F9670](self, sel__emitSignpostPreviewGenerationRange_begin_, v8, 1, v9, v10, v11);
}

- (void)emitPreviewGenerationEndFromUTI:(id)i
{
  v8 = objc_msgSend__telemetryImageTypeForUTI_(self, a2, i, v3, v4, v5, v6);

  MEMORY[0x2821F9670](self, sel__emitSignpostPreviewGenerationRange_begin_, v8, 0, v9, v10, v11);
}

- (void)_emitSignpostPreviewGenerationRange:(int64_t)range begin:(BOOL)begin
{
  beginCopy = begin;
  v7 = _iMessageTelemetryLogHandle();
  v8 = v7;
  if (beginCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (range <= 1)
  {
    if (range)
    {
      if (range == 1)
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
    switch(range)
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
            _os_signpost_emit_with_name_impl(&dword_254811000, v8, v12, signpostId, v11, " enableTelemetry=YES ", v13, 2u);
          }
        }

        break;
    }
  }
}

- (void)_emitSignpostTranscodeRange:(int64_t)range begin:(BOOL)begin
{
  beginCopy = begin;
  v7 = _iMessageTelemetryLogHandle();
  v8 = v7;
  if (beginCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (range <= 1)
  {
    if (range)
    {
      if (range == 1)
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
    switch(range)
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
            _os_signpost_emit_with_name_impl(&dword_254811000, v8, v12, signpostId, v11, " enableTelemetry=YES ", v13, 2u);
          }
        }

        break;
    }
  }
}

- (void)emitSignpostNoTranscodeFromUTI:(id)i
{
  v5 = _iMessageTelemetryLogHandle();
  v11 = objc_msgSend__telemetryImageTypeForUTI_(self, v6, i, v7, v8, v9, v10);
  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v18 = 0;
            v13 = "IMTranscoderImage.transcode.none.jpeg";
            v14 = &v18;
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
        v13 = "IMTranscoderImage.transcode.none.other";
        v14 = buf;
        goto LABEL_22;
      }
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v17 = 0;
          v13 = "IMTranscoderImage.transcode.none.heif";
          v14 = &v17;
          goto LABEL_22;
        }

        break;
      case 3:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v16 = 0;
          v13 = "IMTranscoderImage.transcode.none.png";
          v14 = &v16;
          goto LABEL_22;
        }

        break;
      case 4:
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v15 = 0;
            v13 = "IMTranscoderImage.transcode.none.gif";
            v14 = &v15;
LABEL_22:
            _os_signpost_emit_with_name_impl(&dword_254811000, v5, OS_SIGNPOST_EVENT, signpostId, v13, " enableTelemetry=YES ", v14, 2u);
          }
        }

        break;
    }
  }
}

- (void)emitSignpostTranscodeStepForDestinationUTI:(id)i
{
  v5 = _iMessageTelemetryLogHandle();
  v11 = objc_msgSend__telemetryImageTypeForUTI_(self, v6, i, v7, v8, v9, v10);
  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v18 = 0;
            v13 = "IMTranscoderImage.transcode.step.jpeg";
            v14 = &v18;
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
        v13 = "IMTranscoderImage.transcode.step.other";
        v14 = buf;
        goto LABEL_22;
      }
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v17 = 0;
          v13 = "IMTranscoderImage.transcode.step.heif";
          v14 = &v17;
          goto LABEL_22;
        }

        break;
      case 3:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v16 = 0;
          v13 = "IMTranscoderImage.transcode.step.png";
          v14 = &v16;
          goto LABEL_22;
        }

        break;
      case 4:
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v15 = 0;
            v13 = "IMTranscoderImage.transcode.step.gif";
            v14 = &v15;
LABEL_22:
            _os_signpost_emit_with_name_impl(&dword_254811000, v5, OS_SIGNPOST_EVENT, signpostId, v13, " enableTelemetry=YES ", v14, 2u);
          }
        }

        break;
    }
  }
}

- (void)emitSignpostTranscodeFinalForDestinationUTI:(id)i
{
  v5 = _iMessageTelemetryLogHandle();
  v11 = objc_msgSend__telemetryImageTypeForUTI_(self, v6, i, v7, v8, v9, v10);
  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v18 = 0;
            v13 = "IMTranscoderImage.transcode.final.jpeg";
            v14 = &v18;
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
        v13 = "IMTranscoderImage.transcode.final.other";
        v14 = buf;
        goto LABEL_22;
      }
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v17 = 0;
          v13 = "IMTranscoderImage.transcode.final.heif";
          v14 = &v17;
          goto LABEL_22;
        }

        break;
      case 3:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v16 = 0;
          v13 = "IMTranscoderImage.transcode.final.png";
          v14 = &v16;
          goto LABEL_22;
        }

        break;
      case 4:
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v15 = 0;
            v13 = "IMTranscoderImage.transcode.final.gif";
            v14 = &v15;
LABEL_22:
            _os_signpost_emit_with_name_impl(&dword_254811000, v5, OS_SIGNPOST_EVENT, signpostId, v13, " enableTelemetry=YES ", v14, 2u);
          }
        }

        break;
    }
  }
}

- (void)emitSignpostTranscodeSkipSourceUTI:(id)i
{
  v5 = _iMessageTelemetryLogHandle();
  v11 = objc_msgSend__telemetryImageTypeForUTI_(self, v6, i, v7, v8, v9, v10);
  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v18 = 0;
            v13 = "IMTranscoderImage.transcode.skip.jpeg";
            v14 = &v18;
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
        v13 = "IMTranscoderImage.transcode.skip.other";
        v14 = buf;
        goto LABEL_22;
      }
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v17 = 0;
          v13 = "IMTranscoderImage.transcode.skip.heif";
          v14 = &v17;
          goto LABEL_22;
        }

        break;
      case 3:
        signpostId = self->_signpostId;
        if (signpostId && os_signpost_enabled(v5))
        {
          v16 = 0;
          v13 = "IMTranscoderImage.transcode.skip.png";
          v14 = &v16;
          goto LABEL_22;
        }

        break;
      case 4:
        signpostId = self->_signpostId;
        if (signpostId)
        {
          if (os_signpost_enabled(v5))
          {
            v15 = 0;
            v13 = "IMTranscoderImage.transcode.skip.gif";
            v14 = &v15;
LABEL_22:
            _os_signpost_emit_with_name_impl(&dword_254811000, v5, OS_SIGNPOST_EVENT, signpostId, v13, " enableTelemetry=YES ", v14, 2u);
          }
        }

        break;
    }
  }
}

@end