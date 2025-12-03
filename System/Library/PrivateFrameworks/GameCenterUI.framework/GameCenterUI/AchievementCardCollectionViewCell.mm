@interface AchievementCardCollectionViewCell
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
@end

@implementation AchievementCardCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E072248();
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_24E072F6C(contextCopy, coordinatorCopy);
}

@end