@interface IMDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation IMDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  v3 = objc_alloc_init(IMDiagnosticCollection);
  v4 = [(IMDiagnosticCollection *)v3 run];

  return v4;
}

@end