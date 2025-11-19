@interface RecordButton
- (BOOL)isEnabled;
- (void)awakeFromNib;
- (void)drawRect:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
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

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  sub_257E716EC();
}

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RecordButton();
  return [(RecordButton *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  sub_257E711F0(a3);
}

@end