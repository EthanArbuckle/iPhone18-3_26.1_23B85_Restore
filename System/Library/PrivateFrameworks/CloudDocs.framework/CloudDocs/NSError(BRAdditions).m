@interface NSError(BRAdditions)
+ (id)br_errorWithDomain:()BRAdditions code:description:;
+ (id)br_errorWithDomain:()BRAdditions code:userInfo:description:;
+ (id)br_errorWithPOSIXCode:()BRAdditions;
+ (id)br_errorWithPOSIXCode:()BRAdditions description:;
+ (id)brc_addPartialError:()BRAdditions forURL:toError:;
+ (id)brc_errorAcceptShareFailedWithUnderlyingError:()BRAdditions;
+ (id)brc_errorCollisionWithItem:()BRAdditions;
+ (id)brc_errorDamagedDocumentOnDiskWithUnderlyingError:()BRAdditions;
+ (id)brc_errorDocumentAtURL:()BRAdditions isNotExternalToAppLibrary:;
+ (id)brc_errorDocumentWithFilename:()BRAdditions size:isTooLargeToUpload:localizedDescription:;
+ (id)brc_errorFolderHasSharedSubitemsWithSharedByMeURLs:()BRAdditions sharedToMeURLs:;
+ (id)brc_errorForRejectedDeletionOfItem:()BRAdditions;
+ (id)brc_errorFromException:()BRAdditions;
+ (id)brc_errorFunctionNotImplemented:()BRAdditions;
+ (id)brc_errorItemAlreadyPausedFromSyncByBundleID:()BRAdditions;
+ (id)brc_errorItemIneligibleFromSyncForInode:()BRAdditions localizedDescription:;
+ (id)brc_errorItemNotFound:()BRAdditions;
+ (id)brc_errorLoggedOutWithUnderlyingError:()BRAdditions;
+ (id)brc_errorMethodNotImplemented:()BRAdditions;
+ (id)brc_errorNoDocument:()BRAdditions underlyingPOSIXError:;
+ (id)brc_errorNoDocumentAtURL:()BRAdditions underlyingError:;
+ (id)brc_errorNotInCloud:()BRAdditions;
+ (id)brc_errorNotOnDisk:()BRAdditions;
+ (id)brc_errorOperationNotImplemented:()BRAdditions;
+ (id)brc_errorParentItemRemotelyDeleted:()BRAdditions;
+ (id)brc_errorPathOutsideAnyCloudDocsAppLibraryAtURL:()BRAdditions;
+ (id)brc_errorPermissionError:()BRAdditions;
+ (id)brc_errorPermissionErrorAtURL:()BRAdditions;
+ (id)brc_errorUnexpectedItemType:()BRAdditions description:;
+ (uint64_t)br_errorFromErrno;
- (BOOL)br_isCKErrorCode:()BRAdditions;
- (BOOL)br_isCKErrorCode:()BRAdditions underlyingErrorCode:;
- (BOOL)br_isCloudDocsErrorCode:()BRAdditions;
- (BOOL)br_isCocoaErrorCode:()BRAdditions;
- (BOOL)br_isFileProviderErrorCode:()BRAdditions;
- (BOOL)br_isNSURLErrorCode:()BRAdditions;
- (BOOL)br_isNSXPCConnectionError;
- (BOOL)br_isPOSIXErrorCode:()BRAdditions;
- (id)br_errorDescription;
- (id)br_underlyingPOSIXError;
@end

@implementation NSError(BRAdditions)

- (id)br_errorDescription
{
  v2 = [a1 userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695E620]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 description];
  }

  v6 = v5;

  return v6;
}

+ (id)br_errorWithDomain:()BRAdditions code:description:
{
  v20[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (a5)
  {
    v18 = &a9;
    v12 = MEMORY[0x1E696AEC0];
    v13 = a5;
    v14 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

    v19 = *MEMORY[0x1E695E620];
    v20[0] = v14;
    a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:v11 code:a4 userInfo:{a5, v18}];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)br_errorWithDomain:()BRAdditions code:userInfo:description:
{
  v12 = a3;
  v13 = a5;
  if (a6)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = a6;
    v16 = [[v14 alloc] initWithFormat:v15 arguments:&a9];

    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F8];
    }

    v18 = [v17 mutableCopy];
    [v18 setObject:v16 forKeyedSubscript:*MEMORY[0x1E695E620]];

    v13 = v18;
  }

  v19 = [MEMORY[0x1E696ABC0] errorWithDomain:v12 code:a4 userInfo:v13];

  return v19;
}

+ (id)br_errorWithPOSIXCode:()BRAdditions
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (__errnum < 0 || *MEMORY[0x1E69E9940] <= __errnum)
  {
    +[NSError(BRAdditions) br_errorWithPOSIXCode:];
  }

  v9 = *MEMORY[0x1E695E620];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(__errnum)];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:__errnum userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)br_errorWithPOSIXCode:()BRAdditions description:
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v17 = &a9;
    v10 = MEMORY[0x1E696AEC0];
    v11 = a4;
    v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

    v18 = *MEMORY[0x1E695E620];
    v19[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:a3 userInfo:{v13, v17}];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (uint64_t)br_errorFromErrno
{
  v0 = MEMORY[0x1E696ABC0];
  v1 = *__error();

  return [v0 br_errorWithPOSIXCode:v1];
}

- (BOOL)br_isCKErrorCode:()BRAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:*MEMORY[0x1E695B740]])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)br_isCKErrorCode:()BRAdditions underlyingErrorCode:
{
  if (![a1 br_isCKErrorCode:?])
  {
    return 0;
  }

  v6 = [a1 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"NSUnderlyingError"];

  v8 = [v7 domain];
  if ([v8 isEqualToString:*MEMORY[0x1E695B838]])
  {
    v9 = [v7 code] == a4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)br_isPOSIXErrorCode:()BRAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)br_isCocoaErrorCode:()BRAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)br_isNSXPCConnectionError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v3 = [a1 code] == 4099 || objc_msgSend(a1, "code") == 4097;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)br_isCloudDocsErrorCode:()BRAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:@"BRCloudDocsErrorDomain"])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)br_isFileProviderErrorCode:()BRAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:*MEMORY[0x1E6967188]])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)br_isNSURLErrorCode:()BRAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:*MEMORY[0x1E696A978]])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)br_underlyingPOSIXError
{
  v2 = [a1 domain];
  v3 = *MEMORY[0x1E696A798];
  v4 = [v2 isEqualToString:*MEMORY[0x1E696A798]];

  if (v4)
  {
    v5 = a1;
  }

  else
  {
    v6 = [a1 userInfo];
    v5 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    v7 = [v5 domain];
    [v7 isEqualToString:v3];
  }

  return v5;
}

+ (id)brc_errorLoggedOutWithUnderlyingError:()BRAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  if (a3)
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = a3;
    v4 = MEMORY[0x1E695DF20];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v3 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:2 userInfo:v6 description:@"Logged out - iCloud Drive is not configured"];
  }

  else
  {
    v6 = 0;
    v7 = [v3 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:2 userInfo:0 description:@"Logged out - iCloud Drive is not configured"];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)brc_errorOperationNotImplemented:()BRAdditions
{
  v3 = a3;
  v4 = brc_bread_crumbs("+[NSError(BRAdditions) brc_errorOperationNotImplemented:]", 177);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, 0x90u))
  {
    +[NSError(BRAdditions) brc_errorOperationNotImplemented:];
  }

  v6 = MEMORY[0x1E696ABC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:9 description:{@"%@ not implemented", v8}];

  return v9;
}

+ (id)brc_errorMethodNotImplemented:()BRAdditions
{
  v4 = brc_bread_crumbs("+[NSError(BRAdditions) brc_errorMethodNotImplemented:]", 185);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, 0x90u))
  {
    [NSError(BRAdditions) brc_errorMethodNotImplemented:a3];
  }

  v6 = MEMORY[0x1E696ABC0];
  v7 = NSStringFromSelector(a3);
  v8 = [v6 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:9 description:{@"%@ not implemented", v7}];

  return v8;
}

+ (id)brc_errorFunctionNotImplemented:()BRAdditions
{
  v3 = a3;
  v4 = brc_bread_crumbs("+[NSError(BRAdditions) brc_errorFunctionNotImplemented:]", 193);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, 0x90u))
  {
    +[NSError(BRAdditions) brc_errorFunctionNotImplemented:];
  }

  v6 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRCloudDocsErrorDomain" code:9 description:{@"%@ not implemented", v3}];

  return v6;
}

+ (id)brc_errorNotOnDisk:()BRAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRCloudDocsErrorDomain" code:27 description:{@"Item hasn't been made live on disk: '%@'", a3}];
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A250];
  v10 = *MEMORY[0x1E696AA08];
  v11[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 errorWithDomain:v5 code:256 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)brc_errorNotInCloud:()BRAdditions
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A368];
  v12[0] = *MEMORY[0x1E695E620];
  v12[1] = v4;
  v5 = @"nil";
  if (a3)
  {
    v5 = a3;
  }

  v13[0] = @"Document hasn't yet been synced to the server";
  v13[1] = v5;
  v6 = MEMORY[0x1E695DF20];
  v7 = a3;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [v3 errorWithDomain:@"BRCloudDocsErrorDomain" code:7 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)brc_errorPathOutsideAnyCloudDocsAppLibraryAtURL:()BRAdditions
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E695E620];
  v14[0] = @"Path is outside of any CloudDocs app library, will never sync";
  v5 = *MEMORY[0x1E696A368];
  v13[0] = v4;
  v13[1] = v5;
  v6 = [a3 path];
  v7 = v6;
  v8 = @"nil";
  if (v6)
  {
    v8 = v6;
  }

  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v3 errorWithDomain:@"BRCloudDocsErrorDomain" code:6 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)brc_errorPermissionError:()BRAdditions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_1F23D4ED0;
  }

  v11 = *MEMORY[0x1E695E620];
  v12[0] = v4;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:@"BRCloudDocsErrorDomain" code:8 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)brc_errorPermissionErrorAtURL:()BRAdditions
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E695E620];
  v14[0] = @"Permission error when trying to access path";
  v5 = *MEMORY[0x1E696A368];
  v13[0] = v4;
  v13[1] = v5;
  v6 = [a3 path];
  v7 = v6;
  v8 = @"nil";
  if (v6)
  {
    v8 = v6;
  }

  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v3 errorWithDomain:@"BRCloudDocsErrorDomain" code:8 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)brc_errorItemNotFound:()BRAdditions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v9 = @"BRUnderlyingItemIdentifierKey";
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRCloudDocsErrorDomain" code:14 userInfo:v5 description:{@"Item not found: '%@'", v4}];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)brc_errorParentItemRemotelyDeleted:()BRAdditions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v9 = @"BRUnderlyingItemIdentifierKey";
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRCloudDocsErrorDomain" code:144 userInfo:v5 description:{@"Parent item remotely deleted: '%@'", v4}];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)brc_errorUnexpectedItemType:()BRAdditions description:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v11 = @"BRUnderlyingItemIdentifierKey";
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRCloudDocsErrorDomain" code:123 userInfo:v7 description:{@"%@", v6}];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)brc_errorNoDocumentAtURL:()BRAdditions underlyingError:
{
  v17[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E695E620];
  v17[0] = @"No document at URL";
  v7 = *MEMORY[0x1E696A368];
  v16[0] = v6;
  v16[1] = v7;
  v8 = a4;
  v9 = [a3 path];
  v10 = v9;
  v11 = @"nil";
  if (v9)
  {
    v11 = v9;
  }

  v16[2] = *MEMORY[0x1E696AA08];
  v17[1] = v11;
  v17[2] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v13 = [v5 errorWithDomain:@"BRCloudDocsErrorDomain" code:5 userInfo:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)brc_errorNoDocument:()BRAdditions underlyingPOSIXError:
{
  v15[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A368];
  v14[0] = *MEMORY[0x1E695E620];
  v14[1] = v6;
  v7 = @"nil";
  if (a3)
  {
    v7 = a3;
  }

  v15[0] = @"No document at path";
  v15[1] = v7;
  v14[2] = *MEMORY[0x1E696AA08];
  v8 = a3;
  v9 = [v5 br_errorWithPOSIXCode:a4];
  v15[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v11 = [v5 errorWithDomain:@"BRCloudDocsErrorDomain" code:5 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)brc_errorDocumentAtURL:()BRAdditions isNotExternalToAppLibrary:
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"Document is not external to app library %@", a4];
  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E695E620];
  v18[0] = v7;
  v10 = *MEMORY[0x1E696A368];
  v17[0] = v9;
  v17[1] = v10;
  v11 = [v6 path];

  v12 = @"nil";
  if (v11)
  {
    v12 = v11;
  }

  v18[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v8 errorWithDomain:@"BRCloudDocsErrorDomain" code:11 userInfo:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)brc_errorDocumentWithFilename:()BRAdditions size:isTooLargeToUpload:localizedDescription:
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696ABC0];
  if (a6)
  {
    v19 = @"BRLocalizedDescriptionKey";
    v20 = a6;
    v10 = MEMORY[0x1E695DF20];
    v11 = a6;
    v12 = a3;
    v13 = [v10 dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [v9 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:19 userInfo:v13 description:{@"document '%@' of size:%lli is too large to upload (max size: %lli)", v12, a4, a5, v19, v20, v21}];
  }

  else
  {
    v15 = 0;
    v16 = a3;
    v14 = [v9 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:19 userInfo:0 description:{@"document '%@' of size:%lli is too large to upload (max size: %lli)", v16, a4, a5}];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)brc_errorFolderHasSharedSubitemsWithSharedByMeURLs:()BRAdditions sharedToMeURLs:
{
  v14[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v13[0] = @"BRFailedURLsKey";
  v6 = a4;
  v7 = a3;
  v8 = [v7 arrayByAddingObjectsFromArray:v6];
  v14[0] = v8;
  v14[1] = v7;
  v13[1] = @"BRSharedByMeURLsKey";
  v13[2] = @"BRSharedToMeURLsKey";
  v14[2] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v10 = [v5 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:38 userInfo:v9 description:@"Folder has shared subitems"];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)brc_errorItemIneligibleFromSyncForInode:()BRAdditions localizedDescription:
{
  v5 = a3;
  v6 = a4;
  if (v5 | v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v8 = v7;
    if (v5)
    {
      [v7 setObject:v5 forKeyedSubscript:@"inode"];
    }

    if (v6)
    {
      [v8 setObject:v6 forKeyedSubscript:@"BRLocalizedDescriptionKey"];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696ABC0] br_errorWithDomain:@"BRCloudDocsErrorDomain" code:43 userInfo:v8 description:@"Item isn't eligible to sync"];

  return v9;
}

+ (id)brc_errorItemAlreadyPausedFromSyncByBundleID:()BRAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  if (a3)
  {
    v10 = @"bundleID";
    v11[0] = a3;
    v4 = MEMORY[0x1E695DF20];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v3 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:59 userInfo:v6 description:@"Item is already paused from sync by another bundleID"];
  }

  else
  {
    v6 = 0;
    v7 = [v3 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:59 userInfo:0 description:@"Item is already paused from sync by another bundleID"];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)brc_addPartialError:()BRAdditions forURL:toError:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    v13 = MEMORY[0x1E696ABC0];
    v18 = @"BRPartialErrorsByURLKey";
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v19[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v10 = [v13 errorWithDomain:@"BRCloudDocsErrorDomain" code:21 userInfo:v12];
LABEL_6:

    goto LABEL_7;
  }

  v10 = v9;
  if ([v9 code] != 21)
  {
    v11 = brc_bread_crumbs("+[NSError(BRAdditions) brc_addPartialError:forURL:toError:]", 477);
    v12 = brc_default_log(0, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NSError(BRAdditions) brc_addPartialError:v11 forURL:v12 toError:?];
    }

    goto LABEL_6;
  }

LABEL_7:
  v14 = [v10 userInfo];
  v15 = [v14 objectForKeyedSubscript:@"BRPartialErrorsByURLKey"];

  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    +[NSError(BRAdditions) brc_addPartialError:forURL:toError:];
  }

  [v15 setObject:v7 forKey:v8];

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)brc_errorCollisionWithItem:()BRAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = @"BRUnderlyingItemKey";
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"BRCloudDocsErrorDomain" code:63 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)brc_errorForRejectedDeletionOfItem:()BRAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = @"BRUnderlyingItemKey";
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"BRCloudDocsErrorDomain" code:64 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)brc_errorAcceptShareFailedWithUnderlyingError:()BRAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696AA08];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"BRCloudDocsErrorDomain" code:130 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)brc_errorFromException:()BRAdditions
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 reason];

  v7 = [v3 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:143 description:{@"%@ - %@", v5, v6}];

  return v7;
}

+ (id)brc_errorDamagedDocumentOnDiskWithUnderlyingError:()BRAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  if (a3)
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = a3;
    v4 = MEMORY[0x1E695DF20];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v3 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:151 userInfo:v6 description:@"The current document on disk is damaged and needs recovery"];
  }

  else
  {
    v6 = 0;
    v7 = [v3 br_errorWithDomain:@"BRCloudDocsErrorDomain" code:151 userInfo:0 description:@"The current document on disk is damaged and needs recovery"];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)br_errorWithPOSIXCode:()BRAdditions .cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("+[NSError(BRAdditions) br_errorWithPOSIXCode:]", 62);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] Assertion failed: code >= 0 && code < sys_nerr%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)brc_errorOperationNotImplemented:()BRAdditions .cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_1AE2A9000, v2, v3, "[ERROR] operation not implemented: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)brc_errorMethodNotImplemented:()BRAdditions .cold.1(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_1AE2A9000, v2, v3, "[ERROR] method not implemented: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)brc_errorFunctionNotImplemented:()BRAdditions .cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = v0;
  _os_log_error_impl(&dword_1AE2A9000, v1, 0x90u, "[ERROR] function not implemented: %@%@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)brc_addPartialError:()BRAdditions forURL:toError:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: existingError.code == BRErrorPartialFailure%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)brc_addPartialError:()BRAdditions forURL:toError:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("+[NSError(BRAdditions) brc_addPartialError:forURL:toError:]", 481);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] Assertion failed: dict && [dict isKindOfClass:[NSMutableDictionary class]]%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end