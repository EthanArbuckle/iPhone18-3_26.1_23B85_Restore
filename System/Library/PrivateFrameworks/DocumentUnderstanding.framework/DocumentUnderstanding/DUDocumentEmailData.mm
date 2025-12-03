@interface DUDocumentEmailData
- (BOOL)isEqual:(id)equal;
- (NSDate)dateReceived;
- (NSDictionary)headers;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setDateReceived:(id)received;
- (void)setHeaders:(id)headers;
@end

@implementation DUDocumentEmailData

- (NSDate)dateReceived
{
  v2 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_232B2FB28(&v9 - v4);
  v6 = sub_232CE8D10();
  v7 = 0;
  if (sub_232B12480(v5, 1, v6) != 1)
  {
    v7 = sub_232CE8CD0();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return v7;
}

- (void)setDateReceived:(id)received
{
  v5 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  if (received)
  {
    sub_232CE8CF0();
    v9 = sub_232CE8D10();
    v10 = 0;
  }

  else
  {
    v9 = sub_232CE8D10();
    v10 = 1;
  }

  sub_232B12504(v8, v10, 1, v9);
  selfCopy = self;
  sub_232B2FC5C(v8);
}

- (NSDictionary)headers
{
  if (sub_232B2FE90())
  {
    v2 = sub_232CE9C20();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setHeaders:(id)headers
{
  if (headers)
  {
    v4 = sub_232CE9C40();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_232B2FF58(v4);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232B302F8(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232B305F8(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_232CEA420();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  sub_232B31308();
  v7 = v6;

  sub_232B13790(v9, &qword_27DDC68C8, &qword_232CF6210);
  return v7 & 1;
}

@end