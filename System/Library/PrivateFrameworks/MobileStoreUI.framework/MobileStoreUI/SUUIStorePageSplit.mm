@interface SUUIStorePageSplit
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SUUIStorePageSplit

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setDividerColor:self->_dividerColor];
  [v4 setNumberOfPageSections:self->_numberOfPageSections];
  [v4 setPageComponents:self->_pageComponents];
  [v4 setSectionContext:self->_sectionContext];
  [v4 setWidthFraction:self->_widthFraction];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIStorePageSplit;
  v4 = [(SUUIStorePageSplit *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: Count: %ld, Context: %@", v4, self->_numberOfPageSections, self->_sectionContext];

  return v5;
}

@end