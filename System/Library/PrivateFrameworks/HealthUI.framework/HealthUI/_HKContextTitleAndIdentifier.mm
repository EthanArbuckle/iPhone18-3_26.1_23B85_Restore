@interface _HKContextTitleAndIdentifier
- (_HKContextTitleAndIdentifier)initWithTitle:(id)title accessibilityIdentifier:(id)identifier;
@end

@implementation _HKContextTitleAndIdentifier

- (_HKContextTitleAndIdentifier)initWithTitle:(id)title accessibilityIdentifier:(id)identifier
{
  titleCopy = title;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = _HKContextTitleAndIdentifier;
  v9 = [(_HKContextTitleAndIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_accessibilityIdentifier, identifier);
  }

  return v10;
}

@end