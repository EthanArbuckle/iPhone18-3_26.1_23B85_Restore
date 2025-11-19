@interface CNContact
@end

@implementation CNContact

void __68__CNContact_PKAdditions__pkContactWithNameComponents_labeledValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v9 = a3;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a3;
  v7 = a2;
  v8 = [v5 arrayWithObjects:&v9 count:1];
  [v4 pkAddLabeledValues:v8 withProperty:{v7, v9, v10}];
}

@end