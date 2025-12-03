@interface CoreThemeConstantEnumerator
+ (id)enumeratorForGlobalListAtAddress:(void *)address;
- (CoreThemeConstantEnumerator)initWithGlobalListAtAddress:(void *)address;
- (id)firstConstantHelper;
- (id)lastConstantHelper;
- (id)nextConstantHelper;
- (id)previousConstantHelper;
- (int64_t)constantCount;
- (void)_moveToIndexOfLastEntry;
@end

@implementation CoreThemeConstantEnumerator

- (CoreThemeConstantEnumerator)initWithGlobalListAtAddress:(void *)address
{
  v5.receiver = self;
  v5.super_class = CoreThemeConstantEnumerator;
  result = [(CoreThemeConstantEnumerator *)&v5 init];
  result->_globalListPointer = address;
  result->_listIndex = -1;
  result->_indexOfLastEntry = -1;
  return result;
}

+ (id)enumeratorForGlobalListAtAddress:(void *)address
{
  v3 = [[self alloc] initWithGlobalListAtAddress:address];

  return v3;
}

- (void)_moveToIndexOfLastEntry
{
  self->_listIndex = -1;
  do
  {
    nextConstantHelper = [(CoreThemeConstantEnumerator *)self nextConstantHelper];
  }

  while (nextConstantHelper && [objc_msgSend(nextConstantHelper "label")]);
  v4 = self->_listIndex - 1;
  self->_listIndex = v4;
  self->_indexOfLastEntry = v4;
}

- (int64_t)constantCount
{
  indexOfLastEntry = self->_indexOfLastEntry;
  if (indexOfLastEntry < 0)
  {
    listIndex = self->_listIndex;
    [(CoreThemeConstantEnumerator *)self _moveToIndexOfLastEntry];
    self->_listIndex = listIndex;
    indexOfLastEntry = self->_indexOfLastEntry;
  }

  return indexOfLastEntry + 1;
}

- (id)nextConstantHelper
{
  if (self->_isPastLastEntry)
  {
    return 0;
  }

  listIndex = self->_listIndex;
  self->_listIndex = listIndex + 1;
  if (__PAIR128__(listIndex, self->_globalListPointer) == __PAIR128__(-1, MEMORY[0x277D02798]))
  {
    self->_listIndex = 1;
  }

  currentConstantHelper = [(CoreThemeConstantEnumerator *)self currentConstantHelper];
  if (![objc_msgSend(currentConstantHelper "label")])
  {
    self->_isPastLastEntry = 1;
  }

  return currentConstantHelper;
}

- (id)previousConstantHelper
{
  listIndex = self->_listIndex;
  if (listIndex < 0)
  {
    return 0;
  }

  self->_listIndex = listIndex - 1;
  self->_isPastLastEntry = 0;
  return [(CoreThemeConstantEnumerator *)self currentConstantHelper];
}

- (id)firstConstantHelper
{
  self->_listIndex = 0;
  currentConstantHelper = [(CoreThemeConstantEnumerator *)self currentConstantHelper];
  if (![objc_msgSend(currentConstantHelper "label")])
  {
    self->_isPastLastEntry = 1;
  }

  return currentConstantHelper;
}

- (id)lastConstantHelper
{
  indexOfLastEntry = self->_indexOfLastEntry;
  if (indexOfLastEntry < 0)
  {
    [(CoreThemeConstantEnumerator *)self _moveToIndexOfLastEntry];
  }

  else
  {
    self->_listIndex = indexOfLastEntry;
  }

  return [(CoreThemeConstantEnumerator *)self currentConstantHelper];
}

@end