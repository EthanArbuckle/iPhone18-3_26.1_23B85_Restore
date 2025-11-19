@interface NetworkInfoDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation NetworkInfoDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_10000D1FC();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v6 = sub_100001370(v4);

  if (v6)
  {
    v7.super.isa = sub_10000D31C().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

@end