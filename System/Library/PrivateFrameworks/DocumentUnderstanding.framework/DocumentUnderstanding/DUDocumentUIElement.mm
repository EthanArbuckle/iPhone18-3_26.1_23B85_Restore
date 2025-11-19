@interface DUDocumentUIElement
- (BOOL)isEqual:(id)a3;
- (CGPoint)absoluteOriginOnScreen;
- (CGRect)frameInWindow;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DUDocumentUIElement

- (CGRect)frameInWindow
{
  v2 = sub_232B421C8();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)absoluteOriginOnScreen
{
  v2 = sub_232B42350();
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232B42D00(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232B42F7C(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_232CEA420();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_232B4425C(v8);

  sub_232B267AC(v8, &qword_27DDC68C8, &qword_232CF6210);
  return v6 & 1;
}

@end