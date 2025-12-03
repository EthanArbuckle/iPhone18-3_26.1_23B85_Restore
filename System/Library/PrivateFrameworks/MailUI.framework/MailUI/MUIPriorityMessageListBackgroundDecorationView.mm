@interface MUIPriorityMessageListBackgroundDecorationView
+ (NSString)elementKind;
+ (double)decorationViewInset;
- (MUIPriorityMessageListBackgroundDecorationView)initWithCoder:(id)coder;
- (void)shimmer;
- (void)updateBorderColor;
@end

@implementation MUIPriorityMessageListBackgroundDecorationView

+ (double)decorationViewInset
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return sub_214C7ACC8();
}

+ (NSString)elementKind
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_214C7AD48();
  v3 = sub_214CCF544();

  return v3;
}

- (MUIPriorityMessageListBackgroundDecorationView)initWithCoder:(id)coder
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](coder);
  MUIPriorityMessageListBackgroundDecorationView.init(coder:)();
}

- (void)shimmer
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIPriorityMessageListBackgroundDecorationView.shimmer()();
  MEMORY[0x277D82BD8](self);
}

- (void)updateBorderColor
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIPriorityMessageListBackgroundDecorationView.updateBorderColor()();
  MEMORY[0x277D82BD8](self);
}

@end