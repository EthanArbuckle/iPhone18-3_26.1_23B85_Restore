@interface HRExpandedContentItemLearnMore
- (HRExpandedContentItemLearnMore)initWithURLIdentifier:(int64_t)identifier delegate:(id)delegate;
- (HRLinkTextViewDelegate)delegate;
@end

@implementation HRExpandedContentItemLearnMore

- (HRExpandedContentItemLearnMore)initWithURLIdentifier:(int64_t)identifier delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = HRExpandedContentItemLearnMore;
  v7 = [(HRExpandedContentItemLearnMore *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_urlIdentifier = identifier;
    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  return v8;
}

- (HRLinkTextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end