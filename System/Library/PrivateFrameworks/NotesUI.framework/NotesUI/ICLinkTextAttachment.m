@interface ICLinkTextAttachment
- (ICLinkEditorDelegate)linkDelegate;
@end

@implementation ICLinkTextAttachment

- (ICLinkEditorDelegate)linkDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_linkDelegate);

  return WeakRetained;
}

@end