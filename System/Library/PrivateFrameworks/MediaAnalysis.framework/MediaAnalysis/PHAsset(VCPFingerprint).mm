@interface PHAsset(VCPFingerprint)
- (id)vcp_fingerprint:()VCPFingerprint;
@end

@implementation PHAsset(VCPFingerprint)

- (id)vcp_fingerprint:()VCPFingerprint
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objectID = [self objectID];

  if (objectID)
  {
    if (!v4)
    {
      v4 = dispatch_semaphore_create(0);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__56;
    v16 = __Block_byref_object_dispose__56;
    v17 = 0;
    v6 = MEMORY[0x1E6978628];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__PHAsset_VCPFingerprint__vcp_fingerprint___block_invoke;
    v10[3] = &unk_1E8350F78;
    p_buf = &buf;
    v10[4] = self;
    v4 = v4;
    v11 = v4;
    [v6 _computeFingerPrintsOfAsset:self completionHandler:v10];
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v7 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier = [self localIdentifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] Fingerprint requested for asset with no objectID", &buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

@end