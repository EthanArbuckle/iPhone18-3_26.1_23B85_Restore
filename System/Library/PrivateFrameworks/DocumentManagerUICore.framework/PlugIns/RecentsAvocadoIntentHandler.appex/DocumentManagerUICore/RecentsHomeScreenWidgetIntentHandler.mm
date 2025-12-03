@interface RecentsHomeScreenWidgetIntentHandler
- (id)defaultLocationForOpenLocation:(id)location;
- (void)provideLocationOptionsCollectionForOpenLocation:(id)location withCompletion:(id)completion;
@end

@implementation RecentsHomeScreenWidgetIntentHandler

- (void)provideLocationOptionsCollectionForOpenLocation:(id)location withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  locationCopy = location;
  selfCopy = self;
  sub_100004218(sub_100004D7C, v7);
}

- (id)defaultLocationForOpenLocation:(id)location
{
  sub_100004C50();

  return v3;
}

@end