@interface MFFragmentedMessage
- (void)initWithUIDAndSize:(void *)a3 mainFile:(void *)a4 existingParts:;
@end

@implementation MFFragmentedMessage

- (void)initWithUIDAndSize:(void *)a3 mainFile:(void *)a4 existingParts:
{
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = MFFragmentedMessage;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v10;
    if (v10)
    {
      v12 = *a2;
      *(v10 + 5) = *(a2 + 2);
      *(v10 + 24) = v12;
      objc_storeStrong(v10 + 1, a3);
      -[MFFragmentedMessage initWithUIDAndSize:mainFile:existingParts:].cold.1([v9 copy], a1);
    }
  }

  return a1;
}

- (void)initWithUIDAndSize:(void *)a1 mainFile:(uint64_t)a2 existingParts:.cold.1(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E695E0F0];
  if (a1)
  {
    v3 = a1;
  }

  objc_storeStrong((a2 + 16), v3);
}

@end