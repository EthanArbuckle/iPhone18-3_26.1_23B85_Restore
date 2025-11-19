@interface NSObject(HFDebugging)
- (id)hf_prettyDescriptionWithDetailLevel:()HFDebugging;
@end

@implementation NSObject(HFDebugging)

- (id)hf_prettyDescriptionWithDetailLevel:()HFDebugging
{
  if (+[HFUtilities hasInternalDiagnostics]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [HFStateDumpBuilderContext contextWithDetailLevel:a3];
    v6 = [a1 hf_stateDumpBuilderWithContext:v5];
    v7 = [v6 buildDescription];
  }

  else
  {
    v7 = [a1 description];
  }

  return v7;
}

@end