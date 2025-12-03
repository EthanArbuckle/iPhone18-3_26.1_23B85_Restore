@interface CKIMGroupHeaderRecipient
- (void)setDisplayString:(id)string;
@end

@implementation CKIMGroupHeaderRecipient

- (void)setDisplayString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_displayString isEqualToString:?])
  {
    objc_storeStrong(&self->_displayString, string);
  }
}

@end