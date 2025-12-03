@interface SUUIIndexBarSingleEntryListController
- (SUUIIndexBarSingleEntryListController)initWithEntryViewElement:(id)element;
- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex;
- (void)reloadViewElementData;
@end

@implementation SUUIIndexBarSingleEntryListController

- (SUUIIndexBarSingleEntryListController)initWithEntryViewElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUIIndexBarSingleEntryListController;
  v6 = [(SUUIIndexBarSingleEntryListController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryViewElement, element);
  }

  return v7;
}

- (void)reloadViewElementData
{
  v7.receiver = self;
  v7.super_class = SUUIIndexBarSingleEntryListController;
  [(SUUIIndexBarEntryListController *)&v7 reloadViewElementData];
  childElement = [(SUUIIndexBarEntryViewElement *)self->_entryViewElement childElement];
  descriptiveViewElement = self->_descriptiveViewElement;
  if (descriptiveViewElement != childElement && ([(SUUIViewElement *)descriptiveViewElement isEqual:childElement]& 1) == 0)
  {
    objc_storeStrong(&self->_descriptiveViewElement, childElement);
    [(SUUIIndexBarEntryListController *)self _didInvalidate];
  }

  v5 = SUUIIndexBarEntryDescriptorForIndexBarEntryViewElement(self->_entryViewElement, self->_descriptiveViewElement);
  entryDescriptor = self->_entryDescriptor;
  if (entryDescriptor != v5 && ![(SUUIIndexBarEntryDescriptor *)entryDescriptor isEqual:v5])
  {
    objc_storeStrong(&self->_entryDescriptor, v5);
    [(SUUIIndexBarEntryListController *)self _didInvalidate];
  }
}

- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)index returningRelativeSectionIndex:(int64_t *)sectionIndex
{
  if (sectionIndex)
  {
    *sectionIndex = 0;
  }

  return [(SUUIIndexBarEntryViewElement *)self->_entryViewElement targetIndexBarEntryID];
}

@end