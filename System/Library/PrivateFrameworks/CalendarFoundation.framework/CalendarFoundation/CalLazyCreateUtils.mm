@interface CalLazyCreateUtils
+ (void)addArray:(id)array toArray:(id *)toArray;
+ (void)addArray:(id)array withKey:(id)key toDictionaryOfArrays:(id *)arrays;
+ (void)addArray:(id)array withKey:(id)key toDictionaryOfSets:(id *)sets;
+ (void)addArray:(id)array withKey:(id)key toStrongTableOfArrays:(id *)arrays;
+ (void)addItem:(id)item withKey:(id)key toDictionaryOfArrays:(id *)arrays;
+ (void)addItem:(id)item withKey:(id)key toDictionaryOfSets:(id *)sets;
+ (void)addItem:(id)item withKey:(id)key toStrongTableOfArrays:(id *)arrays;
+ (void)addObject:(id)object toArray:(id *)array;
+ (void)addObject:(id)object toSet:(id *)set;
+ (void)addSet:(id)set toSet:(id *)toSet;
+ (void)addSet:(id)set withKey:(id)key toDictionaryOfSets:(id *)sets;
+ (void)setValue:(id)value withKey:(id)key inDictionary:(id *)dictionary;
@end

@implementation CalLazyCreateUtils

+ (void)addArray:(id)array toArray:(id *)toArray
{
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v5 = *toArray;
    if (!*toArray)
    {
      array = [MEMORY[0x1E695DF70] array];
      v7 = *toArray;
      *toArray = array;

      v5 = *toArray;
    }

    [v5 addObjectsFromArray:arrayCopy];
  }
}

+ (void)addObject:(id)object toArray:(id *)array
{
  objectCopy = object;
  v6 = *array;
  v9 = objectCopy;
  if (!*array)
  {
    array = [MEMORY[0x1E695DF70] array];
    v8 = *array;
    *array = array;

    objectCopy = v9;
    v6 = *array;
  }

  [v6 addObject:objectCopy];
}

+ (void)setValue:(id)value withKey:(id)key inDictionary:(id *)dictionary
{
  valueCopy = value;
  keyCopy = key;
  v8 = *dictionary;
  if (!*dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v10 = *dictionary;
    *dictionary = dictionary;

    v8 = *dictionary;
  }

  [v8 setObject:valueCopy forKeyedSubscript:keyCopy];
}

+ (void)addObject:(id)object toSet:(id *)set
{
  objectCopy = object;
  v6 = *set;
  v9 = objectCopy;
  if (!*set)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    v8 = *set;
    *set = v7;

    objectCopy = v9;
    v6 = *set;
  }

  [v6 addObject:objectCopy];
}

+ (void)addSet:(id)set toSet:(id *)toSet
{
  setCopy = set;
  if ([setCopy count])
  {
    v5 = *toSet;
    if (!*toSet)
    {
      v6 = [MEMORY[0x1E695DFA8] set];
      v7 = *toSet;
      *toSet = v6;

      v5 = *toSet;
    }

    [v5 unionSet:setCopy];
  }
}

+ (void)addArray:(id)array withKey:(id)key toDictionaryOfArrays:(id *)arrays
{
  arrayCopy = array;
  keyCopy = key;
  if ([arrayCopy count])
  {
    v8 = _acquireArrayFromDictionary(arrays, keyCopy);
    [v8 addObjectsFromArray:arrayCopy];
  }
}

+ (void)addItem:(id)item withKey:(id)key toDictionaryOfArrays:(id *)arrays
{
  itemCopy = item;
  v8 = _acquireArrayFromDictionary(arrays, key);
  [v8 addObject:itemCopy];
}

+ (void)addArray:(id)array withKey:(id)key toDictionaryOfSets:(id *)sets
{
  arrayCopy = array;
  keyCopy = key;
  if ([arrayCopy count])
  {
    v8 = _acquireSetFromDictionary(sets, keyCopy);
    [v8 addObjectsFromArray:arrayCopy];
  }
}

+ (void)addItem:(id)item withKey:(id)key toDictionaryOfSets:(id *)sets
{
  itemCopy = item;
  v8 = _acquireSetFromDictionary(sets, key);
  [v8 addObject:itemCopy];
}

+ (void)addSet:(id)set withKey:(id)key toDictionaryOfSets:(id *)sets
{
  setCopy = set;
  keyCopy = key;
  if ([setCopy count])
  {
    v8 = _acquireSetFromDictionary(sets, keyCopy);
    [v8 unionSet:setCopy];
  }
}

+ (void)addArray:(id)array withKey:(id)key toStrongTableOfArrays:(id *)arrays
{
  arrayCopy = array;
  keyCopy = key;
  if ([arrayCopy count])
  {
    v8 = _acquireArrayFromTable(arrays, keyCopy);
    [v8 addObjectsFromArray:arrayCopy];
  }
}

+ (void)addItem:(id)item withKey:(id)key toStrongTableOfArrays:(id *)arrays
{
  itemCopy = item;
  v8 = _acquireArrayFromTable(arrays, key);
  [v8 addObject:itemCopy];
}

@end