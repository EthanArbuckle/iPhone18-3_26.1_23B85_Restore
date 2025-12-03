@interface HMBLocalSQLIteratorRowInputBlock
- (HMBLocalSQLIteratorRowInputBlock)initWithSQLContext:(id)context zoneRow:(unint64_t)row;
@end

@implementation HMBLocalSQLIteratorRowInputBlock

- (HMBLocalSQLIteratorRowInputBlock)initWithSQLContext:(id)context zoneRow:(unint64_t)row
{
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__536;
  v17 = __Block_byref_object_dispose__537;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HMBLocalSQLIteratorRowInputBlock_initWithSQLContext_zoneRow___block_invoke;
  v12[3] = &unk_2786E1A10;
  v12[4] = &v13;
  v7 = [contextCopy sqlBlockWithActivity:0 block:v12];
  v8 = v14[5];
  v11.receiver = self;
  v11.super_class = HMBLocalSQLIteratorRowInputBlock;
  v9 = [(HMBLocalSQLIteratorRowBlock *)&v11 initWithSQLContext:contextCopy zoneRow:row statement:v8 isAscending:1];
  _Block_object_dispose(&v13, 8);

  return v9;
}

uint64_t __63__HMBLocalSQLIteratorRowInputBlock_initWithSQLContext_zoneRow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 selectReadyInputBlocks];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

@end