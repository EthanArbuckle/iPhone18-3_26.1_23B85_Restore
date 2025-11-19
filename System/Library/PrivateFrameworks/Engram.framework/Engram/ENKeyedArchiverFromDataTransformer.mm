@interface ENKeyedArchiverFromDataTransformer
- (id)transformedValue:(id)a3;
@end

@implementation ENKeyedArchiverFromDataTransformer

- (id)transformedValue:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end