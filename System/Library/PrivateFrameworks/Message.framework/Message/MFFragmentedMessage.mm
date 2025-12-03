@interface MFFragmentedMessage
- (void)initWithUIDAndSize:(void *)size mainFile:(void *)file existingParts:;
@end

@implementation MFFragmentedMessage

- (void)initWithUIDAndSize:(void *)size mainFile:(void *)file existingParts:
{
  sizeCopy = size;
  fileCopy = file;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = MFFragmentedMessage;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    self = v10;
    if (v10)
    {
      v12 = *a2;
      *(v10 + 5) = *(a2 + 2);
      *(v10 + 24) = v12;
      objc_storeStrong(v10 + 1, size);
      -[MFFragmentedMessage initWithUIDAndSize:mainFile:existingParts:].cold.1([fileCopy copy], self);
    }
  }

  return self;
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