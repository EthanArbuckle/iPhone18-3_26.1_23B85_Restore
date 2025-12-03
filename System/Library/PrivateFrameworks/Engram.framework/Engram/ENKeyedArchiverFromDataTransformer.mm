@interface ENKeyedArchiverFromDataTransformer
- (id)transformedValue:(id)value;
@end

@implementation ENKeyedArchiverFromDataTransformer

- (id)transformedValue:(id)value
{
  if (value)
  {
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:value requiringSecureCoding:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end