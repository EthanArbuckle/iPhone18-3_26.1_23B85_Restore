@interface GDIPDiagnosticExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation GDIPDiagnosticExtension

- (id)attachmentList
{
  sub_100002A10();
  v2.super.isa = sub_100003050().super.isa;

  return v2.super.isa;
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = sub_100003000();
  v5 = self;
  sub_100001504(v4);

  sub_100002A10();
  v6.super.isa = sub_100003050().super.isa;

  return v6.super.isa;
}

@end