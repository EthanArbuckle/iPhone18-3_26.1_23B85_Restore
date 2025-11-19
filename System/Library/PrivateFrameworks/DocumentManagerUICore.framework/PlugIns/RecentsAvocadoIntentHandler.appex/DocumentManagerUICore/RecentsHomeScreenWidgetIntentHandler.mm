@interface RecentsHomeScreenWidgetIntentHandler
- (id)defaultLocationForOpenLocation:(id)a3;
- (void)provideLocationOptionsCollectionForOpenLocation:(id)a3 withCompletion:(id)a4;
@end

@implementation RecentsHomeScreenWidgetIntentHandler

- (void)provideLocationOptionsCollectionForOpenLocation:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100004218(sub_100004D7C, v7);
}

- (id)defaultLocationForOpenLocation:(id)a3
{
  sub_100004C50();

  return v3;
}

@end