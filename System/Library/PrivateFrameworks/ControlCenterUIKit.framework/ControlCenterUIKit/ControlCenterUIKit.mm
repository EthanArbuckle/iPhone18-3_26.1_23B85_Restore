const char *sub_1D168C318()
{
  if (*v0 == 2)
  {
    return "VirtualAudio";
  }

  else
  {
    return "ControlCenter";
  }
}

const char *sub_1D168C344()
{
  v1 = *v0;
  if (!*v0)
  {
    return "InactiveMicModeSelection";
  }

  if (v1 == 2)
  {
    return "ios_high_quality_local_recording";
  }

  if (v1 == 1)
  {
    return "DynamicControls";
  }

  result = sub_1D16CC694();
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1D168C430()
{
  result = qword_1EC640BB0;
  if (!qword_1EC640BB0)
  {
    type metadata accessor for Feature(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC640BB0);
  }

  return result;
}

double CCUIEdgeInsetsRTLSwap(double a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 userInterfaceLayoutDirection];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 userInterfaceLayoutDirection];

  return a1;
}

void _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0()
{
  if (([v0 suppressesLabelTransitions] & 1) == 0)
  {
    v1 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v2 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    if (v2 != 1)
    {
      v3 = *(v1 + 1);
      v4 = *(v1 + 2);
      sub_1D16C2014(*v1, v3, v4);
      v5 = v2;
      if (v2)
      {
        v6 = v5;
        sub_1D16BE8C8(1, v5);
      }

      sub_1D168E910(v2, v3, v4);
    }

    v7 = &v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    v8 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    if (v8 != 1)
    {
      v9 = *(v7 + 1);
      v10 = *(v7 + 2);
      sub_1D16C2014(*v7, v9, v10);
      v11 = v8;
      if (v8)
      {
        v12 = v11;
        sub_1D16BE8C8(0, v11);
      }

      sub_1D168E910(v8, v9, v10);
    }
  }

  if (([v0 suppressesLabelTransitions] & 1) == 0)
  {
    v13 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v14 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    if (v14 != 1)
    {
      v15 = *(v13 + 1);
      v16 = *(v13 + 2);
      sub_1D16C2014(*v13, v15, v16);
      v17 = v16;
      if (v16)
      {
        v18 = v17;
        sub_1D16BE8C8(1, v17);
      }

      sub_1D168E910(v14, v15, v16);
    }

    v19 = &v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    v20 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    if (v20 != 1)
    {
      v21 = *(v19 + 1);
      v22 = *(v19 + 2);
      sub_1D16C2014(*v19, v21, v22);
      v23 = v22;
      if (v22)
      {
        v24 = v23;
        sub_1D16BE8C8(0, v23);
      }

      sub_1D168E910(v20, v21, v22);
    }
  }
}

BOOL CCUILayoutShouldBePortrait(void *a1)
{
  v1 = [a1 window];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  if (CGRectIsEmpty(v15))
  {
    v3 = CCUIScreenBounds();
    v5 = v10;
    v7 = v11;
    v9 = v12;
  }

  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  Height = CGRectGetHeight(v16);
  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  return Height > CGRectGetWidth(v17);
}

double CCUIScreenBounds()
{
  v0 = [*MEMORY[0x1E69DDA98] activeInterfaceOrientation];
  switch(v0)
  {
    case 1:
      v1 = 0.0;
      break;
    case 3:
      v1 = 1.57079633;
      break;
    case 4:
      v1 = -1.57079633;
      break;
    default:
      v1 = 3.14159265;
      if (v0 != 2)
      {
        v1 = 0.0;
      }

      break;
  }

  memset(&v4, 0, sizeof(v4));
  CGAffineTransformMakeRotation(&v4, v1);
  v5.origin.x = CCUIReferenceScreenBounds();
  v3 = v4;
  CGRectApplyAffineTransform(v5, &v3);
  UIRectIntegralWithScale();
  return *MEMORY[0x1E695EFF8];
}

double CCUIReferenceScreenBounds()
{
  if (CCUIReferenceScreenBounds_onceToken != -1)
  {
    CCUIReferenceScreenBounds_cold_1();
  }

  return *&CCUIReferenceScreenBounds___referenceScreenBounds_0;
}

double CCUIExpandedModuleEdgeInsets()
{
  ShouldBePortrait = CCUILayoutShouldBePortrait(0);

  return CCUILayoutEdgeInsetsForcePortrait(ShouldBePortrait);
}

double CCUILayoutEdgeInsetsForcePortrait(char a1)
{
  if ((a1 & 1) == 0 && !CCUILayoutShouldBePortrait(0))
  {
    v20.origin.x = CCUIReferenceScreenBounds();
    Width = CGRectGetWidth(v20);
    if (Width >= 1024.0)
    {
      v1 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v1 userInterfaceIdiom] == 1)
      {
        v6 = 27.0;
        if (SBFEffectiveHomeButtonType() != 2)
        {
          goto LABEL_60;
        }
      }
    }

    v21.origin.x = CCUIReferenceScreenBounds();
    v7 = CGRectGetWidth(v21);
    if (v7 >= 1024.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
LABEL_27:

        v6 = 27.0;
        if (Width < 1024.0)
        {
          return v6;
        }

        goto LABEL_60;
      }
    }

    v22.origin.x = CCUIReferenceScreenBounds();
    v8 = CGRectGetWidth(v22);
    if (v8 >= 834.0)
    {
      v3 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v3 userInterfaceIdiom] == 1)
      {
        v6 = 20.0;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          goto LABEL_56;
        }
      }
    }

    v23.origin.x = CCUIReferenceScreenBounds();
    v9 = CGRectGetWidth(v23);
    if (v9 >= 834.0)
    {
      v4 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v4 userInterfaceIdiom] == 1)
      {
        v6 = 20.0;
        if (SBFEffectiveHomeButtonType() != 2)
        {
          goto LABEL_54;
        }
      }
    }

    v10 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = 20.0;
    if ([v10 userInterfaceIdiom] == 1)
    {
      goto LABEL_53;
    }

    v24.origin.x = CCUIReferenceScreenBounds();
    if (CGRectGetWidth(v24) >= 430.0)
    {
      v6 = 37.0;
      goto LABEL_53;
    }

    v25.origin.x = CCUIReferenceScreenBounds();
    if (CGRectGetWidth(v25) >= 428.0)
    {
      v6 = 36.0;
      goto LABEL_53;
    }

    v26.origin.x = CCUIReferenceScreenBounds();
    if (CGRectGetWidth(v26) >= 420.0 && SBFEffectiveHomeButtonType() == 2)
    {
LABEL_40:
      v6 = 27.0;
      goto LABEL_53;
    }

    v32.origin.x = CCUIReferenceScreenBounds();
    if (CGRectGetWidth(v32) >= 414.0 && SBFEffectiveHomeButtonType() == 2 || (v33.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v33) >= 414.0))
    {
      v6 = 34.0;
      goto LABEL_53;
    }

    v34.origin.x = CCUIReferenceScreenBounds();
    v6 = 30.0;
    if (CGRectGetWidth(v34) < 393.0)
    {
      v35.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v35) < 390.0)
      {
        v36.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v36) >= 375.0 && SBFEffectiveHomeButtonType() == 2)
        {
          goto LABEL_40;
        }

        v37.origin.x = CCUIReferenceScreenBounds();
        v6 = 27.0;
        if (CGRectGetWidth(v37) < 375.0)
        {
          v38.origin.x = CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v38) < 320.0)
          {
            v6 = 16.0;
          }
        }
      }
    }

LABEL_53:

    if (v9 < 834.0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v13.origin.x = CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v13);
  if (Width >= 1024.0)
  {
    v1 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v1 userInterfaceIdiom] == 1)
    {
      v6 = 27.0;
      if (SBFEffectiveHomeButtonType() != 2)
      {
LABEL_60:

        return v6;
      }
    }
  }

  v14.origin.x = CCUIReferenceScreenBounds();
  v7 = CGRectGetWidth(v14);
  if (v7 >= 1024.0)
  {
    v2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
    {
      goto LABEL_27;
    }
  }

  v15.origin.x = CCUIReferenceScreenBounds();
  v8 = CGRectGetWidth(v15);
  if (v8 < 834.0 || ([MEMORY[0x1E69DC938] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "userInterfaceIdiom") != 1) || (v6 = 20.0, SBFEffectiveHomeButtonType() != 2))
  {
    v16.origin.x = CCUIReferenceScreenBounds();
    v9 = CGRectGetWidth(v16);
    if (v9 < 834.0 || ([MEMORY[0x1E69DC938] currentDevice], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "userInterfaceIdiom") != 1) || (v6 = 20.0, SBFEffectiveHomeButtonType() == 2))
    {
      v10 = [MEMORY[0x1E69DC938] currentDevice];
      v6 = 20.0;
      if ([v10 userInterfaceIdiom] != 1)
      {
        v17.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v17) >= 430.0)
        {
          v6 = 64.0;
        }

        else
        {
          v18.origin.x = CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v18) >= 428.0 || (v19.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v19) >= 420.0) && SBFEffectiveHomeButtonType() == 2)
          {
            v6 = 64.0;
          }

          else
          {
            v27.origin.x = CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v27) >= 414.0 && SBFEffectiveHomeButtonType() == 2 || (v28.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v28) >= 414.0))
            {
              v6 = 64.0;
            }

            else
            {
              v29.origin.x = CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v29) >= 393.0 || (v30.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v30) >= 390.0) || (v31.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v31) >= 375.0) && SBFEffectiveHomeButtonType() == 2 || (v39.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v39) >= 375.0) || (v40.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v40) >= 320.0))
              {
                v12 = 0x4050000000000000;
              }

              else
              {
                v12 = 0x404C000000000000;
              }

              v6 = *&v12;
            }
          }
        }
      }

      goto LABEL_53;
    }

LABEL_54:

LABEL_55:
    if (v8 < 834.0)
    {
      goto LABEL_57;
    }
  }

LABEL_56:

LABEL_57:
  if (v7 >= 1024.0)
  {
  }

  if (Width >= 1024.0)
  {
    goto LABEL_60;
  }

  return v6;
}

double CCUIDefaultExpandedContentModuleFullWidth()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    CCUILayoutEdgeInsetsForcePortrait(1);
    v3 = v2;
    v5 = v4;
    v6 = CCUIPortraitMainListGridGeometryInfo();
    return v5 + v3 + v7 * 3.0 + v6 * 4.0;
  }

  else
  {
    ShouldBePortrait = CCUILayoutShouldBePortrait(0);
    v10 = CCUIScreenBounds();
    if (ShouldBePortrait)
    {

      return CGRectGetWidth(*&v10);
    }

    else
    {

      return CGRectGetHeight(*&v10);
    }
  }
}

CGFloat CCUIMaximumExpandedContentModuleHeight()
{
  ShouldBePortrait = CCUILayoutShouldBePortrait(0);
  v1 = CCUILayoutEdgeInsetsForcePortrait(ShouldBePortrait);
  v3 = v2;
  v5.origin.x = CCUIScreenBounds();
  return CGRectGetHeight(v5) - v1 - v3;
}

CGFloat CCUISliderExpandedContentModuleHeight()
{
  if (CCUISliderExpandedContentModuleHeight_onceToken != -1)
  {
    CCUISliderExpandedContentModuleHeight_cold_1();
  }

  result = CCUIMaximumExpandedContentModuleHeight();
  if (result >= *&CCUISliderExpandedContentModuleHeight_height)
  {
    return *&CCUISliderExpandedContentModuleHeight_height;
  }

  return result;
}

Swift::Void __swiftcall CCUIOverlayBackgroundView.layoutSubviews()()
{
  v43.super_class = CCUIOverlayBackgroundView;
  objc_msgSendSuper2(&v43, sel_layoutSubviews);
  v1 = [v0 containerView];
  [v0 contentFrame];
  [v1 setFrame_];

  if (![v0 usesAdvancedBackdropRendering])
  {
    v33 = [v0 materialView];
    if (!v33)
    {
      return;
    }

    v28 = v33;
    v34 = [v0 containerView];
    [v34 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v32 = v42;
    v31 = v40;
    v30 = v38;
    v29 = v36;
    goto LABEL_8;
  }

  v2 = [v0 _shouldReverseLayoutDirection];
  v3 = [v0 containerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5 + -100.0;
  v13 = v9 + 200.0;
  v14 = [v0 backdropLayer];
  [v14 setFrame_];

  v15 = [v0 containerView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = 0.0;
  if ((v2 & 1) == 0)
  {
    v23 = [v0 containerView];
    [v23 bounds];
    v25 = v24;

    v22 = v13 - v25;
  }

  v26 = [v0 roundedRectangleMask];
  [v26 setFrame_];

  v27 = [v0 advancedBackdropDimmingView];
  if (v27)
  {
    v28 = v27;
    [v0 bounds];
LABEL_8:
    [v28 setFrame_];
  }
}

uint64_t static Logger.userInterface.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC640B50 != -1)
  {
    swift_once();
  }

  v2 = sub_1D16CC2C4();
  v3 = __swift_project_value_buffer(v2, qword_1EC640B58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1D168E910(void *a1, uint64_t a2, void *a3)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1D168EE64(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

char *sub_1D168EFF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[OBJC_IVAR___CCUIControlImageView__isActive] = 0;
  *&v2[OBJC_IVAR___CCUIControlImageView_glyphTintColor] = 0;
  *&v2[OBJC_IVAR___CCUIControlImageView_font] = 0;
  v4 = &v2[OBJC_IVAR___CCUIControlImageView__controlIconView];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v2[OBJC_IVAR___CCUIControlImageView_systemImageName];
  *v5 = a1;
  *(v5 + 1) = a2;
  v13 = sub_1D16CC474();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641B68));
  v7 = sub_1D16CC404();
  [v7 setBackgroundColor_];
  sub_1D16CC424();
  *&v3[OBJC_IVAR___CCUIControlImageView_hostingView] = v7;
  [v7 bounds];
  v12.receiver = v3;
  v12.super_class = CCUIControlImageView;
  v8 = objc_msgSendSuper2(&v12, sel_initWithFrame_);
  v9 = *&v8[OBJC_IVAR___CCUIControlImageView_hostingView];
  v10 = v8;
  [v10 addSubview_];
  [v10 setBackgroundColor_];
  sub_1D168FA54();
  sub_1D168FD84();

  return v10;
}

void sub_1D168F1D0(id a1, void *a2, unint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v8 = *(v5 + *a2);
  *(v5 + *a2) = a1;
  if (!v8)
  {
    if (!a1)
    {
      return;
    }

    v12 = 0;
    a1 = a1;
    goto LABEL_7;
  }

  v12 = v8;
  if (!a1 || (sub_1D168EE64(0, a3), a1 = a1, v9 = v12, v10 = sub_1D16CC5A4(), v9, (v10 & 1) == 0))
  {
LABEL_7:
    a5();

    v11 = v12;
    goto LABEL_8;
  }

  v11 = v9;
LABEL_8:
}

uint64_t sub_1D168FA54()
{
  v1 = v0;
  v2 = sub_1D16CC294();
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7 + 16;
  if (![v1 glyphTintColor])
  {
    v9 = [objc_opt_self() whiteColor];
  }

  sub_1D16CC464();
  if (([v1 isActive] & 1) == 0)
  {
    v10 = [v1 glyphTintColor];
    if (v10)
    {
    }
  }

  v11 = [v1 systemImageName];
  sub_1D16CC4A4();

  sub_1D16CC284();
  sub_1D16CC274();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v17[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(v3 + 16))(boxed_opaque_existential_1, v8, v2);
  v14 = OBJC_IVAR___CCUIControlImageView__controlIconView;
  swift_beginAccess();
  sub_1D1690038(v17, v1 + v14);
  swift_endAccess();
  sub_1D168FD84();

  return (v12)(v8, v2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1D168FD84()
{
  v1 = sub_1D16CC294();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641B58);
  MEMORY[0x1EEE9AC00]();
  v7 = &v14 - v6;
  v8 = [v0 font];
  if (!v8)
  {
    v8 = [objc_opt_self() systemFontOfSize:22.0 weight:*MEMORY[0x1E69DB980]];
  }

  v9 = OBJC_IVAR___CCUIControlImageView__controlIconView;
  swift_beginAccess();
  sub_1D16900A8(v0 + v9, &v15);
  if (v16)
  {
    sub_1D16901B4(&v15, &v17);
    swift_dynamicCast();
    v10 = v8;
    v11 = sub_1D16CC454();
    KeyPath = swift_getKeyPath();
    (*(v2 + 16))(v7, v4, v1);
    v13 = &v7[*(v5 + 36)];
    *v13 = KeyPath;
    v13[1] = v11;
    (*(v2 + 8))(v4, v1);
    sub_1D1690128();
    *&v17 = sub_1D16CC474();
    sub_1D16CC414();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D168FFE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D16CC434();
  *a1 = result;
  return result;
}

uint64_t sub_1D1690038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC641620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D16900A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC641620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1690128()
{
  result = qword_1EC640B40;
  if (!qword_1EC640B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC641B58);
    sub_1D16CBC70();
    sub_1D16CBCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC640B40);
  }

  return result;
}

_OWORD *sub_1D16901B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D1690294@<X0>(void *a1@<X8>)
{
  v3 = [v1 systemImageName];
  if (!v3)
  {
    sub_1D16CC4A4();
    v3 = sub_1D16CC494();
  }

  v4 = [objc_allocWithZone(CCUIControlImageView) initWithSystemImageName_];

  [v4 setActive_];
  v5 = [v1 glyphTintColor];
  [v4 setGlyphTintColor_];

  v6 = [v1 font];
  [v4 setFont_];

  result = type metadata accessor for CCUIControlImageView(v7);
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t CCUINumberOfRowsForGridSizeClass(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 1;
  }

  else
  {
    return word_1D16D1D62[a1 - 1];
  }
}

uint64_t CCUINumberOfColumnsForGridSizeClass(uint64_t a1)
{
  if ((a1 - 2) > 8)
  {
    return 1;
  }

  else
  {
    return word_1D16D1D50[a1 - 2];
  }
}

double CCUIBoundsSizeForGridSizeClassWithGeometry(uint64_t a1, double a2, double a3)
{
  v6 = CCUINumberOfColumnsForGridSizeClass(a1);
  CCUINumberOfRowsForGridSizeClass(a1);
  return a3 * (v6 + -1.0) + v6 * a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D169159C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC641620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1691604(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1691624(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D169166C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16916F0()
{
  MEMORY[0x1D388F430](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1691728()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1691760()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D16917B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D16917E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1691840()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1691888()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D16918C8()
{
  v1 = *(v0 + 104);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1D1691928()
{

  v1 = *(v0 + 176);
  if (v1 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1D1691998()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

double sub_1D1691A00@<D0>(uint64_t a1@<X8>)
{
  UIMutableTraits.moduleResizingConfiguration.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

__n128 sub_1D1691AB0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D1691ABC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D1691B04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 gridSizeClass];
  *a2 = result;
  return result;
}

id sub_1D1691B4C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 suppressesContentTransitions];
  *a2 = result;
  return result;
}

id sub_1D1691B94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userVisibilityStatus];
  *a2 = result;
  return result;
}

id sub_1D1691BDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 compactContinuousCornerRadius];
  *a2 = v4;
  return result;
}

id sub_1D1691C24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentMetrics];
  *a2 = result;
  return result;
}

id sub_1D1691C74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isResizing];
  *a2 = result;
  return result;
}

uint64_t sub_1D1691D04()
{
  MEMORY[0x1D388F430](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1691D3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1691D7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D1691DCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t CCUISignpostImpulse(NSObject *a1)
{
  if (os_signpost_enabled(a1))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D168A000, a1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "signpost", " enableTelemetry=YES ", v3, 2u);
  }

  return kdebug_trace();
}

CGAffineTransform *CCUIAffineTransformBetweenInterfaceOrientations@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0.0;
  v4 = 0.0;
  if (a2 != 1)
  {
    if (a2 == 3)
    {
      v4 = 1.57079633;
    }

    else if (a2 == 4)
    {
      v4 = -1.57079633;
    }

    else
    {
      v4 = 3.14159265;
      if (a2 != 2)
      {
        v4 = 0.0;
      }
    }
  }

  if (a1 != 1)
  {
    if (a1 == 3)
    {
      v3 = 1.57079633;
    }

    else if (a1 == 4)
    {
      v3 = -1.57079633;
    }

    else
    {
      v3 = 3.14159265;
      if (a1 != 2)
      {
        v3 = 0.0;
      }
    }
  }

  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return CGAffineTransformMakeRotation(a3, v4 - v3);
}

void __CCUIReferenceScreenBounds_block_invoke()
{
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 _referenceBounds];
  CCUIReferenceScreenBounds___referenceScreenBounds_0 = v0;
  CCUIReferenceScreenBounds___referenceScreenBounds_1 = v1;
  CCUIReferenceScreenBounds___referenceScreenBounds_2 = v2;
  CCUIReferenceScreenBounds___referenceScreenBounds_3 = v3;
}

double CCUIScreenSafeAreaInsets()
{
  if (CCUIScreenSafeAreaInsets_onceToken != -1)
  {
    CCUIScreenSafeAreaInsets_cold_1();
  }

  return *&CCUIScreenSafeAreaInsets___screenSafeAreaInsets_0;
}

void __CCUIScreenSafeAreaInsets_block_invoke()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  v6 = [v0 _keyWindowForScreen:v1];

  [v6 safeAreaInsets];
  CCUIScreenSafeAreaInsets___screenSafeAreaInsets_0 = v2;
  CCUIScreenSafeAreaInsets___screenSafeAreaInsets_1 = v3;
  CCUIScreenSafeAreaInsets___screenSafeAreaInsets_2 = v4;
  CCUIScreenSafeAreaInsets___screenSafeAreaInsets_3 = v5;
}

double CCUIPortraitMainListGridGeometryInfo()
{
  if (CCUIPortraitMainListGridGeometryInfo_onceToken != -1)
  {
    CCUIPortraitMainListGridGeometryInfo_cold_1();
  }

  return *&CCUIPortraitMainListGridGeometryInfo_gridGeometryInfo_0;
}

void __CCUIPortraitMainListGridGeometryInfo_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 10.0;
    v3 = 66.0;
  }

  else
  {
    if (CCUIPortraitGridLayoutSideMargin_onceToken != -1)
    {
      __CCUIPortraitMainListGridGeometryInfo_block_invoke_cold_1();
    }

    v4 = *&CCUIPortraitGridLayoutSideMargin_margin;
    v7.origin.x = CCUIReferenceScreenBounds();
    v5 = CGRectGetWidth(v7) + v4 * -2.0;
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 scale];

    v3 = round(v5 / 4.66176471);
    UIFloorToScale();
  }

  CCUIPortraitMainListGridGeometryInfo_gridGeometryInfo_0 = *&v3;
  CCUIPortraitMainListGridGeometryInfo_gridGeometryInfo_1 = *&v2;
}

double CCUIPortraitGridLayoutSideMargin()
{
  if (CCUIPortraitGridLayoutSideMargin_onceToken != -1)
  {
    __CCUIPortraitMainListGridGeometryInfo_block_invoke_cold_1();
  }

  return *&CCUIPortraitGridLayoutSideMargin_margin;
}

double CCUICalculateGridGeometryInfo(uint64_t a1, double a2, double a3)
{
  v3 = round(a2 / (a1 + (a1 + -1.0) * a3));
  UIFloorToScale();
  return v3;
}

double CCUICompactModuleContinuousCornerRadius()
{
  if (CCUICompactModuleContinuousCornerRadius_onceToken != -1)
  {
    CCUICompactModuleContinuousCornerRadius_cold_1();
  }

  return *&CCUICompactModuleContinuousCornerRadius_radius;
}

void __CCUICompactModuleContinuousCornerRadius_block_invoke()
{
  v12.origin.x = CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v12);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() == 2)
  {
    v13.origin.x = CCUIReferenceScreenBounds();
    v4 = CGRectGetWidth(v13);
    if (v4 >= 1024.0)
    {
      v0 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUICompactModuleContinuousCornerRadius_radius = 0x4033000000000000;
LABEL_31:

LABEL_32:
        v9 = v10;
        if (Width < 1024.0)
        {
          return;
        }

        goto LABEL_33;
      }
    }

    v14.origin.x = CCUIReferenceScreenBounds();
    v5 = CGRectGetWidth(v14);
    if (v5 >= 834.0)
    {
      v1 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v1 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUICompactModuleContinuousCornerRadius_radius = 0x4031000000000000;
LABEL_29:

LABEL_30:
        if (v4 < 1024.0)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    v15.origin.x = CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v15);
    if (v6 >= 834.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUICompactModuleContinuousCornerRadius_radius = 0x4031000000000000;
        goto LABEL_27;
      }
    }

    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = 17.0;
    if ([v7 userInterfaceIdiom] != 1)
    {
      v16.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v16) >= 430.0)
      {
        goto LABEL_22;
      }

      v17.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v17) >= 428.0)
      {
        goto LABEL_22;
      }

      v18.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v18) < 420.0 || (v8 = 19.0, SBFEffectiveHomeButtonType() != 2))
      {
        v19.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v19) >= 414.0 && SBFEffectiveHomeButtonType() == 2)
        {
LABEL_22:
          v8 = 21.0;
          goto LABEL_23;
        }

        v20.origin.x = CCUIReferenceScreenBounds();
        v8 = 21.0;
        if (CGRectGetWidth(v20) < 414.0)
        {
          v21.origin.x = CCUIReferenceScreenBounds();
          v8 = 20.0;
          if (CGRectGetWidth(v21) < 393.0)
          {
            v22.origin.x = CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v22) < 390.0)
            {
              v23.origin.x = CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v23) < 375.0 || (v8 = 19.0, SBFEffectiveHomeButtonType() != 2))
              {
                v24.origin.x = CCUIReferenceScreenBounds();
                v8 = 19.0;
                if (CGRectGetWidth(v24) < 375.0)
                {
                  v25.origin.x = CCUIReferenceScreenBounds();
                  if (CGRectGetWidth(v25) < 320.0)
                  {
                    v8 = 17.0;
                  }

                  else
                  {
                    v8 = 19.0;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_23:
    CCUICompactModuleContinuousCornerRadius_radius = *&v8;

    if (v6 < 834.0)
    {
LABEL_28:
      if (v5 < 834.0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_27:

    goto LABEL_28;
  }

  CCUICompactModuleContinuousCornerRadius_radius = 0x4033000000000000;
  v9 = v10;
LABEL_33:
}

double CCUIExpandedModuleContinuousCornerRadius()
{
  if (CCUIExpandedModuleContinuousCornerRadius_onceToken[0] != -1)
  {
    CCUIExpandedModuleContinuousCornerRadius_cold_1();
  }

  return *&CCUIExpandedModuleContinuousCornerRadius_radius;
}

void __CCUIExpandedModuleContinuousCornerRadius_block_invoke()
{
  v14.origin.x = CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v14);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() == 2)
  {
    v15.origin.x = CCUIReferenceScreenBounds();
    v4 = CGRectGetWidth(v15);
    if (v4 >= 1024.0)
    {
      v0 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIExpandedModuleContinuousCornerRadius_radius = 0x4043000000000000;
LABEL_42:

LABEL_43:
        v9 = v12;
        if (Width < 1024.0)
        {
          return;
        }

        goto LABEL_44;
      }
    }

    v16.origin.x = CCUIReferenceScreenBounds();
    v5 = CGRectGetWidth(v16);
    if (v5 >= 834.0)
    {
      v1 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v1 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIExpandedModuleContinuousCornerRadius_radius = 0x4041000000000000;
LABEL_40:

LABEL_41:
        if (v4 < 1024.0)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    v17.origin.x = CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v17);
    if (v6 >= 834.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUIExpandedModuleContinuousCornerRadius_radius = 0x4041000000000000;
LABEL_38:

LABEL_39:
        if (v5 < 834.0)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    v7 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v7 userInterfaceIdiom] == 1)
    {
      v8 = 0x4041000000000000;
LABEL_36:
      v11 = *&v8;
      goto LABEL_37;
    }

    v18.origin.x = CCUIReferenceScreenBounds();
    if (CGRectGetWidth(v18) < 430.0)
    {
      v19.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v19) < 428.0)
      {
        v20.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v20) >= 420.0 && SBFEffectiveHomeButtonType() == 2)
        {
LABEL_21:
          v8 = 0x4043000000000000;
          goto LABEL_36;
        }

        v21.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v21) < 414.0 || SBFEffectiveHomeButtonType() != 2)
        {
          v22.origin.x = CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v22) < 414.0)
          {
            v23.origin.x = CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v23) >= 393.0 || (v24.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v24) >= 390.0))
            {
              v8 = 0x4044000000000000;
              goto LABEL_36;
            }

            v25.origin.x = CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v25) < 375.0 || SBFEffectiveHomeButtonType() != 2)
            {
              v26.origin.x = CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v26) < 375.0)
              {
                v27.origin.x = CCUIReferenceScreenBounds();
                v10 = CGRectGetWidth(v27) < 320.0;
                v11 = 34.0;
                if (!v10)
                {
                  v11 = 38.0;
                }

LABEL_37:
                CCUIExpandedModuleContinuousCornerRadius_radius = *&v11;

                if (v6 < 834.0)
                {
                  goto LABEL_39;
                }

                goto LABEL_38;
              }
            }

            goto LABEL_21;
          }
        }
      }
    }

    v8 = 0x4045000000000000;
    goto LABEL_36;
  }

  CCUIExpandedModuleContinuousCornerRadius_radius = 0x4043000000000000;
  v9 = v12;
LABEL_44:
}

double CCUISliderExpandedModuleContinuousCornerRadius()
{
  if (CCUISliderExpandedContentModuleWidth_onceToken != -1)
  {
    CCUISliderExpandedModuleContinuousCornerRadius_cold_1();
  }

  return *&CCUISliderExpandedContentModuleWidth_width * 0.5;
}

double CCUISliderExpandedContentModuleWidth()
{
  if (CCUISliderExpandedContentModuleWidth_onceToken != -1)
  {
    CCUISliderExpandedModuleContinuousCornerRadius_cold_1();
  }

  return *&CCUISliderExpandedContentModuleWidth_width;
}

void __CCUISliderExpandedContentModuleWidth_block_invoke()
{
  v14.origin.x = CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v14);
  if (Width >= 1024.0)
  {
    v0 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
    {
      CCUISliderExpandedContentModuleWidth_width = 0x405EC00000000000;
LABEL_42:

      goto LABEL_43;
    }
  }

  v15.origin.x = CCUIReferenceScreenBounds();
  v5 = CGRectGetWidth(v15);
  if (v5 < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() != 2)
  {
    v16.origin.x = CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v16);
    if (v6 >= 834.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUISliderExpandedContentModuleWidth_width = 0x405EC00000000000;
LABEL_38:

LABEL_39:
        if (v5 < 1024.0)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    v17.origin.x = CCUIReferenceScreenBounds();
    v7 = CGRectGetWidth(v17);
    if (v7 >= 834.0)
    {
      v3 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v3 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUISliderExpandedContentModuleWidth_width = 0x405EC00000000000;
LABEL_36:

LABEL_37:
        if (v6 < 834.0)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    v8 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v8 userInterfaceIdiom] == 1)
    {
      v9 = 0x405EC00000000000;
      goto LABEL_35;
    }

    v18.origin.x = CCUIReferenceScreenBounds();
    v9 = 0x4062C00000000000;
    if (CGRectGetWidth(v18) < 430.0)
    {
      v19.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v19) < 428.0)
      {
        v20.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v20) >= 420.0 && SBFEffectiveHomeButtonType() == 2)
        {
          goto LABEL_21;
        }

        v21.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v21) >= 414.0 && SBFEffectiveHomeButtonType() == 2)
        {
          v9 = 0x4062400000000000;
        }

        else
        {
          v22.origin.x = CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v22) >= 414.0)
          {
            v9 = 0x4060800000000000;
          }

          else
          {
            v23.origin.x = CCUIReferenceScreenBounds();
            v9 = 0x4061800000000000;
            if (CGRectGetWidth(v23) < 393.0)
            {
              v24.origin.x = CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v24) < 390.0)
              {
                v25.origin.x = CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v25) >= 375.0 && SBFEffectiveHomeButtonType() == 2)
                {
LABEL_21:
                  v9 = 0x4060E00000000000;
                  goto LABEL_35;
                }

                v26.origin.x = CCUIReferenceScreenBounds();
                v9 = 0x405EC00000000000;
                if (CGRectGetWidth(v26) < 375.0)
                {
                  v27.origin.x = CCUIReferenceScreenBounds();
                  v9 = qword_1D16D1D30[CGRectGetWidth(v27) >= 320.0];
                }
              }
            }
          }
        }
      }
    }

LABEL_35:
    CCUISliderExpandedContentModuleWidth_width = v9;

    if (v7 < 834.0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  CCUISliderExpandedContentModuleWidth_width = 0x405EC00000000000;
LABEL_40:

LABEL_41:
  if (Width >= 1024.0)
  {
    goto LABEL_42;
  }

LABEL_43:
  v12 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v12 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
  {
  }

  else
  {
    v28.origin.x = CCUIReferenceScreenBounds();
    v10 = CGRectGetWidth(v28);

    if (v10 < 375.0)
    {
      v11 = *&CCUISliderExpandedContentModuleWidth_width;
      if (*&CCUISliderExpandedContentModuleWidth_width < 135.0)
      {
        v11 = 135.0;
      }

      CCUISliderExpandedContentModuleWidth_width = *&v11;
    }
  }
}

void __CCUISliderExpandedContentModuleHeight_block_invoke()
{
  v14.origin.x = CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v14);
  if (Width >= 1024.0)
  {
    v0 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
    {
      CCUISliderExpandedContentModuleHeight_height = 0x4075400000000000;
LABEL_32:

      goto LABEL_33;
    }
  }

  v15.origin.x = CCUIReferenceScreenBounds();
  v5 = CGRectGetWidth(v15);
  if (v5 < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() != 2)
  {
    v16.origin.x = CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v16);
    if (v6 >= 834.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUISliderExpandedContentModuleHeight_height = 0x4075400000000000;
LABEL_28:

LABEL_29:
        if (v5 < 1024.0)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    v17.origin.x = CCUIReferenceScreenBounds();
    v7 = CGRectGetWidth(v17);
    if (v7 >= 834.0)
    {
      v3 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v3 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUISliderExpandedContentModuleHeight_height = 0x4075400000000000;
        goto LABEL_26;
      }
    }

    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v9 = 0x4075400000000000;
    if ([v8 userInterfaceIdiom] != 1)
    {
      v18.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v18) >= 430.0 || (v19.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v19) >= 428.0))
      {
        v9 = 0x4079000000000000;
      }

      else
      {
        v20.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v20) >= 420.0 && SBFEffectiveHomeButtonType() == 2)
        {
          goto LABEL_20;
        }

        v22.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v22) >= 414.0 && SBFEffectiveHomeButtonType() == 2)
        {
          v9 = 0x4078600000000000;
        }

        else
        {
          v23.origin.x = CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v23) < 414.0)
          {
            v24.origin.x = CCUIReferenceScreenBounds();
            v9 = 0x4077200000000000;
            if (CGRectGetWidth(v24) < 393.0)
            {
              v25.origin.x = CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v25) < 390.0)
              {
                v26.origin.x = CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v26) >= 375.0 && SBFEffectiveHomeButtonType() == 2)
                {
LABEL_20:
                  v9 = 0x4076800000000000;
                  goto LABEL_22;
                }

                v27.origin.x = CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v27) >= 375.0)
                {
                  v9 = 0x4073B00000000000;
                }

                else
                {
                  v28.origin.x = CCUIReferenceScreenBounds();
                  v9 = qword_1D16D1D40[CGRectGetWidth(v28) >= 320.0];
                }
              }
            }
          }
        }
      }
    }

LABEL_22:
    CCUISliderExpandedContentModuleHeight_height = v9;

    if (v7 < 834.0)
    {
LABEL_27:
      if (v6 < 834.0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_26:

    goto LABEL_27;
  }

  CCUISliderExpandedContentModuleHeight_height = 0x4075400000000000;
LABEL_30:

LABEL_31:
  if (Width >= 1024.0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v12 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v12 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
  {
  }

  else
  {
    v21.origin.x = CCUIReferenceScreenBounds();
    v10 = CGRectGetWidth(v21);

    if (v10 < 375.0)
    {
      v11 = *&CCUISliderExpandedContentModuleHeight_height;
      if (*&CCUISliderExpandedContentModuleHeight_height < 360.0)
      {
        v11 = 360.0;
      }

      CCUISliderExpandedContentModuleHeight_height = *&v11;
    }
  }
}

double CCUIAlertCompactPresentationTopMarginForOrientation(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
    if (CCUIAlertCompactPresentationTopMarginForOrientation_onceToken != -1)
    {
      CCUIAlertCompactPresentationTopMarginForOrientation_cold_1();
    }

    v1 = &CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait;
  }

  else
  {
    if (CCUIAlertCompactPresentationTopMarginForOrientation_onceToken_17 != -1)
    {
      CCUIAlertCompactPresentationTopMarginForOrientation_cold_2();
    }

    v1 = &CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape;
  }

  return *v1;
}

void __CCUIAlertCompactPresentationTopMarginForOrientation_block_invoke()
{
  v12.origin.x = CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v12);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() == 2)
  {
    v13.origin.x = CCUIReferenceScreenBounds();
    v4 = CGRectGetWidth(v13);
    if (v4 >= 1024.0)
    {
      v0 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait = 0x4038000000000000;
LABEL_36:

LABEL_37:
        v9 = v10;
        if (Width < 1024.0)
        {
          return;
        }

        goto LABEL_38;
      }
    }

    v14.origin.x = CCUIReferenceScreenBounds();
    v5 = CGRectGetWidth(v14);
    if (v5 >= 834.0)
    {
      v1 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v1 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait = 0x4038000000000000;
LABEL_34:

LABEL_35:
        if (v4 < 1024.0)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    v15.origin.x = CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v15);
    if (v6 >= 834.0)
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait = 0x4038000000000000;
        goto LABEL_32;
      }
    }

    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = 24.0;
    if ([v7 userInterfaceIdiom] != 1)
    {
      v16.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v16) >= 430.0)
      {
        goto LABEL_27;
      }

      v17.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v17) >= 428.0)
      {
        goto LABEL_27;
      }

      v18.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v18) >= 420.0 && SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_27;
      }

      v19.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v19) >= 414.0 && SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_27;
      }

      v20.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v20) >= 414.0)
      {
        goto LABEL_28;
      }

      v21.origin.x = CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v21) >= 393.0 || (v22.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v22) >= 390.0) || (v23.origin.x = CCUIReferenceScreenBounds(), CGRectGetWidth(v23) >= 375.0) && SBFEffectiveHomeButtonType() == 2)
      {
LABEL_27:
        v8 = 48.0;
      }

      else
      {
        v24.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v24) < 375.0)
        {
          v25.origin.x = CCUIReferenceScreenBounds();
          CGRectGetWidth(v25);
        }
      }
    }

LABEL_28:
    CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait = *&v8;

    if (v6 < 834.0)
    {
LABEL_33:
      if (v5 < 834.0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_32:

    goto LABEL_33;
  }

  CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForPortrait = 0x4038000000000000;
  v9 = v10;
LABEL_38:
}

void __CCUIAlertCompactPresentationTopMarginForOrientation_block_invoke_2()
{
  v11.origin.x = CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v11);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() == 2)
  {
    v12.origin.x = CCUIReferenceScreenBounds();
    v4 = CGRectGetWidth(v12);
    if (v4 >= 1024.0)
    {
      v0 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape = 0x4038000000000000;
LABEL_37:

LABEL_38:
        v8 = v9;
        if (Width < 1024.0)
        {
          return;
        }

        goto LABEL_39;
      }
    }

    v13.origin.x = CCUIReferenceScreenBounds();
    v5 = CGRectGetWidth(v13);
    if (v5 >= 834.0)
    {
      v1 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v1 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape = 0x4038000000000000;
LABEL_35:

LABEL_36:
        if (v4 < 1024.0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    v14.origin.x = CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v14);
    if (v6 >= 834.0 && ([MEMORY[0x1E69DC938] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() != 2)
    {
      CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape = 0x4038000000000000;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v7 userInterfaceIdiom] != 1)
      {
        v15.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v15) < 430.0)
        {
          v16.origin.x = CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v16) < 428.0)
          {
            v17.origin.x = CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v17) < 420.0 || SBFEffectiveHomeButtonType() != 2)
            {
              v18.origin.x = CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v18) < 414.0 || SBFEffectiveHomeButtonType() != 2)
              {
                v19.origin.x = CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v19) < 414.0)
                {
                  v20.origin.x = CCUIReferenceScreenBounds();
                  if (CGRectGetWidth(v20) < 393.0)
                  {
                    v21.origin.x = CCUIReferenceScreenBounds();
                    if (CGRectGetWidth(v21) < 390.0)
                    {
                      v22.origin.x = CCUIReferenceScreenBounds();
                      if (CGRectGetWidth(v22) < 375.0 || SBFEffectiveHomeButtonType() != 2)
                      {
                        v23.origin.x = CCUIReferenceScreenBounds();
                        if (CGRectGetWidth(v23) < 375.0)
                        {
                          v24.origin.x = CCUIReferenceScreenBounds();
                          CGRectGetWidth(v24);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape = 0x4038000000000000;

      if (v6 < 834.0)
      {
LABEL_34:
        if (v5 < 834.0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_34;
  }

  CCUIAlertCompactPresentationTopMarginForOrientation_topMarginForLandscape = 0x4038000000000000;
  v8 = v9;
LABEL_39:
}

double CCUIAlertCompactPresentationMargin()
{
  if (CCUIAlertCompactPresentationMargin_onceToken != -1)
  {
    CCUIAlertCompactPresentationMargin_cold_1();
  }

  return *&CCUIAlertCompactPresentationMargin_defaultMargin;
}

void __CCUIAlertCompactPresentationMargin_block_invoke()
{
  v11.origin.x = CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v11);
  if (Width < 1024.0 || ([MEMORY[0x1E69DC938] currentDevice], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() == 2)
  {
    v12.origin.x = CCUIReferenceScreenBounds();
    v4 = CGRectGetWidth(v12);
    if (v4 >= 1024.0)
    {
      v0 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIAlertCompactPresentationMargin_defaultMargin = 0x4038000000000000;
LABEL_37:

LABEL_38:
        v8 = v9;
        if (Width < 1024.0)
        {
          return;
        }

        goto LABEL_39;
      }
    }

    v13.origin.x = CCUIReferenceScreenBounds();
    v5 = CGRectGetWidth(v13);
    if (v5 >= 834.0)
    {
      v1 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v1 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIAlertCompactPresentationMargin_defaultMargin = 0x4038000000000000;
LABEL_35:

LABEL_36:
        if (v4 < 1024.0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    v14.origin.x = CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v14);
    if (v6 >= 834.0 && ([MEMORY[0x1E69DC938] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() != 2)
    {
      CCUIAlertCompactPresentationMargin_defaultMargin = 0x4038000000000000;
    }

    else
    {
      v7 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v7 userInterfaceIdiom] != 1)
      {
        v15.origin.x = CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v15) < 430.0)
        {
          v16.origin.x = CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v16) < 428.0)
          {
            v17.origin.x = CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v17) < 420.0 || SBFEffectiveHomeButtonType() != 2)
            {
              v18.origin.x = CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v18) < 414.0 || SBFEffectiveHomeButtonType() != 2)
              {
                v19.origin.x = CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v19) < 414.0)
                {
                  v20.origin.x = CCUIReferenceScreenBounds();
                  if (CGRectGetWidth(v20) < 393.0)
                  {
                    v21.origin.x = CCUIReferenceScreenBounds();
                    if (CGRectGetWidth(v21) < 390.0)
                    {
                      v22.origin.x = CCUIReferenceScreenBounds();
                      if (CGRectGetWidth(v22) < 375.0 || SBFEffectiveHomeButtonType() != 2)
                      {
                        v23.origin.x = CCUIReferenceScreenBounds();
                        if (CGRectGetWidth(v23) < 375.0)
                        {
                          v24.origin.x = CCUIReferenceScreenBounds();
                          CGRectGetWidth(v24);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      CCUIAlertCompactPresentationMargin_defaultMargin = 0x4038000000000000;

      if (v6 < 834.0)
      {
LABEL_34:
        if (v5 < 834.0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_34;
  }

  CCUIAlertCompactPresentationMargin_defaultMargin = 0x4038000000000000;
  v8 = v9;
LABEL_39:
}

void __CCUIPortraitGridLayoutSideMargin_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    v5.origin.x = CCUIReferenceScreenBounds();
    v2 = CGRectGetWidth(v5) < 1024.0;
    v3 = 60.0;
    v4 = 50.0;
  }

  else
  {
    if (SBFEffectiveHomeButtonType() != 2)
    {
      v3 = 44.0;
      goto LABEL_7;
    }

    v6.origin.x = CCUIReferenceScreenBounds();
    v2 = CGRectGetWidth(v6) < 414.0;
    v3 = 46.0;
    v4 = 38.0;
  }

  if (v2)
  {
    v3 = v4;
  }

LABEL_7:
  CCUIPortraitGridLayoutSideMargin_margin = *&v3;
}

__CFString *NSStringFromCCUIContentRenderingMode(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Preview";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown: %lu>", a1];
    }
  }

  else
  {
    v2 = @"Live";
  }

  return v2;
}

double _CCUIRoundButtonSize()
{
  if (_CCUIRoundButtonSize_onceToken != -1)
  {
    _CCUIRoundButtonSize_cold_1();
  }

  return *&_CCUIRoundButtonSize_size;
}

void sub_1D169AEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D169B250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCCUIGridSizeClass(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"CCUIGridSizeClassSmall";
  }

  else
  {
    return off_1E83EA8C8[a1 - 1];
  }
}

void CCUIEnumerateGridSizeClassesWithBlock(void (**a1)(id, uint64_t))
{
  v1 = a1 + 2;
  v2 = a1[2];
  v3 = a1;
  v2();
  (*v1)(v3, 1);
  (*v1)(v3, 2);
  (*v1)(v3, 3);
  (*v1)(v3, 4);
  (*v1)(v3, 5);
  (*v1)(v3, 6);
  (*v1)(v3, 7);
  (*v1)(v3, 8);
  (*v1)(v3, 9);
  (*v1)(v3, 10);
}

uint64_t CCUIGridSizeClassMaskForGridSizeClass(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 1;
  }

  else
  {
    return qword_1D16D1E18[a1 - 1];
  }
}

uint64_t CCUIAdjustGridSizeClassForAccessibility(uint64_t result, int a2)
{
  if (a2)
  {
    if (result == 2)
    {
      return 3;
    }

    else if (result == 4)
    {
      return 5;
    }
  }

  else if (result == 3)
  {
    return 2;
  }

  else if (result == 5)
  {
    return 4;
  }

  return result;
}

void sub_1D16A6BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D16A7628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CCUIRegisterControlCenterLogging()
{
  if (CCUIRegisterControlCenterLogging_onceToken != -1)
  {
    CCUIRegisterControlCenterLogging_cold_1();
  }
}

uint64_t __CCUIRegisterControlCenterLogging_block_invoke()
{
  v0 = os_log_create("com.apple.ControlCenter", "AnimationRunner");
  v1 = CCUILogAnimationRunner;
  CCUILogAnimationRunner = v0;

  v2 = os_log_create("com.apple.ControlCenter", "ModuleInstance");
  v3 = CCUILogModuleInstance;
  CCUILogModuleInstance = v2;

  v4 = os_log_create("com.apple.ControlCenter", "UserInterface");
  v5 = CCUILogUserInterface;
  CCUILogUserInterface = v4;

  v6 = os_log_create("com.apple.ControlCenter", "IconLookup");
  v7 = CCUILogIconLookup;
  CCUILogIconLookup = v6;

  v8 = os_log_create("com.apple.ControlCenter", "XcodeSupport");
  v9 = CCUILogXcodeSupport;
  CCUILogXcodeSupport = v8;

  return MEMORY[0x1EEE66BB8](v8, v9);
}

__CFString *NSStringFromCCUIBaseSliderViewBehaviorIdentifier(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown: %lu>", a1];
  }

  else
  {
    v2 = off_1E83EAB00[a1];
  }

  return v2;
}

void sub_1D16B0B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1D16B2B1C()
{
  v45.receiver = v0;
  v45.super_class = type metadata accessor for LabelWithAccessoryView();
  objc_msgSendSuper2(&v45, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 _shouldReverseLayoutDirection];
  v10 = [v0 traitCollection];
  [v10 displayScale];
  v12 = v11;

  v13 = OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel;
  [*&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel] bounds];
  v15 = v14;
  v46.origin.x = v2;
  v46.origin.y = v4;
  v46.size.width = v6;
  v46.size.height = v8;
  v16 = CGRectGetWidth(v46) - v15;
  v47.origin.x = v2;
  v47.origin.y = v4;
  v47.size.width = v6;
  v47.size.height = v8;
  Height = CGRectGetHeight(v47);
  v18 = *&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel];
  [v18 sizeThatFits_];
  BSRectWithSize();
  v43 = v12;
  v42 = v12;
  v44 = v2;
  v19 = v4;
  v20 = v6;
  UIRectCenteredYInRectScale();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = 0.0;
  if (v9)
  {
    v29 = v21;
    v48.size.height = v8;
    v48.origin.x = v44;
    v48.origin.y = v19;
    v48.size.width = v20;
    Width = CGRectGetWidth(v48);
    v49.origin.x = v29;
    v49.origin.y = v23;
    v49.size.width = v25;
    v49.size.height = v27;
    v28 = Width - CGRectGetWidth(v49);
  }

  [v18 setFrame_];
  UIRectCenteredYInRectScale();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (v9)
  {
    v38 = v31;
    v50.origin.x = v28;
    v50.origin.y = v23;
    v50.size.width = v25;
    v50.size.height = v27;
    MinX = CGRectGetMinX(v50);
    v51.origin.x = v38;
    v51.origin.y = v33;
    v51.size.width = v35;
    v51.size.height = v37;
    MaxX = MinX - CGRectGetWidth(v51);
  }

  else
  {
    v52.origin.x = v28;
    v52.origin.y = v23;
    v52.size.width = v25;
    v52.size.height = v27;
    MaxX = CGRectGetMaxX(v52);
  }

  return [*&v0[v13] setFrame_];
}

uint64_t sub_1D16B2E78()
{
  v1 = *&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryImage];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel;
    v3 = *&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel];
    v4 = v1;
    v5 = [v3 superview];
    if (v5)
    {
    }

    else
    {
      [v0 addSubview_];
    }

    v9 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v10 = sub_1D16CC494();
    v11 = [v9 initWithString_];

    v12 = [v0 _shouldReverseLayoutDirection];
    v13 = [objc_opt_self() textAttachmentWithImage_];
    v14 = [objc_opt_self() attributedStringWithAttachment_];

    if (v12)
    {
      [v11 insertAttributedString:v14 atIndex:0];

      [*&v0[v2] setAttributedText_];
      v15 = *&v0[v2];
      [v15 setSemanticContentAttribute_];
    }

    else
    {
      [v11 insertAttributedString:v14 atIndex:{objc_msgSend(v11, sel_length)}];

      [*&v0[v2] setAttributedText_];
    }
  }

  else
  {
    v6 = OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel;
    v7 = [*&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel] superview];
    if (v7)
    {
      v8 = v7;

      if (v8 == v0)
      {
        [*&v0[v6] removeFromSuperview];
      }
    }

    [*&v0[v6] setAttributedText_];
  }

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D16B38C8;
  *(v18 + 24) = v17;
  v22[4] = sub_1D16B38E4;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1D16C3318;
  v22[3] = &block_descriptor;
  v19 = _Block_copy(v22);
  v20 = v0;

  [v16 performWithoutAnimation_];
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    [v20 setNeedsLayout];
  }

  return result;
}

id sub_1D16B3220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabelWithAccessoryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id sub_1D16B32F8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel) font];

  return v1;
}

void sub_1D16B3338(void *a1)
{
  [*&v1[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] setFont_];
  v2 = OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel;
  [*&v1[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel] setFont_];
  [*&v1[v2] sizeToFit];
  [v1 setNeedsLayout];
}

id sub_1D16B33D0(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel];
  if (a2)
  {
    v4 = sub_1D16CC494();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];

  return [v2 setNeedsLayout];
}

void sub_1D16B3454(void *a1)
{
  [*&v1[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] setAttributedText_];
  [v1 setNeedsLayout];
}

id sub_1D16B34B4(uint64_t a1)
{
  [*&v1[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] setNumberOfLines_];

  return [v1 setNeedsLayout];
}

id sub_1D16B3500(char a1)
{
  [*&v1[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] setAdjustsFontSizeToFitWidth_];

  return [v1 setNeedsLayout];
}

id sub_1D16B3550()
{
  [*&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] setMinimumScaleFactor_];

  return [v0 setNeedsLayout];
}

id sub_1D16B3598()
{
  [*&v0[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] _setHyphenationFactor_];

  return [v0 setNeedsLayout];
}

uint64_t sub_1D16B35E0()
{
  v1 = *v0;
  sub_1D16CC724();
  MEMORY[0x1D388E8D0](v1);
  return sub_1D16CC744();
}

uint64_t sub_1D16B3654()
{
  v1 = *v0;
  sub_1D16CC724();
  MEMORY[0x1D388E8D0](v1);
  return sub_1D16CC744();
}

void *sub_1D16B3698@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

char *sub_1D16B36A8(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryImage] = a1;
  v11 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v12 = a1;
  v13 = [v11 initWithFrame_];
  v14 = OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel;
  *&v5[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel] = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v5[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel] = v15;
  [*&v5[v14] bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = type metadata accessor for LabelWithAccessoryView();
  v33.receiver = v5;
  v33.super_class = v24;
  v25 = objc_msgSendSuper2(&v33, sel_initWithFrame_, v17, v19, v21, v23);
  v26 = *&v25[OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel];
  v27 = v25;
  [v27 addSubview_];
  if (a1)
  {
    sub_1D16B2E78();
  }

  [v27 setUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6414A0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D16D1ED0;
  v29 = sub_1D16CC354();
  v30 = MEMORY[0x1E69DC2B0];
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  v32[3] = v24;
  v32[0] = v27;
  MEMORY[0x1D388E720](v28, v32, sel_setNeedsLayout);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v32);
  return v27;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D16B3924(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D16B3944(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1D16B3988()
{
  result = qword_1EC640B10;
  if (!qword_1EC640B10)
  {
    type metadata accessor for MTVisualStyleCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC640B10);
  }

  return result;
}

void sub_1D16B3A1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id CCUIControlTemplateView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___CCUIControlTemplateView_backgroundView] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_customGlyphView] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView_showsMenuAffordance] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_menuAffordancePosition] = 1;
  v9 = &v4[OBJC_IVAR___CCUIControlTemplateView_title];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR___CCUIControlTemplateView_subtitle];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView__isRedacted] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView__isResizing] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView__isExpanded] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView__isPresentingContextMenu] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_gridSizeClass] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView_suppressesLabelTransitions] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_continuousCornerRadius] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView_supportsAccessibilityContentSizeCategories] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView____lazy_storage___animatingLabels] = 0;
  v11 = &v4[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  *v11 = 1;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0;
  v12 = &v4[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  *v12 = 1;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_blurPocket] = 0;
  *&v4[OBJC_IVAR___CCUIControlTemplateView_blurPocketRemovalAnimationGeneration] = 0;
  v4[OBJC_IVAR___CCUIControlTemplateView_isLimitingTitleToSingleLineForAccessibility] = 0;
  v20.receiver = v4;
  v20.super_class = CCUIControlTemplateView;
  v13 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 addTarget:v13 action:sel_primaryActionTriggered forControlEvents:64];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6414A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D16D1ED0;
  v15 = sub_1D16CC354();
  v16 = MEMORY[0x1E69DC2B0];
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  MEMORY[0x1D388E710](v14, sel_didUpdatePreferredContentSizeCategory);
  swift_unknownObjectRelease();

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D16D1ED0;
  v18 = sub_1D16B3D94();
  *(v17 + 32) = &type metadata for ModuleResizingConfigurationTrait;
  *(v17 + 40) = v18;
  MEMORY[0x1D388E710](v17, sel_didUpdateResizingConfiguration);

  swift_unknownObjectRelease();

  return v13;
}

unint64_t sub_1D16B3D94()
{
  result = qword_1EC640B78;
  if (!qword_1EC640B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC640B78);
  }

  return result;
}

id CCUIControlTemplateView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void sub_1D16B403C(void *a1)
{
  v2 = OBJC_IVAR___CCUIControlTemplateView_backgroundView;
  v3 = *&v1[OBJC_IVAR___CCUIControlTemplateView_backgroundView];
  if (a1)
  {
    if (v3 == a1)
    {
      return;
    }

    v4 = a1;
    v5 = [v4 superview];
    if (v5)
    {
      v6 = v5;

      if (v6 == v1)
      {
        [v4 removeFromSuperview];
      }
    }

    v3 = *&v1[v2];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else if (!v3)
  {
    return;
  }

  v7 = v3;
  [v1 bounds];
  [v7 setFrame_];
  [v1 continuousCornerRadius];
  [v7 _setContinuousCornerRadius_];
  [v1 insertSubview:v7 atIndex:0];

LABEL_10:
  if (*&v1[OBJC_IVAR___CCUIControlTemplateView_blurPocket])
  {

    sub_1D16B4170();
  }
}

void sub_1D16B4170()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = [Strong layer];

  if (!v3)
  {
    return;
  }

  v4 = *(v0 + 40);
  if (v4)
  {
    v5 = *(v0 + 64);
    if (v5)
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      v7 = v4;
      v14 = v5;
      if (v6 && (v8 = sub_1D16BE678(), v6, v8) && (v9 = [v8 layer], v8, v9))
      {
        [v3 insertSublayer:v7 below:v9];
      }

      else
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (!v11 || (v12 = v11, v13 = [v11 backgroundView], v12, !v13) || (v9 = objc_msgSend(v13, sel_layer), v13, !v9))
        {
          [v3 insertSublayer:v7 below:0];
          goto LABEL_17;
        }

        [v3 insertSublayer:v7 above:v9];
      }

LABEL_17:
      [v3 insertSublayer:v14 above:0];

      v10 = v14;
      goto LABEL_18;
    }
  }

  v10 = v3;
LABEL_18:
}

void sub_1D16B4360(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id))
{
  v9 = *&a1[*a4];
  *&a1[*a4] = a3;
  v7 = a3;
  v8 = a1;
  a5(v9);
}

id sub_1D16B43E0(id result)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___CCUIControlTemplateView_customGlyphView];
  if (!result)
  {
    if (!v3)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v3 == result)
  {
    return result;
  }

  if (v3)
  {
LABEL_6:
    v5 = objc_allocWithZone(_s22ButtonGlyphWrapperViewCMa());
    v4 = sub_1D16BF66C(v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:
  [v2 setGlyphView_];

  v6 = [v2 glyphView];
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641630);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D16D1ED0;
    *(v8 + 56) = swift_getObjectType();
    *(v8 + 32) = v7;
    v9 = v7;
    v10 = sub_1D16CC4E4();

    [v2 setAutomationElements_];
  }

  return [v2 setNeedsLayout];
}

id sub_1D16B45A8()
{
  v1 = v0;
  if ([v0 showsMenuAffordance])
  {
    v2 = [v0 menuAffordancePosition] == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v4 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v4 >= 2)
  {
    v5 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 184);
    v8 = v4;
    v9 = v7(ObjectType, v5);
    if (v9)
    {

      if (v2)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else if (!v2)
    {
      goto LABEL_8;
    }

    sub_1D16BD44C(&OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels);
    goto LABEL_8;
  }

LABEL_9:
  v10 = &v1[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  v11 = *&v1[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v11 < 2)
  {
    goto LABEL_14;
  }

  v12 = *(v10 + 1);
  v13 = swift_getObjectType();
  v14 = *(v12 + 184);
  v15 = v11;
  v16 = v14(v13, v12);
  if (!v16)
  {
    if (!v2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v2)
  {
LABEL_12:
    sub_1D16BD44C(&OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels);
  }

LABEL_13:

LABEL_14:
  sub_1D16B5288(&selRef_title, sub_1D16BD504, sub_1D16BD44C);
  v17 = *v3;
  if (*v3 != 1)
  {
    v18 = *(v3 + 1);
    v19 = *(v3 + 2);
    v20 = *(v3 + 3);
    sub_1D16C2014(*v3, v18, v19);
    v21 = v19;
    if (v19)
    {
      v22 = v21;
      v23 = [v1 subtitle];
      if (v23)
      {
        v24 = v23;
        v25 = sub_1D16CC4A4();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v28 = swift_getObjectType();
      sub_1D16B55B0(v25, v27);
      v30 = v29;

      (*(v20 + 64))(v30, v28, v20);
    }

    sub_1D168E910(v17, v18, v19);
  }

  v31 = *v10;
  if (*v10 != 1)
  {
    v32 = *(v10 + 1);
    v33 = *(v10 + 2);
    v34 = *(v10 + 3);
    sub_1D16C2014(*v10, v32, v33);
    v35 = v33;
    if (v33)
    {
      v36 = v35;
      v37 = [v1 subtitle];
      if (v37)
      {
        v38 = v37;
        v39 = sub_1D16CC4A4();
        v41 = v40;
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      v42 = swift_getObjectType();
      sub_1D16B55B0(v39, v41);
      v44 = v43;

      (*(v34 + 64))(v44, v42, v34);
    }

    sub_1D168E910(v31, v32, v33);
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1D16B49A8(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR___CCUIControlTemplateView_title + 8];
  if (a2)
  {
    if (v4)
    {
      if (*&v2[OBJC_IVAR___CCUIControlTemplateView_title] == result && v4 == a2)
      {
        return result;
      }

      result = sub_1D16CC6F4();
      if (result)
      {
        return result;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  sub_1D16B5288(&selRef_title, sub_1D16BD504, sub_1D16BD44C);
  v6 = &v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v7 = *&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v7 != 1)
  {
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    sub_1D16C2014(*&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v8, v9);
    v10 = v7;
    if (v7)
    {
      v11 = v10;
      v12 = [v3 title];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1D16CC4A4();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      ObjectType = swift_getObjectType();
      (*(v8 + 40))(v14, v16, ObjectType, v8);
    }

    sub_1D168E910(v7, v8, v9);
  }

  v18 = &v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  v19 = *&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v19 != 1)
  {
    v20 = *(v18 + 1);
    v21 = *(v18 + 2);
    sub_1D16C2014(*&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v20, v21);
    v22 = v19;
    if (v19)
    {
      v23 = v22;
      v24 = [v3 title];
      if (v24)
      {
        v25 = v24;
        v41 = v21;
        v26 = sub_1D16CC4A4();
        v28 = v27;

        v29 = v26;
        v21 = v41;
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      v30 = swift_getObjectType();
      (*(v20 + 40))(v29, v28, v30, v20);
    }

    sub_1D168E910(v19, v20, v21);
  }

  if ([v3 isResizing] && (objc_msgSend(v3, sel_suppressesLabelTransitions) & 1) == 0)
  {
    v31 = *v6;
    if (*v6 != 1)
    {
      v32 = *(v6 + 1);
      v33 = *(v6 + 2);
      sub_1D16C2014(*v6, v32, v33);
      v34 = v31;
      if (v31)
      {
        v35 = v34;
        sub_1D16BE8C8(1, v34);
      }

      sub_1D168E910(v31, v32, v33);
    }

    v36 = *v18;
    if (*v18 != 1)
    {
      v37 = *(v18 + 1);
      v38 = *(v18 + 2);
      sub_1D16C2014(*v18, v37, v38);
      v39 = v36;
      if (v36)
      {
        v40 = v39;
        sub_1D16BE8C8(0, v39);
      }

      sub_1D168E910(v36, v37, v38);
    }
  }

  [v3 setIsLimitingTitleToSingleLineForAccessibility_];

  return [v3 setNeedsLayout];
}

uint64_t sub_1D16B4D50(char *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    v8 = sub_1D16CC4A4();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v8;
  v10[1] = v9;
  v13 = a1;
  a5(v11, v12);
}

uint64_t sub_1D16B4DD8(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR___CCUIControlTemplateView_subtitle + 8];
  if (a2)
  {
    if (v4)
    {
      if (*&v2[OBJC_IVAR___CCUIControlTemplateView_subtitle] == result && v4 == a2)
      {
        return result;
      }

      result = sub_1D16CC6F4();
      if (result)
      {
        return result;
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  sub_1D16B5288(&selRef_subtitle, sub_1D16BD740, sub_1D16BD698);
  v6 = &v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v7 = *&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v7 != 1)
  {
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);
    sub_1D16C2014(*&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v8, v9);
    v11 = v9;
    if (v9)
    {
      v12 = v11;
      v13 = [v2 subtitle];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1D16CC4A4();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      ObjectType = swift_getObjectType();
      sub_1D16B55B0(v15, v17);
      v20 = v19;

      (*(v10 + 64))(v20, ObjectType, v10);
    }

    sub_1D168E910(v7, v8, v9);
  }

  v21 = &v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  v22 = *&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v22 != 1)
  {
    v23 = *(v21 + 1);
    v24 = *(v21 + 2);
    v25 = *(v21 + 3);
    sub_1D16C2014(*&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v23, v24);
    v26 = v24;
    if (v24)
    {
      v27 = v26;
      v59 = v23;
      v28 = [v3 subtitle];
      if (v28)
      {
        v29 = v28;
        v30 = sub_1D16CC4A4();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v33 = swift_getObjectType();
      sub_1D16B55B0(v30, v32);
      v35 = v34;

      (*(v25 + 64))(v35, v33, v25);

      v23 = v59;
    }

    sub_1D168E910(v22, v23, v24);
  }

  if ([v3 isResizing] && (objc_msgSend(v3, sel_suppressesLabelTransitions) & 1) == 0)
  {
    v36 = *v6;
    if (*v6 != 1)
    {
      v37 = *(v6 + 1);
      v38 = *(v6 + 2);
      sub_1D16C2014(*v6, v37, v38);
      v39 = v38;
      if (v38)
      {
        v40 = v39;
        sub_1D16BE8C8(1, v39);
      }

      sub_1D168E910(v36, v37, v38);
    }

    v41 = *v21;
    if (*v21 != 1)
    {
      v42 = *(v21 + 1);
      v43 = *(v21 + 2);
      sub_1D16C2014(*v21, v42, v43);
      v44 = v43;
      if (v43)
      {
        v45 = v44;
        sub_1D16BE8C8(0, v44);
      }

      sub_1D168E910(v41, v42, v43);
    }
  }

  [v3 setIsLimitingTitleToSingleLineForAccessibility_];
  v46 = sub_1D16BE21C();
  v47 = *v6;
  if (*v6 != 1)
  {
    v48 = *(v6 + 1);
    v49 = *(v6 + 2);
    sub_1D16C2014(v47, v48, v49);
    v50 = v47;
    if (v47)
    {
      v51 = v50;
      v52 = swift_getObjectType();
      (*(v48 + 88))(v46, v52, v48);
    }

    sub_1D168E910(v47, v48, v49);
  }

  v53 = *v21;
  if (*v21 != 1)
  {
    v54 = *(v21 + 1);
    v55 = *(v21 + 2);
    sub_1D16C2014(*v21, v54, v55);
    v56 = v53;
    if (v53)
    {
      v57 = v56;
      v58 = swift_getObjectType();
      (*(v54 + 88))(v46, v58, v54);
    }

    sub_1D168E910(v53, v54, v55);
  }

  [v3 setNeedsLayout];

  return [v3 setNeedsLayout];
}

uint64_t sub_1D16B5288(SEL *a1, void (*a2)(uint64_t *, uint64_t), void (*a3)(uint64_t *))
{
  v7 = v3;
  v8 = sub_1D16CC1F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v3 *a1];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v14 = sub_1D16CC4A4();
  v16 = v15;

  v30[0] = v14;
  v30[1] = v16;
  sub_1D16CC1E4();
  sub_1D16C2810();
  v17 = sub_1D16CC5C4();
  v19 = v18;
  (*(v9 + 8))(v11, v8);

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
LABEL_7:
    a3(&OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels);
    return (a3)(&OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels);
  }

  if ([v7 isResizing])
  {
    goto LABEL_6;
  }

  v22 = [v7 gridSizeClass];
  v23 = CCUINumberOfRowsForGridSizeClass(v22);
  v24 = CCUINumberOfColumnsForGridSizeClass(v22);
  if (v23 >= 2)
  {
    v25 = v24;
    if (([v7 supportsAccessibilityContentSizeCategories] & 1) == 0)
    {
      goto LABEL_15;
    }

    v26 = [v7 traitCollection];
    v27 = [v26 preferredContentSizeCategory];

    LOBYTE(v26) = sub_1D16CC544();
    if ((v26 & 1) == 0 || v25 < 2)
    {
      goto LABEL_15;
    }
  }

  else if (v24 <= 1)
  {
LABEL_15:
    a3(&OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels);
    goto LABEL_16;
  }

LABEL_6:
  a2(&OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels, 1);
LABEL_16:
  if (([v7 isResizing] & 1) == 0)
  {
    if ([v7 supportsAccessibilityContentSizeCategories])
    {
      v28 = [v7 traitCollection];
      v29 = [v28 preferredContentSizeCategory];

      LOBYTE(v28) = sub_1D16CC544();
      if (v28)
      {
        return (a3)(&OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels);
      }
    }

    if (CCUINumberOfRowsForGridSizeClass([v7 gridSizeClass]) < 2)
    {
      return (a3)(&OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels);
    }
  }

  return (a2)(&OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels, 0);
}

void sub_1D16B55B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v4 = sub_1D16CC494();
    v5 = [v3 initWithString_];

    if ([v2 showsMenuAffordance])
    {
      if ([v2 menuAffordancePosition] == 1)
      {
        v6 = [objc_opt_self() configurationWithScale_];
        v7 = sub_1D16CC494();
        v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

        if (v8)
        {

          v9 = [objc_opt_self() textAttachmentWithImage_];
          v10 = [objc_opt_self() attributedStringWithAttachment_];

          v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v12 = sub_1D16CC494();
          v13 = [v11 initWithString_];

          [v5 appendAttributedString_];
          [v5 appendAttributedString_];
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

id sub_1D16B58C4(id result)
{
  v2 = v1[OBJC_IVAR___CCUIControlTemplateView__isResizing];
  v1[OBJC_IVAR___CCUIControlTemplateView__isResizing] = result;
  if (v2 != (result & 1))
  {
    v3 = sub_1D16BC804();
    v4 = [v3 count];

    v5 = [v1 isResizing];
    if (v4 > 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    [v1 setClipsToBounds_];
    sub_1D16B5288(&selRef_title, sub_1D16BD504, sub_1D16BD44C);
    sub_1D16B5288(&selRef_subtitle, sub_1D16BD740, sub_1D16BD698);
    if ([v1 isResizing])
    {
      _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
    }

    sub_1D16B5A08();
    [v1 setIsLimitingTitleToSingleLineForAccessibility_];

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_1D16B5A08()
{
  v1 = v0;
  if ([v0 isResizing] && objc_msgSend(v0, sel_gridSizeClass) && ((v2 = objc_msgSend(v0, sel_traitCollection), sub_1D16B3D94(), sub_1D16CC534(), v2, v26 == 2) || (v26 & 1) == 0))
  {
    v13 = OBJC_IVAR___CCUIControlTemplateView_blurPocket;
    if (!*&v1[OBJC_IVAR___CCUIControlTemplateView_blurPocket])
    {
      v14 = [v1 traitCollection];
      sub_1D16CC534();

      if (v26 == 2)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = *&v24;
      }

      _s10BlurPocketCMa();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v16 + 56) = 0u;
      *(v16 + 40) = 0u;
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      sub_1D16BEC60(v1);
      *&v1[v13] = v16;
    }

    v17 = [v1 traitCollection];
    sub_1D16CC534();

    if (v26 == 2)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v25;
    }

    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    v27 = sub_1D16C28B0;
    v28 = v20;
    v23 = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = COERCE_DOUBLE(sub_1D16B76AC);
    v26 = &block_descriptor_64;
    v21 = _Block_copy(&v23);
    v22 = v1;

    [v19 animateWithDuration:v21 animations:v18];
    _Block_release(v21);
  }

  else
  {
    v3 = *&v1[OBJC_IVAR___CCUIControlTemplateView_blurPocket];
    if (v3)
    {

      v4 = [v1 blurPocketRemovalAnimationGeneration];
      v5 = v4 + 1;
      if (v4 == -1)
      {
        __break(1u);
      }

      else
      {
        [v1 setBlurPocketRemovalAnimationGeneration_];
        v6 = [v1 traitCollection];
        sub_1D16B3D94();
        sub_1D16CC534();

        if (v26 == 2)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = v25;
        }

        v8 = objc_opt_self();
        v27 = sub_1D16C2864;
        v28 = v3;
        v23 = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = COERCE_DOUBLE(sub_1D16B76AC);
        v26 = &block_descriptor_0;
        v9 = _Block_copy(&v23);

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v5;
        v27 = sub_1D16C28A8;
        v28 = v11;
        v23 = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = COERCE_DOUBLE(sub_1D16C2E3C);
        v26 = &block_descriptor_58;
        v12 = _Block_copy(&v23);

        [v8 animateWithDuration:v9 animations:v12 completion:v7];
        _Block_release(v12);
        _Block_release(v9);
      }
    }
  }
}

uint64_t sub_1D16B5F78(uint64_t result)
{
  v2 = OBJC_IVAR___CCUIControlTemplateView__isPresentingContextMenu;
  v3 = v1[OBJC_IVAR___CCUIControlTemplateView__isPresentingContextMenu];
  v1[OBJC_IVAR___CCUIControlTemplateView__isPresentingContextMenu] = result;
  if (v3 != (result & 1))
  {
    result = [v1 contextMenuDelegate];
    if (result)
    {
      v4 = result;
      if (v1[v2])
      {
        v5 = &selRef_didBeginContextMenuPresentationForControlTemplateView_;
      }

      else
      {
        v5 = &selRef_didEndContextMenuPresentationForControlTemplateView_;
      }

      if ([result respondsToSelector_])
      {
        [v4 *v5];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1D16B60A4(id result)
{
  v2 = *&v1[OBJC_IVAR___CCUIControlTemplateView_gridSizeClass];
  *&v1[OBJC_IVAR___CCUIControlTemplateView_gridSizeClass] = result;
  if (v2 != result)
  {
    sub_1D16B5288(&selRef_title, sub_1D16BD504, sub_1D16BD44C);
    sub_1D16B5288(&selRef_subtitle, sub_1D16BD740, sub_1D16BD698);
    if ([v1 isResizing])
    {
      _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
    }

    sub_1D16B5A08();
    [v1 setIsLimitingTitleToSingleLineForAccessibility_];

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_1D16B6268()
{
  v1 = [v0 layer];
  [v0 continuousCornerRadius];
  [v1 setCornerRadius_];

  [v0 continuousCornerRadius];
  [v0 _setContinuousCornerRadius_];
  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 continuousCornerRadius];
    [v3 _setContinuousCornerRadius_];
  }
}

id sub_1D16B63B4(id result)
{
  v2 = v1[OBJC_IVAR___CCUIControlTemplateView_supportsAccessibilityContentSizeCategories];
  v1[OBJC_IVAR___CCUIControlTemplateView_supportsAccessibilityContentSizeCategories] = result;
  if (v2 != (result & 1))
  {
    [v1 setIsLimitingTitleToSingleLineForAccessibility_];
    v3 = &v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v4 = *&v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    if (v4 != 1)
    {
      v5 = *(v3 + 1);
      v6 = *(v3 + 2);
      sub_1D16C2014(*&v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v5, v6);
      v7 = v4;
      if (v4)
      {
        v8 = v7;
        ObjectType = swift_getObjectType();
        v10 = sub_1D16BE38C(1, 1);
        (*(v5 + 16))(v10, ObjectType, v5);
        sub_1D16BE568(v8, v5);
      }

      sub_1D168E910(v4, v5, v6);
    }

    v11 = &v1[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    v12 = *&v1[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    if (v12 != 1)
    {
      v13 = *(v11 + 1);
      v14 = *(v11 + 2);
      sub_1D16C2014(*&v1[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v13, v14);
      v15 = v12;
      if (v12)
      {
        v16 = v15;
        v17 = swift_getObjectType();
        v18 = sub_1D16BE38C(1, 0);
        (*(v13 + 16))(v18, v17, v13);
        sub_1D16BE568(v16, v13);
      }

      sub_1D168E910(v12, v13, v14);
    }

    v19 = *v3;
    if (*v3 != 1)
    {
      v20 = *(v3 + 1);
      v21 = *(v3 + 2);
      v22 = *(v3 + 3);
      sub_1D16C2014(*v3, v20, v21);
      v23 = v21;
      if (v21)
      {
        v24 = v23;
        v25 = swift_getObjectType();
        v26 = sub_1D16BE38C(0, 1);
        (*(v22 + 16))(v26, v25, v22);
        sub_1D16BE568(v24, v22);
      }

      sub_1D168E910(v19, v20, v21);
    }

    v27 = *v11;
    if (*v11 != 1)
    {
      v28 = *(v11 + 1);
      v29 = *(v11 + 2);
      v30 = *(v11 + 3);
      sub_1D16C2014(*v11, v28, v29);
      v31 = v29;
      if (v29)
      {
        v32 = v31;
        v33 = swift_getObjectType();
        v34 = sub_1D16BE38C(0, 0);
        (*(v30 + 16))(v34, v33, v30);
        sub_1D16BE568(v32, v30);
      }

      sub_1D168E910(v27, v28, v29);
    }

    [v1 setNeedsLayout];

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_1D16B66D0(void *a1, char a2)
{
  v3 = v2;
  v5 = [v3 title];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D16CC4A4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 title];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D16CC4A4();
    v14 = v13;

    if (v9)
    {
      if (v14)
      {
        if (v7 == v12 && v9 == v14)
        {

          v16 = 1;
        }

        else
        {
          v16 = sub_1D16CC6F4();
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_18;
    }

LABEL_16:
    v16 = 1;
    goto LABEL_19;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_13:
  v16 = 0;
LABEL_18:

LABEL_19:
  v17 = [v3 subtitle];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1D16CC4A4();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [a1 subtitle];
  if (!v22)
  {
    if (v21)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v23 = v22;
  v24 = sub_1D16CC4A4();
  v26 = v25;

  if (!v21)
  {
    if (v26)
    {
      goto LABEL_31;
    }

LABEL_32:
    v27 = 0;
    goto LABEL_34;
  }

  if (v26)
  {
    if (v19 != v24 || v21 != v26)
    {
      v28 = sub_1D16CC6F4();

      v27 = v28 ^ 1;
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_31:

  v27 = 1;
LABEL_34:
  v29 = [v3 isEnabled];
  v30 = [a1 isEnabled];
  v31 = [v3 isRedacted];
  v32 = [a1 isRedacted];
  v33 = [v3 isSelected];
  v34 = [a1 isSelected];
  if (((v16 ^ 1 | v27) & 1) == 0 && ((v29 ^ v30) & 1) == 0 && ((v31 ^ v32) & 1) == 0 && ((v33 ^ v34) & 1) == 0)
  {
    return;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v3;
  *(v35 + 24) = a1;
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v41 = v3;
    goto LABEL_45;
  }

  v36 = objc_opt_self();
  swift_unknownObjectRetain();
  v37 = v3;
  if (([v36 areAnimationsEnabled] & 1) == 0)
  {
LABEL_45:
    v42 = objc_opt_self();
    v43 = swift_allocObject();
    v43[2] = v3;
    v43[3] = a1;
    v43[4] = sub_1D16C29DC;
    v43[5] = v35;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1D16C29E4;
    *(v44 + 24) = v43;
    v173 = sub_1D16C2DA8;
    v174 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v170 = 1107296256;
    v171 = sub_1D16C3318;
    v172 = &block_descriptor_131;
    v45 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v46 = v3;

    [v42 performWithoutAnimation_];

    _Block_release(v45);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_97;
  }

  if ((v16 ^ 1 | v27))
  {
    v38 = [v37 gridSizeClass];
    v39 = CCUINumberOfRowsForGridSizeClass(v38);
    v40 = CCUINumberOfColumnsForGridSizeClass(v38);
    if (v39 >= 2)
    {
      v48 = v40;
      if (([v37 supportsAccessibilityContentSizeCategories] & 1) == 0 || (v49 = objc_msgSend(v37, sel_traitCollection), v50 = objc_msgSend(v49, sel_preferredContentSizeCategory), v49, LOBYTE(v49) = sub_1D16CC544(), v50, (v49 & 1) == 0) || v48 < 2)
      {
LABEL_56:
        v58 = &v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
        v53 = *&v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
        v59 = *&v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 8];
        v60 = *&v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 16];
        v166 = *&v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 24];
        v168 = v60;
        v162 = v59;
        if (v16)
        {
          v55 = &selRef_ccui_systemImageName;
          if (v53 == 1)
          {
            v61 = 0;
            v62 = 0;
            goto LABEL_63;
          }

          v61 = *&v37[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 8];
          sub_1D16C2014(v53, v59, v60);
          v63 = v53;
          v62 = v53;
        }

        else
        {
          sub_1D16C2014(v53, v59, v60);
          v62 = 0;
          v61 = 0;
          v55 = &selRef_ccui_systemImageName;
        }

        if (!(v27 & 1 | (v53 == 1)))
        {
          v66 = v168;
          v64 = v168;
          v65 = v166;
          goto LABEL_65;
        }

LABEL_63:
        v64 = 0;
        v65 = 0;
LABEL_65:
        v67 = *v58;
        v68 = *(v58 + 1);
        v69 = *(v58 + 2);
        *v58 = v62;
        *(v58 + 1) = v61;
        *(v58 + 2) = v64;
        *(v58 + 3) = v65;
        sub_1D168E910(v67, v68, v69);
        v70 = &OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels;
        goto LABEL_71;
      }
    }

    else if (v40 <= 1)
    {
      goto LABEL_56;
    }

    v51 = &v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v53 = *&v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v52 = *&v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels + 8];
    v54 = *&v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels + 16];
    v166 = *&v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels + 24];
    v168 = v54;
    v162 = v52;
    if (v16)
    {
      v55 = &selRef_ccui_systemImageName;
      if (v53 == 1)
      {
        v56 = 0;
        v57 = 0;
        goto LABEL_68;
      }

      v56 = *&v37[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels + 8];
      sub_1D16C2014(v53, v52, v54);
      v71 = v53;
      v57 = v53;
    }

    else
    {
      sub_1D16C2014(v53, v52, v54);
      v57 = 0;
      v56 = 0;
      v55 = &selRef_ccui_systemImageName;
    }

    if (!(v27 & 1 | (v53 == 1)))
    {
      v74 = v168;
      v72 = v168;
      v73 = v166;
      goto LABEL_70;
    }

LABEL_68:
    v72 = 0;
    v73 = 0;
LABEL_70:
    v75 = *v51;
    v76 = *(v51 + 1);
    v77 = *(v51 + 2);
    *v51 = v57;
    *(v51 + 1) = v56;
    *(v51 + 2) = v72;
    *(v51 + 3) = v73;
    sub_1D168E910(v75, v76, v77);
    v70 = &OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels;
LABEL_71:
    [v37 setEnabled_];
    [v37 setRedacted_];
    [v37 setSelected_];
    v78 = [a1 title];
    [v37 setTitle_];

    v79 = [a1 subtitle];
    [v37 setSubtitle_];

    v80 = &v37[*v70];
    v82 = *(v80 + 2);
    v81 = *(v80 + 3);
    v83 = *v80;
    v84 = *(v80 + 1);
    sub_1D16C2014(*v80, v84, v82);
    if (v53 != 1)
    {
      v85 = v53;
      if (v53)
      {
        goto LABEL_80;
      }

      if (v168)
      {
        goto LABEL_81;
      }
    }

    if (v83 == 1)
    {
LABEL_73:

      sub_1D168E910(v53, v162, v168);

      sub_1D168E910(v83, v84, v82);
      return;
    }

    v85 = v83;
    if (!v83)
    {
      if (!v82)
      {
        goto LABEL_73;
      }

LABEL_81:
      v158 = v37;
      v161 = sub_1D16BC2AC(v53, v162, v168, v166, v83, v84, v82);
      v86 = v53;
      v88 = v87;
      v90 = v89;
      v91 = v84;
      v93 = v92;
      v163 = v91;
      v164 = v83;
      v165 = v82;
      v157 = v81;
      v94 = sub_1D16BC2AC(v83, v91, v82, v81, v86, v162, v168);
      v96 = v95;
      v98 = v97;
      v100 = v99;
      v101 = swift_allocObject();
      v101[2] = v161;
      v101[3] = v88;
      v148 = v93;
      v149 = v88;
      v102 = v86;
      v101[4] = v90;
      v101[5] = v93;
      v156 = v101;
      v103 = swift_allocObject();
      v103[2] = v94;
      v103[3] = v96;
      v103[4] = v98;
      v103[5] = v100;
      v154 = v90;
      v155 = v94;
      v151 = v98;
      v152 = v102;
      if (v102 == 1)
      {
        v104 = v163;
        v105 = v98;
        v106 = v161;
        v107 = v90;
        v108 = v94;
        v109 = 0;
        v110 = 1;
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v117 = 1;
        v118 = 0;
        v119 = v164;
        v120 = v158;
      }

      else
      {
        v104 = v163;
        v117 = v102 == 0;
        v121 = v98;
        v122 = v161;
        v123 = v154;
        v124 = v94;
        if (v102)
        {
          [v102 frame];
          v114 = v125;
          v115 = v126;
          v116 = v127;
          v118 = v128;
        }

        else
        {
          v114 = 0;
          v115 = 0;
          v116 = 0;
          v118 = 0;
        }

        v119 = v164;
        v120 = v158;
        if (v168)
        {
          [v168 frame];
          v109 = v129;
          v111 = v130;
          v112 = v131;
          v113 = v132;
          v110 = 0;
        }

        else
        {
          v110 = 1;
          v109 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
        }
      }

      v147 = v117;
      v133 = swift_allocObject();
      *(v133 + 16) = v120;
      *(v133 + 24) = v114;
      *(v133 + 32) = v115;
      *(v133 + 40) = v116;
      *(v133 + 48) = v118;
      *(v133 + 56) = v117;
      *(v133 + 64) = v109;
      *(v133 + 72) = v111;
      *(v133 + 80) = v112;
      *(v133 + 88) = v113;
      *(v133 + 96) = v110;
      *(v133 + 104) = v119;
      *(v133 + 112) = v104;
      *(v133 + 120) = v165;
      *(v133 + 128) = v157;
      *(v133 + 136) = 0x3F847AE147AE147BLL;
      *(v133 + 144) = sub_1D16C29F0;
      *(v133 + 152) = v156;
      *(v133 + 160) = sub_1D16C2D94;
      *(v133 + 168) = v103;
      v134 = swift_allocObject();
      *(v134 + 16) = sub_1D16C2A10;
      *(v134 + 24) = v133;
      v173 = sub_1D16C2DA8;
      v174 = v134;
      aBlock = MEMORY[0x1E69E9820];
      v170 = 1107296256;
      v171 = sub_1D16C3318;
      v172 = &block_descriptor_147;
      v135 = _Block_copy(&aBlock);
      v159 = v158;
      sub_1D16C2014(v119, v104, v165);

      [v36 performWithoutAnimation_];
      _Block_release(v135);
      LOBYTE(v135) = swift_isEscapingClosureAtFileLocation();

      if ((v135 & 1) == 0)
      {
        v136 = sub_1D16BC804();
        v137 = [v136 count];

        v138 = [v159 isResizing];
        if (v137 > 0)
        {
          v139 = 1;
        }

        else
        {
          v139 = v138;
        }

        [v159 setClipsToBounds_];
        v153 = [objc_allocWithZone(MEMORY[0x1E69D3FC8]) init];
        [v153 setBehaviorType_];
        [v153 setDampingRatio_];
        [v153 setResponse_];
        v140 = swift_allocObject();
        *(v140 + 16) = v159;
        *(v140 + 24) = sub_1D16C29F0;
        v146 = v103;
        *(v140 + 32) = v156;
        *(v140 + 40) = sub_1D16C2D94;
        *(v140 + 48) = v103;
        *(v140 + 56) = v114;
        *(v140 + 64) = v115;
        *(v140 + 72) = v116;
        *(v140 + 80) = v118;
        *(v140 + 88) = v147;
        *(v140 + 96) = v109;
        *(v140 + 104) = v111;
        *(v140 + 112) = v112;
        *(v140 + 120) = v113;
        *(v140 + 128) = v110;
        *(v140 + 136) = 0x3F847AE147AE147BLL;
        *(v140 + 144) = v161;
        *(v140 + 152) = v149;
        *(v140 + 160) = v154;
        *(v140 + 168) = v148;
        *(v140 + 176) = v164;
        *(v140 + 184) = v163;
        *(v140 + 192) = v165;
        *(v140 + 200) = v157;
        v173 = sub_1D16C2A78;
        v174 = v140;
        aBlock = MEMORY[0x1E69E9820];
        v170 = 1107296256;
        v171 = sub_1D16B76AC;
        v172 = &block_descriptor_153;
        v150 = _Block_copy(&aBlock);
        v141 = v159;
        sub_1D16C2014(v164, v163, v165);
        v160 = v154;

        v142 = v161;

        v143 = swift_allocObject();
        v143[2] = sub_1D16C29F0;
        v143[3] = v156;
        v143[4] = v141;
        v143[5] = sub_1D16C2D94;
        v143[6] = v146;
        v173 = sub_1D16C2AE8;
        v174 = v143;
        aBlock = MEMORY[0x1E69E9820];
        v170 = 1107296256;
        v171 = sub_1D16BCFC0;
        v172 = &block_descriptor_159;
        v144 = _Block_copy(&aBlock);
        v145 = v141;

        [v36 sb:v153 animateWithSettings:3 mode:v150 animations:v144 completion:?];

        sub_1D168E910(v164, v163, v165);

        _Block_release(v144);
        _Block_release(v150);

        sub_1D168E910(v152, v162, v168);

        return;
      }

LABEL_97:
      __break(1u);
      return;
    }

LABEL_80:

    goto LABEL_81;
  }

  [v37 setEnabled_];
  [v37 setRedacted_];
  [v37 setSelected_];
}

uint64_t sub_1D16B76AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D16B7770()
{
  v1 = [v0 contextMenuDelegate];
  if (v1)
  {
    v8 = [v1 contextMenu];
    swift_unknownObjectRelease();
    if (v8)
    {
      v2 = [v0 contextMenuInteraction];
      if (v2)
      {
        v3 = v2;
        v4 = swift_allocObject();
        *(v4 + 16) = v8;
        v5 = swift_allocObject();
        *(v5 + 16) = sub_1D16C2934;
        *(v5 + 24) = v4;
        aBlock[4] = sub_1D16C293C;
        aBlock[5] = v5;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D16B7968;
        aBlock[3] = &block_descriptor_112;
        v6 = _Block_copy(aBlock);
        v7 = v8;

        [v3 updateVisibleMenuWithBlock_];

        _Block_release(v6);
        LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

        if (v3)
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }
}

id sub_1D16B7968(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

id CCUIControlTemplateView.contentMetrics.getter()
{
  v2.super_class = CCUIControlTemplateView;
  v0 = objc_msgSendSuper2(&v2, sel_contentMetrics);

  return v0;
}

void CCUIControlTemplateView.contentMetrics.setter(void *a1)
{
  v5.super_class = CCUIControlTemplateView;
  v3 = objc_msgSendSuper2(&v5, sel_contentMetrics);
  v4.receiver = v1;
  v4.super_class = CCUIControlTemplateView;
  objc_msgSendSuper2(&v4, sel_setContentMetrics_, a1);
  sub_1D16B7BCC(v3);
}

void sub_1D16B7BCC(void *a1)
{
  v2 = v1;
  v4 = [v2 contentMetrics];
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      type metadata accessor for CCUIModuleContentMetrics();
      v6 = a1;
      v7 = sub_1D16CC5A4();

      if (v7)
      {
        return;
      }
    }
  }

  else
  {
    if (!v4)
    {
      return;
    }
  }

  v8 = &v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v9 = *&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v9 != 1)
  {
    v10 = *(v8 + 1);
    v11 = *(v8 + 2);
    sub_1D16C2014(*&v2[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v10, v11);
    v12 = v9;
    if (v9)
    {
      v13 = v12;
      ObjectType = swift_getObjectType();
      v15 = sub_1D16BE38C(1, 1);
      (*(v10 + 16))(v15, ObjectType, v10);
      sub_1D16BE568(v13, v10);
    }

    sub_1D168E910(v9, v10, v11);
  }

  v16 = &v2[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  v17 = *&v2[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v17 != 1)
  {
    v18 = *(v16 + 1);
    v19 = *(v16 + 2);
    sub_1D16C2014(*&v2[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v18, v19);
    v20 = v17;
    if (v17)
    {
      v21 = v20;
      v22 = swift_getObjectType();
      v23 = sub_1D16BE38C(1, 0);
      (*(v18 + 16))(v23, v22, v18);
      sub_1D16BE568(v21, v18);
    }

    sub_1D168E910(v17, v18, v19);
  }

  v24 = *v8;
  if (*v8 != 1)
  {
    v25 = *(v8 + 1);
    v26 = *(v8 + 2);
    v27 = *(v8 + 3);
    sub_1D16C2014(*v8, v25, v26);
    v28 = v26;
    if (v26)
    {
      v29 = v28;
      v30 = swift_getObjectType();
      v31 = sub_1D16BE38C(0, 1);
      (*(v27 + 16))(v31, v30, v27);
      sub_1D16BE568(v29, v27);
    }

    sub_1D168E910(v24, v25, v26);
  }

  v32 = *v16;
  if (*v16 != 1)
  {
    v33 = *(v16 + 1);
    v34 = *(v16 + 2);
    v35 = *(v16 + 3);
    sub_1D16C2014(*v16, v33, v34);
    v36 = v34;
    if (v34)
    {
      v37 = v36;
      v38 = swift_getObjectType();
      v39 = sub_1D16BE38C(0, 0);
      (*(v35 + 16))(v39, v38, v35);
      sub_1D16BE568(v37, v35);
    }

    sub_1D168E910(v32, v33, v34);
  }

  [v2 setNeedsLayout];

  [v2 setNeedsLayout];
}

__C::CGRect __swiftcall CCUIControlTemplateView.glyphContentFrame()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 _shouldReverseLayoutDirection];
  v10 = [v0 contentMetrics];
  if (v10)
  {
    v11 = v10;
    [v10 metricsScaleFactor];
    v12 = [v0 traitCollection];
    [v12 displayScale];

    UIRoundToScale();
    v14 = v13;
  }

  else
  {
    v14 = 14.0;
  }

  v15 = [v0 contentMetrics];
  if (v15)
  {
    v16 = v15;
    [v15 gridGeometryInfo];
    v18 = v17;
  }

  else
  {
    v18 = CCUIPortraitMainListGridGeometryInfo();
  }

  v131.origin.x = v2;
  v131.origin.y = v4;
  v131.size.width = v6;
  v131.size.height = v8;
  Height = CGRectGetHeight(v131);
  if (v18 >= Height)
  {
    v18 = Height;
  }

  v20 = 0.0;
  if (v9)
  {
    v132.origin.x = v2;
    v132.origin.y = v4;
    v132.size.width = v6;
    v132.size.height = v8;
    v20 = CGRectGetMaxX(v132) - v18;
  }

  v21 = 0;
  v22 = v18;
  v23 = v18;
  v133 = CGRectInset(*&v20, v14, v14);
  x = v133.origin.x;
  v25 = v4;
  y = v133.origin.y;
  width = v133.size.width;
  v28 = v133.size.height;
  v133.origin.x = v2;
  rect = v25;
  v133.origin.y = v25;
  v133.size.width = v6;
  v133.size.height = v8;
  v159 = CGRectInset(v133, v14, v14);
  v134.origin.x = x;
  v134.origin.y = y;
  v134.size.width = width;
  v134.size.height = v28;
  v135 = CGRectIntersection(v134, v159);
  v29 = v135.origin.x;
  v30 = v135.origin.y;
  v31 = v135.size.width;
  v32 = v135.size.height;
  if (v9)
  {
    MaxX = CGRectGetMaxX(v135);
    v136.origin.x = v29;
    v136.origin.y = v30;
    v136.size.width = v31;
    v136.size.height = v32;
    v29 = MaxX - CGRectGetWidth(v136);
  }

  v34 = [v0 traitCollection];
  [v34 displayScale];
  v36 = v35;

  if ([v0 isExpanded])
  {
    v111 = v36;
    if (CCUINumberOfColumnsForGridSizeClass([v0 gridSizeClass]) > 1)
    {
      UIRectCenteredYInRectScale();
    }

    else
    {
      UIRectCenteredIntegralRectScale();
    }

    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
  }

  if (![v0 supportsAccessibilityContentSizeCategories])
  {
    goto LABEL_49;
  }

  v41 = [v0 traitCollection];
  v42 = [v41 preferredContentSizeCategory];

  LOBYTE(v41) = sub_1D16CC544();
  if ((v41 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (CCUINumberOfRowsForGridSizeClass([v0 gridSizeClass]) < 2)
  {
    goto LABEL_49;
  }

  if ([v0 isResizing])
  {
    goto LABEL_49;
  }

  if ([v0 isExpanded])
  {
    goto LABEL_49;
  }

  v43 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v44 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v44 < 2)
  {
    goto LABEL_49;
  }

  v45 = *(v43 + 1);
  v126 = *(v43 + 2);
  sub_1D16C2014(*&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v45, v126);
  v116 = v44;
  v46 = [v0 _shouldReverseLayoutDirection];
  v47 = [v0 traitCollection];
  [v47 displayScale];
  v119 = v48;

  sub_1D16BD040();
  CCUIEdgeInsetsFromDirectionalEdgeInsets();
  v122 = v50;
  v124 = v51;
  v120 = v49;
  if (v46)
  {
    if ([v0 isResizing])
    {
      v52 = [v0 contentMetrics];
      if (v52)
      {
        v53 = v52;
        [v52 metricsScaleFactor];
        v54 = [v0 traitCollection];
        [v54 displayScale];

        UIRoundToScale();
        v56 = v55;

        v57 = v56 + v56;
      }

      else
      {
        v57 = 28.0;
      }

      v60 = v126;
      v140.origin.x = v2;
      v140.origin.y = rect;
      v140.size.width = v6;
      v140.size.height = v8;
      v113 = CGRectGetMaxX(v140) - v31 - v57 - v124;
      v59 = v2;
    }

    else
    {
      v139.origin.x = v29;
      v139.origin.y = v30;
      v139.size.width = v31;
      v139.size.height = v32;
      v113 = CGRectGetMinX(v139) - v124;
      v59 = v2;
      v60 = v126;
    }
  }

  else
  {
    v137.origin.x = v29;
    v58 = v49;
    v137.origin.y = v30;
    v137.size.width = v31;
    v137.size.height = v32;
    v59 = v58 + CGRectGetMaxX(v137);
    v138.origin.x = v2;
    v138.origin.y = rect;
    v138.size.width = v6;
    v138.size.height = v8;
    v113 = CGRectGetMaxX(v138);
    v60 = v126;
  }

  v141.origin.x = v59;
  v141.origin.y = rect;
  v141.size.width = v6;
  v141.size.height = v8;
  v114 = v113 - CGRectGetMinX(v141);
  v160.origin.x = UIEdgeInsetsInsetRect(v2, rect, v6, v8, v122, v120);
  v160.origin.y = v61;
  v160.size.width = v62;
  v160.size.height = v63;
  v142.origin.x = v59;
  v142.size.width = v114;
  v142.origin.y = rect;
  v142.size.height = v8;
  v143 = CGRectIntersection(v142, v160);
  v64 = v143.origin.x;
  v65 = v143.origin.y;
  v66 = v143.size.width;
  v67 = v143.size.height;
  v123 = v143.size.width;
  if (v60)
  {
    v68 = v60;
    [v68 sizeThatFits_];
    v115 = v69;
    rectb = v70;
    v144.origin.x = v64;
    v144.origin.y = v65;
    v144.size.width = v66;
    v144.size.height = v67;
    CGRectGetWidth(v144);
    v145.origin.x = v64;
    v145.origin.y = v65;
    v145.size.width = v66;
    v145.size.height = v67;
    v71 = v65;
    v72 = v67;
    v73 = CGRectGetHeight(v145);

    v60 = v126;
    v74 = rectb;
    if (v73 < rectb)
    {
      v74 = v73;
    }

    recta = v74;
    v67 = v72;
    v65 = v71;
    v66 = v123;
  }

  else
  {
    recta = 0.0;
    v115 = 0.0;
  }

  v75 = v116;
  v146.origin.x = v64;
  v146.origin.y = v65;
  v146.size.width = v66;
  v146.size.height = v67;
  v76 = CGRectGetWidth(v146);
  v77 = v64;
  v78 = v76;
  v121 = v77;
  v147.origin.x = v77;
  v147.size.width = v66;
  v79 = v65;
  v147.origin.y = v65;
  v125 = v67;
  v147.size.height = v67;
  v80 = CGRectGetHeight(v147) - recta;
  [v75 sizeThatFits_];
  if (v80 < v81)
  {
    if ([v0 supportsAccessibilityContentSizeCategories])
    {
      v82 = [v0 traitCollection];
      v83 = [v82 preferredContentSizeCategory];

      LOBYTE(v82) = sub_1D16CC544();
      v60 = v126;
      v81 = v80;
      if (v82)
      {
        v148.origin.x = v121;
        v148.origin.y = v65;
        v148.size.width = v123;
        v148.size.height = v125;
        v117 = CGRectGetWidth(v148) - v115;
        v149.origin.x = v121;
        v149.origin.y = v65;
        v149.size.width = v123;
        v149.size.height = v125;
        [v75 sizeThatFits_];
        v150.origin.x = v121;
        v150.origin.y = v65;
        v150.size.width = v123;
        v150.size.height = v125;
        CGRectGetHeight(v150);

        v151.origin.x = v121;
        v151.origin.y = v65;
        v151.size.width = v123;
        v151.size.height = v125;
        CGRectGetMinX(v151);
        v152.origin.x = v121;
        v152.origin.y = v65;
        v152.size.width = v123;
        v152.size.height = v125;
        CGRectGetMinY(v152);
        UIRectCenteredYInRectScale();
        if (v46)
        {
          v153.origin.x = v121;
          v153.origin.y = v65;
          v153.size.width = v123;
          v153.size.height = v125;
          CGRectGetMinX(v153);
        }

        else
        {
          CGRectGetMaxX(*&v84);
        }

        v157.origin.x = v121;
        v157.origin.y = v65;
        v157.size.width = v123;
        v157.size.height = v125;
        CGRectGetMinY(v157);
        v112 = v119;
        UIRectCenteredYInRectScale();
        goto LABEL_46;
      }
    }

    else
    {
      v81 = v80;
    }
  }

  v154.origin.x = v121;
  v88 = v81;
  v154.origin.y = v79;
  v154.size.width = v123;
  v154.size.height = v125;
  v118 = CGRectGetWidth(v154);

  v127 = v88;
  v112 = v119;
  UIRectCenteredYInRectScale();
  v92 = v91;
  if (v46)
  {
    v93 = v90;
    sub_1D16BD040();
    CCUIEdgeInsetsFromDirectionalEdgeInsets();
    v95 = v94;
    v155.origin.x = v29;
    v155.origin.y = v30;
    v155.size.width = v31;
    v155.size.height = v32;
    v89 = CGRectGetMinX(v155) - v95 - v93;
  }

  v96 = v89;
  v97 = v92;
  v98 = v118;
  v99 = v127;
  CGRectGetMinX(*&v89);
  v156.origin.x = v96;
  v156.origin.y = v92;
  v156.size.width = v118;
  v156.size.height = v127;
  CGRectGetMaxY(v156);
LABEL_46:

  ObjectType = swift_getObjectType();
  v101 = *(v45 + 8);
  v102 = v101(ObjectType, v45);
  if (!v102)
  {
    __break(1u);
    goto LABEL_53;
  }

  v107 = v102;
  [v102 ascender];

  v108 = v101(ObjectType, v45);
  if (!v108)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v109 = v108;
  [v108 capHeight];

  UIRoundToScale();
  v30 = v110;

LABEL_49:
  v103 = v29;
  v104 = v30;
  v105 = v31;
  v106 = v32;
LABEL_54:
  result.size.height = v106;
  result.size.width = v105;
  result.origin.y = v104;
  result.origin.x = v103;
  return result;
}

Swift::Void __swiftcall CCUIControlTemplateView.selectionDidChange()()
{
  v1 = [v0 visualStylingProviderForCategory_];
  if (v1)
  {
    v2 = v1;
    v3 = v1;
    sub_1D16B8A08(v3, 1, v2);
  }
}

void sub_1D16B8A08(void *a1, uint64_t a2, void *a3)
{
  if (a2 == 1)
  {
    v4 = v3;
    v6 = [v3 isSelected];
    v7 = v6;
    v8 = 0x80000001D16D3E90;
    if (v6)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v9 = 0;
    }

    if (!v6)
    {
      v8 = 0;
    }

    v132 = v8;
    v10 = [v3 isSelected];
    v11 = v10;
    v12 = 0x80000001D16D3E70;
    if (v10)
    {
      v13 = 0xD000000000000016;
    }

    else
    {
      v13 = 1;
    }

    v133 = v13;
    if (!v10)
    {
      v12 = 0;
    }

    v129 = v12;
    v14 = objc_opt_self();
    v15 = 0.0;
    v127 = [v14 _isInAnimationBlockWithAnimationsEnabled];
    if (v127)
    {
      [v14 _currentAnimationDuration];
      v15 = v16;
    }

    v17 = &v3[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v18 = *&v4[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    if (v18 == 1)
    {
LABEL_34:
      v53 = &v4[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
      v54 = *&v4[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
      if (v54 == 1)
      {
        goto LABEL_54;
      }

      v55 = *(v53 + 1);
      v131 = *(v53 + 2);
      sub_1D16C2014(*&v4[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v55, v131);
      v56 = v54;
      if (!v54)
      {
LABEL_53:
        sub_1D168E910(v54, v55, v131);
LABEL_54:
        sub_1D16C2904(v9, v132, v7);
        v83 = *v17;
        if (*v17 == 1)
        {
          goto LABEL_63;
        }

        v84 = v17;
        v85 = *(v17 + 1);
        v86 = *(v84 + 2);
        sub_1D16C2014(v83, v85, v86);
        v87 = v86;
        if (!v86)
        {
LABEL_62:
          sub_1D168E910(v83, v85, v86);
LABEL_63:
          v96 = *v53;
          if (*v53 != 1)
          {
            v97 = *(v53 + 1);
            v98 = *(v53 + 2);
            sub_1D16C2014(*v53, v97, v98);
            v99 = v98;
            if (v98)
            {
              v100 = v99;
              if (a3)
              {
                [a3 stopAutomaticallyUpdatingView_];
                if (v11)
                {
LABEL_67:
                  v101 = a1;
                  v102 = v100;
                  v103 = sub_1D16CC494();
                  v139 = sub_1D16BB9E8;
                  v140 = 0;
                  aBlock = MEMORY[0x1E69E9820];
                  v136 = 1107296256;
                  v137 = sub_1D16BBB64;
                  v138 = &block_descriptor_168;
                  v104 = _Block_copy(&aBlock);

                  [v101 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

                  _Block_release(v104);
                  sub_1D168E910(v96, v97, v98);
                  v105 = 0xD000000000000016;
                  v106 = 0x80000001D16D3E70;
                  v107 = 1;
LABEL_70:
                  sub_1D16C2904(v105, v106, v107);
                  return;
                }
              }

              else
              {
                v108 = v99;
                if (v11)
                {
                  goto LABEL_67;
                }
              }

              v139 = sub_1D16BB9E8;
              v140 = 0;
              aBlock = MEMORY[0x1E69E9820];
              v136 = 1107296256;
              v137 = sub_1D16BBB64;
              v138 = &block_descriptor_171;
              v109 = _Block_copy(&aBlock);
              v110 = a1;
              v111 = v100;

              [v110 automaticallyUpdateView:v111 withStyle:1 andObserverBlock:v109];

              _Block_release(v109);
              sub_1D168E910(v96, v97, v98);
              return;
            }

            sub_1D168E910(v96, v97, 0);
          }

          v105 = v133;
          v106 = v129;
          v107 = v11;
          goto LABEL_70;
        }

        v88 = v87;
        if (a3)
        {
          [a3 stopAutomaticallyUpdatingView_];
          v126 = a3;
          if (v11)
          {
LABEL_58:
            v89 = a1;
            v90 = v88;
            v91 = sub_1D16CC494();
            v139 = sub_1D16BB9E8;
            v140 = 0;
            aBlock = MEMORY[0x1E69E9820];
            v136 = 1107296256;
            v137 = sub_1D16BBB64;
            v138 = &block_descriptor_174;
            v92 = _Block_copy(&aBlock);

            [v89 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

            _Block_release(v92);
LABEL_61:

            a3 = v126;
            goto LABEL_62;
          }
        }

        else
        {
          v93 = v87;
          v126 = 0;
          if (v11)
          {
            goto LABEL_58;
          }
        }

        v139 = sub_1D16BB9E8;
        v140 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v136 = 1107296256;
        v137 = sub_1D16BBB64;
        v138 = &block_descriptor_177;
        v94 = _Block_copy(&aBlock);
        v95 = a1;
        v90 = v88;

        [v95 automaticallyUpdateView:v90 withStyle:1 andObserverBlock:v94];

        _Block_release(v94);
        v91 = v90;
        goto LABEL_61;
      }

      v120 = v17;
      v122 = v9;
      v116 = v56;
      if (v127)
      {
        v57 = v56;
        v58 = swift_allocObject();
        *(v58 + 16) = v4;
        *(v58 + 24) = v57;
        *(v58 + 32) = v55;
        *(v58 + 40) = v9;
        v118 = v14;
        *(v58 + 48) = v132;
        *(v58 + 56) = v7;
        *(v58 + 64) = a1;
        *(v58 + 72) = a3;
        *(v58 + 80) = v133;
        *(v58 + 88) = v129;
        *(v58 + 96) = v11;
        v139 = sub_1D16C2C44;
        v140 = v58;
        aBlock = MEMORY[0x1E69E9820];
        v136 = 1107296256;
        v137 = sub_1D16B76AC;
        v138 = &block_descriptor_195;
        v124 = _Block_copy(&aBlock);
        v59 = v4;
        sub_1D16C2C48(v9, v132, v7);
        v60 = a3;
        v61 = a1;
        sub_1D16C2C48(v133, v129, v11);
        v62 = v116;

        [v118 transitionWithView:v62 duration:5242880 options:v124 animations:0 completion:v15];
        _Block_release(v124);
        v17 = v120;
LABEL_52:

        v9 = v122;
        goto LABEL_53;
      }

      ObjectType = swift_getObjectType();
      v64 = (*(v55 + 176))(ObjectType, v55);
      v65 = v64;
      if (a3)
      {
        [a3 stopAutomaticallyUpdatingView_];
      }

      else
      {
        v66 = v64;
      }

      v128 = v11;
      v125 = a3;
      v67 = v7;
      if (v7)
      {
        v68 = a1;
        v69 = v65;
        v70 = sub_1D16CC494();
        v139 = sub_1D16BB9E8;
        v140 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v136 = 1107296256;
        v137 = sub_1D16BBB64;
        v138 = &block_descriptor_180;
        v71 = _Block_copy(&aBlock);

        [v68 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

        _Block_release(v71);
      }

      else
      {
        v139 = sub_1D16BB9E8;
        v140 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v136 = 1107296256;
        v137 = sub_1D16BBB64;
        v138 = &block_descriptor_189;
        v72 = _Block_copy(&aBlock);
        v73 = a1;
        v70 = v65;

        [v73 automaticallyUpdateView:v70 withStyle:0 andObserverBlock:v72];

        _Block_release(v72);
      }

      v74 = (*(v55 + 184))(ObjectType, v55);
      a3 = v125;
      v11 = v128;
      if (!v74)
      {
        LOBYTE(v7) = v67;
        v62 = v116;
        goto LABEL_52;
      }

      v75 = v74;
      if (v125)
      {
        [v125 stopAutomaticallyUpdatingView_];
        if (v128)
        {
LABEL_47:
          v76 = a1;
          v77 = v75;
          v78 = sub_1D16CC494();
          v139 = sub_1D16BB9E8;
          v140 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v136 = 1107296256;
          v137 = sub_1D16BBB64;
          v138 = &block_descriptor_183;
          v79 = _Block_copy(&aBlock);

          [v76 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

          _Block_release(v79);
          v62 = v78;
LABEL_51:
          a3 = v125;
          LOBYTE(v7) = v67;
          goto LABEL_52;
        }
      }

      else
      {
        v80 = v74;
        if (v128)
        {
          goto LABEL_47;
        }
      }

      v139 = sub_1D16BB9E8;
      v140 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v136 = 1107296256;
      v137 = sub_1D16BBB64;
      v138 = &block_descriptor_186;
      v81 = _Block_copy(&aBlock);
      v82 = a1;
      v62 = v75;

      [v82 automaticallyUpdateView:v62 withStyle:1 andObserverBlock:v81];

      _Block_release(v81);
      goto LABEL_51;
    }

    v19 = v11;
    v21 = *(v17 + 1);
    v20 = *(v17 + 2);
    v130 = *&v4[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    sub_1D16C2014(v18, v21, v20);
    v22 = v130;
    if (!v130)
    {
      sub_1D168E910(0, v21, v20);
      v11 = v19;
      goto LABEL_34;
    }

    v115 = v20;
    v117 = v14;
    v119 = v17;
    v121 = v9;
    if (v127)
    {
      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v4;
      *(v24 + 24) = v23;
      v112 = v21;
      *(v24 + 32) = v21;
      *(v24 + 40) = v9;
      *(v24 + 48) = v132;
      *(v24 + 56) = v7;
      *(v24 + 64) = a1;
      *(v24 + 72) = a3;
      *(v24 + 80) = v133;
      *(v24 + 88) = v129;
      *(v24 + 96) = v19;
      v139 = sub_1D16C2D98;
      v140 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v136 = 1107296256;
      v137 = sub_1D16B76AC;
      v138 = &block_descriptor_214;
      v25 = _Block_copy(&aBlock);
      v11 = v19;
      v26 = v4;
      v27 = v23;
      sub_1D16C2C48(v9, v132, v7);
      v28 = a3;
      v29 = a1;
      sub_1D16C2C48(v133, v129, v19);

      [v117 transitionWithView:v27 duration:5242880 options:v25 animations:0 completion:v15];
      v30 = v25;
      v14 = v117;
      _Block_release(v30);

      sub_1D168E910(v130, v112, v20);
      v17 = v119;
      goto LABEL_34;
    }

    v31 = v22;
    v32 = v21;
    v113 = swift_getObjectType();
    v114 = v31;
    v33 = (*(v21 + 176))(v113, v21);
    v34 = v33;
    if (a3)
    {
      [a3 stopAutomaticallyUpdatingView_];
    }

    else
    {
      v35 = v33;
    }

    v36 = v19;
    v123 = a3;
    if (v7)
    {
      v37 = a1;
      v38 = v34;
      v39 = sub_1D16CC494();
      v139 = sub_1D16BB9E8;
      v140 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v136 = 1107296256;
      v137 = sub_1D16BBB64;
      v138 = &block_descriptor_198;
      v40 = _Block_copy(&aBlock);

      [v37 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

      _Block_release(v40);
    }

    else
    {
      v139 = sub_1D16BB9E8;
      v140 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v136 = 1107296256;
      v137 = sub_1D16BBB64;
      v138 = &block_descriptor_207;
      v41 = _Block_copy(&aBlock);
      v42 = a1;
      v39 = v34;

      [v42 automaticallyUpdateView:v39 withStyle:0 andObserverBlock:v41];

      _Block_release(v41);
    }

    v43 = (*(v32 + 184))(v113, v32);
    a3 = v123;
    v11 = v19;
    if (!v43)
    {

      sub_1D168E910(v130, v32, v115);
LABEL_33:
      v17 = v119;
      v9 = v121;
      v14 = v117;
      goto LABEL_34;
    }

    v44 = v43;
    if (v123)
    {
      [v123 &selRef:v43 setFilters:? + 1];
      if (v19)
      {
LABEL_28:
        v45 = a1;
        v46 = v44;
        v47 = sub_1D16CC494();
        v139 = sub_1D16BB9E8;
        v140 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v136 = 1107296256;
        v137 = sub_1D16BBB64;
        v138 = &block_descriptor_201;
        v48 = _Block_copy(&aBlock);

        [v45 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

        _Block_release(v48);
LABEL_32:
        sub_1D168E910(v130, v32, v115);
        a3 = v123;
        v11 = v36;
        goto LABEL_33;
      }
    }

    else
    {
      v49 = v43;
      if (v19)
      {
        goto LABEL_28;
      }
    }

    v139 = sub_1D16BB9E8;
    v140 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v136 = 1107296256;
    v137 = sub_1D16BBB64;
    v138 = &block_descriptor_204;
    v50 = _Block_copy(&aBlock);
    v51 = a1;
    v52 = v44;

    [v51 automaticallyUpdateView:v52 withStyle:1 andObserverBlock:v50];

    _Block_release(v50);
    goto LABEL_32;
  }
}

id CCUIControlTemplateView.visualStylingProvider(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D16B9BF8();
  if (*(v4 + 16) && (v5 = sub_1D16C1A54(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    return v7;
  }

  else
  {

    v9.receiver = v2;
    v9.super_class = CCUIControlTemplateView;
    return objc_msgSendSuper2(&v9, sel_visualStylingProviderForCategory_, a1);
  }
}

unint64_t sub_1D16B9BF8()
{
  v1 = OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders;
  if (*(v0 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders))
  {
    v2 = *(v0 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders);
  }

  else
  {
    v2 = sub_1D16CB67C(MEMORY[0x1E69E7CC0]);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1D16B9DA4(void *a1, uint64_t a2)
{
  if (qword_1F4D511A8 != a2)
  {
    return;
  }

  v3 = v2;
  v6 = sub_1D16B9BF8();
  if (*(v6 + 16) && (v7 = sub_1D16C1A54(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  if (!a1)
  {
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!v9 || (sub_1D168EE64(0, &unk_1EC640AF0), v11 = a1, v16 = v9, v12 = sub_1D16CC5A4(), v11, v16, v13 = v16, (v12 & 1) == 0))
  {
LABEL_11:
    v14 = OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders;
    v17 = *(v3 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___visualStyleCategoriesToProviders);
    v15 = a1;

    sub_1D16C6D14(a1, a2);
    *(v3 + v14) = v17;

    if (!a1)
    {
      __break(1u);
      return;
    }

    sub_1D16B8A08(v15, a2, v9);
    v13 = v9;
  }
}

Swift::Void __swiftcall CCUIControlTemplateView.layoutSubviews()()
{
  v200.super_class = CCUIControlTemplateView;
  objc_msgSendSuper2(&v200, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 backgroundView];
  v10 = &selRef_ccui_systemImageName;
  [v9 setFrame_];

  v195 = [v0 contentMetrics];
  if (v195)
  {
    [v195 gridGeometryInfo];
  }

  else
  {
    v11 = CCUIPortraitMainListGridGeometryInfo();
  }

  v13 = v11;
  v14 = v12;
  [v0 glyphContentFrame];
  v197 = v16;
  v198 = v15;
  v199 = v17;
  rect = v18;
  v19 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v20 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v20 != 1)
  {
    v192 = v2;
    v22 = *(v19 + 1);
    v21 = *(v19 + 2);
    v186 = *(v19 + 3);
    v23 = v21;
    v24 = v20;
    v25 = &selRef_ccui_systemImageName;
    if (([v0 isResizing] & 1) != 0 || (v26 = v2, v27 = v4, v189 = v6, Height = v8, objc_msgSend(v0, sel_isExpanded)))
    {
      if ([v0 supportsAccessibilityContentSizeCategories] && (v29 = objc_msgSend(v0, sel_traitCollection), v30 = v21, v31 = v23, v32 = v24, v33 = objc_msgSend(v29, sel_preferredContentSizeCategory), v29, LOBYTE(v29) = sub_1D16CC544(), v33, v24 = v32, v23 = v31, v21 = v30, v25 = &selRef_ccui_systemImageName, (v29 & 1) != 0))
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v189 = CCUIBoundsSizeForGridSizeClassWithGeometry(v34, v13, v14);
      Height = v35;
      v26 = 0.0;
      if ([v0 isExpanded])
      {
        v201.origin.x = v192;
        v201.origin.y = v4;
        v201.size.width = v6;
        v201.size.height = v8;
        Height = CGRectGetHeight(v201);
      }

      v27 = 0.0;
    }

    v181 = v13;
    v184 = v6;
    if ([v0 v25[470]])
    {
      v36 = [v0 traitCollection];
      v37 = v23;
      v38 = v24;
      v39 = [v36 preferredContentSizeCategory];

      LOBYTE(v36) = sub_1D16CC544();
      v24 = v38;
      v23 = v37;
      if ((v36 & 1) != 0 && ([v0 isLimitingTitleToSingleLineForAccessibility] & 1) == 0)
      {
        sub_1D16BAF08(v20, v22, v21, v186, v26, v27, v189, Height, v198, v197, v199, rect);
      }
    }

    v40 = [v0 _shouldReverseLayoutDirection];
    v41 = [v0 traitCollection];
    [v41 displayScale];
    v187 = v42;

    sub_1D16BD040();
    CCUIEdgeInsetsFromDirectionalEdgeInsets();
    v178 = v43;
    v45 = v44;
    v47 = v46;
    v182 = v4;
    v183 = v8;
    v180 = v14;
    if (v40)
    {
      if ([v0 isResizing])
      {
        v48 = [v0 contentMetrics];
        if (v48)
        {
          v49 = v48;
          [v48 metricsScaleFactor];
          v50 = [v0 traitCollection];
          [v50 displayScale];

          UIRoundToScale();
          v52 = v51;

          v53 = v52 + v52;
        }

        else
        {
          v53 = 28.0;
        }

        v205.origin.x = v26;
        v205.origin.y = v27;
        v57 = v189;
        v205.size.width = v189;
        v205.size.height = Height;
        v58 = CGRectGetMaxX(v205) - v199 - v53 - v47;
        v56 = v26;
      }

      else
      {
        v204.origin.y = v197;
        v204.origin.x = v198;
        v204.size.width = v199;
        v204.size.height = rect;
        v58 = CGRectGetMinX(v204) - v47;
        v56 = v26;
        v57 = v189;
      }
    }

    else
    {
      v202.origin.y = v197;
      v202.origin.x = v198;
      v202.size.width = v199;
      v202.size.height = rect;
      MaxX = CGRectGetMaxX(v202);
      v55 = v26;
      v26 = v45 + MaxX;
      v56 = v55;
      v203.origin.x = v55;
      v203.origin.y = v27;
      v57 = v189;
      v203.size.width = v189;
      v203.size.height = Height;
      v58 = CGRectGetMaxX(v203);
    }

    v206.origin.x = v26;
    v206.origin.y = v27;
    v206.size.width = v57;
    v206.size.height = Height;
    v59 = v58 - CGRectGetMinX(v206);
    v250.origin.x = UIEdgeInsetsInsetRect(v56, v27, v57, Height, v178, v45);
    v250.origin.y = v60;
    v250.size.width = v61;
    v250.size.height = v62;
    v207.origin.x = v26;
    v207.origin.y = v27;
    v207.size.width = v59;
    v207.size.height = Height;
    v208 = CGRectIntersection(v207, v250);
    x = v208.origin.x;
    y = v208.origin.y;
    width = v208.size.width;
    v66 = v208.size.height;
    v67 = 0.0;
    v68 = 0.0;
    v69 = 0.0;
    v179 = 0.0;
    if (v21)
    {
      v70 = v23;
      [v70 sizeThatFits_];
      v179 = v71;
      v69 = v72;
      v209.origin.x = x;
      v209.origin.y = y;
      v209.size.width = width;
      v209.size.height = v66;
      v68 = CGRectGetWidth(v209);
      v210.origin.x = x;
      v210.origin.y = y;
      v210.size.width = width;
      v210.size.height = v66;
      v73 = CGRectGetHeight(v210);

      if (v73 < v69)
      {
        v69 = v73;
      }
    }

    v177 = v68;
    v74 = 0.0;
    v190 = v69;
    if (v20)
    {
      v75 = v24;
      v211.origin.x = x;
      v211.origin.y = y;
      v211.size.width = width;
      v211.size.height = v66;
      v76 = CGRectGetWidth(v211);
      v212.origin.x = x;
      v212.origin.y = y;
      v212.size.width = width;
      v212.size.height = v66;
      v77 = CGRectGetHeight(v212) - v69;
      [v75 sizeThatFits_];
      v74 = v78;
      if (v77 < v78)
      {
        if ([v0 supportsAccessibilityContentSizeCategories])
        {
          v79 = [v0 traitCollection];
          v80 = v21;
          v81 = v23;
          v82 = v24;
          v83 = [v79 preferredContentSizeCategory];

          LOBYTE(v79) = sub_1D16CC544();
          v24 = v82;
          v23 = v81;
          v21 = v80;
          v74 = v77;
          if (v79)
          {
            v213.origin.x = x;
            v213.origin.y = y;
            v213.size.width = width;
            v213.size.height = v66;
            v84 = CGRectGetWidth(v213) - v179;
            v214.origin.x = x;
            v214.origin.y = y;
            v214.size.width = width;
            v214.size.height = v66;
            [v75 sizeThatFits_];
            v215.origin.x = x;
            v215.origin.y = y;
            v215.size.width = width;
            v215.size.height = v66;
            CGRectGetHeight(v215);

            v216.origin.x = x;
            v216.origin.y = y;
            v216.size.width = width;
            v216.size.height = v66;
            CGRectGetMinX(v216);
            v217.origin.x = x;
            v217.origin.y = y;
            v217.size.width = width;
            v217.size.height = v66;
            CGRectGetMinY(v217);
            UIRectCenteredYInRectScale();
            v89 = v85;
            v90 = v86;
            v91 = v87;
            v92 = v88;
            if (v40)
            {
              v218.origin.x = x;
              v218.origin.y = y;
              v218.size.width = width;
              v218.size.height = v66;
              CGRectGetMinX(v218);
            }

            else
            {
              CGRectGetMaxX(*&v85);
            }

            v10 = &selRef_ccui_systemImageName;
            v248.origin.x = x;
            v248.origin.y = y;
            v248.size.width = width;
            v248.size.height = v66;
            CGRectGetMinY(v248);
            UIRectCenteredYInRectScale();
            MinX = v168;
            MaxY = v169;
            v177 = v170;
            v190 = v171;
            v2 = v192;
            v4 = v182;
            [v24 setFrame_];
LABEL_42:
            v8 = v183;
            v6 = v184;
            v13 = v181;
            if (v21)
            {
              v103 = v10[340];
              v104 = v23;
              [v104 v103];
            }

            v14 = v180;
            goto LABEL_45;
          }
        }

        else
        {
          v74 = v77;
        }
      }

      v219.origin.x = x;
      v219.origin.y = y;
      v219.size.width = width;
      v219.size.height = v66;
      v67 = CGRectGetWidth(v219);
    }

    v176 = v187;
    UIRectCenteredYInRectScale();
    v96 = v95;
    if (v40)
    {
      v97 = v94;
      sub_1D16BD040();
      CCUIEdgeInsetsFromDirectionalEdgeInsets();
      v99 = v98;
      v220.origin.y = v197;
      v220.origin.x = v198;
      v220.size.width = v199;
      v220.size.height = rect;
      v100 = CGRectGetMinX(v220) - v99 - v97;
    }

    else
    {
      v100 = v93;
    }

    v10 = &selRef_ccui_systemImageName;
    v2 = v192;
    v4 = v182;
    v221.origin.x = v100;
    v221.origin.y = v96;
    v221.size.width = v67;
    v221.size.height = v74;
    MinX = CGRectGetMinX(v221);
    v222.origin.x = v100;
    v222.origin.y = v96;
    v222.size.width = v67;
    v222.size.height = v74;
    MaxY = CGRectGetMaxY(v222);
    if (v20)
    {
      [v24 setFrame_];
    }

    goto LABEL_42;
  }

LABEL_45:
  v105 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v105 == 1)
  {
    goto LABEL_77;
  }

  v106 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 16];
  v107 = v106;
  v108 = v105;
  if (([v0 isResizing] & 1) != 0 || objc_msgSend(v0, sel_isExpanded))
  {
    if ([v0 supportsAccessibilityContentSizeCategories] && (v109 = objc_msgSend(v0, sel_traitCollection), v110 = objc_msgSend(v109, sel_preferredContentSizeCategory), v109, LOBYTE(v109) = sub_1D16CC544(), v110, (v109 & 1) != 0))
    {
      v111 = 5;
    }

    else
    {
      v111 = 4;
    }

    v112 = CCUIBoundsSizeForGridSizeClassWithGeometry(v111, v13, v14);
    v223.origin.x = v2;
    v223.origin.y = v4;
    v223.size.width = v6;
    v223.size.height = v8;
    v113 = CGRectGetHeight(v223);
    v114 = 0.0;
    v4 = 0.0;
    v115 = v112;
  }

  else
  {
    v113 = v8;
    v114 = v2;
    v115 = v6;
  }

  v116 = [v0 _shouldReverseLayoutDirection];
  v117 = [v0 traitCollection];
  [v117 displayScale];
  v185 = v118;

  sub_1D16BD17C();
  CCUIEdgeInsetsFromDirectionalEdgeInsets();
  v120 = v119;
  v193 = v121;
  v122 = v4;
  if (([v0 isResizing] & 1) == 0)
  {
    v224.origin.y = v197;
    v224.origin.x = v198;
    v224.size.width = v199;
    v224.size.height = rect;
    v122 = v120 + CGRectGetMaxY(v224);
  }

  v225.origin.x = v114;
  v225.origin.y = v4;
  v225.size.width = v115;
  v225.size.height = v113;
  v123 = v4;
  v124 = CGRectGetMaxY(v225);
  v226.origin.x = v114;
  v226.origin.y = v122;
  v226.size.width = v115;
  v226.size.height = v113;
  v125 = v124 - CGRectGetMinY(v226);
  v251.origin.x = UIEdgeInsetsInsetRect(v114, v123, v115, v113, v120, v193);
  v251.origin.y = v126;
  v251.size.width = v127;
  v251.size.height = v128;
  v227.origin.x = v114;
  v227.origin.y = v122;
  v227.size.width = v115;
  v227.size.height = v125;
  v228 = CGRectIntersection(v227, v251);
  v129 = v228.origin.x;
  v130 = v228.origin.y;
  v131 = v228.size.width;
  v132 = v228.size.height;
  v133 = 0.0;
  v194 = 0.0;
  v134 = 0.0;
  v188 = 0.0;
  if (v106)
  {
    v135 = v107;
    [v135 sizeThatFits_];
    v188 = v136;
    v138 = v137;
    v229.origin.x = v129;
    v229.origin.y = v130;
    v229.size.width = v131;
    v229.size.height = v132;
    v194 = CGRectGetWidth(v229);
    v230.origin.x = v129;
    v230.origin.y = v130;
    v230.size.width = v131;
    v230.size.height = v132;
    v139 = CGRectGetHeight(v230);

    if (v139 >= v138)
    {
      v134 = v138;
    }

    else
    {
      v134 = v139;
    }
  }

  v140 = 0.0;
  v191 = v134;
  if (!v105)
  {
    goto LABEL_68;
  }

  v141 = v108;
  v231.origin.x = v129;
  v231.origin.y = v130;
  v231.size.width = v131;
  v231.size.height = v132;
  v142 = CGRectGetWidth(v231);
  v232.origin.x = v129;
  v232.origin.y = v130;
  v232.size.width = v131;
  v232.size.height = v132;
  v143 = CGRectGetHeight(v232) - v134;
  [v141 sizeThatFits_];
  v140 = v144;
  if (v143 >= v144)
  {
    goto LABEL_67;
  }

  if (![v0 supportsAccessibilityContentSizeCategories])
  {
    v140 = v143;
    goto LABEL_67;
  }

  v145 = [v0 traitCollection];
  v146 = v108;
  v147 = v10;
  v148 = [v145 preferredContentSizeCategory];

  LOBYTE(v145) = sub_1D16CC544();
  v10 = v147;
  v108 = v146;
  v140 = v143;
  if ((v145 & 1) == 0)
  {
LABEL_67:
    v239.origin.x = v129;
    v239.origin.y = v130;
    v239.size.width = v131;
    v239.size.height = v132;
    v133 = CGRectGetWidth(v239);

LABEL_68:
    v158 = v134 + v140;
    v240.origin.x = v129;
    v240.origin.y = v130;
    v240.size.width = v131;
    v240.size.height = v132;
    v159 = CGRectGetMaxY(v240);
    v241.origin.x = v129;
    v241.origin.y = v130;
    v241.size.width = v131;
    v241.size.height = v134 + v140;
    v160 = v159 - CGRectGetHeight(v241);
    sub_1D16BD17C();
    CCUIEdgeInsetsFromDirectionalEdgeInsets();
    v162 = v161;
    v242.origin.y = v197;
    v242.origin.x = v198;
    v242.size.width = v199;
    v242.size.height = rect;
    if (v160 <= CGRectGetMaxY(v242) + v162)
    {
      v243.origin.y = v197;
      v243.origin.x = v198;
      v243.size.width = v199;
      v243.size.height = rect;
      v160 = v162 + CGRectGetMaxY(v243);
      v158 = v140;
    }

    if (v116)
    {
      v244.origin.y = v197;
      v244.origin.x = v198;
      v244.size.width = v199;
      v244.size.height = rect;
      v163 = CGRectGetMaxX(v244);
      v245.origin.x = v129;
      v245.origin.y = v160;
      v245.size.width = v131;
      v245.size.height = v158;
      v129 = v163 - CGRectGetWidth(v245);
    }

    v246.origin.x = v129;
    v246.origin.y = v160;
    v246.size.width = v133;
    v246.size.height = v140;
    v164 = CGRectGetMinX(v246);
    v247.origin.x = v129;
    v247.origin.y = v160;
    v247.size.width = v133;
    v247.size.height = v140;
    v165 = CGRectGetMaxY(v247);
    if (v105)
    {
      [v108 v10[340]];
    }

    goto LABEL_74;
  }

  v233.origin.x = v129;
  v233.origin.y = v130;
  v233.size.width = v131;
  v233.size.height = v132;
  v149 = CGRectGetWidth(v233) - v188;
  v234.origin.x = v129;
  v234.origin.y = v130;
  v234.size.width = v131;
  v234.size.height = v132;
  [v141 sizeThatFits_];
  v235.origin.x = v129;
  v235.origin.y = v130;
  v235.size.width = v131;
  v235.size.height = v132;
  CGRectGetHeight(v235);

  v236.origin.x = v129;
  v236.origin.y = v130;
  v236.size.width = v131;
  v236.size.height = v132;
  CGRectGetMinX(v236);
  v237.origin.x = v129;
  v237.origin.y = v130;
  v237.size.width = v131;
  v237.size.height = v132;
  CGRectGetMinY(v237);
  UIRectCenteredYInRectScale();
  v154 = v150;
  v155 = v151;
  v156 = v152;
  v157 = v153;
  if (v116)
  {
    v238.origin.x = v129;
    v238.origin.y = v130;
    v238.size.width = v131;
    v238.size.height = v132;
    CGRectGetMinX(v238);
  }

  else
  {
    CGRectGetMaxX(*&v150);
  }

  v249.origin.x = v129;
  v249.origin.y = v130;
  v249.size.width = v131;
  v249.size.height = v132;
  CGRectGetMinY(v249);
  UIRectCenteredYInRectScale();
  v164 = v172;
  v165 = v173;
  v191 = v175;
  v194 = v174;
  [v146 v10[340]];
LABEL_74:
  if (v106)
  {
    v166 = v10[340];
    v167 = v107;
    [v167 v166];
  }

LABEL_77:
  if (([v0 isResizing] & 1) == 0)
  {
    _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
  }
}

void sub_1D16BAF08(void *a1, uint64_t a2, void *a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11, CGFloat a12)
{
  if (a1)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    v27 = *(a2 + 8);
    v28 = a1;
    v29 = v27(ObjectType, a2);
    if (v29)
    {
      rect = a11;
      oslog = v29;
      v30 = [v12 _shouldReverseLayoutDirection];
      sub_1D16BD040();
      CCUIEdgeInsetsFromDirectionalEdgeInsets();
      v71 = v32;
      v33 = v31;
      v69 = v34;
      if (v30)
      {
        v68 = v31;
        if ([v12 isResizing])
        {
          v35 = [v12 contentMetrics];
          if (v35)
          {
            v36 = v35;
            [v35 metricsScaleFactor];
            v37 = [v13 traitCollection];
            [v37 displayScale];

            UIRoundToScale();
            v39 = v38;

            v40 = v39 + v39;
          }

          else
          {
            v40 = 28.0;
          }

          v33 = v68;
          v48 = v69;
          v77.origin.x = a5;
          v77.origin.y = a6;
          v77.size.width = a7;
          v77.size.height = a8;
          MinX = CGRectGetMaxX(v77) - rect - v40;
        }

        else
        {
          v76.origin.x = a9;
          v76.origin.y = a10;
          v76.size.width = rect;
          v76.size.height = a12;
          MinX = CGRectGetMinX(v76);
          v33 = v68;
          v48 = v69;
        }

        MaxX = MinX - v48;
        v45 = a5;
      }

      else
      {
        v74.origin.x = a9;
        v74.origin.y = a10;
        v74.size.width = rect;
        v74.size.height = a12;
        v45 = v33 + CGRectGetMaxX(v74);
        v75.origin.x = a5;
        v75.origin.y = a6;
        v75.size.width = a7;
        v75.size.height = a8;
        MaxX = CGRectGetMaxX(v75);
      }

      v78.origin.x = v45;
      v78.origin.y = a6;
      v78.size.width = a7;
      v78.size.height = a8;
      v49 = MaxX - CGRectGetMinX(v78);
      v82.origin.x = UIEdgeInsetsInsetRect(a5, a6, a7, a8, v71, v33);
      v82.origin.y = v50;
      v82.size.width = v51;
      v82.size.height = v52;
      v79.origin.x = v45;
      v79.origin.y = a6;
      v79.size.width = v49;
      v79.size.height = a8;
      v80 = CGRectIntersection(v79, v82);
      x = v80.origin.x;
      y = v80.origin.y;
      width = v80.size.width;
      height = v80.size.height;
      [oslog lineHeight];
      v58 = v57 + v57;
      [oslog leading];
      v60 = v58 + v59;
      if (a3)
      {
        v61 = swift_getObjectType();
        v62 = *(a4 + 8);
        v63 = a3;
        v64 = v62(v61, a4);
        if (v64)
        {
          v65 = v64;
          [v64 lineHeight];
          v67 = v66;

          v60 = v60 + v67;
        }

        else
        {
        }
      }

      v81.origin.x = x;
      v81.origin.y = y;
      v81.size.width = width;
      v81.size.height = height;
      if (CGRectGetHeight(v81) < v60)
      {
        [v13 setIsLimitingTitleToSingleLineForAccessibility_];
      }
    }

    else
    {
      if (qword_1EC6412A8 != -1)
      {
        swift_once();
      }

      v41 = sub_1D16CC2C4();
      __swift_project_value_buffer(v41, qword_1EC6420F8);
      v28 = v28;
      oslog = sub_1D16CC2A4();
      v42 = sub_1D16CC524();

      if (os_log_type_enabled(oslog, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v28;
        *v44 = a1;
        v28 = v28;
        _os_log_impl(&dword_1D168A000, oslog, v42, "Unexpectedly missing font on title label: %@", v43, 0xCu);
        sub_1D16C2BE4(v44, &unk_1EC641670);
        MEMORY[0x1D388F3F0](v44, -1, -1);
        MEMORY[0x1D388F3F0](v43, -1, -1);
      }
    }
  }
}

Swift::Void __swiftcall CCUIControlTemplateView.didMoveToWindow()()
{
  v4.super_class = CCUIControlTemplateView;
  objc_msgSendSuper2(&v4, sel_didMoveToWindow);
  if ([v0 _isInAWindow])
  {
    v3.receiver = v0;
    v3.super_class = CCUIControlTemplateView;
    v1 = objc_msgSendSuper2(&v3, sel_visualStylingProviderForCategory_, 1);
    if (v1)
    {
      v2 = v1;
      [v0 setVisualStylingProvider:v1 forCategory:1];
    }
  }
}

id CCUIControlTemplateView.contextMenuInteraction(_:configuration:dismissalPreviewForItemWithIdentifier:)()
{
  v1 = [v0 makeContextMenuPreview];

  return v1;
}

id CCUIControlTemplateView.contextMenuInteraction(_:willEndFor:animator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super_class = CCUIControlTemplateView;
  objc_msgSendSuper2(&v5, sel_contextMenuInteraction_willEndForConfiguration_animator_, a1, a2, a3);
  return [v3 setPresentingContextMenu_];
}

void (*sub_1D16BB9E8(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  result = sub_1D16900A8(a2, &v6);
  if (v7)
  {
    sub_1D16901B4(&v6, &v8);
    sub_1D168EE64(0, &qword_1EC640AD8);
    swift_dynamicCast();
    [v5 alpha];
    v4 = v3;

    *(swift_allocObject() + 16) = v4;
    return sub_1D16C2914;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D16BBABC(double a1, uint64_t a2, uint64_t a3)
{
  sub_1D16900A8(a3, &v5);
  if (v6)
  {
    sub_1D16901B4(&v5, &v7);
    sub_1D168EE64(0, &qword_1EC640AD8);
    swift_dynamicCast();
    [v4 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D16BBB64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a3;
    sub_1D16901B4(&v11, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v7 = v5(a2, v16);
  v9 = v8;

  sub_1D16C2BE4(v16, &unk_1EC641620);
  if (v7)
  {
    v14 = v7;
    v15 = v9;
    *&v11 = MEMORY[0x1E69E9820];
    *(&v11 + 1) = 1107296256;
    v12 = sub_1D16BBC98;
    ObjectType = &block_descriptor_94;
    v7 = _Block_copy(&v11);
  }

  return v7;
}

uint64_t sub_1D16BBC98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    sub_1D16901B4(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, v10);

  return sub_1D16C2BE4(v10, &unk_1EC641620);
}

void sub_1D16BBD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8, uint64_t a9, uint64_t a10, char a11)
{
  ObjectType = swift_getObjectType();
  v17 = (*(a3 + 176))(ObjectType, a3);
  v18 = v17;
  if (a8)
  {
    [a8 stopAutomaticallyUpdatingView_];
    if (a6)
    {
LABEL_3:
      v19 = v18;
      v20 = a7;
      v21 = sub_1D16CC494();
      v39 = sub_1D16BB9E8;
      v40 = 0;
      v35 = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_1D16BBB64;
      v38 = &block_descriptor_217;
      v22 = _Block_copy(&v35);

      [v20 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

      _Block_release(v22);
      goto LABEL_6;
    }
  }

  else
  {
    v23 = v17;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v39 = sub_1D16BB9E8;
  v40 = 0;
  v35 = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1D16BBB64;
  v38 = &block_descriptor_226;
  v24 = _Block_copy(&v35);
  v21 = v18;
  v25 = a7;

  [v25 automaticallyUpdateView:v21 withStyle:a4 andObserverBlock:v24];

  _Block_release(v24);
LABEL_6:

  v26 = (*(a3 + 184))(ObjectType, a3);
  if (!v26)
  {
    return;
  }

  v27 = v26;
  if (!a8)
  {
    v32 = v26;
    if (a11)
    {
      goto LABEL_9;
    }

LABEL_11:
    v39 = sub_1D16BB9E8;
    v40 = 0;
    v35 = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1D16BBB64;
    v38 = &block_descriptor_223;
    v33 = _Block_copy(&v35);
    v34 = a7;
    v30 = v27;

    [v34 automaticallyUpdateView:v30 withStyle:a9 andObserverBlock:v33];

    _Block_release(v33);
    goto LABEL_12;
  }

  [a8 stopAutomaticallyUpdatingView_];
  if ((a11 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v28 = a7;
  v29 = v27;
  v30 = sub_1D16CC494();
  v39 = sub_1D16BB9E8;
  v40 = 0;
  v35 = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1D16BBB64;
  v38 = &block_descriptor_220;
  v31 = _Block_copy(&v35);

  [v28 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];

  _Block_release(v31);
LABEL_12:
}

id sub_1D16BC148(void *a1, id a2)
{
  [a1 setEnabled_];
  [a1 setRedacted_];
  v4 = [a2 isSelected];

  return [a1 setSelected_];
}

id sub_1D16BC1E4(void *a1, id a2, void (*a3)(void))
{
  v6 = [a2 title];
  [a1 setTitle_];

  v7 = [a2 subtitle];
  [a1 setSubtitle_];

  a3();

  return [a1 layoutIfNeeded];
}

void *sub_1D16BC2AC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  if (a1 == 1)
  {
    return 0;
  }

  v12 = a1;
  result = a1;
  if (a1)
  {
    if (a5 == 1)
    {
      if (!a3)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (a1 == a5)
    {

      result = 0;
    }
  }

  if (!a3)
  {
    return result;
  }

LABEL_8:
  if (a5 == 1 || !a7 || a3 != a7)
  {
    v13 = result;
    v14 = a3;
    return v13;
  }

  return result;
}

void sub_1D16BC38C(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v7 = a3;
    a1();
  }

  if (a5)
  {
    v8 = a5;
    a1();
  }
}

uint64_t sub_1D16BC434(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t (*a9)(void))
{
  v12 = *a2;
  v30 = *(a2 + 16);
  v31 = *(a2 + 8);
  v13 = *(a2 + 32);
  v28.origin.x = *(a2 + 40);
  v28.origin.y = *(a2 + 48);
  v28.size.width = *(a2 + 56);
  v28.size.height = *(a2 + 64);
  v29 = *(a2 + 24);
  v14 = *(a2 + 72);
  [a1 layoutIfNeeded];
  if (!a3)
  {
LABEL_5:
    v27 = v12;
    if (a5)
    {
      [a5 frame];
      CGRectGetMinY(v33);
    }

    v16 = BSFloatApproximatelyEqualToFloat();
    v15 = a3;
    if (a3)
    {
      if (v13)
      {
        if (v14)
        {

          goto LABEL_11;
        }

        x = v28.origin.x;
        y = v28.origin.y;
        width = v28.size.width;
        height = v28.size.height;
        v24 = v15;
        CGRectGetMinY(v28);
        [v24 frame];
        CGRectGetHeight(v37);
        [v24 frame];
        [v24 setFrame_];

        v17 = a7;
        if (!a5)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v18 = v15;
      v34.origin.x = v27;
      v34.origin.y = v31;
      v34.size.width = v30;
      v34.size.height = v29;
      CGRectGetMaxY(v34);
      [v18 frame];
      CGRectGetHeight(v35);
      [v18 frame];
      [v18 setFrame_];
    }

    v17 = a7;
    if (!a5)
    {
      goto LABEL_21;
    }

    if (v14)
    {
      if (v13 & 1 | ((v16 & 1) == 0))
      {
        goto LABEL_21;
      }

      v19 = a5;
      v36.origin.x = v27;
      v36.origin.y = v31;
      v36.size.width = v30;
      v36.size.height = v29;
      CGRectGetMaxY(v36);
LABEL_20:
      [v19 frame];
      [v19 setFrame_];

      goto LABEL_21;
    }

    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
LABEL_19:
    v19 = a5;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    CGRectGetMinY(v38);
    goto LABEL_20;
  }

  if (a3 != 1)
  {
    [a3 frame];
    CGRectGetMaxY(v32);
    goto LABEL_5;
  }

  v15 = BSFloatApproximatelyEqualToFloat();
LABEL_11:
  v17 = a7;
LABEL_21:
  MEMORY[0x1EEE9AC00](v15);
  v25 = v17(sub_1D16C2BAC);
  MEMORY[0x1EEE9AC00](v25);
  return a9(sub_1D16C2BB4);
}

void sub_1D16BC77C(void *a1)
{
  v2 = sub_1D16BC804();
  [v2 addObject_];

  sub_1D16BC878();
  if ((v3 & 1) == 0)
  {
    [a1 ensureGaussianBlurFilter];

    [a1 setGaussianBlurRadius_];
  }
}

id sub_1D16BC804()
{
  v1 = OBJC_IVAR___CCUIControlTemplateView____lazy_storage___animatingLabels;
  v2 = *(v0 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___animatingLabels);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CCUIControlTemplateView____lazy_storage___animatingLabels);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D16BC878()
{
  v1 = [v0 layer];
  v2 = [v1 filters];

  if (v2)
  {
    v3 = sub_1D16CC4F4();

    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = v3 + 32;
      do
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        sub_1D16C27B0(v6, v16);
        sub_1D16C27B0(v16, v15);
        sub_1D168EE64(0, &qword_1EC640AC0);
        if (swift_dynamicCast())
        {
          v7 = [v14 name];
          if (v7)
          {
            v8 = v4;
            v9 = v7;
            v10 = sub_1D16CC4A4();
            v12 = v11;

            v4 = v8;
          }

          else
          {
            v10 = 0;
            v12 = 0;
          }

          if (qword_1EC640B80 == -1)
          {
            if (!v12)
            {
              goto LABEL_18;
            }
          }

          else
          {
            swift_once();
            if (!v12)
            {
LABEL_18:

              __swift_destroy_boxed_opaque_existential_0(v16);
              goto LABEL_5;
            }
          }

          if (v10 == qword_1EC640B90 && v12 == *algn_1EC640B98)
          {

            __swift_destroy_boxed_opaque_existential_0(v16);
LABEL_22:

            return;
          }

          v13 = sub_1D16CC6F4();

          __swift_destroy_boxed_opaque_existential_0(v16);
          if (v13)
          {
            goto LABEL_22;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v16);
        }

LABEL_5:
        ++v5;
        v6 += 32;
      }

      while (v4 != v5);
    }
  }
}

id sub_1D16BCAC8(void *a1)
{
  v2 = sub_1D16BC804();
  [v2 addObject_];

  [a1 ensureGaussianBlurFilter];
  [a1 setGaussianBlurRadius_];

  return [a1 setAlpha_];
}

void sub_1D16BCB4C(void *a1, void (*a2)(id (*)(void *a1), void), uint64_t a3, void (*a4)(id (*)(void *a1), void), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, void *a13)
{
  v17 = a13;
  v18 = *a6;
  v19 = *(a6 + 8);
  v21 = *(a6 + 16);
  v20 = *(a6 + 24);
  v22 = *(a6 + 32);
  v33 = *(a6 + 48);
  v34 = *(a6 + 40);
  v23 = *(a6 + 56);
  v24 = *(a6 + 64);
  v25 = *(a6 + 72);
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
  a2(sub_1D16BCE6C, 0);
  a4(sub_1D16BCEBC, 0);
  if ((v22 & 1) == 0)
  {
    v37.origin.x = v18;
    v37.origin.y = v19;
    v37.size.width = v21;
    v37.size.height = v20;
    CGRectGetMaxY(v37);
  }

  if ((v25 & 1) == 0)
  {
    v38.origin.y = v33;
    v38.origin.x = v34;
    v38.size.width = v23;
    v38.size.height = v24;
    CGRectGetMinY(v38);
  }

  v26 = BSFloatApproximatelyEqualToFloat();
  if (a7)
  {
    if (a11 == 1)
    {
      return;
    }

    v27 = a7;
    sub_1D16C2014(a11, a12, a13);

    if (a11)
    {
      v28 = v27;
      [a11 frame];
      CGRectGetMaxY(v39);
      v29 = a11;
    }

    else
    {
      if (!a13)
      {
LABEL_12:

        goto LABEL_13;
      }

      v30 = v27;
      v29 = a13;
      [v29 frame];
      CGRectGetMinY(v40);
    }

    [v27 frame];
    CGRectGetHeight(v41);
    [v27 frame];
    [v27 setFrame_];

    goto LABEL_12;
  }

LABEL_13:
  if (!a9 || a11 == 1)
  {
    return;
  }

  sub_1D16C2014(a11, a12, a13);
  v35 = a9;

  if (a13)
  {
    v31 = v35;
    [a13 frame];
    CGRectGetMinY(v42);
LABEL_20:
    [v35 frame];
    [v35 setFrame_];

    goto LABEL_21;
  }

  if (((a11 != 0) & v26) == 1)
  {
    v32 = v35;
    v17 = a11;
    [v17 frame];
    CGRectGetMaxY(v43);
    goto LABEL_20;
  }

LABEL_21:
}

id sub_1D16BCE6C(void *a1)
{
  [a1 setAlpha_];

  return [a1 setGaussianBlurRadius_];
}

void sub_1D16BCECC(uint64_t a1, uint64_t a2, void (*a3)(id (*)(void *a1), _BYTE *), uint64_t a4, char *a5, void (*a6)(void (*)(uint64_t a1), void *))
{
  v15 = a5;
  a3(sub_1D16C2AF8, v14);
  v13[2] = a5;
  a6(sub_1D16C2B54, v13);
  v8 = sub_1D16BC804();
  v9 = [v8 count];

  if (!v9)
  {
    _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
    v10 = [*&a5[OBJC_IVAR___CCUIControlTemplateView____lazy_storage___animatingLabels] count];
    v11 = [a5 isResizing];
    if (v10 > 0)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    [a5 setClipsToBounds_];
  }
}

uint64_t sub_1D16BCFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

double sub_1D16BD040()
{
  v1 = [v0 contentMetrics];
  if (v1)
  {
    v2 = v1;
    [v1 metricsScaleFactor];
    v3 = [v0 traitCollection];
    [v3 displayScale];

    UIRoundToScale();
  }

  v4 = [v0 contentMetrics];
  if (v4)
  {
    v5 = v4;
    [v4 metricsScaleFactor];
    v6 = [v0 traitCollection];
    [v6 displayScale];

    UIRoundToScale();
  }

  return 2.0;
}

double sub_1D16BD17C()
{
  v1 = [v0 contentMetrics];
  if (v1)
  {
    v2 = v1;
    [v1 metricsScaleFactor];
    v3 = [v0 traitCollection];
    [v3 displayScale];

    UIRoundToScale();
  }

  v4 = [v0 contentMetrics];
  if (v4)
  {
    v5 = v4;
    [v4 metricsScaleFactor];
    v6 = [v0 traitCollection];
    [v6 displayScale];

    UIRoundToScale();
  }

  v7 = [v0 contentMetrics];
  if (v7)
  {
    v8 = v7;
    [v7 metricsScaleFactor];
    v9 = [v0 traitCollection];
    [v9 displayScale];

    UIRoundToScale();
  }

  return 4.0;
}

uint64_t sub_1D16BD328()
{
  v1 = [v0 delegate];
  if (!v1 || (v2 = [v1 performPrimaryActionForControlTemplateView_], result = swift_unknownObjectRelease(), v2))
  {
    result = [v0 showsMenuAsPrimaryAction];
    if ((result & 1) == 0)
    {
      result = [v0 menuModuleDelegate];
      if (result)
      {
        v4 = result;
        if ([result showsMenuModuleAsPrimaryAction])
        {
          [v4 presentMenuModule];
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1D16BD44C(void *a1)
{
  v2 = v1 + *a1;
  if (*v2 >= 2uLL)
  {
    [*v2 removeFromSuperview];
    v3 = *v2;
    v4 = *(v2 + 16);
    if (*v2 == 1 || !v4)
    {
      v10 = 0;
      v5 = 0;
      v9 = 1;
    }

    else
    {
      v5 = *(v2 + 24);
      v6 = *v2;
      v7 = *(v2 + 16);
      v8 = v4;
      v4 = v7;
      v3 = v6;
      v9 = 0;
      v10 = v7;
    }

    v11 = *(v2 + 8);
    *v2 = v9;
    *(v2 + 8) = 0;
    *(v2 + 16) = v10;
    *(v2 + 24) = v5;

    sub_1D168E910(v3, v11, v4);
  }
}

void sub_1D16BD504(void *a1, char a2)
{
  v5 = [v2 title];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D16CC4A4();
    v9 = v8;

    v10 = &v2[*a1];
    if (*v10 >= 2uLL)
    {
    }

    else
    {
      sub_1D16BD8D8(v7, v9, 1, a2 & 1);
      v12 = v11;
      v14 = v13;

      v15 = *v10;
      v16 = *(v10 + 2);
      v17 = *(v10 + 3);
      if (*v10 == 1)
      {
        v18 = 0;
        v19 = 0;
      }

      else
      {
        v20 = v16;
        v18 = v16;
        v19 = v17;
      }

      v21 = *(v10 + 1);
      *v10 = v12;
      *(v10 + 1) = v14;
      *(v10 + 2) = v18;
      *(v10 + 3) = v19;
      v22 = v12;
      sub_1D168E910(v15, v21, v16);
      [v2 addSubview_];
      if (*&v2[OBJC_IVAR___CCUIControlTemplateView_blurPocket])
      {

        sub_1D16B4170();
      }
    }
  }
}

void sub_1D16BD698(void *a1)
{
  v2 = v1 + *a1;
  if (*v2 != 1)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *v2;
      v5 = *(v2 + 8);
      if (*v2 >= 2uLL)
      {
        v8 = v4;
        v7 = v4;
        v6 = v5;
      }

      else
      {
        v6 = 0;
        v7 = 1;
      }

      v9 = *(v2 + 16);
      *v2 = v7;
      *(v2 + 8) = v6;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;

      sub_1D168E910(v4, v5, v9);
    }
  }
}

void sub_1D16BD740(void *a1, char a2)
{
  v5 = [v2 subtitle];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D16CC4A4();
    v9 = v8;

    v10 = &v2[*a1];
    if (*v10 == 1 || !*(v10 + 2))
    {
      sub_1D16BD8D8(v7, v9, 0, a2 & 1);
      v12 = v11;
      v14 = v13;

      v15 = *v10;
      v16 = *(v10 + 1);
      if (*v10 == 1)
      {
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v19 = v15;
        v17 = v15;
        v18 = v16;
      }

      v20 = *(v10 + 2);
      *v10 = v17;
      *(v10 + 1) = v18;
      *(v10 + 2) = v12;
      *(v10 + 3) = v14;
      v21 = v12;
      sub_1D168E910(v15, v16, v20);
      [v2 addSubview_];
      if (*&v2[OBJC_IVAR___CCUIControlTemplateView_blurPocket])
      {

        sub_1D16B4170();
      }
    }

    else
    {
    }
  }
}

void sub_1D16BD8D8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  if ((a3 & 1) != 0 && [v4 showsMenuAffordance] && !objc_msgSend(v4, sel_menuAffordancePosition))
  {
    v56 = [objc_opt_self() configurationWithScale_];
    v57 = sub_1D16CC494();
    v58 = [objc_opt_self() systemImageNamed:v57 withConfiguration:v56];

    if (!v58)
    {
      __break(1u);
      return;
    }

    v59 = objc_allocWithZone(type metadata accessor for LabelWithAccessoryView());
    v60 = sub_1D16B36A8(v58, 0.0, 0.0, 0.0, 0.0);

    v9 = v60;
    v10 = &off_1F4D51548;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    if ((a3 & 1) == 0)
    {
      v11 = v9;
      v10 = &off_1F4D51488;
      v12 = 1;
      goto LABEL_8;
    }

    v10 = &off_1F4D51488;
  }

  v11 = v9;
  v12 = sub_1D16BE21C();
LABEL_8:
  swift_getObjectType();
  (v10[11])(v12);
  v13 = v11;
  v14 = sub_1D16BE38C(a3 & 1, a4 & 1);
  (v10[2])(v14);

  v15 = v13;
  sub_1D16BE568(v15, v10);
  (v10[20])();

  [v15 setContentMode_];
  v16 = [v5 visualStylingProviderForCategory_];
  if (a3)
  {
    v17 = (v10[22])();
    v18 = [v5 isSelected];
    v19 = v18;
    if (v16)
    {
      if (v18)
      {
        v20 = v17;
        v61 = v16;
        v21 = v16;
        v22 = sub_1D16CC494();
        v69 = sub_1D16BB9E8;
        v70 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_1D16BBB64;
        v68 = &block_descriptor_88;
        v62 = a2;
        v23 = _Block_copy(&aBlock);

        [v21 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];
        sub_1D16C2904(0xD000000000000014, 0x80000001D16D3E90, 1);

        v16 = v61;
        v24 = v23;
        a2 = v62;
        _Block_release(v24);
      }

      else
      {
        v69 = sub_1D16BB9E8;
        v70 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_1D16BBB64;
        v68 = &block_descriptor_91;
        v35 = _Block_copy(&aBlock);
        v22 = v17;
        v36 = v16;

        [v36 automaticallyUpdateView:v22 withStyle:0 andObserverBlock:v35];

        _Block_release(v35);
      }
    }

    else
    {
      if (v18)
      {
        v31 = 0x80000001D16D3E90;
      }

      else
      {
        v31 = 0;
      }

      if (v18)
      {
        v32 = 0xD000000000000014;
      }

      else
      {
        v32 = 0;
      }

      sub_1D16C2904(v32, v31, v19);
    }

    v37 = (v10[23])();
    v38 = [v5 isSelected];
    if (v38)
    {
      v39 = 0xD000000000000016;
    }

    else
    {
      v39 = 1;
    }

    if (v38)
    {
      v40 = 0x80000001D16D3E70;
    }

    else
    {
      v40 = 0;
    }

    if (v37)
    {
      if (v16)
      {
        if (v38)
        {
          v41 = v37;
          v42 = a2;
          v43 = v16;
          v44 = v41;
          v45 = sub_1D16CC494();
          v69 = sub_1D16BB9E8;
          v70 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v66 = 1107296256;
          v67 = sub_1D16BBB64;
          v68 = &block_descriptor_82;
          v46 = _Block_copy(&aBlock);

          [v43 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];
          sub_1D16C2904(0xD000000000000016, 0x80000001D16D3E70, 1);

          a2 = v42;
          _Block_release(v46);
        }

        else
        {
          v69 = sub_1D16BB9E8;
          v70 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v66 = 1107296256;
          v67 = sub_1D16BBB64;
          v68 = &block_descriptor_85;
          v51 = _Block_copy(&aBlock);
          v52 = v37;
          v53 = v16;
          v54 = v52;

          [v53 automaticallyUpdateView:v54 withStyle:1 andObserverBlock:v51];

          _Block_release(v51);
        }
      }

      else
      {
        sub_1D16C2904(v39, v40, v38);
      }
    }

    else
    {
      sub_1D16C2904(v39, v40, v38);
    }

    v55 = v10[5];

    v55(a1, a2);
  }

  else
  {
    v25 = [v5 isSelected];
    v26 = v25;
    if (v16)
    {
      if (v25)
      {
        v27 = v15;
        v28 = v16;
        v63 = a2;
        v29 = sub_1D16CC494();
        v69 = sub_1D16BB9E8;
        v70 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_1D16BBB64;
        v68 = &block_descriptor_76;
        v30 = _Block_copy(&aBlock);

        [v28 _automaticallyUpdateView_withStyleNamed_andObserverBlock_];
        sub_1D16C2904(0xD000000000000016, 0x80000001D16D3E70, 1);

        _Block_release(v30);
        a2 = v63;
      }

      else
      {
        v69 = sub_1D16BB9E8;
        v70 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v66 = 1107296256;
        v67 = sub_1D16BBB64;
        v68 = &block_descriptor_79;
        v47 = _Block_copy(&aBlock);
        v48 = v15;
        v49 = v16;

        [v49 automaticallyUpdateView:v48 withStyle:1 andObserverBlock:v47];

        _Block_release(v47);
      }
    }

    else
    {
      if (v25)
      {
        v33 = 0x80000001D16D3E70;
      }

      else
      {
        v33 = 0;
      }

      if (v25)
      {
        v34 = 0xD000000000000016;
      }

      else
      {
        v34 = 1;
      }

      sub_1D16C2904(v34, v33, v26);
    }

    sub_1D16B55B0(a1, a2);
    (v10[8])(v50);
  }
}

uint64_t sub_1D16BE21C()
{
  v1 = sub_1D16CC1F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isLimitingTitleToSingleLineForAccessibility])
  {
    return 1;
  }

  v6 = [v0 subtitle];
  if (!v6)
  {
    return 3;
  }

  v7 = v6;
  v8 = sub_1D16CC4A4();
  v10 = v9;

  v15[0] = v8;
  v15[1] = v10;
  sub_1D16CC1E4();
  sub_1D16C2810();
  v11 = sub_1D16CC5C4();
  v13 = v12;
  (*(v2 + 8))(v4, v1);

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

id sub_1D16BE38C(char a1, char a2)
{
  v3 = v2;
  v5 = sub_1D16BF380(v2, a2);
  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v7 = *MEMORY[0x1E69DDD90];
  if (a1)
  {
    v8 = MEMORY[0x1E69DB970];
  }

  else
  {
    v8 = MEMORY[0x1E69DB978];
  }

  v9 = *v8;
  v10 = objc_opt_self();
  v11 = *MEMORY[0x1E69DB8C8];
  v12 = v7;
  result = [v10 _preferredFontDescriptorWithTextStyle_addingSymbolicTraits_design_weight_compatibleWithTraitCollection_];
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() fontWithDescriptor:result size:0.0];
    v16 = [v3 contentMetrics];
    if (!v16)
    {
      v21 = v5;
      v22 = v12;
      goto LABEL_11;
    }

    v17 = v16;
    [v16 metricsScaleFactor];
    v19 = v18;

    if (v19 >= 1.0)
    {
      v21 = v14;
      v22 = v6;
      v6 = v12;
      v14 = v5;
      goto LABEL_11;
    }

    result = [v15 _fontScaledByScaleFactor_];
    if (result)
    {
      v20 = result;

      v21 = v6;
      v22 = v12;
      v6 = v14;
      v14 = v15;
      v15 = v20;
LABEL_11:

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D16BE568(uint64_t a1, uint64_t a2)
{
  if ([v2 supportsAccessibilityContentSizeCategories] && (v4 = objc_msgSend(v2, sel_traitCollection), v5 = objc_msgSend(v4, sel_preferredContentSizeCategory), v4, LOBYTE(v4) = sub_1D16CC544(), v5, (v4 & 1) != 0))
  {
    ObjectType = swift_getObjectType();
    return (*(a2 + 112))(0, ObjectType, a2);
  }

  else
  {
    v8 = swift_getObjectType();
    (*(a2 + 112))(1, v8, a2);
    return (*(a2 + 136))(v8, a2, 0.7);
  }
}

id sub_1D16BE678()
{
  v1 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v1 == 1)
  {
    v2 = 0;
    v1 = 0;
  }

  else
  {
    v2 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels + 16];
    v3 = v2;
    v4 = v1;
  }

  v5 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v5 == 1)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels + 16];
    v7 = v6;
    v8 = v5;
  }

  v9 = [v0 subviews];
  sub_1D168EE64(0, &qword_1EC640AD8);
  v10 = sub_1D16CC4F4();

  if (v10 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D16CC6A4())
  {
    v12 = 0;
    while ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1D388E7D0](v12, v10);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_30;
      }

LABEL_17:
      if (v1 && v13 == v1)
      {

        return v1;
      }

      if (v2 && v13 == v2)
      {

        return v2;
      }

      if (v5 && v13 == v5)
      {

        return v5;
      }

      if (v6 && v13 == v6)
      {

        return v6;
      }

      ++v12;
      if (v14 == i)
      {

        goto LABEL_34;
      }
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v13 = *(v10 + 8 * v12 + 32);
    v14 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_17;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_34:
  return 0;
}

id sub_1D16BE8C8(char a1, void *a2)
{
  v5 = &selRef_ensureGaussianBlurFilter;
  if (([v2 isResizing] & 1) == 0)
  {
    v6 = sub_1D16BC804();
    v7 = [v6 countForObject_];

    if (v7 <= 0)
    {
      v5 = &selRef_removeGaussianBlurFilter;
    }
  }

  [a2 *v5];
  if (a1)
  {
    v8 = [v2 gridSizeClass];
    v9 = CCUINumberOfRowsForGridSizeClass(v8);
    v10 = CCUINumberOfColumnsForGridSizeClass(v8);
    if (v9 >= 2)
    {
      v17 = v10;
      v18 = [v2 supportsAccessibilityContentSizeCategories];
      v19 = 0.0;
      if ((v18 & 1) == 0)
      {
        v11 = 0;
        goto LABEL_37;
      }

      v20 = [v2 traitCollection];
      v21 = [v20 preferredContentSizeCategory];

      LOBYTE(v20) = sub_1D16CC544();
      v11 = 0;
      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }

      v19 = 0.0;
      if (v17 < 2)
      {
        goto LABEL_37;
      }
    }

    else if (v10 <= 1)
    {
      v11 = 0;
LABEL_19:
      v19 = 0.0;
      goto LABEL_37;
    }

    if ([v2 isExpanded])
    {
      v11 = 1;
      goto LABEL_19;
    }

    if ([v2 isEnabled])
    {
      v23 = [v2 isRedacted];
      v19 = 0.12;
      if (!v23)
      {
        v19 = 1.0;
      }
    }

    else
    {
      [v2 disabledContentAlpha];
    }

    v11 = 1;
LABEL_37:
    [a2 setAlpha_];
    result = [v2 isResizing];
    if (!result)
    {
      return result;
    }

    v25 = 0.0;
    if (v11)
    {
      return [a2 setGaussianBlurRadius_];
    }

    goto LABEL_39;
  }

  if ([v2 supportsAccessibilityContentSizeCategories] && (v12 = objc_msgSend(v2, sel_traitCollection), v13 = objc_msgSend(v12, sel_preferredContentSizeCategory), v12, LOBYTE(v12) = sub_1D16CC544(), v13, (v12 & 1) != 0))
  {
    v14 = 0;
    v15 = 0.0;
  }

  else
  {
    v16 = CCUINumberOfRowsForGridSizeClass([v2 gridSizeClass]);
    v15 = 0.0;
    if (v16 < 2)
    {
      v14 = 0;
    }

    else if ([v2 isExpanded])
    {
      v14 = 1;
      v15 = 0.0;
    }

    else
    {
      if ([v2 isEnabled])
      {
        v22 = [v2 isRedacted];
        v15 = 0.12;
        if (!v22)
        {
          v15 = 1.0;
        }
      }

      else
      {
        [v2 disabledContentAlpha];
      }

      v14 = 1;
    }
  }

  [a2 setAlpha_];
  result = [v2 isResizing];
  if (result)
  {
    v25 = 0.0;
    if (v14)
    {
      return [a2 setGaussianBlurRadius_];
    }

LABEL_39:
    v26 = [v2 traitCollection];
    sub_1D16B3D94();
    sub_1D16CC534();

    v25 = v27;
    if (v28 == 2)
    {
      v25 = 0.0;
    }

    return [a2 setGaussianBlurRadius_];
  }

  return result;
}

uint64_t sub_1D16BEC60(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D16C28F8;
  *(v7 + 24) = v6;
  v11[4] = sub_1D16B38E4;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D16C3318;
  v11[3] = &block_descriptor_73;
  v8 = _Block_copy(v11);

  v9 = a1;

  [v5 performWithoutAnimation_];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_1D16BEE04(uint64_t a1, uint64_t a2, id a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong blurPocketRemovalAnimationGeneration] == a3 && (objc_msgSend(v5, sel_isResizing) & 1) == 0 && (v6 = OBJC_IVAR___CCUIControlTemplateView_blurPocket, *&v5[OBJC_IVAR___CCUIControlTemplateView_blurPocket]))
    {

      sub_1D16BEEC4();

      *&v5[v6] = 0;
    }

    else
    {
    }
  }
}

uint64_t sub_1D16BEEC4()
{
  v1 = v0[5];
  if (v1)
  {
    [v1 removeFromSuperlayer];
    v2 = v0[5];
  }

  else
  {
    v2 = 0;
  }

  v0[5] = 0;

  v3 = v0[8];
  if (v3)
  {
    [v3 removeFromSuperlayer];
    v4 = v0[8];
  }

  else
  {
    v4 = 0;
  }

  v0[8] = 0;

  v5 = v0[6];
  v0[6] = 0;

  v6 = v0[7];
  v0[7] = 0;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D16BEF5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1D16BEFB0()
{
  [v0 setIsLimitingTitleToSingleLineForAccessibility_];
  sub_1D16B5288(&selRef_title, sub_1D16BD504, sub_1D16BD44C);
  sub_1D16B5288(&selRef_subtitle, sub_1D16BD740, sub_1D16BD698);
  v1 = &v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  v2 = *&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
  if (v2 != 1)
  {
    v3 = *(v1 + 1);
    v4 = *(v1 + 2);
    sub_1D16C2014(*&v0[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v3, v4);
    v5 = v2;
    if (v2)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = sub_1D16BE38C(1, 1);
      (*(v3 + 16))(v8, ObjectType, v3);
      sub_1D16BE568(v6, v3);
    }

    sub_1D168E910(v2, v3, v4);
  }

  v9 = &v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  v10 = *&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
  if (v10 != 1)
  {
    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    sub_1D16C2014(*&v0[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v11, v12);
    v13 = v10;
    if (v10)
    {
      v14 = v13;
      v15 = swift_getObjectType();
      v16 = sub_1D16BE38C(1, 0);
      (*(v11 + 16))(v16, v15, v11);
      sub_1D16BE568(v14, v11);
    }

    sub_1D168E910(v10, v11, v12);
  }

  v17 = *v1;
  if (*v1 != 1)
  {
    v18 = *(v1 + 1);
    v19 = *(v1 + 2);
    v20 = *(v1 + 3);
    sub_1D16C2014(*v1, v18, v19);
    v21 = v19;
    if (v19)
    {
      v22 = v21;
      v23 = swift_getObjectType();
      v24 = sub_1D16BE38C(0, 1);
      (*(v20 + 16))(v24, v23, v20);
      sub_1D16BE568(v22, v20);
    }

    sub_1D168E910(v17, v18, v19);
  }

  v25 = *v9;
  if (*v9 != 1)
  {
    v26 = *(v9 + 1);
    v27 = *(v9 + 2);
    v28 = *(v9 + 3);
    sub_1D16C2014(*v9, v26, v27);
    v29 = v27;
    if (v27)
    {
      v30 = v29;
      v31 = swift_getObjectType();
      v32 = sub_1D16BE38C(0, 0);
      (*(v28 + 16))(v32, v31, v28);
      sub_1D16BE568(v30, v28);
    }

    sub_1D168E910(v25, v26, v27);
  }

  return [v0 setNeedsLayout];
}

id sub_1D16BF380(void *a1, char a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (![a1 supportsAccessibilityContentSizeCategories] || (v6 = objc_msgSend(a1, sel_traitCollection), v7 = objc_msgSend(v6, sel_preferredContentSizeCategory), v6, LOBYTE(v6) = sub_1D16CC544(), v7, (v6 & 1) == 0))
  {
    v8 = MEMORY[0x1E69DDC58];
    if ((a2 & 1) == 0)
    {
      v8 = MEMORY[0x1E69DDC50];
    }

    v9 = *v8;
    v10 = sub_1D16CC554();
    if (v10)
    {
      v11 = v5;
    }

    else
    {
      v11 = v9;
    }

    if (v10)
    {
      v5 = v9;
    }
  }

  return v5;
}

id sub_1D16BF4E4(id result)
{
  v2 = v1[OBJC_IVAR___CCUIControlTemplateView_isLimitingTitleToSingleLineForAccessibility];
  v1[OBJC_IVAR___CCUIControlTemplateView_isLimitingTitleToSingleLineForAccessibility] = result;
  if (v2 != (result & 1))
  {
    v3 = v1;
    v4 = sub_1D16BE21C();
    v5 = &v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    v6 = *&v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels];
    if (v6 != 1)
    {
      v7 = *(v5 + 1);
      v8 = *(v5 + 2);
      sub_1D16C2014(*&v1[OBJC_IVAR___CCUIControlTemplateView_horizontalLayoutLabels], v7, v8);
      v9 = v6;
      if (v6)
      {
        v10 = v9;
        ObjectType = swift_getObjectType();
        (*(v7 + 88))(v4, ObjectType, v7);
      }

      sub_1D168E910(v6, v7, v8);
    }

    v12 = &v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    v13 = *&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels];
    if (v13 != 1)
    {
      v14 = *(v12 + 1);
      v15 = *(v12 + 2);
      sub_1D16C2014(*&v3[OBJC_IVAR___CCUIControlTemplateView_verticalLayoutLabels], v14, v15);
      v16 = v13;
      if (v13)
      {
        v17 = v16;
        v18 = swift_getObjectType();
        (*(v14 + 88))(v4, v18, v14);
      }

      sub_1D168E910(v13, v14, v15);
    }

    return [v3 setNeedsLayout];
  }

  return result;
}

id sub_1D16BF66C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtCE18ControlCenterUIKitCSo23CCUIControlTemplateViewP33_879E0E7CB08486FFF84F986CA934EC6922ButtonGlyphWrapperView_wrappedView] = a1;
  v4 = a1;
  [v4 bounds];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, sel_initWithFrame_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641630);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D16D1ED0;
  *(v6 + 56) = sub_1D168EE64(0, &qword_1EC640AD8);
  *(v6 + 32) = v4;
  v7 = v5;
  v8 = v4;
  v9 = v7;
  v10 = sub_1D16CC4E4();

  [v9 setAutomationElements_];

  [v9 addSubview_];
  return v9;
}

id sub_1D16BF8E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D16BF91C(uint64_t a1, void *a2)
{
  v4 = sub_1D16CC234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D16BEEC4();
  v83 = [a2 _shouldReverseLayoutDirection];
  v8 = [a2 layer];
  swift_unknownObjectWeakAssign();
  [a2 bounds];
  v10 = v9;
  v11 = *(a1 + 16);
  v12 = v11 * 0.5;
  v13 = -(v11 * 0.5);
  v86.m11 = 0.0;
  v86.m12 = -2.68156159e154;
  sub_1D16CC624();

  v86.m11 = -2.31584178e77;
  *&v86.m12 = 0x80000001D16D3DA0;
  sub_1D16CC224();
  v14 = sub_1D16CC214();
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x1D388E650](v14, v16);

  MEMORY[0x1D388E650](0x72646B6361623A3ELL, 0xEA0000000000706FLL);
  m11 = v86.m11;
  v18 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  [v18 setBounds_];
  [v18 setCaptureOnly_];
  v80 = *&m11;
  v19 = sub_1D16CC494();
  [v18 setGroupName_];

  v20 = sub_1D16BE678();
  v82 = a2;
  v78 = a1;
  if (v20)
  {
    v21 = v20;
    v22 = [v20 layer];
    [v8 insertSublayer:v18 below:v22];

    v23 = v8;
  }

  else
  {
    v23 = v8;
    v24 = [a2 backgroundView];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 layer];
      [v8 insertSublayer:v18 above:v26];
    }

    else
    {
      [v8 insertSublayer:v18 below:0];
    }
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
  [v27 setSourceLayer_];
  [v27 setUsesNormalizedCoordinates_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641648);
  v28 = swift_allocObject();
  v85 = xmmword_1D16D2070;
  *(v28 + 16) = xmmword_1D16D2070;
  v29 = objc_opt_self();
  v30 = v29;
  if (v83)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 1.0;
  }

  if (v83)
  {
    v13 = v11 * 0.5;
  }

  *(v28 + 32) = [v29 valueWithCGPoint_];
  *(v28 + 40) = [v30 &selRef:v31 :1.0resetPackage + 5];
  v84 = sub_1D168EE64(0, &unk_1EC641650);
  v32 = sub_1D16CC4E4();

  [v27 setSourcePoints_];

  [v27 setAppliesScale_];
  [v27 setAppliesRotation_];
  [v27 setDuration_];
  CATransform3DMakeTranslation(&v86, v13, 0.0, 0.0);
  [v18 setTransform_];
  v33 = sub_1D16CC494();
  [v18 addAnimation:v27 forKey:v33];

  sub_1D16C254C(v18, v23);
  v34 = v78;
  v35 = *(v78 + 40);
  v81 = v18;
  *(v78 + 40) = v18;

  v36 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v37 = sub_1D16CC494();

  [v36 setGroupName_];

  v38 = v36;
  [v38 setBounds_];
  [v23 addSublayer_];
  v39 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
  [v39 setSourceLayer_];
  [v39 setUsesNormalizedCoordinates_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641648);
  v40 = swift_allocObject();
  *(v40 + 16) = v85;
  v41 = objc_opt_self();
  *(v40 + 32) = [v41 valueWithCGPoint_];
  *(v40 + 40) = [v41 valueWithCGPoint_];
  v42 = sub_1D16CC4E4();

  [v39 setSourcePoints_];

  [v39 setAppliesScale_];
  [v39 setAppliesRotation_];
  [v39 setDuration_];
  CATransform3DMakeTranslation(&v86, v13, 0.0, 0.0);
  [v38 setTransform_];
  v43 = sub_1D16CC494();
  [v38 addAnimation:v39 forKey:v43];

  sub_1D16C254C(v38, v23);
  v44 = *(v34 + 64);
  *(v34 + 64) = v38;
  v79 = v38;

  v45 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v45 setBounds_];
  v46 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v46 setBounds_];
  [v45 addSublayer_];
  v47 = [objc_opt_self() blackColor];
  v48 = [v47 CGColor];

  [v46 setBackgroundColor_];
  v49 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
  v50 = v45;
  [v49 setSourceLayer_];
  [v49 setUsesNormalizedCoordinates_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641648);
  v51 = swift_allocObject();
  *(v51 + 16) = v85;
  v52 = v23;
  v53 = objc_opt_self();
  *(v51 + 32) = [v53 valueWithCGPoint_];
  *(v51 + 40) = [v53 valueWithCGPoint_];
  v54 = sub_1D16CC4E4();

  [v49 setSourcePoints_];

  [v49 setAppliesScale_];
  [v49 setAppliesRotation_];
  [v49 setDuration_];
  CATransform3DMakeTranslation(&v86, v13, 0.0, 0.0);
  [v46 setTransform_];
  v80 = "<ControlTemplateView:";
  v55 = sub_1D16CC494();
  [v46 addAnimation:v49 forKey:v55];

  sub_1D16C254C(v46, v52);
  v56 = *(v34 + 56);
  *(v34 + 56) = v46;
  v77 = v46;

  v57 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  if (qword_1EC640B80 != -1)
  {
    swift_once();
  }

  v58 = sub_1D16CC494();
  [v57 setName_];

  v59 = sub_1D16CC244();
  [v57 setValue:v59 forKey:*MEMORY[0x1E6979BA8]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC641648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D16D2080;
  *(inited + 32) = v57;
  v76 = v57;
  sub_1D16C0738(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v61 = sub_1D16CC4E4();

  [v50 setFilters_];

  [v50 setDelegate_];
  v62 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
  v63 = v79;
  [v62 setSourceLayer_];
  [v62 setUsesNormalizedCoordinates_];
  v64 = swift_allocObject();
  *(v64 + 16) = v85;
  v65 = objc_opt_self();
  *(v64 + 32) = [v65 valueWithCGPoint_];
  *(v64 + 40) = [v65 valueWithCGPoint_];
  v66 = sub_1D16CC4E4();

  [v62 setSourcePoints_];

  [v62 setAppliesScale_];
  [v62 setAppliesRotation_];
  [v62 setDuration_];
  v67 = -(v12 + (v11 + v12) * -0.5);
  if (!v83)
  {
    v67 = v12 + (v11 + v12) * -0.5;
  }

  CATransform3DMakeTranslation(&v86, v67, 0.0, 0.0);
  [v50 setTransform_];
  v68 = sub_1D16CC494();
  [v50 addAnimation:v62 forKey:v68];

  sub_1D16C254C(v50, v52);
  v69 = *(v34 + 48);
  *(v34 + 48) = v45;

  [v63 setMask_];
  v70 = *(v34 + 48);
  if (v70)
  {
    v71 = *(v34 + 24);
    if (v71 <= 0.0)
    {
      v71 = 0.0;
    }

    if (v71 <= 1.0)
    {
      v72 = v71;
    }

    else
    {
      v72 = 1.0;
    }

    v73 = v70;
    *&v74 = v72;
    [v73 setOpacity_];
  }
}

char *sub_1D16C0738(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D16CC6A4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1D16C1C38(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1D388E7D0](i, a1);
        sub_1D168EE64(0, &qword_1EC640AC0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D16C1C38((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1D16901B4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1D168EE64(0, &qword_1EC640AC0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D16C1C38((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1D16901B4(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D16C0934()
{
  MEMORY[0x1D388F430](v0 + 4);

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

void sub_1D16C098C()
{
  v1 = v0;
  sub_1D16BC878();
  if ((v2 & 1) == 0)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    if (qword_1EC640B80 != -1)
    {
      swift_once();
    }

    v4 = sub_1D16CC494();
    [v3 setName_];

    v5 = [v1 layer];
    v6 = [v5 filters];

    if (v6)
    {
      v7 = sub_1D16CC4F4();
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v15 = sub_1D168EE64(0, &qword_1EC640AC0);
    *&v14 = v3;
    sub_1D16901B4(&v14, v13);
    v8 = *(v7 + 16);
    v9 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v7;
    if (!isUniquelyReferenced_nonNull_native || v8 >= *(v7 + 24) >> 1)
    {
      v16 = sub_1D16C1944(isUniquelyReferenced_nonNull_native, v8 + 1, 1, v7);
    }

    sub_1D16C1D68(0, 0, 1, v13);
    v11 = [v1 layer];
    v12 = sub_1D16CC4E4();

    [v11 setFilters_];
  }
}

void sub_1D16C0B94(void *a1)
{
  v1 = a1;
  sub_1D16C098C();
}

void sub_1D16C0BDC()
{
  v1 = v0;
  v2 = [v0 layer];
  v3 = [v2 filters];

  v4 = MEMORY[0x1E69E7CA0];
  if (v3)
  {
    v24 = v1;
    v5 = sub_1D16CC4F4();

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v5 + 32;
      v3 = MEMORY[0x1E69E7CC0];
      v9 = &qword_1EC640AC0;
      v25 = v5;
      while (1)
      {
        if (v7 >= *(v5 + 16))
        {
          __break(1u);
          return;
        }

        sub_1D16C27B0(v8, v28);
        sub_1D16C27B0(v28, v27);
        sub_1D168EE64(0, v9);
        if (!swift_dynamicCast())
        {
          goto LABEL_20;
        }

        v10 = v6;
        v11 = v9;
        v12 = v4;
        v13 = [v26 name];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1D16CC4A4();
          v17 = v16;
        }

        else
        {
          v15 = 0;
          v17 = 0;
        }

        if (qword_1EC640B80 == -1)
        {
          if (!v17)
          {
            goto LABEL_19;
          }
        }

        else
        {
          swift_once();
          if (!v17)
          {
LABEL_19:

            v4 = v12;
            v9 = v11;
            v6 = v10;
            v5 = v25;
LABEL_20:
            sub_1D16901B4(v28, v27);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = v3;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D16C1C38(0, v3[2] + 1, 1);
              v3 = v29;
            }

            v21 = v3[2];
            v20 = v3[3];
            if (v21 >= v20 >> 1)
            {
              sub_1D16C1C38((v20 > 1), v21 + 1, 1);
              v3 = v29;
            }

            v3[2] = v21 + 1;
            sub_1D16901B4(v27, &v3[4 * v21 + 4]);
            goto LABEL_6;
          }
        }

        if (v15 == qword_1EC640B90 && v17 == *algn_1EC640B98)
        {

          v4 = v12;
          v9 = v11;
          v6 = v10;
          v5 = v25;
        }

        else
        {
          v18 = sub_1D16CC6F4();

          v4 = v12;
          v9 = v11;
          v6 = v10;
          v5 = v25;
          if ((v18 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        __swift_destroy_boxed_opaque_existential_0(v28);
LABEL_6:
        ++v7;
        v8 += 32;
        if (v6 == v7)
        {
          goto LABEL_26;
        }
      }
    }

    v3 = MEMORY[0x1E69E7CC0];
LABEL_26:

    v1 = v24;
  }

  v22 = [v1 layer];
  if (v3)
  {
    v23 = sub_1D16CC4E4();
  }

  else
  {
    v23 = 0;
  }

  [v22 setFilters_];
}

void sub_1D16C0F28(void *a1)
{
  v1 = a1;
  sub_1D16C0BDC();
}

double sub_1D16C0F70(void *a1)
{
  v1 = a1;
  v2 = sub_1D16C0FAC();

  return v2;
}

double sub_1D16C0FAC()
{
  v1 = [v0 layer];
  if (qword_1EC641298 != -1)
  {
    swift_once();
  }

  v2 = sub_1D16CC494();
  v3 = [v1 valueForKeyPath_];

  if (v3)
  {
    sub_1D16CC5D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1D16C2BE4(v8, &unk_1EC641620);
  }

  return 0.0;
}

void sub_1D16C10E0(void *a1)
{
  v4 = a1;
  v1 = [v4 layer];
  v2 = sub_1D16CC244();
  if (qword_1EC641298 != -1)
  {
    swift_once();
  }

  v3 = sub_1D16CC494();
  [v1 setValue:v2 forKeyPath:v3];
}

uint64_t sub_1D16C11C0()
{
  result = sub_1D16CC4A4();
  qword_1EC640B90 = result;
  *algn_1EC640B98 = v1;
  return result;
}

uint64_t sub_1D16C11F0()
{
  if (qword_1EC640B80 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC640B90;
  v1 = *algn_1EC640B98;

  MEMORY[0x1D388E650](v0, v1);

  MEMORY[0x1D388E650](46, 0xE100000000000000);
  v2 = sub_1D16CC4A4();
  MEMORY[0x1D388E650](v2);

  qword_1EC6413D0 = 0x2E737265746C6966;
  *algn_1EC6413D8 = 0xE800000000000000;
  return result;
}

id sub_1D16C12D4()
{
  v1 = [v0 font];

  return v1;
}

void sub_1D16C130C(void *a1)
{
  [v1 setFont_];
}