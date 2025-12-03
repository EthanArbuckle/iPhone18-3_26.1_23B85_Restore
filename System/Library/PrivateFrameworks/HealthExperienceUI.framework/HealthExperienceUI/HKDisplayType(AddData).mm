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
  profile = [v9 profile];
  unitController = [profile unitController];
  profile2 = [v9 profile];

  dateCache = [profile2 dateCache];
  v15 = [self wd_addDataViewControllerWithHealthStore:v10 unitController:unitController initialStartDate:v8 dateCache:dateCache];

  return v15;
}

- (id)wd_addDataViewControllerWithHealthStore:()AddData unitController:initialStartDate:dateCache:
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [objc_alloc(objc_msgSend(self "wd_addDataViewControllerClass"))];

  return v14;
}

@end