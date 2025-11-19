@interface CHSTimelineController
- (CHSTimelineController)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4;
- (id)reloadTimelineBudgetedWithReason:(id)a3;
- (id)reloadTimelineWithReason:(id)a3;
@end

@implementation CHSTimelineController

- (CHSTimelineController)initWithExtensionBundleIdentifier:(id)a3 kind:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CHSTimelineController;
  v8 = [(CHSTimelineController *)&v16 init];
  if (v8)
  {
    v9 = +[CHSChronoServicesConnection sharedInstance];
    connection = v8->_connection;
    v8->_connection = v9;

    v11 = [v6 copy];
    extensionBundleIdentifier = v8->_extensionBundleIdentifier;
    v8->_extensionBundleIdentifier = v11;

    v13 = [v7 copy];
    kind = v8->_kind;
    v8->_kind = v13;
  }

  return v8;
}

- (id)reloadTimelineWithReason:(id)a3
{
  v4 = a3;
  v5 = [[CHSTimelineReloadRequest alloc] initWithKind:self->_kind extensionBundleIdentifier:self->_extensionBundleIdentifier reason:v4 allowCostOverride:1];
  connection = self->_connection;
  v10 = 0;
  [(CHSChronoServicesConnection *)connection reloadTimeline:v5 error:&v10];
  v7 = v10;
  v8 = v10;

  return v7;
}

- (id)reloadTimelineBudgetedWithReason:(id)a3
{
  v4 = a3;
  v5 = [[CHSTimelineReloadRequest alloc] initWithKind:self->_kind extensionBundleIdentifier:self->_extensionBundleIdentifier reason:v4 allowCostOverride:0];
  connection = self->_connection;
  v10 = 0;
  [(CHSChronoServicesConnection *)connection reloadTimeline:v5 error:&v10];
  v7 = v10;
  v8 = v10;

  return v7;
}

@end