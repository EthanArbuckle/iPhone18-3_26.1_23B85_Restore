@interface BUContainedZipArchive
+ (id)zipArchiveFromEntry:(id)a3 zipArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BUContainedZipArchive)initWithEntry:(id)a3 zipArchive:(id)a4 options:(unint64_t)a5;
- (id)readChannelForEntry:(id)a3 validateCRC:(BOOL)a4;
- (id)streamReadChannelForEntry:(id)a3 validateCRC:(BOOL)a4;
@end

@implementation BUContainedZipArchive

+ (id)zipArchiveFromEntry:(id)a3 zipArchive:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_241DCAF64;
  v38 = sub_241DCAF74;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_241DCAF64;
  v32 = sub_241DCAF74;
  v33 = 0;
  v12 = [a1 alloc];
  v15 = objc_msgSend_initWithEntry_zipArchive_options_(v12, v13, v10, v11, a5);
  if (v15)
  {
    v16 = dispatch_group_create();
    dispatch_group_enter(v16);
    v17 = dispatch_get_global_queue(0, 0);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_241DCAF7C;
    v24[3] = &unk_278D1DD30;
    v26 = &v34;
    v27 = &v28;
    v18 = v16;
    v25 = v18;
    objc_msgSend_readArchiveWithQueue_completion_(v15, v19, v17, v24);
    dispatch_group_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (a6 && !v35[5])
  {
    v20 = v29[5];
    if (v20)
    {
      *a6 = v20;
    }

    else
    {
      v21 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v14, 0);
      *a6 = v21;
    }
  }

  v22 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v22;
}

- (BUContainedZipArchive)initWithEntry:(id)a3 zipArchive:(id)a4 options:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    v16.receiver = self;
    v16.super_class = BUContainedZipArchive;
    v13 = [(BUZipArchive *)&v16 initWithOptions:a5];
    p_isa = &v13->super.super.isa;
    if (v13)
    {
      objc_storeStrong(&v13->_zipArchive, a4);
      objc_storeStrong(p_isa + 6, a3);
    }

    self = p_isa;
    v12 = self;
  }

  return v12;
}

- (id)readChannelForEntry:(id)a3 validateCRC:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = BUContainedZipArchive;
  v4 = [(BUZipArchive *)&v6 readChannelForEntry:a3 validateCRC:0];

  return v4;
}

- (id)streamReadChannelForEntry:(id)a3 validateCRC:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = BUContainedZipArchive;
  v4 = [(BUZipArchive *)&v6 streamReadChannelForEntry:a3 validateCRC:0];

  return v4;
}

@end