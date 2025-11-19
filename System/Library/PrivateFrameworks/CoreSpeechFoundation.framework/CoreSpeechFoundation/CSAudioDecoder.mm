@interface CSAudioDecoder
- (CSAudioDecoder)initWithInASBD:(AudioStreamBasicDescription *)a3 outASBD:(AudioStreamBasicDescription *)a4;
- (CSAudioDecoderDelegate)delegate;
- (void)addPackets:(id)a3 audioStreamHandleId:(unint64_t)a4 remoteVAD:(id)a5 timestamp:(unint64_t)a6 arrivalTimestampToAudioRecorder:(unint64_t)a7 wasBuffered:(BOOL)a8 receivedNumChannels:(unsigned int)a9;
- (void)dealloc;
@end

@implementation CSAudioDecoder

- (CSAudioDecoderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addPackets:(id)a3 audioStreamHandleId:(unint64_t)a4 remoteVAD:(id)a5 timestamp:(unint64_t)a6 arrivalTimestampToAudioRecorder:(unint64_t)a7 wasBuffered:(BOOL)a8 receivedNumChannels:(unsigned int)a9
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v30 = a5;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v12)
  {
    v32 = *v40;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        mFramesPerPacket = self->_inASBD.mFramesPerPacket;
        v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:2 * mFramesPerPacket];
        memset(&outOutputData.mNumberBuffers + 1, 0, 20);
        outOutputData.mNumberBuffers = 1;
        v17 = v16;
        outOutputData.mBuffers[0].mData = [v16 mutableBytes];
        v18 = [v16 length];
        outOutputData.mBuffers[0].mNumberChannels = 1;
        outOutputData.mBuffers[0].mDataByteSize = v18;
        ioOutputDataPacketSize = mFramesPerPacket;
        v35[0] = 0;
        v35[1] = v35;
        v35[2] = 0x2020000000;
        v36 = 0;
        v34[0] = 0;
        v34[1] = v34;
        v34[2] = 0x2020000000;
        v34[3] = 1;
        decoder = self->_decoder;
        inInputDataProcUserData[0] = MEMORY[0x1E69E9820];
        inInputDataProcUserData[1] = 3221225472;
        inInputDataProcUserData[2] = __133__CSAudioDecoder_addPackets_audioStreamHandleId_remoteVAD_timestamp_arrivalTimestampToAudioRecorder_wasBuffered_receivedNumChannels___block_invoke;
        inInputDataProcUserData[3] = &unk_1E865AF48;
        inInputDataProcUserData[4] = v14;
        inInputDataProcUserData[5] = v34;
        inInputDataProcUserData[6] = v35;
        inInputDataProcUserData[7] = &v43;
        v20 = AudioConverterFillComplexBuffer(decoder, AudioConverterFillComplexBuffer_BlockInvoke_7321, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
        if ((v20 == 1836086393 || !v20) && ioOutputDataPacketSize && outOutputData.mNumberBuffers)
        {
          if (2 * ioOutputDataPacketSize > outOutputData.mBuffers[0].mDataByteSize)
          {
            _Block_object_dispose(v34, 8);
            _Block_object_dispose(v35, 8);

            goto LABEL_19;
          }

          v21 = [MEMORY[0x1E695DEF0] dataWithBytes:outOutputData.mBuffers[0].mData length:?];
          if (+[CSConfig inputRecordingIsFloat])
          {
            v22 = [CSFLPCMTypeConverter convertToFloatLPCMBufFromShortLPCMBuf:v21];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            HIDWORD(v25) = a9;
            LOBYTE(v25) = a8;
            [WeakRetained audioDecoderDidDecodePackets:self audioStreamHandleId:a4 buffer:v22 remoteVAD:v30 timestamp:a6 arrivalTimestampToAudioRecorder:a7 wasBuffered:v25 receivedNumChannels:?];
          }

          else
          {
            v22 = objc_loadWeakRetained(&self->_delegate);
            HIDWORD(v25) = a9;
            LOBYTE(v25) = a8;
            [v22 audioDecoderDidDecodePackets:self audioStreamHandleId:a4 buffer:v21 remoteVAD:v30 timestamp:a6 arrivalTimestampToAudioRecorder:a7 wasBuffered:v25 receivedNumChannels:?];
          }
        }

        _Block_object_dispose(v34, 8);
        _Block_object_dispose(v35, 8);
      }

      v12 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __133__CSAudioDecoder_addPackets_audioStreamHandleId_remoteVAD_timestamp_arrivalTimestampToAudioRecorder_wasBuffered_receivedNumChannels___block_invoke(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  v7 = *a2;
  if (*(*(*(a1 + 40) + 8) + 24) >= v7)
  {
    if (v7 == 1)
    {
      v10 = [*(a1 + 32) length];
      v11 = *(a1 + 32);
      *(a3 + 16) = [v11 bytes];
      *(a3 + 12) = v10;
      if (a4)
      {
        v12 = *(a1 + 56);
        *v12 = 0;
        *(v12 + 8) = 0;
        *(v12 + 12) = v10;
        *a4 = v12;
      }

      --*(*(*(a1 + 40) + 8) + 24);
      ++*(*(*(a1 + 48) + 8) + 24);

      return 0;
    }

    else
    {
      return 1752524863;
    }
  }

  else
  {
    result = 1836086393;
    *a2 = 0;
    *(a3 + 16) = 0;
    *(a3 + 12) = 0;
    if (a4)
    {
      v9 = *(a1 + 56);
      *v9 = 0;
      v9[1] = 0;
      *a4 = v9;
    }
  }

  return result;
}

- (void)dealloc
{
  decoder = self->_decoder;
  if (decoder)
  {
    AudioConverterDispose(decoder);
    self->_decoder = 0;
  }

  v4.receiver = self;
  v4.super_class = CSAudioDecoder;
  [(CSAudioDecoder *)&v4 dealloc];
}

- (CSAudioDecoder)initWithInASBD:(AudioStreamBasicDescription *)a3 outASBD:(AudioStreamBasicDescription *)a4
{
  v14.receiver = self;
  v14.super_class = CSAudioDecoder;
  v6 = [(CSAudioDecoder *)&v14 init];
  v7 = v6;
  if (v6)
  {
    AudioConverterNew(a3, a4, &v6->_decoder);
    if (!v7->_decoder)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v8 = *&a3->mSampleRate;
    v9 = *&a3->mBytesPerPacket;
    *&v7->_inASBD.mBitsPerChannel = *&a3->mBitsPerChannel;
    *&v7->_inASBD.mSampleRate = v8;
    *&v7->_inASBD.mBytesPerPacket = v9;
    v10 = *&a4->mSampleRate;
    v11 = *&a4->mBytesPerPacket;
    *&v7->_outASBD.mBitsPerChannel = *&a4->mBitsPerChannel;
    *&v7->_outASBD.mBytesPerPacket = v11;
    *&v7->_outASBD.mSampleRate = v10;
  }

  v12 = v7;
LABEL_6:

  return v12;
}

@end