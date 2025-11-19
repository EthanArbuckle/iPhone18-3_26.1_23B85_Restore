@interface TSUReadChannelInputStreamAdapter
- (TSUReadChannelInputStreamAdapter)initWithReadChannel:(id)a3;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation TSUReadChannelInputStreamAdapter

- (TSUReadChannelInputStreamAdapter)initWithReadChannel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSUReadChannelInputStreamAdapter;
  v6 = [(TSUReadChannelInputStreamAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readChannel, a3);
    objc_storeStrong(&v7->_leftoverData, MEMORY[0x277D85CC8]);
  }

  return v7;
}

- (void)dealloc
{
  [(TSUReadChannelInputStreamAdapter *)self close];
  v3.receiver = self;
  v3.super_class = TSUReadChannelInputStreamAdapter;
  [(TSUReadChannelInputStreamAdapter *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = a4;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = a3;
  leftoverData = self->_leftoverData;
  size = dispatch_data_get_size(leftoverData);
  v8 = a4;
  if (size)
  {
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke;
    applier[3] = &unk_2799C7438;
    applier[5] = &v38;
    applier[6] = v37;
    applier[4] = self;
    dispatch_data_apply(leftoverData, applier);
    if (v39[3])
    {
      subrange = MEMORY[0x277D85CC8];
      v10 = MEMORY[0x277D85CC8];
    }

    else
    {
      v11 = self->_leftoverData;
      v12 = dispatch_data_get_size(v11);
      subrange = dispatch_data_create_subrange(v11, a4, v12 - a4);
    }

    v13 = self->_leftoverData;
    self->_leftoverData = subrange;

    v8 = v39[3];
  }

  if (v8 && self->_readChannel)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__17;
    v34 = __Block_byref_object_dispose__17;
    v35 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v14 = dispatch_semaphore_create(0);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke_3;
    aBlock[3] = &unk_2799C7488;
    v24 = &v38;
    v25 = v37;
    aBlock[4] = self;
    v26 = &v30;
    v27 = v28;
    v15 = v14;
    v23 = v15;
    v16 = _Block_copy(aBlock);
    readChannel = self->_readChannel;
    if (readChannel)
    {
      [(TSUReadChannel *)readChannel readFromOffset:self->_offset length:v39[3] handler:v16];
    }

    else
    {
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUReadChannelInputStreamAdapter readToBuffer:size:]"];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUReadChannelInputStreamAdapter.m"];
      [OITSUAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:105 isFatal:0 description:"nil read channels"];

      +[OITSUAssertionHandler logBacktraceThrottled];
      dispatch_semaphore_signal(v15);
    }

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    if (v31[5])
    {
      [MEMORY[0x277CBEAD8] tsu_raiseWithError:?];
    }

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(&v30, 8);

    v8 = v39[3];
  }

  v20 = a4 - v8;
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v38, 8);
  return v20;
}

BOOL __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke(void *a1, int a2, int a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v6);
  *(*(a1[5] + 8) + 24) -= v6;
  *(*(a1[6] + 8) + 24) += v6;
  *(a1[4] + 24) += v6;
  return *(*(a1[5] + 8) + 24) != 0;
}

void __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke_3(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
    }
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke_2;
    v18[3] = &unk_2799C7460;
    v19 = *(a1 + 48);
    v18[4] = *(a1 + 32);
    v20 = &v21;
    dispatch_data_apply(v7, v18);
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      size = dispatch_data_get_size(v7);
      v11 = v22[3];
      if (size > v11)
      {
        v12 = *(*(a1 + 32) + 16);
        subrange = dispatch_data_create_subrange(v7, v11, size - v11);
        concat = dispatch_data_create_concat(v12, subrange);
        v15 = *(a1 + 32);
        v16 = *(v15 + 16);
        *(v15 + 16) = concat;
      }
    }

    _Block_object_dispose(&v21, 8);
  }

  v17 = a2 ^ 1;
  if (v9)
  {
    v17 = 0;
  }

  if ((v17 & 1) == 0 && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    dispatch_semaphore_signal(*(a1 + 40));
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

BOOL __54__TSUReadChannelInputStreamAdapter_readToBuffer_size___block_invoke_2(void *a1, int a2, uint64_t a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v7);
  *(*(a1[5] + 8) + 24) -= v7;
  *(*(a1[6] + 8) + 24) += v7;
  *(a1[4] + 24) += v7;
  *(*(a1[7] + 8) + 24) = v7 + a3;
  return *(*(a1[5] + 8) + 24) != 0;
}

- (void)close
{
  [(TSUReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

- (void)seekToOffset:(int64_t)a3
{
  if (self->_readChannel)
  {
    self->_offset = a3;
    v4 = MEMORY[0x277D85CC8];
    p_leftoverData = &self->_leftoverData;

    objc_storeStrong(p_leftoverData, v4);
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUReadChannelInputStreamAdapter seekToOffset:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUReadChannelInputStreamAdapter.m"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:137 isFatal:0 description:"Not a seekable stream"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }
}

@end