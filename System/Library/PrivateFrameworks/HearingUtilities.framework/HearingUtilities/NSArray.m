@interface NSArray
@end

@implementation NSArray

void __77__NSArray__AX_HA_PROGRAMS_ARRAY___setProgram_withOtherSidePrograms_selected___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v9 = v4;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v6 = [v4 isStreamOrMixingStream];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      v5 = v9;
    }
  }

  if ([v5 isSelected])
  {
    v7 = [v9 isStreamOrMixingStream];
    v8 = 48;
    if (v7)
    {
      v8 = 40;
    }

    objc_storeStrong((*(*(a1 + v8) + 8) + 40), a2);
  }
}

void __77__NSArray__AX_HA_PROGRAMS_ARRAY___setProgram_withOtherSidePrograms_selected___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v10 = v4;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [v4 isStreamOrMixingStream];
    v5 = v10;
    if ((v6 & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v5 = v10;
    }
  }

  v7 = [v5 index];
  if (v7 != [*(a1 + 32) index] && objc_msgSend(v10, "isSelected"))
  {
    if ([v10 isMixingStream])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    }

    v8 = [v10 isStreamOrMixingStream];
    v9 = 64;
    if (v8)
    {
      v9 = 56;
    }

    objc_storeStrong((*(*(a1 + v9) + 8) + 40), a2);
  }
}

void __61__NSArray__AX_HA_PROGRAMS_ARRAY___programThatMatchesProgram___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [v8 index];
  if (v7 == [*(a1 + 32) index])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end