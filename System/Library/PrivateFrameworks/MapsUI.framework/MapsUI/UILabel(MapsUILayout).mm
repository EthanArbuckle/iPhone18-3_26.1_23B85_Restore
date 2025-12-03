@interface UILabel(MapsUILayout)
+ (double)_mapsui_maximumHeightWithFont:()MapsUILayout numberOfLines:displayScale:;
@end

@implementation UILabel(MapsUILayout)

+ (double)_mapsui_maximumHeightWithFont:()MapsUILayout numberOfLines:displayScale:
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a4 < 1)
  {
    v16 = 1.79769313e308;
  }

  else
  {
    [v5 lineHeight];
    [v6 leading];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      fontDescriptor = [v6 fontDescriptor];
      fontAttributes = [fontDescriptor fontAttributes];
      v11 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB8E8]];

      if (v11)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = [&unk_1F450E350 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
LABEL_6:
          v15 = 0;
          while (1)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(&unk_1F450E350);
            }

            if ([v11 containsString:*(*(&v20 + 1) + 8 * v15)])
            {
              break;
            }

            if (v13 == ++v15)
            {
              v13 = [&unk_1F450E350 countByEnumeratingWithState:&v20 objects:v24 count:16];
              if (v13)
              {
                goto LABEL_6;
              }

              break;
            }
          }
        }
      }
    }

    UICeilToScale();
    v16 = v17;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

@end