@interface GCGenericDeviceDataProcessorExpressionModel(Serialization)
@end

@implementation GCGenericDeviceDataProcessorExpressionModel(Serialization)

+ (void)modelWithDictionaryRepresentation:()Serialization error:.cold.1(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    v8 = MEMORY[0x1E696ABC0];
    *a3 = *MEMORY[0x1E696A578];
    *a4 = @"Invalid 'Expression' definition.";
    a3[1] = *MEMORY[0x1E696A588];
    v9 = [a2 localizedFailureReason];
    a4[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a4 forKeys:a3 count:2];
    *a1 = [(NSError *)v8 gc_modelError:v10 userInfo:?];
  }
}

@end