@interface NSURL
@end

@implementation NSURL

id __61__NSURL_BRAdditions__br_containerIDIfIsDocumentsContainerURL__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v4 = [a3 getResourceValue:&v11 forKey:*MEMORY[0x1E695E2B0] error:0];
  v5 = v11;
  v6 = v5;
  if (v4 && (v7 = [v5 unsignedLongLongValue], v7 == objc_msgSend(*(a1 + 32), "unsignedLongLongValue")))
  {
    v8 = [[BRMangledID alloc] initWithMangledString:*(a1 + 40)];
    v9 = [(BRMangledID *)v8 appLibraryOrZoneName];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __52__NSURL_BRFinderTagAdditions__br_setTagNames_error___block_invoke(uint64_t a1, int a2)
{
  if ([*(a1 + 32) count])
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
    if ((fsetxattr(a2, "com.apple.metadata:_kMDItemUserTags", [v4 bytes], objc_msgSend(v4, "length"), 0, 0) & 0x80000000) == 0)
    {

LABEL_6:
      v5 = 0;
      goto LABEL_9;
    }

    v5 = [MEMORY[0x1E696ABC0] br_errorWithPOSIXCode:*__error() description:{@"couldn't set %llu-byte xattr %s", objc_msgSend(v4, "length"), "com.apple.metadata:_kMDItemUserTags"}];
  }

  else
  {
    if ((fremovexattr(a2, "com.apple.metadata:_kMDItemUserTags", 0) & 0x80000000) == 0 || *__error() == 93)
    {
      goto LABEL_6;
    }

    v5 = [MEMORY[0x1E696ABC0] br_errorWithPOSIXCode:*__error() description:{@"couldn't remove xattr %s", "com.apple.metadata:_kMDItemUserTags"}];
  }

LABEL_9:

  return v5;
}

uint64_t __47__NSURL_BRAdditions__br_isInLocalHomeDirectory__block_invoke(uint64_t result, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v5 = result;
  if ((a3 & 1) == 0 && (a4 & 1) == 0)
  {
    result = [*(result + 32) _br_isInLocalHomeDirectoryUnderPersona:a2 needsPersonaSwitch:a5 != 0];
    a4 = result;
  }

  *(*(*(v5 + 40) + 8) + 24) = a4;
  return result;
}

uint64_t __102__NSURL_BRAdditions___br_isParentOfURL_strictly_withNonMateralizingIOPolicy_ignoreHomeDirectoryCheck___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _br_isParentOfURL:*(a1 + 40) strictly:*(a1 + 56) ignoreHomeDirectoryCheck:*(a1 + 57)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __60__NSURL_BRAdditions__br_isExistWithNonMateralizingIOPolicy___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = [*(a1 + 32) path];
  *(*(*(a1 + 40) + 8) + 24) = [v3 fileExistsAtPath:v2];
}

void __117__NSURL_BRAdditions___br_bookmarkableStringForURL_remoteOpeningAppWithBundleID_onlyAllowItemKnowByServer_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) BOOLValue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __117__NSURL_BRAdditions___br_bookmarkableStringForURL_remoteOpeningAppWithBundleID_onlyAllowItemKnowByServer_completion___block_invoke_2;
    v10[3] = &unk_1E7A15ED0;
    v11 = *(a1 + 56);
    [v5 getBookmarkData:v6 allowAccessByBundleID:v7 documentID:v8 isDirectory:v9 reply:v10];
  }
}

void __96__NSURL_BRAdditions__br_bookmarkableStringForURL_withEtag_onlyAllowItemKnowByServer_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v7)
    {
      v9 = 0;
      v11 = v14;
    }

    else
    {

      v12 = MEMORY[0x1E696ABC0];
      v13 = [*(a1 + 32) path];
      v9 = [v12 brc_errorNotInCloud:v13];

      v11 = 0;
    }

    v10 = *(*(a1 + 40) + 16);
    v14 = v11;
  }

  v10();
}

void __70__NSURL_BRAdditions__br_documentURLFromBookmarkableString_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = *(a1 + 32);
  v11 = a6;
  v12 = _BRPromiseURLCombine(a2, a3, a4, a5);
  (*(v10 + 16))(v10, v12, v11);
}

void __65__NSURL_BRAdditions__br_documentURLFromBookmarkableString_error___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = _BRPromiseURLCombine(a2, a3, a4, a5);
  v13 = *(*(a1 + 32) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v11;
}

void __71__NSURL_BRAdditions__br_containerIDsWithExternalReferencesWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = [a2 objectForKeyedSubscript:v5];
  (*(v4 + 16))(v4, v7, v6);
}

uint64_t __67__NSURL_BRAdditions__br_pathRelativeToSyncedRootURLForContainerID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) br_pathRelativeToMobileDocuments];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __54__NSURL_BRAdditions__br_pathRelativeToMobileDocuments__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = a5 != 0;
  v8 = a2;
  v12 = [BRDaemonConnection mobileDocumentsURLForPersonaID:v8 needsPersonaSwitch:v7];
  v9 = [v6 br_pathRelativeToSyncedRootURL:v12 currentPersonaID:v8];

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t __34__NSURL_BRAdditions__br_isInTrash__block_invoke()
{
  br_isInTrash_centralizedTrashSubStr = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"Mobile Documents", @".Trash"];

  return MEMORY[0x1EEE66BB8]();
}

void __42__NSURL_BRAdditions__br_isInSyncedDesktop__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [BRDaemonConnection syncedDesktopURLForPersonaID:a2 needsPersonaSwitch:a5 != 0];
  *(*(*(a1 + 40) + 8) + 24) = [v6 br_isParentOfURL:*(a1 + 32) strictly:0];
}

void __44__NSURL_BRAdditions__br_isInSyncedDocuments__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [BRDaemonConnection syncedDocumentsURLForPersonaID:a2 needsPersonaSwitch:a5 != 0];
  *(*(*(a1 + 40) + 8) + 24) = [v6 br_isParentOfURL:*(a1 + 32) strictly:0];
}

uint64_t __53__NSURL_BRAdditions___br_isInSyncedLocationStrictly___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [*(a1 + 32) _br_isInSyncedLocationWithCurrentPersonaID:a2 strictly:*(a1 + 48) foundHomeDirectory:a4 adoptionError:a5];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __53__NSURL_BRAdditions__br_isInCloudDocsPrivateStorages__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v7 = [BRDaemonConnection cloudDocsAppSupportURLForPersonaID:"cloudDocsAppSupportURLForPersonaID:needsPersonaSwitch:" needsPersonaSwitch:?];
  if ([v7 br_isParentOfURL:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v8 = [BRDaemonConnection cloudDocsCachesURLForPersonaID:v9 needsPersonaSwitch:a5 != 0];
    *(*(*(a1 + 40) + 8) + 24) = [v8 br_isParentOfURL:*(a1 + 32)];
  }
}

uint64_t __78__NSURL_BRAdditions__br_isInCloudDocsPrivateStoragesForRemoteDocumentVersions__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [BRDaemonConnection cloudDocsAppSupportURLForPersonaID:a2 needsPersonaSwitch:a5 != 0];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(*(*(a1 + 32) + 8) + 40) URLByAppendingPathComponent:@"session"];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = [*(*(*(a1 + 32) + 8) + 40) URLByAppendingPathComponent:@"r"];
  v13 = *(*(a1 + 32) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __36__NSURL_BRAdditions__br_containerID__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [*(a1 + 32) br_containerIDWithCurrentPersonaID:a2 needsPersonaSwitch:a5 != 0];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8]();
}

void __61__NSURL_BRAdditions__br_containerIDIfIsDocumentsContainerURL__block_invoke_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [BRDaemonConnection mobileDocumentsURLForPersonaID:a2 needsPersonaSwitch:a5 != 0];
  v6 = a1[4];
  v7 = (*(a1[5] + 16))();
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __43__NSURL_BRAdditions__br_cloudDocsContainer__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) br_containerIDWithCurrentPersonaID:? needsPersonaSwitch:?];
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"com.apple.SharedDocs"] & 1) == 0)
  {
    v5 = [[BRMangledID alloc] initWithAppLibraryName:v4];
    v6 = [BRContainerCache containerCacheForPersonaID:v10];
    v7 = [v6 containerByID:v5];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void __56__NSURL_BRAdditions__br_creatorNameComponentsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __86__NSURL_BRAdditions_Private___br_getAttributeValue_withSecondaryConnection_withError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

@end