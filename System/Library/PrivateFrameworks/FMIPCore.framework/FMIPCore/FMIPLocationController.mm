@interface FMIPLocationController
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation FMIPLocationController

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  managerCopy = manager;
  selfCopy = self;
  sub_24A6AEC8C(status);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_24A679170(0, &qword_27EF5D830, 0x277CE41F8);
  v6 = sub_24A82D244();
  managerCopy = manager;
  selfCopy = self;
  sub_24A6AF364(v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_24A7C7778(errorCopy);
}

@end