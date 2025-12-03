@interface DefaultObserver
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation DefaultObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v19 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  v12 = objc_msgSend_valueForKey_(objectCopy, v10, pathCopy, v11);
  if (qword_27EE375E0 != -1)
  {
    sub_245F2ACAC();
  }

  v13 = qword_27EE375D8;
  if (os_log_type_enabled(qword_27EE375D8, OS_LOG_TYPE_INFO))
  {
    v15 = 138543618;
    v16 = pathCopy;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_INFO, "[CMMslDefaultObserver] Received KVO for key,%{public}@,value,%{public}@", &v15, 0x16u);
  }

  sub_245DF9778(context, pathCopy, v12);

  v14 = *MEMORY[0x277D85DE8];
}

@end