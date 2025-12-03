@interface IMInternalPayloadUtilities
+ (BOOL)writeData:(id)data toURL:(id)l;
+ (BOOL)writeDataPayloadToDisk:(id)disk fileName:(id)name;
+ (BOOL)writeMessagePayloadToDisk:(id)disk fileName:(id)name;
+ (BOOL)writePayload:(id)payload toURL:(id)l;
+ (id)writeMessagePayloadToTemporaryDirectory:(id)directory fileName:(id)name;
@end

@implementation IMInternalPayloadUtilities

+ (BOOL)writePayload:(id)payload toURL:(id)l
{
  v7 = [objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:payload format:100 options:0 error:0];

    LOBYTE(v7) = [self writeData:v8 toURL:l];
  }

  return v7;
}

+ (BOOL)writeData:(id)data toURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")])
  {
    v14 = 0;
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    v6 = [data writeToURL:l options:1 error:&v14];
    v7 = IMOSLoggingEnabled();
    if (v6)
    {
      if (v7)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          lCopy2 = l;
          v9 = "Write successful to %@";
          v10 = v8;
          v11 = 12;
LABEL_11:
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
        }
      }
    }

    else if (v7)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        lCopy2 = l;
        v17 = 2112;
        v18 = v14;
        v9 = "Write failed to %@ (error: %@)";
        v10 = v13;
        v11 = 22;
        goto LABEL_11;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)writeMessagePayloadToDisk:(id)disk fileName:(id)name
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")];
  if (v6)
  {
    v6 = IMGetCachedDomainBoolForKeyWithDefaultValue();
    if (v6)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          nameCopy = name;
          _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Incoming message will be written to %@", buf, 0xCu);
        }
      }

      name = [MEMORY[0x1E696AEC0] stringWithFormat:@"/var/mobile/Library/SMS/%@", name];
      v6 = IMOSLoggingEnabled();
      if (name)
      {
        if (v6)
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            nameCopy = name;
            _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Will log message payload to path: %@", buf, 0xCu);
          }
        }

        LOBYTE(v6) = +[IMInternalPayloadUtilities writePayload:toURL:](IMInternalPayloadUtilities, "writePayload:toURL:", disk, [MEMORY[0x1E695DFF8] fileURLWithPath:name]);
      }

      else if (v6)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        v6 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        if (v6)
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Unable to log message payload to disk: path is nil", buf, 2u);
          LOBYTE(v6) = 0;
        }
      }
    }
  }

  return v6;
}

+ (BOOL)writeDataPayloadToDisk:(id)disk fileName:(id)name
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")];
  if (v6)
  {
    v6 = IMGetCachedDomainBoolForKeyWithDefaultValue();
    if (v6)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          nameCopy = name;
          _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Incoming data payload will be written to %@", buf, 0xCu);
        }
      }

      name = [MEMORY[0x1E696AEC0] stringWithFormat:@"/var/mobile/Library/SMS/%@", name];
      v6 = IMOSLoggingEnabled();
      if (name)
      {
        if (v6)
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            nameCopy = name;
            _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Will log data payload to path: %@", buf, 0xCu);
          }
        }

        LOBYTE(v6) = +[IMInternalPayloadUtilities writeData:toURL:](IMInternalPayloadUtilities, "writeData:toURL:", disk, [MEMORY[0x1E695DFF8] fileURLWithPath:name]);
      }

      else if (v6)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        v6 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
        if (v6)
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Unable to log data payload to disk: path is nil", buf, 2u);
          LOBYTE(v6) = 0;
        }
      }
    }
  }

  return v6;
}

+ (id)writeMessagePayloadToTemporaryDirectory:(id)directory fileName:(id)name
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")])
  {
    return 0;
  }

  path = [IMSafeTemporaryDirectory() path];
  if (![path length])
  {
    return 0;
  }

  v12[0] = path;
  v12[1] = @"MessagesBlastDoorFailedPayloads";
  v12[2] = name;
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 3)}];
  if (![IMInternalPayloadUtilities writePayload:directory toURL:v7])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Failed to write error payload to path %@", &v10, 0xCu);
      }
    }

    return 0;
  }

  return v7;
}

@end