@interface CCUIPortraitStatusBarBaselineToTopOffsetHeight
@end

@implementation CCUIPortraitStatusBarBaselineToTopOffsetHeight

void ___CCUIPortraitStatusBarBaselineToTopOffsetHeight_block_invoke()
{
  CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v15);
  if (Width >= 1024.0)
  {
    v0 = [MEMORY[0x277D75418] currentDevice];
    if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
    {
      _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = 0x4052000000000000;
LABEL_41:

      goto LABEL_42;
    }
  }

  CCUIReferenceScreenBounds();
  v5 = CGRectGetWidth(v16);
  if (v5 < 1024.0 || ([MEMORY[0x277D75418] currentDevice], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() != 2)
  {
    CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v17);
    if (v6 >= 834.0)
    {
      v2 = [MEMORY[0x277D75418] currentDevice];
      if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = 0x4052000000000000;
LABEL_37:

LABEL_38:
        if (v5 < 1024.0)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    CCUIReferenceScreenBounds();
    v7 = CGRectGetWidth(v18);
    if (v7 >= 834.0)
    {
      v3 = [MEMORY[0x277D75418] currentDevice];
      if ([v3 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = 0x4052000000000000;
LABEL_35:

LABEL_36:
        if (v6 < 834.0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    v8 = [MEMORY[0x277D75418] currentDevice];
    if ([v8 userInterfaceIdiom] == 1)
    {
      v9 = 0x4052000000000000;
LABEL_33:
      v10 = *&v9;
      goto LABEL_34;
    }

    CCUIReferenceScreenBounds();
    if (CGRectGetWidth(v19) < 430.0)
    {
      CCUIReferenceScreenBounds();
      v10 = 125.0;
      if (CGRectGetWidth(v20) >= 428.0)
      {
        goto LABEL_34;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v21) >= 420.0 && SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_34;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v22) >= 414.0 && SBFEffectiveHomeButtonType() == 2)
      {
        v10 = 122.0;
        goto LABEL_34;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v23) >= 414.0)
      {
        v9 = 0x4055000000000000;
        goto LABEL_33;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v24) < 393.0)
      {
        CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v25) < 390.0)
        {
          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v26) >= 375.0 && SBFEffectiveHomeButtonType() == 2)
          {
            v10 = 97.0;
            goto LABEL_34;
          }

          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v29) >= 375.0)
          {
            v9 = 0x4047000000000000;
            goto LABEL_33;
          }

          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v30) < 320.0)
          {
            v10 = 27.0;
          }

          else
          {
            v10 = 46.0;
          }

LABEL_34:
          _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = *&v10;

          if (v7 < 834.0)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }
    }

    v9 = 0x4059000000000000;
    goto LABEL_33;
  }

  _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = 0x4052000000000000;
LABEL_39:

LABEL_40:
  if (Width >= 1024.0)
  {
    goto LABEL_41;
  }

LABEL_42:
  v11 = [MEMORY[0x277D75418] currentDevice];
  if ([v11 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
  {
  }

  else
  {
    CCUIReferenceScreenBounds();
    v12 = CGRectGetWidth(v27);

    if (v12 < 375.0)
    {
      v13 = *&_CCUIPortraitStatusBarBaselineToTopOffsetHeight_height;
      if (*&_CCUIPortraitStatusBarBaselineToTopOffsetHeight_height < 97.0)
      {
        v13 = 97.0;
      }

      _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = *&v13;
    }
  }

  CCUIReferenceScreenBounds();
  if (CGRectGetWidth(v28) <= 375.0)
  {
    CCUIScreenSafeAreaInsets();
    if (v14 >= 50.0)
    {
      _CCUIPortraitStatusBarBaselineToTopOffsetHeight_height = 0x4059C00000000000;
    }
  }
}

@end