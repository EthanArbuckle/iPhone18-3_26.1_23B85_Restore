@interface MSCMSEnvelopedDataInternal
- (MSCMSEnvelopedDataInternal)init;
- (MSCMSEnvelopedDataInternal)initWithEnvelopedData:(id)a3;
- (id)encodeMessageSecurityObject:(id *)a3;
@end

@implementation MSCMSEnvelopedDataInternal

- (MSCMSEnvelopedDataInternal)initWithEnvelopedData:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___MSCMSEnvelopedDataInternal_envelopedData) = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = a3;
  return [(MSCMSEnvelopedDataInternal *)&v8 init];
}

- (id)encodeMessageSecurityObject:(id *)a3
{
  v4 = self;
  v5.super.isa = MSCMSEnvelopedDataInternal.encodeMessageSecurityObject()().super.isa;

  if (v6.super.isa)
  {
    if (a3)
    {
      v7 = sub_258CBEA00();

      v8 = v7;
      isa = 0;
      *a3 = v7;
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