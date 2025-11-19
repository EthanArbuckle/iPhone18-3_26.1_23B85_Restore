@interface MIOWriterStereoPixelBufferStreamInput
- (BOOL)appendLeftPixelBuffer:(__CVBuffer *)a3 rightPixelBuffer:(__CVBuffer *)a4 pts:(id *)a5 error:(id *)a6;
- (BOOL)leftBufferUsesPrimaryLayer;
- (MIOWriterStereoPixelBufferStreamInput)init;
- (MIOWriterStereoPixelBufferStreamInput)initWithStreamId:(id)a3 format:(opaqueCMFormatDescription *)a4 recordingConfig:(id)a5;
- (id)taggedPixelBufferAttributes;
- (void)dealloc;
@end

@implementation MIOWriterStereoPixelBufferStreamInput

- (MIOWriterStereoPixelBufferStreamInput)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_ErrorDoNotCall_0.isa, v4);

  return 0;
}

- (MIOWriterStereoPixelBufferStreamInput)initWithStreamId:(id)a3 format:(opaqueCMFormatDescription *)a4 recordingConfig:(id)a5
{
  v8 = a3;
  v9 = a5;
  v33.receiver = self;
  v33.super_class = MIOWriterStereoPixelBufferStreamInput;
  v10 = [(MIOWriterPixelBufferStreamInput *)&v33 initWithStreamId:v8 format:a4 recordingConfig:v9];
  v11 = v10;
  if (v10)
  {
    videoLayerIDs = v10->_videoLayerIDs;
    v10->_videoLayerIDs = &unk_2868E3BE8;

    v13 = [(NSArray *)v11->_videoLayerIDs copy];
    viewIDs = v11->_viewIDs;
    v11->_viewIDs = v13;

    v15 = [(NSArray *)v11->_videoLayerIDs copy];
    leftAndRightViewIDs = v11->_leftAndRightViewIDs;
    v11->_leftAndRightViewIDs = v15;

    [v9 objectForKey:@"CustomOutputSettings"];
    v17 = [objc_claimAutoreleasedReturnValue() objectForKey:*MEMORY[0x277CE6330]];
    v18 = [v17 objectForKey:*MEMORY[0x277CE2580]];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 copy];
      v21 = v11->_videoLayerIDs;
      v11->_videoLayerIDs = v20;
    }

    v22 = [v17 objectForKey:*MEMORY[0x277CE2588]];

    if (v22)
    {
      v23 = [v22 copy];
      v24 = v11->_viewIDs;
      v11->_viewIDs = v23;
    }

    v25 = [v17 objectForKey:*MEMORY[0x277CE2578]];

    if (v25)
    {
      v26 = [v25 copy];
      v27 = v11->_leftAndRightViewIDs;
      v11->_leftAndRightViewIDs = v26;
    }

    v28 = [(NSArray *)v11->_videoLayerIDs objectAtIndex:0];
    [v28 unsignedIntegerValue];

    v29 = [(NSArray *)v11->_videoLayerIDs objectAtIndex:1];
    [v29 unsignedIntegerValue];

    [(MIOWriterStereoPixelBufferStreamInput *)v11 setLeftBufferPrimary:[(MIOWriterStereoPixelBufferStreamInput *)v11 leftBufferUsesPrimaryLayer]];
    v11->_tagCollectionArray = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF128]);
    FigTagMakeWithSInt64Value();
    FigTagCollectionCreate();
    tagCollectionArray = v11->_tagCollectionArray;
    if (tagCollectionArray)
    {
      CFRelease(tagCollectionArray);
    }

    v32 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"FigTagCollectionCreate left failed." userInfo:0];
    objc_exception_throw(v32);
  }

  return v11;
}

- (void)dealloc
{
  tagCollectionArray = self->_tagCollectionArray;
  if (tagCollectionArray)
  {
    CFRelease(tagCollectionArray);
  }

  v4.receiver = self;
  v4.super_class = MIOWriterStereoPixelBufferStreamInput;
  [(MIOWriterPixelBufferStreamInput *)&v4 dealloc];
}

- (id)taggedPixelBufferAttributes
{
  v2 = [(MIOWriterPixelBufferStreamInput *)self config];
  v3 = [v2 objectForKey:@"TaggedPixelBufferGroupAdaptorPixelBufferAttributes"];

  return v3;
}

- (BOOL)leftBufferUsesPrimaryLayer
{
  v3 = [(NSArray *)self->_leftAndRightViewIDs objectAtIndex:0];
  v4 = [v3 unsignedIntegerValue];

  v5 = [(NSArray *)self->_viewIDs objectAtIndex:v4];
  v6 = [v5 unsignedIntegerValue];

  v7 = [(NSArray *)self->_videoLayerIDs objectAtIndex:v6];
  v8 = [v7 unsignedIntegerValue];

  return v8 == 0;
}

- (BOOL)appendLeftPixelBuffer:(__CVBuffer *)a3 rightPixelBuffer:(__CVBuffer *)a4 pts:(id *)a5 error:(id *)a6
{
  v9 = self;
  location = *a5;
  if ([(MIOWriterStreamInput *)self prepareForAppendWithTimeStamp:&location error:a6])
  {
    CVPixelBufferRetain(a3);
    CVPixelBufferRetain(a4);
    objc_initWeak(&location, v9);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__MIOWriterStereoPixelBufferStreamInput_appendLeftPixelBuffer_rightPixelBuffer_pts_error___block_invoke;
    v15[3] = &unk_279848438;
    objc_copyWeak(v16, &location);
    v16[1] = a3;
    v16[2] = a4;
    v17 = *&a5->var0;
    var3 = a5->var3;
    v10 = MEMORY[0x259C68980](v15);
    v11 = [v9 threadingOption];
    if (v11)
    {
      if (v11 == 1)
      {
        LOBYTE(v9) = v10[2](v10);
      }
    }

    else
    {
      v9 = [v9 processingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __90__MIOWriterStereoPixelBufferStreamInput_appendLeftPixelBuffer_rightPixelBuffer_pts_error___block_invoke_223;
      block[3] = &unk_279847DC8;
      v14 = v10;
      dispatch_async(v9, block);

      LOBYTE(v9) = 1;
    }

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t __90__MIOWriterStereoPixelBufferStreamInput_appendLeftPixelBuffer_rightPixelBuffer_pts_error___block_invoke(uint64_t a1)
{
  v78[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained perfLogHandle];
    v5 = [v3 processingSignPostID];
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      LOWORD(buf.start.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "mio.processing", "", &buf, 2u);
    }

    v6 = *(a1 + 40);
    *&buf.start.value = *(a1 + 56);
    buf.start.epoch = *(a1 + 72);
    v77 = 0;
    v7 = [MEMORY[0x277CE6520] attachmentsMIOMetadataItemForPixelBuffer:v6 pts:&buf error:&v77];
    v8 = v77;
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0x277CCACA8];
      v11 = [v3 streamId];
      v12 = [v10 stringWithFormat:@"Cannot append frame, invalid pixel buffer attachments %@ for stream %@.", v9, v11];

      v13 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v12 code:21];
      v14 = [v3 writer];
      [v14 reportError:v13];

      CVPixelBufferRelease(*(a1 + 40));
      CVPixelBufferRelease(*(a1 + 48));
      v15 = [v3 perfLogHandle];
      v16 = [v3 processingSignPostID];
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v15, OS_SIGNPOST_INTERVAL_END, v16, "mio.processing", "", &buf, 2u);
      }

LABEL_16:
      v17 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v18 = *(a1 + 48);
    *&buf.start.value = *(a1 + 56);
    buf.start.epoch = *(a1 + 72);
    v76 = 0;
    v12 = [MEMORY[0x277CE6520] attachmentsMIOMetadataItemForPixelBuffer:v18 pts:&buf error:&v76];
    v19 = v76;
    if (v19)
    {
      v9 = v19;
      v20 = MEMORY[0x277CCACA8];
      v21 = [v3 streamId];
      v13 = [v20 stringWithFormat:@"Cannot append frame, invalid pixel buffer attachments %@ for stream %@.", v9, v21];

      v22 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v13 code:21];
      v23 = [v3 writer];
      [v23 reportError:v22];

      CVPixelBufferRelease(*(a1 + 40));
      CVPixelBufferRelease(*(a1 + 48));
      v24 = [v3 perfLogHandle];
      v25 = [v3 processingSignPostID];
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v24, OS_SIGNPOST_INTERVAL_END, v25, "mio.processing", "", &buf, 2u);
      }

      goto LABEL_16;
    }

    v27 = objc_alloc(MEMORY[0x277CE6648]);
    v78[0] = v7;
    v78[1] = v12;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
    start = *(a1 + 56);
    duration = **&MEMORY[0x277CC0890];
    CMTimeRangeMake(&buf, &start, &duration);
    v13 = [v27 initWithItems:v28 timeRange:&buf];

    v29 = [v3 processor];
    v30 = *(a1 + 40);
    v31 = [v3 attachmentsToEncode];
    v72 = 0;
    v32 = [v29 processPixelBuffer:v30 preserveAttachments:v31 error:&v72];
    v9 = v72;

    CVPixelBufferRelease(*(a1 + 40));
    if (!v32)
    {
      v40 = MEMORY[0x277CCACA8];
      v41 = [v3 streamId];
      v42 = [v40 stringWithFormat:@"Process pixel buffer failed %@ for stream %@.", v9, v41];

      v43 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v42 code:21];
      v44 = [v3 writer];
      [v44 reportError:v43];

      CVPixelBufferRelease(*(a1 + 48));
      v45 = [v3 perfLogHandle];
      v46 = [v3 processingSignPostID];
      if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v45, OS_SIGNPOST_INTERVAL_END, v46, "mio.processing", "", &buf, 2u);
      }

      goto LABEL_16;
    }

    v33 = [v3 processor];
    v34 = *(a1 + 48);
    v35 = [v3 attachmentsToEncode];
    v71 = v9;
    v36 = [v33 processPixelBuffer:v34 preserveAttachments:v35 error:&v71];
    v70 = v71;

    CVPixelBufferRelease(*(a1 + 48));
    if (!v36)
    {
      v47 = MEMORY[0x277CCACA8];
      v48 = [v3 streamId];
      v49 = [v47 stringWithFormat:@"Process pixel buffer failed %@ for stream %@.", v70, v48];

      v50 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v49 code:21];
      v51 = [v3 writer];
      [v51 reportError:v50];

      CVPixelBufferRelease(v32);
      v52 = [v3 perfLogHandle];
      v53 = [v3 processingSignPostID];
      if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v52, OS_SIGNPOST_INTERVAL_END, v53, "mio.processing", "", &buf, 2u);
      }

      v17 = 0;
      goto LABEL_44;
    }

    v37 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF128]);
    if ([v3 leftBufferPrimary])
    {
      CFArrayAppendValue(Mutable, v32);
      v39 = v36;
    }

    else
    {
      CFArrayAppendValue(Mutable, v36);
      v39 = v32;
    }

    CFArrayAppendValue(Mutable, v39);
    CVPixelBufferRelease(v32);
    CVPixelBufferRelease(v36);
    start.value = 0;
    v54 = MEMORY[0x259C68030](v37, v3[52], Mutable, &start);
    CFRelease(Mutable);
    if (v54)
    {
      v55 = MEMORY[0x277CCACA8];
      v56 = [v3 streamId];
      v57 = [v55 stringWithFormat:@"FigTaggedBufferGroupCreate failed for stream %@.", v56];

      v58 = [MEMORY[0x277CCA9B8] writerErrorWithMessage:v57 code:21];

      v59 = [v3 writer];
      [v59 reportError:v58];

      v60 = [v3 perfLogHandle];
      v61 = [v3 processingSignPostID];
      if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_257883000, v60, OS_SIGNPOST_INTERVAL_END, v61, "mio.processing", "", &buf, 2u);
      }
    }

    else
    {
      v57 = objc_opt_new();
      [v57 setTaggedBufferGroup:start.value];
      *&buf.start.value = *(a1 + 56);
      buf.start.epoch = *(a1 + 72);
      [v57 setTaggedBufferPts:&buf];
      [v57 setMetadata:v13];
      v62 = [v3 fifoBuffer];
      v63 = [v62 enqueue:v57];

      if (v63)
      {
        v64 = [v3 perfLogHandle];
        v65 = [v3 processingSignPostID];
        if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
        {
          LOWORD(buf.start.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_257883000, v64, OS_SIGNPOST_INTERVAL_END, v65, "mio.processing", "", &buf, 2u);
        }

        v17 = [v3 finalizeProcessing];
        goto LABEL_43;
      }

      v66 = MEMORY[0x277CCACA8];
      v67 = [v3 streamId];
      v60 = [v66 stringWithFormat:@"Attempted to enqueue sample in full Fifo for stream %@.  Indicates leak in overall pending sample tracking.", v67];

      v68 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v60 code:21];
      v69 = [v3 writer];
      [v69 reportError:v68];

      v58 = v70;
    }

    v17 = 0;
    v70 = v58;
LABEL_43:

LABEL_44:
    v9 = v70;
    goto LABEL_17;
  }

  CVPixelBufferRelease(*(a1 + 40));
  CVPixelBufferRelease(*(a1 + 48));
  v17 = 0;
LABEL_18:

  return v17;
}

@end