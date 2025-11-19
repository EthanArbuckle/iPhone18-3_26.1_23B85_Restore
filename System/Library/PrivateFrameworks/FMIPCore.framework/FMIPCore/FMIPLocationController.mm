@interface FMIPLocationController
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation FMIPLocationController

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v6 = a3;
  v7 = self;
  sub_24A6AEC8C(a4);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_24A679170(0, &qword_27EF5D830, 0x277CE41F8);
  v6 = sub_24A82D244();
  v7 = a3;
  v8 = self;
  sub_24A6AF364(v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_24A7C7778(v8);
}

@end