@interface EDOfficeArtClient
- (BOOL)hasText;
- (CGRect)bounds;
- (NSString)description;
- (void)setClientState:(id)state;
@end

@implementation EDOfficeArtClient

- (BOOL)hasText
{
  mTextBox = self->mTextBox;
  if (!mTextBox)
  {
    return 0;
  }

  text = [(EDTextBox *)mTextBox text];
  string = [text string];
  v5 = [string length] != 0;

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

- (void)setClientState:(id)state
{
  stateCopy = state;
  mClientState = self->mClientState;
  p_mClientState = &self->mClientState;
  if (mClientState != stateCopy)
  {
    v8 = stateCopy;
    objc_storeStrong(p_mClientState, state);
    stateCopy = v8;
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