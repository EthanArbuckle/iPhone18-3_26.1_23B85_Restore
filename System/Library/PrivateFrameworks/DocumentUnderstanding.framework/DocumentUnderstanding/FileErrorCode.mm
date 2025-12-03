@interface FileErrorCode
+ (void)handleError:(id)error;
@end

@implementation FileErrorCode

+ (void)handleError:(id)error
{
  errorCopy = error;
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = objc_msgSend_code(errorCopy, v7, v8, v9, v10);
  v15 = objc_msgSend_initWithFormat_(v6, v12, @"e%04td:", v13, v14, v11);
  NSSelectorFromString(v15);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17, v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"DUPaths.m", 88, @"Terminating in DUPaths due to unrecognized error %@", errorCopy);
  }

  v20 = NSSelectorFromString(v15);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_232CCE274;
  aBlock[3] = &unk_2789A7BA8;
  v28 = errorCopy;
  v21 = errorCopy;
  v22 = _Block_copy(aBlock);
  objc_msgSend_performSelector_withObject_(self, v23, v20, v22, v24);
}

@end