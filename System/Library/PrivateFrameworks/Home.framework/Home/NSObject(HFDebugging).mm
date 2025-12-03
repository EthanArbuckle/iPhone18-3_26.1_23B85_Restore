@interface NSObject(HFDebugging)
- (id)hf_prettyDescriptionWithDetailLevel:()HFDebugging;
@end

@implementation NSObject(HFDebugging)

- (id)hf_prettyDescriptionWithDetailLevel:()HFDebugging
{
  if (+[HFUtilities hasInternalDiagnostics]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [HFStateDumpBuilderContext contextWithDetailLevel:a3];
    v6 = [self hf_stateDumpBuilderWithContext:v5];
    buildDescription = [v6 buildDescription];
  }

  else
  {
    buildDescription = [self description];
  }

  return buildDescription;
}

@end