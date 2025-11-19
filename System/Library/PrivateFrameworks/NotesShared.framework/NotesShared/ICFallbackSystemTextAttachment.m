@interface ICFallbackSystemTextAttachment
- (ICFallbackSystemTextAttachment)initWithData:(id)a3 type:(id)a4 contentIdentifier:(id)a5 systemClassName:(id)a6;
@end

@implementation ICFallbackSystemTextAttachment

- (ICFallbackSystemTextAttachment)initWithData:(id)a3 type:(id)a4 contentIdentifier:(id)a5 systemClassName:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = ICFallbackSystemTextAttachment;
  v13 = [(ICFallbackSystemTextAttachment *)&v16 initWithData:a3 ofType:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_contentIdentifier, a5);
    objc_storeStrong(&v14->_systemClassName, a6);
  }

  return v14;
}

@end