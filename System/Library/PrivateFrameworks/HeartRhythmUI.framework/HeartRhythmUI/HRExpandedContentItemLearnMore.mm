@interface HRExpandedContentItemLearnMore
- (HRExpandedContentItemLearnMore)initWithURLIdentifier:(int64_t)a3 delegate:(id)a4;
- (HRLinkTextViewDelegate)delegate;
@end

@implementation HRExpandedContentItemLearnMore

- (HRExpandedContentItemLearnMore)initWithURLIdentifier:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HRExpandedContentItemLearnMore;
  v7 = [(HRExpandedContentItemLearnMore *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_urlIdentifier = a3;
    objc_storeWeak(&v7->_delegate, v6);
  }

  return v8;
}

- (HRLinkTextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end