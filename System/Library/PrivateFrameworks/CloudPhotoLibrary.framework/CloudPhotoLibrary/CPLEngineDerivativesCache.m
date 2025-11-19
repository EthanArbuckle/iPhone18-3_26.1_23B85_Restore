@interface CPLEngineDerivativesCache
- (BOOL)_checkGeneratedResources:(id)a3 error:(id *)a4;
- (BOOL)_checkResource:(id)a3 name:(id)a4 error:(id *)a5;
- (BOOL)_isUnsupportedFormatError:(id)a3;
- (CPLEngineDerivativesCache)initWithCacheURL:(id)a3;
- (id)_cacheKeyForReferenceResource:(id)a3 adjustments:(id)a4 includePosterFrame:(BOOL)a5;
- (void)_createCacheFolderIfNecessary;
- (void)_generateDerivativesForChange:(id)a3 derivativesFilter:(id)a4 fingerprintScheme:(id)a5 completionHandler:(id)a6;
- (void)_updateChange:(id *)a3 fromOldChange:(id)a4 withResources:(id)a5 excludeImages:(BOOL)a6;
- (void)discardCache;
- (void)generateDerivativesForChange:(id)a3 derivativesFilter:(id)a4 fingerprintScheme:(id)a5 completionHandler:(id)a6;
@end

@implementation CPLEngineDerivativesCache

- (void)generateDerivativesForChange:(id)a3 derivativesFilter:(id)a4 fingerprintScheme:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke;
  v51[3] = &unk_1E861CEE8;
  v51[4] = self;
  v16 = v14;
  v53 = v16;
  v17 = v15;
  v52 = v17;
  v18 = MEMORY[0x1E128EBA0](v51);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_64;
  v44[3] = &unk_1E861F960;
  v44[4] = self;
  v50 = a2;
  v19 = v17;
  v48 = v13;
  v49 = v18;
  v45 = v19;
  v46 = v11;
  v47 = v12;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  v23 = v18;
  v24 = MEMORY[0x1E128EBA0](v44);
  v25 = [v24 copy];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_4;
  v41[3] = &unk_1E861ECD0;
  v42 = v19;
  v43 = v16;
  v26 = v19;
  v27 = v16;
  v28 = MEMORY[0x1E128EBA0](v41);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_5;
  v38[3] = &unk_1E861E9A8;
  v38[4] = self;
  v29 = v25;
  v39 = v29;
  v40 = v28;
  v30 = v28;
  [v26 setCancellationHandler:v38];
  queue = self->_queue;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_71;
  v36[3] = &unk_1E861AA50;
  v36[4] = self;
  v37 = v29;
  v32 = v36;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_9785;
  block[3] = &unk_1E861B4E0;
  v55 = v32;
  v33 = queue;
  v34 = v29;
  v35 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v33, v35);
}

void __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 32) = 0;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  [*(a1 + 40) setCancellationHandler:0];
  v2 = [*(*(a1 + 32) + 40) firstObject];
  if (v2)
  {
    [*(*(a1 + 32) + 40) removeObjectAtIndex:0];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLDerivativesOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = MEMORY[0x1E128EBA0](v2);
        v6 = 134217984;
        v7 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Launching delayed derivatives generation %p", &v6, 0xCu);
      }
    }

    v2[2](v2);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_64(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 32) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(*(a1 + 80));
        *buf = 138412290;
        v21 = v8;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "%@ is running while an other call is still ongoing", buf, 0xCu);
      }
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = *(a1 + 80);
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineDerivativesCache.m"];
    v13 = NSStringFromSelector(*(a1 + 80));
    [v9 handleFailureInMethod:v10 object:v11 file:v12 lineNumber:600 description:{@"%@ is running while an other call is still ongoing", v13}];

    abort();
  }

  *(v2 + 32) = 1;
  if ([*(a1 + 40) isCancelled])
  {
    v3 = *(a1 + 72);
    v14 = +[CPLErrors operationCancelledError];
    (*(v3 + 16))(v3, 0, 0);
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_70;
    v15[3] = &unk_1E861B3A8;
    v5 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v15];

    v6 = *MEMORY[0x1E69E9840];
  }
}

uint64_t __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[CPLErrors operationCancelledError];
  (*(v2 + 16))(v2, 0, 0, v3);

  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v4 = *(a1 + 32);

  return [v4 setCancellationHandler:0];
}

void __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_5(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_6;
  v8[3] = &unk_1E861E9A8;
  v8[4] = v3;
  v9 = v2;
  v10 = *(a1 + 48);
  v5 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_9785;
  block[3] = &unk_1E861B4E0;
  v12 = v5;
  v6 = v4;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v7);
}

void __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_71(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 32) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLDerivativesOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = MEMORY[0x1E128EBA0](*(a1 + 40));
        v14 = 134217984;
        v15 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Derivatives generation %p is delayed until previous calls complete", &v14, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    v5 = *(v2 + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 32);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(a1 + 32) + 40);
    }

    v9 = MEMORY[0x1E128EBA0](*(a1 + 40));
    [v5 addObject:v9];

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 40) + 16);
    v13 = *MEMORY[0x1E69E9840];

    v12();
  }
}

void __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_6(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1[4] + 40);
  if (v1)
  {
    v3 = MEMORY[0x1E128EBA0](a1[5]);
    v4 = [v1 indexOfObject:v3];

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLDerivativesOSLogDomain();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = MEMORY[0x1E128EBA0](a1[5]);
          v8 = 134217984;
          v9 = v6;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling derivatives generation %p before even being launched", &v8, 0xCu);
        }
      }

      [*(a1[4] + 40) removeObjectAtIndex:v4];
      (*(a1[6] + 16))();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_2;
  v5[3] = &unk_1E861CF38;
  v5[4] = v1;
  v6 = *(a1 + 64);
  [v1 _generateDerivativesForChange:v2 derivativesFilter:v3 fingerprintScheme:v4 completionHandler:v5];
}

void __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 24);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __112__CPLEngineDerivativesCache_generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_3;
  v18[3] = &unk_1E861CF10;
  v11 = *(a1 + 40);
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v11;
  v12 = v18;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_9785;
  block[3] = &unk_1E861B4E0;
  v24 = v12;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

- (void)_generateDerivativesForChange:(id)a3 derivativesFilter:(id)a4 fingerprintScheme:(id)a5 completionHandler:(id)a6
{
  v161 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v95 = a4;
  v96 = a5;
  v98 = a6;
  dispatch_assert_queue_V2(self->_queue);
  if ([v10 isMasterChange])
  {
    v99 = [v10 resourceForType:1];
    v11 = [v99 identity];
    v12 = [v11 fileUTI];

    if (v12)
    {
      v13 = [(objc_class *)[(CPLEngineDerivativesCache *)self derivativeGeneratorClass] isMovieUTI:v12];
      if (v13)
      {
        v94 = v13;
        v14 = [v10 resourceForType:16];
        v15 = v14;
        if (v14 && ([v14 identity], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "fileURL"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
        {
          v15 = v15;
          v18 = 0;
          v19 = v15;
        }

        else
        {
          v19 = v99;
          v18 = 0;
        }

LABEL_26:

        goto LABEL_27;
      }

      if ([(objc_class *)[(CPLEngineDerivativesCache *)self derivativeGeneratorClass] canGenerateImageDerivativesFromUTI:v12])
      {
        v94 = 0;
        v25 = [v10 resourceForType:2];
        v15 = v25;
        if (!v25 || ([v25 identity], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "fileURL"), v27 = objc_claimAutoreleasedReturnValue(), v27, v26, v28 = v15, !v27))
        {
          v28 = v99;
        }

        v18 = v28;
        v29 = [v10 resourceForType:18];
        v30 = v29;
        if (v29 && ([v29 identity], v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "fileURL"), v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v32))
        {
          v19 = v30;
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_26;
      }
    }

    v94 = 0;
    v19 = 0;
    v18 = 0;
LABEL_27:

    v21 = 0;
    if (!v99)
    {
      v24 = 0;
      v97 = v19;
      goto LABEL_36;
    }

    v34 = 1;
    goto LABEL_29;
  }

  if (![v10 isAssetChange])
  {
    v24 = 0;
    v18 = 0;
    v97 = 0;
    v21 = 0;
    goto LABEL_36;
  }

  v20 = [v10 resourceForType:16];
  v21 = [v10 adjustments];
  if (v20)
  {
    v19 = v20;
    v18 = [v10 resourceForType:2];
    v22 = 0;
    v94 = 1;
    v92 = 2;
    if (!v18)
    {
      v99 = v19;
LABEL_43:
      v41 = [v19 identity];
      v42 = [v41 fileURL];
      v40 = v42 != 0;

      v97 = v19;
LABEL_44:
      *&buf = 0;
      *(&buf + 1) = &buf;
      v157 = 0x3032000000;
      v158 = __Block_byref_object_copy__9801;
      v159 = __Block_byref_object_dispose__9802;
      v160 = 0;
      v146[0] = MEMORY[0x1E69E9820];
      v146[1] = 3221225472;
      v146[2] = __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke;
      v146[3] = &unk_1E861CD58;
      v146[4] = self;
      v21 = v21;
      v147 = v21;
      v43 = v10;
      v148 = v43;
      p_buf = &buf;
      v93 = MEMORY[0x1E128EBA0](v146);
      if (v22)
      {
        v44 = v93[2](v93, v18, 1) ^ 1;
        if (!v40)
        {
LABEL_46:
          v45 = 0;
          goto LABEL_49;
        }
      }

      else
      {
        v44 = 0;
        if (!v40)
        {
          goto LABEL_46;
        }
      }

      v45 = (v93)[2](v93, v97, v94) ^ 1;
LABEL_49:
      if (((v44 | v45) & 1) == 0)
      {
        v56 = *(*(&buf + 1) + 40);
        if (v56)
        {
          v57 = [v56 allResources];
          v58 = [v43 copy];
          [v58 setResources:v57];
          (*(v98 + 2))(v98, v58, 0, 0);
        }

        else
        {
          (*(v98 + 2))(v98, v43, 0, 0);
        }

LABEL_82:

        _Block_object_dispose(&buf, 8);
        goto LABEL_83;
      }

      v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v143[0] = MEMORY[0x1E69E9820];
      v143[1] = 3221225472;
      v143[2] = __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_45;
      v143[3] = &unk_1E861CD80;
      v143[4] = self;
      v89 = v21;
      v144 = v89;
      v47 = v46;
      v145 = v47;
      v87 = MEMORY[0x1E128EBA0](v143);
      v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
      v138[0] = MEMORY[0x1E69E9820];
      v138[1] = 3221225472;
      v138[2] = __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_2;
      v138[3] = &unk_1E861CDA8;
      v138[4] = self;
      v49 = v43;
      v139 = v49;
      v142 = v98;
      v50 = v48;
      v140 = v50;
      v91 = v47;
      v141 = v91;
      v85 = MEMORY[0x1E128EBA0](v138);
      v132 = 0;
      v133 = &v132;
      v134 = 0x3032000000;
      v135 = __Block_byref_object_copy__9801;
      v136 = __Block_byref_object_dispose__9802;
      v137 = 0;
      if (!v45)
      {
        if (_CPLSilentLogging)
        {
          v52 = 1;
          goto LABEL_67;
        }

        v51 = __CPLDerivativesOSLogDomain();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *v150 = 138412546;
          v151 = v49;
          v152 = 2112;
          v153 = v18;
          _os_log_impl(&dword_1DC05A000, v51, OS_LOG_TYPE_DEBUG, "%@ has to generate image derivatives from %@", v150, 0x16u);
        }

        v52 = 1;
        goto LABEL_66;
      }

      if (v44)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v51 = __CPLDerivativesOSLogDomain();
          v52 = 2;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *v150 = 138412802;
            v151 = v49;
            v152 = 2112;
            v153 = v18;
            v154 = 2112;
            v155 = v97;
            v53 = "%@ has to generate image derivatives from %@ and video derivatives from %@";
            v52 = 2;
            v54 = v51;
            v55 = 32;
LABEL_65:
            _os_log_impl(&dword_1DC05A000, v54, OS_LOG_TYPE_DEBUG, v53, v150, v55);
            goto LABEL_66;
          }

          goto LABEL_66;
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v51 = __CPLDerivativesOSLogDomain();
        v52 = 2;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *v150 = 138412546;
          v151 = v49;
          v152 = 2112;
          v153 = v97;
          v53 = "%@ has to generate video derivatives from %@";
          v52 = 2;
          v54 = v51;
          v55 = 22;
          goto LABEL_65;
        }

LABEL_66:

LABEL_67:
        v59 = v45;
        if (v44)
        {
          v59 = v52;
        }

        if (v59 <= 1)
        {
          v60 = 1;
        }

        else
        {
          v60 = v59;
        }

        v61 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:v60];
        v117[0] = MEMORY[0x1E69E9820];
        v117[1] = 3221225472;
        v117[2] = __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_49;
        v117[3] = &unk_1E861CE48;
        v117[4] = self;
        v131 = v44;
        v118 = v18;
        v128 = &v132;
        v84 = v87;
        v126 = v84;
        v88 = v61;
        v119 = v88;
        v62 = v89;
        v120 = v62;
        v82 = v96;
        v121 = v82;
        v81 = v95;
        v122 = v81;
        v130 = v92;
        v90 = v85;
        v127 = v90;
        v63 = v97;
        v123 = v63;
        v86 = v50;
        v124 = v86;
        v129 = &buf;
        v83 = v49;
        v125 = v83;
        v64 = MEMORY[0x1E128EBA0](v117);
        v65 = v64;
        if (v45)
        {
          v66 = (v133 + 5);
          obj = v133[5];
          v67 = [(CPLEngineDerivativesCache *)self _checkResource:v63 name:@"baseVideoResource" error:&obj];
          objc_storeStrong(v66, obj);
          if (v67)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v68 = __CPLDerivativesOSLogDomain();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
              {
                *v150 = 138412290;
                v151 = v63;
                _os_log_impl(&dword_1DC05A000, v68, OS_LOG_TYPE_DEBUG, "Generating video derivatives for %@", v150, 0xCu);
              }
            }

            v69 = [[CPLDerivativesGenerationStatistics alloc] initWithSourceResource:v63];
            v70 = (*(v84 + 2))(v84, v63, v94);
            v100[0] = MEMORY[0x1E69E9820];
            v100[1] = 3221225472;
            v100[2] = __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_60;
            v100[3] = &unk_1E861CEC0;
            v100[4] = self;
            v101 = v63;
            v102 = v62;
            v71 = v70;
            v103 = v71;
            v104 = v82;
            v105 = v81;
            v114 = v92;
            v115 = v94;
            v106 = v88;
            v110 = v90;
            v72 = v69;
            v107 = v72;
            v108 = v86;
            v112 = &v132;
            v113 = &buf;
            v109 = v83;
            v111 = v65;
            [v106 performAsCurrentWithPendingUnitCount:1 usingBlock:v100];
          }

          else
          {
            (*(v90 + 2))(v90, 0, v133[5]);
          }
        }

        else
        {
          (*(v64 + 16))(v64);
        }

        _Block_object_dispose(&v132, 8);
        goto LABEL_82;
      }

      v52 = 2;
      goto LABEL_67;
    }

    v99 = v19;
    v97 = v19;
    v23 = 0;
LABEL_32:
    v36 = [v18 identity];
    v37 = [v36 fileURL];
    v22 = v37 != 0;

    if ((v94 & 1) == 0)
    {
      v40 = 0;
      v94 = v23;
      goto LABEL_44;
    }

    v94 = v23;
    v19 = v97;
    goto LABEL_43;
  }

  v33 = [v10 resourceForType:2];
  if (v33)
  {
    v99 = v33;
    v97 = [v10 resourceForType:19];
    v23 = 0;
    LOBYTE(v94) = v97 != 0;
    v92 = 2;
    v18 = v99;
    goto LABEL_32;
  }

  if (!v21 || [v21 adjustmentSourceType] || (objc_msgSend(v10, "resourceForType:", 1000), v74 = objc_claimAutoreleasedReturnValue(), (v99 = v74) == 0))
  {
    v24 = 0;
    v18 = 0;
    v97 = 0;
    goto LABEL_36;
  }

  v75 = [v74 identity];
  v76 = [v75 fileUTI];

  if (v76)
  {
    v77 = [(objc_class *)[(CPLEngineDerivativesCache *)self derivativeGeneratorClass] isMovieUTI:v76];
    v78 = v77;
    if (v77)
    {
      v94 = v77;
      v18 = 0;
      v79 = v99;
      v19 = v99;
    }

    else
    {
      v19 = 0;
      if (![(objc_class *)[(CPLEngineDerivativesCache *)self derivativeGeneratorClass] canGenerateImageDerivativesFromUTI:v76])
      {
        v94 = 0;
        v18 = 0;
        goto LABEL_96;
      }

      v94 = v78;
      v79 = v99;
      v18 = v99;
    }

    v80 = v79;
  }

  else
  {
    v94 = 0;
    v19 = 0;
    v18 = 0;
  }

LABEL_96:

  v34 = 2;
LABEL_29:
  v92 = v34;
  v35 = v19 != 0;
  if (v18 | v19)
  {
    if (!v18)
    {
      v22 = 0;
      v97 = 0;
      v40 = 0;
      if (!v19)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v97 = v19;
    v23 = v94;
    LOBYTE(v94) = v35;
    goto LABEL_32;
  }

  v18 = 0;
  v97 = 0;
  v24 = v99;
LABEL_36:
  v99 = v24;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v38 = __CPLDerivativesOSLogDomain();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = [v10 cplFullDescription];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v39;
      _os_log_impl(&dword_1DC05A000, v38, OS_LOG_TYPE_DEBUG, "%@ has no resource to generate", &buf, 0xCu);
    }
  }

  (*(v98 + 2))(v98, v10, 0, 0);
LABEL_83:

  v73 = *MEMORY[0x1E69E9840];
}

BOOL __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) _cachedResourcesForReferenceResource:a2 adjustment:*(a1 + 40) includePosterFrame:a3];
  if (v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLDerivativesOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 48);
        *buf = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEBUG, "Found cached resources for %@: %@", buf, 0x16u);
      }
    }

    if ([v5 count])
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      v10 = *(*(a1 + 56) + 8);
      obj = *(v10 + 40);
      [v8 _updateChange:&obj fromOldChange:v9 withResources:v5 excludeImages:v3 ^ 1u];
      objc_storeStrong((v10 + 40), obj);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

id __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_45(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _cleanTempFolderURLForGeneratedResourcesWithReferenceResource:a2 adjustment:*(a1 + 40) includePosterFrame:a3];
  [*(a1 + 48) addObject:v4];

  return v4;
}

void __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 24));
  if (!v5)
  {
    if (v6)
    {
      if ([objc_msgSend(*(a1 + 32) "derivativeGeneratorClass")])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v10 = __CPLDerivativesOSLogDomain();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v43 = v6;
            _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "Derivative generation error is transient, will retry: %@", buf, 0xCu);
          }
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v11 = *(a1 + 56);
        v12 = [v11 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v38;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v38 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v37 + 1) + 8 * i);
              v17 = [MEMORY[0x1E696AC08] defaultManager];
              [v17 removeItemAtURL:v16 error:0];
            }

            v13 = [v11 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v13);
        }

        v18 = *(a1 + 48);
        v19 = *(*(a1 + 64) + 16);
        goto LABEL_33;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLDerivativesOSLogDomain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 40);
          *buf = 138412546;
          v43 = v23;
          v44 = 2112;
          v45 = v6;
          _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Failed to generate derivatives for %@: %@", buf, 0x16u);
        }
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = *(a1 + 56);
      v24 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v34;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(v20);
            }

            v28 = *(*(&v33 + 1) + 8 * j);
            v29 = [MEMORY[0x1E696AC08] defaultManager];
            [v29 removeItemAtURL:v28 error:0];
          }

          v25 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v25);
      }
    }

    else
    {
      if (_CPLSilentLogging)
      {
LABEL_32:
        v30 = *(a1 + 40);
        v31 = *(a1 + 48);
        v19 = *(*(a1 + 64) + 16);
LABEL_33:
        v19();
        goto LABEL_34;
      }

      v20 = __CPLDerivativesOSLogDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 40);
        *buf = 138412290;
        v43 = v21;
        _os_log_impl(&dword_1DC05A000, v20, OS_LOG_TYPE_DEBUG, "No derivatives are generated for %@", buf, 0xCu);
      }
    }

    goto LABEL_32;
  }

  v7 = [v5 allResources];
  v8 = [*(a1 + 40) copy];
  [v8 setResources:v7];
  v9 = *(a1 + 48);
  (*(*(a1 + 64) + 16))();

LABEL_34:
  v32 = *MEMORY[0x1E69E9840];
}

void __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_49(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 24));
  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 120) + 8);
    v32 = *(v4 + 40);
    v5 = [v2 _checkResource:v3 name:@"baseImageResource" error:&v32];
    objc_storeStrong((v4 + 40), v32);
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = (*(*(a1 + 104) + 16))();
      v8 = [[CPLDerivativesGenerationStatistics alloc] initWithSourceResource:*(a1 + 40)];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_2_54;
      v18[3] = &unk_1E861CE20;
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v18[4] = *(a1 + 32);
      v19 = v9;
      v20 = *(a1 + 56);
      v21 = v7;
      v22 = *(a1 + 64);
      v11 = *(a1 + 72);
      v12 = *(a1 + 136);
      v23 = v11;
      v31 = v12;
      v24 = *(a1 + 48);
      v29 = *(a1 + 112);
      v25 = *(a1 + 80);
      v26 = v8;
      v27 = *(a1 + 88);
      v30 = *(a1 + 120);
      v28 = *(a1 + 96);
      v13 = v8;
      v14 = v7;
      [v10 performAsCurrentWithPendingUnitCount:1 usingBlock:v18];
    }

    else
    {
      v17 = *(*(*(a1 + 120) + 8) + 40);
      (*(*(a1 + 112) + 16))();
    }
  }

  else
  {
    v15 = *(*(*(a1 + 128) + 8) + 40);
    v16 = *(*(a1 + 112) + 16);

    v16();
  }
}

void __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_60(uint64_t a1)
{
  v2 = [*(a1 + 32) derivativeGeneratorClass];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 144);
  v8 = *(a1 + 152);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_2_61;
  v15[3] = &unk_1E861CE98;
  v15[4] = *(a1 + 32);
  v9 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 40);
  v22 = *(a1 + 112);
  v18 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 128);
  v19 = v10;
  v24 = v11;
  v12 = *(a1 + 48);
  v26 = *(a1 + 152);
  v13 = *(a1 + 136);
  v20 = v12;
  v25 = v13;
  v21 = *(a1 + 104);
  v23 = *(a1 + 120);
  LOBYTE(v14) = v8;
  [v2 generateDerivativeResourcesFromInputResource:v3 withAdjustments:v4 destinationDirectory:v5 fingerprintScheme:v6 derivativesFilter:v9 recordChangeType:v7 includePosterFrameForVideo:v14 completionHandler:v15];
}

void __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_2_61(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_3_62;
  v26[3] = &unk_1E861CE70;
  v27 = *(a1 + 40);
  v28 = *(a1 + 48);
  v8 = *(a1 + 88);
  v9 = *(a1 + 32);
  v29 = v6;
  v30 = v9;
  v31 = v5;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v24 = *(a1 + 104);
  v12 = *(a1 + 72);
  v36 = *(a1 + 120);
  *&v13 = v24;
  *(&v13 + 1) = *(a1 + 112);
  v25 = v13;
  v14 = *(a1 + 80);
  *&v15 = v12;
  *(&v15 + 1) = v14;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v32 = v16;
  v33 = v15;
  v17 = *(a1 + 96);
  *&v18 = v8;
  *(&v18 + 1) = v17;
  v35 = v25;
  v34 = v18;
  v19 = v26;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_9785;
  block[3] = &unk_1E861B4E0;
  v38 = v19;
  v20 = v7;
  v21 = v5;
  v22 = v6;
  v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v20, v23);
}

void __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_3_62(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) isCancelled])
  {
    if (*(a1 + 48))
    {
      if ([*(a1 + 56) _isUnsupportedFormatError:?])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v6 = __CPLDerivativesOSLogDomain();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v7 = *(a1 + 40);
            v8 = *(a1 + 48);
            *buf = 138412546;
            v24 = v7;
            v25 = 2112;
            v26 = v8;
            _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Error trying to generate derivatives for unsupported input video from %@: %@", buf, 0x16u);
          }

          goto LABEL_15;
        }

LABEL_16:
        (*(*(a1 + 112) + 16))();
        goto LABEL_24;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = __CPLDerivativesOSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = *(a1 + 40);
          v17 = *(a1 + 48);
          *buf = 138412546;
          v24 = v16;
          v25 = 2112;
          v26 = v17;
          _os_log_impl(&dword_1DC05A000, v15, OS_LOG_TYPE_ERROR, "Error trying to generate derivatives from %@: %@", buf, 0x16u);
        }
      }

      v18 = *(a1 + 104);
      v19 = *(a1 + 48);
    }

    else
    {
      if (![*(a1 + 64) count])
      {
        goto LABEL_16;
      }

      [*(a1 + 72) didEndGeneratingDerivatives];
      [*(a1 + 80) addObject:*(a1 + 72)];
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(*(a1 + 120) + 8);
      obj = *(v11 + 40);
      v12 = [v9 _checkGeneratedResources:v10 error:&obj];
      objc_storeStrong((v11 + 40), obj);
      if (v12)
      {
        [*(a1 + 56) _noteGeneratedResources:*(a1 + 64) haveBeenGeneratedForReferenceResource:*(a1 + 40) adjustment:*(a1 + 88) includePosterFrame:*(a1 + 136)];
        v13 = *(*(a1 + 128) + 8);
        v21 = *(v13 + 40);
        [*(a1 + 56) _updateChange:&v21 fromOldChange:*(a1 + 96) withResources:*(a1 + 64) excludeImages:(*(a1 + 136) & 1) == 0];
        v14 = v21;
        v6 = *(v13 + 40);
        *(v13 + 40) = v14;
LABEL_15:

        goto LABEL_16;
      }

      v18 = *(a1 + 104);
      v19 = *(*(*(a1 + 120) + 8) + 40);
    }

    (*(v18 + 16))(v18, 0, v19);
    goto LABEL_24;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLDerivativesOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Derivatives generation from %@ has been cancelled", buf, 0xCu);
    }
  }

  v4 = *(a1 + 104);
  v5 = +[CPLErrors operationCancelledError];
  (*(v4 + 16))(v4, 0, v5);

LABEL_24:
  v20 = *MEMORY[0x1E69E9840];
}

void __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_2_54(uint64_t a1)
{
  v2 = [*(a1 + 32) derivativeGeneratorClass];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 144);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_3;
  v14[3] = &unk_1E861CDF8;
  v14[4] = *(a1 + 32);
  v8 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 40);
  v22 = *(a1 + 120);
  v17 = *(a1 + 88);
  v18 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 128);
  v19 = v9;
  v23 = v10;
  v11 = *(a1 + 48);
  v12 = *(a1 + 136);
  v20 = v11;
  v24 = v12;
  v21 = *(a1 + 112);
  LOBYTE(v13) = 0;
  [v2 generateDerivativeResourcesFromInputResource:v3 withAdjustments:v4 destinationDirectory:v5 fingerprintScheme:v6 derivativesFilter:v8 recordChangeType:v7 includePosterFrameForVideo:v13 completionHandler:v14];
}

void __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_4;
  v20[3] = &unk_1E861CDD0;
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v29 = *(a1 + 96);
  v8 = *(a1 + 32);
  v23 = v6;
  v24 = v8;
  v25 = *(a1 + 56);
  v26 = v5;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v30 = *(a1 + 104);
  v11 = *(a1 + 80);
  v31 = *(a1 + 112);
  v12 = *(a1 + 88);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v27 = v14;
  v28 = v13;
  v15 = v20;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_9785;
  block[3] = &unk_1E861B4E0;
  v33 = v15;
  v16 = v7;
  v17 = v5;
  v18 = v6;
  v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v16, v19);
}

void __113__CPLEngineDerivativesCache__generateDerivativesForChange_derivativesFilter_fingerprintScheme_completionHandler___block_invoke_4(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) isCancelled])
  {
    if (*(a1 + 48))
    {
      if ([*(a1 + 56) _isUnsupportedFormatError:?])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v6 = __CPLDerivativesOSLogDomain();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v7 = *(a1 + 64);
            v8 = *(a1 + 48);
            *buf = 138412546;
            v28 = v7;
            v29 = 2112;
            v30 = v8;
            _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Error trying to generate derivatives for unsupported input video from %@: %@", buf, 0x16u);
          }

          goto LABEL_15;
        }

LABEL_16:
        v16 = *(*(*(a1 + 128) + 8) + 40);
        v17 = *(*(a1 + 112) + 16);
LABEL_24:
        v17();
        goto LABEL_25;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = __CPLDerivativesOSLogDomain();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 64);
          v20 = *(a1 + 48);
          *buf = 138412546;
          v28 = v19;
          v29 = 2112;
          v30 = v20;
          _os_log_impl(&dword_1DC05A000, v18, OS_LOG_TYPE_ERROR, "Error trying to generate derivatives from %@: %@", buf, 0x16u);
        }
      }

      v21 = *(a1 + 112);
      v22 = *(a1 + 48);
    }

    else
    {
      if (![*(a1 + 72) count])
      {
        goto LABEL_16;
      }

      [*(a1 + 80) didEndGeneratingDerivatives];
      [*(a1 + 88) addObject:*(a1 + 80)];
      v9 = *(a1 + 56);
      v10 = *(a1 + 72);
      v11 = *(*(a1 + 120) + 8);
      obj = *(v11 + 40);
      v12 = [v9 _checkGeneratedResources:v10 error:&obj];
      objc_storeStrong((v11 + 40), obj);
      if (v12)
      {
        [*(a1 + 56) _noteGeneratedResources:*(a1 + 72) haveBeenGeneratedForReferenceResource:*(a1 + 40) adjustment:*(a1 + 96) includePosterFrame:1];
        v13 = *(a1 + 56);
        v14 = *(*(a1 + 128) + 8);
        v25 = *(v14 + 40);
        [v13 _updateChange:&v25 fromOldChange:*(a1 + 104) withResources:*(a1 + 72) excludeImages:0];
        v15 = v25;
        v6 = *(v14 + 40);
        *(v14 + 40) = v15;
LABEL_15:

        goto LABEL_16;
      }

      v21 = *(a1 + 112);
      v23 = *(*(*(a1 + 120) + 8) + 40);
    }

    v17 = *(v21 + 16);
    goto LABEL_24;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = __CPLDerivativesOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v28 = v3;
      _os_log_impl(&dword_1DC05A000, v2, OS_LOG_TYPE_DEFAULT, "Derivatives generation from %@ has been cancelled", buf, 0xCu);
    }
  }

  v4 = *(a1 + 112);
  v5 = +[CPLErrors operationCancelledError];
  (*(v4 + 16))(v4, 0, v5);

LABEL_25:
  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)_checkGeneratedResources:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = +[CPLResource shortDescriptionForResourceType:](CPLResource, "shortDescriptionForResourceType:", [v11 resourceType]);
        LODWORD(v11) = [(CPLEngineDerivativesCache *)self _checkResource:v11 name:v12 error:a4];

        if (!v11)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_checkResource:(id)a3 name:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 identity];
  v10 = [v9 fileURL];
  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [v10 path];
  v13 = [v11 fileExistsAtPath:v12];

  if ((v13 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLDerivativesOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v10 path];
        *buf = 138412802;
        v25 = v15;
        v26 = 2112;
        v27 = v8;
        v28 = 2112;
        v29 = v7;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Unable to find resoure at its expected place '%@' for %@ (%@)", buf, 0x20u);
      }
    }

    if (a5)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v17 = *MEMORY[0x1E696A250];
      v18 = [v10 path];
      v23 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *a5 = [v16 initWithDomain:v17 code:4 userInfo:v19];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_updateChange:(id *)a3 fromOldChange:(id)a4 withResources:(id)a5 excludeImages:(BOOL)a6
{
  v6 = a6;
  v26 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if (!*a3)
  {
    v11 = [_CPLResourcesMutableArray alloc];
    v12 = [v9 resources];
    *a3 = [(_CPLResourcesMutableArray *)v11 initWithResources:v12];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        if (!v6 || ([*(*(&v21 + 1) + 8 * v17) resourceType] - 6) <= 0xFFFFFFFFFFFFFFFCLL)
        {
          v19 = [v18 identity];
          [v19 setAvailable:1];

          [*a3 addResource:v18];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isUnsupportedFormatError:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(objc_class *)[(CPLEngineDerivativesCache *)self derivativeGeneratorClass] isUnsupportedOriginalFormatError:v4];

  return self;
}

- (void)_createCacheFolderIfNecessary
{
  if (self->_tryCreatingCacheFolder)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    [v3 createDirectoryAtURL:self->_cacheURL withIntermediateDirectories:0 attributes:0 error:0];

    self->_tryCreatingCacheFolder = 0;
  }
}

- (id)_cacheKeyForReferenceResource:(id)a3 adjustments:(id)a4 includePosterFrame:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [v8 itemScopedIdentifier];
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [v9 scopeIdentifier];
  v12 = [v9 identifier];
  v13 = [v8 identity];

  v14 = [v13 fingerPrint];
  v15 = v14;
  if (v7)
  {
    v16 = [v7 otherAdjustmentsFingerprint];
    v17 = v16;
    if (v16)
    {
      v18 = "no-poster";
      if (v5)
      {
        v18 = "";
      }

      v19 = [v10 initWithFormat:@"%@-%@-%@-%@%s", v11, v12, v15, v16, v18];
    }

    else
    {
      v21 = [v7 similarToOriginalAdjustmentsFingerprint];
      v22 = v21;
      v23 = "no-poster";
      if (v5)
      {
        v23 = "";
      }

      v19 = [v10 initWithFormat:@"%@-%@-%@-%@%s", v11, v12, v15, v21, v23];
    }
  }

  else
  {
    v20 = "no-poster";
    if (v5)
    {
      v20 = "";
    }

    v19 = [v10 initWithFormat:@"%@-%@-%@%s", v11, v12, v14, v20];
  }

  return v19;
}

- (void)discardCache
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CPLEngineDerivativesCache_discardCache__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_9785;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void __41__CPLEngineDerivativesCache_discardCache__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 removeItemAtURL:*(*(a1 + 32) + 48) error:0];

  *(*(a1 + 32) + 16) = 1;
}

- (CPLEngineDerivativesCache)initWithCacheURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPLEngineDerivativesCache;
  v5 = [(CPLEngineDerivativesCache *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    cacheURL = v5->_cacheURL;
    v5->_cacheURL = v6;

    v8 = [(NSURL *)v5->_cacheURL URLByAppendingPathComponent:@"entries.plist" isDirectory:0];
    cacheMappingURL = v5->_cacheMappingURL;
    v5->_cacheMappingURL = v8;

    v5->_tryCreatingCacheFolder = 1;
    v10 = dispatch_queue_create("com.apple.cpl.derivativescache", 0);
    queue = v5->_queue;
    v5->_queue = v10;
  }

  return v5;
}

@end