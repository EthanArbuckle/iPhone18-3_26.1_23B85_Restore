@interface DisplaySetBrightnessFactor
@end

@implementation DisplaySetBrightnessFactor

uint64_t ___DisplaySetBrightnessFactor_block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 16))
  {
    v1 = *(*(result + 32) + 16);
    v2 = *(*(result + 32) + 24);
    if (*(*(result + 32) + 44))
    {
      return v1(v2, @"DisplayOn", *MEMORY[0x1E695E4D0]);
    }

    else
    {
      return v1(v2, @"DisplayOn", *MEMORY[0x1E695E4C0]);
    }
  }

  return result;
}

uint64_t ___DisplaySetBrightnessFactor_block_invoke_748(uint64_t result)
{
  if (*(*(result + 32) + 16))
  {
    return (*(*(result + 32) + 16))(*(*(result + 32) + 24), @"DisplayBrightnessFactorZero", *MEMORY[0x1E695E4D0]);
  }

  return result;
}

@end