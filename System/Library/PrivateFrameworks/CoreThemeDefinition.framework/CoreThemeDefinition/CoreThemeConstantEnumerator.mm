@interface CoreThemeConstantEnumerator
+ (id)enumeratorForGlobalListAtAddress:(void *)a3;
- (CoreThemeConstantEnumerator)initWithGlobalListAtAddress:(void *)a3;
- (id)firstConstantHelper;
- (id)lastConstantHelper;
- (id)nextConstantHelper;
- (id)previousConstantHelper;
- (int64_t)constantCount;
- (void)_moveToIndexOfLastEntry;
@end

@implementation CoreThemeConstantEnumerator

- (CoreThemeConstantEnumerator)initWithGlobalListAtAddress:(void *)a3
{
  v5.receiver = self;
  v5.super_class = CoreThemeConstantEnumerator;
  result = [(CoreThemeConstantEnumerator *)&v5 init];
  result->_globalListPointer = a3;
  result->_listIndex = -1;
  result->_indexOfLastEntry = -1;
  return result;
}

+ (id)enumeratorForGlobalListAtAddress:(void *)a3
{
  v3 = [[a1 alloc] initWithGlobalListAtAddress:a3];

  return v3;
}

- (void)_moveToIndexOfLastEntry
{
  self->_listIndex = -1;
  do
  {
    v3 = [(CoreThemeConstantEnumerator *)self nextConstantHelper];
  }

  while (v3 && [objc_msgSend(v3 "label")]);
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

  v2 = [(CoreThemeConstantEnumerator *)self currentConstantHelper];
  if (![objc_msgSend(v2 "label")])
  {
    self->_isPastLastEntry = 1;
  }

  return v2;
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
  v3 = [(CoreThemeConstantEnumerator *)self currentConstantHelper];
  if (![objc_msgSend(v3 "label")])
  {
    self->_isPastLastEntry = 1;
  }

  return v3;
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