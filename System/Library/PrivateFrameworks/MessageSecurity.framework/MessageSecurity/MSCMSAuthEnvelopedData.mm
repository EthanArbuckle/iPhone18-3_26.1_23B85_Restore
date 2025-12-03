@interface MSCMSAuthEnvelopedData
+ (id)decodeMessageSecurityObject:(id)object options:(id)options error:(id *)error;
- (MSCMSAuthEnvelopedData)init;
- (MSCMSAuthEnvelopedData)initWithDataContent:(id)content recipient:(id)recipient;
- (MSCMSAuthEnvelopedData)initWithDataContent:(id)content recipient:(id)recipient encryptionAlgorithm:(id)algorithm;
- (MSCMSAuthEnvelopedData)initWithEmbeddedContent:(id)content recipient:(id)recipient;
- (MSCMSAuthEnvelopedData)initWithEmbeddedContent:(id)content recipient:(id)recipient encryptionAlgorithm:(id)algorithm;
- (MSCMSAuthEnvelopedData)initWithEncryptionAlgorithm:(id)algorithm;
- (MSCMSMessage)embeddedContent;
- (MSOID)contentType;
- (MSOID)encryptionAlgorithm;
- (MSOID)type;
- (NSArray)originatorCertificates;
- (NSData)dataContent;
- (id)encodeMessageSecurityObject:(id *)object;
- (id)getAttributesWithOID:(id)d;
- (void)setContentType:(id)type;
- (void)setDataContent:(id)content;
- (void)setEmbeddedContent:(id)content;
- (void)setEncryptionAlgorithm:(id)algorithm;
- (void)setOriginatorCertificates:(id)certificates;
- (void)setType:(id)type;
@end

@implementation MSCMSAuthEnvelopedData

- (MSOID)type
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(id)type
{
  v5 = OBJC_IVAR___MSCMSAuthEnvelopedData_type;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = type;
  typeCopy = type;
}

- (NSData)dataContent
{
  v2 = (self + OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent);
  swift_beginAccess();
  v3 = 0;
  v4 = v2[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v2;
    sub_258CA85E0(v5, v4);
    v6 = sub_258CBEA60();
    sub_258CA8728(v5, v4);
    v3 = v6;
  }

  return v3;
}

- (void)setDataContent:(id)content
{
  contentCopy = content;
  if (content)
  {
    selfCopy = self;
    v6 = contentCopy;
    contentCopy = sub_258CBEA80();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = contentCopy;
  v10[1] = v8;
  sub_258CA8728(v11, v12);
}

- (MSOID)encryptionAlgorithm
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEncryptionAlgorithm:(id)algorithm
{
  v5 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = algorithm;
  algorithmCopy = algorithm;
}

- (NSArray)originatorCertificates
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_originatorCertificates;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for SecCertificate();

  v5 = sub_258CBEB20();

  return v5;
}

- (void)setOriginatorCertificates:(id)certificates
{
  type metadata accessor for SecCertificate();
  v4 = sub_258CBEB30();
  v5 = OBJC_IVAR___MSCMSAuthEnvelopedData_originatorCertificates;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (MSOID)contentType
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentType:(id)type
{
  v5 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = type;
  typeCopy = type;
}

- (MSCMSMessage)embeddedContent
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setEmbeddedContent:(id)content
{
  v5 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = content;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (MSCMSAuthEnvelopedData)initWithEncryptionAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  v4 = sub_258CAF340(algorithmCopy);

  return v4;
}

- (MSCMSAuthEnvelopedData)initWithDataContent:(id)content recipient:(id)recipient
{
  contentCopy = content;
  recipientCopy = recipient;
  v7 = sub_258CBEA80();
  v9 = v8;

  v10 = sub_258CAF4E4(v7, v9, recipient);
  sub_258CA82B8(v7, v9);
  return v10;
}

- (MSCMSAuthEnvelopedData)initWithDataContent:(id)content recipient:(id)recipient encryptionAlgorithm:(id)algorithm
{
  contentCopy = content;
  recipientCopy = recipient;
  algorithmCopy = algorithm;
  v10 = sub_258CBEA80();
  v12 = v11;

  v13 = sub_258CAF7BC(v10, v12, recipient, algorithmCopy);
  sub_258CA82B8(v10, v12);
  return v13;
}

- (MSCMSAuthEnvelopedData)initWithEmbeddedContent:(id)content recipient:(id)recipient
{
  swift_unknownObjectRetain();
  recipientCopy = recipient;
  v8 = @"2.16.840.1.101.3.4.1.46";
  sub_258CBEAE0();
  v9 = objc_allocWithZone(MSOID);
  v10 = sub_258CAEABC();
  v11 = [(MSCMSAuthEnvelopedData *)self initWithEmbeddedContent:content recipient:recipientCopy encryptionAlgorithm:v10];
  swift_unknownObjectRelease();

  return v11;
}

- (MSCMSAuthEnvelopedData)initWithEmbeddedContent:(id)content recipient:(id)recipient encryptionAlgorithm:(id)algorithm
{
  swift_unknownObjectRetain();
  recipientCopy = recipient;
  algorithmCopy = algorithm;
  v10 = sub_258CAFA50(content, recipient, algorithmCopy);
  swift_unknownObjectRelease();

  return v10;
}

- (id)getAttributesWithOID:(id)d
{
  dCopy = d;
  selfCopy = self;
  v6 = MSCMSAuthEnvelopedData.getAttributes(OID:)(dCopy);

  if (v6)
  {
    sub_258CB0458(0, &qword_27F97D860, off_2798BDC50);
    v7 = sub_258CBEB20();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)encodeMessageSecurityObject:(id *)object
{
  selfCopy = self;
  MSCMSAuthEnvelopedData.encodeSecurityObject()();
  v5 = v4;
  v7 = v6;

  v8 = sub_258CBEA60();
  sub_258CA82B8(v5, v7);

  return v8;
}

+ (id)decodeMessageSecurityObject:(id)object options:(id)options error:(id *)error
{
  objectCopy = object;
  optionsCopy = options;
  v8 = sub_258CBEA80();
  v10 = v9;

  swift_getObjCClassMetadata();
  static MSCMSAuthEnvelopedData.decodeSecurityObject(_:options:)(v8, v10, options);
  v12 = v11;

  sub_258CA82B8(v8, v10);

  return v12;
}

- (MSCMSAuthEnvelopedData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end