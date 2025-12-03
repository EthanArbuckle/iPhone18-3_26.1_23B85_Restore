@interface _SFBrowsingAssistantListCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation _SFBrowsingAssistantListCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_18BC1F738();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F718();
  selfCopy = self;
  sub_18BBD0BFC();

  (*(v5 + 8))(v7, v4);
}

@end