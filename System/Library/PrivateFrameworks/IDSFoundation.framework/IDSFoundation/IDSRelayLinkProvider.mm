@interface IDSRelayLinkProvider
- (void)setLocalCandidates:(id)candidates;
- (void)setRemoteCandidates:(id)candidates withRelaySessionID:(id)d;
@end

@implementation IDSRelayLinkProvider

- (void)setLocalCandidates:(id)candidates
{
  sub_1A7CC79C8(0, &qword_1EB2B28F0);
  v4 = sub_1A7E22530();
  if (*(&self->super.isa + OBJC_IVAR___IDSRelayLinkProvider_provider))
  {
    selfCopy = self;

    _IDSRelayLinkProvider.setLocalCandidates(_:)(v4);
  }
}

- (void)setRemoteCandidates:(id)candidates withRelaySessionID:(id)d
{
  sub_1A7CC79C8(0, &qword_1EB2B28F0);
  v6 = sub_1A7E22530();
  if (d)
  {
    v7 = sub_1A7E22290();
    d = v8;
  }

  else
  {
    v7 = 0;
  }

  if (*(&self->super.isa + OBJC_IVAR___IDSRelayLinkProvider_provider))
  {
    selfCopy = self;

    v10.value._countAndFlagsBits = v7;
    v10.value._object = d;
    _IDSRelayLinkProvider.setRemoteCandidates(_:withRelaySessionID:)(v6, v10);
  }
}

@end