@interface CKDTrafficMetadata
- (NSDate)timestamp;
- (NSDictionary)headers;
- (NSURL)url;
- (void)encodeWithCoder:(id)a3;
- (void)setHeaders:(id)a3;
- (void)setTimestamp:(id)a3;
- (void)setUrl:(id)a3;
@end

@implementation CKDTrafficMetadata

- (NSDate)timestamp
{
  v2 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_225107FA4(&v9 - v4);
  v6 = type metadata accessor for Date();
  isa = 0;
  if (sub_22507C8E8(v5, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return isa;
}

- (void)setTimestamp:(id)a3
{
  v5 = sub_2250B0DFC(&unk_27D719260, &unk_225445B40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Date();
    v10 = 0;
  }

  else
  {
    v9 = type metadata accessor for Date();
    v10 = 1;
  }

  sub_22507C8C0(v8, v10, 1, v9);
  v11 = self;
  sub_225108094(v8);
}

- (NSURL)url
{
  v2 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  sub_2251081A8(&v11 - v4);
  v6 = type metadata accessor for URL();
  v8 = 0;
  if (sub_22507C8E8(v5, 1, v6) != 1)
  {
    URL._bridgeToObjectiveC()(v7);
    v8 = v9;
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v8;
}

- (void)setUrl:(id)a3
{
  v5 = sub_2250B0DFC(&qword_27D7197B8, &unk_225447A60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    v10 = 0;
  }

  else
  {
    v9 = type metadata accessor for URL();
    v10 = 1;
  }

  sub_22507C8C0(v8, v10, 1, v9);
  v11 = self;
  sub_225108304(v8);
}

- (NSDictionary)headers
{
  if (sub_2251084EC())
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setHeaders:(id)a3
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_22510857C(v4);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_225108854(v4);
}

@end