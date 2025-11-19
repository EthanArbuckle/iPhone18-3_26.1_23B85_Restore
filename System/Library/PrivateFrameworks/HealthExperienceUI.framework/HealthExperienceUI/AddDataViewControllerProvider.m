@interface AddDataViewControllerProvider
- (id)addDataViewControllerForDisplayType:(id)a3;
@end

@implementation AddDataViewControllerProvider

- (id)addDataViewControllerForDisplayType:(id)a3
{
  v5 = sub_1BA4A1728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *self->healthStore;
  v10 = objc_opt_self();
  v11 = a3;

  v12 = [v10 sharedInstanceForHealthStore_];
  sub_1BA4A1718();
  v13 = sub_1BA4A16B8();
  (*(v6 + 8))(v8, v5);
  v14 = [v11 wd:v9 addDataViewControllerWithHealthStore:v12 healthToolBox:v13 initialStartDate:?];

  return v14;
}

@end