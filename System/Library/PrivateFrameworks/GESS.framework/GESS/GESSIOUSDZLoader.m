@interface GESSIOUSDZLoader
- (BOOL)run:(id)a3 output:(id)a4;
- (BOOL)setErrorCallback:(id)a3;
- (BOOL)setProgressCallback:(id)a3;
@end

@implementation GESSIOUSDZLoader

- (BOOL)setProgressCallback:(id)a3
{
  v4 = MEMORY[0x24C254FE0](a3, a2);
  progress_cb = self->_progress_cb;
  self->_progress_cb = v4;

  return 1;
}

- (BOOL)setErrorCallback:(id)a3
{
  v4 = MEMORY[0x24C254FE0](a3, a2);
  error_cb = self->_error_cb;
  self->_error_cb = v4;

  return 1;
}

- (BOOL)run:(id)a3 output:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v21 = self;
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_meshType(v6, v7, v8, v9) == 1 || objc_msgSend_meshType(v6, v10, v11, v12) == 11)
  {
    operator new();
  }

  if (v21->_error_cb)
  {
    v22 = *MEMORY[0x277CCA450];
    v23 = @"Only support triangle/quad mesh currently.";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, &v23, &v22, 1);
    v15 = MEMORY[0x277CCA9B8];
    v16 = sub_24BE7C890();
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, v16, 304, v14);

    (*(v21->_error_cb + 2))();
  }

  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

@end