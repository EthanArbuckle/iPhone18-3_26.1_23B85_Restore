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
  v7 = a1 / a2;
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
  [a1 size];
  [v5 hu_scaleSize:a3 toSize:? contentMode:?];
  v7 = v6;
  v9 = v8;
  [a1 size];
  if (v11 == v7 && v10 == v9)
  {
    v23 = a1;
  }

  else
  {
    [a1 scale];
    UIRectIntegralWithScale();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [a1 scale];
    v22 = v21;
    v26.width = v18;
    v26.height = v20;
    UIGraphicsBeginImageContextWithOptions(v26, 0, v22);
    [a1 drawInRect:{v14, v16, v18, v20}];
    v23 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v23;
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
    v29.width = a1;
    v29.height = a2;
    UIGraphicsBeginImageContextWithOptions(v29, 0, v21);
    [v15 setFill];
    v22 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:*MEMORY[0x277CBF348] cornerRadius:{*(MEMORY[0x277CBF348] + 8), a1, a2, a3}];
    [v22 fill];
    [v19 size];
    v24 = (a1 - v23) * 0.5;
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
  v5 = [v4 productInfo];
  v6 = [v5 productClass];

  if (v6 <= 4)
  {
    if (v6 <= 1)
    {
      if (!v6)
      {
        v11 = [a1 hu_symbolFromProductPlatform:v4];
        goto LABEL_42;
      }

      if (v6 != 1)
      {
        goto LABEL_45;
      }

      v9 = MEMORY[0x277D755B8];
      v10 = MEMORY[0x277D14220];
    }

    else if (v6 == 2)
    {
      v9 = MEMORY[0x277D755B8];
      v10 = MEMORY[0x277D14228];
    }

    else if (v6 == 3)
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
    if (v6 <= 7)
    {
      if (v6 == 5)
      {
        v9 = MEMORY[0x277D755B8];
        v10 = MEMORY[0x277D141B8];
      }

      else
      {
        if (v6 == 6)
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v14 = [MEMORY[0x277D146E8] sharedDispatcher];
          v15 = [v14 home];
          v16 = [v15 accessories];

          v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
                  objc_enumerationMutation(v16);
                }

                v23 = *(*(&v30 + 1) + 8 * i);
                v24 = [v23 device];
                v25 = [v24 isEqual:v4];

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
                    v26 = [MEMORY[0x277D755B8] systemImageNamed:*v20];
                    v29 = [MEMORY[0x277D75348] hu_keyColor];
                    v11 = [v26 imageWithTintColor:v29];

                    goto LABEL_41;
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
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

    switch(v6)
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
  v16 = [v9 systemImageNamed:*v10];
  v26 = [MEMORY[0x277D75348] hu_keyColor];
  v11 = [v16 imageWithTintColor:v26];
LABEL_41:

LABEL_42:

  return v11;
}

+ (id)hu_symbolFromProductPlatform:()HUImageUtilities
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 productInfo];
  v5 = [v4 productPlatform];

  v6 = [v3 productInfo];
  v7 = [v6 productClass];

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v8 = MEMORY[0x277D755B8];
      v9 = MEMORY[0x277D141B8];
    }

    else
    {
      if (v5 != 4)
      {
        goto LABEL_20;
      }

      if (v7 == 6)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = [MEMORY[0x277D146E8] sharedDispatcher];
        v11 = [v10 home];
        v12 = [v11 accessories];

        v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
                objc_enumerationMutation(v12);
              }

              v19 = *(*(&v28 + 1) + 8 * i);
              v20 = [v19 device];
              v21 = [v20 isEqual:v3];

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
                  v24 = [MEMORY[0x277D755B8] systemImageNamed:*v16];
                  v26 = [MEMORY[0x277D75348] hu_keyColor];
                  v23 = [v24 imageWithTintColor:v26];

                  goto LABEL_27;
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
    if (v5 != 1)
    {
      if (v5 == 2)
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
  v12 = [v8 systemImageNamed:*v9];
  v24 = [MEMORY[0x277D75348] hu_keyColor];
  v23 = [v12 imageWithTintColor:v24];
LABEL_27:

LABEL_28:

  return v23;
}

@end