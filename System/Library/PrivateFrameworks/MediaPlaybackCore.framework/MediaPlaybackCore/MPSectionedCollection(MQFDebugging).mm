@interface MPSectionedCollection(MQFDebugging)
- (id)mpc_identifiersAsJsonValue;
@end

@implementation MPSectionedCollection(MQFDebugging)

- (id)mpc_identifiersAsJsonValue
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "numberOfSections")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MPSectionedCollection_MQFDebugging__mpc_identifiersAsJsonValue__block_invoke;
  v7[3] = &unk_1E8234908;
  v7[4] = a1;
  v3 = v2;
  v8 = v3;
  [a1 enumerateSectionIdentifiersUsingBlock:v7];
  v4 = v8;
  v5 = v3;

  return v3;
}

@end