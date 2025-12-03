@interface CAMCaptureMetadataUtilities
+ (id)metadataFromPanoramaRequest:(id)request;
+ (id)metadataFromRequest:(id)request;
+ (id)preciseCaptureDateFromStillImageMetadata:(id)metadata;
+ (void)removeUnwantedKeysForPersistenceFromMetadata:(id)metadata;
@end

@implementation CAMCaptureMetadataUtilities

+ (id)preciseCaptureDateFromStillImageMetadata:(id)metadata
{
  v3 = [metadata objectForKey:*MEMORY[0x1E696DE30]];
  v4 = [v3 objectForKey:*MEMORY[0x1E6990B58]];
  if (v4)
  {
    HostTimeClock = CMClockGetHostTimeClock();
    memset(&v11, 0, sizeof(v11));
    CMTimeMakeFromDictionary(&v11, v4);
    memset(&v10, 0, sizeof(v10));
    CMClockGetTime(&lhs, HostTimeClock);
    v8 = v11;
    CMTimeSubtract(&v10, &lhs, &v8);
    lhs = v10;
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-CMTimeGetSeconds(&lhs)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)metadataFromRequest:(id)request
{
  v24[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  location = [requestCopy location];
  heading = [requestCopy heading];
  if (location)
  {
    v7 = +[CAMLocationController locationMetadataForLocation:heading:device:](CAMLocationController, "locationMetadataForLocation:heading:device:", location, heading, [requestCopy captureDevice]);
    [v4 setObject:v7 forKey:*MEMORY[0x1E696DBF0]];
  }

  if ([requestCopy capturedFromPhotoBooth])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 setObject:v8 forKey:*MEMORY[0x1E696DD90]];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v8 setObject:v9 forKey:*MEMORY[0x1E696DDD0]];
    [v9 addObject:@"Photo Booth"];
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([requestCopy conformsToProtocol:&unk_1F17598B0])
  {
    burstIdentifier = [requestCopy burstIdentifier];
    if (burstIdentifier)
    {
      [v10 setObject:burstIdentifier forKeyedSubscript:*MEMORY[0x1E6990A50]];
    }
  }

  if (![requestCopy type])
  {
    v12 = requestCopy;
    v13 = +[CAMCaptureCapabilities capabilities];
    v14 = [v13 semanticStyleSupportForMode:objc_msgSend(v12 devicePosition:{"captureMode"), objc_msgSend(v12, "captureDevicePosition")}];

    semanticStyle = [v12 semanticStyle];

    if (semanticStyle)
    {
      if ((v14 & 2) != 0)
      {
        semanticStyle2 = [v12 semanticStyle];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          semanticStyle3 = [v12 semanticStyle];
          v23 = *MEMORY[0x1E6990B08];
          v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(semanticStyle3, "makerPreset")}];
          v24[0] = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
          [v10 setObject:v20 forKeyedSubscript:*MEMORY[0x1E6990B00]];
        }
      }
    }
  }

  if ([v10 count])
  {
    [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696DE30]];
  }

  v21 = [v4 copy];

  return v21;
}

+ (void)removeUnwantedKeysForPersistenceFromMetadata:(id)metadata
{
  metadataCopy = metadata;
  [metadataCopy setObject:0 forKeyedSubscript:@"{Diagnostic}"];
  [metadataCopy setObject:0 forKeyedSubscript:@"AddDebugInfoToUserComments"];
  [metadataCopy setObject:0 forKeyedSubscript:@"{ApplePortrait}"];
  v3 = *MEMORY[0x1E6985F60];
  v4 = [metadataCopy objectForKey:*MEMORY[0x1E6985F60]];
  v5 = *MEMORY[0x1E69912F8];
  v6 = [v4 objectForKey:*MEMORY[0x1E69912F8]];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
    [v7 removeObjectForKey:v5];
    [metadataCopy setObject:v7 forKey:v3];
  }
}

+ (id)metadataFromPanoramaRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:v5 forKey:*MEMORY[0x1E696D9B0]];
  +[CAMOrientationUtilities imageOrientationOfResult:withCaptureDevice:captureOrientation:](CAMOrientationUtilities, "imageOrientationOfResult:withCaptureDevice:captureOrientation:", 0, [requestCopy captureDevice], objc_msgSend(requestCopy, "captureOrientation"));
  v6 = [MEMORY[0x1E696AD98] numberWithInt:PLExifOrientationFromImageOrientation()];
  [v4 setObject:v6 forKey:*MEMORY[0x1E696DE78]];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:v7 forKey:*MEMORY[0x1E696DF28]];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v9 = MGCopyAnswer();
  v10 = v9;
  if (v9)
  {
    localizedModel = v9;
  }

  else
  {
    localizedModel = [currentDevice localizedModel];
  }

  v12 = localizedModel;

  [v7 setObject:@"Apple" forKey:*MEMORY[0x1E696DF48]];
  [v7 setObject:v12 forKey:*MEMORY[0x1E696DF50]];
  systemVersion = [currentDevice systemVersion];
  [v7 setObject:systemVersion forKey:*MEMORY[0x1E696DF68]];

  if (metadataFromPanoramaRequest__onceToken != -1)
  {
    +[CAMCaptureMetadataUtilities metadataFromPanoramaRequest:];
  }

  v23 = currentDevice;
  date = [MEMORY[0x1E695DF00] date];
  v15 = [metadataFromPanoramaRequest__exifDateTimeFormatter stringFromDate:date];
  v16 = v15;
  if (v15 && [v15 length])
  {
    [v5 setObject:v16 forKey:*MEMORY[0x1E696D998]];
    [v5 setObject:v16 forKey:*MEMORY[0x1E696D990]];
    [v7 setObject:v16 forKey:*MEMORY[0x1E696DF20]];
  }

  v17 = v12;
  v18 = [metadataFromPanoramaRequest__exifSubsecTimeFormatter stringFromDate:date];
  v19 = v18;
  if (v18 && [v18 length])
  {
    [v5 setObject:v19 forKey:*MEMORY[0x1E696DB28]];
    [v5 setObject:v19 forKey:*MEMORY[0x1E696DB20]];
  }

  v20 = [CAMCaptureMetadataUtilities metadataFromRequest:requestCopy];
  [v4 addEntriesFromDictionary:v20];
  v21 = [v4 copy];

  return v21;
}

uint64_t __59__CAMCaptureMetadataUtilities_metadataFromPanoramaRequest___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = metadataFromPanoramaRequest__exifDateTimeFormatter;
  metadataFromPanoramaRequest__exifDateTimeFormatter = v0;

  v2 = metadataFromPanoramaRequest__exifDateTimeFormatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  v4 = metadataFromPanoramaRequest__exifDateTimeFormatter;
  v5 = objc_alloc(MEMORY[0x1E695DEE8]);
  v6 = *MEMORY[0x1E695D850];
  v7 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [v4 setCalendar:v7];

  [metadataFromPanoramaRequest__exifDateTimeFormatter setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
  v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v9 = metadataFromPanoramaRequest__exifSubsecTimeFormatter;
  metadataFromPanoramaRequest__exifSubsecTimeFormatter = v8;

  v10 = metadataFromPanoramaRequest__exifSubsecTimeFormatter;
  v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v10 setLocale:v11];

  v12 = metadataFromPanoramaRequest__exifSubsecTimeFormatter;
  v13 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v6];
  [v12 setCalendar:v13];

  v14 = metadataFromPanoramaRequest__exifSubsecTimeFormatter;

  return [v14 setDateFormat:@"SSS"];
}

@end