@interface TSUBufferedReadChannel
- (TSUBufferedReadChannel)initWithReadChannel:(id)channel sourceReadBufferSize:(unint64_t)size blockInfos:(id)infos streamReadChannelBlock:(id)block;
- (id)_currentDataIntersectionWithOffset:(int64_t)offset length:(unint64_t)length isReadDone:(BOOL *)done;
- (void)_close;
- (void)_closeStreamReadChannel;
- (void)_readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)_resetStreamReadChannelIfNeededForOffset:(int64_t)offset length:(unint64_t)length;
- (void)close;
- (void)dealloc;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)setStreamReadChannelSourceHandler:(id)handler;
@end

@implementation TSUBufferedReadChannel

- (TSUBufferedReadChannel)initWithReadChannel:(id)channel sourceReadBufferSize:(unint64_t)size blockInfos:(id)infos streamReadChannelBlock:(id)block
{
  channelCopy = channel;
  infosCopy = infos;
  blockCopy = block;
  v28.receiver = self;
  v28.super_class = TSUBufferedReadChannel;
  v14 = [(TSUBufferedReadChannel *)&v28 init];
  if (v14)
  {
    if (channelCopy)
    {
      if (blockCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBufferedReadChannel.m"];
      [OITSUAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:60 isFatal:0 description:"invalid nil value for '%{public}s'", "sourceReadChannel"];

      +[OITSUAssertionHandler logBacktraceThrottled];
      if (blockCopy)
      {
LABEL_4:
        if (size)
        {
LABEL_5:
          if (channelCopy && blockCopy)
          {
            v15 = dispatch_queue_create("TSUBufferedReadChannel.Read", 0);
            v16 = *(v14 + 1);
            *(v14 + 1) = v15;

            dispatch_queue_set_specific(*(v14 + 1), TSUBufferedReadChannelReadQueueSpecific, TSUBufferedReadChannelReadQueueSpecific, 0);
            objc_storeStrong(v14 + 2, channel);
            *(v14 + 3) = size;
            *(v14 + 4) = 0x7FFFFFFFFFFFFFFFLL;
            v17 = [infosCopy copy];
            v18 = *(v14 + 7);
            *(v14 + 7) = v17;

            v19 = _Block_copy(blockCopy);
            v20 = *(v14 + 8);
            *(v14 + 8) = v19;

            *(v14 + 12) = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_12;
          }

LABEL_11:

          v14 = 0;
          goto LABEL_12;
        }

LABEL_10:
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBufferedReadChannel.m"];
        [OITSUAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:62 isFatal:0 description:"Buffer size too small: %zu", 0];

        +[OITSUAssertionHandler logBacktraceThrottled];
        goto LABEL_11;
      }
    }

    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBufferedReadChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:61 isFatal:0 description:"invalid nil value for '%{public}s'", "streamReadChannelBlock"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    if (size)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_12:

  return v14;
}

- (void)dealloc
{
  [(TSUBufferedReadChannel *)self _close];
  v3.receiver = self;
  v3.super_class = TSUBufferedReadChannel;
  [(TSUBufferedReadChannel *)&v3 dealloc];
}

- (void)close
{
  v3 = TSUBufferedReadChannelReadQueueSpecific;
  if (dispatch_get_specific(TSUBufferedReadChannelReadQueueSpecific) == v3)
  {

    [(TSUBufferedReadChannel *)self _close];
  }

  else
  {
    readQueue = self->_readQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__TSUBufferedReadChannel_close__block_invoke;
    block[3] = &unk_2799C68D0;
    block[4] = self;
    dispatch_sync(readQueue, block);
  }
}

- (void)_close
{
  [(TSUBufferedReadChannel *)self _closeStreamReadChannel];
  [(TSUReadChannel *)self->_sourceReadChannel close];
  sourceReadChannel = self->_sourceReadChannel;
  self->_sourceReadChannel = 0;

  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = 0;
}

- (void)_closeStreamReadChannel
{
  [(TSUStreamReadChannel *)self->_streamReadChannel close];
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = 0;
}

- (void)_resetStreamReadChannelIfNeededForOffset:(int64_t)offset length:(unint64_t)length
{
  offsetCopy = offset;
  v43 = *MEMORY[0x277D85DE8];
  streamOutputOffset = self->_streamOutputOffset;
  if (streamOutputOffset <= offset)
  {
    streamOutputOutstandingLength = self->_streamOutputOutstandingLength;
    v9 = streamOutputOutstandingLength + streamOutputOffset;
    if (streamOutputOutstandingLength == -1 || v9 > offset)
    {
      return;
    }
  }

  [(TSUBufferedReadChannel *)self _closeStreamReadChannel];
  *&self->_sourceOffset = xmmword_25D6FAA10;
  *&self->_streamOutputOffset = xmmword_25D6FAA10;
  self->_streamOutputLength = 0;
  v11 = [(NSArray *)self->_blockInfos count];
  if (!v11)
  {
    v16 = 0;
    goto LABEL_29;
  }

  v12 = v11;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = self->_blockInfos;
  v36 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v36)
  {
    v16 = 0;
    goto LABEL_28;
  }

  v14 = 0;
  decodedLength = 0;
  v16 = 0;
  v35 = *v39;
  v33 = v13;
  do
  {
    v17 = 0;
    do
    {
      if (*v39 != v35)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v38 + 1) + 8 * v17);
      v14 += [v18 decodedLength];
      if (decodedLength)
      {
        [v16 addObject:v18];
        self->_sourceLength += [v18 encodedLength];
        decodedLength += [v18 decodedLength];
        decodedLength2 = self->_streamOutputOutstandingLength + [v18 decodedLength];
      }

      else
      {
        if (v14 <= offsetCopy)
        {
          self->_sourceOffset += [v18 encodedLength];
          decodedLength = 0;
          self->_streamOutputOffset += [v18 decodedLength];
          goto LABEL_19;
        }

        if (v16)
        {
          [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _resetStreamReadChannelIfNeededForOffset:length:]"];
          v34 = v16;
          v20 = offsetCopy;
          v22 = v21 = length;
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBufferedReadChannel.m"];
          [OITSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:138 isFatal:0 description:"expected nil value for '%{public}s'", "blockInfos"];

          length = v21;
          offsetCopy = v20;
          v16 = v34;
          +[OITSUAssertionHandler logBacktraceThrottled];
        }

        v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12];

        [v24 addObject:v18];
        self->_sourceLength = [v18 encodedLength];
        decodedLength = [v18 decodedLength];
        decodedLength2 = [v18 decodedLength];
        v16 = v24;
        v13 = v33;
      }

      self->_streamOutputOutstandingLength = decodedLength2;
      if (decodedLength > length)
      {
        goto LABEL_28;
      }

LABEL_19:
      if (!--v12)
      {
        self->_sourceLength = -1;
        self->_streamOutputOutstandingLength = -1;
      }

      ++v17;
    }

    while (v36 != v17);
    v25 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
    v36 = v25;
  }

  while (v25);
LABEL_28:

LABEL_29:
  currentStreamOutputData = self->_currentStreamOutputData;
  self->_currentStreamOutputData = 0;

  self->_isStreamOutputDone = 0;
  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = 0;

  streamReadChannelBlock = self->_streamReadChannelBlock;
  v29 = [[TSUBufferedReadChannelHelper alloc] initWithBufferedReadChannel:self];
  v30 = streamReadChannelBlock[2](streamReadChannelBlock, v29, v16);
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = v30;

  v32 = self->_streamReadChannel;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __74__TSUBufferedReadChannel__resetStreamReadChannelIfNeededForOffset_length___block_invoke;
  v37[3] = &unk_2799C6F28;
  v37[4] = self;
  [(TSUStreamReadChannel *)v32 readWithHandler:v37];
}

void __74__TSUBufferedReadChannel__resetStreamReadChannelIfNeededForOffset_length___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  data = a3;
  v7 = a4;
  v8 = v7;
  v9 = *(a1 + 32);
  if ((*(v9 + 88) & 1) == 0)
  {
    if (v7)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _resetStreamReadChannelIfNeededForOffset:length:]_block_invoke"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBufferedReadChannel.m"];
      v12 = [v8 code];
      v13 = [v8 domain];
      [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:185 isFatal:0 description:"Error reading from filter TSUStreamReadChannel: %zd %{public}@ %@", v12, v13, v8];

      +[OITSUAssertionHandler logBacktraceThrottled];
      a2 = 1;
    }

    else if (data)
    {
      *(v9 + 112) += dispatch_data_get_size(data);
      v14 = *(a1 + 32);
      v15 = *(v14 + 120);
      if (v15)
      {
        concat = dispatch_data_create_concat(v15, data);
        v17 = *(a1 + 32);
        v18 = *(v17 + 120);
        *(v17 + 120) = concat;
      }

      else
      {
        v19 = data;
        v18 = *(v14 + 120);
        *(v14 + 120) = v19;
      }
    }

    *(*(a1 + 32) + 88) = a2;
  }
}

- (void)setStreamReadChannelSourceHandler:(id)handler
{
  v4 = _Block_copy(handler);
  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = v4;
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  readQueue = self->_readQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__TSUBufferedReadChannel_readFromOffset_length_handler___block_invoke;
  v11[3] = &unk_2799C6F50;
  offsetCopy = offset;
  lengthCopy = length;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(readQueue, v11);
}

uint64_t __56__TSUBufferedReadChannel_readFromOffset_length_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 48))
  {
    v3 = *(a1[5] + 16);

    return v3();
  }

  else
  {
    dispatch_suspend(*(v2 + 8));
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[4];
    v8 = a1[5];

    return [v7 _readFromOffset:v5 length:v6 handler:v8];
  }
}

- (void)_readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  v9 = (offset & (offset >> 63)) + length;
  v10 = offset & ~(offset >> 63);
  [(TSUBufferedReadChannel *)self _resetStreamReadChannelIfNeededForOffset:v10 length:v9];
  v28 = 0;
  v11 = [(TSUBufferedReadChannel *)self _currentDataIntersectionWithOffset:v10 length:v9 isReadDone:&v28];
  v12 = v11;
  if (v11)
  {
    size = dispatch_data_get_size(v11);
    v10 += size;
    v9 -= size;
    v14 = v28;
  }

  else
  {
    v14 = v28;
    if (v28 != 1)
    {
      goto LABEL_6;
    }
  }

  (*(handlerCopy + 2))(handlerCopy, v14 & 1, v12, 0);
  if (v28)
  {
    dispatch_resume(self->_readQueue);
    goto LABEL_12;
  }

LABEL_6:
  [(TSUBufferedReadChannel *)self _resetStreamReadChannelIfNeededForOffset:v10 length:v9];
  currentStreamOutputData = self->_currentStreamOutputData;
  self->_currentStreamOutputData = 0;

  streamOutputOutstandingLength = self->_streamOutputOutstandingLength;
  streamOutputLength = self->_streamOutputLength;
  self->_streamOutputOffset += streamOutputLength;
  if (streamOutputOutstandingLength != -1)
  {
    self->_streamOutputOutstandingLength = streamOutputOutstandingLength - streamOutputLength;
  }

  self->_streamOutputLength = 0;
  sourceReadChannel = self->_sourceReadChannel;
  sourceOffset = self->_sourceOffset;
  if (self->_sourceLength >= self->_sourceReadBufferSize)
  {
    sourceReadBufferSize = self->_sourceReadBufferSize;
  }

  else
  {
    sourceReadBufferSize = self->_sourceLength;
  }

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __57__TSUBufferedReadChannel__readFromOffset_length_handler___block_invoke;
  v21[3] = &unk_2799C6F78;
  v21[4] = self;
  v22 = handlerCopy;
  v23 = v27;
  v24 = sourceReadBufferSize;
  v25 = v10;
  v26 = v9;
  [(TSUReadChannel *)sourceReadChannel readFromOffset:sourceOffset length:sourceReadBufferSize handler:v21];

  _Block_object_dispose(v27, 8);
LABEL_12:
}

void __57__TSUBufferedReadChannel__readFromOffset_length_handler___block_invoke(void *a1, int a2, void *a3, void *a4)
{
  data = a3;
  v7 = a4;
  v8 = v7;
  v9 = a1[4];
  if (*(v9 + 48))
  {
    goto LABEL_22;
  }

  if (!*(v9 + 80))
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBufferedReadChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:264 isFatal:0 description:"The source handler for the stream read channel should not be nil"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    if (!v8)
    {
      v8 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
      if (!v8)
      {
        goto LABEL_4;
      }
    }

LABEL_12:
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBufferedReadChannel.m"];
    v18 = [v8 code];
    v19 = [v8 domain];
    [OITSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:272 isFatal:0 description:"Error reading from source TSUReadChannel: %zd %{public}@ %@", v18, v19, v8];

    +[OITSUAssertionHandler logBacktraceThrottled];
    (*(a1[5] + 16))();
    objc_storeStrong((a1[4] + 48), v8);
    dispatch_resume(*(a1[4] + 8));
    goto LABEL_22;
  }

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_4:
  size = data;
  if (data)
  {
    size = dispatch_data_get_size(data);
  }

  *(*(a1[6] + 8) + 24) += size;
  if (*(*(a1[6] + 8) + 24) > a1[7])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _readFromOffset:length:handler:]_block_invoke"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBufferedReadChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:281 isFatal:0 description:"Received more data than requested: %zu instead of %zu", *(*(a1[6] + 8) + 24), a1[7]];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (a2)
  {
    v13 = *(*(a1[6] + 8) + 24) < a1[7];
  }

  else
  {
    v13 = 0;
  }

  if (data || v13)
  {
    (*(*(a1[4] + 80) + 16))();
  }

  if (a2)
  {
    *(a1[4] + 32) += *(*(a1[6] + 8) + 24);
    v20 = a1[4];
    v21 = v20[5];
    if (v21 != -1)
    {
      v20[5] = v21 - *(*(a1[6] + 8) + 24);
      v20 = a1[4];
    }

    [v20 _readFromOffset:a1[8] length:a1[9] handler:a1[5]];
  }

  v8 = 0;
LABEL_22:
}

- (id)_currentDataIntersectionWithOffset:(int64_t)offset length:(unint64_t)length isReadDone:(BOOL *)done
{
  if (__CFADD__(offset, length))
  {
    v8 = -1;
  }

  else
  {
    v8 = offset + length;
  }

  streamOutputOffset = self->_streamOutputOffset;
  streamOutputLength = self->_streamOutputLength;
  if (streamOutputLength >= ~streamOutputOffset)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _currentDataIntersectionWithOffset:length:isReadDone:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUBufferedReadChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:312 isFatal:0 description:"Overflow in the output stream: data offset %lli data length %zu", self->_streamOutputOffset, self->_streamOutputLength];

    +[OITSUAssertionHandler logBacktraceThrottled];
    streamOutputOffset = self->_streamOutputOffset;
    streamOutputLength = self->_streamOutputLength;
  }

  if (streamOutputOffset <= offset)
  {
    offsetCopy = offset;
  }

  else
  {
    offsetCopy = streamOutputOffset;
  }

  v14 = streamOutputLength + streamOutputOffset;
  if (v8 >= streamOutputLength + streamOutputOffset)
  {
    v15 = streamOutputLength + streamOutputOffset;
  }

  else
  {
    v15 = v8;
  }

  if (v15 <= offsetCopy)
  {
    subrange = 0;
    if (!done)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  subrange = dispatch_data_create_subrange(self->_currentStreamOutputData, offsetCopy - streamOutputOffset, v15 - offsetCopy);
  if (done)
  {
LABEL_16:
    *done = v8 <= v14 || self->_isStreamOutputDone;
  }

LABEL_17:

  return subrange;
}

@end