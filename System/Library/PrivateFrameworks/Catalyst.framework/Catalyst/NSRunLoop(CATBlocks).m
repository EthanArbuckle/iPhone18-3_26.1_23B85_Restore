@interface NSRunLoop(CATBlocks)
+ (void)cat_performBlock:()CATBlocks;
+ (void)cat_performBlockOnMainRunLoop:()CATBlocks;
- (void)cat_performBlock:()CATBlocks;
- (void)cat_performInModes:()CATBlocks block:;
@end

@implementation NSRunLoop(CATBlocks)

+ (void)cat_performBlock:()CATBlocks
{
  v3 = MEMORY[0x277CBEB88];
  v4 = a3;
  v5 = [v3 currentRunLoop];
  [v5 cat_performBlock:v4];
}

+ (void)cat_performBlockOnMainRunLoop:()CATBlocks
{
  v3 = MEMORY[0x277CBEB88];
  v4 = a3;
  v5 = [v3 mainRunLoop];
  [v5 cat_performBlock:v4];
}

- (void)cat_performBlock:()CATBlocks
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB18];
  v10[0] = *MEMORY[0x277CBE738];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [v5 arrayWithArray:v6];

  v8 = [a1 currentMode];
  if (v8)
  {
    [v7 addObject:v8];
  }

  [a1 cat_performInModes:v7 block:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cat_performInModes:()CATBlocks block:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 getCFRunLoop];
  CFRunLoopPerformBlock(v8, v7, v6);

  CFRunLoopWakeUp(v8);
}

@end