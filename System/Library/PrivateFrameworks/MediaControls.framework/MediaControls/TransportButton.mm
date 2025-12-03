@interface TransportButton
- (void)didBeginHold:(id)hold;
- (void)didDragExit:(id)exit;
- (void)didTapInside:(id)inside;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation TransportButton

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = type metadata accessor for TransportButton();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isEnabled = [(TransportButton *)&v9 isEnabled];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(TransportButton *)&v8 setEnabled:enabledCopy];
  if (isEnabled != [(TransportButton *)selfCopy isEnabled])
  {
    sub_1A22E337C();
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for TransportButton();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(TransportButton *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(TransportButton *)&v8 setHighlighted:highlightedCopy];
  sub_1A22E232C(isHighlighted);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A22E2EB0();
}

- (void)didTapInside:(id)inside
{
  insideCopy = inside;
  selfCopy = self;
  sub_1A22E3DB0();
}

- (void)didBeginHold:(id)hold
{
  holdCopy = hold;
  selfCopy = self;
  sub_1A22E3E94();
}

- (void)didDragExit:(id)exit
{
  exitCopy = exit;
  selfCopy = self;
  sub_1A22E3C14();
}

@end