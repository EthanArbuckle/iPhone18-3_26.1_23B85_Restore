@interface CLMicroLocationLoi
- (CLMicroLocationLoi)initWithIdentifier:(id)identifier andType:(int64_t)type;
@end

@implementation CLMicroLocationLoi

- (CLMicroLocationLoi)initWithIdentifier:(id)identifier andType:(int64_t)type
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CLMicroLocationLoi;
  v7 = [(CLMicroLocationLoi *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    loiIdentifier = v7->_loiIdentifier;
    v7->_loiIdentifier = v8;

    v7->_type = type;
  }

  return v7;
}

@end