@interface CALayer(BalloonLayerExtension)
+ (double)extraInsetsForImage:()BalloonLayerExtension;
- (void)setMaskImage:()BalloonLayerExtension;
@end

@implementation CALayer(BalloonLayerExtension)

+ (double)extraInsetsForImage:()BalloonLayerExtension
{
  v4 = a3;
  [v4 capInsets];
  v6 = v5;
  [a1 maxInsetForImage:v4];
  v8 = v7;

  return v6 - v8;
}

- (void)setMaskImage:()BalloonLayerExtension
{
  v4 = a3;
  [MEMORY[0x1E6979398] maxInsetForImage:v4];
  v6 = v5;
  [MEMORY[0x1E6979398] extraInsetsForImage:v4];
  v26 = v7;
  v27 = v8;
  v24 = v9;
  v25 = v10;
  [v4 size];
  v11.f64[0] = v24;
  v13 = v12 - (v27 + v25);
  v14.f64[0] = v26;
  v16 = v15 - (v26 + v24);
  v14.f64[1] = v27;
  v11.f64[1] = v25;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v14, *MEMORY[0x1E69DDCE0]), vceqq_f64(v11, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    v17 = v4;
  }

  else
  {
    v17 = objc_getAssociatedObject(v4, setMaskImage__normalizedImageKey);
    if (!v17)
    {
      v18 = objc_alloc_init(MEMORY[0x1E69DCA80]);
      [v4 scale];
      [v18 setScale:?];
      [v18 setPreferredRange:32766];
      v19 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v18 format:{v13, v16}];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __47__CALayer_BalloonLayerExtension__setMaskImage___block_invoke;
      v28[3] = &unk_1E72F24C8;
      v20 = v4;
      v29 = v20;
      v30 = v26;
      v31 = v27;
      v32 = v24;
      v33 = v25;
      v17 = [v19 imageWithActions:v28];
      objc_setAssociatedObject(v20, setMaskImage__normalizedImageKey, v17, 1);
    }
  }

  if (v13 == 0.0 || v16 == 0.0)
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(CALayer(BalloonLayerExtension) *)v23 setMaskImage:v13, v16];
    }

    v21 = 0.0;
    v22 = 0.0;
  }

  else
  {
    v21 = v6 / v13;
    v22 = v6 / v16;
  }

  [a1 setMasksToBounds:1];
  [a1 setCornerContentsMasksEdges:1];
  [a1 setCornerContents:{objc_msgSend(v17, "CGImage")}];
  [a1 setCornerContentsCenter:{v21, v22, v21 * -2.0 + 1.0, v22 * -2.0 + 1.0}];
  [a1 setCornerRadius:v6];
}

- (void)setMaskImage:()BalloonLayerExtension .cold.1(NSObject *a1, double a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromCGSize(*&a2);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_19020E000, a1, OS_LOG_TYPE_ERROR, "normalizedSize had a zero dimension. Would have attempted divide by zero. normalizedSize: %@", &v5, 0xCu);
}

@end