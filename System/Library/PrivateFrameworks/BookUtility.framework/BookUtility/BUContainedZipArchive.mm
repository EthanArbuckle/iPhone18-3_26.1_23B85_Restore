@interface BUContainedZipArchive
+ (id)zipArchiveFromEntry:(id)entry zipArchive:(id)archive options:(unint64_t)options error:(id *)error;
- (BUContainedZipArchive)initWithEntry:(id)entry zipArchive:(id)archive options:(unint64_t)options;
- (id)readChannelForEntry:(id)entry validateCRC:(BOOL)c;
- (id)streamReadChannelForEntry:(id)entry validateCRC:(BOOL)c;
@end

@implementation BUContainedZipArchive

+ (id)zipArchiveFromEntry:(id)entry zipArchive:(id)archive options:(unint64_t)options error:(id *)error
{
  entryCopy = entry;
  archiveCopy = archive;
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
  v12 = [self alloc];
  v15 = objc_msgSend_initWithEntry_zipArchive_options_(v12, v13, entryCopy, archiveCopy, options);
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

  if (error && !v35[5])
  {
    v20 = v29[5];
    if (v20)
    {
      *error = v20;
    }

    else
    {
      v21 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v14, 0);
      *error = v21;
    }
  }

  v22 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v22;
}

- (BUContainedZipArchive)initWithEntry:(id)entry zipArchive:(id)archive options:(unint64_t)options
{
  entryCopy = entry;
  archiveCopy = archive;
  v11 = archiveCopy;
  selfCopy = 0;
  if (entryCopy && archiveCopy)
  {
    v16.receiver = self;
    v16.super_class = BUContainedZipArchive;
    v13 = [(BUZipArchive *)&v16 initWithOptions:options];
    p_isa = &v13->super.super.isa;
    if (v13)
    {
      objc_storeStrong(&v13->_zipArchive, archive);
      objc_storeStrong(p_isa + 6, entry);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)readChannelForEntry:(id)entry validateCRC:(BOOL)c
{
  v6.receiver = self;
  v6.super_class = BUContainedZipArchive;
  v4 = [(BUZipArchive *)&v6 readChannelForEntry:entry validateCRC:0];

  return v4;
}

- (id)streamReadChannelForEntry:(id)entry validateCRC:(BOOL)c
{
  v6.receiver = self;
  v6.super_class = BUContainedZipArchive;
  v4 = [(BUZipArchive *)&v6 streamReadChannelForEntry:entry validateCRC:0];

  return v4;
}

@end