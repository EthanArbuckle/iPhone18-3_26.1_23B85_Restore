@interface MRMediaRemoteCopyPickableRoutesForCategory
@end

@implementation MRMediaRemoteCopyPickableRoutesForCategory

void __MRMediaRemoteCopyPickableRoutesForCategory_Async_block_invoke(uint64_t a1, const __CFArray *a2)
{
  Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MRMediaRemoteCopyPickableRoutesForCategory_Async_block_invoke_2;
  v5[3] = &unk_1E76A4A50;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = Copy;
  dispatch_async(v4, v5);
}

@end