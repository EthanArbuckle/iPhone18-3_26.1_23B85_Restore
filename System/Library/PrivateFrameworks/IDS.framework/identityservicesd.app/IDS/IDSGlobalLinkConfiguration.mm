@interface IDSGlobalLinkConfiguration
- (BOOL)isReliableUnicastClient;
- (BOOL)isReliableUnicastSession;
- (BOOL)sharedSessionHasJoined;
- (IDSLinkSelectionStrategy)linkSelectionStrategy;
- (NSData)idsContextBlob;
- (NSDate)timeBase;
- (NSDictionary)pluginOptionsByPluginName;
- (NSString)cellInterfaceName;
- (void)configureGlobalLink:(id)link;
- (void)reset;
- (void)setCellInterfaceName:(id)name;
- (void)setIdsContextBlob:(id)blob;
- (void)setIsReliableUnicastClient:(BOOL)client;
- (void)setIsReliableUnicastSession:(BOOL)session;
- (void)setLinkSelectionStrategy:(id)strategy;
- (void)setPluginOptionsByPluginName:(id)name;
- (void)setPluginOptionsWithPluginName:(id)name options:(id)options;
- (void)setSharedSessionHasJoined:(BOOL)joined;
- (void)setTimeBase:(id)base;
@end

@implementation IDSGlobalLinkConfiguration

- (BOOL)sharedSessionHasJoined
{
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_sharedSessionHasJoined;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSharedSessionHasJoined:(BOOL)joined
{
  v5 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_sharedSessionHasJoined;
  swift_beginAccess();
  *(self + v5) = joined;
}

- (NSDictionary)pluginOptionsByPluginName
{
  swift_beginAccess();

  sub_100706B30(&qword_100CB62A0);
  v2.super.isa = sub_100936A58().super.isa;

  return v2.super.isa;
}

- (void)setPluginOptionsByPluginName:(id)name
{
  sub_100706B30(&qword_100CB62A0);
  v4 = sub_100936A78();
  v5 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_pluginOptionsByPluginName;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (NSString)cellInterfaceName
{
  v2 = self + OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_cellInterfaceName;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_100936B28();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCellInterfaceName:(id)name
{
  if (name)
  {
    v4 = sub_100936B38();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_cellInterfaceName);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSData)idsContextBlob
{
  v2 = (self + OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_idsContextBlob);
  swift_beginAccess();
  v3 = 0;
  v4 = v2[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v2;
    sub_100715738(v5, v4);
    isa = sub_100935E78().super.isa;
    sub_10001C370(v5, v4);
    v3 = isa;
  }

  return v3;
}

- (void)setIdsContextBlob:(id)blob
{
  blobCopy = blob;
  if (blob)
  {
    selfCopy = self;
    v6 = blobCopy;
    blobCopy = sub_100935EA8();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_idsContextBlob);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = blobCopy;
  v10[1] = v8;
  sub_10001C370(v11, v12);
}

- (BOOL)isReliableUnicastSession
{
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_isReliableUnicastSession;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsReliableUnicastSession:(BOOL)session
{
  v5 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_isReliableUnicastSession;
  swift_beginAccess();
  *(self + v5) = session;
}

- (BOOL)isReliableUnicastClient
{
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_isReliableUnicastClient;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsReliableUnicastClient:(BOOL)client
{
  v5 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_isReliableUnicastClient;
  swift_beginAccess();
  *(self + v5) = client;
}

- (NSDate)timeBase
{
  v3 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_timeBase;
  swift_beginAccess();
  sub_10002155C(self + v6, v5);
  v7 = sub_100936038();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = sub_100935F58().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setTimeBase:(id)base
{
  v5 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (base)
  {
    sub_100935FE8();
    v8 = sub_100936038();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_100936038();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_timeBase;
  swift_beginAccess();
  selfCopy = self;
  sub_100817548(v7, self + v10);
  swift_endAccess();
}

- (IDSLinkSelectionStrategy)linkSelectionStrategy
{
  v3 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_linkSelectionStrategy;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLinkSelectionStrategy:(id)strategy
{
  v5 = OBJC_IVAR____TtC17identityservicesd26IDSGlobalLinkConfiguration_linkSelectionStrategy;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = strategy;
  strategyCopy = strategy;
}

- (void)setPluginOptionsWithPluginName:(id)name options:(id)options
{
  v5 = sub_100936B38();
  v7 = v6;
  v8 = sub_100936A78();
  v9 = *((swift_isaMask & *self) + 0xB8);
  selfCopy = self;

  v11 = v9(v16);
  v13 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v13;
  *v13 = 0x8000000000000000;
  sub_100899678(v8, v5, v7, isUniquelyReferenced_nonNull_native);

  *v13 = v15;
  v11(v16, 0);
}

- (void)reset
{
  v2 = *((swift_isaMask & *self) + 0xC8);
  selfCopy = self;
  v2(0, 0);
  (*((swift_isaMask & *selfCopy) + 0xE0))(0, 0xF000000000000000);
  (*((swift_isaMask & *selfCopy) + 0x98))(0);
  (*((swift_isaMask & *selfCopy) + 0xF8))(0);
  (*((swift_isaMask & *selfCopy) + 0x110))(0);
}

- (void)configureGlobalLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  sub_100898AC0(linkCopy);
}

@end