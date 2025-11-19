@interface BOMBomNewFromDirectory
@end

@implementation BOMBomNewFromDirectory

void __BOMBomNewFromDirectory_parallel_block_invoke(uint64_t a1)
{
  ActualPath = BOMCopierSourceEntryGetActualPath(*(a1 + 40));
  Name = BOMCopierSourceEntryGetName(*(a1 + 40));
  v4 = BOMFSObjectNewFromPathWithSys(ActualPath, *(a1 + 64), *(a1 + 48));
  if (v4)
  {
    v5 = v4;
    BOMFSObjectSetPathName(v4, Name, 1);
    v6 = 8;
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Could not create BOMFSObject for %s\n", ActualPath);
    v7 = *(a1 + 56);
    *(v7 + 52) = 1;
    *(v7 + 56) = strdup(ActualPath);
    v5 = strdup(Name);
    v6 = 64;
  }

  *(*(a1 + 56) + v6) = v5;
  v8 = *(*(*(a1 + 32) + 8) + 48);
  if (v8)
  {

    dispatch_group_leave(v8);
  }
}

@end