@interface CKBubblePath
- (UIBezierPath)bezierPath;
- (UIEdgeInsets)tailInsetsForBubbleSize:(CGSize)a3;
- (UIEdgeInsets)tailInsetsForPillSize:(CGSize)a3;
- (_TtC7ChatKit12CKBubblePath)init;
- (const)cgPath;
- (double)cornerRadius;
- (double)strokeDashLength;
- (double)strokeDashPhase;
@end

@implementation CKBubblePath

- (double)cornerRadius
{
  v3 = sub_190D56C50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_190D56C60();
  sub_190D56C30();
  v9 = v8;

  (*(v4 + 8))(v6, v3);
  return v9;
}

- (UIEdgeInsets)tailInsetsForBubbleSize:(CGSize)a3
{
  v3 = sub_19024A2A0(self, a3.width, a3.height, a2, MEMORY[0x1E698F5E0]);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (const)cgPath
{
  v2 = self;
  v3 = sub_190D56BD0();

  return v3;
}

- (UIBezierPath)bezierPath
{
  v2 = self;
  v3 = sub_190D56BF0();

  return v3;
}

- (double)strokeDashLength
{
  v2 = self;
  sub_190D56C80();
  v4 = v3;

  return v4;
}

- (double)strokeDashPhase
{
  v2 = self;
  sub_190D56C80();
  sub_190D56C70();
  v4 = v3;

  return v4;
}

- (UIEdgeInsets)tailInsetsForPillSize:(CGSize)a3
{
  v3 = sub_19024A2A0(self, a3.width, a3.height, a2, MEMORY[0x1E698F5E8]);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (_TtC7ChatKit12CKBubblePath)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end