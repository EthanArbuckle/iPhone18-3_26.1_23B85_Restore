@interface IDSRelayLinkProvider
- (void)setLocalCandidates:(id)a3;
- (void)setRemoteCandidates:(id)a3 withRelaySessionID:(id)a4;
@end

@implementation IDSRelayLinkProvider

- (void)setLocalCandidates:(id)a3
{
  sub_1A7CC79C8(0, &qword_1EB2B28F0);
  v4 = sub_1A7E22530();
  if (*(&self->super.isa + OBJC_IVAR___IDSRelayLinkProvider_provider))
  {
    v5 = self;

    _IDSRelayLinkProvider.setLocalCandidates(_:)(v4);
  }
}

- (void)setRemoteCandidates:(id)a3 withRelaySessionID:(id)a4
{
  sub_1A7CC79C8(0, &qword_1EB2B28F0);
  v6 = sub_1A7E22530();
  if (a4)
  {
    v7 = sub_1A7E22290();
    a4 = v8;
  }

  else
  {
    v7 = 0;
  }

  if (*(&self->super.isa + OBJC_IVAR___IDSRelayLinkProvider_provider))
  {
    v9 = self;

    v10.value._countAndFlagsBits = v7;
    v10.value._object = a4;
    _IDSRelayLinkProvider.setRemoteCandidates(_:withRelaySessionID:)(v6, v10);
  }
}

@end