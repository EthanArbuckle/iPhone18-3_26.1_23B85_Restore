@interface NTKCFaceDetailDescriptionSectionController
+ (BOOL)hasDescriptionSectionForFace:(id)face inGallery:(BOOL)gallery orExternal:(BOOL)external;
+ (id)_descriptionForFace:(id)face inGallery:(BOOL)gallery orExternal:(BOOL)external;
- (BOOL)expanded;
- (NTKCFaceDetailDescriptionSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery external:(BOOL)external;
- (NTKCFaceDetailDescriptionSectionDelegate)delegate;
- (id)_faceDescription;
- (void)_commonInit;
- (void)descriptionCellDidExpand:(id)expand;
- (void)faceDidChange;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation NTKCFaceDetailDescriptionSectionController

+ (BOOL)hasDescriptionSectionForFace:(id)face inGallery:(BOOL)gallery orExternal:(BOOL)external
{
  v5 = [self _descriptionForFace:face inGallery:gallery orExternal:external];
  v6 = [v5 length] != 0;

  return v6;
}

- (NTKCFaceDetailDescriptionSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery external:(BOOL)external
{
  externalCopy = external;
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailDescriptionSectionController;
  v7 = [(NTKCFaceDetailSectionController *)&v10 initWithTableViewController:controller face:face inGallery:gallery];
  v8 = v7;
  if (v7)
  {
    [(NTKCFaceDetailDescriptionSectionController *)v7 setExternal:externalCopy];
  }

  return v8;
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  [(NTKCFaceDetailSectionController *)self setCell:v3];

  cell = [(NTKCFaceDetailSectionController *)self cell];
  [cell setDelegate:self];
}

- (void)faceDidChange
{
  _faceDescription = [(NTKCFaceDetailDescriptionSectionController *)self _faceDescription];
  v4 = [_faceDescription length];
  cell = [(NTKCFaceDetailSectionController *)self cell];
  v6 = cell;
  if (!v4)
  {
    [cell setText:0];
LABEL_6:

    goto LABEL_7;
  }

  text = [cell text];
  v8 = [_faceDescription isEqualToString:text];

  if ((v8 & 1) == 0)
  {
    cell2 = [(NTKCFaceDetailSectionController *)self cell];
    [cell2 rowHeight];
    v11 = v10;

    cell3 = [(NTKCFaceDetailSectionController *)self cell];
    [cell3 setText:_faceDescription];

    cell4 = [(NTKCFaceDetailSectionController *)self cell];
    [cell4 rowHeight];
    v15 = v14;

    tableView = [(NTKCFaceDetailSectionController *)self tableView];
    cell5 = [(NTKCFaceDetailSectionController *)self cell];
    v6 = [tableView indexPathForCell:cell5];

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
  cell = [(NTKCFaceDetailSectionController *)self cell];
  expanded = [cell expanded];

  return expanded;
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  cell = [(NTKCFaceDetailSectionController *)self cell];
  [cell setExpanded:expandedCopy];
}

- (id)_faceDescription
{
  v3 = objc_opt_class();
  face = [(NTKCFaceDetailSectionController *)self face];
  v5 = [v3 _descriptionForFace:face inGallery:-[NTKCFaceDetailSectionController inGallery](self orExternal:{"inGallery"), -[NTKCFaceDetailDescriptionSectionController external](self, "external")}];

  return v5;
}

+ (id)_descriptionForFace:(id)face inGallery:(BOOL)gallery orExternal:(BOOL)external
{
  externalCopy = external;
  galleryCopy = gallery;
  faceCopy = face;
  v8 = faceCopy;
  if (externalCopy)
  {
    faceDescriptionForExternal = [faceCopy faceDescriptionForExternal];
  }

  else
  {
    if (galleryCopy)
    {
      [faceCopy faceDescription];
    }

    else
    {
      [faceCopy faceDescriptionForLibrary];
    }
    faceDescriptionForExternal = ;
  }

  v10 = faceDescriptionForExternal;

  return v10;
}

- (void)descriptionCellDidExpand:(id)expand
{
  delegate = [(NTKCFaceDetailDescriptionSectionController *)self delegate];
  [delegate descriptionSection:self didExpand:1];
}

- (NTKCFaceDetailDescriptionSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end