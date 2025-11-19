@interface SUUIIndexBarLocaleStandardEntryListController
- (SUUIIndexBarLocaleStandardEntryListController)initWithSUUIIndexBarEntryListViewElement:(id)a3;
- (id)entryDescriptorAtIndex:(int64_t)a3;
- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)a3 returningRelativeSectionIndex:(int64_t *)a4;
- (int64_t)numberOfEntryDescriptors;
- (void)reloadViewElementData;
@end

@implementation SUUIIndexBarLocaleStandardEntryListController

- (SUUIIndexBarLocaleStandardEntryListController)initWithSUUIIndexBarEntryListViewElement:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SUUIIndexBarLocaleStandardEntryListController;
  v6 = [(SUUIIndexBarLocaleStandardEntryListController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryListViewElement, a3);
    v8 = SUUIRequiredVisibilitySetForLocalizedIndexedCollation();
    requiredVisibilitySet = v7->_requiredVisibilitySet;
    v7->_requiredVisibilitySet = v8;
  }

  return v7;
}

- (int64_t)numberOfEntryDescriptors
{
  v2 = [MEMORY[0x277D75700] currentCollation];
  v3 = [v2 sectionIndexTitles];
  v4 = [v3 count];

  return v4;
}

- (id)entryDescriptorAtIndex:(int64_t)a3
{
  v5 = [MEMORY[0x277D75700] currentCollation];
  v6 = [v5 sectionIndexTitles];
  v7 = [v6 objectAtIndex:a3];

  v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v7];
  v9 = [v8 length];
  v10 = SUUIViewElementFontWithStyle(self->_style);
  if (v10)
  {
    [v8 addAttribute:*MEMORY[0x277D740A8] value:v10 range:{0, v9}];
  }

  v11 = SUUIViewElementPlainColorWithStyle(self->_style, 0);
  if (v11)
  {
    [v8 addAttribute:*MEMORY[0x277D740C0] value:v11 range:{0, v9}];
  }

  v12 = [SUUIIndexBarEntryDescriptor entryDescriptorWithAttributedString:v8];
  if ([(NSSet *)self->_requiredVisibilitySet containsObject:v7])
  {
    [v12 setVisibilityPriority:1000];
  }

  return v12;
}

- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)a3 returningRelativeSectionIndex:(int64_t *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v5 = [MEMORY[0x277D75700] currentCollation];
  v6 = [v5 sectionForSectionIndexTitleAtIndex:a3];

  v7 = [MEMORY[0x277D75700] currentCollation];
  v8 = [v7 sectionTitles];
  v9 = [v8 objectAtIndex:v6];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"systemBucketID-%@", v9];

  return v10;
}

- (void)reloadViewElementData
{
  v5.receiver = self;
  v5.super_class = SUUIIndexBarLocaleStandardEntryListController;
  [(SUUIIndexBarEntryListController *)&v5 reloadViewElementData];
  v3 = [(SUUIIndexBarEntryListViewElement *)self->_entryListViewElement style];
  style = self->_style;
  if (style != v3 && ([(IKViewElementStyle *)style isEqual:v3]& 1) == 0)
  {
    objc_storeStrong(&self->_style, v3);
    [(SUUIIndexBarEntryListController *)self _didInvalidate];
  }
}

@end