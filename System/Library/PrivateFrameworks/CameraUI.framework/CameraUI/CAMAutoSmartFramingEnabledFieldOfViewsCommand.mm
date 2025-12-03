@interface CAMAutoSmartFramingEnabledFieldOfViewsCommand
- (BOOL)_isSmartFramingFieldOfView:(int64_t)view equalToAVCaptureFraming:(id)framing;
- (CAMAutoSmartFramingEnabledFieldOfViewsCommand)initWithCoder:(id)coder;
- (CAMAutoSmartFramingEnabledFieldOfViewsCommand)initWithSmartFramingEnabledFieldOfViews:(id)views;
- (id)_enabledFramingsFromSupportedFramings:(id)framings;
- (id)_framingForSmartFramingFieldOfView:(int64_t)view supportedFramings:(id)framings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMAutoSmartFramingEnabledFieldOfViewsCommand

- (CAMAutoSmartFramingEnabledFieldOfViewsCommand)initWithSmartFramingEnabledFieldOfViews:(id)views
{
  viewsCopy = views;
  v10.receiver = self;
  v10.super_class = CAMAutoSmartFramingEnabledFieldOfViewsCommand;
  v6 = [(CAMCaptureCommand *)&v10 initWithSubcommands:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__smartFramingEnabledFieldsOfView, views);
    v8 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CAMAutoSmartFramingEnabledFieldOfViewsCommand;
  v4 = [(CAMCaptureCommand *)&v8 copyWithZone:zone];
  _smartFramingEnabledFieldsOfView = [(CAMAutoSmartFramingEnabledFieldOfViewsCommand *)self _smartFramingEnabledFieldsOfView];
  v6 = v4[3];
  v4[3] = _smartFramingEnabledFieldsOfView;

  return v4;
}

- (CAMAutoSmartFramingEnabledFieldOfViewsCommand)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CAMAutoSmartFramingEnabledFieldOfViewsCommand;
  [(CAMCaptureCommand *)&v3 encodeWithCoder:coder];
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"NSCoding not implemented"];
}

- (void)executeWithContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  currentVideoDevice = [context currentVideoDevice];
  smartFramingMonitor = [currentVideoDevice smartFramingMonitor];

  if (smartFramingMonitor)
  {
    smartFramingMonitor2 = [currentVideoDevice smartFramingMonitor];
    supportedFramings = [smartFramingMonitor2 supportedFramings];
    v8 = [(CAMAutoSmartFramingEnabledFieldOfViewsCommand *)self _enabledFramingsFromSupportedFramings:supportedFramings];

    v9 = os_log_create("com.apple.camera", "SmartFraming");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Enabled smart framings: %@", &v11, 0xCu);
    }

    smartFramingMonitor3 = [currentVideoDevice smartFramingMonitor];
    [smartFramingMonitor3 setEnabledFramings:v8];
  }
}

- (id)_enabledFramingsFromSupportedFramings:(id)framings
{
  v24 = *MEMORY[0x1E69E9840];
  framingsCopy = framings;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  _smartFramingEnabledFieldsOfView = [(CAMAutoSmartFramingEnabledFieldOfViewsCommand *)self _smartFramingEnabledFieldsOfView];
  v7 = [_smartFramingEnabledFieldsOfView countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    *&v8 = 134217984;
    v16 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(_smartFramingEnabledFieldsOfView);
        }

        integerValue = [*(*(&v17 + 1) + 8 * i) integerValue];
        v13 = [(CAMAutoSmartFramingEnabledFieldOfViewsCommand *)self _framingForSmartFramingFieldOfView:integerValue supportedFramings:framingsCopy];
        if (v13)
        {
          [v5 addObject:v13];
        }

        else
        {
          v14 = os_log_create("com.apple.camera", "SmartFraming");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v22 = integerValue;
            _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "Failed to find supported smart framing for field of view: %ld", buf, 0xCu);
          }
        }
      }

      v9 = [_smartFramingEnabledFieldsOfView countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }

  return v5;
}

- (id)_framingForSmartFramingFieldOfView:(int64_t)view supportedFramings:(id)framings
{
  framingsCopy = framings;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__20;
  v14 = __Block_byref_object_dispose__20;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __102__CAMAutoSmartFramingEnabledFieldOfViewsCommand__framingForSmartFramingFieldOfView_supportedFramings___block_invoke;
  v9[3] = &unk_1E76FCC40;
  v9[5] = &v10;
  v9[6] = view;
  v9[4] = self;
  [framingsCopy enumerateObjectsUsingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __102__CAMAutoSmartFramingEnabledFieldOfViewsCommand__framingForSmartFramingFieldOfView_supportedFramings___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) _isSmartFramingFieldOfView:*(a1 + 48) equalToAVCaptureFraming:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)_isSmartFramingFieldOfView:(int64_t)view equalToAVCaptureFraming:(id)framing
{
  framingCopy = framing;
  v6 = framingCopy;
  v7 = 0;
  if (view > 2)
  {
    if (view == 3)
    {
      [framingCopy zoomFactor];
      v13 = v18;
      v10 = +[CAMCaptureCapabilities capabilities];
      [v10 smartFramingFieldOfViewZoomedOutLandscapeZoomFactor];
    }

    else
    {
      if (view != 4)
      {
        goto LABEL_19;
      }

      [framingCopy zoomFactor];
      v13 = v12;
      v10 = +[CAMCaptureCapabilities capabilities];
      [v10 smartFramingFieldOfViewLandscapeZoomFactor];
    }

    v16 = v13 - v14;
    v17 = MEMORY[0x1E69868B0];
  }

  else
  {
    if (view == 1)
    {
      [framingCopy zoomFactor];
      v9 = v15;
      v10 = +[CAMCaptureCapabilities capabilities];
      [v10 smartFramingFieldOfViewPortraitZoomFactor];
    }

    else
    {
      if (view != 2)
      {
        goto LABEL_19;
      }

      [framingCopy zoomFactor];
      v9 = v8;
      v10 = +[CAMCaptureCapabilities capabilities];
      [v10 smartFramingFieldOfViewZoomedOutPortraitZoomFactor];
    }

    v16 = v9 - v11;
    v17 = MEMORY[0x1E69868B8];
  }

  v19 = fabs(v16);

  aspectRatio = [v6 aspectRatio];
  v7 = v19 <= 0.00000011920929 && aspectRatio == *v17;

LABEL_19:
  return v7;
}

@end