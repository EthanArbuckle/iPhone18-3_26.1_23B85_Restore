@interface SUUIMenuPageSectionContext
- (id)sectionsForIndex:(int64_t)a3;
- (void)setSections:(id)a3 forIndex:(int64_t)a4;
@end

@implementation SUUIMenuPageSectionContext

- (id)sectionsForIndex:(int64_t)a3
{
  sections = self->_sections;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)sections objectForKey:v4];

  return v5;
}

- (void)setSections:(id)a3 forIndex:(int64_t)a4
{
  v10 = a3;
  sections = self->_sections;
  if (!sections)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = self->_sections;
    self->_sections = v7;

    sections = self->_sections;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableDictionary *)sections setObject:v10 forKey:v9];
}

@end