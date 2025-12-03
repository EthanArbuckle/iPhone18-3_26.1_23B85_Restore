@interface CHSTimelineController
- (CHSTimelineController)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind;
- (id)reloadTimelineBudgetedWithReason:(id)reason;
- (id)reloadTimelineWithReason:(id)reason;
@end

@implementation CHSTimelineController

- (CHSTimelineController)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind
{
  identifierCopy = identifier;
  kindCopy = kind;
  v16.receiver = self;
  v16.super_class = CHSTimelineController;
  v8 = [(CHSTimelineController *)&v16 init];
  if (v8)
  {
    v9 = +[CHSChronoServicesConnection sharedInstance];
    connection = v8->_connection;
    v8->_connection = v9;

    v11 = [identifierCopy copy];
    extensionBundleIdentifier = v8->_extensionBundleIdentifier;
    v8->_extensionBundleIdentifier = v11;

    v13 = [kindCopy copy];
    kind = v8->_kind;
    v8->_kind = v13;
  }

  return v8;
}

- (id)reloadTimelineWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [[CHSTimelineReloadRequest alloc] initWithKind:self->_kind extensionBundleIdentifier:self->_extensionBundleIdentifier reason:reasonCopy allowCostOverride:1];
  connection = self->_connection;
  v10 = 0;
  [(CHSChronoServicesConnection *)connection reloadTimeline:v5 error:&v10];
  v7 = v10;
  v8 = v10;

  return v7;
}

- (id)reloadTimelineBudgetedWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [[CHSTimelineReloadRequest alloc] initWithKind:self->_kind extensionBundleIdentifier:self->_extensionBundleIdentifier reason:reasonCopy allowCostOverride:0];
  connection = self->_connection;
  v10 = 0;
  [(CHSChronoServicesConnection *)connection reloadTimeline:v5 error:&v10];
  v7 = v10;
  v8 = v10;

  return v7;
}

@end