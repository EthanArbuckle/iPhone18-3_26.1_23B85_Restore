@interface MOVStreamMetalPixelBufferUtility
+ (id)sharedMetalPixelBufferUtility;
- (BOOL)processBayerBuffer:(__CVBuffer *)buffer withWarholBuffer:(__CVBuffer *)warholBuffer shiftCount:(int)count msbReplication:(BOOL)replication operation:(int)operation sampleSize:(int)size;
- (MOVStreamMetalPixelBufferUtility)init;
@end

@implementation MOVStreamMetalPixelBufferUtility

+ (id)sharedMetalPixelBufferUtility
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MOVStreamMetalPixelBufferUtility_sharedMetalPixelBufferUtility__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedMetalPixelBufferUtility_onceToken != -1)
  {
    dispatch_once(&sharedMetalPixelBufferUtility_onceToken, block);
  }

  v2 = sharedMetalPixelBufferUtility_sharedMetalPixelBufferUtility;

  return v2;
}

uint64_t __65__MOVStreamMetalPixelBufferUtility_sharedMetalPixelBufferUtility__block_invoke(uint64_t a1)
{
  sharedMetalPixelBufferUtility_sharedMetalPixelBufferUtility = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MOVStreamMetalPixelBufferUtility)init
{
  v58 = *MEMORY[0x277D85DE8];
  v55.receiver = self;
  v55.super_class = MOVStreamMetalPixelBufferUtility;
  v2 = [(MOVStreamMetalPixelBufferUtility *)&v55 init];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = MTLCreateSystemDefaultDevice();
  metalDevice = v2->_metalDevice;
  v2->_metalDevice = v3;

  if (!v2->_metalDevice)
  {
    if (!+[MIOLog debugEnabled])
    {
LABEL_67:
      v33 = 0;
      goto LABEL_68;
    }

    v10 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v10, OS_LOG_TYPE_DEBUG, "Failed to create Metal Device.", buf, 2u);
    }

LABEL_66:

    goto LABEL_67;
  }

  v5 = MEMORY[0x277CCA8D8];
  v6 = objc_opt_self();
  v7 = [v5 bundleForClass:v6];

  v8 = v2->_metalDevice;
  v54 = 0;
  v9 = [(MTLDevice *)v8 newDefaultLibraryWithBundle:v7 error:&v54];
  v10 = v54;
  if (!v9)
  {
    if (!+[MIOLog debugEnabled])
    {
LABEL_65:

      goto LABEL_66;
    }

    v9 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      localizedDescription = [v10 localizedDescription];
      *buf = 138543362;
      v57 = localizedDescription;
      v34 = "Failed to find the default library. error: %{public}@";
      v35 = v9;
      v36 = 12;
      goto LABEL_24;
    }

LABEL_64:

    goto LABEL_65;
  }

  v11 = [v9 newFunctionWithName:@"splitBayerIntoWarhol"];
  if (!v11)
  {
    if (+[MIOLog debugEnabled])
    {
      localizedDescription = +[MIOLog defaultLog];
      if (!os_log_type_enabled(localizedDescription, OS_LOG_TYPE_DEBUG))
      {
LABEL_63:

        goto LABEL_64;
      }

      *buf = 0;
      v34 = "Failed to find the metal splitBayerIntoWarhol function.";
      v35 = localizedDescription;
      v36 = 2;
LABEL_24:
      _os_log_impl(&dword_257883000, v35, OS_LOG_TYPE_DEBUG, v34, buf, v36);
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  localizedDescription = v11;
  v13 = v2->_metalDevice;
  v53 = 0;
  v14 = [(MTLDevice *)v13 newComputePipelineStateWithFunction:localizedDescription error:&v53];
  v15 = v53;
  v16 = v2->_pipeLineStates[0];
  v2->_pipeLineStates[0] = v14;

  if (!v2->_pipeLineStates[0])
  {
    if (+[MIOLog debugEnabled])
    {
      v37 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        localizedDescription2 = [v15 localizedDescription];
        *buf = 138543362;
        v57 = localizedDescription2;
        _os_log_impl(&dword_257883000, v37, OS_LOG_TYPE_DEBUG, "Failed to created pipeline state object, error %{public}@.", buf, 0xCu);
      }
    }

    goto LABEL_63;
  }

  v17 = [v9 newFunctionWithName:@"joinWarholIntoBayer"];
  if (!v17)
  {
    if (!+[MIOLog debugEnabled])
    {
LABEL_38:
      v20 = v15;
      goto LABEL_39;
    }

    v39 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v39, OS_LOG_TYPE_DEBUG, "Failed to find the metal joinWarholIntoBayer function.", buf, 2u);
    }

LABEL_37:

    goto LABEL_38;
  }

  v18 = v2->_metalDevice;
  v52 = v15;
  v19 = [(MTLDevice *)v18 newComputePipelineStateWithFunction:v17 error:&v52];
  v20 = v52;

  v21 = v2->_pipeLineStates[1];
  v2->_pipeLineStates[1] = v19;

  if (!v2->_pipeLineStates[1])
  {
    if (!+[MIOLog debugEnabled])
    {
LABEL_39:

      goto LABEL_63;
    }

    v39 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      localizedDescription3 = [v20 localizedDescription];
      *buf = 138543362;
      v57 = localizedDescription3;
      _os_log_impl(&dword_257883000, v39, OS_LOG_TYPE_DEBUG, "Failed to created pipeline state object, error %{public}@.", buf, 0xCu);
    }

    v15 = v20;
    goto LABEL_37;
  }

  v22 = [v9 newFunctionWithName:@"splitCompandedBayerIntoWarhol"];
  if (!v22)
  {
    if (!+[MIOLog debugEnabled])
    {
LABEL_48:
      v25 = v20;
      goto LABEL_49;
    }

    v41 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v41, OS_LOG_TYPE_DEBUG, "Failed to find the metal splitCompandedBayerIntoWarhol function.", buf, 2u);
    }

LABEL_47:

    goto LABEL_48;
  }

  v23 = v2->_metalDevice;
  v51 = v20;
  v24 = [(MTLDevice *)v23 newComputePipelineStateWithFunction:v22 error:&v51];
  v25 = v51;

  v26 = v2->_pipeLineStates[2];
  v2->_pipeLineStates[2] = v24;

  if (!v2->_pipeLineStates[2])
  {
    if (!+[MIOLog debugEnabled])
    {
LABEL_49:

      goto LABEL_63;
    }

    v41 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      localizedDescription4 = [v25 localizedDescription];
      *buf = 138543362;
      v57 = localizedDescription4;
      _os_log_impl(&dword_257883000, v41, OS_LOG_TYPE_DEBUG, "Failed to created pipeline state object, error %{public}@.", buf, 0xCu);
    }

    v20 = v25;
    goto LABEL_47;
  }

  v27 = [v9 newFunctionWithName:@"joinCompandedWarholIntoBayer"];
  if (!v27)
  {
    if (!+[MIOLog debugEnabled])
    {
LABEL_61:
      v44 = v25;
      goto LABEL_62;
    }

    v43 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v43, OS_LOG_TYPE_DEBUG, "Failed to find the metal joinCompandedWarholIntoBayer function.", buf, 2u);
    }

LABEL_60:

    goto LABEL_61;
  }

  v28 = v2->_metalDevice;
  v50 = v25;
  v29 = [(MTLDevice *)v28 newComputePipelineStateWithFunction:v27 error:&v50];
  v49 = v50;

  v30 = v2->_pipeLineStates[3];
  v2->_pipeLineStates[3] = v29;

  if (!v2->_pipeLineStates[3])
  {
    if (!+[MIOLog debugEnabled])
    {
      v44 = v49;
      goto LABEL_62;
    }

    v43 = +[MIOLog defaultLog];
    v25 = v49;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      localizedDescription5 = [v49 localizedDescription];
      *buf = 138543362;
      v57 = localizedDescription5;
      _os_log_impl(&dword_257883000, v43, OS_LOG_TYPE_DEBUG, "Failed to created pipeline state object, error %{public}@.", buf, 0xCu);
    }

    goto LABEL_60;
  }

  newCommandQueue = [(MTLDevice *)v2->_metalDevice newCommandQueue];
  metalCommandQueue = v2->_metalCommandQueue;
  v2->_metalCommandQueue = newCommandQueue;

  if (!v2->_metalCommandQueue)
  {
    v44 = v49;
    if (!+[MIOLog debugEnabled])
    {
LABEL_62:

      goto LABEL_63;
    }

    v45 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_257883000, v45, OS_LOG_TYPE_DEBUG, "Failed to create the command queue.", buf, 2u);
    }

    v46 = v45;
    v25 = v49;
    v43 = v46;
    goto LABEL_60;
  }

  [(MOVStreamMetalPixelBufferUtility *)v2 setEnabled:1];

LABEL_14:
  v33 = v2;
LABEL_68:

  return v33;
}

- (BOOL)processBayerBuffer:(__CVBuffer *)buffer withWarholBuffer:(__CVBuffer *)warholBuffer shiftCount:(int)count msbReplication:(BOOL)replication operation:(int)operation sampleSize:(int)size
{
  replicationCopy = replication;
  v56 = *MEMORY[0x277D85DE8];
  if (CVPixelBufferIsPlanar(buffer))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidth(buffer);
  }

  v16 = WidthOfPlane;
  if (CVPixelBufferIsPlanar(buffer))
  {
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  }

  else
  {
    HeightOfPlane = CVPixelBufferGetHeight(buffer);
  }

  v18 = HeightOfPlane;
  v19 = v16 & 7;
  if ((v16 & 7) != 0)
  {
    if (+[MIOLog debugEnabled])
    {
      v20 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v20, OS_LOG_TYPE_DEBUG, "Bayer Buffer width is not a multiple of 8", buf, 2u);
      }
    }
  }

  else
  {
    sizeCopy = size;
    operationCopy = operation;
    unlockFlags = (operation & 0xFFFFFFFD) == 0;
    CVPixelBufferLockBaseAddress(buffer, unlockFlags);
    v45 = (operation & 0xFFFFFFFD) != 0;
    CVPixelBufferLockBaseAddress(warholBuffer, v45);
    PixelBufferBaseAddress = GetPixelBufferBaseAddress(buffer);
    v22 = GetPixelBufferBaseAddress(warholBuffer);
    PixelBufferRowBytes = GetPixelBufferRowBytes(buffer);
    v54 = PixelBufferRowBytes;
    warholBufferCopy = warholBuffer;
    v24 = GetPixelBufferRowBytes(warholBuffer);
    v52 = v16 >> 3;
    v53 = v24;
    v51 = (v16 >> 3) * v18;
    if (v16 % (v16 >> 3))
    {
      [MOVStreamMetalPixelBufferUtility processBayerBuffer:withWarholBuffer:shiftCount:msbReplication:operation:sampleSize:];
    }

    v25 = v24;
    v49 = replicationCopy;
    countCopy = count;
    v26 = getpagesize();
    v27 = ((v25 * v18) + v26 - 1) / v26 * v26;
    v28 = [(MTLDevice *)self->_metalDevice newBufferWithBytesNoCopy:PixelBufferBaseAddress length:((PixelBufferRowBytes * v18) + v26 - 1) / v26 * v26 options:0 deallocator:0];
    v29 = [(MTLDevice *)self->_metalDevice newBufferWithBytesNoCopy:v22 length:v27 options:0 deallocator:0];
    commandBuffer = [(MTLCommandQueue *)self->_metalCommandQueue commandBuffer];
    if (!commandBuffer)
    {
      [MOVStreamMetalPixelBufferUtility processBayerBuffer:withWarholBuffer:shiftCount:msbReplication:operation:sampleSize:];
    }

    v31 = commandBuffer;
    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    if (!computeCommandEncoder)
    {
      [MOVStreamMetalPixelBufferUtility processBayerBuffer:withWarholBuffer:shiftCount:msbReplication:operation:sampleSize:];
    }

    v33 = computeCommandEncoder;
    v34 = v25 * (v18 >> 1);
    v35 = &self->super.isa + operationCopy;
    [computeCommandEncoder setComputePipelineState:v35[3]];
    [v33 setBuffer:v28 offset:0 atIndex:0];
    [v33 setBuffer:v29 offset:0 atIndex:1];
    [v33 setBuffer:v29 offset:(v16 * sizeCopy) >> 1 atIndex:2];
    [v33 setBuffer:v29 offset:v34 atIndex:3];
    [v33 setBuffer:v29 offset:v34 + ((v16 * sizeCopy) >> 1) atIndex:4];
    [v33 setBytes:&v54 length:4 atIndex:5];
    [v33 setBytes:&v53 length:4 atIndex:6];
    [v33 setBytes:&v51 length:4 atIndex:7];
    [v33 setBytes:&v52 length:4 atIndex:8];
    [v33 setBytes:&countCopy length:4 atIndex:9];
    [v33 setBytes:&v49 length:4 atIndex:10];
    maxTotalThreadsPerThreadgroup = [(objc_class *)v35[3] maxTotalThreadsPerThreadgroup];
    if (v51 >= maxTotalThreadsPerThreadgroup)
    {
      v37 = maxTotalThreadsPerThreadgroup;
    }

    else
    {
      v37 = v51;
    }

    *buf = (v51 + v37 - 1) / v37;
    *&buf[8] = vdupq_n_s64(1uLL);
    v47 = v37;
    v48 = *&buf[8];
    [v33 dispatchThreadgroups:buf threadsPerThreadgroup:&v47];
    [v33 endEncoding];
    [v31 commit];
    [v31 waitUntilCompleted];
    error = [v31 error];

    if (error)
    {
      v39 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        error2 = [v31 error];
        *buf = 138543362;
        *&buf[4] = error2;
        _os_log_impl(&dword_257883000, v39, OS_LOG_TYPE_ERROR, "processBayerBuffer error recevied: %{public}@", buf, 0xCu);
      }
    }

    CVPixelBufferUnlockBaseAddress(buffer, unlockFlags);
    CVPixelBufferUnlockBaseAddress(warholBufferCopy, v45);

    v19 = 0;
  }

  return v19 == 0;
}

@end