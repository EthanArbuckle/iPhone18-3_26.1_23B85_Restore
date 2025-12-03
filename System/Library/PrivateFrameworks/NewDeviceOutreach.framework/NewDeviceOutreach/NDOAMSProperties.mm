@interface NDOAMSProperties
- (NDOAMSProperties)init;
- (NDOAMSProperties)initWithUrl:(id)url signatureHeaders:(id)headers bodyData:(id)data;
- (NDOAMSProperties)initWithUrl:(id)url signatureHeaders:(id)headers bodyData:(id)data presentModally:(BOOL)modally;
- (NSData)bodyData;
- (NSDictionary)signatureHeaders;
- (NSURL)url;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDOAMSProperties

- (NSURL)url
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-v5];
  sub_25BD6E1E0(self + OBJC_IVAR___NDOAMSProperties__url, v15, &qword_27FBDBEF8, &qword_25BD7C070);
  if (v16)
  {
    v7 = sub_25BD79678();
    v8 = swift_dynamicCast();
    v9 = *(v7 - 8);
    (*(v9 + 56))(v6, v8 ^ 1u, 1, v7);
    v10 = (*(v9 + 48))(v6, 1, v7);
    v11 = 0;
    if (v10 != 1)
    {
      v12 = sub_25BD79638();
      (*(v9 + 8))(v6, v7);
      v11 = v12;
    }
  }

  else
  {
    sub_25BD6E248(v15, &qword_27FBDBEF8, &qword_25BD7C070);
    v13 = sub_25BD79678();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v11 = 0;
  }

  return v11;
}

- (NSData)bodyData
{
  v2 = *(self + OBJC_IVAR___NDOAMSProperties_bodyData);
  v3 = *(self + OBJC_IVAR___NDOAMSProperties_bodyData + 8);
  sub_25BD53D04(v2, v3);
  v4 = sub_25BD79688();
  sub_25BD54D74(v2, v3);

  return v4;
}

- (NSDictionary)signatureHeaders
{
  v2 = *(self + OBJC_IVAR___NDOAMSProperties_signatureHeaders);

  v3 = sub_25BD79768();

  return v3;
}

- (NDOAMSProperties)initWithUrl:(id)url signatureHeaders:(id)headers bodyData:(id)data
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  if (url)
  {
    sub_25BD79658();
    v11 = sub_25BD79678();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_25BD79678();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = sub_25BD79778();
  dataCopy = data;
  v15 = sub_25BD796A8();
  v17 = v16;

  return NDOAMSProperties.init(url:signatureHeaders:bodyData:)(v10, v13, v15, v17);
}

- (NDOAMSProperties)initWithUrl:(id)url signatureHeaders:(id)headers bodyData:(id)data presentModally:(BOOL)modally
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  if (url)
  {
    sub_25BD79658();
    v13 = sub_25BD79678();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_25BD79678();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = sub_25BD79778();
  dataCopy = data;
  v17 = sub_25BD796A8();
  v19 = v18;

  return NDOAMSProperties.init(url:signatureHeaders:bodyData:presentModally:)(v12, v15, v17, v19, modally);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NDOAMSProperties.encode(with:)(coderCopy);
}

- (NDOAMSProperties)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end