@interface HDFHIRResourceObject(CopyWithOriginal)
@end

@implementation HDFHIRResourceObject(CopyWithOriginal)

- (void)copyWithOriginDataFrom:()CopyWithOriginal .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDOriginalFHIRResourceObject.m" lineNumber:262 description:{@"Invalid parameter not satisfying: %@", @"[original isKindOfClass:[HDOriginalFHIRResourceObject class]]"}];
}

@end