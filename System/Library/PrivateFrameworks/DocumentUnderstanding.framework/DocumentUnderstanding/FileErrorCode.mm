@interface FileErrorCode
+ (void)handleError:(id)a3;
@end

@implementation FileErrorCode

+ (void)handleError:(id)a3
{
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = objc_msgSend_code(v5, v7, v8, v9, v10);
  v15 = objc_msgSend_initWithFormat_(v6, v12, @"e%04td:", v13, v14, v11);
  NSSelectorFromString(v15);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17, v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, a1, @"DUPaths.m", 88, @"Terminating in DUPaths due to unrecognized error %@", v5);
  }

  v20 = NSSelectorFromString(v15);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_232CCE274;
  aBlock[3] = &unk_2789A7BA8;
  v28 = v5;
  v21 = v5;
  v22 = _Block_copy(aBlock);
  objc_msgSend_performSelector_withObject_(a1, v23, v20, v22, v24);
}

@end