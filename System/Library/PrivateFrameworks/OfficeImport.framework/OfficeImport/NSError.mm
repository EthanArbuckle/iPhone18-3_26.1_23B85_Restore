@interface NSError
@end

@implementation NSError

uint64_t __46__NSError_TSUAdditions__tsu_isOutOfSpaceError__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 2)
  {
    v9 = @"com.apple.iWork.TSUtility";
  }

  else
  {
    if (a3 == 28)
    {
      v8 = MEMORY[0x277CCA5B8];
    }

    else
    {
      if (a3 != 640)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v8 = MEMORY[0x277CCA050];
    }

    v9 = *v8;
  }

  v10 = [v6 isEqualToString:v9];
LABEL_10:

  return v10;
}

uint64_t __42__NSError_TSUAdditions__tsu_isCancelError__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 3072)
  {
    if (([v6 isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
    {
      v8 = @"_OnDemandResourcesErrorDomain";
      goto LABEL_8;
    }

    v9 = 1;
  }

  else
  {
    if (a3 == -999)
    {
      v8 = *MEMORY[0x277CCA738];
LABEL_8:
      v9 = [v6 isEqualToString:v8];
      goto LABEL_9;
    }

    v9 = 0;
  }

LABEL_9:

  return v9;
}

uint64_t __46__NSError_TSUAdditions__tsu_isNoSuchFileError__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 2)
  {
    v8 = MEMORY[0x277CCA5B8];
  }

  else
  {
    if (a3 != 260 && a3 != 4)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = MEMORY[0x277CCA050];
  }

  v9 = [v6 isEqualToString:*v8];
LABEL_8:

  return v9;
}

uint64_t __33__NSError_TSUIO__tsu_isReadError__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 256 && ([v6 isEqualToString:*MEMORY[0x277CCA050]] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v7 objectForKeyedSubscript:@"TSUIOErrorType"];
    v8 = [v9 isEqual:&unk_286F6D7E8];
  }

  return v8;
}

uint64_t __38__NSError_TSUIO__tsu_isCorruptedError__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == 259)
  {
    return [a2 isEqualToString:*MEMORY[0x277CCA050]];
  }

  else
  {
    return 0;
  }
}

uint64_t __34__NSError_TSUIO__tsu_isWriteError__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 512 && ([v6 isEqualToString:*MEMORY[0x277CCA050]] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v7 objectForKeyedSubscript:@"TSUIOErrorType"];
    v8 = [v9 isEqual:&unk_286F6D800];
  }

  return v8;
}

@end