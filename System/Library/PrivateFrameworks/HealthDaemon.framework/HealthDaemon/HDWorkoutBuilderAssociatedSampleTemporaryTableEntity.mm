@interface HDWorkoutBuilderAssociatedSampleTemporaryTableEntity
+ (BOOL)withLocalTableName:(id)name error:(id *)error block:(id)block;
+ (id)disambiguatedDatabaseTable;
@end

@implementation HDWorkoutBuilderAssociatedSampleTemporaryTableEntity

+ (BOOL)withLocalTableName:(id)name error:(id *)error block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v11 = [threadDictionary objectForKeyedSubscript:@"HDWorkoutBuilderAssociatedSampleTemporaryTableEntityLocalTableKey"];

  v12 = [nameCopy copy];
  currentThread2 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary2 = [currentThread2 threadDictionary];
  [threadDictionary2 setObject:v12 forKeyedSubscript:@"HDWorkoutBuilderAssociatedSampleTemporaryTableEntityLocalTableKey"];

  v15 = blockCopy[2](blockCopy, error);
  currentThread3 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary3 = [currentThread3 threadDictionary];
  if (v11)
  {
    [threadDictionary3 setObject:v11 forKeyedSubscript:@"HDWorkoutBuilderAssociatedSampleTemporaryTableEntityLocalTableKey"];
  }

  else
  {
    [threadDictionary3 removeObjectForKey:@"HDWorkoutBuilderAssociatedSampleTemporaryTableEntityLocalTableKey"];
  }

  return v15;
}

+ (id)disambiguatedDatabaseTable
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v6 = [threadDictionary objectForKeyedSubscript:@"HDWorkoutBuilderAssociatedSampleTemporaryTableEntityLocalTableKey"];

  if (!v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDWorkoutBuilderEntity.mm" lineNumber:1502 description:@"Must have set the current thread's local table name."];
  }

  return v6;
}

@end