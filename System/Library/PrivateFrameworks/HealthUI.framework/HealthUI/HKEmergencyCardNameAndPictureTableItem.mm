@interface HKEmergencyCardNameAndPictureTableItem
- (HKEmergencyCardRowHeightChangeDelegate)rowHeightChangeDelegate;
- (double)_cellFittedHeightWithWidth:(double)width;
- (double)tableView:(id)view estimatedHeightForRowAtIndex:(int64_t)index;
- (double)tableView:(id)view heightForRowAtIndex:(int64_t)index;
- (id)_cell;
- (id)_makeMedicalIDPhotoMenu;
- (id)initInEditMode:(BOOL)mode;
- (id)title;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (void)_checkOrRequestForCameraAccessIfNeededWithCompletion:(id)completion;
- (void)_editPhotoTapped:(id)tapped;
- (void)_updateMedicalIDPhotoMenu;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)medicalIDEditorCell:(id)cell didChangeHeight:(double)height keepRectVisible:(CGRect)visible inView:(id)view;
- (void)medicalIDEditorCellDidBeginEditing:(id)editing keepRectVisible:(CGRect)visible inView:(id)view;
- (void)medicalIDEditorCellDidChangeSelection:(id)selection keepRectVisible:(CGRect)visible inView:(id)view;
- (void)medicalIDEditorCellDidChangeValue:(id)value;
- (void)presentCameraAuthorizationStatusDeniedAlert;
- (void)setData:(id)data;
@end

@implementation HKEmergencyCardNameAndPictureTableItem

- (id)initInEditMode:(BOOL)mode
{
  modeCopy = mode;
  if (!mode)
  {
    [(HKEmergencyCardNameAndPictureTableItem *)a2 initInEditMode:?];
  }

  v6.receiver = self;
  v6.super_class = HKEmergencyCardNameAndPictureTableItem;
  return [(HKEmergencyCardTableItem *)&v6 initInEditMode:modeCopy];
}

- (id)title
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"name" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_cell
{
  cell = self->_cell;
  if (!cell)
  {
    v4 = [[HKMedicalIDEditorNameAndPhotoCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_cell;
    self->_cell = v4;

    [(HKMedicalIDEditorCell *)self->_cell setEditDelegate:self];
    [(HKMedicalIDEditorMultilineStringCell *)self->_cell setHeightChangeDelegate:self];
    [(HKEmergencyCardNameAndPictureTableItem *)self _updateMedicalIDPhotoMenu];
    editPhotoButton = [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell editPhotoButton];
    [editPhotoButton setShowsMenuAsPrimaryAction:1];

    editPhotoLabelButton = [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell editPhotoLabelButton];
    [editPhotoLabelButton setShowsMenuAsPrimaryAction:1];

    editPhotoButton2 = [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell editPhotoButton];
    [editPhotoButton2 addTarget:self action:sel__editPhotoTapped_ forControlEvents:64];

    editPhotoLabelButton2 = [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell editPhotoLabelButton];
    [editPhotoLabelButton2 addTarget:self action:sel__editPhotoTapped_ forControlEvents:64];

    cell = self->_cell;
  }

  return cell;
}

- (void)_editPhotoTapped:(id)tapped
{
  _cell = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  [_cell commitEditing];

  _cell2 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  [_cell2 beginEditing];
}

- (double)tableView:(id)view estimatedHeightForRowAtIndex:(int64_t)index
{
  [view frame];

  [(HKEmergencyCardNameAndPictureTableItem *)self _cellFittedHeightWithWidth:v5];
  return result;
}

- (double)tableView:(id)view heightForRowAtIndex:(int64_t)index
{
  [view frame];

  [(HKEmergencyCardNameAndPictureTableItem *)self _cellFittedHeightWithWidth:v5];
  return result;
}

- (double)_cellFittedHeightWithWidth:(double)width
{
  _cell = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  [_cell layoutIfNeeded];

  _cell2 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  [_cell2 sizeThatFits:{width, 1.79769313e308}];
  v8 = v7;

  return v8;
}

- (void)medicalIDEditorCell:(id)cell didChangeHeight:(double)height keepRectVisible:(CGRect)visible inView:(id)view
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  viewCopy = view;
  rowHeightChangeDelegate = [(HKEmergencyCardNameAndPictureTableItem *)self rowHeightChangeDelegate];
  [rowHeightChangeDelegate tableItem:self heightDidChangeForRowIndex:0 keepRectVisible:viewCopy inView:{x, y, width, height}];
}

- (void)medicalIDEditorCellDidBeginEditing:(id)editing keepRectVisible:(CGRect)visible inView:(id)view
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  viewCopy = view;
  rowHeightChangeDelegate = [(HKEmergencyCardNameAndPictureTableItem *)self rowHeightChangeDelegate];
  [rowHeightChangeDelegate tableItemDidBeginEditing:self keepRectVisible:viewCopy inView:{x, y, width, height}];
}

- (void)medicalIDEditorCellDidChangeSelection:(id)selection keepRectVisible:(CGRect)visible inView:(id)view
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  viewCopy = view;
  rowHeightChangeDelegate = [(HKEmergencyCardNameAndPictureTableItem *)self rowHeightChangeDelegate];
  [rowHeightChangeDelegate tableItemDidChangeSelection:self keepRectVisible:viewCopy inView:{x, y, width, height}];
}

- (void)setData:(id)data
{
  v12.receiver = self;
  v12.super_class = HKEmergencyCardNameAndPictureTableItem;
  [(HKEmergencyCardTableItem *)&v12 setData:data];
  _cell = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  data = [(HKEmergencyCardTableItem *)self data];
  name = [data name];
  [_cell setName:name];

  _cell2 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  v8 = MEMORY[0x1E69DCAB8];
  data2 = [(HKEmergencyCardTableItem *)self data];
  pictureData = [data2 pictureData];
  v11 = [v8 imageWithData:pictureData];
  [_cell2 setPhoto:v11];
}

- (void)_updateMedicalIDPhotoMenu
{
  _makeMedicalIDPhotoMenu = [(HKEmergencyCardNameAndPictureTableItem *)self _makeMedicalIDPhotoMenu];
  _cell = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  editPhotoButton = [_cell editPhotoButton];
  [editPhotoButton setMenu:_makeMedicalIDPhotoMenu];

  _cell2 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  editPhotoLabelButton = [_cell2 editPhotoLabelButton];
  [editPhotoLabelButton setMenu:_makeMedicalIDPhotoMenu];
}

- (id)_makeMedicalIDPhotoMenu
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E69DCAD0] isSourceTypeAvailable:1];
  data = [(HKEmergencyCardTableItem *)self data];
  pictureData = [data pictureData];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v3)
  {
    v7 = MEMORY[0x1E69DC628];
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"take_photo" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"camera"];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __65__HKEmergencyCardNameAndPictureTableItem__makeMedicalIDPhotoMenu__block_invoke;
    v31[3] = &unk_1E81B6A10;
    objc_copyWeak(&v32, &location);
    v11 = [v7 actionWithTitle:v9 image:v10 identifier:@"com.apple.health.medical_id.take_photo" handler:v31];

    [v6 addObject:v11];
    objc_destroyWeak(&v32);
  }

  v12 = MEMORY[0x1E69DC628];
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = [v13 localizedStringForKey:@"choose_photo" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.on.rectangle"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __65__HKEmergencyCardNameAndPictureTableItem__makeMedicalIDPhotoMenu__block_invoke_3;
  v29[3] = &unk_1E81B6A10;
  objc_copyWeak(&v30, &location);
  v16 = [v12 actionWithTitle:v14 image:v15 identifier:@"com.apple.health.medical_id.choose_photo" handler:v29];

  [v6 addObject:v16];
  if (pictureData)
  {
    v17 = MEMORY[0x1E69DC628];
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"delete_photo" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __65__HKEmergencyCardNameAndPictureTableItem__makeMedicalIDPhotoMenu__block_invoke_4;
    v27 = &unk_1E81B6A10;
    objc_copyWeak(&v28, &location);
    v21 = [v17 actionWithTitle:v19 image:v20 identifier:@"com.apple.health.medical_id.delete_photo" handler:&v24];

    [v21 setAttributes:{2, v24, v25, v26, v27}];
    [v6 addObject:v21];

    objc_destroyWeak(&v28);
  }

  v22 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F42FFBE0 image:0 identifier:0 options:0 children:v6];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  return v22;
}

void __65__HKEmergencyCardNameAndPictureTableItem__makeMedicalIDPhotoMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __65__HKEmergencyCardNameAndPictureTableItem__makeMedicalIDPhotoMenu__block_invoke_2;
  v2[3] = &unk_1E81B69E8;
  v2[4] = WeakRetained;
  [WeakRetained _checkOrRequestForCameraAccessIfNeededWithCompletion:v2];
}

void __65__HKEmergencyCardNameAndPictureTableItem__makeMedicalIDPhotoMenu__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v10 = *(a1 + 32);

    [v10 presentCameraAuthorizationStatusDeniedAlert];
  }

  else if (a2 == 3)
  {
    HKLogCameraAccess();
    v3 = objc_alloc_init(MEMORY[0x1E69DCAD0]);
    [v3 setDelegate:*(a1 + 32)];
    [v3 setSourceType:1];
    [v3 setCameraDevice:1];
    [v3 setAllowsEditing:1];
    v4 = MEMORY[0x1E695DF90];
    v5 = [v3 _properties];
    v6 = [v4 dictionaryWithDictionary:v5];

    v7 = *MEMORY[0x1E69DE930];
    v11[0] = *MEMORY[0x1E69DE998];
    v11[1] = v7;
    v12[0] = MEMORY[0x1E695E118];
    v12[1] = MEMORY[0x1E695E118];
    v11[2] = *MEMORY[0x1E69DE8B0];
    v12[2] = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
    [v6 addEntriesFromDictionary:v8];

    [v3 _setProperties:v6];
    v9 = [*(a1 + 32) owningViewController];
    [v9 presentViewController:v3 animated:1 completion:0];
  }
}

void __65__HKEmergencyCardNameAndPictureTableItem__makeMedicalIDPhotoMenu__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  HKLogPhotoAccess();
  v1 = objc_alloc_init(MEMORY[0x1E69DCAD0]);
  [v1 setDelegate:WeakRetained];
  [v1 setSourceType:0];
  [v1 setAllowsEditing:1];
  v2 = [WeakRetained owningViewController];
  [v2 presentViewController:v1 animated:1 completion:0];
}

void __65__HKEmergencyCardNameAndPictureTableItem__makeMedicalIDPhotoMenu__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained data];
  [v1 setPictureData:0];

  v2 = [WeakRetained _cell];
  [v2 setPhoto:0];

  [WeakRetained _updateMedicalIDPhotoMenu];
}

- (void)_checkOrRequestForCameraAccessIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = *MEMORY[0x1E6987608];
  v5 = [MEMORY[0x1E69870A0] authorizationStatusForMediaType:v4];
  v6 = v5;
  if ((v5 - 2) >= 2)
  {
    if (v5)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x1E696B940];
      if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
      {
        [(HKEmergencyCardNameAndPictureTableItem *)v6 _checkOrRequestForCameraAccessIfNeededWithCompletion:v10];
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __95__HKEmergencyCardNameAndPictureTableItem__checkOrRequestForCameraAccessIfNeededWithCompletion___block_invoke_355;
      v11[3] = &unk_1E81B6A60;
      v7 = &v13;
      v13 = completionCopy;
      v12 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], v11);
      v9 = v12;
    }

    else
    {
      v8 = MEMORY[0x1E69870A0];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __95__HKEmergencyCardNameAndPictureTableItem__checkOrRequestForCameraAccessIfNeededWithCompletion___block_invoke_2;
      v14[3] = &unk_1E81B6A88;
      v7 = &v16;
      v16 = completionCopy;
      v15 = v4;
      [v8 requestAccessForMediaType:v15 completionHandler:v14];
      v9 = v15;
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__HKEmergencyCardNameAndPictureTableItem__checkOrRequestForCameraAccessIfNeededWithCompletion___block_invoke;
    block[3] = &unk_1E81B6A38;
    v7 = v18;
    v18[0] = completionCopy;
    v18[1] = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __95__HKEmergencyCardNameAndPictureTableItem__checkOrRequestForCameraAccessIfNeededWithCompletion___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __95__HKEmergencyCardNameAndPictureTableItem__checkOrRequestForCameraAccessIfNeededWithCompletion___block_invoke_3;
  v2[3] = &unk_1E81B6A60;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __95__HKEmergencyCardNameAndPictureTableItem__checkOrRequestForCameraAccessIfNeededWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E69870A0] authorizationStatusForMediaType:*(a1 + 32)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __95__HKEmergencyCardNameAndPictureTableItem__checkOrRequestForCameraAccessIfNeededWithCompletion___block_invoke_355(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E69870A0] authorizationStatusForMediaType:*(a1 + 32)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)presentCameraAuthorizationStatusDeniedAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"tcc_camera_denied_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"tcc_camera_denied_message" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v17 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v8 = MEMORY[0x1E69DC648];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"tcc_camera_denied_cancel_action" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = [v8 actionWithTitle:v10 style:1 handler:0];

  [v17 addAction:v11];
  v12 = MEMORY[0x1E69DC648];
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = [v13 localizedStringForKey:@"tcc_camera_denied_default_action" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v15 = [v12 actionWithTitle:v14 style:0 handler:&__block_literal_global_14];

  [v17 addAction:v15];
  [v17 setPreferredAction:v15];
  owningViewController = [(HKEmergencyCardTableItem *)self owningViewController];
  [owningViewController presentViewController:v17 animated:1 completion:0];
}

void __85__HKEmergencyCardNameAndPictureTableItem_presentCameraAuthorizationStatusDeniedAlert__block_invoke()
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E69A2D68] internalHealthSettingsURLString];
  v2 = [v0 URLWithString:v1];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (void)medicalIDEditorCellDidChangeValue:(id)value
{
  name = [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell name];
  data = [(HKEmergencyCardTableItem *)self data];
  [data setName:name];
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  if (info)
  {
    v34 = [info objectForKeyedSubscript:*MEMORY[0x1E69DDDE8]];
    [v34 size];
    v6 = v5;
    [v34 size];
    v8 = v7;
    [v34 size];
    v10 = v9;
    [v34 size];
    v12 = v11;
    [v34 size];
    v14 = v13;
    v16 = v15;
    [v34 size];
    if (v10 <= v12)
    {
      v20 = 0.0;
      if (v16 <= v17)
      {
        v21 = 0.0;
      }

      else
      {
        [v34 size];
        v23 = v22;
        [v34 size];
        v25 = (v23 - v24) * 0.5;
        v21 = 0.0;
        v20 = v25 + 0.0;
        v8 = v6;
      }
    }

    else
    {
      v19 = (v14 - v18) * 0.5;
      v20 = 0.0;
      v21 = v19 + 0.0;
      v6 = v8;
    }

    v26 = [v34 hk_croppedImageWithRect:{v21, v20, v6, v8}];
    v27 = [v26 imageByPreparingThumbnailOfSize:{100.0, 100.0}];
    v28 = v27;
    if (v27)
    {
      [(UIImage *)v27 size];
      if (v29 > 0.0)
      {
        [(UIImage *)v28 size];
        if (v30 > 0.0)
        {
          v31 = UIImageJPEGRepresentation(v28, 1.0);
          data = [(HKEmergencyCardTableItem *)self data];
          [data setPictureData:v31];

          [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell setPhoto:v28];
        }
      }
    }

    owningViewController = [(HKEmergencyCardTableItem *)self owningViewController];
    [owningViewController dismissViewControllerAnimated:1 completion:0];

    [(HKEmergencyCardNameAndPictureTableItem *)self _updateMedicalIDPhotoMenu];
  }
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  owningViewController = [(HKEmergencyCardTableItem *)self owningViewController];
  [owningViewController dismissViewControllerAnimated:1 completion:0];
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  orientationsCopy = orientations;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [orientationsCopy navigationControllerSupportedInterfaceOrientations:orientationsCopy];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (HKEmergencyCardRowHeightChangeDelegate)rowHeightChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rowHeightChangeDelegate);

  return WeakRetained;
}

- (void)initInEditMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKEmergencyCardNameAndPictureTableItem.m" lineNumber:37 description:@"HKEmergencyCardNameAndPictureTableItem only supports edit mode"];
}

- (void)_checkOrRequestForCameraAccessIfNeededWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Medical ID Camera Access: Unexpected return value %ld", &v2, 0xCu);
}

@end