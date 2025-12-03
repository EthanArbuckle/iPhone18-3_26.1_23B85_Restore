@interface SUUIDynamicPageSectionIndexMapper
- (BOOL)getItem:(unint64_t *)item section:(unint64_t *)section forGlobalIndex:(int64_t)index;
- (_NSRange)rangeForSectionAtIndex:(int64_t)index;
- (id)entityIndexPathForGlobalIndex:(int64_t)index;
- (int64_t)globalIndexForEntityIndexPath:(id)path;
- (int64_t)totalNumberOfEntities;
- (void)_loadDataIfNeeded;
- (void)dealloc;
- (void)setEntityProvider:(id)provider;
@end

@implementation SUUIDynamicPageSectionIndexMapper

- (void)dealloc
{
  sectionIndexToEntityRange = self->_sectionIndexToEntityRange;
  if (sectionIndexToEntityRange)
  {
    free(sectionIndexToEntityRange);
    self->_sectionIndexToEntityRange = 0;
  }

  v4.receiver = self;
  v4.super_class = SUUIDynamicPageSectionIndexMapper;
  [(SUUIDynamicPageSectionIndexMapper *)&v4 dealloc];
}

- (void)setEntityProvider:(id)provider
{
  providerCopy = provider;
  p_entityProvider = &self->_entityProvider;
  if (self->_entityProvider != providerCopy)
  {
    v7 = providerCopy;
    objc_storeStrong(p_entityProvider, provider);
    p_entityProvider = objc_opt_respondsToSelector();
    providerCopy = v7;
    *&self->_entityProviderFlags = *&self->_entityProviderFlags & 0xFE | p_entityProvider & 1;
    self->_numberOfSections = -1;
  }

  MEMORY[0x2821F96F8](p_entityProvider, providerCopy);
}

- (int64_t)totalNumberOfEntities
{
  [(SUUIDynamicPageSectionIndexMapper *)self _loadDataIfNeeded];
  numberOfSections = self->_numberOfSections;
  if (numberOfSections >= 1 && (sectionIndexToEntityRange = self->_sectionIndexToEntityRange) != 0)
  {
    return sectionIndexToEntityRange[numberOfSections - 1].length + sectionIndexToEntityRange[numberOfSections - 1].location;
  }

  else
  {
    return 0;
  }
}

- (id)entityIndexPathForGlobalIndex:(int64_t)index
{
  [(SUUIDynamicPageSectionIndexMapper *)self _loadDataIfNeeded];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(SUUIDynamicPageSectionIndexMapper *)self getItem:&v8 section:&v7 forGlobalIndex:index])
  {
    v5 = [MEMORY[0x277CCAA70] indexPathForItem:v8 inSection:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)getItem:(unint64_t *)item section:(unint64_t *)section forGlobalIndex:(int64_t)index
{
  [(SUUIDynamicPageSectionIndexMapper *)self _loadDataIfNeeded];
  numberOfSections = self->_numberOfSections;
  v10 = numberOfSections < 1;
  v11 = numberOfSections - 1;
  if (v10)
  {
    return 0;
  }

  sectionIndexToEntityRange = self->_sectionIndexToEntityRange;
  if (!sectionIndexToEntityRange)
  {
    return 0;
  }

  v13 = 0;
  while (1)
  {
    v14 = (v11 + v13) >> 1;
    v15 = &sectionIndexToEntityRange[v14];
    location = v15->location;
    length = v15->length;
    v19 = index >= v15->location;
    v18 = index - v15->location;
    v19 = !v19 || v18 >= length;
    if (!v19)
    {
      break;
    }

    if (index < location)
    {
      v11 = v14 - 1;
    }

    else
    {
      v13 = v14 + 1;
    }

    if (v11 < v13)
    {
      return 0;
    }
  }

  if (item)
  {
    *item = v18;
  }

  if (section)
  {
    *section = v14;
  }

  return 1;
}

- (int64_t)globalIndexForEntityIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (section < self->_numberOfSections)
  {
    v7 = &self->_sectionIndexToEntityRange[section];
    location = v7->location;
    length = v7->length;
    item = [pathCopy item];
    if (item < length)
    {
      v6 = item + location;
    }
  }

  return v6;
}

- (_NSRange)rangeForSectionAtIndex:(int64_t)index
{
  [(SUUIDynamicPageSectionIndexMapper *)self _loadDataIfNeeded];
  length = 0;
  numberOfSections = self->_numberOfSections;
  location = 0x7FFFFFFFFFFFFFFFLL;
  if (numberOfSections > index && (index & 0x8000000000000000) == 0 && numberOfSections >= 1)
  {
    v8 = &self->_sectionIndexToEntityRange[index];
    location = v8->location;
    length = v8->length;
  }

  result.length = length;
  result.location = location;
  return result;
}

- (void)_loadDataIfNeeded
{
  if (self->_numberOfSections < 0)
  {
    v18 = v7;
    v19 = v6;
    v20 = v5;
    v21 = v4;
    v22 = v3;
    v23 = v2;
    v24 = v8;
    v25 = v9;
    sectionIndexToEntityRange = self->_sectionIndexToEntityRange;
    if (sectionIndexToEntityRange)
    {
      free(sectionIndexToEntityRange);
    }

    if (*&self->_entityProviderFlags)
    {
      numberOfSections = [(SUUIEntityProviding *)self->_entityProvider numberOfSections];
      self->_sectionIndexToEntityRange = malloc_type_calloc(numberOfSections, 0x10uLL, 0x1000040451B5BE8uLL);
      if (numberOfSections < 1)
      {
LABEL_9:
        self->_numberOfSections = numberOfSections;
        return;
      }
    }

    else
    {
      numberOfSections = 1;
      self->_sectionIndexToEntityRange = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    }

    v13 = 0;
    v14 = 0;
    for (i = 0; i != numberOfSections; ++i)
    {
      v16 = [(SUUIEntityProviding *)self->_entityProvider numberOfEntitiesInSection:i, v18, v19, v20, v21, v22, v23, v24, v25];
      v17 = &self->_sectionIndexToEntityRange[v13];
      v17->location = v14;
      v17->length = v16;
      v14 += v16;
      ++v13;
    }

    goto LABEL_9;
  }
}

@end