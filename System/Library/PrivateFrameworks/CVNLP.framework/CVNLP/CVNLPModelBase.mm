@interface CVNLPModelBase
- (CVNLPModelBase)initWithOptions:(id)a3;
- (id)performanceResults;
- (void)_copy_data_from_blob:(id *)a3 to:(void *)a4;
- (void)_copy_data_from_blob:(id *)a3 toPtr:(float *)a4;
- (void)_copy_data_to_blob:(float *)a3 to:(id *)a4;
- (void)_copy_data_to_blob:(id)a3 toBuffer:(id *)a4;
- (void)_copy_data_to_blob_repeated:(id)a3 to:(id *)a4;
@end

@implementation CVNLPModelBase

- (CVNLPModelBase)initWithOptions:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CVNLPModelBase;
  v5 = [(CVNLPModelBase *)&v17 init];
  if (v5)
  {
    v6 = [CVNLPPerformance alloc];
    v9 = objc_msgSend_initWithOptions_(v6, v7, v4, v8);
    perfResults = v5->_perfResults;
    v5->_perfResults = v9;

    v14 = objc_msgSend_copy(v4, v11, v12, v13);
    options = v5->_options;
    v5->_options = v14;
  }

  return v5;
}

- (void)_copy_data_from_blob:(id *)a3 to:(void *)a4
{
  v7 = *&a3->var12;
  v29 = *&a3->var10;
  v30 = v7;
  v31 = *&a3->var14;
  v8 = *&a3->var4;
  v25 = *&a3->var3[2];
  v26 = v8;
  v9 = *&a3->var8;
  v27 = *&a3->var6;
  v28 = v9;
  v10 = *a3->var2;
  v21 = *&a3->var0;
  v22 = v10;
  v11 = *a3->var3;
  v23 = *&a3->var2[2];
  v24 = v11;
  v12 = objc_msgSend__blob_size_(self, a2, &v21, a4);
  v13 = *a4;
  v14 = (*(a4 + 1) - *a4) >> 2;
  v15 = (v12 - v14);
  if (v12 <= v14)
  {
    if (v12 < v14)
    {
      *(a4 + 1) = v13 + 4 * v12;
    }
  }

  else
  {
    sub_1D9DAA550(a4, v15);
    v13 = *a4;
  }

  v16 = *&a3->var12;
  v29 = *&a3->var10;
  v30 = v16;
  v31 = *&a3->var14;
  v17 = *&a3->var4;
  v25 = *&a3->var3[2];
  v26 = v17;
  v18 = *&a3->var8;
  v27 = *&a3->var6;
  v28 = v18;
  v19 = *a3->var2;
  v21 = *&a3->var0;
  v22 = v19;
  v20 = *a3->var3;
  v23 = *&a3->var2[2];
  v24 = v20;
  objc_msgSend__copy_data_from_blob_toPtr_(self, v15, &v21, v13);
}

- (void)_copy_data_from_blob:(id *)a3 toPtr:(float *)a4
{
  v6 = *&a3->var12;
  v12[8] = *&a3->var10;
  v12[9] = v6;
  v13 = *&a3->var14;
  v7 = *&a3->var4;
  v12[4] = *&a3->var3[2];
  v12[5] = v7;
  v8 = *&a3->var8;
  v12[6] = *&a3->var6;
  v12[7] = v8;
  v9 = *a3->var2;
  v12[0] = *&a3->var0;
  v12[1] = v9;
  v10 = *a3->var3;
  v12[2] = *&a3->var2[2];
  v12[3] = v10;
  v11 = objc_msgSend__blob_size_(self, a2, v12, a4);
  memcpy(a4, a3->var0, 4 * v11);
}

- (void)_copy_data_to_blob:(float *)a3 to:(id *)a4
{
  var0 = a4->var0;
  v6 = *&a4->var12;
  v12[8] = *&a4->var10;
  v12[9] = v6;
  v13 = *&a4->var14;
  v7 = *&a4->var4;
  v12[4] = *&a4->var3[2];
  v12[5] = v7;
  v8 = *&a4->var8;
  v12[6] = *&a4->var6;
  v12[7] = v8;
  v9 = *a4->var2;
  v12[0] = *&a4->var0;
  v12[1] = v9;
  v10 = *a4->var3;
  v12[2] = *&a4->var2[2];
  v12[3] = v10;
  v11 = objc_msgSend__blob_size_(self, a2, v12, a4);
  memcpy(var0, a3, 4 * v11);
}

- (void)_copy_data_to_blob:(id)a3 toBuffer:(id *)a4
{
  v6 = a3;
  var0 = a4->var0;
  v8 = *&a4->var12;
  v21[8] = *&a4->var10;
  v21[9] = v8;
  v22 = *&a4->var14;
  v9 = *&a4->var4;
  v21[4] = *&a4->var3[2];
  v21[5] = v9;
  v10 = *&a4->var8;
  v21[6] = *&a4->var6;
  v21[7] = v10;
  v11 = *a4->var2;
  v21[0] = *&a4->var0;
  v21[1] = v11;
  v12 = *a4->var3;
  v21[2] = *&a4->var2[2];
  v21[3] = v12;
  v15 = objc_msgSend__blob_size_(self, v13, v21, v14);
  v16 = v6;
  v20 = objc_msgSend_bytes(v16, v17, v18, v19);
  memcpy(var0, v20, 4 * v15);
}

- (void)_copy_data_to_blob_repeated:(id)a3 to:(id *)a4
{
  v6 = a3;
  var0 = a4->var0;
  v8 = *&a4->var12;
  v28[8] = *&a4->var10;
  v28[9] = v8;
  v29 = *&a4->var14;
  v9 = *&a4->var4;
  v28[4] = *&a4->var3[2];
  v28[5] = v9;
  v10 = *&a4->var8;
  v28[6] = *&a4->var6;
  v28[7] = v10;
  v11 = *a4->var2;
  v28[0] = *&a4->var0;
  v28[1] = v11;
  v12 = *a4->var3;
  v28[2] = *&a4->var2[2];
  v28[3] = v12;
  v15 = objc_msgSend__blob_size_(self, v13, v28, v14);
  v16 = v6;
  v20 = objc_msgSend_bytes(v16, v17, v18, v19);
  v24 = objc_msgSend_length(v6, v21, v22, v23);
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