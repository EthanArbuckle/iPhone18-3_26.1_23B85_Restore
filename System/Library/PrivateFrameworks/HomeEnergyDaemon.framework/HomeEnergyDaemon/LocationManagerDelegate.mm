@interface LocationManagerDelegate
- (_TtC16HomeEnergyDaemon23LocationManagerDelegate)init;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation LocationManagerDelegate

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22B2AB9B8(v4);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_22B128014(0, &qword_2814085C8, 0x277CE41F8);
  v6 = sub_22B360A5C();
  v7 = a3;
  v8 = self;
  sub_22B2ABBF4(v6);
}

- (_TtC16HomeEnergyDaemon23LocationManagerDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocationManagerDelegate();
  return [(LocationManagerDelegate *)&v3 init];
}

@end