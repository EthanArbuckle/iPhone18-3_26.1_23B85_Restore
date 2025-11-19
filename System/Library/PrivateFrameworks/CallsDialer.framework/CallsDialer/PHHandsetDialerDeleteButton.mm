@interface PHHandsetDialerDeleteButton
- (void)traitCollectionDidChange:(id)a3;
- (void)updateImageViewAlpha;
@end

@implementation PHHandsetDialerDeleteButton

- (void)updateImageViewAlpha
{
  if ([(PHHandsetDialerDeleteButton *)self isHighlighted])
  {
    +[(TPNumberPadDynamicButton *)PHHandsetDialerNumberPadButton];
  }

  else
  {
    if (_UISolariumEnabled())
    {
      v4 = MEMORY[0x277D6ED78];
    }

    else
    {
      v4 = PHHandsetDialerNumberPadButton;
    }

    [(__objc2_class *)v4 unhighlightedCircleViewAlpha];
  }

  v5 = v3;
  v6 = [(PHHandsetDialerDeleteButton *)self imageView];
  [v6 setAlpha:v5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PHHandsetDialerDeleteButton;
  [(PHHandsetDialerDeleteButton *)&v4 traitCollectionDidChange:a3];
  [(PHHandsetDialerDeleteButton *)self updateImageViewAlpha];
}

@end