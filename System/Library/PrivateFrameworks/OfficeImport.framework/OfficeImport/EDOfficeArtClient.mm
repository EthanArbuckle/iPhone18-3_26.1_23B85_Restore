@interface EDOfficeArtClient
- (BOOL)hasText;
- (CGRect)bounds;
- (NSString)description;
- (void)setClientState:(id)a3;
@end

@implementation EDOfficeArtClient

- (BOOL)hasText
{
  mTextBox = self->mTextBox;
  if (!mTextBox)
  {
    return 0;
  }

  v3 = [(EDTextBox *)mTextBox text];
  v4 = [v3 string];
  v5 = [v4 length] != 0;

  return v5;
}

- (CGRect)bounds
{
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setClientState:(id)a3
{
  v5 = a3;
  mClientState = self->mClientState;
  p_mClientState = &self->mClientState;
  if (mClientState != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mClientState, a3);
    v5 = v8;
  }
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDOfficeArtClient;
  v2 = [(EDOfficeArtClient *)&v4 description];

  return v2;
}

@end