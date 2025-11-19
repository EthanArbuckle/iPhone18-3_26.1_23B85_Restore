@interface PHAsset(FullAnalysis)
+ (uint64_t)vcp_fullAnalysisGenerativeModelAdditionalTypes;
+ (uint64_t)vcp_fullAnalysisImageOnlyTypes;
+ (unint64_t)vcp_fullAnalysisTypesForAssetType:()FullAnalysis;
- (unint64_t)vcp_fullAnalysisTypes;
- (unint64_t)vcp_fullAnalysisTypesForResources:()FullAnalysis;
@end

@implementation PHAsset(FullAnalysis)

+ (unint64_t)vcp_fullAnalysisTypesForAssetType:()FullAnalysis
{
  v9 = *MEMORY[0x1E69E9840];
  if ((a3 & 3) != 0)
  {
    v4 = (a3 << 62 >> 63) & 0x32C04C1A41090 | *"\b\nH@";
    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      return v4;
    }

    else
    {
      return v4 & 0xFFFEF7FFFFFFFFFFLL;
    }
  }

  else if ((a3 & 4) != 0)
  {
    v6 = 0x32C0040E4D898;
    if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      v6 = 0x2240040E4D898;
    }

    if (+[VCPVideoThumbnailAnalyzer isContextualThumbnailEnabled])
    {
      return v6 | 0x8000000000000;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = a3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Unexpected media type (%lu)", &v7, 0xCu);
    }

    return 0;
  }
}

+ (uint64_t)vcp_fullAnalysisImageOnlyTypes
{
  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v0 = 0x1000000000000;
  }

  else
  {
    v0 = 0;
  }

  if (+[VCPVideoCaptionAnalyzer mode]== 1)
  {
    return v0 | 0x2000000000000;
  }

  else
  {
    return v0;
  }
}

+ (uint64_t)vcp_fullAnalysisGenerativeModelAdditionalTypes
{
  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v0 = 0x1080000000000;
  }

  else
  {
    v0 = 0;
  }

  if (+[VCPVideoCaptionAnalyzer mode]== 1)
  {
    return v0 | 0x2200000000000;
  }

  else
  {
    return v0;
  }
}

- (unint64_t)vcp_fullAnalysisTypes
{
  v11 = *MEMORY[0x1E69E9840];
  if ([a1 isPhoto])
  {
    v2 = *"\b\nH@";
    if ([a1 vcp_isLivePhoto])
    {
      v2 = *"\b\nH@" | 0x40032C04D5A41090;
    }

    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFEF7FFFFFFFFFFLL;
    }

    if (+[VCPVideoCaptionAnalyzer mode]== 1)
    {
      return v3;
    }

    else
    {
      return v3 & 0xFFFDDFFFFFFFFFFFLL;
    }
  }

  else if ([a1 isVideo])
  {
    v5 = 0x40032C0040E4D898;
    if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      v5 = 0x4002240040E4D898;
    }

    if (+[VCPVideoCaptionAnalyzer mode]!= 1)
    {
      v5 &= 0x7FFDDFFFFFFFFFFFuLL;
    }

    if (+[VCPVideoThumbnailAnalyzer isContextualThumbnailEnabled])
    {
      return v5 | 0x8000000000000;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a1 localIdentifier];
      v7 = 138412546;
      v8 = v6;
      v9 = 1024;
      v10 = [a1 mediaType];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Unexpected media type (%d)", &v7, 0x12u);
    }

    return 0;
  }
}

- (unint64_t)vcp_fullAnalysisTypesForResources:()FullAnalysis
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 isPhoto])
  {
    if ([v4 vcp_hasLocalPhoto:{objc_msgSend(a1, "hasAdjustments")}])
    {
      v5 = *"\b\nH@";
      if ([a1 vcp_isLivePhoto] && objc_msgSend(v4, "vcp_hasLocalMovie:", objc_msgSend(a1, "hasAdjustments")))
      {
        v5 = *"\b\nH@" | 0x40032C04D5A41090;
      }
    }

    else
    {
      v5 = 0;
    }

    v12 = +[VCPVideoCNNAnalyzer isMUBackboneEnabled];
    v13 = +[VCPVideoCaptionAnalyzer mode];
    v14 = v5 & 0xFFFEF7FFFFFFFFFFLL;
    if (v12)
    {
      v14 = v5;
    }

LABEL_24:
    if (v13 == 1)
    {
      v10 = v14;
    }

    else
    {
      v10 = v14 & 0xFFFDDFFFFFFFFFFFLL;
    }

    goto LABEL_32;
  }

  if (![a1 isVideo])
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [a1 localIdentifier];
      v17 = 138412546;
      v18 = v11;
      v19 = 1024;
      v20 = [a1 mediaType];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Unexpected media type (%d)", &v17, 0x12u);
    }

    goto LABEL_31;
  }

  if ((![a1 vcp_isVideoSlowmo] || (objc_msgSend(v4, "vcp_hasLocalSlowmo:", objc_msgSend(a1, "vcp_hasAdjustments")) & 1) == 0) && ((objc_msgSend(a1, "vcp_isVideoSlowmo") & 1) != 0 || !objc_msgSend(v4, "vcp_hasLocalMovie:", objc_msgSend(a1, "hasAdjustments"))))
  {
    if ([v4 vcp_hasLocalPhoto:{objc_msgSend(a1, "hasAdjustments")}])
    {
      v15 = +[VCPVideoCNNAnalyzer isMUBackboneEnabled];
      v13 = +[VCPVideoCaptionAnalyzer mode];
      v14 = 0x3000000000800;
      if (!v15)
      {
        v14 = 0x2000000000800;
      }

      goto LABEL_24;
    }

LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  v6 = +[VCPVideoCNNAnalyzer isMUBackboneEnabled];
  v7 = +[VCPVideoCaptionAnalyzer mode];
  v8 = +[VCPVideoThumbnailAnalyzer isContextualThumbnailEnabled];
  v9 = 0x40032C0040E4D898;
  if (!v6)
  {
    v9 = 0x4002240040E4D898;
  }

  if (v7 != 1)
  {
    v9 &= 0x7FFDDFFFFFFFFFFFuLL;
  }

  if (v8)
  {
    v10 = v9 | 0x8000000000000;
  }

  else
  {
    v10 = v9;
  }

LABEL_32:

  return v10;
}

@end