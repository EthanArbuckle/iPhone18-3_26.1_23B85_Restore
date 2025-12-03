@interface ICFallbackSystemTextAttachment
- (ICFallbackSystemTextAttachment)initWithData:(id)data type:(id)type contentIdentifier:(id)identifier systemClassName:(id)name;
@end

@implementation ICFallbackSystemTextAttachment

- (ICFallbackSystemTextAttachment)initWithData:(id)data type:(id)type contentIdentifier:(id)identifier systemClassName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = ICFallbackSystemTextAttachment;
  v13 = [(ICFallbackSystemTextAttachment *)&v16 initWithData:data ofType:type];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_contentIdentifier, identifier);
    objc_storeStrong(&v14->_systemClassName, name);
  }

  return v14;
}

@end