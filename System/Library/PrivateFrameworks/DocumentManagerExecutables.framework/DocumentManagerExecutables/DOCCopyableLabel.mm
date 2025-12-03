@interface DOCCopyableLabel
- (BOOL)canBecomeFirstResponder;
- (UIColor)textColor;
- (void)copyDetail;
- (void)handleTapWithSender:(id)sender;
- (void)setTextColor:(id)color;
- (void)tintColorDidChange;
@end

@implementation DOCCopyableLabel

- (UIColor)textColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCCopyableLabel();
  textColor = [(DOCCopyableLabel *)&v4 textColor];

  return textColor;
}

- (void)setTextColor:(id)color
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCCopyableLabel();
  [(DOCCopyableLabel *)&v4 setTextColor:color];
}

- (void)handleTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  if ([senderCopy state] == 3 && (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.isa) + 0xF8))())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(selfCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (BOOL)canBecomeFirstResponder
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x88);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (void)copyDetail
{
  selfCopy = self;
  DOCCopyableLabel.copyDetail()();
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCCopyableLabel();
  v2 = v7.receiver;
  tintColorDidChange = [(DOCCopyableLabel *)&v7 tintColorDidChange];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(tintColorDidChange);
  if (v5)
  {
    (*((*v4 & *v2) + 0xD8))(v5, v6);
  }
}

@end