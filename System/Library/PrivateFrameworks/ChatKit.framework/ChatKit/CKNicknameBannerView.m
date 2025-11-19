@interface CKNicknameBannerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKNicknameBannerView)initWithStyle:(unint64_t)a3 updates:(id)a4 useNamedTitles:(BOOL)a5 avatarImages:(id)a6 contacts:(id)a7 customImage:(id)a8 titleString:(id)a9 subtitleString:(id)a10 actionButtonTitle:(id)a11 actionButtonHandler:(id)a12 actionButtonMenuItems:(id)a13 xButtonHandler:(id)a14;
- (void)layoutSubviews;
@end

@implementation CKNicknameBannerView

- (CKNicknameBannerView)initWithStyle:(unint64_t)a3 updates:(id)a4 useNamedTitles:(BOOL)a5 avatarImages:(id)a6 contacts:(id)a7 customImage:(id)a8 titleString:(id)a9 subtitleString:(id)a10 actionButtonTitle:(id)a11 actionButtonHandler:(id)a12 actionButtonMenuItems:(id)a13 xButtonHandler:(id)a14
{
  v48[1] = *MEMORY[0x1E69E9840];
  v39 = a4;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a9;
  v18 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v47.receiver = self;
  v47.super_class = CKNicknameBannerView;
  v23 = [(CKNicknameBannerView *)&v47 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v24 = v23;
  if (v23)
  {
    [(CKNicknameBannerView *)v23 setStyle:a3];
    [(CKNicknameBannerView *)v24 setNicknameUpdates:v39];
    objc_initWeak(&location, v24);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __197__CKNicknameBannerView_initWithStyle_updates_useNamedTitles_avatarImages_contacts_customImage_titleString_subtitleString_actionButtonTitle_actionButtonHandler_actionButtonMenuItems_xButtonHandler___block_invoke;
    aBlock[3] = &unk_1E72EC1C8;
    v44 = v20;
    objc_copyWeak(&v45, &location);
    v25 = _Block_copy(aBlock);
    IsEmpty = IMStringIsEmpty();
    if (v25)
    {
      v27 = IsEmpty;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v29 = [[CKBannerButtonObject alloc] initWithTitle:v19 handler:v25 menuItems:v21];
      v48[0] = v29;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __197__CKNicknameBannerView_initWithStyle_updates_useNamedTitles_avatarImages_contacts_customImage_titleString_subtitleString_actionButtonTitle_actionButtonHandler_actionButtonMenuItems_xButtonHandler___block_invoke_2;
    v40[3] = &unk_1E72EC1F0;
    v41 = v22;
    objc_copyWeak(&v42, &location);
    LOBYTE(v33) = 1;
    v30 = [_TtC7ChatKit19CKBannerViewFactory bannerWithTitle:v38 subtitleString:v18 avatarImages:v35 contacts:v36 customImage:v37 actionButtonObjects:v28 forceImageCentering:v33 xButtonHandler:v40];
    swiftBanner = v24->_swiftBanner;
    v24->_swiftBanner = v30;

    [(CKNicknameBannerView *)v24 addSubview:v24->_swiftBanner];
    objc_destroyWeak(&v42);

    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  return v24;
}

void __197__CKNicknameBannerView_initWithStyle_updates_useNamedTitles_avatarImages_contacts_customImage_titleString_subtitleString_actionButtonTitle_actionButtonHandler_actionButtonMenuItems_xButtonHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v3 + 16))(v3, WeakRetained, v4);
}

void __197__CKNicknameBannerView_initWithStyle_updates_useNamedTitles_avatarImages_contacts_customImage_titleString_subtitleString_actionButtonTitle_actionButtonHandler_actionButtonMenuItems_xButtonHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self->_swiftBanner sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKNicknameBannerView;
  [(CKNicknameBannerView *)&v4 layoutSubviews];
  swiftBanner = self->_swiftBanner;
  [(CKNicknameBannerView *)self bounds];
  [(UIView *)swiftBanner setFrame:?];
  [(UIView *)self->_swiftBanner sizeToFit];
}

@end