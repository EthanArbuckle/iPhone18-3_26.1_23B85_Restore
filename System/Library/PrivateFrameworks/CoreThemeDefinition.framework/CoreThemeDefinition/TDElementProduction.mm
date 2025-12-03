@interface TDElementProduction
- (id)associatedFileModificationDateWithDocument:(id)document;
@end

@implementation TDElementProduction

- (id)associatedFileModificationDateWithDocument:(id)document
{
  v3 = [-[TDElementProduction associatedFileURLWithDocument:](self associatedFileURLWithDocument:{document), "path"}];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];
  if (v5)
  {
    v6 = [defaultManager attributesOfItemAtPath:v3 error:0];
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