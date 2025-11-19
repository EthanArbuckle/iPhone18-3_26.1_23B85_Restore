@interface IMDiagnosticExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation IMDiagnosticExtension

- (id)attachmentsForParameters:(id)a3
{
  v3 = objc_alloc_init(IMDiagnosticCollection);
  v4 = [(IMDiagnosticCollection *)v3 run];

  return v4;
}

@end