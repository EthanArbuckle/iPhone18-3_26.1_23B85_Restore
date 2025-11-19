@interface CKIMGroupHeaderRecipient
- (void)setDisplayString:(id)a3;
@end

@implementation CKIMGroupHeaderRecipient

- (void)setDisplayString:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_displayString isEqualToString:?])
  {
    objc_storeStrong(&self->_displayString, a3);
  }
}

@end