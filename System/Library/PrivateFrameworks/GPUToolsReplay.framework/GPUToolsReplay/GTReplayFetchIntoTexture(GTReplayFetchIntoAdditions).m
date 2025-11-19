@interface GTReplayFetchIntoTexture(GTReplayFetchIntoAdditions)
- (uint64_t)encodeFetchIntoOperation:()GTReplayFetchIntoAdditions error:;
@end

@implementation GTReplayFetchIntoTexture(GTReplayFetchIntoAdditions)

- (uint64_t)encodeFetchIntoOperation:()GTReplayFetchIntoAdditions error:
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 8);
  v7 = *(v6 + 56);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "streamRef")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = [*(v6 + 8) textureForKey:{objc_msgSend(a1, "streamRef")}];
    if (!v10)
    {
      v40 = *MEMORY[0x277CCA450];
      v65[0] = @"Failed to find texture";
      v64[0] = v40;
      v64[1] = @"GTErrorKeyTraceStreamID";
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "streamRef")}];
      v65[1] = v13;
      v64[2] = @"GTErrorKeyFunctionIndex";
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "dispatchUID")}];
      v65[2] = v29;
      v41 = MEMORY[0x277CBEAC0];
      v42 = v65;
      v43 = v64;
      v44 = 3;
LABEL_41:
      v30 = [v41 dictionaryWithObjects:v42 forKeys:v43 count:v44];
      GTMTLReplay_fillError(a4, 102, v30);
      v27 = 0;
      goto LABEL_42;
    }

    v9 = v10;
  }

  v63 = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
  GTMTLReplayClient_waitForUntrackedWritesToComplete(v6, v11);

  v12 = [a1 dest];
  v13 = v9;
  v14 = v12;
  v15 = [v13 pixelFormat];
  if (v15 != [v14 pixelFormat])
  {
    if (s_logUsingOsLog != 1)
    {
      v35 = *MEMORY[0x277D85E08];
      [MEMORY[0x277CCACA8] stringWithFormat:@"FetchInto failed, source.pixelFormat (%lu) != dest.pixelFormat (%lu)", objc_msgSend(v13, "pixelFormat"), objc_msgSend(v14, "pixelFormat"), v55, v56];
      goto LABEL_38;
    }

    v31 = gt_tagged_log(0xCu);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = [v13 pixelFormat];
      v33 = [v14 pixelFormat];
      *buf = 134218240;
      *&buf[4] = v32;
      *&buf[12] = 2048;
      *&buf[14] = v33;
      v34 = "FetchInto failed, source.pixelFormat (%lu) != dest.pixelFormat (%lu)";
LABEL_25:
      v38 = v31;
      v39 = 22;
LABEL_26:
      _os_log_debug_impl(&dword_24D764000, v38, OS_LOG_TYPE_DEBUG, v34, buf, v39);
    }

LABEL_39:

    v61 = @"GTErrorKeyTraceStreamID";
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "streamRef")}];
    v62 = v29;
    v41 = MEMORY[0x277CBEAC0];
    v42 = &v62;
    v43 = &v61;
LABEL_40:
    v44 = 1;
    goto LABEL_41;
  }

  if (GetPlanePixelFormat([v13 pixelFormat], 0) && objc_msgSend(v13, "pixelFormat") != 260)
  {
    if (s_logUsingOsLog == 1)
    {
      v31 = gt_tagged_log(0xCu);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_39;
      }

      v45 = [v13 pixelFormat];
      *buf = 134217984;
      *&buf[4] = v45;
      v34 = "FetchInto failed, unsupported 2P pixel format (%lu)";
      v38 = v31;
      v39 = 12;
      goto LABEL_26;
    }

    v35 = *MEMORY[0x277D85E08];
    [MEMORY[0x277CCACA8] stringWithFormat:@"FetchInto failed, unsupported 2P pixel format (%lu)", objc_msgSend(v13, "pixelFormat"), v54, v55, v56];
    goto LABEL_38;
  }

  v16 = [v13 sampleCount];
  if (v16 != [v14 sampleCount])
  {
    if (s_logUsingOsLog != 1)
    {
      v35 = *MEMORY[0x277D85E08];
      [MEMORY[0x277CCACA8] stringWithFormat:@"FetchInto failed, source.sampleCount (%lu) != dest.sampleCount (%lu)", objc_msgSend(v13, "sampleCount"), objc_msgSend(v14, "sampleCount"), v55, v56];
      goto LABEL_38;
    }

    v31 = gt_tagged_log(0xCu);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v36 = [v13 sampleCount];
      v37 = [v14 sampleCount];
      *buf = 134218240;
      *&buf[4] = v36;
      *&buf[12] = 2048;
      *&buf[14] = v37;
      v34 = "FetchInto failed, source.sampleCount (%lu) != dest.sampleCount (%lu)";
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  v17 = [v13 width];
  if (v17 != [v14 width] || (v18 = objc_msgSend(v13, "height"), v18 != objc_msgSend(v14, "height")))
  {
    if (s_logUsingOsLog != 1)
    {
      v35 = *MEMORY[0x277D85E08];
      [MEMORY[0x277CCACA8] stringWithFormat:@"FetchInto failed, source size (%lu, %lu) != dest size (%lu, %lu)", objc_msgSend(v13, "width"), objc_msgSend(v13, "height"), objc_msgSend(v14, "width"), objc_msgSend(v14, "height")];
      goto LABEL_38;
    }

    v31 = gt_tagged_log(0xCu);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_39;
    }

    v46 = [v13 width];
    v47 = [v13 height];
    v48 = [v14 width];
    v49 = [v14 height];
    *buf = 134218752;
    *&buf[4] = v46;
    *&buf[12] = 2048;
    *&buf[14] = v47;
    *&buf[22] = 2048;
    v67 = v48;
    v68 = 2048;
    v69 = v49;
    v34 = "FetchInto failed, source size (%lu, %lu) != dest size (%lu, %lu)";
LABEL_34:
    v38 = v31;
    v39 = 42;
    goto LABEL_26;
  }

  if ([v13 textureType] != 2 && objc_msgSend(v13, "textureType") != 3 && objc_msgSend(v13, "textureType") != 7)
  {
    if (s_logUsingOsLog != 1)
    {
      v35 = *MEMORY[0x277D85E08];
      [MEMORY[0x277CCACA8] stringWithFormat:@"FetchInto failed, source.textureType (%lu) must be one of [MTLTextureType2D (%lu), MTLTextureType2DArray (%lu), MTLTextureType3D (%lu)]", objc_msgSend(v13, "textureType"), 2, 3, 7];
      goto LABEL_38;
    }

    v31 = gt_tagged_log(0xCu);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_39;
    }

    v53 = [v13 textureType];
    *buf = 134218752;
    *&buf[4] = v53;
    *&buf[12] = 2048;
    *&buf[14] = 2;
    *&buf[22] = 2048;
    v67 = 3;
    v68 = 2048;
    v69 = 7;
    v34 = "FetchInto failed, source.textureType (%lu) must be one of [MTLTextureType2D (%lu), MTLTextureType2DArray (%lu), MTLTextureType3D (%lu)]";
    goto LABEL_34;
  }

  if ([v14 textureType] != 2)
  {
    if (s_logUsingOsLog == 1)
    {
      v31 = gt_tagged_log(0xCu);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_39;
      }

      v52 = [v14 textureType];
      *buf = 134218240;
      *&buf[4] = v52;
      *&buf[12] = 2048;
      *&buf[14] = 2;
      v34 = "FetchInto failed, dest.textureType (%lu) != MTLTextureType2D (%lu)";
      goto LABEL_25;
    }

    v35 = *MEMORY[0x277D85E08];
    [MEMORY[0x277CCACA8] stringWithFormat:@"FetchInto failed, dest.textureType (%lu) != MTLTextureType2D (%lu)", objc_msgSend(v14, "textureType"), 2, v55, v56];
    v31 = LABEL_38:;
    fprintf(v35, "%s\n", [v31 UTF8String]);
    goto LABEL_39;
  }

  v19 = [a1 slice];
  if ([v13 arrayLength] <= v19 || (v20 = objc_msgSend(a1, "level"), objc_msgSend(v13, "mipmapLevelCount") <= v20) || (v21 = objc_msgSend(a1, "depth"), objc_msgSend(v13, "depth") <= v21))
  {
    v59 = @"GTErrorKeyTraceStreamID";
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "streamRef")}];
    v60 = v29;
    v41 = MEMORY[0x277CBEAC0];
    v42 = &v60;
    v43 = &v59;
    goto LABEL_40;
  }

  v22 = *(v6 + 24);
  v23 = [v22 blitCommandEncoder];
  v24 = [a1 slice];
  v25 = [a1 level];
  v26 = [a1 depth];
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = v26;
  v58[0] = [v13 width];
  v58[1] = [v13 height];
  v27 = 1;
  v58[2] = 1;
  v28 = [a1 dest];
  memset(v57, 0, sizeof(v57));
  [v23 copyFromTexture:v13 sourceSlice:v24 sourceLevel:v25 sourceOrigin:buf sourceSize:v58 toTexture:v28 destinationSlice:0 destinationLevel:0 destinationOrigin:v57];

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"SharedTextureBlit"];
  v30 = [v22 commandBuffer];

  [v30 setLabel:v29];
LABEL_42:

  v50 = *MEMORY[0x277D85DE8];
  return v27;
}

@end