@interface CLMicroLocationLoi
- (CLMicroLocationLoi)initWithIdentifier:(id)a3 andType:(int64_t)a4;
@end

@implementation CLMicroLocationLoi

- (CLMicroLocationLoi)initWithIdentifier:(id)a3 andType:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CLMicroLocationLoi;
  v7 = [(CLMicroLocationLoi *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    loiIdentifier = v7->_loiIdentifier;
    v7->_loiIdentifier = v8;

    v7->_type = a4;
  }

  return v7;
}

@end