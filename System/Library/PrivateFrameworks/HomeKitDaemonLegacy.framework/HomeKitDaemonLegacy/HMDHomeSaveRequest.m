@interface HMDHomeSaveRequest
- (id)_initWithHome:(id)a3 reason:(id)a4 information:(id)a5 postSyncNotification:(BOOL)a6 objectChange:(BOOL)a7 saveOptions:(unint64_t)a8;
- (void)_updateSaveOptions:(BOOL)a3 reason:(id)a4;
@end

@implementation HMDHomeSaveRequest

- (void)_updateSaveOptions:(BOOL)a3 reason:(id)a4
{
  if (a3)
  {
    self->_saveOptions |= 2uLL;
  }

  if (![HMDHomeManager doesSaveReasonAffectOnlyLocalData:a4])
  {
    self->_saveOptions |= 1uLL;
  }
}

- (id)_initWithHome:(id)a3 reason:(id)a4 information:(id)a5 postSyncNotification:(BOOL)a6 objectChange:(BOOL)a7 saveOptions:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = HMDHomeSaveRequest;
  v17 = [(HMDHomeSaveRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_home, a3);
    objc_storeStrong(&v18->_reason, a4);
    objc_storeStrong(&v18->_information, a5);
    v18->_objectChange = a7;
    v18->_incrementGeneration = [HMDHomeManager shouldIncrementGenerationCounterForReason:v15];
    v18->_saveOptions = a8;
  }

  return v18;
}

@end