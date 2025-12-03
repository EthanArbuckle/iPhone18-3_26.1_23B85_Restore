@interface EELiveLabel
- (CGSize)intrinsicContentSize;
- (_TtC16CommunicationsUI11EELiveLabel)initWithCoder:(id)coder;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation EELiveLabel

- (void)drawTextInRect:(CGRect)rect
{
  v4 = UIEdgeInsetsInsetRect(rect.origin.x);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for EELiveLabel();
  selfCopy = self;
  [(EELiveLabel *)&v12 drawTextInRect:v4, v6, v8, v10];
}

- (CGSize)intrinsicContentSize
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for EELiveLabel();
  [(EELiveLabel *)&v6 intrinsicContentSize];
  v3 = v2 + 10.0;
  v5 = v4 + 2.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (_TtC16CommunicationsUI11EELiveLabel)initWithCoder:(id)coder
{
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

@end