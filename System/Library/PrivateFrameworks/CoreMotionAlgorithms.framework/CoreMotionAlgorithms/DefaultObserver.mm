@interface DefaultObserver
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DefaultObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_valueForKey_(v9, v10, v8, v11);
  if (qword_27EE375E0 != -1)
  {
    sub_245F2ACAC();
  }

  v13 = qword_27EE375D8;
  if (os_log_type_enabled(qword_27EE375D8, OS_LOG_TYPE_INFO))
  {
    v15 = 138543618;
    v16 = v8;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_INFO, "[CMMslDefaultObserver] Received KVO for key,%{public}@,value,%{public}@", &v15, 0x16u);
  }

  sub_245DF9778(a6, v8, v12);

  v14 = *MEMORY[0x277D85DE8];
}

@end