@interface SUUIIndexBarSingleEntryListController
- (SUUIIndexBarSingleEntryListController)initWithEntryViewElement:(id)a3;
- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)a3 returningRelativeSectionIndex:(int64_t *)a4;
- (void)reloadViewElementData;
@end

@implementation SUUIIndexBarSingleEntryListController

- (SUUIIndexBarSingleEntryListController)initWithEntryViewElement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIIndexBarSingleEntryListController;
  v6 = [(SUUIIndexBarSingleEntryListController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryViewElement, a3);
  }

  return v7;
}

- (void)reloadViewElementData
{
  v7.receiver = self;
  v7.super_class = SUUIIndexBarSingleEntryListController;
  [(SUUIIndexBarEntryListController *)&v7 reloadViewElementData];
  v3 = [(SUUIIndexBarEntryViewElement *)self->_entryViewElement childElement];
  descriptiveViewElement = self->_descriptiveViewElement;
  if (descriptiveViewElement != v3 && ([(SUUIViewElement *)descriptiveViewElement isEqual:v3]& 1) == 0)
  {
    objc_storeStrong(&self->_descriptiveViewElement, v3);
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

- (id)targetIndexBarEntryIDForEntryDescriptorAtIndex:(int64_t)a3 returningRelativeSectionIndex:(int64_t *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  return [(SUUIIndexBarEntryViewElement *)self->_entryViewElement targetIndexBarEntryID];
}

@end