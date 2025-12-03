@interface LocationManagerDelegate
- (_TtC16HomeEnergyDaemon23LocationManagerDelegate)init;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationManagerDelegate

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_22B2AB9B8(authorizationCopy);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_22B128014(0, &qword_2814085C8, 0x277CE41F8);
  v6 = sub_22B360A5C();
  managerCopy = manager;
  selfCopy = self;
  sub_22B2ABBF4(v6);
}

- (_TtC16HomeEnergyDaemon23LocationManagerDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocationManagerDelegate();
  return [(LocationManagerDelegate *)&v3 init];
}

@end