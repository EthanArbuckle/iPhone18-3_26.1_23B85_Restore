@interface ProfilePrivacyActionImplementation
- (void)didUpdateProfilePrivacy:(id)privacy;
@end

@implementation ProfilePrivacyActionImplementation

- (void)didUpdateProfilePrivacy:(id)privacy
{
  selfCopy = self;
  privacyCopy = privacy;
  sub_24E30E6E8(privacy);
}

@end