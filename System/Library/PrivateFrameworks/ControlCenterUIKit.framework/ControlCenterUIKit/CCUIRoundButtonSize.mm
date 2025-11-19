@interface CCUIRoundButtonSize
@end

@implementation CCUIRoundButtonSize

void ___CCUIRoundButtonSize_block_invoke()
{
  v14.origin.x = CCUIReferenceScreenBounds();
  if (CGRectGetWidth(v14) < 375.0)
  {
    _CCUIRoundButtonSize_size = 0x4047000000000000;
    return;
  }

  v15.origin.x = CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v15);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() == 2)
  {
    v16.origin.x = CCUIReferenceScreenBounds();
    v4 = CGRectGetWidth(v16);
    if (v4 >= 1024.0)
    {
      v0 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        _CCUIRoundButtonSize_size = 0x404B000000000000;
LABEL_44:

LABEL_45:
        v11 = v12;
        if (Width < 1024.0)
        {
          return;
        }

        goto LABEL_46;
      }
    }

    v17.origin.x = CCUIReferenceScreenBounds();
    v5 = CGRectGetWidth(v17);
    if (v5 >= 834.0)
    {
      v1 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v1 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        _CCUIRoundButtonSize_size = 0x404A000000000000;
LABEL_42:

LABEL_43:
        if (v4 < 1024.0)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    v18.origin.x = CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v18);
    if (v6 >= 834.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        _CCUIRoundButtonSize_size = 0x404A000000000000;
        goto LABEL_40;
      }
    }

    v7 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v7 userInterfaceIdiom] == 1)
    {
      v8 = 0x404A000000000000;
    }

    else
    {
      v19.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v19) >= 430.0 || (v20.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v20) >= 428.0) || (v21.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v21) >= 420.0) && SBFEffectiveHomeButtonType() == 2 || (v22.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v22) >= 414.0) && SBFEffectiveHomeButtonType() == 2 || (v23.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v23) >= 414.0))
      {
        v8 = 0x404E000000000000;
      }

      else
      {
        v24.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v24) >= 393.0 || (v25.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v25) >= 390.0))
        {
          v8 = 0x404C000000000000;
        }

        else
        {
          v26.origin.x = CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v26) < 375.0 || SBFEffectiveHomeButtonType() != 2)
          {
            v27.origin.x = CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v27) < 375.0)
            {
              v28.origin.x = CCUIReferenceScreenBounds();
              v9 = CGRectGetWidth(v28) < 320.0;
              v10 = 52.0;
              if (!v9)
              {
                v10 = 54.0;
              }

LABEL_36:
              _CCUIRoundButtonSize_size = *&v10;

              if (v6 < 834.0)
              {
LABEL_41:
                if (v5 < 834.0)
                {
                  goto LABEL_43;
                }

                goto LABEL_42;
              }

LABEL_40:

              goto LABEL_41;
            }
          }

          v8 = 0x404B000000000000;
        }
      }
    }

    v10 = *&v8;
    goto LABEL_36;
  }

  _CCUIRoundButtonSize_size = 0x404B000000000000;
  v11 = v12;
LABEL_46:
}

@end