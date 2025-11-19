@interface _UIDocumentSearchListController
- (_UIDocumentSearchListController)init;
- (_UIDocumentSearchListController)initWithModel:(id)a3;
@end

@implementation _UIDocumentSearchListController

- (_UIDocumentSearchListController)init
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [_UIDocumentPickerSearchContainerModel alloc];
  v8[0] = *MEMORY[0x277CC20C0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [(_UIDocumentPickerSearchContainerModel *)v3 initWithPickableTypes:v4 mode:1];

  v6 = [(_UIDocumentSearchListController *)self initWithModel:v5];
  return v6;
}

- (_UIDocumentSearchListController)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIDocumentSearchListController;
  v6 = [(_UIDocumentListController *)&v9 initWithModel:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    [(_UIDocumentSearchListController *)v7 setRestorationIdentifier:0];
  }

  return v7;
}

@end