@interface MSCMSAuthEnvelopedData
+ (id)decodeMessageSecurityObject:(id)a3 options:(id)a4 error:(id *)a5;
- (MSCMSAuthEnvelopedData)init;
- (MSCMSAuthEnvelopedData)initWithDataContent:(id)a3 recipient:(id)a4;
- (MSCMSAuthEnvelopedData)initWithDataContent:(id)a3 recipient:(id)a4 encryptionAlgorithm:(id)a5;
- (MSCMSAuthEnvelopedData)initWithEmbeddedContent:(id)a3 recipient:(id)a4;
- (MSCMSAuthEnvelopedData)initWithEmbeddedContent:(id)a3 recipient:(id)a4 encryptionAlgorithm:(id)a5;
- (MSCMSAuthEnvelopedData)initWithEncryptionAlgorithm:(id)a3;
- (MSCMSMessage)embeddedContent;
- (MSOID)contentType;
- (MSOID)encryptionAlgorithm;
- (MSOID)type;
- (NSArray)originatorCertificates;
- (NSData)dataContent;
- (id)encodeMessageSecurityObject:(id *)a3;
- (id)getAttributesWithOID:(id)a3;
- (void)setContentType:(id)a3;
- (void)setDataContent:(id)a3;
- (void)setEmbeddedContent:(id)a3;
- (void)setEncryptionAlgorithm:(id)a3;
- (void)setOriginatorCertificates:(id)a3;
- (void)setType:(id)a3;
@end

@implementation MSCMSAuthEnvelopedData

- (MSOID)type
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(id)a3
{
  v5 = OBJC_IVAR___MSCMSAuthEnvelopedData_type;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
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

- (void)setDataContent:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = self;
    v6 = v3;
    v3 = sub_258CBEA80();
    v8 = v7;
  }

  else
  {
    v9 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = v3;
  v10[1] = v8;
  sub_258CA8728(v11, v12);
}

- (MSOID)encryptionAlgorithm
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEncryptionAlgorithm:(id)a3
{
  v5 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
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

- (void)setOriginatorCertificates:(id)a3
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

- (void)setContentType:(id)a3
{
  v5 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (MSCMSMessage)embeddedContent
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setEmbeddedContent:(id)a3
{
  v5 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (MSCMSAuthEnvelopedData)initWithEncryptionAlgorithm:(id)a3
{
  v3 = a3;
  v4 = sub_258CAF340(v3);

  return v4;
}

- (MSCMSAuthEnvelopedData)initWithDataContent:(id)a3 recipient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_258CBEA80();
  v9 = v8;

  v10 = sub_258CAF4E4(v7, v9, a4);
  sub_258CA82B8(v7, v9);
  return v10;
}

- (MSCMSAuthEnvelopedData)initWithDataContent:(id)a3 recipient:(id)a4 encryptionAlgorithm:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_258CBEA80();
  v12 = v11;

  v13 = sub_258CAF7BC(v10, v12, a4, v9);
  sub_258CA82B8(v10, v12);
  return v13;
}

- (MSCMSAuthEnvelopedData)initWithEmbeddedContent:(id)a3 recipient:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = @"2.16.840.1.101.3.4.1.46";
  sub_258CBEAE0();
  v9 = objc_allocWithZone(MSOID);
  v10 = sub_258CAEABC();
  v11 = [(MSCMSAuthEnvelopedData *)self initWithEmbeddedContent:a3 recipient:v7 encryptionAlgorithm:v10];
  swift_unknownObjectRelease();

  return v11;
}

- (MSCMSAuthEnvelopedData)initWithEmbeddedContent:(id)a3 recipient:(id)a4 encryptionAlgorithm:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a5;
  v10 = sub_258CAFA50(a3, a4, v9);
  swift_unknownObjectRelease();

  return v10;
}

- (id)getAttributesWithOID:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = MSCMSAuthEnvelopedData.getAttributes(OID:)(v4);

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

- (id)encodeMessageSecurityObject:(id *)a3
{
  v3 = self;
  MSCMSAuthEnvelopedData.encodeSecurityObject()();
  v5 = v4;
  v7 = v6;

  v8 = sub_258CBEA60();
  sub_258CA82B8(v5, v7);

  return v8;
}

+ (id)decodeMessageSecurityObject:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = sub_258CBEA80();
  v10 = v9;

  swift_getObjCClassMetadata();
  static MSCMSAuthEnvelopedData.decodeSecurityObject(_:options:)(v8, v10, a4);
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