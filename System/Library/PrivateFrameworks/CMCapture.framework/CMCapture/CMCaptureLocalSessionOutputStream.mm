@interface CMCaptureLocalSessionOutputStream
+ (void)initialize;
- (CMCaptureLocalSessionOutputStream)initWithSampleBufferReceiver:(id)receiver;
- (opaqueCMSampleBuffer)_copyMetadataOnlySampleBufferFromSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)message;
- (void)dealloc;
- (void)handleNotification:(id)notification payload:(id)payload;
@end

@implementation CMCaptureLocalSessionOutputStream

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (CMCaptureLocalSessionOutputStream)initWithSampleBufferReceiver:(id)receiver
{
  v14.receiver = self;
  v14.super_class = CMCaptureLocalSessionOutputStream;
  v4 = [(CMCaptureLocalSessionOutputStream *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_sampleBufferReceiver = receiver;
    v4->_videoConfiguration = objc_alloc_init(CMCaptureLocalSessionVideoConfiguration);
    v5->_requestedMetadataObjects = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5->_faceTrackingAttributes = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([(CMCaptureLocalSessionOutputStreamSampleBufferReceiver *)v5->_sampleBufferReceiver receiverType])
    {
      if ([(CMCaptureLocalSessionOutputStreamSampleBufferReceiver *)v5->_sampleBufferReceiver receiverType]== 1)
      {
        v11 = @"CMCaptureLocalSessionSinkID_DeskcamVideo";
        v6 = MEMORY[0x1E695DEC8];
        v7 = &v11;
      }

      else
      {
        if ([(CMCaptureLocalSessionOutputStreamSampleBufferReceiver *)v5->_sampleBufferReceiver receiverType]!= 2)
        {
LABEL_10:
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          return v5;
        }

        v10 = @"CMCaptureLocalSessionSinkID_MetadataCameraMetadataObject";
        v6 = MEMORY[0x1E695DEC8];
        v7 = &v10;
      }

      v8 = 1;
    }

    else
    {
      v12 = @"CMCaptureLocalSessionSinkID_MainVideo";
      v13 = @"CMCaptureLocalSessionSinkID_MetadataObject";
      v6 = MEMORY[0x1E695DEC8];
      v7 = &v12;
      v8 = 2;
    }

    v5->_associatedSinkIDs = [v6 arrayWithObjects:v7 count:{v8, v10, v11, v12, v13}];
    goto LABEL_10;
  }

  return v5;
}

- (void)dealloc
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();

  v3.receiver = self;
  v3.super_class = CMCaptureLocalSessionOutputStream;
  [(CMCaptureLocalSessionOutputStream *)&v3 dealloc];
}

- (void)handleNotification:(id)notification payload:(id)payload
{
  objc_initWeak(&location, self);
  if (dword_1EB58E760)
  {
    v26 = 0;
    v25 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([notification isEqualToString:{@"LocalQueueUpdated", v13, v14}])
  {
    v8 = [payload objectForKeyedSubscript:@"LocalQueue"];
    v9 = [payload objectForKeyedSubscript:@"SectionID"];
    if ([(NSArray *)self->_associatedSinkIDs containsObject:v9])
    {
      if (dword_1EB58E760)
      {
        v26 = 0;
        v25 = OS_LOG_TYPE_DEFAULT;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v11 = v26;
        if (os_log_type_enabled(v10, v25))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v17 = 136315906;
          v18 = "[CMCaptureLocalSessionOutputStream handleNotification:payload:]";
          v19 = 2114;
          selfCopy = self;
          v21 = 2112;
          v22 = v8;
          v23 = 2114;
          v24 = v9;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __64__CMCaptureLocalSessionOutputStream_handleNotification_payload___block_invoke;
      v15[3] = &unk_1E7999EC0;
      objc_copyWeak(&v16, &location);
      FigLocalQueueSetReceiverHandler(v8, [(CMCaptureLocalSessionOutputStreamSampleBufferReceiver *)self->_sampleBufferReceiver queue], v15);
      objc_destroyWeak(&v16);
    }
  }

  objc_destroyWeak(&location);
}

void __64__CMCaptureLocalSessionOutputStream_handleNotification_payload___block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = *a2;
    v6 = *(a2 + 4);
    [WeakRetained _handleLocalQueueMessage:&v5];
  }
}

- (void)_handleLocalQueueMessage:(FigLocalQueueMessage *)message
{
  if (message->var0 == 3)
  {
    v5 = *(&message->var0 + 1);
    if (CMSampleBufferGetFormatDescription(v5))
    {
      v6 = 0;
    }

    else
    {
      v7 = [(CMCaptureLocalSessionOutputStream *)self _copyMetadataOnlySampleBufferFromSampleBuffer:v5];
      v6 = v7;
      if (v7)
      {
        v5 = v7;
      }
    }

    CMRemoveAttachment(v5, *off_1E798A300);
    CMRemoveAttachment(v5, *off_1E798A308);
    if ([(CMCaptureLocalSessionOutputStreamSampleBufferReceiver *)self->_sampleBufferReceiver isStreaming])
    {
      v8 = *off_1E798A518;
      v9 = [(CMCaptureLocalSessionOutputStreamSampleBufferReceiver *)self->_sampleBufferReceiver updateAttachmentsAndControlsFromTransportLayerAttachments:CMGetAttachment(v5, *off_1E798A518, 0)];
      CMSetAttachment(v5, v8, v9, 1u);
      [(CMCaptureLocalSessionOutputStreamSampleBufferReceiver *)self->_sampleBufferReceiver sendSampleBuffer:v5];
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }

  else if (message->var0 == 5)
  {
    if (dword_1EB58E760)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (opaqueCMSampleBuffer)_copyMetadataOnlySampleBufferFromSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  formatDescriptionOut = 0;
  v30 = 0;
  v4 = *MEMORY[0x1E695E480];
  if (CMFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x6D657461u, 0x61746368u, 0, &formatDescriptionOut))
  {
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_24:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  CMSampleBufferGetDuration(&sampleTimingArray.duration, buffer);
  CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.presentationTimeStamp, buffer);
  CMSampleBufferGetDecodeTimeStamp(&sampleTimingArray.decodeTimeStamp, buffer);
  v5 = CMSampleBufferCreate(v4, 0, 1u, 0, 0, formatDescriptionOut, 0, 1, &sampleTimingArray, 0, 0, &v30);
  if (v5)
  {
    v18 = v5;
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v20 = v28;
    if (os_log_type_enabled(v19, v27))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      v23 = 136315394;
      v24 = "[CMCaptureLocalSessionOutputStream _copyMetadataOnlySampleBufferFromSampleBuffer:]";
      v25 = 1024;
      v26 = v18;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_24;
  }

  v6 = *off_1E798A518;
  v7 = CMGetAttachment(buffer, *off_1E798A518, 0);
  v8 = [v7 objectForKeyedSubscript:@"DetectedObjectsInfo"];
  v9 = [v7 objectForKeyedSubscript:@"TrackedFaces"];
  v10 = CMGetAttachment(buffer, @"DetectedObjectsInfo", 0);
  v11 = CMGetAttachment(buffer, @"TrackedFaces", 0);
  v12 = v8 == 0 && v10 != 0;
  if (!v12)
  {
    v10 = v8;
  }

  if (v9 == 0 && v11 != 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (v9 == 0 && v11 != 0 || v12)
  {
    if (v7)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v7];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v15 = dictionary;
    [dictionary setObject:v10 forKeyedSubscript:@"DetectedObjectsInfo"];
    [v15 setObject:v13 forKeyedSubscript:@"TrackedFaces"];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v15];
  }

  CMSetAttachment(v30, v6, v7, 1u);
LABEL_15:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  return v30;
}

@end