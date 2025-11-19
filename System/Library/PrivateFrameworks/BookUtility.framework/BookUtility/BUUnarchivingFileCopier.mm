@interface BUUnarchivingFileCopier
- (BOOL)copyToURL:(id)a3 error:(id *)a4;
- (BOOL)countTotalFileSize:(unint64_t *)a3 totalFileCount:(unint64_t *)a4;
- (BUFileCopierDelegate)delegate;
- (BUUnarchivingFileCopier)initWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
@end

@implementation BUUnarchivingFileCopier

- (BUUnarchivingFileCopier)initWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v20.receiver = self;
  v20.super_class = BUUnarchivingFileCopier;
  v10 = [(BUUnarchivingFileCopier *)&v20 init];
  if (v10)
  {
    v19 = 0;
    v11 = objc_msgSend_zipArchiveFromURL_options_error_(BUZipFileArchive, v9, v8, a4, &v19);
    v12 = v19;
    if (v12)
    {
      p_super = BUZipLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1314(v8, v12, p_super);
      }
    }

    else
    {
      v14 = v11;
      p_super = &v10->_zipArchive->super.super;
      v10->_zipArchive = v14;
    }

    if (a5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (a5)
    {
LABEL_9:
      v15 = v12;
      *a5 = v12;
    }
  }

  if (v12)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  v17 = v16;

  return v17;
}

- (BOOL)countTotalFileSize:(unint64_t *)a3 totalFileCount:(unint64_t *)a4
{
  v6 = objc_msgSend_zipArchive(self, a2, a3);
  v9 = v6;
  if (v6)
  {
    if (a3)
    {
      *a3 = objc_msgSend_totalSize(v6, v7, v8);
    }

    if (a4)
    {
      *a4 = objc_msgSend_entriesCount(v9, v7, v8);
    }
  }

  return v9 != 0;
}

- (BOOL)copyToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = objc_msgSend_zipArchive(self, v7, v8);
  if (v11)
  {
    v12 = objc_msgSend_delegate(self, v9, v10);
    v15 = objc_msgSend_zipArchive(self, v13, v14);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_241DC8A84;
    v22[3] = &unk_278D1DC68;
    v23 = v12;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_241DC8AE0;
    v20[3] = &unk_278D1DC90;
    v21 = v23;
    v16 = v23;
    Entry = objc_msgSend_extractToURL_error_shouldExtractEntry_didExtractEntry_(v15, v17, v6, a4, v22, v20);
  }

  else
  {
    Entry = 0;
  }

  return Entry;
}

- (BUFileCopierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end