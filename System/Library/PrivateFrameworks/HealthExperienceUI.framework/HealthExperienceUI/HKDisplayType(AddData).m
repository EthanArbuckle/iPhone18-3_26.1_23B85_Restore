@interface HKDisplayType(AddData)
- (id)wd_addDataViewControllerWithHealthStore:()AddData healthToolBox:initialStartDate:;
- (id)wd_addDataViewControllerWithHealthStore:()AddData unitController:initialStartDate:dateCache:;
@end

@implementation HKDisplayType(AddData)

- (id)wd_addDataViewControllerWithHealthStore:()AddData healthToolBox:initialStartDate:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 profile];
  v12 = [v11 unitController];
  v13 = [v9 profile];

  v14 = [v13 dateCache];
  v15 = [a1 wd_addDataViewControllerWithHealthStore:v10 unitController:v12 initialStartDate:v8 dateCache:v14];

  return v15;
}

- (id)wd_addDataViewControllerWithHealthStore:()AddData unitController:initialStartDate:dateCache:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [objc_alloc(objc_msgSend(a1 "wd_addDataViewControllerClass"))];

  return v14;
}

@end