@interface NSURL(BRAdditions)
+ (id)br_documentURLFromBookmarkableString:()BRAdditions error:;
+ (id)br_documentURLFromFileObjectID:()BRAdditions error:;
+ (void)_br_bookmarkableStringForURL:()BRAdditions remoteOpeningAppWithBundleID:onlyAllowItemKnowByServer:completion:;
+ (void)br_bookmarkableStringForURL:()BRAdditions withEtag:onlyAllowItemKnowByServer:completion:;
+ (void)br_containerIDsWithExternalReferencesTo:()BRAdditions completionHandler:;
+ (void)br_documentURLFromBookmarkableString:()BRAdditions completion:;
+ (void)br_setIOPolicy:()BRAdditions type:forBlock:;
- (BOOL)br_isDocumentsContainer;
- (BOOL)br_isSymLink;
- (BOOL)br_mightBeBRAlias;
- (__CFString)br_containerIDIfIsDocumentsContainerURL;
- (id)br_URLByResolvingExternalDocumentReferenceWithError:()BRAdditions;
- (id)br_URLByResolvingInProcessExternalDocumentReferenceWithProperties:()BRAdditions;
- (id)br_cachedBookmarkData;
- (id)br_cloudDocsContainer;
- (id)br_containerID;
- (id)br_creatorNameComponentsWithError:()BRAdditions;
- (id)br_debugDescription;
- (id)br_externalDocumentPropertiesWithError:()BRAdditions;
- (id)br_getSyncRootWithError:()BRAdditions;
- (id)br_itemID;
- (id)br_logicalURL;
- (id)br_pathRelativeToMobileDocuments;
- (id)br_pathRelativeToSyncedRootURLForContainerID:()BRAdditions;
- (id)br_realpathURL;
- (id)br_realpathURLWithIsDirectory:()BRAdditions;
- (id)br_typeIdentifierWithError:()BRAdditions;
- (uint64_t)_br_isInSyncedLocationStrictly:()BRAdditions;
- (uint64_t)_br_isParentOfURL:()BRAdditions strictly:ignoreHomeDirectoryCheck:;
- (uint64_t)_br_isParentOfURL:()BRAdditions strictly:withNonMateralizingIOPolicy:ignoreHomeDirectoryCheck:;
- (uint64_t)_br_mightBeInSyncedLocationUnderCurrentPersonaID:()BRAdditions strictly:;
- (uint64_t)br_capabilityToMoveToURL:()BRAdditions error:;
- (uint64_t)br_isExistWithNonMateralizingIOPolicy:()BRAdditions;
- (uint64_t)br_isExternalDocumentReference;
- (uint64_t)br_isInCloudDocsPrivateStorages;
- (uint64_t)br_isInCloudDocsPrivateStoragesForRemoteDocumentVersions;
- (uint64_t)br_isInLocalHomeDirectory;
- (uint64_t)br_isInSyncedDesktop;
- (uint64_t)br_isInSyncedDocuments;
- (uint64_t)br_isInTrash;
- (uint64_t)br_isModifiedSinceShared;
- (uint64_t)br_isTopLevelSharedItem;
- (uint64_t)br_setAccessTime:()BRAdditions error:;
- (uint64_t)br_wouldBeExcludedFromSync;
- (void)br_bookmarkableStringForRemoteOpeningAppWithBundleID:()BRAdditions completion:;
- (void)br_containerIDsWithExternalReferencesWithHandler:()BRAdditions;
- (void)br_isConflictedWithHandler:()BRAdditions;
- (void)br_isExternalDocumentReference;
- (void)br_preCacheBookmarkData:()BRAdditions versionEtag:;
@end

@implementation NSURL(BRAdditions)

- (id)br_realpathURL
{
  path = [self path];
  v2 = path;
  if (path)
  {
    v3 = MEMORY[0x1E695DFF8];
    br_realpath = [path br_realpath];
    v5 = [v3 fileURLWithPath:br_realpath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (__CFString)br_containerIDIfIsDocumentsContainerURL
{
  if (![self isFileURL])
  {
    v16 = 0;
    goto LABEL_18;
  }

  selfCopy = self;
  v45 = 0;
  v3 = [selfCopy getResourceValue:&v45 forKey:*MEMORY[0x1E695DB78] error:0];
  v4 = v45;
  v5 = v4;
  if (v3 && [v4 BOOLValue])
  {
    v44 = 0;
    v6 = *MEMORY[0x1E695DC30];
    v7 = [selfCopy getResourceValue:&v44 forKey:*MEMORY[0x1E695DC30] error:0];
    v8 = v44;
    v9 = v8;
    if (v7)
    {
      v10 = [v8 isEqualToString:@"Desktop"];
      v11 = [v9 isEqualToString:@"Documents"];
      if ((v11 & 1) == 0 && !v10)
      {
        v12 = selfCopy;
        goto LABEL_8;
      }

      v43 = 0;
      v24 = [selfCopy getResourceValue:&v43 forKey:*MEMORY[0x1E695DC38] error:0];
      v12 = v43;

      if (!v24)
      {
LABEL_27:
        v16 = 0;
        goto LABEL_17;
      }

      v42 = 0;
      v25 = [v12 getResourceValue:&v42 forKey:v6 error:0];
      v26 = v42;

      if (v25)
      {
        if ([v26 isEqualToString:@"com~apple~CloudDocs"])
        {
          v27 = BRUbiquitousDocumentsContainerID;
          if (!v11)
          {
            v27 = BRUbiquitousDesktopContainerID;
          }

          v16 = *v27;
          goto LABEL_33;
        }

        if ((v10 & 1) == 0)
        {
          v9 = v26;
LABEL_8:
          if ([v9 rangeOfString:@"~"] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v41 = 0;
            v13 = [v12 getResourceValue:&v41 forKey:*MEMORY[0x1E695E3A0] error:0];
            v14 = v41;
            v15 = v14;
            v16 = 0;
            if (v13 && v14)
            {
              v38[0] = MEMORY[0x1E69E9820];
              v38[1] = 3221225472;
              v38[2] = __61__NSURL_BRAdditions__br_containerIDIfIsDocumentsContainerURL__block_invoke;
              v38[3] = &unk_1E7A16010;
              v17 = v14;
              v39 = v17;
              v40 = v9;
              v18 = MEMORY[0x1B26FEA90](v38);
              v32 = 0;
              v33 = &v32;
              v34 = 0x3032000000;
              v35 = __Block_byref_object_copy__8;
              v36 = __Block_byref_object_dispose__8;
              v37 = 0;
              fp_lmdURL = [MEMORY[0x1E695DFF8] fp_lmdURL];
              if (fp_lmdURL && ((v18)[2](v18, v17, fp_lmdURL), v20 = objc_claimAutoreleasedReturnValue(), v21 = v33[5], v33[5] = v20, v21, (v22 = v33[5]) != 0))
              {
                v16 = v22;
              }

              else
              {
                v28[0] = MEMORY[0x1E69E9820];
                v28[1] = 3221225472;
                v28[2] = __61__NSURL_BRAdditions__br_containerIDIfIsDocumentsContainerURL__block_invoke_2;
                v28[3] = &unk_1E7A16038;
                v31 = &v32;
                v30 = v18;
                v29 = v17;
                BRPerformWithPersonaAndErrorForURLIfAble(selfCopy, v28);
                v16 = v33[5];
              }

              _Block_object_dispose(&v32, 8);
            }

            goto LABEL_17;
          }

          goto LABEL_27;
        }
      }

      v16 = 0;
LABEL_33:
      v9 = v26;
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = 0;
  v12 = selfCopy;
LABEL_17:

LABEL_18:

  return v16;
}

+ (void)br_setIOPolicy:()BRAdditions type:forBlock:
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a5;
  getpid();
  if (sandbox_check())
  {
    v8 = brc_bread_crumbs("+[NSURL(BRAdditions) br_setIOPolicy:type:forBlock:]", 49);
    v9 = brc_default_log(1, 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v16 = v8;
      _os_log_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] sandbox_check: current process does not allow iopolicy syscalls%@", buf, 0xCu);
    }

    goto LABEL_5;
  }

  v11 = getiopolicy_np(a4, 1);
  if (v11 == -1)
  {
    v13 = brc_bread_crumbs("+[NSURL(BRAdditions) br_setIOPolicy:type:forBlock:]", 58);
    v14 = brc_default_log(1, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      *v16 = a3;
      *&v16[4] = 1024;
      *&v16[6] = a4;
      v17 = 1024;
      v18 = 1;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] getiopolicy_np failed when setting policy: %d, type: %d, scope: %d%@", buf, 0x1Eu);
    }

    goto LABEL_5;
  }

  v12 = v11;
  if (v11 == a3)
  {
LABEL_5:
    v7[2](v7);
    goto LABEL_6;
  }

  setiopolicy_np(a4, 1, a3);
  v7[2](v7);
  if ((v12 & 0x80000000) == 0)
  {
    setiopolicy_np(a4, 1, v12);
  }

LABEL_6:

  v10 = *MEMORY[0x1E69E9840];
}

- (id)br_realpathURLWithIsDirectory:()BRAdditions
{
  path = [self path];
  v5 = path;
  if (path)
  {
    v6 = MEMORY[0x1E695DFF8];
    br_realpath = [path br_realpath];
    v8 = [v6 fileURLWithPath:br_realpath isDirectory:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)br_isInLocalHomeDirectory
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__NSURL_BRAdditions__br_isInLocalHomeDirectory__block_invoke;
  v3[3] = &unk_1E7A15E80;
  v3[4] = self;
  v3[5] = &v4;
  BRPerformWithPersonaAndErrorForURLIfAble(self, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)_br_isParentOfURL:()BRAdditions strictly:withNonMateralizingIOPolicy:ignoreHomeDirectoryCheck:
{
  v10 = a3;
  v11 = v10;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (a5)
  {
    v12 = MEMORY[0x1E695DFF8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __102__NSURL_BRAdditions___br_isParentOfURL_strictly_withNonMateralizingIOPolicy_ignoreHomeDirectoryCheck___block_invoke;
    v15[3] = &unk_1E7A15EA8;
    v17 = &v20;
    v15[4] = self;
    v16 = v10;
    v18 = a4;
    v19 = a6;
    [v12 br_datalessMaterializationOffForBlock:v15];

    v13 = *(v21 + 24);
  }

  else
  {
    v13 = [self _br_isParentOfURL:v10 strictly:a4 ignoreHomeDirectoryCheck:a6];
    *(v21 + 24) = v13;
  }

  _Block_object_dispose(&v20, 8);

  return v13 & 1;
}

- (uint64_t)br_isExistWithNonMateralizingIOPolicy:()BRAdditions
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__NSURL_BRAdditions__br_isExistWithNonMateralizingIOPolicy___block_invoke;
  v8[3] = &unk_1E7A15518;
  v8[4] = self;
  v8[5] = &v9;
  v4 = MEMORY[0x1B26FEA90](v8);
  v5 = v4;
  if (a3)
  {
    [MEMORY[0x1E695DFF8] br_datalessMaterializationOffForBlock:v4];
  }

  else
  {
    (*(v4 + 16))(v4);
  }

  v6 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)br_preCacheBookmarkData:()BRAdditions versionEtag:
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [self setTemporaryResourceValue:v7 forKey:@"_BRBookmarkData"];
  }

  if (v6)
  {
    [self setTemporaryResourceValue:v6 forKey:@"_BRBookmarkEtag"];
  }
}

- (id)br_cachedBookmarkData
{
  v3 = 0;
  [self getResourceValue:&v3 forKey:@"_BRBookmarkData" error:0];
  v1 = v3;

  return v1;
}

+ (void)_br_bookmarkableStringForURL:()BRAdditions remoteOpeningAppWithBundleID:onlyAllowItemKnowByServer:completion:
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if ([v9 br_isInSyncedLocation])
  {
    if ([v9 isFileReferenceURL])
    {
      filePathURL = [v9 filePathURL];

      v9 = filePathURL;
    }

    v29 = 0;
    v13 = *MEMORY[0x1E695DAB8];
    v28 = 0;
    [v9 getResourceValue:&v29 forKey:v13 error:&v28];
    v14 = v29;
    v15 = v28;
    if (v15)
    {
      v16 = v15;
      (*(v11 + 2))(v11, 0, 0, v15);
    }

    else
    {
      v27 = 0;
      v18 = *MEMORY[0x1E695DB78];
      v26 = 0;
      [v9 getResourceValue:&v27 forKey:v18 error:&v26];
      v19 = v27;
      v16 = v26;
      if (v16)
      {
        (*(v11 + 2))(v11, 0, 0, v16);
      }

      else
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __117__NSURL_BRAdditions___br_bookmarkableStringForURL_remoteOpeningAppWithBundleID_onlyAllowItemKnowByServer_completion___block_invoke;
        v20[3] = &unk_1E7A15EF8;
        v24 = v11;
        v25 = a5;
        v21 = v10;
        v22 = v14;
        v23 = v19;
        [v9 _br_fetchItemServiceAsyncProxy:v20];
      }
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] brc_errorPathOutsideAnyCloudDocsAppLibraryAtURL:v9];
    (*(v11 + 2))(v11, 0, 0, v17);
  }
}

+ (void)br_bookmarkableStringForURL:()BRAdditions withEtag:onlyAllowItemKnowByServer:completion:
{
  v9 = a3;
  v10 = a6;
  if ([v9 br_isInSyncedLocation])
  {
    v23 = 0;
    [v9 getResourceValue:&v23 forKey:@"_BRBookmarkData" error:0];
    v11 = v23;
    v12 = 0;
    if (a4)
    {
      v22 = 0;
      [v9 getResourceValue:&v22 forKey:@"_BRBookmarkEtag" error:0];
      v12 = v22;
    }

    if ([v11 isEqualToString:@"invalid"])
    {
      (*(v10 + 2))(v10, 0, 0, 0);
    }

    else
    {
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = a4;
      }

      if (!v11 || (v13 & 1) != 0)
      {
        v16 = MEMORY[0x1E69E9820];
        v17 = 3221225472;
        v18 = __96__NSURL_BRAdditions__br_bookmarkableStringForURL_withEtag_onlyAllowItemKnowByServer_completion___block_invoke;
        v19 = &unk_1E7A15F20;
        v21 = v10;
        v14 = v9;
        v20 = v14;
        v15 = MEMORY[0x1B26FEA90](&v16);
        [MEMORY[0x1E695DFF8] _br_bookmarkableStringForURL:v14 remoteOpeningAppWithBundleID:0 onlyAllowItemKnowByServer:a5 completion:{v15, v16, v17, v18, v19}];
      }

      else
      {
        (*(v10 + 2))(v10, v11, v12, 0);
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] brc_errorPathOutsideAnyCloudDocsAppLibraryAtURL:v9];
    (*(v10 + 2))(v10, 0, 0, v11);
  }
}

- (void)br_bookmarkableStringForRemoteOpeningAppWithBundleID:()BRAdditions completion:
{
  v6 = a4;
  v7 = MEMORY[0x1E695DFF8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__NSURL_BRAdditions__br_bookmarkableStringForRemoteOpeningAppWithBundleID_completion___block_invoke;
  v9[3] = &unk_1E7A15ED0;
  v10 = v6;
  v8 = v6;
  [v7 _br_bookmarkableStringForURL:self remoteOpeningAppWithBundleID:a3 onlyAllowItemKnowByServer:0 completion:v9];
}

+ (id)br_documentURLFromFileObjectID:()BRAdditions error:
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[BRSpecialFolders homeDirForCurrentPersona];
  memset(&v29, 0, sizeof(v29));
  if (stat([v6 fileSystemRepresentation], &v29))
  {
    v7 = brc_bread_crumbs("+[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:]", 328);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      +[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:];
    }
  }

  br_documentURLFromFileObjectID_error__deviceID = v29.st_dev;
  isDocumentID = [v5 isDocumentID];
  rawID = [v5 rawID];
  if (isDocumentID)
  {
    v11 = GSLibraryResolveDocumentId2();
    if (!v11)
    {
      if (*__error() != 35 && *__error() != 16 && *__error() != 70)
      {
        v25 = brc_bread_crumbs("+[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:]", 337);
        v26 = brc_default_log(0, 0);
        if (os_log_type_enabled(v26, 0x90u))
        {
          +[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:];
        }

        goto LABEL_18;
      }

      v12 = brc_bread_crumbs("+[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:]", 340);
      v13 = brc_default_log(1, 0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        +[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:];
      }

      goto LABEL_17;
    }

LABEL_13:
    v28.val[0] = br_documentURLFromFileObjectID_error__deviceID;
    v28.val[1] = 0;
    if ((fsgetpath(buf, 0x400uLL, &v28, v11) & 0x8000000000000000) == 0)
    {
      v14 = [MEMORY[0x1E696AEC0] br_pathWithFileSystemRepresentation:buf];
      v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
      br_logicalURL = [v15 br_logicalURL];

      goto LABEL_26;
    }

    v12 = brc_bread_crumbs("+[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:]", 355);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, 0x90u))
    {
      +[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:];
    }

LABEL_17:

    goto LABEL_18;
  }

  v11 = rawID;
  if (rawID)
  {
    goto LABEL_13;
  }

LABEL_18:
  v17 = brc_bread_crumbs("+[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:]", 358);
  v18 = brc_default_log(1, 0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    +[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:];
  }

  v19 = [MEMORY[0x1E696ABC0] brc_errorMethodNotImplemented:sel_br_documentURLFromFileObjectID_error_];
  if (v19)
  {
    v20 = brc_bread_crumbs("+[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:]", 360);
    v21 = brc_default_log(0, 0);
    if (os_log_type_enabled(v21, 0x90u))
    {
      v27 = "(passed to caller)";
      *buf = 136315906;
      v31 = "+[NSURL(BRAdditions) br_documentURLFromFileObjectID:error:]";
      v32 = 2080;
      if (!a4)
      {
        v27 = "(ignored by caller)";
      }

      v33 = v27;
      v34 = 2112;
      v35 = v19;
      v36 = 2112;
      v37 = v20;
      _os_log_error_impl(&dword_1AE2A9000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a4)
  {
    v22 = v19;
    *a4 = v19;
  }

  br_logicalURL = 0;
LABEL_26:

  v23 = *MEMORY[0x1E69E9840];

  return br_logicalURL;
}

+ (void)br_documentURLFromBookmarkableString:()BRAdditions completion:
{
  v5 = a4;
  v6 = a3;
  v7 = +[BRDaemonConnection defaultConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__NSURL_BRAdditions__br_documentURLFromBookmarkableString_completion___block_invoke;
  v13[3] = &unk_1E7A148D0;
  v8 = v5;
  v14 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v13];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__NSURL_BRAdditions__br_documentURLFromBookmarkableString_completion___block_invoke_2;
  v11[3] = &unk_1E7A15F48;
  v12 = v8;
  v10 = v8;
  [v9 resolveBookmarkDataToURL:v6 reply:v11];
}

+ (id)br_documentURLFromBookmarkableString:()BRAdditions error:
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v6 = +[BRDaemonConnection defaultConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__NSURL_BRAdditions__br_documentURLFromBookmarkableString_error___block_invoke;
  v17[3] = &unk_1E7A15C78;
  v17[4] = &v18;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v17];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__NSURL_BRAdditions__br_documentURLFromBookmarkableString_error___block_invoke_2;
  v16[3] = &unk_1E7A15F70;
  v16[4] = &v24;
  v16[5] = &v18;
  [v7 resolveBookmarkDataToURL:v5 reply:v16];
  v8 = v19[5];
  if (v8)
  {
    v9 = brc_bread_crumbs("+[NSURL(BRAdditions) br_documentURLFromBookmarkableString:error:]", 392);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, 0x90u))
    {
      v15 = "(passed to caller)";
      *buf = 136315906;
      v31 = "+[NSURL(BRAdditions) br_documentURLFromBookmarkableString:error:]";
      v32 = 2080;
      if (!a4)
      {
        v15 = "(ignored by caller)";
      }

      v33 = v15;
      v34 = 2112;
      v35 = v8;
      v36 = 2112;
      v37 = v9;
      _os_log_error_impl(&dword_1AE2A9000, v10, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a4)
  {
    v11 = v8;
    *a4 = v8;
  }

  v12 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)br_containerIDsWithExternalReferencesWithHandler:()BRAdditions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFF8];
  v11[0] = self;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__NSURL_BRAdditions__br_containerIDsWithExternalReferencesWithHandler___block_invoke;
  v9[3] = &unk_1E7A15F98;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v5 br_containerIDsWithExternalReferencesTo:v6 completionHandler:v9];

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)br_containerIDsWithExternalReferencesTo:()BRAdditions completionHandler:
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = a4;
  v7 = [v5 brc_errorMethodNotImplemented:sel_br_containerIDsWithExternalReferencesTo_completionHandler_];
  (a4)[2](v6, 0, v7);
}

- (id)br_pathRelativeToSyncedRootURLForContainerID:()BRAdditions
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__8;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__NSURL_BRAdditions__br_pathRelativeToSyncedRootURLForContainerID___block_invoke;
  v7[3] = &unk_1E7A15E80;
  v7[4] = self;
  v7[5] = &v8;
  BRPerformWithPersonaAndErrorForURLIfAble(self, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)br_pathRelativeToMobileDocuments
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__8;
  v8 = __Block_byref_object_dispose__8;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__NSURL_BRAdditions__br_pathRelativeToMobileDocuments__block_invoke;
  v3[3] = &unk_1E7A15E80;
  v3[4] = self;
  v3[5] = &v4;
  BRPerformWithPersonaAndErrorForURLIfAble(self, v3);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (id)br_debugDescription
{
  v2 = MEMORY[0x1E696AD60];
  path = [self path];
  v4 = [v2 stringWithFormat:@"path: %@", path];

  v34 = 0;
  v5 = *MEMORY[0x1E695DB00];
  v33 = 0;
  v6 = [self getResourceValue:&v34 forKey:v5 error:&v33];
  v7 = v34;
  v8 = v33;
  v9 = v8;
  if ((v6 & 1) == 0)
  {
    v10 = v8;

    v7 = v10;
  }

  [v4 appendFormat:@"  id:%@\n", v7];
  v32 = 0;
  v11 = *MEMORY[0x1E695DD70];
  v31 = 0;
  v12 = [self getResourceValue:&v32 forKey:v11 error:&v31];
  v13 = v32;

  v14 = v31;
  if ((v12 & 1) == 0)
  {
    v15 = v14;

    v13 = v15;
  }

  [v4 appendFormat:@"  volume:%@\n", v13];
  v30 = 0;
  v16 = *MEMORY[0x1E695DB78];
  v29 = 0;
  v17 = [self getResourceValue:&v30 forKey:v16 error:&v29];
  v18 = v30;

  v19 = v29;
  if ((v17 & 1) == 0)
  {
    v20 = v19;

    v18 = v20;
  }

  [v4 appendFormat:@"  directory:%@\n", v18];
  v28 = 0;
  v21 = *MEMORY[0x1E695DC38];
  v27 = 0;
  v22 = [self getResourceValue:&v28 forKey:v21 error:&v27];
  v23 = v28;

  v24 = v27;
  if (v22)
  {
    br_debugDescription = [v23 br_debugDescription];

    v23 = br_debugDescription;
  }

  else
  {
    br_debugDescription = v24;
  }

  [v4 appendFormat:@"  parent:%@\n", br_debugDescription];

  return v4;
}

- (uint64_t)br_isInTrash
{
  if (br_isInTrash_once != -1)
  {
    [NSURL(BRAdditions) br_isInTrash];
  }

  path = [self path];
  v3 = [path containsString:br_isInTrash_centralizedTrashSubStr];

  return v3;
}

- (uint64_t)br_isInSyncedDesktop
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__NSURL_BRAdditions__br_isInSyncedDesktop__block_invoke;
  v3[3] = &unk_1E7A15E80;
  v3[4] = self;
  v3[5] = &v4;
  BRPerformWithPersonaAndErrorForURLIfAble(self, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)br_isInSyncedDocuments
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__NSURL_BRAdditions__br_isInSyncedDocuments__block_invoke;
  v3[3] = &unk_1E7A15E80;
  v3[4] = self;
  v3[5] = &v4;
  BRPerformWithPersonaAndErrorForURLIfAble(self, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)_br_mightBeInSyncedLocationUnderCurrentPersonaID:()BRAdditions strictly:
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [BRDaemonConnection syncedRootURLsForPersonaID:a3 needsPersonaSwitch:0, 0];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v14 + 1) + 8 * v10) br_isParentOfURL:self strictly:a4])
        {
          v11 = 1;
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (uint64_t)_br_isInSyncedLocationStrictly:()BRAdditions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__NSURL_BRAdditions___br_isInSyncedLocationStrictly___block_invoke;
  v5[3] = &unk_1E7A15FC0;
  v5[4] = self;
  v5[5] = &v7;
  v6 = a3;
  BRPerformWithPersonaAndErrorForURLIfAble(self, v5);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (uint64_t)br_isInCloudDocsPrivateStorages
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__NSURL_BRAdditions__br_isInCloudDocsPrivateStorages__block_invoke;
  v3[3] = &unk_1E7A15E80;
  v3[4] = self;
  v3[5] = &v4;
  BRPerformWithPersonaAndErrorForURLIfAble(self, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)br_isInCloudDocsPrivateStoragesForRemoteDocumentVersions
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8;
  v9 = __Block_byref_object_dispose__8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__NSURL_BRAdditions__br_isInCloudDocsPrivateStoragesForRemoteDocumentVersions__block_invoke;
  v4[3] = &unk_1E7A15FE8;
  v4[4] = &v5;
  BRPerformWithPersonaAndErrorForURLIfAble(self, v4);
  v2 = [v6[5] br_isParentOfURL:self];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)br_isConflictedWithHandler:()BRAdditions
{
  v4 = a3;
  if ([self br_isInSyncedLocation])
  {
    v7 = 0;
    v5 = [self _br_getAttributeValue:@"BRURLUbiquitousItemIsConflictedKey" withSecondaryConnection:1 withError:&v7];
    v6 = v7;
    v4[2](v4, [v5 BOOLValue], v6);
  }

  else
  {
    v4[2](v4, 0, 0);
  }
}

- (id)br_containerID
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__8;
  v8 = __Block_byref_object_dispose__8;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__NSURL_BRAdditions__br_containerID__block_invoke;
  v3[3] = &unk_1E7A15E80;
  v3[4] = self;
  v3[5] = &v4;
  BRPerformWithPersonaAndErrorForURLIfAble(self, v3);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (BOOL)br_isDocumentsContainer
{
  br_containerIDIfIsDocumentsContainerURL = [self br_containerIDIfIsDocumentsContainerURL];
  v2 = br_containerIDIfIsDocumentsContainerURL != 0;

  return v2;
}

- (BOOL)br_mightBeBRAlias
{
  lastPathComponent = [self lastPathComponent];
  br_pathExtension = [lastPathComponent br_pathExtension];
  if ([br_pathExtension isEqualToString:@"alias"])
  {
    v3 = [lastPathComponent characterAtIndex:0] == 46;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)br_cloudDocsContainer
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__8;
  v8 = __Block_byref_object_dispose__8;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__NSURL_BRAdditions__br_cloudDocsContainer__block_invoke;
  v3[3] = &unk_1E7A16060;
  v3[4] = self;
  v3[5] = &v4;
  BRPerformWithPersonaAndErrorForURLIfAble(self, v3);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (uint64_t)br_isExternalDocumentReference
{
  v9 = 0;
  v2 = [self getResourceValue:&v9 forKey:*MEMORY[0x1E695DB68] error:0];
  v3 = v9;
  v4 = v3;
  if (v2 && [v3 BOOLValue] && getxattr(objc_msgSend(self, "fileSystemRepresentation"), "com.apple.clouddocs.security", 0, 0, 0, 1) >= 1)
  {
    v5 = brc_bread_crumbs("[NSURL(BRAdditions) br_isExternalDocumentReference]", 772);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(BRAdditions) br_isExternalDocumentReference];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)br_externalDocumentPropertiesWithError:()BRAdditions
{
  v14[5] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695EA10];
  v14[0] = *MEMORY[0x1E695DAB8];
  v14[1] = v5;
  v6 = *MEMORY[0x1E695E3A0];
  v14[2] = *MEMORY[0x1E695E2B0];
  v14[3] = v6;
  v14[4] = *MEMORY[0x1E695DC30];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];
  v8 = [MEMORY[0x1E695DFF8] bookmarkDataWithContentsOfURL:self error:a3];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFF8] resourceValuesForKeys:v7 fromBookmarkData:v8];
  }

  else
  {
    v10 = brc_bread_crumbs("[NSURL(BRAdditions) br_externalDocumentPropertiesWithError:]", 784);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [NSURL(BRAdditions) br_externalDocumentPropertiesWithError:];
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)br_URLByResolvingInProcessExternalDocumentReferenceWithProperties:()BRAdditions
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E695DAB8];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695DAB8]];
  if (!v6 || (v34 = 0, [self getResourceValue:&v34 forKey:*MEMORY[0x1E695E3E8] error:0], (v7 = v34) == 0))
  {
    br_logicalURL = 0;
    goto LABEL_40;
  }

  v8 = v7;
  v31 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695DC30]];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E2B0]];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] brc_fileURLWithVolumeDeviceID:v8 fileID:v9 isDirectory:0];
    v33 = 0;
    v11 = [v10 getResourceValue:&v33 forKey:v5 error:0];
    v12 = v33;
    v13 = v12;
    if (v11 && [v12 br_isEqualToNumber:v6])
    {
      if ([v10 br_isInSyncedLocation])
      {
        br_logicalURL = [v10 br_logicalURL];
        v15 = brc_bread_crumbs("[NSURL(BRAdditions) br_URLByResolvingInProcessExternalDocumentReferenceWithProperties:]", 817);
        v16 = brc_default_log(1, 0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v29 = v15;
          if (v10 == br_logicalURL)
          {
            v17 = &stru_1F23D4ED0;
          }

          else
          {
            v17 = @"promise, returning logical URL ";
          }

          path = [br_logicalURL path];
          *buf = 138412802;
          v36 = v17;
          v15 = v29;
          v37 = 2112;
          v38 = path;
          v39 = 2112;
          v40 = v29;
          _os_log_debug_impl(&dword_1AE2A9000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] resolved by fileID to %@%@%@", buf, 0x20u);
        }
      }

      else
      {
        v15 = brc_bread_crumbs("[NSURL(BRAdditions) br_URLByResolvingInProcessExternalDocumentReferenceWithProperties:]", 811);
        v16 = brc_default_log(1, 0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [NSURL(BRAdditions) br_URLByResolvingInProcessExternalDocumentReferenceWithProperties:];
        }

        br_logicalURL = 0;
      }

LABEL_38:

      v19 = v13;
      v20 = v9;
      v21 = v31;
      goto LABEL_39;
    }

    v19 = v13;
  }

  else
  {
    v19 = 0;
    v10 = 0;
  }

  v20 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E3A0]];

  v21 = v31;
  if (v20)
  {
    v22 = v31 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    goto LABEL_30;
  }

  v23 = [MEMORY[0x1E695DFF8] brc_fileURLWithVolumeDeviceID:v8 fileID:v20 isDirectory:1];

  if (!v23)
  {
    v10 = 0;
LABEL_30:
    br_logicalURL = 0;
    goto LABEL_39;
  }

  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v31 isDirectory:0 relativeToURL:v23];

  v32 = 0;
  v24 = [v10 getResourceValue:&v32 forKey:v5 error:0];
  v13 = v32;

  if (v24 && [v13 br_isEqualToNumber:v6])
  {
    if ([v10 br_isInSyncedLocation])
    {
      br_logicalURL = [v10 br_logicalURL];
      v15 = brc_bread_crumbs("[NSURL(BRAdditions) br_URLByResolvingInProcessExternalDocumentReferenceWithProperties:]", 835);
      v16 = brc_default_log(1, 0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v30 = v15;
        if (v10 == br_logicalURL)
        {
          v25 = &stru_1F23D4ED0;
        }

        else
        {
          v25 = @"promise, returning logical URL ";
        }

        path2 = [br_logicalURL path];
        *buf = 138412802;
        v36 = v25;
        v15 = v30;
        v37 = 2112;
        v38 = path2;
        v39 = 2112;
        v40 = v30;
        _os_log_debug_impl(&dword_1AE2A9000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] resolved by parent ID and name to %@%@%@", buf, 0x20u);
      }
    }

    else
    {
      v15 = brc_bread_crumbs("[NSURL(BRAdditions) br_URLByResolvingInProcessExternalDocumentReferenceWithProperties:]", 829);
      v16 = brc_default_log(1, 0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [NSURL(BRAdditions) br_URLByResolvingInProcessExternalDocumentReferenceWithProperties:];
      }

      br_logicalURL = 0;
    }

    v9 = v20;
    goto LABEL_38;
  }

  br_logicalURL = 0;
  v19 = v13;
LABEL_39:

LABEL_40:
  v27 = *MEMORY[0x1E69E9840];

  return br_logicalURL;
}

- (id)br_URLByResolvingExternalDocumentReferenceWithError:()BRAdditions
{
  v42 = *MEMORY[0x1E69E9840];
  memset(v33, 0, sizeof(v33));
  __brc_create_section(0, "[NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:]", 846, 0, v33);
  v5 = brc_bread_crumbs("[NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:]", 846);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v21 = v33[0];
    path = [self path];
    *buf = 134218754;
    v35 = v21;
    v36 = 2080;
    v37 = "[NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:]";
    v38 = 2112;
    v39 = path;
    v40 = 2112;
    v41 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %s: %@%@", buf, 0x2Au);
  }

  v7 = [self br_externalDocumentPropertiesWithError:a3];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_35;
  }

  v8 = [self br_URLByResolvingInProcessExternalDocumentReferenceWithProperties:v7];
  v9 = v8;
  if (!v8)
  {
    v11 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695EA10]];
    if (([v11 hasPrefix:@"docs.icloud.com:"] & 1) == 0)
    {
      if (a3)
      {
        *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BRCloudDocsErrorDomain" code:10 userInfo:0];
      }

      v19 = brc_bread_crumbs("[NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:]", 859);
      v20 = brc_default_log(1, 0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [NSURL(BRAdditions) br_externalDocumentPropertiesWithError:];
      }

      v10 = 0;
      v12 = v11;
      goto LABEL_33;
    }

    v12 = [v11 substringFromIndex:{objc_msgSend(@"docs.icloud.com:", "length")}];

    v32 = 0;
    v13 = BRCopyDocumentURLForUbiquitousBookmarkData(v12, &v32);
    if (!v13)
    {
      v23 = brc_bread_crumbs("[NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:]", 883);
      v24 = brc_default_log(1, 0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [(NSURL(BRAdditions) *)&v32 br_URLByResolvingExternalDocumentReferenceWithError:v23, v24];
      }

      v17 = v32;
      if (v32)
      {
        v25 = brc_bread_crumbs("[NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:]", 884);
        v26 = brc_default_log(0, 0);
        if (os_log_type_enabled(v26, 0x90u))
        {
          v30 = "(passed to caller)";
          *buf = 136315906;
          v35 = "[NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:]";
          v36 = 2080;
          if (!a3)
          {
            v30 = "(ignored by caller)";
          }

          v37 = v30;
          v38 = 2112;
          v39 = v17;
          v40 = 2112;
          v41 = v25;
          _os_log_error_impl(&dword_1AE2A9000, v26, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (a3)
      {
        v27 = v17;
        v10 = 0;
        *a3 = v17;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_30;
    }

    v14 = brc_bread_crumbs("[NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:]", 868);
    v15 = brc_default_log(1, 0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      path2 = [v13 path];
      [(NSURL(BRAdditions) *)path2 br_URLByResolvingExternalDocumentReferenceWithError:v14, buf, v15];
    }

    if (([v13 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v10 = _CFURLPromiseCopyPhysicalURL();
      if (v10)
      {
        CFRelease(v13);
        if (![v10 br_isInCloudDocsPrivateStorages])
        {
LABEL_33:

          goto LABEL_34;
        }

        v17 = brc_bread_crumbs("[NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:]", 875);
        v18 = brc_default_log(0, 0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:];
        }

LABEL_30:
        goto LABEL_33;
      }

      if ([v13 br_isInCloudDocsPrivateStorages])
      {
        v17 = brc_bread_crumbs("[NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:]", 878);
        v31 = brc_default_log(0, 0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          [NSURL(BRAdditions) br_URLByResolvingExternalDocumentReferenceWithError:];
        }

        v10 = v13;
        goto LABEL_30;
      }
    }

    v10 = v13;
    goto LABEL_33;
  }

  v10 = v8;
LABEL_34:

LABEL_35:
  __brc_leave_section(v33);
  v28 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)br_itemID
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = +[BRContainerCache containerHelper];
  v9 = 0;
  v3 = [v2 itemIDForURL:self error:&v9];
  v4 = v9;

  if (!v3)
  {
    v5 = brc_bread_crumbs("[NSURL(BRAdditions) br_itemID]", 893);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, 0x90u))
    {
      *buf = 138412802;
      selfCopy = self;
      v12 = 2112;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_1AE2A9000, v6, 0x90u, "[ERROR] error getting itemID for item at URL %@: %@%@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)br_logicalURL
{
  if (_CFURLIsItemPromiseAtURL())
  {
    selfCopy = _CFURLCopyLogicalURLOfPromiseAtURL();
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)br_setAccessTime:()BRAdditions error:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696ABC0] brc_errorMethodNotImplemented:sel_br_setAccessTime_error_];
  if (v5)
  {
    v6 = brc_bread_crumbs("[NSURL(BRAdditions) br_setAccessTime:error:]", 920);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, 0x90u))
    {
      v11 = "(passed to caller)";
      v12 = 136315906;
      v13 = "[NSURL(BRAdditions) br_setAccessTime:error:]";
      v14 = 2080;
      if (!a4)
      {
        v11 = "(ignored by caller)";
      }

      v15 = v11;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_1AE2A9000, v7, 0x90u, "[ERROR] %s: %s error: %@%@", &v12, 0x2Au);
    }
  }

  if (a4)
  {
    v8 = v5;
    *a4 = v5;
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (id)br_typeIdentifierWithError:()BRAdditions
{
  v5 = 0;
  [self getPromisedItemResourceValue:&v5 forKey:*MEMORY[0x1E695DC68] error:a3];
  v3 = v5;

  return v3;
}

- (uint64_t)br_wouldBeExcludedFromSync
{
  path = [self path];
  v2 = [path br_isExcludedWithMaximumDepth:100];

  return v2;
}

- (BOOL)br_isSymLink
{
  v4 = 0;
  [self getResourceValue:&v4 forKey:*MEMORY[0x1E695DBC8] error:0];
  v1 = v4;
  objc_opt_class();
  v2 = (objc_opt_isKindOfClass() & 1) != 0 && [v1 intValue] != 0;

  return v2;
}

- (uint64_t)br_capabilityToMoveToURL:()BRAdditions error:
{
  v6 = a3;
  uRLByDeletingLastPathComponent = [self URLByDeletingLastPathComponent];
  uRLByDeletingLastPathComponent2 = [v6 URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];
  br_realpath = [path br_realpath];
  path2 = [uRLByDeletingLastPathComponent2 path];
  br_realpath2 = [path2 br_realpath];
  v13 = [br_realpath isEqualToString:br_realpath2];

  if (v13)
  {
    v14 = 64;
  }

  else
  {
    path3 = [v6 path];
    v16 = [path3 br_isExcludedWithMaximumDepth:1024];

    if (v16)
    {
      v14 = 8;
    }

    else
    {
      v17 = +[BRContainerCache containerHelper];
      v14 = [v17 br_capabilityToMoveFromURL:self toNewParent:uRLByDeletingLastPathComponent2 error:a4];
    }
  }

  return v14;
}

- (uint64_t)br_isTopLevelSharedItem
{
  result = [self br_isInSyncedLocation];
  if (result)
  {
    v3 = BRGetAttributeValueForItem(self, @"BRURLUbiquitousIsTopLevelSharedItemKey", 0);
    bOOLValue = [v3 BOOLValue];

    return bOOLValue;
  }

  return result;
}

- (uint64_t)br_isModifiedSinceShared
{
  result = [self br_isInSyncedLocation];
  if (result)
  {
    v3 = BRGetAttributeValueForItem(self, @"BRModifiedSinceSharedKey", 0);
    bOOLValue = [v3 BOOLValue];

    return bOOLValue;
  }

  return result;
}

- (id)br_creatorNameComponentsWithError:()BRAdditions
{
  v36 = *MEMORY[0x1E69E9840];
  if ([self br_isInSyncedLocation])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__8;
    v26 = __Block_byref_object_dispose__8;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__8;
    v20 = __Block_byref_object_dispose__8;
    v21 = 0;
    _br_itemServiceSyncProxy = [self _br_itemServiceSyncProxy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__NSURL_BRAdditions__br_creatorNameComponentsWithError___block_invoke;
    v15[3] = &unk_1E7A16088;
    v15[4] = &v16;
    v15[5] = &v22;
    [_br_itemServiceSyncProxy getCreatorNameComponents:v15];
    v6 = v23[5];
    if (!v6)
    {
      v7 = v17[5];
      if (v7)
      {
        v8 = brc_bread_crumbs("[NSURL(BRAdditions) br_creatorNameComponentsWithError:]", 997);
        v9 = brc_default_log(0, 0);
        if (os_log_type_enabled(v9, 0x90u))
        {
          v14 = "(passed to caller)";
          *buf = 136315906;
          v29 = "[NSURL(BRAdditions) br_creatorNameComponentsWithError:]";
          v30 = 2080;
          if (!a3)
          {
            v14 = "(ignored by caller)";
          }

          v31 = v14;
          v32 = 2112;
          v33 = v7;
          v34 = 2112;
          v35 = v8;
          _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (a3)
      {
        v10 = v7;
        *a3 = v7;
      }

      v6 = v23[5];
    }

    v11 = v6;

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)br_getSyncRootWithError:()BRAdditions
{
  v32[1] = *MEMORY[0x1E69E9840];
  fp_lmdURL = [MEMORY[0x1E695DFF8] fp_lmdURL];
  v31 = 0;
  if (fp_lmdURL)
  {
    v30 = 0;
    v6 = [MEMORY[0x1E695DFF8] br_isURL:fp_lmdURL syncRootOwnedByICloudDrive:&v31 withError:&v30];
    v7 = v30;
    if (v6 && v31 == 1 && [fp_lmdURL br_isParentOfURL:self ignoreHomeDirectoryCheck:1])
    {
      v8 = fp_lmdURL;
      goto LABEL_30;
    }

    if (v7)
    {
      if (a3)
      {
        v9 = v7;
        v8 = 0;
        *a3 = v7;
        goto LABEL_30;
      }

      goto LABEL_13;
    }
  }

  path = [self path];
  v11 = [path containsString:@"Mobile Documents"];

  if (!v11)
  {
    v7 = 0;
LABEL_13:
    v8 = 0;
    goto LABEL_30;
  }

  pathComponents = [self pathComponents];
  v13 = [pathComponents indexOfObjectWithOptions:2 passingTest:&__block_literal_global_69];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v14 = v13;
    v27 = a3;
    v28 = fp_lmdURL;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = [pathComponents objectAtIndexedSubscript:v15];
      v19 = v18;
      if (v16)
      {
        v20 = [v16 URLByAppendingPathComponent:v18];
        v21 = v16;
      }

      else
      {
        v22 = MEMORY[0x1E695DFF8];
        v32[0] = v18;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
        v20 = [v22 fileURLWithPathComponents:v21];
      }

      v16 = v20;

      if ([v19 isEqualToString:@"Mobile Documents"])
      {
        v29 = v17;
        v23 = [MEMORY[0x1E695DFF8] br_isURL:v16 syncRootOwnedByICloudDrive:&v31 withError:&v29];
        v7 = v29;

        if (v23 && (v31 & 1) != 0)
        {
          v8 = v16;

          goto LABEL_28;
        }

        v17 = v7;
      }

      ++v15;
    }

    while (v15 <= v14);
    if (v27)
    {
      v24 = v17;
      v8 = 0;
      *v27 = v17;
    }

    else
    {
      v8 = 0;
    }

    v7 = v17;
LABEL_28:
    fp_lmdURL = v28;
  }

LABEL_30:
  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

- (uint64_t)_br_isParentOfURL:()BRAdditions strictly:ignoreHomeDirectoryCheck:
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (![v8 isFileURL])
  {
    goto LABEL_15;
  }

  if ((a5 & 1) == 0)
  {
    if (([self br_isInLocalHomeDirectory] & 1) == 0)
    {
      v21 = brc_bread_crumbs("[NSURL(BRAdditions) _br_isParentOfURL:strictly:ignoreHomeDirectoryCheck:]", 114);
      v22 = brc_default_log(0, 0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        selfCopy = v21;
        _os_log_fault_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: self.br_isInLocalHomeDirectory%@", buf, 0xCu);
      }
    }

    if (![v8 br_isInLocalHomeDirectory])
    {
LABEL_15:
      v18 = 0;
      goto LABEL_14;
    }
  }

  v30 = 0;
  v9 = [v8 getResourceValue:&v30 forKey:*MEMORY[0x1E695DB68] error:0];
  v10 = v30;
  v11 = v10;
  if (v9 && [v10 BOOLValue])
  {
    [self removeAllCachedResourceValues];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v28 = 0;
    v29 = 0;
    v23 = [defaultManager getRelationship:&v29 ofDirectoryAtURL:self toItemAtURL:v8 error:&v28];
    v24 = v28;
    if (v23)
    {
      if (v29)
      {
        v18 = (v29 == 1) & ~a4;
      }

      else
      {
        v18 = 1;
      }

      goto LABEL_13;
    }

    v25 = v24;
    v26 = brc_bread_crumbs("[NSURL(BRAdditions) _br_isParentOfURL:strictly:ignoreHomeDirectoryCheck:]", 138);
    v27 = brc_default_log(0, 0);
    if (os_log_type_enabled(v27, 0x90u))
    {
      *buf = 138413058;
      selfCopy = self;
      v33 = 2112;
      v34 = v8;
      v35 = 2112;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      _os_log_error_impl(&dword_1AE2A9000, v27, 0x90u, "[ERROR] can't tell if '%@'\n  is parent of alias '%@'\n  error %@%@", buf, 0x2Au);
    }
  }

  path = [v8 path];
  br_realpath = [path br_realpath];
  path2 = [self path];
  br_realpath2 = [path2 br_realpath];
  defaultManager = [br_realpath br_pathRelativeToPath:br_realpath2];

  if (a4)
  {
    v17 = [defaultManager length] == 0;
  }

  else
  {
    v17 = defaultManager == 0;
  }

  v18 = !v17;
LABEL_13:

LABEL_14:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (void)br_documentURLFromFileObjectID:()BRAdditions error:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  v6 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)br_documentURLFromFileObjectID:()BRAdditions error:.cold.2()
{
  OUTLINED_FUNCTION_6_1();
  v6 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, 0x90u, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)br_documentURLFromFileObjectID:()BRAdditions error:.cold.3()
{
  OUTLINED_FUNCTION_6_1();
  v6 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v1, v2, 0x90u, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)br_documentURLFromFileObjectID:()BRAdditions error:.cold.4()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)br_documentURLFromFileObjectID:()BRAdditions error:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] can't find file ID for %@, falling back to bird%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)br_isExternalDocumentReference
{
  OUTLINED_FUNCTION_6_1();
  v8 = *MEMORY[0x1E69E9840];
  path = [v0 path];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)br_externalDocumentPropertiesWithError:()BRAdditions .cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] no bookmark data%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)br_URLByResolvingInProcessExternalDocumentReferenceWithProperties:()BRAdditions .cold.1()
{
  OUTLINED_FUNCTION_6_1();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)br_URLByResolvingInProcessExternalDocumentReferenceWithProperties:()BRAdditions .cold.2()
{
  OUTLINED_FUNCTION_6_1();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)br_URLByResolvingExternalDocumentReferenceWithError:()BRAdditions .cold.2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] resolved through bookmark data string using bird to logical %@%@", buf, 0x16u);
}

- (void)br_URLByResolvingExternalDocumentReferenceWithError:()BRAdditions .cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !((__bridge NSURL *)physicalURL).br_isInCloudDocsPrivateStorages%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)br_URLByResolvingExternalDocumentReferenceWithError:()BRAdditions .cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !((__bridge NSURL *)logicalURL).br_isInCloudDocsPrivateStorages%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)br_URLByResolvingExternalDocumentReferenceWithError:()BRAdditions .cold.5(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, a2, a3, "[DEBUG] can't resolve bookmark data: %@%@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end