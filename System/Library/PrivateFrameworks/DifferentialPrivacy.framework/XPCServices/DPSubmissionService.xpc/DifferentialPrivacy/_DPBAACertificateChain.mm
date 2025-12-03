@interface _DPBAACertificateChain
- (_DPBAACertificateChain)init;
- (_DPBAACertificateChain)initWithIntermediateCertificate:(id)certificate leafCertificate:(id)leafCertificate;
@end

@implementation _DPBAACertificateChain

- (_DPBAACertificateChain)initWithIntermediateCertificate:(id)certificate leafCertificate:(id)leafCertificate
{
  certificateCopy = certificate;
  leafCertificateCopy = leafCertificate;
  v8 = sub_100050300();
  v10 = v9;

  v11 = sub_100050300();
  v13 = v12;

  v14 = (self + OBJC_IVAR____DPBAACertificateChain_intermediateCertificate);
  *v14 = v8;
  v14[1] = v10;
  v15 = (self + OBJC_IVAR____DPBAACertificateChain_leafCertificate);
  *v15 = v11;
  v15[1] = v13;
  v17.receiver = self;
  v17.super_class = type metadata accessor for _DPBAACertificateChain();
  return [(_DPBAACertificateChain *)&v17 init];
}

- (_DPBAACertificateChain)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end