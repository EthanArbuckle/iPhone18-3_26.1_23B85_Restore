@interface DOCCopyableLabel
- (BOOL)canBecomeFirstResponder;
- (UIColor)textColor;
- (void)copyDetail;
- (void)handleTapWithSender:(id)a3;
- (void)setTextColor:(id)a3;
- (void)tintColorDidChange;
@end

@implementation DOCCopyableLabel

- (UIColor)textColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCCopyableLabel();
  v2 = [(DOCCopyableLabel *)&v4 textColor];

  return v2;
}

- (void)setTextColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCCopyableLabel();
  [(DOCCopyableLabel *)&v4 setTextColor:a3];
}

- (void)handleTapWithSender:(id)a3
{
  v4 = a3;
  v8 = self;
  if ([v4 state] == 3 && (*((*MEMORY[0x277D85000] & v8->super.super.super.super.isa) + 0xF8))())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v8, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (BOOL)canBecomeFirstResponder
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x88);
  v3 = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (void)copyDetail
{
  v2 = self;
  DOCCopyableLabel.copyDetail()();
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCCopyableLabel();
  v2 = v7.receiver;
  v3 = [(DOCCopyableLabel *)&v7 tintColorDidChange];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(v3);
  if (v5)
  {
    (*((*v4 & *v2) + 0xD8))(v5, v6);
  }
}

@end