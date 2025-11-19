@interface NTKCFaceDetailDescriptionSectionController
+ (BOOL)hasDescriptionSectionForFace:(id)a3 inGallery:(BOOL)a4 orExternal:(BOOL)a5;
+ (id)_descriptionForFace:(id)a3 inGallery:(BOOL)a4 orExternal:(BOOL)a5;
- (BOOL)expanded;
- (NTKCFaceDetailDescriptionSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 external:(BOOL)a6;
- (NTKCFaceDetailDescriptionSectionDelegate)delegate;
- (id)_faceDescription;
- (void)_commonInit;
- (void)descriptionCellDidExpand:(id)a3;
- (void)faceDidChange;
- (void)setExpanded:(BOOL)a3;
@end

@implementation NTKCFaceDetailDescriptionSectionController

+ (BOOL)hasDescriptionSectionForFace:(id)a3 inGallery:(BOOL)a4 orExternal:(BOOL)a5
{
  v5 = [a1 _descriptionForFace:a3 inGallery:a4 orExternal:a5];
  v6 = [v5 length] != 0;

  return v6;
}

- (NTKCFaceDetailDescriptionSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 external:(BOOL)a6
{
  v6 = a6;
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailDescriptionSectionController;
  v7 = [(NTKCFaceDetailSectionController *)&v10 initWithTableViewController:a3 face:a4 inGallery:a5];
  v8 = v7;
  if (v7)
  {
    [(NTKCFaceDetailDescriptionSectionController *)v7 setExternal:v6];
  }

  return v8;
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  [(NTKCFaceDetailSectionController *)self setCell:v3];

  v4 = [(NTKCFaceDetailSectionController *)self cell];
  [v4 setDelegate:self];
}

- (void)faceDidChange
{
  v3 = [(NTKCFaceDetailDescriptionSectionController *)self _faceDescription];
  v4 = [v3 length];
  v5 = [(NTKCFaceDetailSectionController *)self cell];
  v6 = v5;
  if (!v4)
  {
    [v5 setText:0];
LABEL_6:

    goto LABEL_7;
  }

  v7 = [v5 text];
  v8 = [v3 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(NTKCFaceDetailSectionController *)self cell];
    [v9 rowHeight];
    v11 = v10;

    v12 = [(NTKCFaceDetailSectionController *)self cell];
    [v12 setText:v3];

    v13 = [(NTKCFaceDetailSectionController *)self cell];
    [v13 rowHeight];
    v15 = v14;

    v16 = [(NTKCFaceDetailSectionController *)self tableView];
    v17 = [(NTKCFaceDetailSectionController *)self cell];
    v6 = [v16 indexPathForCell:v17];

    if (v6)
    {
      v18 = MEMORY[0x277D75D18];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __59__NTKCFaceDetailDescriptionSectionController_faceDidChange__block_invoke;
      v19[3] = &unk_278783A10;
      v21 = v15;
      v22 = v11;
      v19[4] = self;
      v20 = v6;
      [v18 performWithoutAnimation:v19];
    }

    goto LABEL_6;
  }

LABEL_7:
}

void __59__NTKCFaceDetailDescriptionSectionController_faceDidChange__block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48) - *(a1 + 56);
  v3 = -v2;
  if (v2 >= 0.0)
  {
    v3 = *(a1 + 48) - *(a1 + 56);
  }

  if (v3 > 0.00000011920929)
  {
    v4 = [*(a1 + 32) tableView];
    [v4 contentOffset];
    v6 = v5;
    v8 = v7;

    v9 = v2 + v8;
    v10 = [*(a1 + 32) tableView];
    [v10 contentInset];
    v12 = v11;
    v13 = [*(a1 + 32) tableView];
    [v13 safeAreaInsets];
    v15 = v12 + v14;

    if (v9 >= -v15)
    {
      v16 = v9;
    }

    else
    {
      v16 = -v15;
    }

    v17 = [*(a1 + 32) tableView];
    [v17 setContentOffset:{v6, v16}];
  }

  v18 = [*(a1 + 32) tableView];
  v20[0] = *(a1 + 40);
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [v18 reloadRowsAtIndexPaths:v19 withRowAnimation:5];
}

- (BOOL)expanded
{
  v2 = [(NTKCFaceDetailSectionController *)self cell];
  v3 = [v2 expanded];

  return v3;
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  v4 = [(NTKCFaceDetailSectionController *)self cell];
  [v4 setExpanded:v3];
}

- (id)_faceDescription
{
  v3 = objc_opt_class();
  v4 = [(NTKCFaceDetailSectionController *)self face];
  v5 = [v3 _descriptionForFace:v4 inGallery:-[NTKCFaceDetailSectionController inGallery](self orExternal:{"inGallery"), -[NTKCFaceDetailDescriptionSectionController external](self, "external")}];

  return v5;
}

+ (id)_descriptionForFace:(id)a3 inGallery:(BOOL)a4 orExternal:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    v9 = [v7 faceDescriptionForExternal];
  }

  else
  {
    if (v6)
    {
      [v7 faceDescription];
    }

    else
    {
      [v7 faceDescriptionForLibrary];
    }
    v9 = ;
  }

  v10 = v9;

  return v10;
}

- (void)descriptionCellDidExpand:(id)a3
{
  v4 = [(NTKCFaceDetailDescriptionSectionController *)self delegate];
  [v4 descriptionSection:self didExpand:1];
}

- (NTKCFaceDetailDescriptionSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end