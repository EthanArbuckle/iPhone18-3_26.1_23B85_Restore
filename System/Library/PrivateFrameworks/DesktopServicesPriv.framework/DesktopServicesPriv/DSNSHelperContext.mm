@interface DSNSHelperContext
- (BOOL)copyItemsAtURLs:(id)ls toURL:(id)l options:(unint64_t)options conflictStrategy:(id)strategy receiveTargets:(id)targets error:(id *)error;
- (BOOL)copyRootMetadataAtURL:(id)l toDestinationURL:(id)rL targetName:(id)name error:(id *)error;
- (BOOL)createLockInDestinationURL:(id)l sourceURL:(id)rL groupUUID:(id)d groupCount:(int64_t)count conflictStrategy:(id)strategy isDuplication:(BOOL)duplication clonedInstead:(BOOL *)instead resultName:(id *)self0 error:(id *)self1;
- (BOOL)createLockNamed:(id)named destinationURL:(id)l sourceURL:(id)rL groupUUID:(id)d isDuplication:(BOOL)duplication groupCount:(int64_t)count clonedInstead:(BOOL *)instead error:(id *)self0;
- (BOOL)ensureFreeSpace:(int64_t)space onVolume:(id)volume error:(id *)error;
- (BOOL)launchDesktopServicesHelper:(id *)helper;
- (BOOL)preflightAndCloneIfPossible:(id)possible toURL:(id)l groupUUID:(id)d sourceURLsToCopy:(id *)copy isDuplication:(BOOL)duplication targetNames:(id *)names maxFileSize:(unint64_t *)size conflictStrategy:(id)self0 receiveTargets:(id)self1 error:(id *)self2;
- (BOOL)sizeURL:(id)l destinationURL:(id)rL targetName:(id)name coordinate:(BOOL)coordinate spaceNeeds:(DestinationSpaceNeeds *)needs groupUUID:(id)d error:(id *)error;
- (DSNSHelperContext)initWithOptions:(unsigned int)options delegate:(id)delegate;
- (id)copyItemsAtURLs:(id *)ls toURL:options:conflictStrategy:receiveTargets:error:;
- (unint64_t)resolveConflictAtURL:(id)l withStrategy:(id)strategy;
- (void)clearCopyStateForSources:(id)sources destination:(id)destination targetNames:(id)names groupUUID:(id)d;
- (void)dealloc;
- (void)stopAccessingURLs:(id)ls;
@end

@implementation DSNSHelperContext

- (DSNSHelperContext)initWithOptions:(unsigned int)options delegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = DSNSHelperContext;
  if ([(DSNSHelperContext *)&v5 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  impl = self->impl;
  if (impl)
  {
    (*(*impl + 8))(impl, a2);
  }

  v4.receiver = self;
  v4.super_class = DSNSHelperContext;
  [(DSNSHelperContext *)&v4 dealloc];
}

- (BOOL)launchDesktopServicesHelper:(id *)helper
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = TDSHelperContext::LaunchDesktopServicesHelper(self->impl, 0);
  v5 = v4;
  if (helper && v4)
  {
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v7 = DSLocalizedErrorStringForKey(&cfstr_Helpercommunic.isa);
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *helper = [v6 errorWithDomain:*MEMORY[0x1E696A768] code:v5 userInfo:v8];
  }

  result = v5 == 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)createLockNamed:(id)named destinationURL:(id)l sourceURL:(id)rL groupUUID:(id)d isDuplication:(BOOL)duplication groupCount:(int64_t)count clonedInstead:(BOOL *)instead error:(id *)self0
{
  v26[3] = *MEMORY[0x1E69E9840];
  namedCopy = named;
  lCopy = l;
  rLCopy = rL;
  dCopy = d;
  if ([(DSNSHelperContext *)self launchDesktopServicesHelper:error])
  {
    v26[0] = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    v25 = 0;
    v20 = TDSHelperContext::FilesCopyChildCreateLock(self->impl, lCopy, rLCopy, namedCopy, dCopy, count, 0, 0, duplication, v26, &v25);
    if (instead)
    {
      *instead = v25;
    }

    v22 = v20 == 0;
    if (error && v20)
    {
      v26[1] = *MEMORY[0x1E696A578];
      TCFURLInfo::LocalizedCopyErrorMessage(v20, rLCopy, v21);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v26);
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (unint64_t)resolveConflictAtURL:(id)l withStrategy:(id)strategy
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  strategyCopy = strategy;
  if ([strategyCopy type] != 1)
  {
    if (![strategyCopy type])
    {
      v7 = 2;
      goto LABEL_27;
    }

    if ([strategyCopy type] == 4)
    {
      v7 = 1;
      goto LABEL_27;
    }

    if ([strategyCopy type] != 3)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      localizedAlertTitle = [strategyCopy localizedAlertTitle];
      [dictionary setObject:localizedAlertTitle forKeyedSubscript:*MEMORY[0x1E695EE58]];

      v15 = [strategyCopy localizedAlertMessageForSourceFileURL:lCopy];
      [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x1E695EE60]];

      v16 = [strategyCopy localizedTitleForResolution:0];
      if ([v16 length])
      {
        [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x1E695EE78]];
      }

      v17 = [strategyCopy localizedTitleForResolution:1];
      if ([v17 length])
      {
        [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x1E695EE70]];
      }

      v18 = [strategyCopy localizedTitleForResolution:2];
      if ([v18 length])
      {
        [dictionary setObject:v18 forKeyedSubscript:*MEMORY[0x1E695EE98]];
      }

      error = 0;
      v19 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, dictionary);
      v29 = v19;
      if (error)
      {
        v20 = LogObj(2);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = error;
          _os_log_impl(&dword_1E5674000, v20, OS_LOG_TYPE_ERROR, "CFUserNotificationCreate failed with %d", buf, 8u);
        }

        v7 = 0;
      }

      else
      {
        *buf = 0;
        v7 = 0;
        if (!CFUserNotificationReceiveResponse(v19, 0.0, buf))
        {
          if ((buf[0] & 3u) > 1uLL)
          {
            if ((buf[0] & 3) == 2)
            {
              [strategyCopy setType:0];
              v7 = 2;
            }
          }

          else if ((buf[0] & 3) != 0)
          {
            [strategyCopy setType:4];
            v7 = 1;
          }
        }
      }

      TRef<__CFUserNotification *,TRetainReleasePolicy<__CFUserNotification *>>::~TRef(&v29);

      goto LABEL_26;
    }

    v8 = dispatch_semaphore_create(0);
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__DSNSHelperContext_resolveConflictAtURL_withStrategy___block_invoke;
    block[3] = &unk_1E877F0F8;
    v10 = strategyCopy;
    v25 = v10;
    v26 = lCopy;
    v28 = &v29;
    dictionary = v8;
    v27 = dictionary;
    dispatch_async(v9, block);

    dispatch_semaphore_wait(dictionary, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v30[3];
    if (v12 == 1)
    {
      v13 = 4;
    }

    else
    {
      if (v12 != 2)
      {
LABEL_25:
        v7 = v30[3];

        _Block_object_dispose(&v29, 8);
LABEL_26:

        goto LABEL_27;
      }

      v13 = 0;
    }

    [v10 setType:v13];
    goto LABEL_25;
  }

  v7 = 0;
LABEL_27:

  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

void __55__DSNSHelperContext_resolveConflictAtURL_withStrategy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conflictHandler];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__DSNSHelperContext_resolveConflictAtURL_withStrategy___block_invoke_2;
  v6[3] = &unk_1E877F0D0;
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  (v2)[2](v2, v3, v6);
}

- (BOOL)createLockInDestinationURL:(id)l sourceURL:(id)rL groupUUID:(id)d groupCount:(int64_t)count conflictStrategy:(id)strategy isDuplication:(BOOL)duplication clonedInstead:(BOOL *)instead resultName:(id *)self0 error:(id *)self1
{
  duplicationCopy = duplication;
  v65 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  dCopy = d;
  strategyCopy = strategy;
  *instead = 0;
  *name = 0;
  v59 = 0;
  v48 = strategyCopy;
  v55 = rLCopy;
  v17 = [strategyCopy type] == 0;
  lastPathComponent = [(NSURL *)rLCopy lastPathComponent];
  if (BRContainerClass() && [(NSURL *)rLCopy br_isDocumentsContainer])
  {
    TCFURLInfo::StringProperty(rLCopy, *MEMORY[0x1E695EBC8], buf);
    if (CFStringGetLength(*buf))
    {
      v19 = *buf;

      lastPathComponent = v19;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
  }

  v58 = &unk_1F5F4A358;
  v49 = [MEMORY[0x1E696AEC0] ds_fileNameHasClaimedFileExtension:lastPathComponent];
  v50 = [lastPathComponent fp_stringByDeletingPathBounceNo:&v58 andPathExtension:0 isFolder:v49 ^ 1u];
  v20 = v58;
  v21 = lastPathComponent;
  v51 = 0;
  v22 = 0;
  v23 = *MEMORY[0x1E696A768];
  v47 = v21;
  while (1)
  {
    v57 = v22;
    v24 = [(DSNSHelperContext *)self createLockNamed:v21 destinationURL:lCopy sourceURL:v55 groupUUID:dCopy isDuplication:duplicationCopy groupCount:count clonedInstead:&v59 error:&v57];
    v25 = v57;

    if (v24)
    {
      break;
    }

    domain = [v25 domain];
    v27 = domain;
    if (domain != v23)
    {

LABEL_36:
      v22 = v25;
LABEL_37:
      if (error)
      {
        v40 = v22;
        *error = v22;
      }

      if (v22)
      {
        v41 = LogObj(2);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          domain2 = [v22 domain];
          code = [v22 code];
          v44 = SanitizedURL(v55);
          *buf = 138543874;
          *&buf[4] = domain2;
          v61 = 2048;
          v62 = code;
          v63 = 2114;
          v64 = v44;
          _os_log_impl(&dword_1E5674000, v41, OS_LOG_TYPE_ERROR, "Failed to create lock file in destination for domain=%{public}@ code=%ld sourceURL=%{public}@", buf, 0x20u);
        }
      }

      goto LABEL_43;
    }

    if ([v25 code] == -48)
    {
    }

    else
    {
      v28 = [v25 code] == -8011;

      if (!v28)
      {
        goto LABEL_36;
      }
    }

    if (!v17)
    {
      v30 = [lCopy URLByAppendingPathComponent:v21];
      v32 = [(DSNSHelperContext *)self resolveConflictAtURL:v30 withStrategy:v48];
      if (!v32)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:v23 code:-128 userInfo:0];
        v31 = 0;
        v25 = v33 = v25;
LABEL_25:

        v17 = 0;
        goto LABEL_26;
      }

      if (v32 == 1)
      {
        v33 = [objc_opt_class() wrapperWithURL:v30 readonly:0 error:0];
        if (v33)
        {
          v34 = TDSHelperContext::FilesCopyDeleteItem(self->impl, v33, 2u, 1, 1);
          if (v34)
          {
            v35 = [MEMORY[0x1E696ABC0] errorWithDomain:v23 code:v34 userInfo:0];

            v31 = 0;
            v25 = v35;
          }

          else
          {
            ++v51;
            v31 = 1;
          }
        }

        else
        {
          v31 = 0;
        }

        goto LABEL_25;
      }

      if (v32 != 2)
      {
        v17 = 0;
        v31 = 0;
        goto LABEL_26;
      }
    }

    v29 = [v50 fp_bouncedNameWithIndex:objc_msgSend(v20 isDir:{"integerValue"), v49 ^ 1u}];

    [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v20, "integerValue") + 1}];
    v17 = 1;
    v30 = v20;
    v20 = v21 = v29;
    v31 = 1;
LABEL_26:
    v22 = v25;

    if (v51 < 2)
    {
      v36 = v31;
    }

    else
    {
      v36 = 0;
    }

    if ((v36 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v37 = v21;
  *name = v21;
  *instead = v59;
  v38 = LogObj(2);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v39 = SanitizedURL(v55);
    *buf = 138543362;
    *&buf[4] = v39;
    _os_log_impl(&dword_1E5674000, v38, OS_LOG_TYPE_DEBUG, "Created lock file in destination for sourceURL %{public}@", buf, 0xCu);
  }

  v22 = 0;
  if (error)
  {
    *error = 0;
  }

LABEL_43:

  v45 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)copyRootMetadataAtURL:(id)l toDestinationURL:(id)rL targetName:(id)name error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  if ([(DSNSHelperContext *)self launchDesktopServicesHelper:error])
  {
    v18 = 0;
    v13 = TDSHelperContext::FilesCopySetRootMetadata(self->impl, lCopy, rLCopy, nameCopy, 0x15u, &v18);
    v15 = v13 == 0;
    if (error && v13)
    {
      v19 = *MEMORY[0x1E696A578];
      TCFURLInfo::LocalizedCopyErrorMessage(v13, lCopy, v14);
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)sizeURL:(id)l destinationURL:(id)rL targetName:(id)name coordinate:(BOOL)coordinate spaceNeeds:(DestinationSpaceNeeds *)needs groupUUID:(id)d error:(id *)error
{
  coordinateCopy = coordinate;
  v25[5] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  dCopy = d;
  v25[0] = 0;
  if (coordinateCopy)
  {
    v19 = 0x2000;
  }

  else
  {
    v19 = 0;
  }

  v20 = TDSHelperContext::FilesCopyOperationSize(self->impl, lCopy, rLCopy, nameCopy, 2u, v19, &needs->var0, 0, dCopy, v25);
  if (v20)
  {
    if (error)
    {
      v25[3] = *MEMORY[0x1E696A578];
      TCFURLInfo::LocalizedCopyErrorMessage(v20, lCopy, v21);
    }
  }

  else
  {
    if (!needs || (needs->var18 & 0x100000) == 0)
    {
      v22 = 1;
      goto LABEL_11;
    }

    if (error)
    {
      v25[1] = *MEMORY[0x1E696A578];
      TCFURLInfo::LocalizedCopyErrorMessage(0xFFFFFAE3, lCopy, v21);
    }
  }

  v22 = 0;
LABEL_11:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)ensureFreeSpace:(int64_t)space onVolume:(id)volume error:(id *)error
{
  v46[2] = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  v9 = *MEMORY[0x1E695DD60];
  v46[0] = *MEMORY[0x1E695DE98];
  v8 = v46[0];
  v46[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v11 = [volumeCopy resourceValuesForKeys:v10 error:0];
  v12 = [v11 objectForKeyedSubscript:v8];
  longLongValue = [v12 longLongValue];

  v14 = [v11 objectForKeyedSubscript:v9];
  longLongValue2 = [v14 longLongValue];

  v16 = space - longLongValue2;
  if (space <= longLongValue2)
  {
    v27 = 1;
  }

  else
  {
    if (longLongValue <= space)
    {
      v27 = 0;
    }

    else
    {
      v44[0] = @"CACHE_DELETE_VOLUME";
      path = [volumeCopy path];
      v44[1] = @"CACHE_DELETE_URGENCY";
      v45[0] = path;
      v45[1] = &unk_1F5F4A370;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];

      v35 = CacheDeleteCopyPurgeableSpaceWithInfo();
      v18 = [v35 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
      if (v18)
      {
        v34 = v18;
        if ([v18 longLongValue] + longLongValue2 <= space)
        {
          v27 = 0;
          v21 = v34;
        }

        else
        {
          v42[0] = @"CACHE_DELETE_VOLUME";
          path2 = [volumeCopy path];
          v43[0] = path2;
          v42[1] = @"CACHE_DELETE_AMOUNT";
          v20 = [MEMORY[0x1E696AD98] numberWithLongLong:v16];
          v42[2] = @"CACHE_DELETE_URGENCY";
          v43[1] = v20;
          v43[2] = &unk_1F5F4A370;
          v21 = v34;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];

          v22 = dispatch_semaphore_create(0);
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __52__DSNSHelperContext_ensureFreeSpace_onVolume_error___block_invoke;
          v38[3] = &unk_1E877F120;
          v23 = v22;
          v39 = v23;
          v24 = MEMORY[0x1E692D6D0](v38);
          CacheDeletePurgeSpaceWithInfo();

          dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
          [volumeCopy removeCachedResourceValueForKey:v9];
          v37 = 0;
          LODWORD(v20) = [volumeCopy getResourceValue:&v37 forKey:v9 error:0];
          v25 = v37;
          v26 = v25;
          if (v20)
          {
            v27 = [v25 longLongValue] > space;
          }

          else
          {
            v27 = 0;
          }
        }
      }

      else
      {
        v27 = 0;
        v21 = 0;
      }
    }

    if (error && !v27)
    {
      v28 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A578];
      v29 = DSLocalizedErrorStringForKey(&cfstr_Notenoughspace.isa);
      v41 = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *error = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-34 userInfo:v30];

      v27 = 0;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)clearCopyStateForSources:(id)sources destination:(id)destination targetNames:(id)names groupUUID:(id)d
{
  sourcesCopy = sources;
  destinationCopy = destination;
  namesCopy = names;
  dCopy = d;
  if ([sourcesCopy count])
  {
    v12 = [namesCopy objectAtIndexedSubscript:0];
    [destinationCopy URLByAppendingPathComponent:v12];
    objc_claimAutoreleasedReturnValue();

    _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }
}

- (BOOL)preflightAndCloneIfPossible:(id)possible toURL:(id)l groupUUID:(id)d sourceURLsToCopy:(id *)copy isDuplication:(BOOL)duplication targetNames:(id *)names maxFileSize:(unint64_t *)size conflictStrategy:(id)self0 receiveTargets:(id)self1 error:(id *)self2
{
  v25 = *MEMORY[0x1E69E9840];
  possibleCopy = possible;
  l;
  dCopy = d;
  strategy;
  targets;
  v14 = LogObj(2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [possibleCopy count];
    uUIDString = [dCopy UUIDString];
    *buf = 67109378;
    v21 = v15;
    v22 = 2114;
    v23 = uUIDString;
    _os_log_impl(&dword_1E5674000, v14, OS_LOG_TYPE_DEFAULT, "Preflighting copy of %u items for operation %{public}@", buf, 0x12u);
  }

  [MEMORY[0x1E695DF90] dictionary];
  objc_claimAutoreleasedReturnValue();
  v24 = 0;
  bzero(buf, 0x879uLL);
  [MEMORY[0x1E695DF70] array];
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x1E695DF70] array];
  objc_claimAutoreleasedReturnValue();
  _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

- (void)stopAccessingURLs:(id)ls
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  lsCopy = ls;
  v4 = [lsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(lsCopy);
        }

        [*(*(&v8 + 1) + 8 * v6++) stopAccessingSecurityScopedResource];
      }

      while (v4 != v6);
      v4 = [lsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)copyItemsAtURLs:(id)ls toURL:(id)l options:(unint64_t)options conflictStrategy:(id)strategy receiveTargets:(id)targets error:(id *)error
{
  optionsCopy = options;
  v93[1] = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  lCopy = l;
  strategyCopy = strategy;
  targetsCopy = targets;
  if (!strategyCopy)
  {
    strategyCopy = objc_alloc_init(DSConflictStrategy);
    [(DSConflictStrategy *)strategyCopy setType:1];
  }

  [(DSConflictStrategy *)strategyCopy validate];
  errorCopy = error;
  v66 = strategyCopy;
  if ([lsCopy count])
  {
    path = [(NSURL *)lCopy path];
    v14 = [path length];

    if (v14)
    {
      StScopedResourceAccess::StScopedResourceAccess(v82, lCopy);
      if ((TCFURLInfo::GetNumericalProperty(lCopy, *MEMORY[0x1E695E2A8], v15) & 0x40000000) != 0)
      {
        LOBYTE(v79) = 0;
        v16 = objc_alloc_init(MEMORY[0x1E696ABF8]);
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3321888768;
        v80[2] = __89__DSNSHelperContext_copyItemsAtURLs_toURL_options_conflictStrategy_receiveTargets_error___block_invoke;
        v80[3] = &__block_descriptor_48_ea8_32c102_ZTSKZ89__DSNSHelperContext_copyItemsAtURLs_toURL_options_conflictStrategy_receiveTargets_error__E3__1_e15_v16__0__NSURL_8l;
        v80[4] = &v79;
        v80[5] = &lCopy;
        v81 = 0;
        [v16 coordinateReadingItemAtURL:lCopy options:1 error:&v81 byAccessor:v80];
        v17 = v81;
        if ((v79 & 1) == 0)
        {
          v18 = LogObj(2);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v89 = lCopy;
            v90 = 2114;
            v91 = v17;
            _os_log_impl(&dword_1E5674000, v18, OS_LOG_TYPE_ERROR, "Failed to coordinate for copy on %@: %{public}@", buf, 0x16u);
          }
        }
      }

      v56 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.DesktopServicesHelper" name:@"FileCopy"];
      v19 = objc_alloc(MEMORY[0x1E69C7548]);
      currentProcess = [MEMORY[0x1E69C7640] currentProcess];
      v87 = v56;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
      v57 = [v19 initWithExplanation:@"DesktopServices file copy" target:currentProcess attributes:v21];

      [v57 acquireWithInvalidationHandler:&__block_literal_global_228];
      v22 = v57;
      v79 = v22;
      [MEMORY[0x1E696AFB0] UUID];
      v77 = 0;
      v78 = 0;
      v75 = 0;
      v62 = v76 = 0;
      LOBYTE(currentProcess) = [DSNSHelperContext preflightAndCloneIfPossible:"preflightAndCloneIfPossible:toURL:groupUUID:sourceURLsToCopy:isDuplication:targetNames:maxFileSize:conflictStrategy:receiveTargets:error:" toURL:lsCopy groupUUID:lCopy sourceURLsToCopy:&v78 isDuplication:v66 targetNames:targetsCopy maxFileSize:&v75 conflictStrategy:? receiveTargets:? error:?];
      v23 = v77;
      v60 = v76;
      v24 = v75;
      v61 = v23;
      v58 = v24;
      v55 = v22;
      if (currentProcess)
      {
        if (![v23 count])
        {
          v26 = 1;
          goto LABEL_43;
        }

        if ([(DSNSHelperContext *)self launchDesktopServicesHelper:error])
        {
          v59 = [[DSNSURLBatchEnumerator alloc] initWithURLs:v23 targets:v60 batchSize:200];
          v64 = 0;
          v25 = 0;
          v53 = *MEMORY[0x1E696A768];
          v54 = *MEMORY[0x1E696A578];
          v26 = 1;
          do
          {
            nextBatch = [(DSNSURLBatchEnumerator *)v59 nextBatch];

            if (!nextBatch)
            {
              break;
            }

            v28 = objc_autoreleasePoolPush();
            v63 = [nextBatch objectForKeyedSubscript:@"SourceURLs"];
            v29 = [nextBatch objectForKeyedSubscript:@"TargetNames"];
            array = [MEMORY[0x1E695DF70] array];
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v31 = v63;
            v32 = [v31 countByEnumeratingWithState:&v71 objects:v86 count:16];
            if (v32)
            {
              v33 = *v72;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v72 != v33)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v35 = *(*(&v71 + 1) + 8 * i);
                  [v35 startAccessingSecurityScopedResource];
                  [array addObject:v35];
                }

                v32 = [v31 countByEnumeratingWithState:&v71 objects:v86 count:16];
              }

              while (v32);
            }

            v36 = LogObj(2);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v37 = [v31 count];
              *buf = 134217984;
              v89 = v37;
              _os_log_impl(&dword_1E5674000, v36, OS_LOG_TYPE_DEBUG, "Copying next batch of %lu", buf, 0xCu);
            }

            v38 = (optionsCopy & 2) != 0 || [lsCopy count] > 0xC8;
            *buf = 0;
            v39 = TDSHelperContext::PerformFilesCopy(self->impl, v31, lCopy, v29, v62, v78, v38, optionsCopy & 1, buf);
            if (v39)
            {
              v40 = DSLocalizedErrorStringForKey(&cfstr_Unknownerror.isa);
              v41 = [MEMORY[0x1E696AEC0] stringWithFormat:v40, v39];

              v42 = MEMORY[0x1E696ABC0];
              v84 = v54;
              v85 = v41;
              v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
              v44 = [v42 errorWithDomain:v53 code:v39 userInfo:v43];

              [(DSNSHelperContext *)self stopAccessingURLs:array];
              v26 = 0;
              v64 = v44;
            }

            else
            {
              [(DSNSHelperContext *)self stopAccessingURLs:array];
            }

            objc_autoreleasePoolPop(v28);
            v25 = nextBatch;
          }

          while (!v39);
          if (errorCopy && v64)
          {
            v45 = v64;
            *errorCopy = v64;
          }

          goto LABEL_43;
        }
      }

      else if (error)
      {
        v50 = v24;
        v26 = 0;
        *error = v58;
LABEL_43:

        StDefer<[DSNSHelperContext copyItemsAtURLs:toURL:options:conflictStrategy:receiveTargets:error:]::$_0>::~StDefer(&v79);
        StScopedResourceAccess::~StScopedResourceAccess(v82);

        v49 = v60;
        goto LABEL_44;
      }

      v26 = 0;
      goto LABEL_43;
    }
  }

  if (error)
  {
    v46 = MEMORY[0x1E696ABC0];
    v92 = *MEMORY[0x1E696A578];
    v93[0] = DSLocalizedErrorStringForKey(&cfstr_Nosourceordest.isa);
    v61 = v93[0];
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:&v92 count:1];
    v48 = v46;
    v49 = v47;
    [v48 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:?];
    *error = v26 = 0;
LABEL_44:

    goto LABEL_45;
  }

  v26 = 0;
LABEL_45:

  v51 = *MEMORY[0x1E69E9840];
  return v26 & 1;
}

void __89__DSNSHelperContext_copyItemsAtURLs_toURL_options_conflictStrategy_receiveTargets_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogObj(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = **(a1 + 40);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_INFO, "Successfully coordinated for copy %@ -> %@", &v7, 0x16u);
  }

  **(a1 + 32) = 1;
  v6 = *MEMORY[0x1E69E9840];
}

void __89__DSNSHelperContext_copyItemsAtURLs_toURL_options_conflictStrategy_receiveTargets_error___block_invoke_225(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = LogObj(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_ERROR, "DS file copy assertion invalidated with error: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)copyItemsAtURLs:(id *)ls toURL:options:conflictStrategy:receiveTargets:error:
{
  [*ls invalidate];

  return ls;
}

@end