@interface CalAttachmentUtils
+ (BOOL)attachmentURL:(id)a3 matchesServerURL:(id)a4;
+ (id)_knownTLDForHostname:(id)a3;
+ (id)_stripSubdomain:(id)a3;
+ (id)attachmentContainerForSourceIdentifier:(id)a3 calendarDataContainer:(id)a4;
+ (id)getFileSizeForPath:(id)a3 fileManager:(id)a4 error:(id *)a5;
+ (id)legacyCalendarDataContainer;
+ (id)localRelativePathForLocalAbsoluteURL:(id)a3 localBaseURL:(id)a4;
+ (id)resolveSymlinksInURLThatMayNotFullyExist:(id)a3;
@end

@implementation CalAttachmentUtils

+ (id)attachmentContainerForSourceIdentifier:(id)a3 calendarDataContainer:(id)a4
{
  v6 = a3;
  v7 = [a1 attachmentContainerWithBaseURL:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 URLByAppendingPathComponent:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)legacyCalendarDataContainer
{
  v2 = CPSharedResourcesDirectory();
  if (v2 && (v3 = CFURLCreateWithFileSystemPath(0, v2, kCFURLPOSIXPathStyle, 1u)) != 0)
  {
    v4 = v3;
    v5 = CFURLCreateCopyAppendingPathComponent(0, v3, @"Library/Calendar/", 0);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)getFileSizeForPath:(id)a3 fileManager:(id)a4 error:(id *)a5
{
  v7 = a3;
  v14 = 0;
  v8 = [a4 attributesOfItemAtPath:v7 error:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = [v8 valueForKey:*MEMORY[0x1E696A3B8]];
  }

  else
  {
    v11 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[CalAttachmentUtils getFileSizeForPath:fileManager:error:];
    }

    if (a5)
    {
      v12 = v9;
      v10 = 0;
      *a5 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)localRelativePathForLocalAbsoluteURL:(id)a3 localBaseURL:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 resolveSymlinksInURLThatMayNotFullyExist:v6];
  v9 = [v8 path];

  if (!v9)
  {
    v11 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CalAttachmentUtils localRelativePathForLocalAbsoluteURL:localBaseURL:];
    }

    goto LABEL_11;
  }

  v10 = [a1 resolveSymlinksInURLThatMayNotFullyExist:v7];
  v11 = [v10 path];

  if (!v11)
  {
    v15 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CalAttachmentUtils localRelativePathForLocalAbsoluteURL:localBaseURL:];
    }

    goto LABEL_10;
  }

  v12 = [v9 rangeOfString:v11];
  if (v12)
  {
    v14 = v12;
    v15 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 134218498;
      v21 = v14;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v11;
      _os_log_error_impl(&dword_1B990D000, v15, OS_LOG_TYPE_ERROR, "Could not get location of base path substring at start of local absolute path. local base path range = %lu, local absolute path = %@, local base path = %@", &v20, 0x20u);
    }

LABEL_10:

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v19 = v13 + ([v11 hasSuffix:@"/"]^ 1);
  if (v19 >= [v9 length])
  {
    v16 = &stru_1F379FFA8;
  }

  else
  {
    v16 = [v9 substringFromIndex:v19];
  }

LABEL_12:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)resolveSymlinksInURLThatMayNotFullyExist:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  v7 = 0;
  if ((v6 & 1) == 0)
  {
    v8 = v3;
    do
    {
      v9 = [v8 lastPathComponent];
      v10 = v9;
      if (v7)
      {
        v11 = [v9 stringByAppendingPathComponent:v7];

        v7 = v11;
      }

      else
      {
        v7 = v9;
      }

      v3 = [v8 URLByDeletingLastPathComponent];

      v12 = [v3 path];
      v13 = [v4 fileExistsAtPath:v12];

      v8 = v3;
    }

    while (!v13);
  }

  v14 = [v3 URLByResolvingSymlinksInPath];
  v15 = v14;
  if (v7)
  {
    v16 = [v14 URLByAppendingPathComponent:v7];
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;

  return v17;
}

+ (BOOL)attachmentURL:(id)a3 matchesServerURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 scheme];
  v9 = [v6 scheme];
  v10 = [v8 compare:v9 options:1];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v6 host];
    v13 = [v7 host];
    v11 = 1;
    if ([v13 compare:v12 options:1])
    {
      v14 = [a1 _stripSubdomain:v13];
      v15 = [a1 _stripSubdomain:v12];
      v11 = [v14 compare:v15 options:1] == 0;
    }
  }

  return v11;
}

+ (id)_stripSubdomain:(id)a3
{
  v4 = a3;
  v5 = [a1 _knownTLDForHostname:v4];
  if (v5 && (v6 = [v4 rangeOfString:@"." options:4 range:{0, objc_msgSend(v4, "length") - objc_msgSend(v5, "length")}], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = [v4 substringFromIndex:v6 + 1];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

+ (id)_knownTLDForHostname:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = 0;
  v6 = @".com";
  while (1)
  {
    v7 = v6;
    v8 = [(__CFString *)v7 length];
    if (v4 > v8 && ![v3 compare:v7 options:1 range:{v4 - v8, v8}])
    {
      break;
    }

    v6 = _knownTLDForHostname__knownTLDs[++v5];
    if (v5 == 8)
    {
      v7 = 0;
      break;
    }
  }

  return v7;
}

+ (void)getFileSizeForPath:fileManager:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(&dword_1B990D000, v0, OS_LOG_TYPE_DEBUG, "Could not read attributes of file. error = %@, path = %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)localRelativePathForLocalAbsoluteURL:localBaseURL:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B990D000, v0, v1, "Could not get local base path. local absolute url = %@, local base url = %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)localRelativePathForLocalAbsoluteURL:localBaseURL:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1B990D000, v0, v1, "Could not get local absolute path. local absolute url = %@, local base url = %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end