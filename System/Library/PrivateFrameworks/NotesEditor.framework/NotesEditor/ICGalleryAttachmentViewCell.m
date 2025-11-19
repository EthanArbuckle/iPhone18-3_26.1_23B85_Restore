@interface ICGalleryAttachmentViewCell
- (BOOL)isPortrait;
- (ICGalleryAttachmentViewCellDelegate)delegate;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setAttachment:(id)a3;
- (void)updateFadeMask:(BOOL)a3;
- (void)updateImage;
@end

@implementation ICGalleryAttachmentViewCell

- (void)dealloc
{
  [(ICGalleryAttachmentViewCell *)self setAttachment:0];
  v3.receiver = self;
  v3.super_class = ICGalleryAttachmentViewCell;
  [(ICGalleryAttachmentViewCell *)&v3 dealloc];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = ICGalleryAttachmentViewCell;
  [(ICGalleryAttachmentViewCell *)&v5 prepareForReuse];
  [(ICGalleryAttachmentViewCell *)self setDelegate:0];
  [(ICGalleryAttachmentViewCell *)self setAttachment:0];
  v3 = [(ICGalleryAttachmentViewCell *)self imageView];
  [v3 setImage:0];

  [(ICGalleryAttachmentViewCell *)self setFadeMaskLayer:0];
  [(ICGalleryAttachmentViewCell *)self setFadeImageLayer:0];
  [(ICGalleryAttachmentViewCell *)self setFadeWhiteLayer:0];
  v4 = [(ICGalleryAttachmentViewCell *)self layer];
  [v4 setMask:0];
}

- (void)setAttachment:(id)a3
{
  v18 = a3;
  v5 = [(ICGalleryAttachmentViewCell *)self imageView];
  v6 = [v5 layer];
  [v6 setCornerRadius:3.0];

  v7 = [(ICGalleryAttachmentViewCell *)self imageView];
  v8 = [v7 layer];
  [v8 setMasksToBounds:1];

  v9 = [(ICGalleryAttachmentViewCell *)self imageView];
  [v9 setContentMode:0];

  v10 = [MEMORY[0x277D75348] colorWithWhite:*MEMORY[0x277D364F8] alpha:1.0];
  v11 = [(ICGalleryAttachmentViewCell *)self imageView];
  [v11 setBackgroundColor:v10];

  v12 = v18;
  if (self->_attachment != v18)
  {
    [(ICGalleryAttachmentViewCell *)self setShouldFade:0];
    objc_storeStrong(&self->_attachment, a3);
    v12 = v18;
    if (v18)
    {
      [(ICAttachment *)v18 sizeWidth];
      v14 = v13;
      [(ICAttachment *)v18 sizeHeight];
      if (v15 > 0.0)
      {
        v16 = v14 / v15;
        v17 = v16 > *MEMORY[0x277D36500] || v16 < *MEMORY[0x277D36508];
        [(ICGalleryAttachmentViewCell *)self setShouldFade:v17];
      }

      [(ICGalleryAttachmentViewCell *)self updateImage];
      v12 = v18;
    }
  }
}

- (void)updateImage
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 attachment];
  v4 = [v3 identifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "Using scan document image from cache for: %@", &v5, 0xCu);
}

id __42__ICGalleryAttachmentViewCell_updateImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 size];
  v5 = v4;
  v7 = v6;
  [v3 scale];
  v9 = v5 * (v8 / *(a1 + 32));
  [v3 scale];
  if (v9 > 0.0)
  {
    v11 = v7 * (v10 / *(a1 + 32));
    if (v11 > 0.0)
    {
      v12 = vrndpq_f64(vmulq_f64(*(a1 + 40), vdupq_n_s64(0x3FF199999999999AuLL)));
      v14 = *MEMORY[0x277CBF3A0];
      v13 = *(MEMORY[0x277CBF3A0] + 8);
      v15 = v9 / v11;
      v16 = v12.f64[1];
      if (v15 <= 1.0)
      {
        v17 = v12.f64[0];
        v20 = v12.f64[0] / v15;
      }

      else
      {
        v17 = vmuld_lane_f64(v15, v12, 1);
        v18 = v17 - v12.f64[0];
        if (v17 - v12.f64[0] < 0.0)
        {
          v18 = 0.0;
        }

        v19 = v14 - v18;
        if (*(a1 + 56) == 1)
        {
          v14 = v19;
        }

        v20 = v12.f64[1];
      }

      v21 = [MEMORY[0x277D75568] defaultFormat];
      [v21 setScale:*(a1 + 32)];
      [v21 setOpaque:1];
      [v21 setPreferredRange:2];
      v22 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v21 format:{v24, v16}];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __42__ICGalleryAttachmentViewCell_updateImage__block_invoke_2;
      v25[3] = &unk_2781ABE70;
      v26 = v3;
      v27 = v14;
      v28 = v13;
      v29 = v17;
      v30 = v20;
      v3 = [v22 imageWithActions:v25];
    }
  }

  return v3;
}

void __42__ICGalleryAttachmentViewCell_updateImage__block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained attachment];
    v7 = *(a1 + 32);

    if (v6 == v7)
    {
      [v5 updateFadeMask:{objc_msgSend(v5, "shouldFade")}];
      v8 = MEMORY[0x277D75D18];
      v9 = [v5 imageView];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __42__ICGalleryAttachmentViewCell_updateImage__block_invoke_2_20;
      v10[3] = &unk_2781ABEB8;
      v11 = v5;
      v12 = v3;
      [v8 transitionWithView:v9 duration:5242880 options:v10 animations:0 completion:0.200000003];
    }
  }
}

void __42__ICGalleryAttachmentViewCell_updateImage__block_invoke_2_20(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:v1];
}

- (BOOL)isPortrait
{
  [(ICGalleryAttachmentViewCell *)self bounds];
  v4 = v3;
  [(ICGalleryAttachmentViewCell *)self bounds];
  return v4 > v5;
}

- (void)updateFadeMask:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICGalleryAttachmentViewCell *)self fadeMaskLayer];

  if (!v5 && v3)
  {
    v6 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(ICGalleryAttachmentViewCell *)self setFadeMaskLayer:v6];

    v7 = [MEMORY[0x277D755B8] imageNamed:@"gallery_fade_gradient"];
    v8 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(ICGalleryAttachmentViewCell *)self setFadeImageLayer:v8];

    v9 = [v7 ic_CGImage];
    v10 = [(ICGalleryAttachmentViewCell *)self fadeImageLayer];
    [v10 setContents:v9];

    v11 = [MEMORY[0x277CD9ED0] layer];
    [(ICGalleryAttachmentViewCell *)self setFadeWhiteLayer:v11];

    v12 = [MEMORY[0x277D75348] whiteColor];
    v13 = [v12 CGColor];
    v14 = [(ICGalleryAttachmentViewCell *)self fadeWhiteLayer];
    [v14 setBackgroundColor:v13];

    v15 = [(ICGalleryAttachmentViewCell *)self fadeMaskLayer];
    v16 = [(ICGalleryAttachmentViewCell *)self fadeWhiteLayer];
    [v15 addSublayer:v16];

    v17 = [(ICGalleryAttachmentViewCell *)self fadeMaskLayer];
    v18 = [(ICGalleryAttachmentViewCell *)self fadeImageLayer];
    [v17 addSublayer:v18];
  }

  [(ICGalleryAttachmentViewCell *)self bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(ICGalleryAttachmentViewCell *)self fadeMaskLayer];
  [v27 setFrame:{v20, v22, v24, v26}];

  if (v3)
  {
    v28 = [MEMORY[0x277D74248] ic_isRTL];
    v29 = [(ICGalleryAttachmentViewCell *)self isPortrait];
    v30 = [(ICGalleryAttachmentViewCell *)self fadeMaskLayer];
    [v30 bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = *(MEMORY[0x277CBF2C0] + 16);
    *&v85.a = *MEMORY[0x277CBF2C0];
    *&v85.c = v39;
    *&v85.tx = *(MEMORY[0x277CBF2C0] + 32);
    if (v29)
    {
      v40 = [(ICGalleryAttachmentViewCell *)self fadeMaskLayer];
      [v40 frame];
      TSDRectGetMaxPoint();

      TSDRectWithPoints();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      TSDRectWithPoints();
      x = v49;
      y = v51;
      width = v53;
      height = v55;
    }

    else
    {
      v57 = v32;
      v58 = v34;
      v59 = v36;
      v60 = v38;
      if (v28)
      {
        CGRectGetMaxY(*&v57);
        TSDRectWithPoints();
        x = v87.origin.x;
        y = v87.origin.y;
        width = v87.size.width;
        height = v87.size.height;
        CGRectGetMinX(v87);
        v61 = [(ICGalleryAttachmentViewCell *)self fadeMaskLayer];
        [v61 frame];
        TSDRectGetMaxPoint();
        TSDRectWithPoints();
        v42 = v62;
        v44 = v63;
        v46 = v64;
        v48 = v65;

        v66 = 1.57079633;
      }

      else
      {
        CGRectGetMaxX(*&v57);
        v67 = [(ICGalleryAttachmentViewCell *)self fadeMaskLayer];
        [v67 frame];
        TSDRectGetMaxPoint();
        TSDRectWithPoints();
        x = v68;
        y = v69;
        width = v70;
        height = v71;

        v88.origin.x = x;
        v88.origin.y = y;
        v88.size.width = width;
        v88.size.height = height;
        CGRectGetMinX(v88);
        v72 = [(ICGalleryAttachmentViewCell *)self fadeMaskLayer];
        [v72 frame];
        CGRectGetMaxY(v89);
        TSDRectWithPoints();
        v42 = v73;
        v44 = v74;
        v46 = v75;
        v48 = v76;

        v66 = -1.57079633;
      }

      CGAffineTransformMakeRotation(&v85, v66);
    }

    v84 = v85;
    v77 = [(ICGalleryAttachmentViewCell *)self fadeImageLayer];
    v83 = v84;
    [v77 setAffineTransform:&v83];

    v78 = [(ICGalleryAttachmentViewCell *)self fadeWhiteLayer];
    [v78 setFrame:{v42, v44, v46, v48}];

    v79 = [(ICGalleryAttachmentViewCell *)self fadeImageLayer];
    [v79 setFrame:{x, y, width, height}];

    v80 = [(ICGalleryAttachmentViewCell *)self fadeMaskLayer];
    v81 = [(ICGalleryAttachmentViewCell *)self layer];
    [v81 setMask:v80];
  }

  else
  {
    v82 = [(ICGalleryAttachmentViewCell *)self layer];
    [v82 setMask:0];
  }
}

- (ICGalleryAttachmentViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end