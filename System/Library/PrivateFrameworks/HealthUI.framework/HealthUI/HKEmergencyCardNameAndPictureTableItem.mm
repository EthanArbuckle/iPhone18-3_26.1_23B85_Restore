@interface HKEmergencyCardNameAndPictureTableItem
- (HKEmergencyCardRowHeightChangeDelegate)rowHeightChangeDelegate;
- (double)_cellFittedHeightWithWidth:(double)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndex:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4;
- (id)_cell;
- (id)_makeMedicalIDPhotoMenu;
- (id)initInEditMode:(BOOL)a3;
- (id)title;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (void)_checkOrRequestForCameraAccessIfNeededWithCompletion:(id)a3;
- (void)_editPhotoTapped:(id)a3;
- (void)_updateMedicalIDPhotoMenu;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)medicalIDEditorCell:(id)a3 didChangeHeight:(double)a4 keepRectVisible:(CGRect)a5 inView:(id)a6;
- (void)medicalIDEditorCellDidBeginEditing:(id)a3 keepRectVisible:(CGRect)a4 inView:(id)a5;
- (void)medicalIDEditorCellDidChangeSelection:(id)a3 keepRectVisible:(CGRect)a4 inView:(id)a5;
- (void)medicalIDEditorCellDidChangeValue:(id)a3;
- (void)presentCameraAuthorizationStatusDeniedAlert;
- (void)setData:(id)a3;
@end

@implementation HKEmergencyCardNameAndPictureTableItem

- (id)initInEditMode:(BOOL)a3
{
  v3 = a3;
  if (!a3)
  {
    [(HKEmergencyCardNameAndPictureTableItem *)a2 initInEditMode:?];
  }

  v6.receiver = self;
  v6.super_class = HKEmergencyCardNameAndPictureTableItem;
  return [(HKEmergencyCardTableItem *)&v6 initInEditMode:v3];
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
    v6 = [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell editPhotoButton];
    [v6 setShowsMenuAsPrimaryAction:1];

    v7 = [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell editPhotoLabelButton];
    [v7 setShowsMenuAsPrimaryAction:1];

    v8 = [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell editPhotoButton];
    [v8 addTarget:self action:sel__editPhotoTapped_ forControlEvents:64];

    v9 = [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell editPhotoLabelButton];
    [v9 addTarget:self action:sel__editPhotoTapped_ forControlEvents:64];

    cell = self->_cell;
  }

  return cell;
}

- (void)_editPhotoTapped:(id)a3
{
  v4 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  [v4 commitEditing];

  v5 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  [v5 beginEditing];
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndex:(int64_t)a4
{
  [a3 frame];

  [(HKEmergencyCardNameAndPictureTableItem *)self _cellFittedHeightWithWidth:v5];
  return result;
}

- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4
{
  [a3 frame];

  [(HKEmergencyCardNameAndPictureTableItem *)self _cellFittedHeightWithWidth:v5];
  return result;
}

- (double)_cellFittedHeightWithWidth:(double)a3
{
  v5 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  [v5 layoutIfNeeded];

  v6 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  [v6 sizeThatFits:{a3, 1.79769313e308}];
  v8 = v7;

  return v8;
}

- (void)medicalIDEditorCell:(id)a3 didChangeHeight:(double)a4 keepRectVisible:(CGRect)a5 inView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a6;
  v12 = [(HKEmergencyCardNameAndPictureTableItem *)self rowHeightChangeDelegate];
  [v12 tableItem:self heightDidChangeForRowIndex:0 keepRectVisible:v11 inView:{x, y, width, height}];
}

- (void)medicalIDEditorCellDidBeginEditing:(id)a3 keepRectVisible:(CGRect)a4 inView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a5;
  v11 = [(HKEmergencyCardNameAndPictureTableItem *)self rowHeightChangeDelegate];
  [v11 tableItemDidBeginEditing:self keepRectVisible:v10 inView:{x, y, width, height}];
}

- (void)medicalIDEditorCellDidChangeSelection:(id)a3 keepRectVisible:(CGRect)a4 inView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a5;
  v11 = [(HKEmergencyCardNameAndPictureTableItem *)self rowHeightChangeDelegate];
  [v11 tableItemDidChangeSelection:self keepRectVisible:v10 inView:{x, y, width, height}];
}

- (void)setData:(id)a3
{
  v12.receiver = self;
  v12.super_class = HKEmergencyCardNameAndPictureTableItem;
  [(HKEmergencyCardTableItem *)&v12 setData:a3];
  v4 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  v5 = [(HKEmergencyCardTableItem *)self data];
  v6 = [v5 name];
  [v4 setName:v6];

  v7 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  v8 = MEMORY[0x1E69DCAB8];
  v9 = [(HKEmergencyCardTableItem *)self data];
  v10 = [v9 pictureData];
  v11 = [v8 imageWithData:v10];
  [v7 setPhoto:v11];
}

- (void)_updateMedicalIDPhotoMenu
{
  v7 = [(HKEmergencyCardNameAndPictureTableItem *)self _makeMedicalIDPhotoMenu];
  v3 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  v4 = [v3 editPhotoButton];
  [v4 setMenu:v7];

  v5 = [(HKEmergencyCardNameAndPictureTableItem *)self _cell];
  v6 = [v5 editPhotoLabelButton];
  [v6 setMenu:v7];
}

- (id)_makeMedicalIDPhotoMenu
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E69DCAD0] isSourceTypeAvailable:1];
  v4 = [(HKEmergencyCardTableItem *)self data];
  v5 = [v4 pictureData];

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
  if (v5)
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

- (void)_checkOrRequestForCameraAccessIfNeededWithCompletion:(id)a3
{
  v3 = a3;
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
      v13 = v3;
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
      v16 = v3;
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
    v18[0] = v3;
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
  v16 = [(HKEmergencyCardTableItem *)self owningViewController];
  [v16 presentViewController:v17 animated:1 completion:0];
}

void __85__HKEmergencyCardNameAndPictureTableItem_presentCameraAuthorizationStatusDeniedAlert__block_invoke()
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E69A2D68] internalHealthSettingsURLString];
  v2 = [v0 URLWithString:v1];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (void)medicalIDEditorCellDidChangeValue:(id)a3
{
  v5 = [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell name];
  v4 = [(HKEmergencyCardTableItem *)self data];
  [v4 setName:v5];
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  if (a4)
  {
    v34 = [a4 objectForKeyedSubscript:*MEMORY[0x1E69DDDE8]];
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
          v32 = [(HKEmergencyCardTableItem *)self data];
          [v32 setPictureData:v31];

          [(HKMedicalIDEditorNameAndPhotoCell *)self->_cell setPhoto:v28];
        }
      }
    }

    v33 = [(HKEmergencyCardTableItem *)self owningViewController];
    [v33 dismissViewControllerAnimated:1 completion:0];

    [(HKEmergencyCardNameAndPictureTableItem *)self _updateMedicalIDPhotoMenu];
  }
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v3 = [(HKEmergencyCardTableItem *)self owningViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 navigationControllerSupportedInterfaceOrientations:v3];
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