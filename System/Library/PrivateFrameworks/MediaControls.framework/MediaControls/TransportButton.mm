@interface TransportButton
- (void)didBeginHold:(id)a3;
- (void)didDragExit:(id)a3;
- (void)didTapInside:(id)a3;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation TransportButton

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for TransportButton();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(TransportButton *)&v9 isEnabled];
  v8.receiver = v6;
  v8.super_class = v5;
  [(TransportButton *)&v8 setEnabled:v3];
  if (v7 != [(TransportButton *)v6 isEnabled])
  {
    sub_1A22E337C();
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for TransportButton();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(TransportButton *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(TransportButton *)&v8 setHighlighted:v3];
  sub_1A22E232C(v7);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A22E2EB0();
}

- (void)didTapInside:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A22E3DB0();
}

- (void)didBeginHold:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A22E3E94();
}

- (void)didDragExit:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A22E3C14();
}

@end