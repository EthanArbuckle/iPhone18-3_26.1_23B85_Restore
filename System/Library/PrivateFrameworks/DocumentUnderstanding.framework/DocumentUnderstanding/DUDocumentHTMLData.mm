@interface DUDocumentHTMLData
- (BOOL)isEqual:(id)a3;
- (NSString)htmlString;
- (_TtC21DocumentUnderstanding19DUDocumentEmailData)documentEmailData;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDocumentEmailData:(id)a3;
- (void)setHtmlString:(id)a3;
@end

@implementation DUDocumentHTMLData

- (NSString)htmlString
{
  sub_232B38D08();
  if (v2)
  {
    v3 = sub_232CE9D20();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHtmlString:(id)a3
{
  if (a3)
  {
    v4 = sub_232CE9D50();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_232B38DD8(v4, v6);
}

- (_TtC21DocumentUnderstanding19DUDocumentEmailData)documentEmailData
{
  v2 = sub_232B38EF4();

  return v2;
}

- (void)setDocumentEmailData:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_232B38F94(a3);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232B39150(v4);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232B393CC(v6);

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

  v6 = sub_232B39A64(v8);

  sub_232B13790(v8, &qword_27DDC68C8, &qword_232CF6210);
  return v6 & 1;
}

@end