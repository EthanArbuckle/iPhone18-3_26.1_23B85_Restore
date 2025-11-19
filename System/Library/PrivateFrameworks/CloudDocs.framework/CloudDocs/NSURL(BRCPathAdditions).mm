@interface NSURL(BRCPathAdditions)
+ (id)brc_ciconiaDumpDirForCurrentPersona;
+ (id)brc_ciconiaWorkDirForCurrentPersona;
+ (id)brc_fileURLWithFileDescriptor:()BRCPathAdditions;
+ (id)brc_fileURLWithVolumeDeviceID:()BRCPathAdditions fileID:isDirectory:withError:;
+ (void)brc_ciconiaWorkDirForCurrentPersona;
- (BOOL)brc_isDirectory:()BRCPathAdditions isExists:withError:;
- (id)brc_appBundleID;
- (id)brc_appContainerID;
- (id)brc_issueSandboxExtensionOfClass:()BRCPathAdditions error:;
@end

@implementation NSURL(BRCPathAdditions)

+ (id)brc_fileURLWithFileDescriptor:()BRCPathAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = xmmword_1AE33DF58;
  v14 = 0;
  memset(v21, 0, 512);
  if (fgetattrlist(a3, &v13, v21, 0x410uLL, 0x20u) < 0)
  {
    v7 = *__error();
    v8 = brc_bread_crumbs("+[NSURL(BRCPathAdditions) brc_fileURLWithFileDescriptor:]", 40);
    v9 = brc_default_log(0, 0);
    if (os_log_type_enabled(v9, 0x90u))
    {
      *buf = 67109634;
      v16 = a3;
      v17 = 1024;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] fgetattrlist(%d) failed %{errno}d%@", buf, 0x18u);
    }

    v10 = __error();
    v6 = 0;
    *v10 = v7;
  }

  else
  {
    v4 = SDWORD2(v21[0]);
    v5 = objc_alloc(MEMORY[0x1E695DFF8]);
    v6 = [v5 initFileURLWithFileSystemRepresentation:v21 + v4 + 8 isDirectory:(WORD2(v21[0]) & 0xF000) == 0x4000 relativeToURL:0];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)brc_fileURLWithVolumeDeviceID:()BRCPathAdditions fileID:isDirectory:withError:
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = [v9 unsignedLongLongValue];

  if (fsgetpath(v17, 0x400uLL, &v16, v10) < 0)
  {
    if (a6)
    {
      v12 = [MEMORY[0x1E696ABC0] br_errorFromErrno];
      v13 = v12;
      v11 = 0;
      *a6 = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v17 isDirectory:a5 relativeToURL:0];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)brc_issueSandboxExtensionOfClass:()BRCPathAdditions error:
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = [a1 path];
  [v7 fileSystemRepresentation];
  v8 = sandbox_extension_issue_file();

  if (v8)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v8 length:strlen(v8) + 1 freeWhenDone:1];
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *__error();
    v12 = [a1 path];
    v13 = __error();
    v14 = [v10 br_errorWithPOSIXCode:v11 description:{@"couldn't issue sandbox extension %s for '%@': %s", a3, v12, strerror(*v13)}];

    if (v14)
    {
      v15 = brc_bread_crumbs("[NSURL(BRCPathAdditions) brc_issueSandboxExtensionOfClass:error:]", 82);
      v16 = brc_default_log(0, 0);
      if (os_log_type_enabled(v16, 0x90u))
      {
        v20 = "(passed to caller)";
        *buf = 136315906;
        v22 = "[NSURL(BRCPathAdditions) brc_issueSandboxExtensionOfClass:error:]";
        v23 = 2080;
        if (!a4)
        {
          v20 = "(ignored by caller)";
        }

        v24 = v20;
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        _os_log_error_impl(&dword_1AE2A9000, v16, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a4)
    {
      v17 = v14;
      *a4 = v14;
    }

    v9 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)brc_ciconiaWorkDirForCurrentPersona
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DF068] sharedManager];
  v1 = [v0 currentPersona];

  v2 = [v1 br_personaID];
  v3 = [v2 isEqual:@"__defaultPersonaID__"];

  if (v3)
  {
    v4 = _getCloudDocsAppSupportURL();
    v5 = [v4 URLByAppendingPathComponent:@"ciconia"];
    goto LABEL_14;
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.iCloudDrive"];
  v4 = [v7 path];

  if (!v4)
  {
    [@"group.com.apple.iCloudDrive" UTF8String];
    v8 = container_create_or_lookup_path_for_current_user();
    if (!v8)
    {
      v10 = brc_bread_crumbs("+[NSURL(BRCPathAdditions) brc_ciconiaWorkDirForCurrentPersona]", 117);
      v11 = brc_default_log(1, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v18 = 1;
        v19 = 2112;
        v20 = v10;
        _os_log_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] container_create_or_lookup_path_for_current_user() failed with %llu%@", buf, 0x16u);
      }

      goto LABEL_10;
    }

    v9 = v8;
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    free(v9);
    if (!v4)
    {
LABEL_10:
      v12 = brc_bread_crumbs("+[NSURL(BRCPathAdditions) brc_ciconiaWorkDirForCurrentPersona]", 125);
      v13 = brc_default_log(0, 0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[(NSURL(BRCPathAdditions) *)v1];
      }

      v4 = 0;
    }
  }

  v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v5 = [v14 URLByAppendingPathComponent:@"ciconia"];

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)brc_ciconiaDumpDirForCurrentPersona
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DF068] sharedManager];
  v1 = [v0 currentPersona];

  v2 = [v1 br_personaID];
  v3 = [v2 isEqual:@"__defaultPersonaID__"];

  if (v3)
  {
    v4 = _getCloudDocsAppSupportURL();
    v5 = [v4 URLByAppendingPathComponent:@"session/ciconia_diagnose"];
  }

  else
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v6 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.CloudDocs"];
    v8 = [v7 path];

    if (!v8)
    {
      [@"group.com.apple.CloudDocs" UTF8String];
      v9 = container_create_or_lookup_path_for_current_user();
      if (v9)
      {
        v10 = v9;
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
        free(v10);
      }

      else
      {
        v11 = brc_bread_crumbs("+[NSURL(BRCPathAdditions) brc_ciconiaDumpDirForCurrentPersona]", 147);
        v12 = brc_default_log(1, 0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v17 = 1;
          v18 = 2112;
          v19 = v11;
          _os_log_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] container_create_or_lookup_path_for_current_user() failed with %llu%@", buf, 0x16u);
        }

        v8 = 0;
      }
    }

    v4 = [v8 stringByAppendingPathComponent:@"Library/Application Support/CloudDocs"];

    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v5 = [v13 URLByAppendingPathComponent:@"session/ciconia_diagnose"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)brc_isDirectory:()BRCPathAdditions isExists:withError:
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v8 = [a1 path];
  v9 = fstatat(-1, [v8 fileSystemRepresentation], &v18, 32);

  if (v9 < 0)
  {
    if (*__error() == 2)
    {
      v10 = 1;
    }

    else
    {
      v11 = [MEMORY[0x1E696ABC0] br_errorFromErrno];
      v10 = v11 == 0;
      if (v11)
      {
        v12 = brc_bread_crumbs("[NSURL(BRCPathAdditions) brc_isDirectory:isExists:withError:]", 170);
        v13 = brc_default_log(0, 0);
        if (os_log_type_enabled(v13, 0x90u))
        {
          v17 = "(passed to caller)";
          *buf = 136315906;
          v20 = "[NSURL(BRCPathAdditions) brc_isDirectory:isExists:withError:]";
          v21 = 2080;
          if (!a5)
          {
            v17 = "(ignored by caller)";
          }

          v22 = v17;
          v23 = 2112;
          v24 = v11;
          v25 = 2112;
          v26 = v12;
          _os_log_error_impl(&dword_1AE2A9000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (a5)
      {
        v14 = v11;
        *a5 = v11;
      }
    }
  }

  else
  {
    if (a3)
    {
      *a3 = (v18.st_mode & 0xF000) == 0x4000;
    }

    v10 = 1;
    if (a4)
    {
      *a4 = 1;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)brc_appBundleID
{
  v1 = [a1 lastPathComponent];
  v2 = extensionInFilename([v1 fileSystemRepresentation]);

  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v2 encoding:4];
    v2 = [MEMORY[0x1E696AEC0] brc_applicationBundleIDForExtension:v3];
  }

  return v2;
}

- (id)brc_appContainerID
{
  v1 = [a1 lastPathComponent];
  v2 = extensionInFilename([v1 fileSystemRepresentation]);

  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v2 encoding:4];
    v2 = [MEMORY[0x1E696AEC0] brc_applicationContainerIDForExtension:v3];
  }

  return v2;
}

+ (void)brc_ciconiaWorkDirForCurrentPersona
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Unable to retrieve base path for current persona : %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end