@interface GDIPDiagnosticExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation GDIPDiagnosticExtension

- (id)attachmentList
{
  sub_100002A10();
  v2.super.isa = sub_100003050().super.isa;

  return v2.super.isa;
}

- (id)attachmentsForParameters:(id)parameters
{
  v4 = sub_100003000();
  selfCopy = self;
  sub_100001504(v4);

  sub_100002A10();
  v6.super.isa = sub_100003050().super.isa;

  return v6.super.isa;
}

@end