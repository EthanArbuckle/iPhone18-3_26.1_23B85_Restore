@interface GKPeerPickerViewController
- (GKPeerPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation GKPeerPickerViewController

- (GKPeerPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = GKPeerPickerViewController;
  return [(GKPeerPickerViewController *)&v5 initWithNibName:name bundle:bundle];
}

@end