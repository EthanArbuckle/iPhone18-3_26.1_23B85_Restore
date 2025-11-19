@interface SFCollaborationUnifiedBarItem
- (SFCollaborationUnifiedBarItem)init;
@end

@implementation SFCollaborationUnifiedBarItem

- (SFCollaborationUnifiedBarItem)init
{
  v7.receiver = self;
  v7.super_class = SFCollaborationUnifiedBarItem;
  v2 = [(SFCollaborationUnifiedBarItem *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFCollaborationUnifiedBarItemView);
    view = v2->_view;
    v2->_view = v3;

    v5 = v2;
  }

  return v2;
}

@end