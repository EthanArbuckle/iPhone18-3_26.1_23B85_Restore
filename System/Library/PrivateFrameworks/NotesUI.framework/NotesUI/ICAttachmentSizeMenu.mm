@interface ICAttachmentSizeMenu
- (ICAttachmentSizeMenu)initWithTitle:(id)title image:(id)image preferredViewSize:(signed __int16)size supportedSizes:(id)sizes supportsPlainLink:(BOOL)link isOverrideVariant:(BOOL)variant selectedSizeHandler:(id)handler plainLinkHandler:(id)self0;
- (id)actionForPlainLink;
- (id)actionForSize:(signed __int16)size;
- (id)createMenu;
- (id)localizedTitleForSize:(signed __int16)size;
@end

@implementation ICAttachmentSizeMenu

- (ICAttachmentSizeMenu)initWithTitle:(id)title image:(id)image preferredViewSize:(signed __int16)size supportedSizes:(id)sizes supportsPlainLink:(BOOL)link isOverrideVariant:(BOOL)variant selectedSizeHandler:(id)handler plainLinkHandler:(id)self0
{
  titleCopy = title;
  imageCopy = image;
  sizesCopy = sizes;
  handlerCopy = handler;
  linkHandlerCopy = linkHandler;
  v33.receiver = self;
  v33.super_class = ICAttachmentSizeMenu;
  v21 = [(ICAttachmentSizeMenu *)&v33 init];
  if (v21)
  {
    v22 = [titleCopy copy];
    title = v21->_title;
    v21->_title = v22;

    v24 = [imageCopy copy];
    image = v21->_image;
    v21->_image = v24;

    v21->_preferredViewSize = size;
    v26 = [sizesCopy copy];
    supportedSizes = v21->_supportedSizes;
    v21->_supportedSizes = v26;

    v21->_supportsPlainLink = link;
    v21->_isOverrideVariant = variant;
    v28 = _Block_copy(handlerCopy);
    selectedSizeHandler = v21->_selectedSizeHandler;
    v21->_selectedSizeHandler = v28;

    v30 = _Block_copy(linkHandlerCopy);
    plainLinkHandler = v21->_plainLinkHandler;
    v21->_plainLinkHandler = v30;
  }

  return v21;
}

- (id)createMenu
{
  v20[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  actionForPlainLink = [(ICAttachmentSizeMenu *)self actionForPlainLink];
  v5 = actionForPlainLink;
  if (actionForPlainLink)
  {
    v6 = MEMORY[0x1E69DCC60];
    v20[0] = actionForPlainLink;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v8 = [v6 menuWithTitle:&stru_1F4F94F00 image:0 identifier:0 options:1 children:v7];

    [array addObject:v8];
  }

  supportedSizes = [(ICAttachmentSizeMenu *)self supportedSizes];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __34__ICAttachmentSizeMenu_createMenu__block_invoke;
  v19[3] = &unk_1E846CF90;
  v19[4] = self;
  v10 = [supportedSizes ic_compactMap:v19];

  if ([v10 count])
  {
    v11 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4F94F00 image:0 identifier:0 options:1 children:v10];
    [array addObject:v11];
  }

  v12 = MEMORY[0x1E69DCC60];
  title = [(ICAttachmentSizeMenu *)self title];
  image = [(ICAttachmentSizeMenu *)self image];
  v15 = [array copy];
  v16 = [v12 menuWithTitle:title image:image identifier:@"com.apple.mobilenotes.attachmentSizeMenu" options:0 children:v15];

  if (![(ICAttachmentSizeMenu *)self isOverrideVariant])
  {
    v17 = [(ICAttachmentSizeMenu *)self localizedTitleForSize:[(ICAttachmentSizeMenu *)self preferredViewSize]];
    [v16 setSubtitle:v17];
  }

  return v16;
}

uint64_t __34__ICAttachmentSizeMenu_createMenu__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 actionForSize:v3];
}

- (id)actionForPlainLink
{
  if ([(ICAttachmentSizeMenu *)self supportsPlainLink])
  {
    v3 = MEMORY[0x1E69DC628];
    localizedTitleForPlainLink = [(ICAttachmentSizeMenu *)self localizedTitleForPlainLink];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__ICAttachmentSizeMenu_actionForPlainLink__block_invoke;
    v7[3] = &unk_1E846BDC8;
    v7[4] = self;
    v5 = [v3 actionWithTitle:localizedTitleForPlainLink image:0 identifier:0 handler:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __42__ICAttachmentSizeMenu_actionForPlainLink__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) plainLinkHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) plainLinkHandler];
    v3[2]();
  }
}

- (id)actionForSize:(signed __int16)size
{
  sizeCopy = size;
  v5 = [(ICAttachmentSizeMenu *)self localizedTitleForSize:?];
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__ICAttachmentSizeMenu_actionForSize___block_invoke;
    v12[3] = &unk_1E846CFB8;
    v12[4] = self;
    v13 = sizeCopy;
    v6 = [MEMORY[0x1E69DC628] actionWithTitle:v5 image:0 identifier:0 handler:v12];
    if (![(ICAttachmentSizeMenu *)self isOverrideVariant])
    {
      preferredViewSize = [(ICAttachmentSizeMenu *)self preferredViewSize];
      v8 = preferredViewSize == sizeCopy;
      if (preferredViewSize == sizeCopy)
      {
        v9 = MEMORY[0x1E69DDA08];
      }

      else
      {
        v9 = MEMORY[0x1E69DD9E8];
      }

      [v6 setState:v8];
      [v6 setAccessibilityTraits:*v9];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ICAttachmentSizeMenu *)sizeCopy actionForSize:v10];
    }

    v6 = 0;
  }

  return v6;
}

void __38__ICAttachmentSizeMenu_actionForSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedSizeHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) selectedSizeHandler];
    v3[2](v3, *(a1 + 40));
  }
}

- (id)localizedTitleForSize:(signed __int16)size
{
  sizeCopy = size;
  isOverrideVariant = [(ICAttachmentSizeMenu *)self isOverrideVariant];
  if (isOverrideVariant)
  {
    if (sizeCopy)
    {
      if (sizeCopy == 2)
      {
        v5 = @"Set All to Medium";
      }

      else
      {
        if (sizeCopy != 1)
        {
          goto LABEL_15;
        }

        v5 = @"Set All to Small";
      }
    }

    else
    {
      v5 = @"Set All to Large";
    }
  }

  else if (sizeCopy)
  {
    if (sizeCopy == 2)
    {
      v5 = @"Medium";
    }

    else
    {
      if (sizeCopy != 1)
      {
        goto LABEL_15;
      }

      v5 = @"Small";
    }
  }

  else
  {
    v5 = @"Large";
  }

  isOverrideVariant = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
LABEL_15:

  return isOverrideVariant;
}

- (void)actionForSize:(__int16)a1 .cold.1(__int16 a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Unable to determine label for attachment size: %hd", v2, 8u);
}

@end