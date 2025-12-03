@interface GTReplayFetchIntoTexture(GTReplayFetchIntoAdditions)
- (uint64_t)encodeFetchIntoOperation:()GTReplayFetchIntoAdditions error:;
@end

@implementation GTReplayFetchIntoTexture(GTReplayFetchIntoAdditions)

- (uint64_t)encodeFetchIntoOperation:()GTReplayFetchIntoAdditions error:
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 8);
  v7 = *(v6 + 56);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(self, "streamRef")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = [*(v6 + 8) textureForKey:{objc_msgSend(self, "streamRef")}];
    if (!v10)
    {
      v40 = *MEMORY[0x277CCA450];
      v65[0] = @"Failed to find texture";
      v64[0] = v40;
      v64[1] = @"GTErrorKeyTraceStreamID";
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(self, "streamRef")}];
      v65[1] = v13;
      v64[2] = @"GTErrorKeyFunctionIndex";
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(self, "dispatchUID")}];
      v65[2] = v29;
      v41 = MEMORY[0x277CBEAC0];
      v42 = v65;
      v43 = v64;
      v44 = 3;
LABEL_41:
      commandBuffer = [v41 dictionaryWithObjects:v42 forKeys:v43 count:v44];
      GTMTLReplay_fillError(a4, 102, commandBuffer);
      v27 = 0;
      goto LABEL_42;
    }

    v9 = v10;
  }

  v63 = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
  GTMTLReplayClient_waitForUntrackedWritesToComplete(v6, v11);

  dest = [self dest];
  v13 = v9;
  v14 = dest;
  pixelFormat = [v13 pixelFormat];
  if (pixelFormat != [v14 pixelFormat])
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
      pixelFormat2 = [v13 pixelFormat];
      pixelFormat3 = [v14 pixelFormat];
      *buf = 134218240;
      *&buf[4] = pixelFormat2;
      *&buf[12] = 2048;
      *&buf[14] = pixelFormat3;
      v34 = "FetchInto failed, source.pixelFormat (%lu) != dest.pixelFormat (%lu)";
LABEL_25:
      v38 = v31;
      v39 = 22;
LABEL_26:
      _os_log_debug_impl(&dword_24D764000, v38, OS_LOG_TYPE_DEBUG, v34, buf, v39);
    }

LABEL_39:

    v61 = @"GTErrorKeyTraceStreamID";
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(self, "streamRef")}];
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

      pixelFormat4 = [v13 pixelFormat];
      *buf = 134217984;
      *&buf[4] = pixelFormat4;
      v34 = "FetchInto failed, unsupported 2P pixel format (%lu)";
      v38 = v31;
      v39 = 12;
      goto LABEL_26;
    }

    v35 = *MEMORY[0x277D85E08];
    [MEMORY[0x277CCACA8] stringWithFormat:@"FetchInto failed, unsupported 2P pixel format (%lu)", objc_msgSend(v13, "pixelFormat"), v54, v55, v56];
    goto LABEL_38;
  }

  sampleCount = [v13 sampleCount];
  if (sampleCount != [v14 sampleCount])
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
      sampleCount2 = [v13 sampleCount];
      sampleCount3 = [v14 sampleCount];
      *buf = 134218240;
      *&buf[4] = sampleCount2;
      *&buf[12] = 2048;
      *&buf[14] = sampleCount3;
      v34 = "FetchInto failed, source.sampleCount (%lu) != dest.sampleCount (%lu)";
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  width = [v13 width];
  if (width != [v14 width] || (v18 = objc_msgSend(v13, "height"), v18 != objc_msgSend(v14, "height")))
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

    width2 = [v13 width];
    height = [v13 height];
    width3 = [v14 width];
    height2 = [v14 height];
    *buf = 134218752;
    *&buf[4] = width2;
    *&buf[12] = 2048;
    *&buf[14] = height;
    *&buf[22] = 2048;
    v67 = width3;
    v68 = 2048;
    v69 = height2;
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

    textureType = [v13 textureType];
    *buf = 134218752;
    *&buf[4] = textureType;
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

      textureType2 = [v14 textureType];
      *buf = 134218240;
      *&buf[4] = textureType2;
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

  slice = [self slice];
  if ([v13 arrayLength] <= slice || (v20 = objc_msgSend(self, "level"), objc_msgSend(v13, "mipmapLevelCount") <= v20) || (v21 = objc_msgSend(self, "depth"), objc_msgSend(v13, "depth") <= v21))
  {
    v59 = @"GTErrorKeyTraceStreamID";
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(self, "streamRef")}];
    v60 = v29;
    v41 = MEMORY[0x277CBEAC0];
    v42 = &v60;
    v43 = &v59;
    goto LABEL_40;
  }

  v22 = *(v6 + 24);
  blitCommandEncoder = [v22 blitCommandEncoder];
  slice2 = [self slice];
  level = [self level];
  depth = [self depth];
  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = depth;
  v58[0] = [v13 width];
  v58[1] = [v13 height];
  v27 = 1;
  v58[2] = 1;
  dest2 = [self dest];
  memset(v57, 0, sizeof(v57));
  [blitCommandEncoder copyFromTexture:v13 sourceSlice:slice2 sourceLevel:level sourceOrigin:buf sourceSize:v58 toTexture:dest2 destinationSlice:0 destinationLevel:0 destinationOrigin:v57];

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"SharedTextureBlit"];
  commandBuffer = [v22 commandBuffer];

  [commandBuffer setLabel:v29];
LABEL_42:

  v50 = *MEMORY[0x277D85DE8];
  return v27;
}

@end