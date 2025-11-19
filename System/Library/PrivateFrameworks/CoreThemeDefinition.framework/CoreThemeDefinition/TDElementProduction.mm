@interface TDElementProduction
- (id)associatedFileModificationDateWithDocument:(id)a3;
@end

@implementation TDElementProduction

- (id)associatedFileModificationDateWithDocument:(id)a3
{
  v3 = [-[TDElementProduction associatedFileURLWithDocument:](self associatedFileURLWithDocument:{a3), "path"}];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];
  if (v5)
  {
    v6 = [v4 attributesOfItemAtPath:v3 error:0];
  }

  else
  {
    v6 = 0;
  }

  result = [v6 objectForKey:*MEMORY[0x277CCA150]];
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  if (v8 == 1)
  {
    NSLog(&cfstr_Tdelementprodu_1.isa, v3);
    v9 = MEMORY[0x277CBEAA8];

    return [v9 distantFuture];
  }

  return result;
}

@end