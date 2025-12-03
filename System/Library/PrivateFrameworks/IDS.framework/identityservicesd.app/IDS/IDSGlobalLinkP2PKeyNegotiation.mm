@interface IDSGlobalLinkP2PKeyNegotiation
- (NSData)blob;
- (NSString)description;
- (_TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation)init;
- (id)receiveBlob:(id)blob;
@end

@implementation IDSGlobalLinkP2PKeyNegotiation

- (NSString)description
{
  selfCopy = self;
  sub_100893104();

  v3 = sub_100936B28();

  return v3;
}

- (NSData)blob
{
  selfCopy = self;
  v3 = sub_100893320();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    isa = sub_100935E78().super.isa;
    sub_10001C370(v3, v5);
    v6 = isa;
  }

  return v6;
}

- (id)receiveBlob:(id)blob
{
  blobCopy = blob;
  selfCopy = self;
  v6 = sub_100935EA8();
  v8 = v7;

  v9 = sub_1008935A0(v6, v8);
  sub_1007156D8(v6, v8);

  return v9;
}

- (_TtC17identityservicesd30IDSGlobalLinkP2PKeyNegotiation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end