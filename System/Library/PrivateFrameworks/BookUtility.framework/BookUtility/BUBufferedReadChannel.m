@interface BUBufferedReadChannel
- (BUBufferedReadChannel)initWithReadChannel:(id)a3 sourceReadBufferSize:(unint64_t)a4 blockInfos:(id)a5 streamReadChannelBlock:(id)a6;
- (id)_currentDataIntersectionWithOffset:(int64_t)a3 length:(unint64_t)a4 isReadDone:(BOOL *)a5;
- (void)_close;
- (void)_closeStreamReadChannel;
- (void)_readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5;
- (void)_resetStreamReadChannelIfNeededForOffset:(int64_t)a3 length:(unint64_t)a4;
- (void)close;
- (void)dealloc;
- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5;
- (void)setStreamReadChannelSourceHandler:(id)a3;
@end

@implementation BUBufferedReadChannel

- (BUBufferedReadChannel)initWithReadChannel:(id)a3 sourceReadBufferSize:(unint64_t)a4 blockInfos:(id)a5 streamReadChannelBlock:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = BUBufferedReadChannel;
  v14 = [(BUBufferedReadChannel *)&v25 init];
  v15 = v14;
  if (v14)
  {
    if (a4 && v11 && v13)
    {
      v16 = dispatch_queue_create("BUBufferedReadChannel.Read", 0);
      readQueue = v15->_readQueue;
      v15->_readQueue = v16;

      dispatch_queue_set_specific(v15->_readQueue, qword_27EC728A8, qword_27EC728A8, 0);
      objc_storeStrong(&v15->_sourceReadChannel, a3);
      v15->_sourceReadBufferSize = a4;
      v15->_sourceOffset = 0x7FFFFFFFFFFFFFFFLL;
      v20 = objc_msgSend_copy(v12, v18, v19);
      blockInfos = v15->_blockInfos;
      v15->_blockInfos = v20;

      v22 = MEMORY[0x245D00360](v13);
      streamReadChannelBlock = v15->_streamReadChannelBlock;
      v15->_streamReadChannelBlock = v22;

      v15->_streamOutputOffset = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {

      v15 = 0;
    }
  }

  return v15;
}

- (void)dealloc
{
  objc_msgSend__close(self, a2, v2);
  v4.receiver = self;
  v4.super_class = BUBufferedReadChannel;
  [(BUBufferedReadChannel *)&v4 dealloc];
}

- (void)close
{
  v3 = qword_27EC728A8;
  if (dispatch_get_specific(qword_27EC728A8) == v3)
  {

    objc_msgSend__close(self, v4, v5);
  }

  else
  {
    readQueue = self->_readQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241DC7A60;
    block[3] = &unk_278D1D148;
    block[4] = self;
    dispatch_sync(readQueue, block);
  }
}

- (void)_close
{
  objc_msgSend__closeStreamReadChannel(self, a2, v2);
  objc_msgSend_close(self->_sourceReadChannel, v4, v5);
  sourceReadChannel = self->_sourceReadChannel;
  self->_sourceReadChannel = 0;

  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = 0;
}

- (void)_closeStreamReadChannel
{
  objc_msgSend_close(self->_streamReadChannel, a2, v2);
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = 0;
}

- (void)_resetStreamReadChannelIfNeededForOffset:(int64_t)a3 length:(unint64_t)a4
{
  v5 = a3;
  v70 = *MEMORY[0x277D85DE8];
  streamOutputOffset = self->_streamOutputOffset;
  if (streamOutputOffset <= a3)
  {
    streamOutputOutstandingLength = self->_streamOutputOutstandingLength;
    v9 = streamOutputOutstandingLength + streamOutputOffset;
    if (streamOutputOutstandingLength == -1 || v9 > a3)
    {
      return;
    }
  }

  objc_msgSend__closeStreamReadChannel(self, a2, a3);
  *&self->_sourceOffset = xmmword_241DD6220;
  *&self->_streamOutputOffset = xmmword_241DD6220;
  self->_streamOutputLength = 0;
  v13 = objc_msgSend_count(self->_blockInfos, v11, v12);
  if (!v13)
  {
    v22 = 0;
    goto LABEL_27;
  }

  v14 = v13;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = self->_blockInfos;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v65, v69, 16);
  if (!v16)
  {
    v22 = 0;
    goto LABEL_26;
  }

  v19 = v16;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v63 = *v66;
  do
  {
    v23 = 0;
    do
    {
      if (*v66 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v65 + 1) + 8 * v23);
      v20 += objc_msgSend_decodedLength(v24, v17, v18);
      if (v21)
      {
        objc_msgSend_addObject_(v22, v25, v24);
        self->_sourceLength += objc_msgSend_encodedLength(v24, v27, v28);
        v21 += objc_msgSend_decodedLength(v24, v29, v30);
        v33 = self->_streamOutputOutstandingLength + objc_msgSend_decodedLength(v24, v31, v32);
      }

      else
      {
        if (v20 <= v5)
        {
          self->_sourceOffset += objc_msgSend_encodedLength(v24, v25, v26);
          v21 = 0;
          self->_streamOutputOffset += objc_msgSend_decodedLength(v24, v49, v50);
          goto LABEL_17;
        }

        v34 = objc_alloc(MEMORY[0x277CBEB18]);
        v36 = objc_msgSend_initWithCapacity_(v34, v35, v14);
        v37 = v22;
        v38 = v5;
        v39 = a4;
        v40 = v36;

        objc_msgSend_addObject_(v40, v41, v24);
        self->_sourceLength = objc_msgSend_encodedLength(v24, v42, v43);
        v21 = objc_msgSend_decodedLength(v24, v44, v45);
        v33 = objc_msgSend_decodedLength(v24, v46, v47);
        v48 = v40;
        a4 = v39;
        v5 = v38;
        v22 = v48;
      }

      self->_streamOutputOutstandingLength = v33;
      if (v21 > a4)
      {
        goto LABEL_26;
      }

LABEL_17:
      if (!--v14)
      {
        self->_sourceLength = -1;
        self->_streamOutputOutstandingLength = -1;
      }

      ++v23;
    }

    while (v19 != v23);
    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v65, v69, 16);
    v19 = v51;
  }

  while (v51);
LABEL_26:

LABEL_27:
  currentStreamOutputData = self->_currentStreamOutputData;
  self->_currentStreamOutputData = 0;

  self->_streamOutputDone = 0;
  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = 0;

  streamReadChannelBlock = self->_streamReadChannelBlock;
  v55 = [BUBufferedReadChannelHelper alloc];
  Channel = objc_msgSend_initWithBufferedReadChannel_(v55, v56, self);
  v58 = streamReadChannelBlock[2](streamReadChannelBlock, Channel, v22);
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = v58;

  v60 = self->_streamReadChannel;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = sub_241DC7E3C;
  v64[3] = &unk_278D1DBF0;
  v64[4] = self;
  objc_msgSend_readWithHandler_(v60, v61, v64);
}

- (void)setStreamReadChannelSourceHandler:(id)a3
{
  self->_streamReadChannelSourceHandler = MEMORY[0x245D00360](a3, a2);

  MEMORY[0x2821F96F8]();
}

- (void)readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  readQueue = self->_readQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241DC8050;
  v11[3] = &unk_278D1DC18;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(readQueue, v11);
}

- (void)_readFromOffset:(int64_t)a3 length:(unint64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = (a3 & (a3 >> 63)) + a4;
  v10 = a3 & ~(a3 >> 63);
  objc_msgSend__resetStreamReadChannelIfNeededForOffset_length_(self, v11, v10, v9);
  v32 = 0;
  v13 = objc_msgSend__currentDataIntersectionWithOffset_length_isReadDone_(self, v12, v10, v9, &v32);
  v15 = v13;
  if (v13)
  {
    size = dispatch_data_get_size(v13);
    v10 += size;
    v9 -= size;
    v17 = v32;
  }

  else
  {
    v17 = v32;
    if (v32 != 1)
    {
      goto LABEL_6;
    }
  }

  (*(v8 + 2))(v8, v17 & 1, v15, 0);
  if (v32)
  {
    dispatch_resume(self->_readQueue);
    goto LABEL_12;
  }

LABEL_6:
  objc_msgSend__resetStreamReadChannelIfNeededForOffset_length_(self, v14, v10, v9);
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

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_241DC8314;
  v25[3] = &unk_278D1DC40;
  v25[4] = self;
  v26 = v8;
  v27 = v31;
  v28 = sourceReadBufferSize;
  v29 = v10;
  v30 = v9;
  objc_msgSend_readFromOffset_length_handler_(sourceReadChannel, v24, sourceOffset, sourceReadBufferSize, v25);

  _Block_object_dispose(v31, 8);
LABEL_12:
}

- (id)_currentDataIntersectionWithOffset:(int64_t)a3 length:(unint64_t)a4 isReadDone:(BOOL *)a5
{
  if (__CFADD__(a3, a4))
  {
    v7 = -1;
  }

  else
  {
    v7 = a3 + a4;
  }

  streamOutputOffset = self->_streamOutputOffset;
  if (streamOutputOffset <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = self->_streamOutputOffset;
  }

  streamOutputLength = self->_streamOutputLength;
  v11 = streamOutputLength + streamOutputOffset;
  if (v7 >= streamOutputLength + streamOutputOffset)
  {
    v12 = streamOutputLength + streamOutputOffset;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - v9;
  if (v12 <= v9)
  {
    subrange = 0;
    if (!a5)
    {
      goto LABEL_18;
    }

LABEL_14:
    isStreamOutputDone = objc_msgSend_isStreamOutputDone(self, a2, v13);
    if (v7 <= v11)
    {
      v16 = 1;
    }

    else
    {
      v16 = isStreamOutputDone;
    }

    *a5 = v16;
    goto LABEL_18;
  }

  subrange = dispatch_data_create_subrange(self->_currentStreamOutputData, v9 - streamOutputOffset, v13);
  if (a5)
  {
    goto LABEL_14;
  }

LABEL_18:

  return subrange;
}

@end