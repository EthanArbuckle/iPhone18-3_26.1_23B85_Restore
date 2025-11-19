@interface FastRegistration
@end

@implementation FastRegistration

uint64_t __FastRegistration_computeSignatures_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (*(result + 60) == 1)
  {
    result = FastRegistration_processProjections(*(*(result + 48) + 32), *(*(result + 48) + 40), a3);
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  if (!*(*(*(v3 + 32) + 8) + 24))
  {
    if (*(v3 + 56))
    {
      result = Projections_computeMeanStdTable(*(*(v3 + 48) + 32), *(*(v3 + 48) + 40), (*(v3 + 48) + 48));
      *(*(*(v3 + 40) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t __FastRegistration_computeSignatures_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (*(result + 60) == 1)
  {
    result = FastRegistration_processProjections(**(result + 48), *(*(result + 48) + 8), a3);
    *(*(*(v3 + 32) + 8) + 24) = result;
  }

  if (!*(*(*(v3 + 32) + 8) + 24))
  {
    if (*(v3 + 56))
    {
      result = Projections_computeMeanStdTable(**(v3 + 48), *(*(v3 + 48) + 8), (*(v3 + 48) + 16));
      *(*(*(v3 + 40) + 8) + 24) = result;
    }
  }

  return result;
}

uint64_t __FastRegistration_register_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  STACK[0x19878] = *MEMORY[0x1E69E9840];
  result = Projections_computeShiftBruteForce(*(*(a1 + 40) + 32), *(*(a1 + 40) + 40), (*(a1 + 40) + 48), *(*(a1 + 48) + 32), *(*(a1 + 48) + 40), (*(a1 + 48) + 48), *(a1 + 72), &STACK[0x13260], 0.0, &a9, *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __FastRegistration_register_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  STACK[0x19878] = *MEMORY[0x1E69E9840];
  result = Projections_computeShiftBruteForce(**(a1 + 40), *(*(a1 + 40) + 8), (*(a1 + 40) + 16), **(a1 + 48), *(*(a1 + 48) + 8), (*(a1 + 48) + 16), *(a1 + 72), &STACK[0x13260], 0.0, &a9, *(a1 + 56), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end