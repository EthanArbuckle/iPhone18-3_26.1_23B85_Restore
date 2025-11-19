@interface DefaultObserver
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DefaultObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 valueForKey:v8];
  if (qword_27FA115A0 != -1)
  {
    dispatch_once(&qword_27FA115A0, &unk_286C1DEC8);
  }

  v11 = qword_27FA11598;
  if (os_log_type_enabled(qword_27FA11598, OS_LOG_TYPE_INFO))
  {
    *v17 = 138543618;
    *&v17[4] = v8;
    *&v17[12] = 2114;
    *&v17[14] = v10;
    _os_log_impl(&dword_25AAE5000, v11, OS_LOG_TYPE_INFO, "[CMMslDefaultObserver] Received KVO for key,%{public}@,value,%{public}@", v17, 0x16u);
  }

  v12 = v8;
  v13 = [v10 copy];
  [*(a6 + 2) setObject:v13 forKeyedSubscript:v12];

  if ((*a6 & 1) == 0)
  {
    *a6 = 1;
    v14 = dispatch_time(0, 10000000000);
    if (qword_27FA11590 != -1)
    {
      dispatch_once(&qword_27FA11590, &unk_286C1DEA8);
    }

    v15 = qword_27FA11588;
    *v17 = MEMORY[0x277D85DD0];
    *&v17[8] = 3221225472;
    *&v17[16] = sub_25AAE99B8;
    v18 = &unk_279922EF8;
    v19 = a6;
    dispatch_after(v14, v15, v17);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end