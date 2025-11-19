@interface NSError(FCErrorAdditions)
+ (id)fc_HTTPErrorWithURL:()FCErrorAdditions statusCode:requestUUID:additionalUserInfo:;
+ (id)fc_HTTPErrorWithURLResponse:()FCErrorAdditions requestUUID:;
+ (id)fc_blockedInCurrentStorefrontErrorWithIdentifiers:()FCErrorAdditions;
+ (id)fc_directoryRemovalErrorWithURL:()FCErrorAdditions removalErrno:;
+ (id)fc_directoryTraversalErrorWithURL:()FCErrorAdditions traversalErrno:;
+ (id)fc_errorWithCode:()FCErrorAdditions description:additionalUserInfo:;
+ (id)fc_fileRemovalErrorWithURL:()FCErrorAdditions removalErrno:;
+ (id)fc_invalidChannelErrorForTagID:()FCErrorAdditions;
+ (id)fc_invalidSectionErrorForTagID:()FCErrorAdditions;
+ (id)fc_missingANFDocumentErrorForArticleID:()FCErrorAdditions;
+ (id)fc_missingAppConfigErrorWithUnderlyingError:()FCErrorAdditions;
+ (id)fc_missingAssetErrorWithAssetHandles:()FCErrorAdditions;
+ (id)fc_missingResourceErrorWithDescription:()FCErrorAdditions;
+ (id)fc_notCachedErrorWithMissingObjects:()FCErrorAdditions;
+ (id)fc_offlineErrorWithReason:()FCErrorAdditions;
+ (id)fc_requestDroppedErrorForDroppedFeeds:()FCErrorAdditions totalFeeds:;
+ (id)fc_unauthorizedAVAssetKeyErrorWithKeyURI:()FCErrorAdditions;
+ (id)fc_unauthorizedAssetKeyErrorWithWrappingKeyID:()FCErrorAdditions;
+ (id)fc_unknownRecordZoneErrorWithZoneName:()FCErrorAdditions;
+ (id)fc_unzipFailedErrorWithErrorCode:()FCErrorAdditions;
- (uint64_t)fc_hasErrorCode:()FCErrorAdditions;
@end

@implementation NSError(FCErrorAdditions)

- (uint64_t)fc_hasErrorCode:()FCErrorAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:@"FCErrorDomain"])
  {
    v6 = [a1 code];

    if (v6 == a3)
    {
      return 1;
    }
  }

  else
  {
  }

  v8 = [a1 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v9)
  {
    v7 = [v9 fc_hasErrorCode:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fc_errorWithCode:()FCErrorAdditions description:additionalUserInfo:
{
  v7 = a4;
  v8 = a5;
  if (v8)
  {
    [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
  }

  else
  {
    [MEMORY[0x1E695DF90] dictionary];
  }
  v9 = ;
  v10 = v9;
  if (v7)
  {
    [v9 setObject:v7 forKey:*MEMORY[0x1E696A578]];
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:a3 userInfo:v10];

  return v11;
}

+ (id)fc_notCachedErrorWithMissingObjects:()FCErrorAdditions
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = @"FCErrorMissingObjectsDescriptionsKey";
    v4 = [a3 allObjects];
    v10[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = [a1 fc_errorWithCode:5 description:@"The operation could not be completed with just the contents of the cache." additionalUserInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)fc_requestDroppedErrorForDroppedFeeds:()FCErrorAdditions totalFeeds:
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rejecting feed request because %lu of %lu feeds were dropped.", a3, a4];
  v10 = @"FCErrorRetryAfter";
  v11[0] = &unk_1F2E71B98;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [a1 fc_errorWithCode:2 description:v5 additionalUserInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)fc_offlineErrorWithReason:()FCErrorAdditions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"FCErrorOfflineReasonKey";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [a1 fc_errorWithCode:10 description:0 additionalUserInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)fc_missingAppConfigErrorWithUnderlyingError:()FCErrorAdditions
{
  v3 = a3;
  if (v3 && ([MEMORY[0x1E695DFB0] null], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "isEqual:", v4), v4, (v5 & 1) == 0))
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:@"Failed to load the configuration." forKeyedSubscript:*MEMORY[0x1E696A578]];
    [v7 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FCErrorDomain" code:14 userInfo:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)fc_missingResourceErrorWithDescription:()FCErrorAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"FCErrorDomain" code:19 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)fc_blockedInCurrentStorefrontErrorWithIdentifiers:()FCErrorAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"FCErrorBlockedContentIdentifiersKey";
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [a1 fc_errorWithCode:20 description:@"The requested content is not allowed in the current storefront" additionalUserInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)fc_missingAssetErrorWithAssetHandles:()FCErrorAdditions
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_129];
  v6 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_96_0];

  v7 = *MEMORY[0x1E696A750];
  v12[0] = @"FCErrorMissingObjectsDescriptionsKey";
  v12[1] = v7;
  v13[0] = v5;
  v13[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [a1 fc_errorWithCode:25 description:@"The requested asset could not be retrieved." additionalUserInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)fc_unzipFailedErrorWithErrorCode:()FCErrorAdditions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"FCErrorUnderlyingErrorCodeKey";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [a1 fc_errorWithCode:26 description:@"Failed to unzip a zip archive." additionalUserInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)fc_unauthorizedAssetKeyErrorWithWrappingKeyID:()FCErrorAdditions
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCErrorAssetWrappingKeyIDKey"];

  v7 = [a1 fc_errorWithCode:27 description:@"The requested asset wrapping key could not be retrieved because the user isn't authorized." additionalUserInfo:v6];

  return v7;
}

+ (id)fc_unauthorizedAVAssetKeyErrorWithKeyURI:()FCErrorAdditions
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCErrorAssetKeyURI"];

  v7 = [a1 fc_errorWithCode:35 description:@"The requested AV asset key could not be retrieved because the user isn't authorized." additionalUserInfo:v6];

  return v7;
}

+ (id)fc_missingANFDocumentErrorForArticleID:()FCErrorAdditions
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCErrorArticleIDKey"];

  v7 = [a1 fc_errorWithCode:29 description:@"An ANF article is missing its main document asset handle." additionalUserInfo:v6];

  return v7;
}

+ (id)fc_invalidChannelErrorForTagID:()FCErrorAdditions
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCErrorTagIDKey"];

  v7 = [a1 fc_errorWithCode:30 description:@"The operation could not be completed because the expected channel was invalid." additionalUserInfo:v6];

  return v7;
}

+ (id)fc_invalidSectionErrorForTagID:()FCErrorAdditions
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 dictionary];
  [v6 fc_safelySetObjectAllowingNil:v5 forKey:@"FCErrorTagIDKey"];

  v7 = [a1 fc_errorWithCode:31 description:@"The operation could not be completed because the expected section was invalid." additionalUserInfo:v6];

  return v7;
}

+ (id)fc_HTTPErrorWithURLResponse:()FCErrorAdditions requestUUID:
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF20];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__NSError_FCErrorAdditions__fc_HTTPErrorWithURLResponse_requestUUID___block_invoke;
  v14[3] = &unk_1E7C36EC8;
  v15 = v5;
  v7 = v5;
  v8 = a4;
  v9 = [v6 fc_dictionary:v14];
  v10 = MEMORY[0x1E696ABC0];
  v11 = [v7 URL];
  v12 = [v10 fc_HTTPErrorWithURL:v11 statusCode:objc_msgSend(v7 requestUUID:"statusCode") additionalUserInfo:{v8, v9}];

  return v12;
}

+ (id)fc_HTTPErrorWithURL:()FCErrorAdditions statusCode:requestUUID:additionalUserInfo:
{
  v9 = a6;
  v10 = MEMORY[0x1E695DF90];
  v11 = a5;
  v12 = a3;
  v13 = [v10 dictionary];
  [v13 fc_safelySetObjectAllowingNil:v12 forKey:*MEMORY[0x1E696A998]];

  [v13 fc_safelySetObjectAllowingNil:v11 forKey:@"FCErrorHTTPRequestUUID"];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v13 fc_safelySetObjectAllowingNil:v14 forKey:@"FCErrorHTTPStatusCode"];

  if (v9)
  {
    [v13 addEntriesFromDictionary:v9];
  }

  v15 = MEMORY[0x1E696ABC0];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"URL download failed with status code %lu", a4];
  v17 = [v15 fc_errorWithCode:4 description:v16 additionalUserInfo:v13];

  return v17;
}

+ (id)fc_unknownRecordZoneErrorWithZoneName:()FCErrorAdditions
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown record zone %@", a3];
  v5 = [a1 fc_errorWithCode:16 description:v4 additionalUserInfo:0];

  return v5;
}

+ (id)fc_directoryTraversalErrorWithURL:()FCErrorAdditions traversalErrno:
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  [v8 fc_safelySetObjectAllowingNil:v7 forKey:*MEMORY[0x1E696A998]];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:a4];
  [v8 fc_safelySetObjectAllowingNil:v9 forKey:@"FCErrorErrnoKey"];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to traverse directory"];
  v11 = [a1 fc_errorWithCode:16 description:v10 additionalUserInfo:v8];

  return v11;
}

+ (id)fc_directoryRemovalErrorWithURL:()FCErrorAdditions removalErrno:
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  [v8 fc_safelySetObjectAllowingNil:v7 forKey:*MEMORY[0x1E696A998]];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:a4];
  [v8 fc_safelySetObjectAllowingNil:v9 forKey:@"FCErrorErrnoKey"];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to remove directory"];
  v11 = [a1 fc_errorWithCode:16 description:v10 additionalUserInfo:v8];

  return v11;
}

+ (id)fc_fileRemovalErrorWithURL:()FCErrorAdditions removalErrno:
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  [v8 fc_safelySetObjectAllowingNil:v7 forKey:*MEMORY[0x1E696A998]];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:a4];
  [v8 fc_safelySetObjectAllowingNil:v9 forKey:@"FCErrorErrnoKey"];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to remove file"];
  v11 = [a1 fc_errorWithCode:16 description:v10 additionalUserInfo:v8];

  return v11;
}

@end