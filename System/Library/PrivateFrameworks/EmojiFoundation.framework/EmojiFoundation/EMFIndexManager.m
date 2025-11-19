@interface EMFIndexManager
- (EMFIndexManager)initWithBundle:(id)a3;
- (EMFInvertedIndex)defaultIndex;
- (EMFInvertedIndex)stemmedIndex;
@end

@implementation EMFIndexManager

- (EMFIndexManager)initWithBundle:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v14.receiver = self;
    v14.super_class = EMFIndexManager;
    v6 = [(EMFIndexManager *)&v14 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_searchEngineBundle, a3);
      v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
      defaultIndexLock = v7->_defaultIndexLock;
      v7->_defaultIndexLock = v8;

      v10 = objc_alloc_init(MEMORY[0x1E696AD10]);
      stemmedIndexLock = v7->_stemmedIndexLock;
      v7->_stemmedIndexLock = v10;
    }

    self = v7;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (EMFInvertedIndex)defaultIndex
{
  [(NSLock *)self->_defaultIndexLock lock];
  if (!self->_triedLoadingDefaultIndex)
  {
    v3 = [EMFIndexLoader defaultIndexForBundle:self->_searchEngineBundle];
    defaultIndex = self->_defaultIndex;
    self->_defaultIndex = v3;

    self->_triedLoadingDefaultIndex = 1;
  }

  [(NSLock *)self->_defaultIndexLock unlock];
  v5 = self->_defaultIndex;

  return v5;
}

- (EMFInvertedIndex)stemmedIndex
{
  [(NSLock *)self->_stemmedIndexLock lock];
  if (!self->_triedLoadingStemmedIndex)
  {
    v3 = [EMFIndexLoader stemmedIndexForBundle:self->_searchEngineBundle];
    stemmedIndex = self->_stemmedIndex;
    self->_stemmedIndex = v3;

    self->_triedLoadingStemmedIndex = 1;
  }

  [(NSLock *)self->_stemmedIndexLock unlock];
  v5 = self->_stemmedIndex;

  return v5;
}

@end