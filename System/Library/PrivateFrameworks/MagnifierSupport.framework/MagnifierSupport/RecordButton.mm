@interface RecordButton
- (BOOL)isEnabled;
- (void)awakeFromNib;
- (void)drawRect:(CGRect)rect;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation RecordButton

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RecordButton();
  v2 = v4.receiver;
  [(RecordButton *)&v4 awakeFromNib];
  v3 = sub_257ECF4C0();
  [v2 setTitle:v3 forState:{0, v4.receiver, v4.super_class}];
}

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  sub_257E716EC();
}

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RecordButton();
  return [(RecordButton *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_257E711F0(enabled);
}

@end