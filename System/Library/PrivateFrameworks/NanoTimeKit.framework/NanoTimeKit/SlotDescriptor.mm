@interface SlotDescriptor
@end

@implementation SlotDescriptor

uint64_t __66___SlotDescriptor_supportsFamiliesOfComplications_inFace_forSlot___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) _complication:*(a1 + 40) supportsFamily:a2 inSlot:*(a1 + 48)];
  if (result)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end