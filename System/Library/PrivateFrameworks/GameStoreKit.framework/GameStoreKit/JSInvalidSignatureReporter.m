@interface JSInvalidSignatureReporter
- (void)signatureVerificationFailed:(id)a3;
@end

@implementation JSInvalidSignatureReporter

- (void)signatureVerificationFailed:(id)a3
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  sub_24EF4AF0C();

  (*(v4 + 8))(v6, v3);
}

@end