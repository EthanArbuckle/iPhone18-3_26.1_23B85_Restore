@interface MSCMSEnvelopedDataInternal
- (MSCMSEnvelopedDataInternal)init;
- (MSCMSEnvelopedDataInternal)initWithEnvelopedData:(id)data;
- (id)encodeMessageSecurityObject:(id *)object;
@end

@implementation MSCMSEnvelopedDataInternal

- (MSCMSEnvelopedDataInternal)initWithEnvelopedData:(id)data
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData) = data;
  v8.receiver = self;
  v8.super_class = ObjectType;
  dataCopy = data;
  return [(MSCMSEnvelopedDataInternal *)&v8 init];
}

- (id)encodeMessageSecurityObject:(id *)object
{
  selfCopy = self;
  v5.super.isa = MSCMSEnvelopedDataInternal.encodeMessageSecurityObject()().super.isa;

  if (v6.super.isa)
  {
    if (object)
    {
      v7 = sub_258CBEA00();

      v8 = v7;
      isa = 0;
      *object = v7;
    }

    else
    {

      isa = 0;
    }
  }

  else
  {
    isa = v5.super.isa;
  }

  return isa;
}

- (MSCMSEnvelopedDataInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end