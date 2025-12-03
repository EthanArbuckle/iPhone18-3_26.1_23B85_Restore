@interface GESSIOUSDZLoader
- (BOOL)run:(id)run output:(id)output;
- (BOOL)setErrorCallback:(id)callback;
- (BOOL)setProgressCallback:(id)callback;
@end

@implementation GESSIOUSDZLoader

- (BOOL)setProgressCallback:(id)callback
{
  v4 = MEMORY[0x24C254FE0](callback, a2);
  progress_cb = self->_progress_cb;
  self->_progress_cb = v4;

  return 1;
}

- (BOOL)setErrorCallback:(id)callback
{
  v4 = MEMORY[0x24C254FE0](callback, a2);
  error_cb = self->_error_cb;
  self->_error_cb = v4;

  return 1;
}

- (BOOL)run:(id)run output:(id)output
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  runCopy = run;
  outputCopy = output;
  if (objc_msgSend_meshType(outputCopy, v7, v8, v9) == 1 || objc_msgSend_meshType(outputCopy, v10, v11, v12) == 11)
  {
    operator new();
  }

  if (selfCopy->_error_cb)
  {
    v22 = *MEMORY[0x277CCA450];
    v23 = @"Only support triangle/quad mesh currently.";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, &v23, &v22, 1);
    v15 = MEMORY[0x277CCA9B8];
    v16 = sub_24BE7C890();
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, v16, 304, v14);

    (*(selfCopy->_error_cb + 2))();
  }

  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

@end