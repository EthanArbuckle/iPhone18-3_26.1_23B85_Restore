@interface CalAttachmentUtils
+ (BOOL)attachmentURL:(id)l matchesServerURL:(id)rL;
+ (id)_knownTLDForHostname:(id)hostname;
+ (id)_stripSubdomain:(id)subdomain;
+ (id)attachmentContainerForSourceIdentifier:(id)identifier calendarDataContainer:(id)container;
+ (id)getFileSizeForPath:(id)path fileManager:(id)manager error:(id *)error;
+ (id)legacyCalendarDataContainer;
+ (id)localRelativePathForLocalAbsoluteURL:(id)l localBaseURL:(id)rL;
+ (id)resolveSymlinksInURLThatMayNotFullyExist:(id)exist;
@end

@implementation CalAttachmentUtils

+ (id)attachmentContainerForSourceIdentifier:(id)identifier calendarDataContainer:(id)container
{
  identifierCopy = identifier;
  v7 = [self attachmentContainerWithBaseURL:container];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 URLByAppendingPathComponent:identifierCopy];
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

+ (id)getFileSizeForPath:(id)path fileManager:(id)manager error:(id *)error
{
  pathCopy = path;
  v14 = 0;
  v8 = [manager attributesOfItemAtPath:pathCopy error:&v14];
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

    if (error)
    {
      v12 = v9;
      v10 = 0;
      *error = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)localRelativePathForLocalAbsoluteURL:(id)l localBaseURL:(id)rL
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v8 = [self resolveSymlinksInURLThatMayNotFullyExist:lCopy];
  path = [v8 path];

  if (!path)
  {
    path2 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(path2, OS_LOG_TYPE_ERROR))
    {
      +[CalAttachmentUtils localRelativePathForLocalAbsoluteURL:localBaseURL:];
    }

    goto LABEL_11;
  }

  v10 = [self resolveSymlinksInURLThatMayNotFullyExist:rLCopy];
  path2 = [v10 path];

  if (!path2)
  {
    v15 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CalAttachmentUtils localRelativePathForLocalAbsoluteURL:localBaseURL:];
    }

    goto LABEL_10;
  }

  v12 = [path rangeOfString:path2];
  if (v12)
  {
    v14 = v12;
    v15 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = 134218498;
      v21 = v14;
      v22 = 2112;
      v23 = path;
      v24 = 2112;
      v25 = path2;
      _os_log_error_impl(&dword_1B990D000, v15, OS_LOG_TYPE_ERROR, "Could not get location of base path substring at start of local absolute path. local base path range = %lu, local absolute path = %@, local base path = %@", &v20, 0x20u);
    }

LABEL_10:

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v19 = v13 + ([path2 hasSuffix:@"/"]^ 1);
  if (v19 >= [path length])
  {
    v16 = &stru_1F379FFA8;
  }

  else
  {
    v16 = [path substringFromIndex:v19];
  }

LABEL_12:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)resolveSymlinksInURLThatMayNotFullyExist:(id)exist
{
  existCopy = exist;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [existCopy path];
  v6 = [defaultManager fileExistsAtPath:path];

  v7 = 0;
  if ((v6 & 1) == 0)
  {
    v8 = existCopy;
    do
    {
      lastPathComponent = [v8 lastPathComponent];
      v10 = lastPathComponent;
      if (v7)
      {
        v11 = [lastPathComponent stringByAppendingPathComponent:v7];

        v7 = v11;
      }

      else
      {
        v7 = lastPathComponent;
      }

      existCopy = [v8 URLByDeletingLastPathComponent];

      path2 = [existCopy path];
      v13 = [defaultManager fileExistsAtPath:path2];

      v8 = existCopy;
    }

    while (!v13);
  }

  uRLByResolvingSymlinksInPath = [existCopy URLByResolvingSymlinksInPath];
  v15 = uRLByResolvingSymlinksInPath;
  if (v7)
  {
    v16 = [uRLByResolvingSymlinksInPath URLByAppendingPathComponent:v7];
  }

  else
  {
    v16 = uRLByResolvingSymlinksInPath;
  }

  v17 = v16;

  return v17;
}

+ (BOOL)attachmentURL:(id)l matchesServerURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  scheme = [rLCopy scheme];
  scheme2 = [lCopy scheme];
  v10 = [scheme compare:scheme2 options:1];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    host = [lCopy host];
    host2 = [rLCopy host];
    v11 = 1;
    if ([host2 compare:host options:1])
    {
      v14 = [self _stripSubdomain:host2];
      v15 = [self _stripSubdomain:host];
      v11 = [v14 compare:v15 options:1] == 0;
    }
  }

  return v11;
}

+ (id)_stripSubdomain:(id)subdomain
{
  subdomainCopy = subdomain;
  v5 = [self _knownTLDForHostname:subdomainCopy];
  if (v5 && (v6 = [subdomainCopy rangeOfString:@"." options:4 range:{0, objc_msgSend(subdomainCopy, "length") - objc_msgSend(v5, "length")}], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = [subdomainCopy substringFromIndex:v6 + 1];
  }

  else
  {
    v7 = subdomainCopy;
  }

  v8 = v7;

  return v8;
}

+ (id)_knownTLDForHostname:(id)hostname
{
  hostnameCopy = hostname;
  v4 = [hostnameCopy length];
  v5 = 0;
  v6 = @".com";
  while (1)
  {
    v7 = v6;
    v8 = [(__CFString *)v7 length];
    if (v4 > v8 && ![hostnameCopy compare:v7 options:1 range:{v4 - v8, v8}])
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