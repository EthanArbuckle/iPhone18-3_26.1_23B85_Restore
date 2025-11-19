@interface AudioDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation AudioDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  if (a3)
  {
    sub_1000019E8();
  }

  v4 = self;
  v5 = sub_1000016E8();

  if (v5)
  {
    v6.super.isa = sub_1000019F8().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

@end