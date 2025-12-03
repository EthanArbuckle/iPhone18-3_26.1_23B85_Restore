@interface SUUIMenuPageSectionContext
- (id)sectionsForIndex:(int64_t)index;
- (void)setSections:(id)sections forIndex:(int64_t)index;
@end

@implementation SUUIMenuPageSectionContext

- (id)sectionsForIndex:(int64_t)index
{
  sections = self->_sections;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v5 = [(NSMutableDictionary *)sections objectForKey:v4];

  return v5;
}

- (void)setSections:(id)sections forIndex:(int64_t)index
{
  sectionsCopy = sections;
  sections = self->_sections;
  if (!sections)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_sections;
    self->_sections = v7;

    sections = self->_sections;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  [(NSMutableDictionary *)sections setObject:sectionsCopy forKey:v9];
}

@end