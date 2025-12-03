@interface ICRadarUtilities
+ (void)createRadarWithTitle:(id)title description:(id)description;
+ (void)promptUserToFileBugWithAlertMessage:(id)message bugTitle:(id)title bugDescription:(id)description;
@end

@implementation ICRadarUtilities

+ (void)promptUserToFileBugWithAlertMessage:(id)message bugTitle:(id)title bugDescription:(id)description
{
  messageCopy = message;
  titleCopy = title;
  descriptionCopy = description;
  if (promptUserToFileBugWithAlertMessage_bugTitle_bugDescription__onceToken != -1)
  {
    +[ICRadarUtilities promptUserToFileBugWithAlertMessage:bugTitle:bugDescription:];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__ICRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_2;
  block[3] = &unk_1E8484908;
  v14 = messageCopy;
  v15 = titleCopy;
  v16 = descriptionCopy;
  v10 = descriptionCopy;
  v11 = titleCopy;
  v12 = messageCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __80__ICRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke()
{
  notificationContexts = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

void __80__ICRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_2(uint64_t a1)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DisableAssertAlert"];

  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Assert");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __80__ICRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_2_cold_4();
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __80__ICRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_2_cold_1(a1, v5);
    }

    v6 = *MEMORY[0x1E695EE60];
    v19[0] = *MEMORY[0x1E695EE58];
    v19[1] = v6;
    v7 = *(a1 + 32);
    if (!v7)
    {
      v7 = &stru_1F4FCDA88;
    }

    v20[0] = @"Internal Notes Bug";
    v20[1] = v7;
    v8 = *MEMORY[0x1E695EE70];
    v19[2] = *MEMORY[0x1E695EE78];
    v19[3] = v8;
    v20[2] = @"File Radar";
    v20[3] = @"Stop Asking";
    v19[4] = *MEMORY[0x1E695EE98];
    v20[4] = @"Cancel";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v9 = CFUserNotificationCreate(0, 0.0, 3uLL, 0, v4);
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696B098] valueWithPointer:v9];
      v17[0] = @"bugTitle";
      v17[1] = @"bugDescription";
      v18 = vbslq_s8(vceqzq_s64(*(a1 + 40)), vdupq_n_s64(&stru_1F4FCDA88), *(a1 + 40));
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:v17 count:2];
      [notificationContexts setObject:v12 forKeyedSubscript:v11];

      RunLoopSource = CFUserNotificationCreateRunLoopSource(*MEMORY[0x1E695E480], v10, notificationCallback, 0);
      if (RunLoopSource)
      {
        v14 = RunLoopSource;
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, v14, *MEMORY[0x1E695E8E0]);
        CFRunLoopRun();
        CFRelease(v14);
        CFRelease(v10);
        [notificationContexts removeObjectForKey:v11];
      }

      else
      {
        v16 = os_log_create("com.apple.notes", "Application");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __80__ICRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_2_cold_2();
        }
      }
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Application");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __80__ICRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_2_cold_3(v4, v11);
      }
    }
  }
}

+ (void)createRadarWithTitle:(id)title description:(id)description
{
  titleCopy = title;
  v5 = MEMORY[0x1E696AF20];
  descriptionCopy = description;
  v7 = objc_alloc_init(v5);
  [v7 setScheme:@"tap-to-radar"];
  [v7 setHost:@"new"];
  array = [MEMORY[0x1E695DF70] array];
  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentName" value:@"Notes"];
  [array addObject:v9];

  v10 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentVersion" value:@"iOS"];
  [array addObject:v10];

  v11 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"ComponentID" value:@"568784"];
  [array addObject:v11];

  v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Classification" value:@"Serious Bug"];
  [array addObject:v12];

  v13 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Reproducibility" value:@"Not Applicable"];
  [array addObject:v13];

  if ([titleCopy length])
  {
    v14 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Title" value:titleCopy];
    [array addObject:v14];
  }

  v15 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"Description" value:descriptionCopy];

  [array addObject:v15];
  [v7 setQueryItems:array];
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v17 = [v7 URL];
  [defaultWorkspace openURL:v17 configuration:0 completionHandler:0];
}

void __80__ICRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1D4576000, a2, OS_LOG_TYPE_DEBUG, "Showing alert to file a bug with message: %@", &v3, 0xCu);
}

void __80__ICRadarUtilities_promptUserToFileBugWithAlertMessage_bugTitle_bugDescription___block_invoke_2_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4576000, a2, OS_LOG_TYPE_ERROR, "Failed to create CFUserNotificationRef for alertOptions: %@", &v2, 0xCu);
}

@end