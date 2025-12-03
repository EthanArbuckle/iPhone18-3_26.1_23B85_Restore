@interface UIImage(HUImageUtilities)
+ (double)hu_scaleSize:()HUImageUtilities toSize:contentMode:;
+ (id)hu_locationArrowTemplate;
+ (id)hu_symbolForDevice:()HUImageUtilities;
+ (id)hu_symbolFromProductPlatform:()HUImageUtilities;
+ (id)hu_systemImageNamed:()HUImageUtilities withBackgroundColor:symbolColor:size:cornerRadius:configuration:;
- (id)hu_imageScaledToSize:()HUImageUtilities contentMode:;
@end

@implementation UIImage(HUImageUtilities)

+ (id)hu_locationArrowTemplate
{
  v0 = [MEMORY[0x277D755B8] systemImageNamed:@"location.fill"];
  v1 = [v0 imageWithRenderingMode:2];

  return v1;
}

+ (double)hu_scaleSize:()HUImageUtilities toSize:contentMode:
{
  v7 = self / a2;
  v8 = a3 / a4;
  if (a7 == 2)
  {
    if (v7 <= v8)
    {
      return a3;
    }

    return a4 * v7;
  }

  if (a7 == 1 && v7 < v8)
  {
    return a4 * v7;
  }

  return a3;
}

- (id)hu_imageScaledToSize:()HUImageUtilities contentMode:
{
  v5 = objc_opt_class();
  [self size];
  [v5 hu_scaleSize:a3 toSize:? contentMode:?];
  v7 = v6;
  v9 = v8;
  [self size];
  if (v11 == v7 && v10 == v9)
  {
    selfCopy = self;
  }

  else
  {
    [self scale];
    UIRectIntegralWithScale();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [self scale];
    v22 = v21;
    v26.width = v18;
    v26.height = v20;
    UIGraphicsBeginImageContextWithOptions(v26, 0, v22);
    [self drawInRect:{v14, v16, v18, v20}];
    selfCopy = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return selfCopy;
}

+ (id)hu_systemImageNamed:()HUImageUtilities withBackgroundColor:symbolColor:size:cornerRadius:configuration:
{
  v15 = a7;
  v16 = MEMORY[0x277D755B8];
  v17 = a8;
  v18 = [v16 systemImageNamed:a6 withConfiguration:a9];
  v19 = [v18 imageWithTintColor:v17];

  if (v19)
  {
    [v19 scale];
    v21 = v20;
    v29.width = self;
    v29.height = a2;
    UIGraphicsBeginImageContextWithOptions(v29, 0, v21);
    [v15 setFill];
    v22 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:*MEMORY[0x277CBF348] cornerRadius:{*(MEMORY[0x277CBF348] + 8), self, a2, a3}];
    [v22 fill];
    [v19 size];
    v24 = (self - v23) * 0.5;
    [v19 size];
    [v19 drawAtPoint:{v24, (a2 - v25) * 0.5}];
    v26 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)hu_symbolForDevice:()HUImageUtilities
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  productInfo = [v4 productInfo];
  productClass = [productInfo productClass];

  if (productClass <= 4)
  {
    if (productClass <= 1)
    {
      if (!productClass)
      {
        v11 = [self hu_symbolFromProductPlatform:v4];
        goto LABEL_42;
      }

      if (productClass != 1)
      {
        goto LABEL_45;
      }

      v9 = MEMORY[0x277D755B8];
      v10 = MEMORY[0x277D14220];
    }

    else if (productClass == 2)
    {
      v9 = MEMORY[0x277D755B8];
      v10 = MEMORY[0x277D14228];
    }

    else if (productClass == 3)
    {
      v12 = HFLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [MEMORY[0x277D755B8] systemImageNamed:@"ipad"];
        *buf = 136315394;
        v36 = "+[UIImage(HUImageUtilities) hu_symbolForDevice:]";
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%s iPad icon: %@", buf, 0x16u);
      }

      v9 = MEMORY[0x277D755B8];
      v10 = MEMORY[0x277D14218];
    }

    else
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [MEMORY[0x277D755B8] systemImageNamed:@"appletv.fill"];
        *buf = 136315394;
        v36 = "+[UIImage(HUImageUtilities) hu_symbolForDevice:]";
        v37 = 2112;
        v38 = v8;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%s Apple TV icon: %@", buf, 0x16u);
      }

      v9 = MEMORY[0x277D755B8];
      v10 = MEMORY[0x277D141B0];
    }
  }

  else
  {
    if (productClass <= 7)
    {
      if (productClass == 5)
      {
        v9 = MEMORY[0x277D755B8];
        v10 = MEMORY[0x277D141B8];
      }

      else
      {
        if (productClass == 6)
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
          home = [mEMORY[0x277D146E8] home];
          accessories = [home accessories];

          v17 = [accessories countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v31;
            v20 = MEMORY[0x277D141E8];
            v21 = MEMORY[0x277D141F0];
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v31 != v19)
                {
                  objc_enumerationMutation(accessories);
                }

                v23 = *(*(&v30 + 1) + 8 * i);
                device = [v23 device];
                v25 = [device isEqual:v4];

                if (v25)
                {
                  if ([v23 homePodVariant] == 2)
                  {
                    goto LABEL_49;
                  }

                  if ([v23 homePodVariant] == 1 || objc_msgSend(v23, "homePodVariant") == 3)
                  {
                    v20 = v21;
LABEL_49:
                    hu_keyColor2 = [MEMORY[0x277D755B8] systemImageNamed:*v20];
                    hu_keyColor = [MEMORY[0x277D75348] hu_keyColor];
                    v11 = [hu_keyColor2 imageWithTintColor:hu_keyColor];

                    goto LABEL_41;
                  }
                }
              }

              v18 = [accessories countByEnumeratingWithState:&v30 objects:v34 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }
        }

        v9 = MEMORY[0x277D755B8];
        v10 = MEMORY[0x277D14210];
      }

      goto LABEL_40;
    }

    switch(productClass)
    {
      case 8:
        v9 = MEMORY[0x277D755B8];
        v10 = MEMORY[0x277D141F8];
        break;
      case 9:
        v9 = MEMORY[0x277D755B8];
        v10 = MEMORY[0x277D14200];
        break;
      case 10:
        v9 = MEMORY[0x277D755B8];
        v10 = MEMORY[0x277D14208];
        break;
      default:
LABEL_45:
        v28 = HFLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = v4;
          _os_log_error_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_ERROR, "Could not fetch icon for %@. Both product class and platform were unknown", buf, 0xCu);
        }

        v11 = 0;
        goto LABEL_42;
    }
  }

LABEL_40:
  accessories = [v9 systemImageNamed:*v10];
  hu_keyColor2 = [MEMORY[0x277D75348] hu_keyColor];
  v11 = [accessories imageWithTintColor:hu_keyColor2];
LABEL_41:

LABEL_42:

  return v11;
}

+ (id)hu_symbolFromProductPlatform:()HUImageUtilities
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  productInfo = [v3 productInfo];
  productPlatform = [productInfo productPlatform];

  productInfo2 = [v3 productInfo];
  productClass = [productInfo2 productClass];

  if (productPlatform > 2)
  {
    if (productPlatform == 3)
    {
      v8 = MEMORY[0x277D755B8];
      v9 = MEMORY[0x277D141B8];
    }

    else
    {
      if (productPlatform != 4)
      {
        goto LABEL_20;
      }

      if (productClass == 6)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
        home = [mEMORY[0x277D146E8] home];
        accessories = [home accessories];

        v13 = [accessories countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v29;
          v16 = MEMORY[0x277D141E8];
          v17 = MEMORY[0x277D141F0];
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(accessories);
              }

              v19 = *(*(&v28 + 1) + 8 * i);
              device = [v19 device];
              v21 = [device isEqual:v3];

              if (v21)
              {
                if ([v19 homePodVariant] == 2)
                {
                  goto LABEL_32;
                }

                if ([v19 homePodVariant] == 1 || objc_msgSend(v19, "homePodVariant") == 3)
                {
                  v16 = v17;
LABEL_32:
                  hu_keyColor2 = [MEMORY[0x277D755B8] systemImageNamed:*v16];
                  hu_keyColor = [MEMORY[0x277D75348] hu_keyColor];
                  v23 = [hu_keyColor2 imageWithTintColor:hu_keyColor];

                  goto LABEL_27;
                }
              }
            }

            v14 = [accessories countByEnumeratingWithState:&v28 objects:v32 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_20;
      }

      v8 = MEMORY[0x277D755B8];
      v9 = MEMORY[0x277D141B0];
    }
  }

  else
  {
    if (productPlatform != 1)
    {
      if (productPlatform == 2)
      {
        v8 = MEMORY[0x277D755B8];
        v9 = MEMORY[0x277D14220];
        goto LABEL_26;
      }

LABEL_20:
      v22 = HFLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_error_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_ERROR, "Unknown product Platform", v27, 2u);
      }

      v23 = 0;
      goto LABEL_28;
    }

    v8 = MEMORY[0x277D755B8];
    v9 = MEMORY[0x277D141F8];
  }

LABEL_26:
  accessories = [v8 systemImageNamed:*v9];
  hu_keyColor2 = [MEMORY[0x277D75348] hu_keyColor];
  v23 = [accessories imageWithTintColor:hu_keyColor2];
LABEL_27:

LABEL_28:

  return v23;
}

@end