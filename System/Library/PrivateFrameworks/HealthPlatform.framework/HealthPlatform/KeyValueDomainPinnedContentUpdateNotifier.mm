@interface KeyValueDomainPinnedContentUpdateNotifier
- (void)didUpdateKeyValueDomain:(id)domain;
@end

@implementation KeyValueDomainPinnedContentUpdateNotifier

- (void)didUpdateKeyValueDomain:(id)domain
{
  v3 = *self->publisher;
  sub_2283F2234();
  sub_22850AAC8(&unk_280DED300, sub_2283F2234);

  sub_22855CE1C();
}

@end