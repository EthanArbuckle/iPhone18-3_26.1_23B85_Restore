@interface RecordingManager
+ (id)movSummaryItem:(float)a3 appName:(id)a4;
+ (void)copyBuffer:(__CVBuffer *)a3 dst:(__CVBuffer *)a4;
- (RecordingManager)initWithFileURL:(id)a3 expectedFrameRate:(double)a4 colorStreamId:(id)a5 depthStreamId:(id)a6 appName:(id)a7;
- (RecordingManagerDelegate)delegate;
- (uint64_t)process:(__n128)a3 depthFrame:(__n128)a4 faceObject:(__n128)a5 timestamp:(double)a6 intrinsics:(uint64_t)a7 calibration:(uint64_t)a8 exposureTime:(__CVBuffer *)a9;
- (void)didFinishRecording;
- (void)isReadyToRecord;
- (void)stopRecording;
@end

@implementation RecordingManager

+ (id)movSummaryItem:(float)a3 appName:(id)a4
{
  v18[5] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v17[0] = @"frameRate";
  *&v6 = a3;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v18[0] = v7;
  v17[1] = @"depthFrameRate";
  *&v8 = a3;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v18[1] = v9;
  v17[2] = @"machTimeSince1970";
  v10 = MEMORY[0x277CCABB0];
  v11 = [MEMORY[0x277CBEAA8] date];
  [v11 timeIntervalSince1970];
  v13 = [v10 numberWithDouble:v12 - CACurrentMediaTime()];
  v18[2] = v13;
  v18[3] = MEMORY[0x277CBEC38];
  v17[3] = @"hasVisageMetadataFaceObject";
  v17[4] = @"RecorderApp";
  v18[4] = v5;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (RecordingManager)initWithFileURL:(id)a3 expectedFrameRate:(double)a4 colorStreamId:(id)a5 depthStreamId:(id)a6 appName:(id)a7
{
  v54[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v50.receiver = self;
  v50.super_class = RecordingManager;
  v16 = [(RecordingManager *)&v50 init];
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = [v13 copy];
  colorStreamID = v16->_colorStreamID;
  v16->_colorStreamID = v17;

  v19 = [v14 copy];
  depthStreamID = v16->_depthStreamID;
  v16->_depthStreamID = v19;

  v21 = objc_alloc(MEMORY[0x277CECD80]);
  v22 = a4;
  *&v23 = v22;
  v24 = [RecordingManager movSummaryItem:v15 appName:v23];
  v25 = MEMORY[0x277D85CD0];
  v26 = MEMORY[0x277D85CD0];
  v27 = [v21 initWithFileURL:v12 expectedFrameRate:v24 fileSummary:v25 callbackQueue:a4];
  writerInterface = v16->_writerInterface;
  v16->_writerInterface = v27;

  v29 = v16->_writerInterface;
  if (v29)
  {
    [(MOVWriterInterface *)v29 setInterface_delegate:v16];
    [(MOVWriterInterface *)v16->_writerInterface registerCVACameraCalibrationData];
    v53 = *MEMORY[0x277D256F8];
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*MEMORY[0x277D256A0]];
    v54[0] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];

    v32 = objc_alloc(MEMORY[0x277CECD88]);
    LODWORD(v33) = 1273291200;
    *&v34 = a4;
    v35 = [v32 initWithLossless:0 bitrate:0 forceH264:v31 expectedFPS:v33 extraConfigs:v34];
    [(MOVWriterInterface *)v16->_writerInterface registerStreamID:v16->_colorStreamID withConfigObject:v35];

    v36 = *MEMORY[0x277D256E0];
    v51[0] = *MEMORY[0x277D256E8];
    v51[1] = v36;
    v52[0] = &unk_2862DF300;
    v52[1] = &unk_2862DF318;
    v51[2] = *MEMORY[0x277D256D0];
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v52[2] = v37;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];

    v39 = objc_alloc(MEMORY[0x277CECD88]);
    *&v40 = a4;
    v41 = [v39 initWithLossless:1 bitrate:0 forceH264:v38 expectedFPS:0.0 extraConfigs:v40];
    [(MOVWriterInterface *)v16->_writerInterface registerStreamID:v16->_depthStreamID withConfigObject:v41];

    v42 = MGCopyAnswer();
    [(MOVWriterInterface *)v16->_writerInterface setSerialNumber:v42];

    v43 = [MEMORY[0x277CECD80] makeDeviceString];
    [(MOVWriterInterface *)v16->_writerInterface setDeviceString:v43];

    v44 = [MEMORY[0x277D75418] currentDevice];
    v45 = [v44 name];
    [(MOVWriterInterface *)v16->_writerInterface setDeviceName:v45];

    v46 = MGCopyAnswer();
    [(MOVWriterInterface *)v16->_writerInterface setOsBuildVersion:v46];

    v47 = v16;
  }

  else
  {
LABEL_4:
    v47 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];
  return v47;
}

+ (void)copyBuffer:(__CVBuffer *)a3 dst:(__CVBuffer *)a4
{
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(a4, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  if (PlaneCount <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = PlaneCount;
  }

  v8 = CVPixelBufferGetPlaneCount(a4);
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if (v7 != v9)
  {
    +[RecordingManager copyBuffer:dst:];
  }

  for (i = 0; i != v7; ++i)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, i);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, i);
    v13 = CVPixelBufferGetBaseAddressOfPlane(a4, i);
    v14 = CVPixelBufferGetBytesPerRowOfPlane(a4, i);
    v15 = v14;
    if (v14 >= BytesPerRowOfPlane)
    {
      v16 = BytesPerRowOfPlane;
    }

    else
    {
      v16 = v14;
    }

    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, i);
    if (HeightOfPlane >= 1)
    {
      v18 = HeightOfPlane;
      do
      {
        memcpy(v13, BaseAddressOfPlane, v16);
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v13 += v15;
        --v18;
      }

      while (v18);
    }
  }

  CVPixelBufferUnlockBaseAddress(a4, 0);
  CVPixelBufferUnlockBaseAddress(a3, 0);
  v19 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldPropagate);

  CVBufferSetAttachments(a4, v19, kCVAttachmentMode_ShouldPropagate);
}

- (uint64_t)process:(__n128)a3 depthFrame:(__n128)a4 faceObject:(__n128)a5 timestamp:(double)a6 intrinsics:(uint64_t)a7 calibration:(uint64_t)a8 exposureTime:(__CVBuffer *)a9
{
  v60[12] = *MEMORY[0x277D85DE8];
  v56[0] = a3;
  v56[1] = a4;
  v56[2] = a5;
  v15 = a10;
  v48 = a11;
  v49 = [objc_alloc(MEMORY[0x277CECD78]) initWithAVCameraCalibrationData:v48 timestamp:*(a1 + 16) streamID:a2];
  [*(a1 + 8) processCVACameraCalibrationData:?];
  memset(&v55, 0, sizeof(v55));
  CMTimeMakeWithSeconds(&v55, a2, 10000000);
  v52 = objc_opt_new();
  if (v15)
  {
    v59[0] = @"faceID";
    v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "faceID")}];
    v60[0] = v47;
    v59[1] = @"hasRollAngle";
    v46 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "hasRollAngle")}];
    v60[1] = v46;
    v59[2] = @"rollAngle";
    v16 = MEMORY[0x277CCABB0];
    [v15 rollAngle];
    v45 = [v16 numberWithDouble:?];
    v60[2] = v45;
    v59[3] = @"hasYawAngle";
    v44 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "hasYawAngle")}];
    v60[3] = v44;
    v59[4] = @"yawAngle";
    v17 = MEMORY[0x277CCABB0];
    [v15 yawAngle];
    v43 = [v17 numberWithDouble:?];
    v60[4] = v43;
    v59[5] = @"time";
    v18 = MEMORY[0x277CCABB0];
    [v15 time];
    v19 = [v18 numberWithDouble:CMTimeGetSeconds(&time)];
    v60[5] = v19;
    v59[6] = @"duration";
    v20 = MEMORY[0x277CCABB0];
    [v15 duration];
    v21 = [v20 numberWithDouble:CMTimeGetSeconds(&time)];
    v60[6] = v21;
    v59[7] = @"rectX";
    v22 = MEMORY[0x277CCABB0];
    [v15 bounds];
    v23 = [v22 numberWithDouble:?];
    v60[7] = v23;
    v59[8] = @"rectY";
    v24 = MEMORY[0x277CCABB0];
    [v15 bounds];
    v26 = [v24 numberWithDouble:v25];
    v60[8] = v26;
    v59[9] = @"rectWidth";
    v27 = MEMORY[0x277CCABB0];
    [v15 bounds];
    v29 = [v27 numberWithDouble:v28];
    v60[9] = v29;
    v59[10] = @"rectHeight";
    v30 = MEMORY[0x277CCABB0];
    [v15 bounds];
    v32 = [v30 numberWithDouble:v31];
    v60[10] = v32;
    v59[11] = @"timestamp";
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    v60[11] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:12];

    [v52 setObject:v34 forKeyedSubscript:@"VisageMetadataFaceObject"];
  }

  [*(a1 + 8) addFrameMetadata:v52 streamID:*(a1 + 16)];
  time = v55;
  v35 = [*(a1 + 8) processPixelBuffer:a8 withTimeStamp:&time intrinsics:v56 exposureTime:*(a1 + 16) streamID:a6];
  pixelBufferOut = 0;
  v57 = *MEMORY[0x277CC4DE8];
  v58 = MEMORY[0x277CBEC10];
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  Width = CVPixelBufferGetWidth(a9);
  Height = CVPixelBufferGetHeight(a9);
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x4C303066u, v36, &pixelBufferOut))
  {
    NSLog(&cfstr_HrtfappRecordi.isa);
    v39 = 0;
  }

  else
  {
    [RecordingManager copyBuffer:a9 dst:pixelBufferOut];
    v40 = *(a1 + 8);
    time = v55;
    v39 = [v40 processPixelBuffer:pixelBufferOut withTimeStamp:&time intrinsics:0 exposureTime:*(a1 + 24) streamID:-1.0];
    CVPixelBufferRelease(pixelBufferOut);
  }

  v41 = *MEMORY[0x277D85DE8];
  return v35 & v39;
}

- (void)stopRecording
{
  writerInterface = self->_writerInterface;
  v6 = 0;
  [(MOVWriterInterface *)writerInterface finishWriting:&v6];
  v3 = v6;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizedDescription];
    NSLog(&cfstr_HrtfappRecordi_0.isa, v5);
  }
}

- (void)isReadyToRecord
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 isReadyToRecord];
  }
}

- (void)didFinishRecording
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 didFinishRecording];
  }
}

- (RecordingManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end