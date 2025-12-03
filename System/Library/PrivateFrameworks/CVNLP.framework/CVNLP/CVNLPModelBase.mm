@interface CVNLPModelBase
- (CVNLPModelBase)initWithOptions:(id)options;
- (id)performanceResults;
- (void)_copy_data_from_blob:(id *)_copy_data_from_blob to:(void *)to;
- (void)_copy_data_from_blob:(id *)_copy_data_from_blob toPtr:(float *)ptr;
- (void)_copy_data_to_blob:(float *)_copy_data_to_blob to:(id *)to;
- (void)_copy_data_to_blob:(id)_copy_data_to_blob toBuffer:(id *)buffer;
- (void)_copy_data_to_blob_repeated:(id)_copy_data_to_blob_repeated to:(id *)to;
@end

@implementation CVNLPModelBase

- (CVNLPModelBase)initWithOptions:(id)options
{
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = CVNLPModelBase;
  v5 = [(CVNLPModelBase *)&v17 init];
  if (v5)
  {
    v6 = [CVNLPPerformance alloc];
    v9 = objc_msgSend_initWithOptions_(v6, v7, optionsCopy, v8);
    perfResults = v5->_perfResults;
    v5->_perfResults = v9;

    v14 = objc_msgSend_copy(optionsCopy, v11, v12, v13);
    options = v5->_options;
    v5->_options = v14;
  }

  return v5;
}

- (void)_copy_data_from_blob:(id *)_copy_data_from_blob to:(void *)to
{
  v7 = *&_copy_data_from_blob->var12;
  v29 = *&_copy_data_from_blob->var10;
  v30 = v7;
  v31 = *&_copy_data_from_blob->var14;
  v8 = *&_copy_data_from_blob->var4;
  v25 = *&_copy_data_from_blob->var3[2];
  v26 = v8;
  v9 = *&_copy_data_from_blob->var8;
  v27 = *&_copy_data_from_blob->var6;
  v28 = v9;
  v10 = *_copy_data_from_blob->var2;
  v21 = *&_copy_data_from_blob->var0;
  v22 = v10;
  v11 = *_copy_data_from_blob->var3;
  v23 = *&_copy_data_from_blob->var2[2];
  v24 = v11;
  v12 = objc_msgSend__blob_size_(self, a2, &v21, to);
  v13 = *to;
  v14 = (*(to + 1) - *to) >> 2;
  v15 = (v12 - v14);
  if (v12 <= v14)
  {
    if (v12 < v14)
    {
      *(to + 1) = v13 + 4 * v12;
    }
  }

  else
  {
    sub_1D9DAA550(to, v15);
    v13 = *to;
  }

  v16 = *&_copy_data_from_blob->var12;
  v29 = *&_copy_data_from_blob->var10;
  v30 = v16;
  v31 = *&_copy_data_from_blob->var14;
  v17 = *&_copy_data_from_blob->var4;
  v25 = *&_copy_data_from_blob->var3[2];
  v26 = v17;
  v18 = *&_copy_data_from_blob->var8;
  v27 = *&_copy_data_from_blob->var6;
  v28 = v18;
  v19 = *_copy_data_from_blob->var2;
  v21 = *&_copy_data_from_blob->var0;
  v22 = v19;
  v20 = *_copy_data_from_blob->var3;
  v23 = *&_copy_data_from_blob->var2[2];
  v24 = v20;
  objc_msgSend__copy_data_from_blob_toPtr_(self, v15, &v21, v13);
}

- (void)_copy_data_from_blob:(id *)_copy_data_from_blob toPtr:(float *)ptr
{
  v6 = *&_copy_data_from_blob->var12;
  v12[8] = *&_copy_data_from_blob->var10;
  v12[9] = v6;
  v13 = *&_copy_data_from_blob->var14;
  v7 = *&_copy_data_from_blob->var4;
  v12[4] = *&_copy_data_from_blob->var3[2];
  v12[5] = v7;
  v8 = *&_copy_data_from_blob->var8;
  v12[6] = *&_copy_data_from_blob->var6;
  v12[7] = v8;
  v9 = *_copy_data_from_blob->var2;
  v12[0] = *&_copy_data_from_blob->var0;
  v12[1] = v9;
  v10 = *_copy_data_from_blob->var3;
  v12[2] = *&_copy_data_from_blob->var2[2];
  v12[3] = v10;
  v11 = objc_msgSend__blob_size_(self, a2, v12, ptr);
  memcpy(ptr, _copy_data_from_blob->var0, 4 * v11);
}

- (void)_copy_data_to_blob:(float *)_copy_data_to_blob to:(id *)to
{
  var0 = to->var0;
  v6 = *&to->var12;
  v12[8] = *&to->var10;
  v12[9] = v6;
  v13 = *&to->var14;
  v7 = *&to->var4;
  v12[4] = *&to->var3[2];
  v12[5] = v7;
  v8 = *&to->var8;
  v12[6] = *&to->var6;
  v12[7] = v8;
  v9 = *to->var2;
  v12[0] = *&to->var0;
  v12[1] = v9;
  v10 = *to->var3;
  v12[2] = *&to->var2[2];
  v12[3] = v10;
  v11 = objc_msgSend__blob_size_(self, a2, v12, to);
  memcpy(var0, _copy_data_to_blob, 4 * v11);
}

- (void)_copy_data_to_blob:(id)_copy_data_to_blob toBuffer:(id *)buffer
{
  _copy_data_to_blobCopy = _copy_data_to_blob;
  var0 = buffer->var0;
  v8 = *&buffer->var12;
  v21[8] = *&buffer->var10;
  v21[9] = v8;
  v22 = *&buffer->var14;
  v9 = *&buffer->var4;
  v21[4] = *&buffer->var3[2];
  v21[5] = v9;
  v10 = *&buffer->var8;
  v21[6] = *&buffer->var6;
  v21[7] = v10;
  v11 = *buffer->var2;
  v21[0] = *&buffer->var0;
  v21[1] = v11;
  v12 = *buffer->var3;
  v21[2] = *&buffer->var2[2];
  v21[3] = v12;
  v15 = objc_msgSend__blob_size_(self, v13, v21, v14);
  v16 = _copy_data_to_blobCopy;
  v20 = objc_msgSend_bytes(v16, v17, v18, v19);
  memcpy(var0, v20, 4 * v15);
}

- (void)_copy_data_to_blob_repeated:(id)_copy_data_to_blob_repeated to:(id *)to
{
  _copy_data_to_blob_repeatedCopy = _copy_data_to_blob_repeated;
  var0 = to->var0;
  v8 = *&to->var12;
  v28[8] = *&to->var10;
  v28[9] = v8;
  v29 = *&to->var14;
  v9 = *&to->var4;
  v28[4] = *&to->var3[2];
  v28[5] = v9;
  v10 = *&to->var8;
  v28[6] = *&to->var6;
  v28[7] = v10;
  v11 = *to->var2;
  v28[0] = *&to->var0;
  v28[1] = v11;
  v12 = *to->var3;
  v28[2] = *&to->var2[2];
  v28[3] = v12;
  v15 = objc_msgSend__blob_size_(self, v13, v28, v14);
  v16 = _copy_data_to_blob_repeatedCopy;
  v20 = objc_msgSend_bytes(v16, v17, v18, v19);
  v24 = objc_msgSend_length(_copy_data_to_blob_repeatedCopy, v21, v22, v23);
  if (v24 >> 2 <= v15)
  {
    v25 = 0;
    v26 = v24 & 0xFFFFFFFFFFFFFFFCLL;
    v27 = v15 / (v24 >> 2);
    do
    {
      memcpy(var0, v20, v26);
      ++v25;
      var0 += v26;
    }

    while (v25 < v27);
  }
}

- (id)performanceResults
{
  v4 = objc_msgSend_perfResults(self, a2, v2, v3);
  v8 = objc_msgSend_results(v4, v5, v6, v7);

  return v8;
}

@end