@interface HFCameraClipExporter
+ (BOOL)hasCachedRecordingForCameraClip:(id)a3;
+ (double)durationOfCachedRecordingForCameraClip:(id)a3;
+ (id)_exportableCameraName:(id)a3;
+ (id)userFriendlyExportURLForCameraName:(id)a3 withStartDate:(id)a4;
@end

@implementation HFCameraClipExporter

+ (id)userFriendlyExportURLForCameraName:(id)a3 withStartDate:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA968];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setLocalizedDateFormatFromTemplate:@"MMM-d-y-hh:mm:ss-a-z"];
  v10 = [v9 stringFromDate:v7];

  v11 = [a1 _exportableCameraName:v8];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@.mp4", v11, v10];
  v13 = [v12 stringByReplacingOccurrencesOfString:@":" withString:@"-"];

  v14 = [v13 stringByReplacingOccurrencesOfString:@" withString:{", &stru_2824B1A78}];

  v15 = [v14 stringByReplacingOccurrencesOfString:@" " withString:@"-"];

  v16 = HFLogForCategory(0x12uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v15;
    _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Attempt to generate export url using string:%@", buf, 0xCu);
  }

  v17 = MEMORY[0x277CBEBC0];
  v18 = +[HFUtilities cachesDirectoryURL];
  v19 = [v17 URLWithString:v15 relativeToURL:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (BOOL)hasCachedRecordingForCameraClip:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [HFCameraUtilities videoDestinationURLForCameraClip:v3];
  [HFCameraClipExporter durationOfCachedRecordingForCameraClip:v3];
  if (v5 != 0.0)
  {
    v6 = v5;
    [v3 duration];
    if (v7 != 0.0)
    {
      [v3 duration];
      v9 = v6 / v8;
      v10 = HFLogForCategory(0x12uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [v3 duration];
        *buf = 134218496;
        v22 = v6;
        v23 = 2048;
        v24 = v11;
        v25 = 2048;
        v26 = v9 * 100.0;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Cached recording duration (%0.2f/%0.2f) is %0.2f percent downloaded.", buf, 0x20u);
      }

      if (v9 >= 0.95)
      {
        v17 = 1;
        goto LABEL_14;
      }

      v12 = HFLogForCategory(0x12uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Truncated video file detected. Removing.", buf, 2u);
      }

      v13 = [MEMORY[0x277CCAA00] defaultManager];
      v14 = [v4 path];
      v20 = 0;
      [v13 removeItemAtPath:v14 error:&v20];
      v15 = v20;

      if (v15)
      {
        v16 = HFLogForCategory(0x12uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v22 = *&v15;
          v23 = 2112;
          v24 = v4;
          _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Error:%@ removing file:%@", buf, 0x16u);
        }
      }
    }
  }

  v17 = 0;
LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (double)durationOfCachedRecordingForCameraClip:(id)a3
{
  v3 = [HFCameraUtilities videoDestinationURLForCameraClip:a3];
  [HFCameraUtilities durationOfRecordingAtURL:v3];
  v5 = v4;

  return v5;
}

+ (id)_exportableCameraName:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v5 = [v3 rangeOfCharacterFromSet:v4];
  v7 = v6;

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v3 stringByReplacingCharactersInRange:v5 withString:{v7, &stru_2824B1A78}];

    v3 = v8;
  }

  return v3;
}

@end