void sub_1A345574C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for PosterRenderingViewController();
  v25.receiver = v0;
  v25.super_class = v4;
  objc_msgSendSuper2(&v25, sel_viewDidLayoutSubviews);
  sub_1A34559BC();
  v5 = [objc_opt_self() standardPreferences];
  v6 = sub_1A34CD0E0();
  v7 = [v5 userHasOptedInToPreference_];

  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_salientContentRectangleDebugBorder];
    if (v8)
    {
      v9 = &v0[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_layoutPreferences];
      if (v0[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_layoutPreferences + 32] == 1)
      {
        v10 = v8;
        v11 = 0.0;
        v12 = 0.0;
        v13 = 0.0;
        v14 = 0.0;
      }

      else
      {
        v16 = v9[2];
        v15 = v9[3];
        v18 = *v9;
        v17 = v9[1];
        v10 = v8;
        v27.origin.x = 0.0;
        v27.origin.y = 0.0;
        v27.size.width = 0.0;
        v27.size.height = 0.0;
        v26.origin.x = v18;
        v26.origin.y = v17;
        v26.size.width = v16;
        v26.size.height = v15;
        v19 = CGRectEqualToRect(v26, v27);
        if (v19)
        {
          v11 = 0.0;
        }

        else
        {
          v11 = v18;
        }

        if (v19)
        {
          v12 = 0.0;
        }

        else
        {
          v12 = v17;
        }

        if (v19)
        {
          v13 = 0.0;
        }

        else
        {
          v13 = v16;
        }

        if (v19)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = v15;
        }
      }

      [v10 setFrame_];
    }

    v20 = sub_1A34CD4A0();
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    sub_1A34CD450();
    v21 = v0;
    v22 = sub_1A34CD440();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v21;
    sub_1A32C0B38(0, 0, v3, &unk_1A34F8D60, v23);
  }
}

void sub_1A34559BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v31 - v2;
  if (sub_1A3454D78())
  {
    v4 = &v0[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_layoutPreferences];
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if ((v0[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_layoutPreferences + 32] & 1) == 0)
    {
      v7 = v4[2];
      v8 = v4[3];
      v5 = *v4;
      v6 = v4[1];
      v37.origin.x = 0.0;
      v37.origin.y = 0.0;
      v37.size.width = 0.0;
      v37.size.height = 0.0;
      v34.origin.x = *v4;
      v34.origin.y = v6;
      v34.size.width = v7;
      v34.size.height = v8;
      if (CGRectEqualToRect(v34, v37))
      {
        v5 = 0.0;
        v6 = 0.0;
        v7 = 0.0;
        v8 = 0.0;
      }
    }

    v9 = OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_renderingViewController;
    v10 = *&v0[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_renderingViewController];
    if (v10)
    {
      [v10 salientContentRectangle];
      v38.origin.x = v11;
      v38.origin.y = v12;
      v38.size.width = v13;
      v38.size.height = v14;
      v35.origin.x = v5;
      v35.origin.y = v6;
      v35.size.width = v7;
      v35.size.height = v8;
      if (!CGRectEqualToRect(v35, v38))
      {
        v15 = *&v0[v9];
        if (v15)
        {
          if (*(v4 + 32) == 1)
          {
            v32 = v15;
            v16 = 0.0;
            v17 = 0.0;
            v18 = 0.0;
            v19 = 0.0;
          }

          else
          {
            v26 = v4[2];
            v25 = v4[3];
            v28 = *v4;
            v27 = v4[1];
            v32 = v15;
            v39.origin.x = 0.0;
            v39.origin.y = 0.0;
            v39.size.width = 0.0;
            v39.size.height = 0.0;
            v36.origin.x = v28;
            v36.origin.y = v27;
            v36.size.width = v26;
            v36.size.height = v25;
            v29 = CGRectEqualToRect(v36, v39);
            if (v29)
            {
              v16 = 0.0;
            }

            else
            {
              v16 = v28;
            }

            if (v29)
            {
              v17 = 0.0;
            }

            else
            {
              v17 = v27;
            }

            if (v29)
            {
              v18 = 0.0;
            }

            else
            {
              v18 = v26;
            }

            if (v29)
            {
              v19 = 0.0;
            }

            else
            {
              v19 = v25;
            }
          }

          [v32 setSalientContentRectangle_];
          v30 = v32;
        }
      }
    }
  }

  else
  {
    v20 = sub_1A34CD4A0();
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    sub_1A34CD450();
    v21 = v0;
    v22 = sub_1A34CD440();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v21;
    sub_1A32C0B38(0, 0, v3, &unk_1A34F8D28, v23);
  }
}

uint64_t sub_1A3455C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[13] = sub_1A34CD450();
  v4[14] = sub_1A34CD440();
  v5 = swift_task_alloc();
  v4[15] = v5;
  *v5 = v4;
  v5[1] = sub_1A3455D28;

  return sub_1A34562BC((v4 + 7));
}

uint64_t sub_1A3455D28()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  *(v1 + 128) = *(v1 + 56);
  *(v1 + 144) = v2;
  v4 = sub_1A34CD3E0();
  *(v1 + 160) = v4;
  *(v1 + 168) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3455E78, v4, v3);
}

uint64_t sub_1A3455E78()
{
  v1 = 0uLL;
  v2 = 0uLL;
  if ((*(v0 + 88) & 1) == 0)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 144);
  }

  *(v0 + 176) = v1;
  *(v0 + 192) = v2;
  *(v0 + 208) = sub_1A34CD440();
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  *v3 = v0;
  v3[1] = sub_1A3455F34;

  return sub_1A34562BC(v0 + 16);
}

uint64_t sub_1A3455F34()
{

  v1 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A3456070, v1, v0);
}

uint64_t sub_1A3456070()
{

  v1 = 0.0;
  if ((*(v0 + 48) & 1) == 0)
  {
    v2 = *(v0 + 24);
    rect = *(v0 + 16);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 96) + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_layoutPreferences;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    if ((*(v5 + 32) & 1) == 0)
    {
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      v12 = *v5;
      v13 = *(v5 + 8);
      v25.origin.x = 0.0;
      v25.origin.y = 0.0;
      v25.size.width = 0.0;
      v25.size.height = 0.0;
      v23.origin.x = *v5;
      v23.origin.y = v13;
      v23.size.width = v11;
      v23.size.height = v10;
      v14 = CGRectEqualToRect(v23, v25);
      v7 = 0.0;
      v8 = 0.0;
      v9 = 0.0;
      if (!v14)
      {
        v6 = v12;
        v7 = v13;
        v8 = v11;
        v9 = v10;
      }
    }

    v15 = v6;
    MidY = CGRectGetMidY(*(&v7 - 1));
    v24.origin.x = rect;
    v24.origin.y = v2;
    v24.size.width = v3;
    v24.size.height = v4;
    v17 = MidY - CGRectGetMidY(v24);
    if (v17 > 0.0)
    {
      v17 = 0.0;
    }

    v1 = round(v17);
  }

  *(v0 + 224) = v1;
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1A34561B8, v18, v19);
}

uint64_t sub_1A34561B8()
{
  v1 = *(v0 + 12);

  v2 = *(v1 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_shiftedFaceRectangleDebugBorder);
  if (v2)
  {
    v3 = v0[28];
    v5 = v0[24];
    v4 = v0[25];
    v7 = v0[22];
    v6 = v0[23];
    v8 = v2;
    v12.origin.x = v7;
    v12.origin.y = v6;
    v12.size.width = v5;
    v12.size.height = v4;
    v13 = CGRectOffset(v12, 0.0, v3);
    [v8 setFrame_];
  }

  else
  {
    v5 = v0[24];
    v4 = v0[25];
    v7 = v0[22];
    v6 = v0[23];
  }

  [*(*(v0 + 12) + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_faceRectangleDebugBorder) setFrame_];
  v9 = *(v0 + 1);

  return v9();
}

uint64_t sub_1A34562BC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = sub_1A34CD450();
  v2[10] = sub_1A34CD440();
  v3 = swift_task_alloc();
  v2[11] = v3;
  *v3 = v2;
  v3[1] = sub_1A3456374;

  return sub_1A34588DC((v2 + 2));
}

uint64_t sub_1A3456374()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  *(v1 + 96) = *(v1 + 16);
  *(v1 + 112) = v2;
  *(v1 + 49) = *(v1 + 48);
  v4 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A34564C8, v4, v3);
}

id sub_1A34564C8()
{
  v1 = *(v0 + 16);
  if ((*(v0 + 48) & 1) == 0)
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 64);
    v9 = sub_1A3457C50();
    v11 = v10;
    result = [v8 view];
    if (result)
    {
      v13 = result;
      v14 = *(v0 + 64);
      [result bounds];
      v16 = v15;
      v18 = v17;

      result = [v14 view];
      if (result)
      {
        v19 = result;

        v20 = v16 / v9;
        v21 = v18 * -0.167;
        if (v18 * -0.167 < 0.0)
        {
          v21 = 0.0;
        }

        v22 = (v18 - v21) / (v11 + v11 * 0.167);
        if (v20 <= v22)
        {
          v20 = v22;
        }

        v33 = v20;
        [v19 bounds];
        v24 = v23;
        v26 = v25;

        v27 = sub_1A3477278(v9, v11, v24, v26, 0.0);
        v35.origin.x = v1;
        v35.origin.y = v5;
        v35.size.width = v6;
        v35.size.height = v7;
        Width = CGRectGetWidth(v35);
        v36.origin.x = v1;
        v36.origin.y = v5;
        v36.size.width = v6;
        v36.size.height = v7;
        Height = CGRectGetHeight(v36);
        v2 = 0;
        v29.f64[0] = Width;
        v29.f64[1] = Height;
        v3 = vmulq_n_f64(v29, v33);
        *&v4 = v1 * v33 + v27;
        *(&v4 + 1) = v5 * v33;
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v2 = *(v0 + 49);
  v4 = *(v0 + 96);
  v3 = *(v0 + 112);
LABEL_10:
  v30 = *(v0 + 56);
  *v30 = v4;
  *(v30 + 16) = v3;
  *(v30 + 32) = v2;
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1A3456714()
{
  v1 = v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_configuration;
  v2 = *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_configuration + 16);
  v3 = objc_allocWithZone(CNUIPRSPosterConfigurationAttributes);
  v4 = v2;
  v5 = [v3 initWithCNConfiguration_];
  v6 = [v5 extensionIdentifier];
  if (!v6)
  {

    goto LABEL_9;
  }

  v7 = v6;
  v8 = sub_1A34CD110();
  v10 = v9;

  if (v8 != 0xD00000000000002ELL || 0x80000001A350EED0 != v10)
  {
    v12 = sub_1A34CDE30();

    if (v12)
    {
      goto LABEL_11;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v13 = [objc_allocWithZone(CNUIPhotosPosterConfigurationReader) initWithPosterConfiguration_];
LABEL_12:
  *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photosPosterConfigurationReader) = v13;

  return MEMORY[0x1EEE66BB8]();
}

void sub_1A3456864()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v56 - v3;
  sub_1A345775C();
  if ((sub_1A3454D78() & 1) == 0)
  {
    v15 = sub_1A34CD4A0();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    sub_1A34CD450();
    v16 = v0;
    v17 = sub_1A34CD440();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v16;
    sub_1A32C0B38(0, 0, v4, &unk_1A34F8D08, v18);

LABEL_21:
    sub_1A34559BC();
    return;
  }

  v5 = *&v0[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_configuration + 16];
  v6 = objc_allocWithZone(MEMORY[0x1E695CD58]);
  v7 = v5;
  v8 = [v6 init];
  v9 = [objc_allocWithZone(CNUIPRUISIncomingCallPosterContext) initWithContact:v8 showName:0];

  v10 = 0.0;
  if (sub_1A3454D78())
  {
    v11 = &v1[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_layoutPreferences];
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    if ((v1[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_layoutPreferences + 32] & 1) == 0)
    {
      v13 = v11[2];
      v14 = v11[3];
      v10 = *v11;
      v12 = v11[1];
      v58.origin.x = 0.0;
      v58.origin.y = 0.0;
      v58.size.width = 0.0;
      v58.size.height = 0.0;
      v57.origin.x = *v11;
      v57.origin.y = v12;
      v57.size.width = v13;
      v57.size.height = v14;
      if (CGRectEqualToRect(v57, v58))
      {
        v10 = 0.0;
        v12 = 0.0;
        v13 = 0.0;
        v14 = 0.0;
      }
    }
  }

  else
  {
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  v20 = [objc_allocWithZone(CNUIPRUISPosterRenderingViewController) initWithConfiguration:v7 context:v9 boundingShape:-1 salientContentRectangle:{v10, v12, v13, v14}];

  [v20 setDelegate_];
  [v20 setShowsContentWhenReady_];
  v21 = *&v1[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_renderingViewController];
  *&v1[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_renderingViewController] = v20;
  v22 = v20;

  v23 = v22;
  [v23 willMoveToParentViewController_];
  [v1 addChildViewController_];
  v24 = [v1 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v23 view];
  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v26;
  [v25 addSubview_];

  [v23 didMoveToParentViewController_];
  v28 = [v23 view];

  if (!v28)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v28 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A34E5180;
  v30 = [v23 view];

  if (!v30)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = [v30 topAnchor];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(v29 + 32) = v35;
  v36 = [v23 view];

  if (!v36)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v37 = [v36 leadingAnchor];

  v38 = [v1 view];
  if (!v38)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v37 constraintEqualToAnchor_];
  *(v29 + 40) = v41;
  v42 = [v23 view];

  if (!v42)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v43 = [v42 trailingAnchor];

  v44 = [v1 view];
  if (!v44)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v45 = v44;
  v46 = [v44 trailingAnchor];

  v47 = [v43 constraintEqualToAnchor_];
  *(v29 + 48) = v47;
  v48 = [v23 view];

  if (!v48)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v49 = [v48 bottomAnchor];

  v50 = [v1 view];
  if (v50)
  {
    v51 = v50;
    v52 = objc_opt_self();
    v53 = [v51 bottomAnchor];

    v54 = [v49 constraintEqualToAnchor_];
    *(v29 + 56) = v54;
    sub_1A31EC194(0, &qword_1EB0C0198);
    v55 = sub_1A34CD350();

    [v52 activateConstraints_];

    goto LABEL_21;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1A3456F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_1A34CD450();
  v4[5] = sub_1A34CD440();
  v4[6] = sub_1A34CD440();
  v6 = sub_1A34CD3E0();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A3456FF4, v6, v5);
}

uint64_t sub_1A3456FF4()
{
  v1 = v0[3];
  v2 = sub_1A34CD440();
  v0[9] = v2;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBC60);
  *v4 = v0;
  v4[1] = sub_1A3457110;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v2, v6, 0x616D496F746F6870, 0xEC00000029286567, sub_1A345941C, v3, v5);
}

uint64_t sub_1A3457110()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A3457270, v3, v2);
}

uint64_t sub_1A3457270()
{

  *(v0 + 96) = *(v0 + 16);
  v2 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A34572FC, v2, v1);
}

id sub_1A34572FC()
{
  v1 = v0[12];
  if (!v1)
  {

    goto LABEL_9;
  }

  v2 = v0[3];
  v3 = objc_allocWithZone(type metadata accessor for PosterImageView());
  v4 = v1;
  v5 = [v3 initWithFrame_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  v7 = sub_1A3476B34();
  [v7 setImage_];

  v8 = v5;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = sub_1A34CD0E0();
  [v8 setAccessibilityIdentifier_];

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  v38 = v4;
  v12 = v0[3];
  [result addSubview_];

  v13 = *&v12[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photoImageView];
  *&v12[OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photoImageView] = v8;
  v14 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A34E5180;
  v16 = [v14 topAnchor];
  result = [v12 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = result;
  v18 = v0[3];
  v19 = [result topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v20;
  v21 = [v14 leadingAnchor];
  result = [v18 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = result;
  v23 = v0[3];
  v24 = [result leadingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v15 + 40) = v25;
  v26 = [v14 trailingAnchor];
  result = [v23 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = result;
  v28 = v0[3];
  v29 = [result trailingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v15 + 48) = v30;
  v31 = [v14 bottomAnchor];

  result = [v28 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v32 = result;

  v33 = objc_opt_self();
  v34 = [v32 bottomAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(v15 + 56) = v35;
  sub_1A31EC194(0, &qword_1EB0C0198);
  v36 = sub_1A34CD350();

  [v33 activateConstraints_];

LABEL_9:
  v37 = v0[1];

  return v37();
}

void sub_1A345775C()
{
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1A3457858(0);
  v1 = OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_renderingViewController;
  v2 = *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_renderingViewController);
  if (!v2)
  {
    goto LABEL_7;
  }

  [v2 setDelegate_];
  v3 = *(v0 + v1);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [v3 view];
  if (!v4)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 removeFromSuperview];

  v6 = *(v0 + v1);
  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  [v6 removeFromParentViewController];
  v7 = *(v0 + v1);
LABEL_8:
  *(v0 + v1) = 0;

  v8 = OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photoImageView;
  v9 = *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photoImageView);
  if (v9)
  {
    [v9 removeFromSuperview];
    v9 = *(v0 + v8);
  }

  *(v0 + v8) = 0;
}

uint64_t sub_1A3457858(char a1)
{
  v2 = sub_1A34CCE90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34CCED0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A31EC194(0, &qword_1ED854B50);
  v10 = sub_1A34CD750();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1A3459354;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A32A5AB4;
  aBlock[3] = &block_descriptor_25;
  v13 = _Block_copy(aBlock);

  sub_1A34CCEB0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A328B624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
  sub_1A328B67C();
  sub_1A34CD960();
  MEMORY[0x1A58EEF80](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

id sub_1A3457B40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterRenderingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1A3457C50()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photosPosterConfigurationReader);
  if (!v1)
  {
    if (qword_1EB0C4AA0 != -1)
    {
      swift_once();
    }

    v5 = sub_1A34CA250();
    __swift_project_value_buffer(v5, qword_1EB0EDEB8);
    v6 = sub_1A34CA230();
    v7 = sub_1A34CD640();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_18;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "photosPosterConfigurationReader is unexpectedly nil";
    goto LABEL_17;
  }

  [v1 visiblePreviewImageFrame];
  if (v2 <= 0.0)
  {
    if (qword_1EB0C4AA0 != -1)
    {
      swift_once();
    }

    v10 = sub_1A34CA250();
    __swift_project_value_buffer(v10, qword_1EB0EDEB8);
    v6 = sub_1A34CA230();
    v7 = sub_1A34CD640();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_18;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "visiblePreviewImageSize width is unexpectedly zero";
    goto LABEL_17;
  }

  if (v3 > 0.0)
  {
    return v2;
  }

  if (qword_1EB0C4AA0 != -1)
  {
    swift_once();
  }

  v11 = sub_1A34CA250();
  __swift_project_value_buffer(v11, qword_1EB0EDEB8);
  v6 = sub_1A34CA230();
  v7 = sub_1A34CD640();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "visiblePreviewImageSize height is unexpectedly zero";
LABEL_17:
    _os_log_impl(&dword_1A31E6000, v6, v7, v9, v8, 2u);
    MEMORY[0x1A58F1010](v8, -1, -1);
  }

LABEL_18:

  return 393.0;
}

uint64_t sub_1A3457E98(uint64_t a1, void *a2)
{
  v23 = a1;
  v24 = a2;
  v26 = sub_1A34CCE90();
  v29 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A34CCED0();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBC68);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = sub_1A34CCEA0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A31EC194(0, &qword_1ED854B50);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7F88], v10);
  v14 = sub_1A34CD790();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 16))(v9, v23, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 16) = v24;
  (*(v7 + 32))(v16 + v15, v9, v6);
  aBlock[4] = sub_1A3459424;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A32A5AB4;
  aBlock[3] = &block_descriptor_41;
  v18 = _Block_copy(aBlock);
  v19 = v17;
  sub_1A34CCEB0();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1A328B624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
  sub_1A328B67C();
  v21 = v25;
  v20 = v26;
  sub_1A34CD960();
  MEMORY[0x1A58EEF80](0, v5, v21, v18);
  _Block_release(v18);

  (*(v29 + 8))(v21, v20);
  (*(v27 + 8))(v5, v28);
}

uint64_t sub_1A34582C0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photosPosterConfigurationReader);
  if (v1 && (v2 = [v1 visiblePreviewImage]) != 0)
  {
    v3 = v2;
  }

  else
  {
    if (qword_1EB0C4AA0 != -1)
    {
      swift_once();
    }

    v4 = sub_1A34CA250();
    __swift_project_value_buffer(v4, qword_1EB0EDEB8);
    v5 = sub_1A34CA230();
    v6 = sub_1A34CD640();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1A31E6000, v5, v6, "photoImage is unexpectedly nil", v7, 2u);
      MEMORY[0x1A58F1010](v7, -1, -1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBC68);
  return sub_1A34CD400();
}

uint64_t sub_1A3458400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = sub_1A34CD450();
  v4[9] = sub_1A34CD440();
  v4[10] = sub_1A34CD440();
  v5 = swift_task_alloc();
  v4[11] = v5;
  *v5 = v4;
  v5[1] = sub_1A34584C0;

  return sub_1A34562BC((v4 + 2));
}

uint64_t sub_1A34584C0()
{

  v1 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A34585FC, v1, v0);
}

uint64_t sub_1A34585FC()
{

  v1 = 0.0;
  if ((*(v0 + 48) & 1) == 0)
  {
    v2 = *(v0 + 24);
    rect = *(v0 + 16);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 56) + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_layoutPreferences;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    if ((*(v5 + 32) & 1) == 0)
    {
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      v12 = *v5;
      v13 = *(v5 + 8);
      v25.origin.x = 0.0;
      v25.origin.y = 0.0;
      v25.size.width = 0.0;
      v25.size.height = 0.0;
      v23.origin.x = *v5;
      v23.origin.y = v13;
      v23.size.width = v11;
      v23.size.height = v10;
      v14 = CGRectEqualToRect(v23, v25);
      v7 = 0.0;
      v8 = 0.0;
      v9 = 0.0;
      if (!v14)
      {
        v6 = v12;
        v7 = v13;
        v8 = v11;
        v9 = v10;
      }
    }

    v15 = v6;
    MidY = CGRectGetMidY(*(&v7 - 1));
    v24.origin.x = rect;
    v24.origin.y = v2;
    v24.size.width = v3;
    v24.size.height = v4;
    v17 = MidY - CGRectGetMidY(v24);
    if (v17 > 0.0)
    {
      v17 = 0.0;
    }

    v1 = round(v17);
  }

  *(v0 + 96) = v1;
  v19 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A3458760, v19, v18);
}

uint64_t sub_1A3458760()
{
  v1 = v0[12];

  if ((~v1 & 0x7FF0000000000000) != 0 || (v1 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v3 = *(v0[7] + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photoImageView);
    if (!v3)
    {
      goto LABEL_15;
    }

    v4 = v0[12];
    goto LABEL_14;
  }

  if (qword_1EB0C4AA0 != -1)
  {
    swift_once();
  }

  v5 = sub_1A34CA250();
  __swift_project_value_buffer(v5, qword_1EB0EDEB8);
  v6 = sub_1A34CA230();
  v7 = sub_1A34CD640();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1A31E6000, v6, v7, "verticalFaceShift is unexpectedly NaN", v8, 2u);
    MEMORY[0x1A58F1010](v8, -1, -1);
  }

  v9 = v0[7];

  v3 = *(v9 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photoImageView);
  if (v3)
  {
    v4 = 0;
LABEL_14:
    *(v3 + OBJC_IVAR____TtC14ContactsUICore15PosterImageView_contentOffset) = v4;
  }

LABEL_15:
  v10 = v0[1];

  return v10();
}

uint64_t sub_1A34588DC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  v2[10] = swift_task_alloc();
  v2[11] = sub_1A34CD450();
  v2[12] = sub_1A34CD440();
  v2[13] = sub_1A34CD440();
  v4 = sub_1A34CD3E0();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A34589BC, v4, v3);
}

uint64_t sub_1A34589BC()
{
  v1 = v0[9];
  v2 = sub_1A34CD440();
  v0[16] = v2;
  v3 = swift_task_alloc();
  v0[17] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBC60);
  *v4 = v0;
  v4[1] = sub_1A3458ADC;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 7, v2, v6, 0x616D496F746F6870, 0xEC00000029286567, sub_1A3459B04, v3, v5);
}

uint64_t sub_1A3458ADC()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1A3458C3C, v3, v2);
}

uint64_t sub_1A3458C3C()
{

  v0[19] = v0[7];
  v2 = sub_1A34CD3E0();
  v0[20] = v2;
  v0[21] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A3458CC8, v2, v1);
}

uint64_t sub_1A3458CC8()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = *(v0[9] + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photosPosterConfigurationReader);
    if (v2)
    {
      v3 = [v2 identifier];
      if (!v3)
      {
        sub_1A34CD110();
        v3 = sub_1A34CD0E0();
      }

      v0[22] = v3;
      v4 = v0[10];
      sub_1A34CD460();
      v5 = sub_1A34CD4A0();
      (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
      v6 = v1;
      v7 = v3;
      v8 = sub_1A34CD440();
      v9 = swift_allocObject();
      v10 = MEMORY[0x1E69E85E0];
      v9[2] = v8;
      v9[3] = v10;
      v9[4] = v6;
      v9[5] = v7;
      v11 = sub_1A32C114C(0, 0, v4, &unk_1A34F8D48, v9);
      v0[23] = v11;
      v12 = swift_task_alloc();
      v0[24] = v12;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8C20);
      *v12 = v0;
      v12[1] = sub_1A3458EF8;

      return MEMORY[0x1EEE6DA40](v0 + 2, v11, v13);
    }
  }

  else
  {
  }

  v14 = v0[8];

  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 1;
  v15 = v0[1];

  return v15();
}

uint64_t sub_1A3458EF8()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1A345903C, v3, v2);
}

uint64_t sub_1A345903C()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v3 = *(v0 + 64);

  *v3 = v7;
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A34590DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_1A34CD450();
  v5[10] = sub_1A34CD440();
  v7 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A3459178, v7, v6);
}

uint64_t sub_1A3459178()
{

  if (qword_1EB0C2D98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  sub_1A32A5B00(*(v0 + 64), *(v0 + 72), v0 + 16);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 48);
  *v1 = v2;
  *(v1 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

void sub_1A3459280()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_isReady + 8);
    v2 = Strong;
    sub_1A33F51A4(*(Strong + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_isReady), v1);

    if (v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CBC50);
      sub_1A34CC910();
    }
  }
}

uint64_t sub_1A3459368(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292050;

  return sub_1A3456F4C(a1, v4, v5, v6);
}

uint64_t sub_1A3459424()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBC68);
  v1 = *(v0 + 16);

  return sub_1A34582C0(v1);
}

uint64_t sub_1A3459494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292C58;

  return sub_1A3458400(a1, v4, v5, v6);
}

uint64_t sub_1A3459548(char a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(CNUIPRSPosterConfigurationAttributes) initWithCNConfiguration_];
  v4 = [v3 extensionIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A34CD110();
    v8 = v7;

    if (v6 == 0xD00000000000002ELL && 0x80000001A350EED0 == v8)
    {
    }

    else
    {
      v10 = sub_1A34CDE30();

      if ((v10 & 1) == 0)
      {
        return a1 & 1;
      }
    }

    a1 = 1;
  }

  else
  {
  }

  return a1 & 1;
}

id sub_1A3459634()
{
  v0 = sub_1A34C9F80();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_1A31EC194(0, &qword_1EB0C00D0);
  if (qword_1EB0C12E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB0ED0C8);
  (*(v1 + 16))(v3, v5, v0);
  v6 = sub_1A34CD810();
  v7 = [v6 CGImage];

  [v4 setValue:v7 forKey:*MEMORY[0x1E6979B70]];
  sub_1A31EC194(0, &unk_1EB0C00B0);
  v8 = sub_1A34CD820();
  [v4 setValue:v8 forKey:*MEMORY[0x1E6979B48]];

  v9 = sub_1A34CD820();
  [v4 setValue:v9 forKey:*MEMORY[0x1E6979B78]];

  v10 = sub_1A34C9A10();
  [v4 setValue:v10 forKey:*MEMORY[0x1E6979BA8]];

  return v4;
}

void sub_1A3459874()
{
  v1 = v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_layoutPreferences;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_isReady;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photosPosterConfigurationReader) = 0;
  *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_renderingViewController) = 0;
  *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_photoImageView) = 0;
  *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_salientContentRectangleDebugBorder) = 0;
  *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_shiftedFaceRectangleDebugBorder) = 0;
  *(v0 + OBJC_IVAR____TtC14ContactsUICore29PosterRenderingViewController_faceRectangleDebugBorder) = 0;
  sub_1A34CDC10();
  __break(1u);
}

uint64_t sub_1A3459948(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292C58;

  return sub_1A34590DC(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_32Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A3459A48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3292C58;

  return sub_1A3455C70(a1, v4, v5, v6);
}

unint64_t sub_1A3459B20()
{
  result = qword_1EB0C2790;
  if (!qword_1EB0C2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2790);
  }

  return result;
}

unint64_t sub_1A3459B78()
{
  result = qword_1EB0C2798;
  if (!qword_1EB0C2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2798);
  }

  return result;
}

double sub_1A3459BCC()
{
  xmmword_1EB0EDED0 = xmmword_1A34F8D70;
  unk_1EB0EDEE0 = xmmword_1A34F8D80;
  xmmword_1EB0EDEF0 = xmmword_1A34F8D90;
  unk_1EB0EDF00 = xmmword_1A34F8DA0;
  result = 0.0;
  xmmword_1EB0EDF10 = xmmword_1A34DF480;
  return result;
}

double sub_1A3459C0C()
{
  xmmword_1EB0EDF20 = xmmword_1A34F8D70;
  *algn_1EB0EDF30 = xmmword_1A34F8D80;
  xmmword_1EB0EDF40 = xmmword_1A34F8D90;
  unk_1EB0EDF50 = xmmword_1A34F8DA0;
  result = 0.0;
  xmmword_1EB0EDF60 = xmmword_1A34DF480;
  return result;
}

double sub_1A3459C4C()
{
  xmmword_1EB0ECF10 = xmmword_1A34F8DB0;
  unk_1EB0ECF20 = xmmword_1A34F8DC0;
  xmmword_1EB0ECF30 = xmmword_1A34F8DD0;
  unk_1EB0ECF40 = xmmword_1A34F8DE0;
  result = 0.0;
  xmmword_1EB0ECF50 = xmmword_1A34DF480;
  return result;
}

double sub_1A3459C8C()
{
  v0 = sub_1A34CB240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = sub_1A34CB0B0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34CCC40();
  v11 = sub_1A34CAFD0();
  v12 = *(v8 + 8);
  v12(v10, v7);
  if (v11)
  {
    return 180.0;
  }

  sub_1A34CCC40();
  sub_1A34CAF50();
  v12(v10, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E697F608], v0);
  sub_1A34CA5C0();
  v14 = *(v1 + 8);
  v14(v3, v0);
  v14(v6, v0);
  return 120.0;
}

__n128 sub_1A3459EB4@<Q0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1A34CB240();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = sub_1A34CB0B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34CCC40();
  v12 = sub_1A34CAFD0();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (v12)
  {
    if (qword_1EB0C4AA8 != -1)
    {
      swift_once();
    }

    v14 = &xmmword_1EB0EDED0;
  }

  else
  {
    sub_1A34CCC40();
    sub_1A34CAF50();
    v13(v11, v8);
    (*(v2 + 104))(v4, *MEMORY[0x1E697F608], v1);
    v15 = sub_1A34CA5C0();
    v16 = *(v2 + 8);
    v16(v4, v1);
    v16(v7, v1);
    if (v15)
    {
      if (qword_1EB0C4AB0 != -1)
      {
        swift_once();
      }

      v14 = &xmmword_1EB0EDF20;
    }

    else
    {
      if (qword_1EB0C1018 != -1)
      {
        swift_once();
      }

      v14 = &xmmword_1EB0ECF10;
    }
  }

  v17 = v14[3];
  v25 = v14[2];
  v26 = v17;
  v27 = v14[4];
  v18 = v14[1];
  v23 = *v14;
  v24 = v18;
  v19 = v22;
  *(v22 + 32) = v25;
  *(v19 + 48) = v17;
  *(v19 + 64) = v27;
  result = v24;
  *v19 = v23;
  *(v19 + 16) = result;
  return result;
}

uint64_t sub_1A345A1BC()
{
  v0 = sub_1A34CC450();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C93F0);
  sub_1A34CCC30();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DAA10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C93F8);
  sub_1A34CCC10();
  *(swift_allocObject() + 16) = xmmword_1A34DE7A0;
  sub_1A34CCBD0();
  sub_1A34CCC00();
  sub_1A3459C8C();
  sub_1A34CCBF0();
  sub_1A3459EB4(v6);
  sub_1A34CCBE0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  sub_1A34CC570();
  sub_1A34CCC20();

  return v4;
}

uint64_t (*EnvironmentValues.customDismissAction.getter())()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A3423DC0();
  sub_1A34CB0E0();
  v4 = v9[0];
  if (v9[0])
  {
    v5 = v9[1];
  }

  else
  {
    (*(v2 + 16))(v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
    v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v5 = swift_allocObject();
    (*(v2 + 32))(v5 + v6, v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
    v4 = sub_1A345A794;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  return sub_1A345A798;
}

uint64_t EnvironmentValues.customDismissAction.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1A3423DC0();
  return sub_1A34CB0F0();
}

uint64_t sub_1A345A6C8()
{
  v0 = sub_1A34CA7A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34CB020();
  sub_1A34CA790();
  return (*(v1 + 8))(v3, v0);
}

void (*EnvironmentValues.customDismissAction.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = sub_1A34CB0B0();
  v7 = *(v6 - 8);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v6 - 8) + 64));
  }

  v9 = v8;
  v5[9] = v8;
  v5[10] = sub_1A3423DC0();
  sub_1A34CB0E0();
  v10 = v5[2];
  if (v10)
  {
    v11 = v5[3];
  }

  else
  {
    (*(v7 + 16))(v9, v1, v6);
    v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v11 = swift_allocObject();
    (*(v7 + 32))(v11 + v12, v9, v6);
    v10 = sub_1A345AA94;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *v5 = sub_1A345AA90;
  v5[1] = v13;
  return sub_1A345A980;
}

void sub_1A345A980(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[9];
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[4] = sub_1A345AA98;
    v2[5] = v6;
    sub_1A34C9010();
    sub_1A34CB0F0();
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    v2[6] = sub_1A345AA98;
    v2[7] = v7;
    sub_1A34CB0F0();
  }

  free(v5);

  free(v2);
}

char *XPCClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = &v5[qword_1EB0CBC88];
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  v8 = v5;
  sub_1A32142B0(v7);

  return v8;
}

uint64_t XPCClient.withSynchronousHost<A>(body:errorHandler:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A34CD890();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = sub_1A32BE230();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A345B2FC;
  aBlock[3] = &block_descriptor_26;
  v15 = _Block_copy(aBlock);
  sub_1A34C9010();

  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  sub_1A34CD920();
  swift_unknownObjectRelease();
  v17 = swift_dynamicCast();
  v18 = *(v10 + 56);
  if (v17)
  {
    v18(v9, 0, 1, AssociatedTypeWitness);
    (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
    v23(v13);
    return (*(v10 + 8))(v13, AssociatedTypeWitness);
  }

  else
  {
    v18(v9, 1, 1, AssociatedTypeWitness);
    result = (*(v21 + 8))(v9, v7);
    __break(1u);
  }

  return result;
}

uint64_t sub_1A345AE4C()
{
  v0 = sub_1A345D0C8();
  sub_1A321418C(v0);
  return v0;
}

uint64_t sub_1A345AE80(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB0CBC88);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A32142B0(v6);
}

uint64_t sub_1A345AF40()
{
  v1 = sub_1A34CCE90();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A34CCED0();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[qword_1EB0CBC90];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1A345D110;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A32A5AB4;
  aBlock[3] = &block_descriptor_3;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_1A34CCEB0();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1A345D15C(&qword_1ED854650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
  sub_1A32A6864(&qword_1ED854640, &unk_1EB0C6100);
  sub_1A34CD960();
  MEMORY[0x1A58EEF80](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_1A345B1FC()
{
  (*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x58) + 24))();
  v1 = (v0 + qword_1EB0CBC88);
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = sub_1A321418C(v2);
    v4 = v2(v3);
    sub_1A32142B0(v2);
    return v4;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1A345B2FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1A34C9010();
  v4 = a2;
  v3();
}

uint64_t sub_1A345B36C()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0CBC70);
  __swift_project_value_buffer(v0, qword_1EB0CBC70);
  return sub_1A34CA240();
}

uint64_t static Logger.client.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C4AC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CA250();
  v3 = __swift_project_value_buffer(v2, qword_1EB0CBC70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A345B498@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v2 = sub_1A345D0C8();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v2 = v4;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A345D38C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a1 = v7;
  a1[1] = v6;

  return sub_1A321418C(v2);
}

uint64_t sub_1A345B52C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A345D354;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A321418C(v1);
  return sub_1A345AE80(v4, v3);
}

char *XPCClient.__allocating_init(listenerEndpoint:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return XPCClient.__allocating_init(connection:)(sub_1A345D118, v2);
}

id XPCClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *XPCClient.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v28 = *v0;
  v2 = v28;
  v29 = *MEMORY[0x1E69E7D40];
  v3 = v29;
  v4 = sub_1A34CD740();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A34CD710();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A34CCED0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = qword_1EB0CBC90;
  v30 = sub_1A328B6E0();
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1A34CDAD0();

  v36 = 0xD000000000000015;
  v37 = 0x80000001A3512750;
  v27 = *((v3 & v2) + 0x50);
  v8 = sub_1A34CE050();
  MEMORY[0x1A58EEA30](v8);

  sub_1A34CCEB0();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1A345D15C(&unk_1ED854B60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B30);
  sub_1A32A6864(&qword_1ED854B80, &unk_1EB0C5B30);
  sub_1A34CD960();
  (*(v33 + 104))(v32, *MEMORY[0x1E69E8090], v34);
  *(v0 + v31) = sub_1A34CD780();
  v9 = (v0 + qword_1EB0CBC88);
  *v9 = 0;
  v9[1] = 0;
  v10 = v0 + qword_1EB0CBC98;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = *((v29 & v28) + 0x58);
  v12 = v27;
  v13 = type metadata accessor for XPCClient();
  v38.receiver = v1;
  v38.super_class = v13;
  v14 = objc_msgSendSuper2(&v38, sel_init);
  v15 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v11;
  v17 = v12;
  v18 = ObjectType;
  v16[4] = v15;
  v16[5] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A345D1BC;
  *(v19 + 24) = v16;
  v20 = &v14[qword_1EB0CBC98];
  swift_beginAccess();
  v21 = *(v20 + 1);
  *(v20 + 1) = sub_1A3345B98;
  *(v20 + 2) = v19;
  v22 = v14;
  sub_1A34C9010();
  sub_1A32142B0(v21);

  v23 = swift_allocObject();
  v23[2] = v17;
  v23[3] = v11;
  v23[4] = v18;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1A345D1C8;
  *(v24 + 24) = v23;
  v25 = *(v20 + 3);
  *(v20 + 3) = sub_1A3340CA0;
  *(v20 + 4) = v24;
  sub_1A32142B0(v25);

  return v22;
}

void *sub_1A345BAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A34CCF40();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectUnownedLoadStrong();
  v12 = *(Strong + qword_1EB0CBC90);

  *v10 = v12;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  LOBYTE(Strong) = sub_1A34CCF60();
  (*(v8 + 8))(v10, v7);
  if (Strong)
  {
    v13 = swift_unknownObjectUnownedLoadStrong();
    v7 = sub_1A345B1FC();

    v14 = (*(a4 + 32))(a3, a4);
    [v7 setRemoteObjectInterface_];

    v15 = (*(a4 + 40))(a3, a4);
    [v7 setExportedInterface_];

    v16 = swift_unknownObjectUnownedLoadStrong();
    [v7 setExportedObject_];

    v17 = swift_allocObject();
    v18 = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = v17;
    v19[5] = a2;
    v37 = sub_1A345D3C0;
    v38 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1A32A5AB4;
    v36 = &block_descriptor_45_1;
    v20 = _Block_copy(&aBlock);

    [v7 setInterruptionHandler_];
    _Block_release(v20);
    v21 = swift_allocObject();
    v22 = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = v21;
    v23[5] = a2;
    v37 = sub_1A345D404;
    v38 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1A32A5AB4;
    v36 = &block_descriptor_52;
    v24 = _Block_copy(&aBlock);

    [v7 setInvalidationHandler_];
    _Block_release(v24);
    [v7 resume];
    if (qword_1EB0C4AC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v25 = sub_1A34CA250();
  __swift_project_value_buffer(v25, qword_1EB0CBC70);
  v26 = v7;
  v27 = sub_1A34CA230();
  v28 = sub_1A34CD660();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_1A31E6000, v27, v28, "Resuming XPC client connection: %@", v29, 0xCu);
    sub_1A32D376C(v30);
    MEMORY[0x1A58F1010](v30, -1, -1);
    MEMORY[0x1A58F1010](v29, -1, -1);
  }

  return v26;
}

uint64_t sub_1A345BF98(void *a1)
{
  if (qword_1EB0C4AC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0CBC70);
  v3 = sub_1A34CA230();
  v4 = sub_1A34CD660();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = sub_1A34CE050();
    v9 = sub_1A31EE23C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1A31E6000, v3, v4, "XPC connection interrupted for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1A58F1010](v6, -1, -1);
    MEMORY[0x1A58F1010](v5, -1, -1);
  }

  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB0))();
}

uint64_t sub_1A345C124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1A34CCE90();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A34CCED0();
  v14 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(result + qword_1EB0CBC90);
    v18 = result;
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a2;
    aBlock[4] = a6;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A32A5AB4;
    aBlock[3] = a7;
    v20 = _Block_copy(aBlock);
    v22 = v18;
    sub_1A34CCEB0();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1A345D15C(&qword_1ED854650, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
    sub_1A32A6864(&qword_1ED854640, &unk_1EB0C6100);
    sub_1A34CD960();
    MEMORY[0x1A58EEF80](0, v16, v13, v20);
    _Block_release(v20);
    (*(v11 + 8))(v13, v10);
    (*(v14 + 8))(v16, v24);
  }

  return result;
}

uint64_t sub_1A345C408(void *a1)
{
  if (qword_1EB0C4AC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0CBC70);
  v3 = sub_1A34CA230();
  v4 = sub_1A34CD660();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315138;
    v7 = sub_1A34CE050();
    v9 = sub_1A31EE23C(v7, v8, v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1A31E6000, v3, v4, "XPC connection invalidated for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1A58F1010](v6, -1, -1);
    MEMORY[0x1A58F1010](v5, -1, -1);
  }

  v10 = a1 + qword_1EB0CBC98;
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    v15 = *v10;
    v12 = *(v10 + 3);
    if (v12)
    {
      sub_1A34C9010();
      v12(&v15);
      sub_1A32142B0(v12);
    }
  }

  *v10 = 0;
  v13 = swift_endAccess();
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB0))(v13);
}

id sub_1A345C5FC(void *a1)
{
  if (qword_1EB0C4AC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0CBC70);
  v3 = a1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD660();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136315394;
    v9 = sub_1A34CE050();
    v11 = sub_1A31EE23C(v9, v10, &v14);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v12 = v3;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Resetting XPC client connection on %s: %@", v6, 0x16u);
    sub_1A32D376C(v7);
    MEMORY[0x1A58F1010](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1A58F1010](v8, -1, -1);
    MEMORY[0x1A58F1010](v6, -1, -1);
  }

  [v3 setInvalidationHandler_];
  [v3 setInterruptionHandler_];
  [v3 setExportedObject_];

  return [v3 invalidate];
}

id XPCClient.__deallocating_deinit()
{
  v1 = v0;
  v27 = *v0;
  v26 = *MEMORY[0x1E69E7D40];
  v22 = sub_1A34CCE90();
  v25 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A34CCED0();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = &v0[qword_1EB0CBC98];
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v11 = *(v7 + 2);
  v10 = *(v7 + 3);
  v12 = *(v7 + 4);
  v6[2] = v8;
  v6[3] = v9;
  v6[4] = v11;
  v6[5] = v10;
  v6[6] = v12;
  v13 = *&v1[qword_1EB0CBC90];
  aBlock[4] = sub_1A345D1D4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A32A5AB4;
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);
  v15 = v8;
  sub_1A321418C(v9);
  sub_1A321418C(v10);
  v16 = v13;
  sub_1A34C9010();
  sub_1A34CCEB0();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1A345D15C(&qword_1ED854650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
  sub_1A32A6864(&qword_1ED854640, &unk_1EB0C6100);
  v17 = v21;
  v18 = v22;
  sub_1A34CD960();
  MEMORY[0x1A58EEF80](0, v5, v17, v14);
  _Block_release(v14);

  (*(v25 + 8))(v17, v18);
  (*(v23 + 8))(v5, v24);

  v19 = type metadata accessor for XPCClient();
  v28.receiver = v1;
  v28.super_class = v19;
  return objc_msgSendSuper2(&v28, sel_dealloc);
}

uint64_t sub_1A345CBAC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v6 = *(a1 + 16);
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = v2;
      sub_1A321418C(v3);
      v3(&v6);
      sub_1A32142B0(v3);
    }

    else
    {
    }
  }

  *(a1 + 16) = 0;
  return swift_endAccess();
}

uint64_t sub_1A345CC78(uint64_t a1)
{
  sub_1A32142B0(*(a1 + qword_1EB0CBC88));
  v2 = a1 + qword_1EB0CBC98;
  v3 = *(a1 + qword_1EB0CBC98);
  v4 = *(a1 + qword_1EB0CBC98 + 8);
  v5 = *(v2 + 24);

  sub_1A32142B0(v4);

  return sub_1A32142B0(v5);
}

uint64_t sub_1A345CD04(uint64_t a1)
{
  v1 = a1 + qword_1EB0CBC98;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v6 = *v1;
    v3 = *(v1 + 24);
    if (v3)
    {
      v4 = v2;
      sub_1A321418C(v3);
      v3(&v6);
      sub_1A32142B0(v3);
    }

    else
    {
    }
  }

  *v1 = 0;
  return swift_endAccess();
}

uint64_t XPCClient.withHost(body:errorHandler:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A34CD890();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = sub_1A32BE230();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A345B2FC;
  aBlock[3] = &block_descriptor_30_0;
  v15 = _Block_copy(aBlock);
  sub_1A34C9010();

  v16 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  sub_1A34CD920();
  swift_unknownObjectRelease();
  v17 = swift_dynamicCast();
  v18 = *(v10 + 56);
  if (v17)
  {
    v18(v9, 0, 1, AssociatedTypeWitness);
    (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
    v21(v13);
    return (*(v10 + 8))(v13, AssociatedTypeWitness);
  }

  else
  {
    v18(v9, 1, 1, AssociatedTypeWitness);
    result = (*(v20 + 8))(v9, v7);
    __break(1u);
  }

  return result;
}

uint64_t sub_1A345D0C8()
{
  v1 = v0 + qword_1EB0CBC88;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A345D15C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1A345D354()
{
  result = (*(v0 + 16))(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1A345D38C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static ContactCardStyleProvider.defaultBackgroundMaterial.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C1E00 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CCC60();
  v3 = __swift_project_value_buffer(v2, qword_1EB0ED2A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static ContactCardStyleProvider.defaultLabelStyle.getter()
{
  sub_1A342EC18();

  return sub_1A34CA770();
}

uint64_t static ContactCardStyleProvider.defaultBodyStyle.getter()
{
  sub_1A342EC6C();

  return sub_1A34CA770();
}

uint64_t static ContactCardStyleProvider.defaultPrimaryButtonLabelStyle.getter()
{
  sub_1A342ECC0();

  return sub_1A34CA770();
}

uint64_t static ContactCardStyleProvider.defaultSecondaryButtonLabelStyle.getter()
{
  sub_1A3415454();

  return sub_1A34CA770();
}

uint64_t sub_1A345D6C8(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return sub_1A34C9010();
}

void sub_1A345D744()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.0;
  if (v1 == 1)
  {
    v2 = 2.0;
  }

  qword_1EB0EDF70 = *&v2;
}

uint64_t sub_1A345D7B0()
{
  result = sub_1A34CBB20();
  qword_1EB0ED298 = result;
  return result;
}

uint64_t sub_1A345D7D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86B8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  sub_1A34CBB50();
  v3 = *MEMORY[0x1E6980E28];
  v4 = sub_1A34CBB40();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_1A34CBB90();
  result = sub_1A345ECB0(v2);
  qword_1EB0ED2E8 = v6;
  return result;
}

uint64_t sub_1A345D900()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86B8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1A34CBC10();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E6980F30], v3, v5);
  v8 = sub_1A34CBB40();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_1A34CBBA0();
  sub_1A345ECB0(v2);
  (*(v4 + 8))(v7, v3);
  v9 = sub_1A34CBB30();

  qword_1EB0EDF78 = v9;
  return result;
}

uint64_t sub_1A345DAB0()
{
  result = sub_1A34CC500();
  qword_1EB0EDF80 = result;
  return result;
}

uint64_t sub_1A345DAD0()
{
  result = sub_1A34CC500();
  qword_1EB0EDF88 = result;
  return result;
}

uint64_t sub_1A345DAF0()
{
  result = sub_1A34CC500();
  qword_1EB0ED2C0 = result;
  return result;
}

uint64_t sub_1A345DB28(uint64_t a1, uint64_t *a2)
{
  sub_1A34CC500();
  v3 = sub_1A34CC540();

  *a2 = v3;
  return result;
}

uint64_t sub_1A345DB7C()
{
  result = sub_1A34CC500();
  qword_1EB0ED2D0 = result;
  return result;
}

uint64_t sub_1A345DB9C()
{
  if (qword_1EB0C1E20 != -1)
  {
    swift_once();
  }

  qword_1EB0ED2A0 = qword_1EB0ED2D0;

  return sub_1A34C9010();
}

uint64_t sub_1A345DC00()
{
  v0 = sub_1A34CCC60();
  __swift_allocate_value_buffer(v0, qword_1EB0ED2A8);
  __swift_project_value_buffer(v0, qword_1EB0ED2A8);
  sub_1A33C20FC();
  return sub_1A34CCC50();
}

uint64_t type metadata accessor for ContactCardStyleProvider.InlineActions()
{
  result = qword_1EB0C1DC0;
  if (!qword_1EB0C1DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A345DCE4()
{
  result = sub_1A34CCC60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1A345DDB0()
{
  result = [objc_opt_self() systemMidGrayColor];
  qword_1EB0ED2D8 = result;
  return result;
}

uint64_t sub_1A345DDEC()
{
  if (qword_1EB0C1E28 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0ED2D8;
  result = sub_1A34CC440();
  qword_1EB0ED2E0 = result;
  return result;
}

uint64_t sub_1A345DE48()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    result = sub_1A34CBB10();
  }

  else
  {
    result = sub_1A34CBC00();
  }

  qword_1EB0ED290 = result;
  return result;
}

uint64_t sub_1A345DEB8()
{
  v0 = sub_1A34CC670();
  __swift_allocate_value_buffer(v0, qword_1EB0ED278);
  v1 = __swift_project_value_buffer(v0, qword_1EB0ED278);
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = *(*(v0 - 8) + 104);
  v5 = MEMORY[0x1E69816E0];
  if (v3 != 1)
  {
    v5 = MEMORY[0x1E69816C0];
  }

  v6 = *v5;

  return v4(v1, v6, v0);
}

uint64_t sub_1A345DF98(uint64_t a1, int a2)
{
  v20[1] = a2;
  v3 = sub_1A34CB240();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = sub_1A34CB0B0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34CCC40();
  v14 = sub_1A34CAFD0();
  v15 = *(v11 + 8);
  v15(v13, v10);
  v21 = a1;
  if (v14 & 1) != 0 || (sub_1A34CCC40(), sub_1A34CAF50(), v15(v13, v10), (*(v4 + 104))(v6, *MEMORY[0x1E697F608], v3), v16 = sub_1A34CA5C0(), v17 = *(v4 + 8), v17(v6, v3), v17(v9, v3), (v16))
  {
    sub_1A34CC4D0();
  }

  else
  {
    sub_1A34CC500();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C93F0);
  sub_1A34CCC30();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A34DAA10;
  sub_1A34C9010();
  sub_1A34CC540();

  sub_1A34CCC40();
  sub_1A34CC560();

  v15(v13, v10);
  sub_1A34CCBA0();

  return v18;
}

uint64_t sub_1A345E30C()
{
  sub_1A34CDF20();
  sub_1A34CDF40();
  return sub_1A34CDF70();
}

uint64_t sub_1A345E380()
{
  sub_1A34CDF20();
  sub_1A34CDF40();
  return sub_1A34CDF70();
}

uint64_t sub_1A345E3C4()
{
  v0 = sub_1A34CB240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  if ((sub_1A34CAFD0() & 1) == 0)
  {
    sub_1A34CAF50();
    (*(v1 + 104))(v3, *MEMORY[0x1E697F608], v0);
    v7 = sub_1A34CA5C0();
    v8 = *(v1 + 8);
    v8(v3, v0);
    v8(v6, v0);
    if ((v7 & 1) == 0)
    {
      return sub_1A34CC500();
    }
  }

  sub_1A34CC4D0();
  v9 = sub_1A34CC540();

  return v9;
}

unint64_t sub_1A345E550()
{
  result = qword_1EB0C1340;
  if (!qword_1EB0C1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1340);
  }

  return result;
}

uint64_t sub_1A345E5A4@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_1A34CB240();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  if (sub_1A34CAFD0() & 1) != 0 || (sub_1A34CAF50(), (*(v3 + 104))(v5, *MEMORY[0x1E697F608], v2), v9 = sub_1A34CA5C0(), v10 = *(v3 + 8), v10(v5, v2), v10(v8, v2), (v9))
  {
    sub_1A34CC4D0();
  }

  else
  {
    sub_1A34CC500();
    sub_1A34CC540();
  }

  sub_1A34CC560();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  *a1 = v12;
  a1[1] = v14;
  a1[2] = v16;
  a1[3] = v18;
  return result;
}

unint64_t sub_1A345E768()
{
  result = qword_1EB0C1330;
  if (!qword_1EB0C1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1330);
  }

  return result;
}

uint64_t sub_1A345E7BC@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_1A34CB240();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  if (sub_1A34CAFD0() & 1) != 0 || (sub_1A34CAF50(), (*(v3 + 104))(v5, *MEMORY[0x1E697F608], v2), v9 = sub_1A34CA5C0(), v10 = *(v3 + 8), v10(v5, v2), v10(v8, v2), (v9))
  {
    sub_1A34CC4D0();
  }

  else
  {
    sub_1A34CC500();
  }

  sub_1A34CC560();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  *a1 = v12;
  a1[1] = v14;
  a1[2] = v16;
  a1[3] = v18;
  return result;
}

unint64_t sub_1A345E960()
{
  result = qword_1EB0C1318;
  if (!qword_1EB0C1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1318);
  }

  return result;
}

uint64_t sub_1A345E9B4()
{
  v0 = sub_1A34CB240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  if (sub_1A34CAFD0())
  {
    sub_1A34CC4D0();
    v7 = sub_1A34CC540();

    return v7;
  }

  else
  {
    sub_1A34CAF50();
    (*(v1 + 104))(v3, *MEMORY[0x1E697F608], v0);
    v9 = sub_1A34CA5C0();
    v10 = *(v1 + 8);
    v10(v3, v0);
    v10(v6, v0);
    if (v9)
    {
      sub_1A34CC4D0();
    }

    else
    {
      sub_1A34CC500();
    }

    v11 = sub_1A34CC540();

    return v11;
  }
}

uint64_t sub_1A345EB74@<X0>(void (*a1)(void)@<X3>, _DWORD *a2@<X8>)
{
  a1();
  sub_1A34CC560();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

unint64_t sub_1A345EBEC()
{
  result = qword_1EB0C1308;
  if (!qword_1EB0C1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1308);
  }

  return result;
}

uint64_t sub_1A345ECB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C86B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A345ED2C()
{
  result = qword_1EB0C12F0;
  if (!qword_1EB0C12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C12F0);
  }

  return result;
}

unint64_t sub_1A345ED84()
{
  result = qword_1EB0C12F8;
  if (!qword_1EB0C12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C12F8);
  }

  return result;
}

uint64_t sub_1A345EDE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A345EE08, 0, 0);
}

uint64_t sub_1A345EE08()
{
  sub_1A346077C(*(*(v0 + 192) + 8), *(*(v0 + 192) + 16), *(*(v0 + 192) + 24), v0 + 16);
  if (*(v0 + 32))
  {
    v1 = *(v0 + 104);

    v2 = 2;
  }

  else
  {
    if (qword_1ED854B20 != -1)
    {
      swift_once();
    }

    v1 = qword_1ED857E20;
    v2 = byte_1ED857E28;
    sub_1A31EE004(qword_1ED857E20, byte_1ED857E28);
  }

  *(v0 + 152) = *(v0 + 128);
  sub_1A31EE004(v1, v2);
  sub_1A3340250(v0 + 152, v0 + 168);
  if (qword_1ED8549E0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 184);
  v4 = byte_1ED8549E8;
  v5 = qword_1ED8549F0;
  v6 = qword_1ED8549F8;
  sub_1A31ECC9C(v1, v2);
  sub_1A335DA80(v0 + 16);
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = *(v0 + 152);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A345EFBC()
{
  v11 = v1;
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v10 = *(v0 + 128);
  v3 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v3;
  v4 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v4;
  v5 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v5;
  sub_1A34CDA40();
  sub_1A34911BC(v9, v8);
  sub_1A32F7584(v8);
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_1A345F0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a2;
  v4[38] = a4;
  v4[36] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A345F0D0, 0, 0);
}

uint64_t sub_1A345F0D0()
{
  v1 = *(v0 + 296);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 152) = 0u;
  v2 = v1;
  sub_1A34604B4(v2, v0 + 152, v0 + 16);

  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  *v3 = v0;
  v3[1] = sub_1A345F1CC;

  return sub_1A33837BC(0xD00000000000002CLL, 0x80000001A350EE80);
}

uint64_t sub_1A345F1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  v7[40] = a2;
  v7[41] = a3;
  v7[42] = a4;
  v7[43] = v4;

  if (v4)
  {
    v8 = sub_1A345F650;
  }

  else
  {
    v7[44] = a1;
    v8 = sub_1A345F2F8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A345F2F8()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[40];
  v5 = v0[37];
  v0[31] = v5;
  v0[32] = v1;
  v0[33] = v4;
  v0[34] = v2;
  v0[35] = v3;
  v6 = v5;

  v7 = v3;
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = sub_1A345F3F0;

  return sub_1A3446BB4((v0 + 31));
}

uint64_t sub_1A345F3F0(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 336);
  v9 = *(*v4 + 296);
  *(*v4 + 368) = v3;

  if (v3)
  {

    v10 = sub_1A345F6B4;
  }

  else
  {
    *(v7 + 376) = a1;
    *(v7 + 384) = a3;
    *(v7 + 145) = a2 & 1;
    v10 = sub_1A345F5B4;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1A345F5B4()
{
  v1 = *(v0 + 336);
  sub_1A335DED4(*(v0 + 376) & 0xFFFFFFFF00000001, *(v0 + 145), *(v0 + 384), *(v0 + 296), *(v0 + 288));

  sub_1A335DA80(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A345F650()
{
  sub_1A335DA80(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A345F6B4()
{
  v1 = *(v0 + 336);

  sub_1A335DA80(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A345F730(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A345F750, 0, 0);
}

uint64_t sub_1A345F750()
{
  v21 = v0;
  if (qword_1EB0C25F0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB0ED888;
  v3 = qword_1EB0C25E8;

  if (v3 != -1)
  {
    swift_once();
  }

  v20 = v2;

  v5 = &v20;
  sub_1A33B8C4C(v4);
  v6 = v20;
  v7 = *(v20 + 16);
  if (!v7)
  {

    __break(1u);
    return result;
  }

  v8 = sub_1A33886C4(v7);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(v6 + 16))
  {
    v9 = *(v0 + 24);
    v5 = *(v6 + 96 * v8 + 120);
    sub_1A34C9010();

    v10 = *MEMORY[0x1E695C328];

    if ([v9 isKeyAvailable_] && objc_msgSend(*(v0 + 24), sel_contactType) == 1 || (v11 = objc_msgSend(objc_opt_self(), sel_stringFromContact_style_, *(v0 + 24), 1002)) == 0)
    {
      v6 = 0;
      v1 = 0xE000000000000000;
    }

    else
    {
      v12 = v11;
      v6 = sub_1A34CD110();
      v1 = v13;
    }

    if (qword_1ED8549E0 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  swift_once();
LABEL_14:
  v14 = *(v0 + 16);
  v15 = byte_1ED8549E8;
  v16 = qword_1ED8549F0;
  v17 = qword_1ED8549F8;

  *v14 = v5;
  *(v14 + 8) = 2;
  *(v14 + 16) = v6;
  *(v14 + 24) = v1;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  *(v14 + 48) = v17;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1A345F9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 736) = a2;
  *(v5 + 728) = a1;
  *(v5 + 744) = *a5;
  *(v5 + 145) = *(a5 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1A345F9FC, 0, 0);
}

uint64_t sub_1A345F9FC()
{
  if (qword_1EB0C25F0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v0 = qword_1EB0ED888;
  v1 = qword_1EB0C25E8;

  if (v1 != -1)
  {
    swift_once();
  }

  v35 = (v37 + 248);
  v40 = v0;

  sub_1A33B8C4C(v2);
  v3 = v37;
  v4 = v40;
  v5 = *(v40 + 16);
  if (!v5)
  {
LABEL_21:

    v23 = (v37 + 248);
    *(v37 + 312) = 0u;
    *(v37 + 328) = 0u;
    *(v37 + 280) = 0u;
    *(v37 + 296) = 0u;
    *v35 = 0u;
    *(v37 + 264) = 0u;
    goto LABEL_23;
  }

  v6 = 0;
  v7 = (v37 + 344);
  v39 = *(v37 + 145);
  v8 = *(v37 + 744);
  v38 = v40 + 32;
  v36 = v40;
  v34 = *(v40 + 16);
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      goto LABEL_30;
    }

    v11 = (v38 + 96 * v6);
    v12 = v11[2];
    v13 = v11[3];
    v14 = v11[4];
    *(v37 + 424) = v11[5];
    v15 = v11[1];
    *v7 = *v11;
    *(v37 + 360) = v15;
    *(v37 + 392) = v13;
    *(v37 + 408) = v14;
    *(v37 + 376) = v12;
    v16 = *(v3 + 432);
    if (v39 == 2)
    {
      break;
    }

    v9 = *(v3 + 744);
    v10 = *(v3 + 145);

    sub_1A31EE004(v9, v10);
    sub_1A31ECC9C(v16, 2u);
    sub_1A31ECC9C(v9, v10);
LABEL_7:
    if (++v6 == v5)
    {
      goto LABEL_21;
    }
  }

  v17 = *(v16 + 16);
  if (v17 != *(v8 + 16))
  {
    v21 = *(v3 + 744);

    sub_1A31EE004(v21, 2u);
    sub_1A31ECC9C(v16, 2u);
    sub_1A31ECC9C(v21, 2u);
    v4 = v36;
    goto LABEL_7;
  }

  v43 = v11[2];
  v44 = v11[3];
  v45 = v11[4];
  v46 = v11[5];
  v41 = *v11;
  v42 = v11[1];
  if (v17)
  {
    v18 = *(v3 + 744);
    if (v16 != v8)
    {

      sub_1A31EE004(v18, 2u);

      sub_1A31EE004(v18, 2u);
      sub_1A3442920(v7, v3 + 440);
      v19 = 0;
      while (v19 < *(v16 + 16))
      {
        if (v19 >= *(v8 + 16))
        {
          goto LABEL_29;
        }

        sub_1A34C9010();
        sub_1A34C9010();
        v20 = sub_1A34CC460();

        if ((v20 & 1) == 0)
        {
          v3 = v37;
          v22 = *(v37 + 744);
          sub_1A3442958(v7);
          sub_1A31ECC9C(v22, 2u);

          sub_1A31ECC9C(v16, 2u);
          sub_1A31ECC9C(v22, 2u);
          v4 = v36;
          v5 = v34;
          goto LABEL_7;
        }

        if (v17 == ++v19)
        {
          v3 = v37;
          v24 = *(v37 + 744);

          sub_1A31ECC9C(v24, 2u);

          sub_1A31ECC9C(v16, 2u);
          v25 = v24;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    v18 = *(v3 + 744);
  }

  sub_1A31EE004(v18, 2u);
  sub_1A3442920(v7, v3 + 632);

  sub_1A31ECC9C(v16, 2u);
  v25 = v18;
LABEL_22:
  sub_1A31ECC9C(v25, 2u);
  v23 = (v37 + 248);
  *(v37 + 280) = v43;
  *(v37 + 296) = v44;
  *(v37 + 312) = v45;
  *(v37 + 328) = v46;
  *v35 = v41;
  *(v37 + 264) = v42;
LABEL_23:
  v26 = *(v3 + 736);
  v27 = v23[3];
  *(v3 + 184) = v23[2];
  *(v3 + 200) = v27;
  v28 = v23[5];
  *(v3 + 216) = v23[4];
  *(v3 + 232) = v28;
  v29 = v23[1];
  *(v3 + 152) = *v23;
  *(v3 + 168) = v29;
  v30 = v3;
  v31 = v26;
  sub_1A346098C(v23, v30 + 536);
  sub_1A34604B4(v31, v30 + 152, v30 + 16);
  sub_1A3385160(v23);

  v32 = swift_task_alloc();
  *(v30 + 752) = v32;
  *v32 = v30;
  v32[1] = sub_1A345FEAC;

  return sub_1A33837BC(0xD00000000000002CLL, 0x80000001A350EE80);
}

uint64_t sub_1A345FEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  *(v7 + 760) = a2;
  *(v7 + 768) = a3;
  *(v7 + 776) = a4;
  *(v7 + 784) = v4;

  if (v4)
  {

    v8 = sub_1A3460124;
  }

  else
  {
    *(v7 + 792) = a1;
    v8 = sub_1A345FFE8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A345FFE8()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = objc_opt_self();
  v4 = sub_1A3444DEC(v2, v1);
  v5 = sub_1A34CD0E0();
  v6 = [v3 finalizedConfiguration:v4 forExtensionIdentifier:v5];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = sub_1A3444DEC(*(v0 + 768), *(v0 + 776));
  }

  v8 = sub_1A3444A44(v7, 0);
  v9 = *(v0 + 776);
  sub_1A335DED4(v8 & 0xFFFFFFFF00000001, v10 & 1, v11, *(v0 + 736), *(v0 + 728));

  sub_1A335DA80(v0 + 16);
  sub_1A3385160(v0 + 248);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A3460124()
{
  sub_1A3385160(v0 + 248);
  sub_1A335DA80(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3460190@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1A31EE004(v2, v3);
}

uint64_t sub_1A34601A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1A31EE4BC(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
  if (swift_dynamicCast())
  {
    if (v2 == v10 && v3 == v11)
    {
      sub_1A31ECC9C(v8, v9);

      v6 = 0;
    }

    else
    {
      v5 = sub_1A34CDE30();
      sub_1A31ECC9C(v8, v9);

      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

double sub_1A3460288@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  swift_bridgeObjectRetain_n();
  sub_1A31EE004(v3, v4);
  if (qword_1ED854478 != -1)
  {
    swift_once();
  }

  sub_1A34C9010();
  sub_1A31F3724(v13);

  if (qword_1ED8549E0 != -1)
  {
    swift_once();
  }

  v10 = v14 & 7;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7 & 7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = 0x4059000000000000;
  result = *v13;
  v12 = v13[1];
  *(a1 + 64) = v13[0];
  *(a1 + 80) = v12;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = v10;
  return result;
}

uint64_t sub_1A34603D0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[6];
  v20 = a1[5];
  v21 = v3;
  v4 = a1[4];
  v22 = *(a1 + 14);
  v5 = a1[1];
  v15 = *a1;
  v16 = v5;
  v6 = a1[3];
  v17 = a1[2];
  v18 = v6;
  v19 = v4;
  if (v3 >> 62)
  {
    result = sub_1A3288E28(&v15);
    v12 = 0;
    v11 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    a2[1] = 0;
    a2[4] = 0;
  }

  else
  {
    v8 = *(&v17 + 1);
    v7 = v18;
    v9 = *(&v16 + 1);
    v10 = v17;
    v11 = v16;
    v12 = v15;
    v13 = BYTE8(v15);
    sub_1A31EE004(v15, BYTE8(v15));

    result = sub_1A3288E28(&v15);
    *(a2 + 8) = v13;
    *(a2 + 32) = v10;
  }

  *a2 = v12;
  a2[2] = v11;
  a2[3] = v9;
  a2[5] = v8;
  a2[6] = v7;
  return result;
}

void sub_1A34604B4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  if (!v6)
  {
    if (qword_1EB0C25F0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB0ED888;
    v11 = qword_1EB0C25E8;

    if (v11 != -1)
    {
      swift_once();
    }

    *&v37 = v10;

    sub_1A33B8C4C(v12);
    v13 = *(v10 + 16);
    if (v13)
    {
      v14 = sub_1A33886C4(v13);
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < *(v10 + 16))
      {
        v15 = (v10 + 96 * v14);
        v16 = v15[3];
        v37 = v15[2];
        v38 = v16;
        v17 = v15[4];
        v18 = v15[5];
        v19 = v15[7];
        *&v40[16] = v15[6];
        *&v40[32] = v19;
        v39 = v17;
        *v40 = v18;
        sub_1A3442920(&v37, v44);

        v9 = *&v40[40];
        v36 = *&v40[24];
        v34 = *&v40[8];
        v35 = v39;
        v8 = v40[0];
        v32 = *(&v38 + 1);
        v6 = v38;
        v33 = *(&v39 + 1);
        v31 = *(&v37 + 1);
        v7 = v37;
        goto LABEL_11;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v7 = *a2;
  v31 = *(a2 + 8);
  v32 = *(a2 + 24);
  v35 = *(a2 + 32);
  v33 = *(a2 + 40);
  v8 = *(a2 + 48);
  v36 = *(a2 + 72);
  v34 = *(a2 + 56);
  v9 = *(a2 + 88);
LABEL_11:
  v20 = *MEMORY[0x1E695C328];
  sub_1A346098C(a2, &v37);
  if ([a1 isKeyAvailable_] && objc_msgSend(a1, sel_contactType) == 1 || (v21 = objc_msgSend(objc_opt_self(), sel_stringFromContact_style_, a1, 1002)) == 0)
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v22 = v21;
    v23 = sub_1A34CD110();
    v25 = v24;
  }

  v44[0] = v7;
  v44[1] = v31;
  v44[2] = v6;
  v44[3] = v32;
  v44[4] = v35;
  v44[5] = v33;
  v45 = v8 & 1;
  v46 = v34;
  v47 = v36;
  v48 = v9;
  v26 = CNContact.monogramSupportedForName.getter();
  sub_1A347FE90(v44, v23, v25, v26 & 1, &v37);
  v27 = v42;
  *(a3 + 96) = v41;
  *(a3 + 112) = v27;
  *(a3 + 128) = v43;
  v28 = *v40;
  *(a3 + 32) = v39;
  *(a3 + 48) = v28;
  v29 = *&v40[32];
  *(a3 + 64) = *&v40[16];
  *(a3 + 80) = v29;
  v30 = v38;
  *a3 = v37;
  *(a3 + 16) = v30;
}

__n128 sub_1A346077C@<Q0>(char a1@<W0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *&v35 = 0xD000000000000012;
  *(&v35 + 1) = 0x80000001A350AF00;
  sub_1A34CDA40();
  sub_1A3444304(v44, a1 & 1, a2, a3);

  sub_1A32F7584(v44);
  if (v4)
  {
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    sub_1A3385160(&v35);
  }

  else
  {
    v10 = v45;
    v11 = v46;
    v12 = v47;
    v13 = v48;
    v14 = v49;
    v15 = v50;
    v60 = v51;
    v22 = v53;
    v23 = v52;
    v20 = v55;
    v21 = v54;
    v19 = v56;
    memset(v25, 0, 96);
    sub_1A3385160(v25);
    v32 = v57;
    v33 = v58;
    *&v26 = v10;
    *(&v26 + 1) = v11;
    v27.n128_u64[0] = v12;
    v27.n128_u64[1] = v13;
    *&v28 = v14;
    *(&v28 + 1) = v15;
    *&v29 = v60;
    *(&v29 + 1) = v23;
    *&v30 = v22;
    *(&v30 + 1) = v21;
    *&v31 = v20;
    *(&v31 + 1) = v19;
    v34 = v59;
    *&v35 = v10;
    *(&v35 + 1) = v11;
    *&v36 = v12;
    *(&v36 + 1) = v13;
    *&v37 = v14;
    *(&v37 + 1) = v15;
    *&v38 = v60;
    *(&v38 + 1) = v23;
    *&v39 = v22;
    *(&v39 + 1) = v21;
    *&v40 = v20;
    *(&v40 + 1) = v19;
    v43 = v59;
    v41 = v57;
    v42 = v58;
    sub_1A33851C8(&v26, &v24);
    sub_1A335DA80(&v35);
    v16 = v33;
    *(a4 + 96) = v32;
    *(a4 + 112) = v16;
    *(a4 + 128) = v34;
    v17 = v29;
    *(a4 + 32) = v28;
    *(a4 + 48) = v17;
    v18 = v31;
    *(a4 + 64) = v30;
    *(a4 + 80) = v18;
    result = v27;
    *a4 = v26;
    *(a4 + 16) = result;
  }

  return result;
}

uint64_t sub_1A346098C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C90C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3460A28()
{
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for MetricsCenteringStrategy(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsCenteringStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

double sub_1A3460BA0(uint64_t a1, double a2, double a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v9 = (*(v8 + 8))(a1, v7, v8, a2, a3);
  v10 = v3[8];
  v11 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
  (*(v11 + 8))(a1, v10, v11, a2, a3);
  return v9;
}

double sub_1A3460C6C()
{
  v1 = sub_1A34C99F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = sub_1A34CD860();
  (*(v2 + 104))(v4, *MEMORY[0x1E695EEB8], v1);
  v7 = sub_1A34CD850();

  (*(v2 + 8))(v4, v1);
  v8 = sub_1A32B6E3C(v5);

  return v8;
}

unint64_t sub_1A3460DCC()
{
  result = qword_1EB0CBD20;
  if (!qword_1EB0CBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBD20);
  }

  return result;
}

unint64_t sub_1A3460E24()
{
  result = qword_1EB0CBD28;
  if (!qword_1EB0CBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBD28);
  }

  return result;
}

uint64_t sub_1A3460E88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3460ED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3460F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A3460F5C, 0, 0);
}

uint64_t sub_1A3460F5C()
{
  v1 = v0[9];
  v0[3] = v1;

  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0[8];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A3298804(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1A3298804((v5 > 1), v6 + 1, 1, v4);
  }

  v8 = v0[5];
  v7 = v0[6];
  *(v4 + 2) = v6 + 1;
  *&v4[8 * v6 + 32] = v8;
  v0[2] = v4;
  v11 = (v7 + *v7);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1A34610D4;

  return (v11)(v0 + 4, v0 + 2);
}

uint64_t sub_1A34610D4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1A34611E8;
  }

  else
  {
    v2 = sub_1A3336014;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A34611E8()
{
  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
LABEL_4:
        *(v1 + 16) = v3 - 1;
        goto LABEL_5;
      }
    }

    else
    {
      result = sub_1A3426048(v1);
      v1 = result;
      v3 = *(result + 16);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    return result;
  }

LABEL_5:

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A3461298(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1A3461308()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1A3461374()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C56C8);
  v1 = type metadata accessor for VisualIdentity(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34DAA10;
  if (qword_1EB0C27F8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v1, qword_1EB0ED9C8);
  sub_1A3466A44(v4, v3 + v2, type metadata accessor for VisualIdentity);
  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_1A34614CC()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1A3461538()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ECF90);
  __swift_project_value_buffer(v0, qword_1EB0ECF90);
  return sub_1A34CA240();
}

uint64_t sub_1A34615EC()
{
  swift_getKeyPath();
  sub_1A34669A0(&qword_1EB0C1860, type metadata accessor for VisualIdentitySuggestionStore.Storage);
  sub_1A34C99A0();
}

uint64_t sub_1A3461690@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A34669A0(&qword_1EB0C1860, type metadata accessor for VisualIdentitySuggestionStore.Storage);
  sub_1A34C99A0();

  *a2 = *(v3 + 16);
}

uint64_t sub_1A346173C()
{
  swift_getKeyPath();
  sub_1A34669A0(&qword_1EB0C1860, type metadata accessor for VisualIdentitySuggestionStore.Storage);
  sub_1A34C9990();
}

uint64_t sub_1A3461808()
{
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    if (qword_1EB0C1248 != -1)
    {
      swift_once();
    }

    v0 = sub_1A34CA250();
    __swift_project_value_buffer(v0, qword_1EB0ECF90);
    v1 = sub_1A34CA230();
    v2 = sub_1A34CD640();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1A31E6000, v1, v2, "Suggestions must be accessed on the main thread, this may result in undefinded behavior.", v3, 2u);
      MEMORY[0x1A58F1010](v3, -1, -1);
    }
  }

  swift_getKeyPath();
  sub_1A34669A0(&qword_1EB0C1860, type metadata accessor for VisualIdentitySuggestionStore.Storage);
  sub_1A34C99A0();
}

uint64_t sub_1A346197C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v13 - v4;
  if ([objc_opt_self() isMainThread])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[1] = v1;
    sub_1A34669A0(&qword_1EB0C1860, type metadata accessor for VisualIdentitySuggestionStore.Storage);
    sub_1A34C9990();
  }

  else
  {
    v8 = sub_1A34CD4A0();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    sub_1A34CD450();
    sub_1A34C9010();
    v9 = v1;
    v10 = sub_1A34CD440();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    v11[5] = a1;
    sub_1A32C0B38(0, 0, v5, &unk_1A34F9A58, v11);
  }
}

uint64_t sub_1A3461B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1A34CD450();
  v5[5] = sub_1A34CD440();
  v7 = sub_1A34CD3E0();

  return MEMORY[0x1EEE6DFA0](sub_1A3461C34, v7, v6);
}

uint64_t sub_1A3461C34()
{
  v3 = *(v0 + 24);

  swift_getKeyPath();
  *(swift_task_alloc() + 16) = v3;
  *(v0 + 16) = v3;
  sub_1A34669A0(&qword_1EB0C1860, type metadata accessor for VisualIdentitySuggestionStore.Storage);
  sub_1A34C9990();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3461D64()
{

  v1 = OBJC_IVAR____TtCC14ContactsUICore29VisualIdentitySuggestionStoreP33_D722E0631C0955BFFAF4B84EFDE377947Storage___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3461E08(uint64_t a1)
{
  v3 = sub_1A34C9780();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1E69E7CD0];
  v28 = v1;
  v7 = v1 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_currentIdentity;
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  sub_1A34669A0(&qword_1EB0C2A38, MEMORY[0x1E69695A8]);
  v8 = sub_1A34CD040();
  (*(v4 + 8))(v6, v3);
  if ((v8 & 1) == 0)
  {
    sub_1A3464408(v32, 3, &qword_1EB0CBD30);
  }

  v9 = type metadata accessor for VisualIdentity(0);
  sub_1A31EE4BC(v7 + *(v9 + 28), v32);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0(v32);
  v11 = (a1 + *(v9 + 28));
  sub_1A31EE4BC(v11, v29);
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v12 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0(v29);
  sub_1A31EE4BC(v7 + *(v9 + 32), v32);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v13 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0(v32);
  v14 = *(v9 + 32);
  sub_1A31EE4BC(a1 + v14, v29);
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v15 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0(v29);
  if (DynamicType != v12 || v13 != v15)
  {
    sub_1A3464408(v32, 1, &qword_1EB0CBD30);
  }

  sub_1A31EE4BC(v7 + *(v9 + 28), v32);
  v16 = v33;
  v17 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v19 = v11[3];
  v18 = v11[4];
  v20 = __swift_project_boxed_opaque_existential_1(v11, v19);
  v30 = v19;
  v31 = *(v18 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v20, v19);
  v22 = (*(*(v17 + 8) + 24))(v29, v16);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v32);
  if (v22 & 1) != 0 || (sub_1A31EE4BC(v7 + *(v9 + 32), v32), v23 = v33, v24 = v34, __swift_project_boxed_opaque_existential_1(v32, v33), v25 = (*(v24 + 24))(a1 + v14, v23, v24), __swift_destroy_boxed_opaque_existential_0(v32), (v25))
  {
    sub_1A3464408(v32, 2, &qword_1EB0CBD30);
  }

  sub_1A34639D4(0, v35);
}

uint64_t sub_1A3462220(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A34C9F40();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A34622E4, 0, 0);
}

uint64_t sub_1A34622E4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  (*(v2 + 104))(v1, *MEMORY[0x1E6996458], v3);
  sub_1A34C9F10();
  (*(v2 + 8))(v1, v3);
  if (*(*(v4 + *(type metadata accessor for VisualIdentitySuggestionContext(0) + 28)) + 16))
  {
    v5 = v0[4];
    if (v0[2])
    {
      v6 = v0[2];
    }

    else
    {
      v6 = *(v5 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_providers);
    }

    v0[8] = v6;
    v9 = v0[3];
    v10 = *(v5 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_suggestionsByProvider);
    v11 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_cache;
    v12 = swift_task_alloc();
    v13 = *(v5 + v11);
    v0[9] = v12;
    *(v12 + 16) = v6;
    *(v12 + 24) = v9;
    *(v12 + 32) = v10;
    *(v12 + 40) = v13;

    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_1A34624F8;
    v15 = MEMORY[0x1E69E7CA8] + 8;
    v16 = MEMORY[0x1E69E7CA8] + 8;
    v17 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v14, v15, v16, 0, 0, &unk_1A34F9AA0, v12, v17);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

void sub_1A34624F8()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1A346263C, 0, 0);
  }
}

uint64_t sub_1A346263C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A346269C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v8 = *(type metadata accessor for VisualIdentitySuggestionContext(0) - 8);
  v7[15] = v8;
  v7[16] = *(v8 + 64);
  v7[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A34627AC, 0, 0);
}

uint64_t sub_1A34627AC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = *(v0 + 120);
    v3 = (v1 + 32);
    v23 = *(v0 + 128) + 7;
    do
    {
      v30 = *v3;
      if ((*(*(v3 + 1) + 24))(*(v0 + 88), **v3))
      {
        v26 = v2;
        v6 = *(v0 + 152);
        v25 = v6;
        v7 = *(v0 + 136);
        v28 = *(v0 + 112);
        v29 = *(v0 + 144);
        v27 = *(v0 + 104);
        v8 = *(v0 + 88);
        v9 = *(v0 + 96);
        v10 = sub_1A34CD4A0();
        v11 = *(v10 - 8);
        (*(v11 + 56))(v6, 1, 1, v10);
        sub_1A3466A44(v8, v7, type metadata accessor for VisualIdentitySuggestionContext);
        v12 = (*(v24 + 80) + 56) & ~*(v24 + 80);
        v13 = swift_allocObject();
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        *(v13 + 32) = v9;
        *(v13 + 40) = v30;
        sub_1A3466AAC(v7, v13 + v12, type metadata accessor for VisualIdentitySuggestionContext);
        v14 = (v13 + ((v23 + v12) & 0xFFFFFFFFFFFFFFF8));
        *v14 = v27;
        v14[1] = v28;
        sub_1A34013CC(v25, v29);
        LODWORD(v12) = (*(v11 + 48))(v29, 1, v10);
        swift_retain_n();

        v15 = v28;
        v16 = *(v0 + 144);
        if (v12 == 1)
        {
          sub_1A3288FDC(*(v0 + 144), &qword_1EB0C6110);
        }

        else
        {
          sub_1A34CD490();
          (*(v11 + 8))(v16, v10);
        }

        if (*(v13 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v17 = sub_1A34CD3E0();
          v19 = v18;
          swift_unknownObjectRelease();
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v20 = **(v0 + 72);
        sub_1A34C9010();
        if (v19 | v17)
        {
          v4 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v17;
          *(v0 + 40) = v19;
        }

        else
        {
          v4 = 0;
        }

        v5 = *(v0 + 152);
        *(v0 + 48) = 1;
        *(v0 + 56) = v4;
        *(v0 + 64) = v20;
        swift_task_create();

        sub_1A3288FDC(v5, &qword_1EB0C6110);
        v2 = v26;
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1A3462B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A3462BB0, 0, 0);
}

uint64_t sub_1A3462BB0()
{
  v1 = **(v0 + 24);
  if (*(*(v0 + 16) + 16) && (v2 = sub_1A31ED4A8(**(v0 + 24)), (v3 & 1) != 0))
  {
    v4 = *(*(*(v0 + 16) + 56) + 8 * v2);
    sub_1A34C9010();
  }

  else
  {
    type metadata accessor for VisualIdentitySuggestionStore.Storage(0);
    v4 = swift_allocObject();
    sub_1A34C99D0();
    *(v4 + 16) = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 64) = v4;
  v5 = *(sub_1A3461808() + 16);

  if (v5)
  {
    v6 = *(v0 + 40);
    v16 = *(v0 + 24);
    v7 = *v16;
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *(v8 + 16) = v16;
    *(v8 + 32) = v6;
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_1A346309C;
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);

    return sub_1A3460F34(v7, &unk_1A34F9AC0, v8, v10, v11);
  }

  else
  {
    v17 = (*(*(v0 + 32) + 32) + **(*(v0 + 32) + 32));
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_1A3462E50;
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);

    return v17(v15, v1, v14);
  }
}

uint64_t sub_1A3462E50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1A346323C;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1A3462F78;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A3462F78()
{
  sub_1A346197C(*(v0 + 88));
  v1 = *(v0 + 40);
  v8 = *(v0 + 24);
  v2 = *v8;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v1;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1A346309C;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  return sub_1A3460F34(v2, &unk_1A34F9AC0, v3, v5, v6);
}

uint64_t sub_1A346309C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_1A346349C;
  }

  else
  {
    *(v4 + 120) = a1;

    v5 = sub_1A34631CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A34631CC()
{
  sub_1A346197C(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A346323C()
{
  v17 = v0;
  v1 = *(v0 + 80);
  if (qword_1EB0C1248 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0ECF90);
  sub_1A34C9010();
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD640();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136315394;
    v9 = sub_1A34CE050();
    v11 = sub_1A31EE23C(v9, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Error updating provider: %s error: %@", v6, 0x16u);
    sub_1A3288FDC(v7, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1A58F1010](v8, -1, -1);
    MEMORY[0x1A58F1010](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1A346349C()
{
  v17 = v0;

  v1 = *(v0 + 112);
  if (qword_1EB0C1248 != -1)
  {
    swift_once();
  }

  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0ECF90);
  sub_1A34C9010();
  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD640();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136315394;
    v9 = sub_1A34CE050();
    v11 = sub_1A31EE23C(v9, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Error updating provider: %s error: %@", v6, 0x16u);
    sub_1A3288FDC(v7, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1A58F1010](v8, -1, -1);
    MEMORY[0x1A58F1010](v6, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1A3463704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v12 = (*(a4 + 40) + **(a4 + 40));
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1A3463864;

  return v12(a5, a2, v9, a4);
}

uint64_t sub_1A3463864(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A34639B0, 0, 0);
  }
}

uint64_t sub_1A34639D4(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for VisualIdentitySuggestionContext(0);
  v27 = *(v4 - 1);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8];
  v10 = *(v2 + 16);
  v25 = *(v2 + 24);
  v11 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_currentIdentity;
  swift_beginAccess();
  sub_1A3466A44(v2 + v11, &v9[v4[6]], type metadata accessor for VisualIdentity);
  v12 = qword_1EB0C1890;
  v13 = v10;
  v26 = a2;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB0C1898;
  v15 = [*(v2 + 16) identifier];
  v16 = sub_1A34CD110();
  v18 = v17;

  v19 = MEMORY[0x1A58EEA90](v16, v18);

  *v9 = v13;
  v9[8] = v25;
  *&v9[v4[7]] = v26;
  *&v9[v4[8]] = v19 ^ v14;
  sub_1A3466A44(v9, v6, type metadata accessor for VisualIdentitySuggestionContext);
  v20 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v21 = swift_allocObject();
  v22 = v28;
  *(v21 + 16) = v2;
  *(v21 + 24) = v22;
  sub_1A3466AAC(v6, v21 + v20, type metadata accessor for VisualIdentitySuggestionContext);

  sub_1A34C9010();
  sub_1A34C9F20();

  return sub_1A3466EE0(v9, type metadata accessor for VisualIdentitySuggestionContext);
}

uint64_t sub_1A3463C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3292050;

  return sub_1A3462220(a2, a3);
}

uint64_t sub_1A3463D24(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 8))();
  if (*(*(v2 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_suggestionsByProvider) + 16))
  {
    v5 = result;
    sub_1A31ED4A8(a1);
    if (v6)
    {
      sub_1A34C9010();
      sub_1A3461808();
    }

    return v5;
  }

  return result;
}

uint64_t sub_1A3463DD4()
{
  sub_1A3466EE0(v0 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_currentIdentity, type metadata accessor for VisualIdentity);

  v1 = OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_queue;
  v2 = sub_1A34C9F50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3463F00()
{
  result = type metadata accessor for VisualIdentity(319);
  if (v1 <= 0x3F)
  {
    result = sub_1A34C9F50();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1A3464020()
{
  result = sub_1A34C99E0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A34640C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3464108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A3464158()
{
  result = sub_1A33886C4(0x7FFFFFFFFFFFFFFFuLL);
  qword_1EB0C1898 = result;
  return result;
}

uint64_t sub_1A346417C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_1A34C9010();

    v8 = sub_1A34CD9C0();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_1A34CD9B0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1A33BB4AC(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_1A3464918();
    }

    v17 = sub_1A34C9010();
    sub_1A33BB8EC(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
  v10 = sub_1A34CCFD0();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    v15 = sub_1A34C9010();
    sub_1A34652BC(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while ((sub_1A34CD040() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);
  sub_1A34C9010();
  return 0;
}

uint64_t sub_1A3464408(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](a2);
  v8 = sub_1A34CDF70();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1A3465460(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A3464528(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_1A34C9010();

    v8 = sub_1A34CD9C0();

    if (v8)
    {

      sub_1A34CA290();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_1A34CD9B0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1A33BB6B8(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_1A3464DC8();
    }

    v17 = sub_1A34C9010();
    sub_1A33BB9A4(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1A34CA290();
  sub_1A34669A0(&qword_1ED854A68, MEMORY[0x1E695BF10]);
  v10 = sub_1A34CCFD0();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    v15 = sub_1A34C9010();
    sub_1A34655D0(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1A34669A0(&unk_1ED853D00, MEMORY[0x1E695BF10]);
  while ((sub_1A34CD040() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);
  sub_1A34C9010();
  return 0;
}

uint64_t sub_1A34647C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A34CDF20();
  sub_1A34CD1C0();
  v8 = sub_1A34CDF70();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1A34CDE30() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1A34657C8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1A3464918()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA098);
  result = sub_1A34CDA60();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
      result = sub_1A34CCFD0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A3464B80(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1A34CDA60();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + (v15 | (v7 << 6)));
      sub_1A34CDF20();
      MEMORY[0x1A58EF750](v18);
      result = sub_1A34CDF70();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1A3464DC8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0A8);
  result = sub_1A34CDA60();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1A34CA290();
      sub_1A34669A0(&qword_1ED854A68, MEMORY[0x1E695BF10]);
      result = sub_1A34CCFD0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A346505C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA090);
  result = sub_1A34CDA60();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A34CDF20();
      sub_1A34CD1C0();
      result = sub_1A34CDF70();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A34652BC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A3464918();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1A3465A8C(&qword_1EB0CA098);
      goto LABEL_12;
    }

    sub_1A3465D28();
  }

  v8 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
  result = sub_1A34CCFD0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      result = sub_1A34CD040();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A34CDE80();
  __break(1u);
  return result;
}

uint64_t sub_1A3465460(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A3464B80(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_1A346595C(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_1A3465F68(v6 + 1, a4);
  }

  v9 = *v4;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v5);
  result = sub_1A34CDF70();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A34CDE80();
  __break(1u);
  return result;
}

uint64_t sub_1A34655D0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A3464DC8();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1A3465A8C(&qword_1EB0CA0A8);
      goto LABEL_12;
    }

    sub_1A3466180();
  }

  v8 = *v3;
  sub_1A34CA290();
  sub_1A34669A0(&qword_1ED854A68, MEMORY[0x1E695BF10]);
  result = sub_1A34CCFD0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1A34669A0(&unk_1ED853D00, MEMORY[0x1E695BF10]);
    do
    {
      result = sub_1A34CD040();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A34CDE80();
  __break(1u);
  return result;
}

uint64_t sub_1A34657C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1A346505C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1A3465BCC();
      goto LABEL_16;
    }

    sub_1A34663F8();
  }

  v10 = *v4;
  sub_1A34CDF20();
  sub_1A34CD1C0();
  result = sub_1A34CDF70();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A34CDE30();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A34CDE80();
  __break(1u);
  return result;
}

void *sub_1A346595C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1A34CDA50();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1A3465A8C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1A34CDA50();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        *(*(v5 + 48) + 8 * (v15 | (v9 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v9 << 6)));
        result = sub_1A34C9010();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1A3465BCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA090);
  v2 = *v0;
  v3 = sub_1A34CDA50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A3465D28()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA098);
  result = sub_1A34CDA60();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_1A34C9010();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7D40);
      result = sub_1A34CCFD0();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A3465F68(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1A34CDA60();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      sub_1A34CDF20();
      MEMORY[0x1A58EF750](v17);
      result = sub_1A34CDF70();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_1A3466180()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0A8);
  result = sub_1A34CDA60();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1A34CA290();
      sub_1A34669A0(&qword_1ED854A68, MEMORY[0x1E695BF10]);
      sub_1A34C9010();
      result = sub_1A34CCFD0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A34663F8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA090);
  result = sub_1A34CDA60();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1A34CDF20();

      sub_1A34CD1C0();
      result = sub_1A34CDF70();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

size_t sub_1A3466630(int64_t a1)
{
  v20 = sub_1A34C9780();
  v2 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for VisualIdentity(0);
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 < 1)
  {
    return v8;
  }

  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1A32EBCF4(0, a1, 0);
  v10 = 0;
  v8 = v21;
  v11 = (v2 + 40);
  v12 = 1;
  v13 = a1;
  while (!v10)
  {
    if (qword_1EB0C27F8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v19, qword_1EB0ED9C8);
    sub_1A3466A44(v14, v7, type metadata accessor for VisualIdentity);
    sub_1A34C8A90();
    (*v11)(v7, v4, v20);
    v21 = v8;
    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1A32EBCF4(v15 > 1, v16 + 1, 1);
      v8 = v21;
    }

    *(v8 + 16) = v16 + 1;
    result = sub_1A3466AAC(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for VisualIdentity);
    v10 = v12 == a1;
    if (v12 == a1)
    {
      v12 = 0;
    }

    else if (__OFADD__(v12++, 1))
    {
      __break(1u);
      break;
    }

    if (!--v13)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A34668C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3292C58;

  return sub_1A3461B9C(a1, v4, v5, v7, v6);
}

uint64_t sub_1A34669A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A34669E8()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_1A3466A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3466AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3466B14()
{
  v2 = *(type metadata accessor for VisualIdentitySuggestionContext(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3292050;

  return sub_1A3463C78(v4, v5, v0 + v3);
}

uint64_t sub_1A3466BF0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1A3292050;

  return sub_1A346269C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1A3466CC8(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualIdentitySuggestionContext(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A3292C58;

  return sub_1A3462B80(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_1A3466E1C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1A3292C58;

  return sub_1A3463704(a1, a2, v6, v7, v8);
}

uint64_t sub_1A3466EE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3466F40(uint64_t a1, void *a2, void *a3, void *a4, int a5, uint64_t a6)
{
  v54 = a4;
  v55 = a6;
  v53 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD48);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52[-v15];
  sub_1A34CD460();
  v17 = sub_1A34CD4A0();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8650], v10);
  sub_1A34C9F30();
  v18 = (v6 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_cache);
  *v18 = a1;
  v18[1] = a2;
  v56 = v6;
  *(v6 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_providers) = a3;
  v19 = sub_1A33EA098(MEMORY[0x1E69E7CC0]);
  v20 = a3[2];

  v21 = a2;

  if (!v20)
  {
LABEL_17:
    v41 = v56;
    *(v56 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_suggestionsByProvider) = v19;
    v42 = v54;
    v43 = v55;
    *(v41 + 16) = v54;
    *(v41 + 24) = v53 & 1;
    sub_1A3466A44(v43, v41 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentitySuggestionStore_currentIdentity, type metadata accessor for VisualIdentity);
    if (v20)
    {
      v44 = a3 + 4;
      v45 = v42;
      do
      {
        v46 = *v44;
        v44 += 2;
        v47 = *(*v46 + 104);
        swift_retain_n();
        v48 = sub_1A34C9010();
        v47(v48, &off_1F1629E20);

        --v20;
      }

      while (v20);
    }

    else
    {
      v49 = v42;
    }

    v50 = sub_1A33BE320(&unk_1F161AFB0);
    sub_1A34639D4(0, v50);

    sub_1A3466EE0(v43, type metadata accessor for VisualIdentity);
    return v41;
  }

  v22 = 0;
  v23 = a3 + 5;
  v57 = v20;
  v58 = a3;
  while (v22 < a3[2])
  {
    v24 = *v23;
    v25 = **(v23 - 1);
    v26 = *(*v23 + 16);
    sub_1A34C9010();
    v27 = v26(v25, v24);
    type metadata accessor for VisualIdentitySuggestionStore.Storage(0);
    v28 = swift_allocObject();
    sub_1A34C99D0();
    *(v28 + 16) = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v19;
    v31 = sub_1A31ED4A8(v25);
    v32 = v19[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_24;
    }

    v35 = v30;
    if (v19[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v59;
        if (v30)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1A33DE5D4();
        v19 = v59;
        if (v35)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1A33DD208(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_1A31ED4A8(v25);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_26;
      }

      v31 = v36;
      v19 = v59;
      if (v35)
      {
LABEL_3:
        *(v19[7] + 8 * v31) = v28;

        goto LABEL_4;
      }
    }

    v19[(v31 >> 6) + 8] |= 1 << v31;
    *(v19[6] + 8 * v31) = v25;
    *(v19[7] + 8 * v31) = v28;

    v38 = v19[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_25;
    }

    v19[2] = v40;
LABEL_4:
    ++v22;
    v23 += 2;
    v20 = v57;
    a3 = v58;
    if (v57 == v22)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1A34CDE90();
  __break(1u);
  return result;
}

uint64_t sub_1A3467410(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for VisualIdentity(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A34DE790;
  type metadata accessor for EditorSuggestionProvider();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 32) = v10;
  *(v9 + 40) = &off_1F1621430;
  type metadata accessor for RecentsSuggestionProvider();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 48) = v11;
  *(v9 + 56) = &off_1F16234E8;
  type metadata accessor for MemojiSuggestionProvider();
  v12 = swift_allocObject();
  v13 = sub_1A3466630(7);
  *(v12 + 24) = 0;
  *(v12 + 32) = v13;
  swift_unknownObjectWeakInit();
  *(v9 + 64) = v12;
  *(v9 + 72) = &off_1F1625428;
  type metadata accessor for MonogramSuggestionProvider();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 80) = v14;
  *(v9 + 88) = &off_1F1623008;
  type metadata accessor for EmojiSuggestionProvider();
  v15 = swift_allocObject();
  v15[4] = 0;
  v15[5] = sub_1A3466630(11);
  v15[3] = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 96) = v15;
  *(v9 + 104) = &off_1F16231C8;
  type metadata accessor for PhotosSuggestionProvider();
  v16 = swift_allocObject();
  v17 = sub_1A34728D8();
  v16[3] = 0;
  v16[4] = v17;
  v16[5] = 0;
  v16[6] = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 112) = v16;
  *(v9 + 120) = &off_1F162A2D0;
  sub_1A3466A44(a3, v8, type metadata accessor for VisualIdentity);
  if (qword_1EB0C18A8 != -1)
  {
    swift_once();
  }

  v18 = qword_1EB0ED218;
  v19 = unk_1EB0ED220;
  type metadata accessor for VisualIdentitySuggestionStore(0);
  swift_allocObject();

  v20 = v19;
  v21 = sub_1A3466F40(v18, v20, v9, a1, a2 & 1, v8);

  sub_1A3466EE0(a3, type metadata accessor for VisualIdentity);
  return v21;
}

void sub_1A3467720()
{
  sub_1A31EE0D8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for VisualIdentity(319);
    if (v1 <= 0x3F)
    {
      sub_1A34677CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A34677CC()
{
  if (!qword_1EB0C0258)
  {
    sub_1A33BEEC8();
    v0 = sub_1A34CD590();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C0258);
    }
  }
}

unint64_t sub_1A346783C()
{
  result = qword_1EB0CBD50;
  if (!qword_1EB0CBD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CBD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBD50);
  }

  return result;
}

unint64_t sub_1A34678A4()
{
  result = qword_1EB0C16D8;
  if (!qword_1EB0C16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C16D8);
  }

  return result;
}

uint64_t sub_1A3467910@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = sub_1A34C9780();
  v24[1] = *(v5 - 8);
  v24[2] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v24 - v7;
  if (qword_1ED854300 != -1)
  {
    swift_once();
  }

  v9 = sub_1A31EA0C4(off_1ED854020);
  if (qword_1ED854008 != -1)
  {
    swift_once();
  }

  v10 = sub_1A31EA49C(off_1ED854018);
  v26 = v9;
  sub_1A31EABF0(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v11 = sub_1A34CD350();

  v12 = [a1 areKeysAvailable_];

  if (v12)
  {
    sub_1A346A40C(a1, a2, v8);
    v18 = type metadata accessor for VisualIdentity(0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    v21 = v20(v8, 1, v18);
    if (v21 == 1)
    {
      v22 = v25;
      if (qword_1EB0C27F8 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v18, qword_1EB0ED9C8);
      sub_1A3300BB8(v23, v22);
      if (v20(v8, 1, v18) != 1)
      {
        sub_1A3288FDC(v8, &qword_1EB0C5D28);
      }
    }

    else
    {
      v22 = v25;
      sub_1A3336E78(v8, v25);
    }

    return (*(v19 + 56))(v22, 0, 1, v18);
  }

  else
  {
    v13 = type metadata accessor for VisualIdentity(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = v13;
    v16 = v25;

    return v14(v16, 1, 1, v15);
  }
}

uint64_t sub_1A3467EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 216) = a4;
  *(v6 + 224) = a6;
  *(v6 + 264) = a5;
  *(v6 + 200) = a2;
  *(v6 + 208) = a3;
  *(v6 + 192) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5D28);
  *(v6 + 232) = swift_task_alloc();
  v7 = sub_1A34C9780();
  *(v6 + 240) = v7;
  *(v6 + 248) = *(v7 - 8);
  *(v6 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A346802C, 0, 0);
}

uint64_t sub_1A346802C()
{
  v116 = v0;
  v115[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED854300 != -1)
  {
    swift_once();
  }

  v1 = off_1ED854020;
  v2 = sub_1A31EA0C4(off_1ED854020);
  if (qword_1ED854008 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 200);
  v4 = off_1ED854018;
  v5 = sub_1A31EA49C(off_1ED854018);
  *&v113 = v2;
  sub_1A31EABF0(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v7 = sub_1A34CD350();
  LODWORD(v3) = [v3 areKeysAvailable_];

  if (v3)
  {
    v8 = *(v0 + 200);

    v9 = v8;
    v10 = *(v0 + 200);
    goto LABEL_7;
  }

  if (qword_1EB0C1250 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 200);
  v15 = sub_1A34CA250();
  __swift_project_value_buffer(v15, qword_1EB0ECFA8);
  v16 = v14;
  v17 = sub_1A34CA230();
  v18 = sub_1A34CD660();

  if (os_log_type_enabled(v17, v18))
  {
    log = v17;
    v108 = v15;
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v21 = *(v0 + 240);
    v104 = v1;
    v22 = *(v0 + 200);
    v23 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v115[0] = v106;
    *v23 = 136315394;
    v24 = [v22 id];
    sub_1A34C9760();

    sub_1A3418AA8();
    v25 = sub_1A34CDDF0();
    v105 = v18;
    v27 = v26;
    (*(v20 + 8))(v19, v21);
    v28 = sub_1A31EE23C(v25, v27, v115);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = sub_1A31EA0C4(v104);
    v30 = sub_1A31EA49C(v4);
    *&v113 = v29;
    sub_1A31EABF0(v30);
    v31 = MEMORY[0x1A58EEBA0](v29, v6);
    v33 = v32;

    v34 = sub_1A31EE23C(v31, v33, v115);
    v15 = v108;

    *(v23 + 14) = v34;
    v17 = log;
    _os_log_impl(&dword_1A31E6000, log, v105, "Re-fetching contact: %s for required keys: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v106, -1, -1);
    MEMORY[0x1A58F1010](v23, -1, -1);
  }

  v35 = *(v0 + 200);
  v36 = *(v0 + 208);
  v37 = sub_1A34CD350();

  *(v0 + 176) = 0;
  v38 = [v36 contactsMatchingPropertiesOfContact:v35 unifyResults:1 keysToFetch:v37 error:v0 + 176];

  v39 = *(v0 + 176);
  if (!v38)
  {
    v45 = v39;
    v46 = sub_1A34C9580();

    swift_willThrow();
    if (qword_1EB0C4AE8 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 200);
    __swift_project_value_buffer(v15, qword_1EB0EDF90);
    v48 = v47;
    v49 = v46;
    v50 = sub_1A34CA230();
    v51 = sub_1A34CD640();

    if (!os_log_type_enabled(v50, v51))
    {

      goto LABEL_40;
    }

    v53 = *(v0 + 248);
    v52 = *(v0 + 256);
    v54 = *(v0 + 240);
    v55 = *(v0 + 200);
    v56 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *&v113 = v110;
    *v56 = 136315394;
    v57 = [v55 id];
    sub_1A34C9760();

    sub_1A3418AA8();
    v58 = sub_1A34CDDF0();
    v60 = v59;
    (*(v53 + 8))(v52, v54);
    v61 = sub_1A31EE23C(v58, v60, &v113);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2112;
    v62 = v46;
    v63 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 14) = v63;
    *v109 = v63;
    _os_log_impl(&dword_1A31E6000, v50, v51, "Error re-fetching contacts for contact: %s error: %@", v56, 0x16u);
    sub_1A3288FDC(v109, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v109, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v110);
    MEMORY[0x1A58F1010](v110, -1, -1);
    MEMORY[0x1A58F1010](v56, -1, -1);

LABEL_33:
LABEL_40:
    v13 = 0;
    goto LABEL_41;
  }

  v40 = v39;
  if ([v38 firstObject])
  {
    sub_1A34CD920();
    swift_unknownObjectRelease();
  }

  else
  {
    v113 = 0u;
    v114 = 0u;
  }

  v64 = v114;
  *(v0 + 16) = v113;
  *(v0 + 32) = v64;
  if (!*(v0 + 40))
  {
    sub_1A3288FDC(v0 + 16, &qword_1EB0C7690);
    goto LABEL_26;
  }

  sub_1A31EE0D8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    if (qword_1EB0C4AE8 != -1)
    {
      swift_once();
    }

    v65 = *(v0 + 200);
    __swift_project_value_buffer(v15, qword_1EB0EDF90);
    v66 = v65;
    v50 = v38;
    v67 = sub_1A34CA230();
    v68 = sub_1A34CD640();

    if (os_log_type_enabled(v67, v68))
    {
      v70 = *(v0 + 248);
      v69 = *(v0 + 256);
      v71 = *(v0 + 240);
      v72 = *(v0 + 200);
      v73 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *&v113 = v111;
      *v73 = 136315394;
      v74 = [v72 id];
      sub_1A34C9760();

      sub_1A3418AA8();
      v75 = sub_1A34CDDF0();
      v77 = v76;
      (*(v70 + 8))(v69, v71);
      v78 = sub_1A31EE23C(v75, v77, &v113);

      *(v73 + 4) = v78;
      *(v73 + 12) = 2080;
      if ([v50 firstObject])
      {
        sub_1A34CD920();
        swift_unknownObjectRelease();
      }

      else
      {
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
      }

      sub_1A328D790(v0 + 48, v0 + 112, &qword_1EB0C7690);
      if (*(v0 + 136))
      {
        sub_1A31FA144((v0 + 112), (v0 + 80));
        sub_1A31EE354(v0 + 80, v0 + 144);
        v80 = sub_1A34CD170();
        v82 = v81;
        __swift_destroy_boxed_opaque_existential_0(v0 + 80);
        sub_1A3288FDC(v0 + 48, &qword_1EB0C7690);
      }

      else
      {
        sub_1A3288FDC(v0 + 112, &qword_1EB0C7690);
        sub_1A3288FDC(v0 + 48, &qword_1EB0C7690);
        v82 = 0xE300000000000000;
        v80 = 7104878;
      }

      v83 = sub_1A31EE23C(v80, v82, &v113);

      *(v73 + 14) = v83;
      _os_log_impl(&dword_1A31E6000, v67, v68, "Failed to re-fetch contacts for contact: %s, firstResult: %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v111, -1, -1);
      MEMORY[0x1A58F1010](v73, -1, -1);

      goto LABEL_40;
    }

    goto LABEL_33;
  }

  v10 = *(v0 + 184);
LABEL_7:
  v11 = *(v0 + 232);
  v12 = *(v0 + 216);
  v13 = v10;
  sub_1A346A40C(v13, v12, v11);
  v41 = *(v0 + 232);

  v42 = type metadata accessor for VisualIdentity(0);
  v43 = (*(*(v42 - 8) + 48))(v41, 1, v42);
  v44 = *(v0 + 232);
  if (v43 != 1)
  {
    v79 = *(v0 + 192);

    sub_1A3336E78(v44, v79);
    goto LABEL_48;
  }

  sub_1A3288FDC(*(v0 + 232), &qword_1EB0C5D28);
LABEL_41:
  if (qword_1EB0C4AE8 != -1)
  {
    swift_once();
  }

  v84 = *(v0 + 200);
  v85 = sub_1A34CA250();
  __swift_project_value_buffer(v85, qword_1EB0EDF90);
  v86 = v84;
  v87 = sub_1A34CA230();
  v88 = sub_1A34CD660();

  if (os_log_type_enabled(v87, v88))
  {
    v90 = *(v0 + 248);
    v89 = *(v0 + 256);
    v91 = *(v0 + 240);
    v92 = *(v0 + 200);
    v93 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *&v113 = v112;
    *v93 = 136315138;
    v94 = [v92 id];
    sub_1A34C9760();

    sub_1A3418AA8();
    v95 = sub_1A34CDDF0();
    v97 = v96;
    (*(v90 + 8))(v89, v91);
    v98 = sub_1A31EE23C(v95, v97, &v113);

    *(v93 + 4) = v98;
    _os_log_impl(&dword_1A31E6000, v87, v88, "Could not fetch identity from contact: %s, returning placeholder identity", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v112);
    MEMORY[0x1A58F1010](v112, -1, -1);
    MEMORY[0x1A58F1010](v93, -1, -1);
  }

  if (qword_1EB0C27F8 != -1)
  {
    swift_once();
  }

  v99 = *(v0 + 192);
  v100 = type metadata accessor for VisualIdentity(0);
  v101 = __swift_project_value_buffer(v100, qword_1EB0ED9C8);
  sub_1A3300BB8(v101, v99);

LABEL_48:

  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_1A3468CB8()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0EDF90);
  __swift_project_value_buffer(v0, qword_1EB0EDF90);
  return sub_1A34CA240();
}

uint64_t sub_1A3468D38@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v65 = a1;
  v60 = a2;
  v100 = 0u;
  v101 = 0u;
  *&v102[0] = 0x7FFFFFFF8;
  memset(v102 + 8, 0, 80);
  if (qword_1ED854300 != -1)
  {
LABEL_28:
    swift_once();
  }

  v4 = off_1ED854020;
  v64 = *(off_1ED854020 + 2);
  if (v64)
  {
    swift_beginAccess();
    v5 = 0;
    v6 = (v4 + 6);
    v62 = v4;
    while (1)
    {
      if (v5 >= v4[2])
      {
        __break(1u);
        goto LABEL_28;
      }

      *&v68 = v3;
      v7 = *v6;
      v63 = *(v6 - 1);
      v8 = v63;
      v9 = swift_conformsToProtocol2();
      v10 = !v9 || v8 == 0;
      v67 = v5;
      if (!v10)
      {
        break;
      }

LABEL_20:
      v66 = v6;
      v37 = v8;
      v38 = v7[2];
      v39 = sub_1A34CD890();
      v103 = &v59;
      v40 = *(v39 - 8);
      MEMORY[0x1EEE9AC00](v39);
      v42 = &v59 - v41;
      v43 = v65;
      v44 = v68;
      v38(v43, v8, v7);
      v3 = v44;
      if (v44)
      {
        v96 = v102[2];
        v97 = v102[3];
        v98 = v102[4];
        v99 = *&v102[5];
        v92 = v100;
        v93 = v101;
        v94 = v102[0];
        v95 = v102[1];
        return sub_1A3288FDC(&v92, &qword_1EB0CBDB0);
      }

      v45 = *(v37 - 1);
      if ((*(v45 + 48))(v42, 1, v37) != 1)
      {
        *(&v78[1] + 8) = v63;
        *(&v78[2] + 1) = v7;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
        (*(v45 + 32))(boxed_opaque_existential_1, v42, v37);
        sub_1A346C27C(v78, v84);
        v68 = *&v84[24];
        v49 = *&v84[24];
        v50 = __swift_project_boxed_opaque_existential_1(v84, *&v84[24]);
        v51 = v60;
        *(v60 + 24) = v68;
        v52 = __swift_allocate_boxed_opaque_existential_1(v51);
        (*(*(v49 - 8) + 16))(v52, v50, v49);
        v96 = v102[2];
        v97 = v102[3];
        v98 = v102[4];
        v99 = *&v102[5];
        v92 = v100;
        v93 = v101;
        v94 = v102[0];
        v95 = v102[1];
        sub_1A3288FDC(&v92, &qword_1EB0CBDB0);
        return __swift_destroy_boxed_opaque_existential_0(v84);
      }

      v5 = v67 + 1;
      (*(v40 + 8))(v42, v39);
      memset(v78, 0, sizeof(v78));
      sub_1A3288FDC(v78, &qword_1EB0CBDB8);
      v6 = (v66 + 3);
      v4 = v62;
      if (v64 == v5)
      {
        goto LABEL_23;
      }
    }

    v97 = v102[3];
    v98 = v102[4];
    v99 = *&v102[5];
    v92 = v100;
    v93 = v101;
    v94 = v102[0];
    v95 = v102[1];
    v96 = v102[2];
    v11 = *&v102[0];
    v12 = *&v102[4];
    if (*&v102[0] >> 3 == 0xFFFFFFFFLL && *&v102[4] < 8uLL)
    {
      v66 = v9;
      v13 = v65;
      v14 = [v65 avatarRecipeData];
      if (!v14)
      {
        goto LABEL_20;
      }

      v103 = v7;
      v61 = v8;
      v15 = v14;
      v16 = sub_1A34C9690();
      v18 = v17;

      sub_1A31EC234(v16, v18);
      type metadata accessor for CNContactAvatarContact();
      v19 = swift_allocObject();
      v20 = OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___id;
      v21 = sub_1A34C9780();
      (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
      v22 = (v19 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___initials);
      *v22 = 0;
      v22[1] = 0;
      *(v19 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___isOrganization) = 2;
      v23 = v19 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___imageCropRect;
      *(v23 + 32) = 256;
      *v23 = 0u;
      *(v23 + 16) = 0u;
      v24 = v19 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___fullImage;
      *v24 = 1;
      *(v24 + 8) = 0;
      v25 = v19 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___thumbnailImage;
      *v25 = 1;
      *(v25 + 8) = 0;
      v26 = OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___avatarBirthday;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6C50);
      (*(*(v27 - 8) + 56))(v19 + v26, 1, 1, v27);
      *(v19 + 16) = v13;
      *(v19 + 24) = 1;
      v28 = v13;
      sub_1A3287998(v84);
      swift_setDeallocating();

      sub_1A3288FDC(v19 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___id, &qword_1EB0C60D0);

      sub_1A32C7DF4(*(v19 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___fullImage));
      sub_1A32C7DF4(*(v19 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___thumbnailImage));
      sub_1A3288FDC(v19 + OBJC_IVAR____TtC14ContactsUICore22CNContactAvatarContact____lazy_storage___avatarBirthday, &unk_1EB0C6C90);
      swift_deallocClassInstance();
      v80 = v102[2];
      v81 = v102[3];
      v82 = v102[4];
      v83 = *&v102[5];
      v78[0] = v100;
      v78[1] = v101;
      v78[2] = v102[0];
      v79 = v102[1];
      sub_1A3288FDC(v78, &qword_1EB0CBDB0);
      v102[3] = *&v84[80];
      v102[4] = *v85;
      *&v102[5] = *&v85[16];
      v100 = *v84;
      v101 = *&v84[16];
      v102[0] = *&v84[32];
      v102[1] = *&v84[48];
      v102[2] = *&v84[64];
      v11 = *&v84[32];
      v12 = *v85;
      if (*&v84[32] >> 3 == 0xFFFFFFFFLL && *v85 < 8uLL)
      {
        v8 = v61;
LABEL_19:
        v7 = v103;
        goto LABEL_20;
      }

      v29 = BYTE8(v100);
      v30 = v100;
      *&v75[0] = v100;
      BYTE8(v75[0]) = BYTE8(v100);
      *(v75 + 9) = *&v84[9];
      *(&v75[1] + 1) = *&v84[24];
      *(v76 + 8) = *&v84[40];
      *(&v76[1] + 8) = *&v84[56];
      *(&v76[2] + 8) = *&v84[72];
      *(&v76[3] + 1) = *&v84[88];
      *&v76[0] = *&v84[32];
      *&v77[0] = *v85;
      *(v77 + 8) = *&v85[8];
      sub_1A32E2390(v75, v72);
      v91 = *&v84[16];
      v87 = *&v84[40];
      v88 = *&v84[56];
      v89 = *&v84[72];
      v90 = *&v84[88];
      v86 = *&v85[8];
      v8 = v61;
      v9 = v66;
    }

    else
    {
      v103 = v7;
      v29 = BYTE8(v92);
      v30 = v92;
      v91 = v101;
      v87 = *(v102 + 8);
      v88 = *(&v102[1] + 8);
      v89 = *(&v102[2] + 8);
      v90 = *(&v102[3] + 1);
      v86 = *(&v102[4] + 8);
    }

    *v84 = v30;
    v84[8] = v29;
    *&v84[16] = v91;
    *&v84[88] = v90;
    *&v84[72] = v89;
    *&v84[56] = v88;
    *&v84[40] = v87;
    *&v84[32] = v11;
    *v85 = v12;
    *&v85[8] = v86;
    v80 = *&v84[64];
    v81 = *&v84[80];
    v82 = *v85;
    v83 = *(&v86 + 1);
    v78[0] = *v84;
    v78[1] = v91;
    v78[2] = *&v84[32];
    v79 = *&v84[48];
    v61 = *(v9 + 48);
    v31 = v9;
    v32 = sub_1A34CD890();
    v66 = &v59;
    v33 = *(v32 - 8);
    MEMORY[0x1EEE9AC00](v32);
    v35 = &v59 - v34;
    sub_1A328D790(&v92, v75, &qword_1EB0CBDB0);
    sub_1A32E2390(v84, v75);
    (v61)(v78, v8, v31);
    v36 = *(v8 - 1);
    if ((*(v36 + 48))(v35, 1, v8) != 1)
    {
      *(&v70 + 1) = v8;
      v71 = v31;
      v53 = __swift_allocate_boxed_opaque_existential_1(&v69);
      (*(v36 + 32))(v53, v35, v8);
      sub_1A31EE568(&v69, v72);
      v54 = v73;
      v55 = v74;
      v56 = __swift_project_boxed_opaque_existential_1(v72, v73);
      v57 = v60;
      *(v60 + 3) = v54;
      v57[4] = *(v55 + 8);
      v58 = __swift_allocate_boxed_opaque_existential_1(v57);
      (*(*(v54 - 8) + 16))(v58, v56, v54);
      sub_1A3288E28(v84);
      v76[2] = v102[2];
      v76[3] = v102[3];
      v77[0] = v102[4];
      *&v77[1] = *&v102[5];
      v75[0] = v100;
      v75[1] = v101;
      v76[0] = v102[0];
      v76[1] = v102[1];
      sub_1A3288FDC(v75, &qword_1EB0CBDB0);
      return __swift_destroy_boxed_opaque_existential_0(v72);
    }

    sub_1A3288E28(v84);
    (*(v33 + 8))(v35, v32);
    v69 = 0u;
    v70 = 0u;
    v71 = 0;
    sub_1A3288FDC(&v69, &qword_1EB0CBD90);
    goto LABEL_19;
  }

LABEL_23:
  v96 = v102[2];
  v97 = v102[3];
  v98 = v102[4];
  v99 = *&v102[5];
  v92 = v100;
  v93 = v101;
  v94 = v102[0];
  v95 = v102[1];
  result = sub_1A3288FDC(&v92, &qword_1EB0CBDB0);
  v47 = v60;
  *v60 = 0u;
  v47[1] = 0u;
  *(v47 + 4) = 0;
  return result;
}

void sub_1A3469848(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 encodingType];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [a1 imageData];
      v7 = sub_1A34C9690();
      v9 = v8;

      static AvatarView.Model.Recipe.recipe(from:)(v7, v9, &v74);
      if (v2)
      {
        sub_1A31EC234(v7, v9);
      }

      else
      {
        v47[0] = a2;
        v47[1] = 0;
        sub_1A31EC234(v7, v9);
        v70 = v78;
        v71 = v79;
        v72 = v80;
        v73 = v81;
        v66 = v74;
        v67 = v75;
        v68 = v76;
        v69 = v77;
        if (qword_1ED854300 != -1)
        {
          goto LABEL_23;
        }

        while (1)
        {
          v26 = off_1ED854020;
          v27 = *(off_1ED854020 + 2);
          if (!v27)
          {
            break;
          }

          v28 = 0;
          v29 = (off_1ED854020 + 32);
          v48 = *(off_1ED854020 + 2);
          v49 = off_1ED854020;
          while (v28 < v26[2])
          {
            v30 = *v29;
            v31 = swift_conformsToProtocol2();
            if (v31)
            {
              v32 = v30 == 0;
            }

            else
            {
              v32 = 1;
            }

            if (!v32)
            {
              v33 = v31;
              v57 = v71;
              v58 = v72;
              v52 = v66;
              v53 = v67;
              v54 = v68;
              v59 = v73;
              v55 = v69;
              v56 = v70;
              v50 = *(v31 + 48);
              v34 = sub_1A34CD890();
              v82 = v47;
              v35 = *(v34 - 8);
              MEMORY[0x1EEE9AC00](v34);
              v37 = v47 - v36;
              sub_1A32E2390(&v66, v51);
              v50(&v52, v30, v33);
              v38 = *(v30 - 8);
              if ((*(v38 + 48))(v37, 1, v30) != 1)
              {
                *(&v61 + 1) = v30;
                v62 = v33;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
                (*(v38 + 32))(boxed_opaque_existential_1, v37, v30);
                sub_1A31EE568(&v60, v63);
                v42 = v64;
                v43 = v65;
                v44 = __swift_project_boxed_opaque_existential_1(v63, v64);
                v45 = v47[0];
                *(v47[0] + 24) = v42;
                v45[4] = *(v43 + 8);
                v46 = __swift_allocate_boxed_opaque_existential_1(v45);
                (*(*(v42 - 8) + 16))(v46, v44, v42);
                sub_1A3288E28(&v66);
                __swift_destroy_boxed_opaque_existential_0(v63);
                return;
              }

              (*(v35 + 8))(v37, v34);
              v60 = 0u;
              v61 = 0u;
              v62 = 0;
              sub_1A3288FDC(&v60, &qword_1EB0CBD90);
              v27 = v48;
              v26 = v49;
            }

            ++v28;
            v29 += 3;
            if (v27 == v28)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_23:
          swift_once();
        }

LABEL_20:
        sub_1A3288E28(&v66);
        v40 = v47[0];
        *v47[0] = 0u;
        *(v40 + 16) = 0u;
        *(v40 + 32) = 0;
      }
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else
  {
    v10 = [a1 imageData];
    v11 = sub_1A34C9690();
    v13 = v12;

    v14 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v15 = sub_1A34C9680();
    v16 = [v14 initWithData_];

    sub_1A31EC234(v11, v13);
    if (v16)
    {
      v17 = v16;
      [a1 cropRect];
      *&v52 = v17;
      *(&v52 + 1) = v17;
      v53 = 0u;
      v54 = 0u;
      *&v55 = v18;
      *(&v55 + 1) = v19;
      *&v56 = v20;
      *(&v56 + 1) = v21;
      LOBYTE(v57) = 0;
      v22 = v17;
      sub_1A3362D58();
      v68 = 0u;
      v69 = v55;
      v70 = v56;
      LOBYTE(v71) = 0;
      v66 = v52;
      v67 = 0u;
      LOBYTE(v79) = 0;
      v76 = 0u;
      v77 = v55;
      v78 = v56;
      v74 = v52;
      v75 = 0u;
      sub_1A336351C(&v66, v51);
      sub_1A3363554(&v74);
      *(a2 + 24) = &type metadata for PhotosAvatarSource;
      *(a2 + 32) = &off_1F1622140;
      v23 = swift_allocObject();
      *a2 = v23;

      v24 = v69;
      *(v23 + 48) = v68;
      *(v23 + 64) = v24;
      *(v23 + 80) = v70;
      *(v23 + 96) = v71;
      v25 = v67;
      *(v23 + 16) = v66;
      *(v23 + 32) = v25;
    }

    else
    {
      sub_1A3396958();
      swift_allocError();
      *v39 = 0;
      swift_willThrow();
    }
  }
}

void *sub_1A3469DC4@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v30 = result;
  v25 = a2;
  if (qword_1ED854008 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v4 = off_1ED854018;
    v29 = *(off_1ED854018 + 2);
    if (!v29)
    {
      break;
    }

    v5 = 0;
    v6 = (off_1ED854018 + 56);
    v26 = off_1ED854018;
    while (v5 < v4[2])
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 1);
      v27 = *v6;
      v31 = v3;
      v28 = v8;
      v9 = v8;
      v39 = *(v8 + 16);
      v10 = sub_1A34CD890();
      v11 = *(v10 - 8);
      MEMORY[0x1EEE9AC00](v10);
      v13 = &v24 - v12;
      v14 = v30;
      v15 = v31;
      result = v39(v14, v7, v9);
      v3 = v15;
      if (v15)
      {
        return result;
      }

      v16 = *(v7 - 8);
      if ((*(v16 + 48))(v13, 1, v7) != 1)
      {
        *(&v33 + 1) = v7;
        v34 = v28;
        v35 = v27;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
        (*(v16 + 32))(boxed_opaque_existential_1, v13, v7);
        sub_1A346C1F8(&v32, v36);
        v19 = v37;
        v20 = v38;
        v21 = __swift_project_boxed_opaque_existential_1(v36, v37);
        v22 = v25;
        v25[3] = v19;
        v22[4] = v20;
        v23 = __swift_allocate_boxed_opaque_existential_1(v22);
        (*(*(v19 - 8) + 16))(v23, v21, v19);
        return __swift_destroy_boxed_opaque_existential_0(v36);
      }

      ++v5;
      (*(v11 + 8))(v13, v10);
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      result = sub_1A3288FDC(&v32, &qword_1EB0CBDA0);
      v6 += 4;
      v4 = v26;
      if (v29 == v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    result = swift_once();
  }

LABEL_8:
  v17 = v25;
  v25[4] = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  return result;
}

void *sub_1A346A0E8@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v30 = result;
  v25 = a2;
  if (qword_1ED854008 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v4 = off_1ED854018;
    v29 = *(off_1ED854018 + 2);
    if (!v29)
    {
      break;
    }

    v5 = 0;
    v6 = (off_1ED854018 + 48);
    v26 = off_1ED854018;
    while (v5 < v4[2])
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v31 = v3;
      v27 = v8;
      v9 = v8;
      v36 = *(v8 + 8);
      v28 = v7;
      v10 = v7;
      v11 = sub_1A34CD890();
      v12 = *(v11 - 8);
      MEMORY[0x1EEE9AC00](v11);
      v14 = &v25 - v13;
      v15 = v30;
      v16 = v31;
      result = v36(v15, v10, v9);
      v3 = v16;
      if (v16)
      {
        return result;
      }

      v17 = *(v10 - 8);
      if ((*(v17 + 48))(v14, 1, v10) != 1)
      {
        *(&v32[1] + 8) = v28;
        *(&v32[2] + 8) = v27;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
        (*(v17 + 32))(boxed_opaque_existential_1, v14, v10);
        sub_1A346C1F8(v32, v33);
        v20 = v34;
        v21 = v35;
        v22 = __swift_project_boxed_opaque_existential_1(v33, v34);
        v23 = v25;
        v25[3] = v20;
        v23[4] = v21;
        v24 = __swift_allocate_boxed_opaque_existential_1(v23);
        (*(*(v20 - 8) + 16))(v24, v22, v20);
        return __swift_destroy_boxed_opaque_existential_0(v33);
      }

      ++v5;
      (*(v12 + 8))(v14, v11);
      memset(v32, 0, 56);
      result = sub_1A3288FDC(v32, &qword_1EB0CBDA0);
      v6 += 2;
      v4 = v26;
      if (v29 == v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    result = swift_once();
  }

LABEL_8:
  v18 = v25;
  v25[4] = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  return result;
}

uint64_t sub_1A346A40C@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_1A3468D38(a1, v15);
  if (!v3)
  {
    sub_1A3469DC4(a1, &v12);
    if (v13)
    {
      sub_1A31EE568(&v12, v14);
    }

    else
    {
      v14[3] = &type metadata for PosterConfigurationSource;
      v14[4] = &off_1F16220A8;
      v14[0] = swift_allocObject();
      sub_1A34913A0(a2, v14[0] + 16);
    }

    sub_1A328D790(v15, &v10, &qword_1EB0CBD60);
    if (v11)
    {
      sub_1A31EE568(&v10, &v12);
      sub_1A34C8A90();
      sub_1A3288FDC(v15, &qword_1EB0CBD60);
      v8 = type metadata accessor for VisualIdentity(0);
      sub_1A31EE568(&v12, a3 + v8[7]);
      sub_1A31EE4BC(v14, a3 + v8[8]);
      *(a3 + v8[5]) = 0;
      *(a3 + v8[6]) = 0;
      __swift_destroy_boxed_opaque_existential_0(v14);
      return (*(*(v8 - 1) + 56))(a3, 0, 1, v8);
    }

    else
    {
      sub_1A3288FDC(v15, &qword_1EB0CBD60);
      __swift_destroy_boxed_opaque_existential_0(v14);
      sub_1A3288FDC(&v10, &qword_1EB0CBD60);
      v9 = type metadata accessor for VisualIdentity(0);
      return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
    }
  }

  return result;
}

uint64_t sub_1A346A644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 928) = a7;
  *(v7 + 145) = a6;
  *(v7 + 920) = a5;
  *(v7 + 912) = a4;
  *(v7 + 904) = a3;
  *(v7 + 896) = a2;
  *(v7 + 888) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C60D0);
  *(v7 + 936) = swift_task_alloc();
  v8 = sub_1A34C9780();
  *(v7 + 944) = v8;
  *(v7 + 952) = *(v8 - 8);
  *(v7 + 960) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A346A754, 0, 0);
}

uint64_t sub_1A346A754()
{
  v44 = v0;
  v1 = 0uLL;
  *(v0 + 248) = 0u;
  v2 = *(v0 + 904);
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0;
  if (v2)
  {
    v3 = v2;
    sub_1A3469848(v3, &v41);
    sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);

    v4 = v42;
    *(v0 + 248) = v41;
    *(v0 + 264) = v4;
    *(v0 + 280) = v43;
    v1 = 0uLL;
  }

  v5 = *(v0 + 896);
  *(v0 + 288) = v1;
  *(v0 + 304) = v1;
  *(v0 + 320) = 0;
  if (v5)
  {
    v6 = v5;
    sub_1A346A0E8(v6, &v41);
    sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);

    v7 = v42;
    *(v0 + 288) = v41;
    *(v0 + 304) = v7;
    *(v0 + 320) = v43;
  }

  sub_1A328D790(v0 + 288, v0 + 328, &qword_1EB0CB0B8);
  v8 = *(v0 + 352);
  sub_1A3288FDC(v0 + 328, &qword_1EB0CB0B8);
  if (!v8)
  {
    sub_1A328D790(v0 + 248, v0 + 448, &qword_1EB0CBD60);
    if (*(v0 + 472))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD88);
      if (swift_dynamicCast())
      {
        if (*(v0 + 432))
        {
          v9 = *(v0 + 920);
          sub_1A31EE568((v0 + 408), v0 + 368);
          *(v0 + 872) = &type metadata for PosterConfigurationSource;
          *(v0 + 880) = &off_1F16220A8;
          v10 = swift_allocObject();
          *(v0 + 968) = v10;
          *(v0 + 848) = v10;
          *(v0 + 152) = 0u;
          *(v0 + 168) = 0u;
          *(v0 + 184) = 0u;
          *(v0 + 200) = 0u;
          *(v0 + 216) = 0u;
          *(v0 + 232) = 0u;
          v11 = v9;
          sub_1A34604B4(v11, v0 + 152, v0 + 16);

          v12 = swift_task_alloc();
          *(v0 + 976) = v12;
          *v12 = v0;
          v12[1] = sub_1A346B134;

          return sub_1A33837BC(0xD00000000000002CLL, 0x80000001A350EE80);
        }
      }

      else
      {
        *(v0 + 440) = 0;
        *(v0 + 408) = 0u;
        *(v0 + 424) = 0u;
      }
    }

    else
    {
      sub_1A3288FDC(v0 + 448, &qword_1EB0CBD60);
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
      *(v0 + 440) = 0;
    }

    sub_1A3288FDC(v0 + 408, &qword_1EB0CBD68);
  }

  sub_1A328D790(v0 + 248, v0 + 488, &qword_1EB0CBD60);
  v14 = *(v0 + 512);
  sub_1A3288FDC(v0 + 488, &qword_1EB0CBD60);
  if (!v14)
  {
    sub_1A328D790(v0 + 288, v0 + 608, &qword_1EB0CB0B8);
    if (*(v0 + 632))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD78);
      if (swift_dynamicCast())
      {
        if (*(v0 + 592))
        {
          sub_1A31EE568((v0 + 568), v0 + 528);
          __swift_project_boxed_opaque_existential_1((v0 + 528), *(v0 + 552));
          v15 = swift_task_alloc();
          *(v0 + 1024) = v15;
          *v15 = v0;
          v15[1] = sub_1A346BAE0;

          return sub_1A335F824(v0 + 808);
        }
      }

      else
      {
        *(v0 + 600) = 0;
        *(v0 + 568) = 0u;
        *(v0 + 584) = 0u;
      }
    }

    else
    {
      sub_1A3288FDC(v0 + 608, &qword_1EB0CB0B8);
      *(v0 + 568) = 0u;
      *(v0 + 584) = 0u;
      *(v0 + 600) = 0;
    }

    sub_1A3288FDC(v0 + 568, &qword_1EB0CBD70);
  }

  if (*(v0 + 896) == 0)
  {
    sub_1A3396958();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
    sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);

    v25 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 952);
    v17 = *(v0 + 944);
    v18 = *(v0 + 936);
    if (*(v0 + 896))
    {
      v19 = *(v0 + 896);
    }

    else
    {
      v19 = *(v0 + 904);
    }

    v20 = [v19 identifier];
    sub_1A34CD110();

    sub_1A34C9730();

    v21 = *(v16 + 48);
    if (v21(v18, 1, v17) == 1)
    {
      v22 = *(v0 + 944);
      v23 = *(v0 + 936);
      sub_1A34C8A90();
      if (v21(v23, 1, v22) != 1)
      {
        sub_1A3288FDC(*(v0 + 936), &qword_1EB0C60D0);
      }
    }

    else
    {
      (*(*(v0 + 952) + 32))(*(v0 + 960), *(v0 + 936), *(v0 + 944));
    }

    sub_1A328D790(v0 + 248, v0 + 688, &qword_1EB0CBD60);
    if (*(v0 + 712))
    {
      sub_1A31EE568((v0 + 688), v0 + 648);
    }

    else
    {
      if ([*(v0 + 920) isKeyAvailable_] && objc_msgSend(*(v0 + 920), sel_contactType) == 1 || (v26 = objc_msgSend(objc_opt_self(), sel_stringFromContact_style_, *(v0 + 920), 1002)) == 0)
      {
        v28 = 0;
        v30 = 0xE000000000000000;
      }

      else
      {
        v27 = v26;
        v28 = sub_1A34CD110();
        v30 = v29;
      }

      if (qword_1ED854B20 != -1)
      {
        swift_once();
      }

      v31 = qword_1ED857E20;
      v32 = byte_1ED857E28;
      sub_1A31EE004(qword_1ED857E20, byte_1ED857E28);
      if (qword_1ED8549E0 != -1)
      {
        swift_once();
      }

      v33 = byte_1ED8549E8;
      v34 = qword_1ED8549F0;
      v35 = qword_1ED8549F8;
      *(v0 + 672) = &type metadata for MonogramAvatarSource;
      *(v0 + 680) = &off_1F1629A00;
      v36 = swift_allocObject();
      *(v0 + 648) = v36;
      *(v36 + 16) = v31;
      *(v36 + 24) = v32;
      *(v36 + 32) = v28;
      *(v36 + 40) = v30;
      *(v36 + 48) = v33;
      *(v36 + 56) = v34;
      *(v36 + 64) = v35;
      if (*(v0 + 712))
      {
        sub_1A3288FDC(v0 + 688, &qword_1EB0CBD60);
      }
    }

    sub_1A328D790(v0 + 288, v0 + 768, &qword_1EB0CB0B8);
    if (*(v0 + 792))
    {
      sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
      sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);
      sub_1A31EE568((v0 + 768), v0 + 728);
    }

    else
    {
      v37 = *(v0 + 920);
      *(v0 + 752) = &type metadata for PosterConfigurationSource;
      *(v0 + 760) = &off_1F16220A8;
      v38 = swift_allocObject();
      *(v0 + 728) = v38;
      sub_1A34913A0(v37, v38 + 16);
      sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
      sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);
      if (*(v0 + 792))
      {
        sub_1A3288FDC(v0 + 768, &qword_1EB0CB0B8);
      }
    }

    v39 = *(v0 + 888);
    (*(*(v0 + 952) + 32))(v39, *(v0 + 960), *(v0 + 944));
    v40 = type metadata accessor for VisualIdentity(0);
    *(v39 + v40[5]) = 1;
    *(v39 + v40[6]) = 0;
    sub_1A31EE568((v0 + 648), v39 + v40[7]);
    sub_1A31EE568((v0 + 728), v39 + v40[8]);

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t sub_1A346B134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  v7[123] = a2;
  v7[124] = a3;
  v7[125] = a4;
  v7[126] = v4;

  if (v4)
  {
    v8 = sub_1A346BA28;
  }

  else
  {
    v7[127] = a1;
    v8 = sub_1A346B268;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A346B268()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 920);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = sub_1A3444DEC(v2, v1);
  v7 = sub_1A34CD0E0();
  v8 = [v4 finalizedConfiguration:v6 forExtensionIdentifier:v7];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = sub_1A3444DEC(*(v0 + 992), *(v0 + 1000));
  }

  v10 = sub_1A3444A44(v9, 0);
  v11 = *(v0 + 1000);
  sub_1A335DED4(v10 & 0xFFFFFFFF00000001, v12 & 1, v13, v3, *(v0 + 968) + 16);

  sub_1A335DA80(v0 + 16);
  sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
  v14 = *(v0 + 864);
  *(v0 + 288) = *(v0 + 848);
  *(v0 + 304) = v14;
  *(v0 + 320) = *(v0 + 880);
  __swift_destroy_boxed_opaque_existential_0(v0 + 368);
  sub_1A328D790(v0 + 248, v0 + 488, &qword_1EB0CBD60);
  v15 = *(v0 + 512);
  sub_1A3288FDC(v0 + 488, &qword_1EB0CBD60);
  if (!v15)
  {
    v16 = (v0 + 568);
    sub_1A328D790(v0 + 288, v0 + 608, &qword_1EB0CB0B8);
    if (*(v0 + 632))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAD00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBD78);
      if (swift_dynamicCast())
      {
        if (*(v0 + 592))
        {
          sub_1A31EE568((v0 + 568), v0 + 528);
          __swift_project_boxed_opaque_existential_1((v0 + 528), *(v0 + 552));
          v17 = swift_task_alloc();
          *(v0 + 1024) = v17;
          *v17 = v0;
          v17[1] = sub_1A346BAE0;

          return sub_1A335F824(v0 + 808);
        }
      }

      else
      {
        *(v0 + 600) = 0;
        *v16 = 0u;
        *(v0 + 584) = 0u;
      }
    }

    else
    {
      sub_1A3288FDC(v0 + 608, &qword_1EB0CB0B8);
      *v16 = 0u;
      *(v0 + 584) = 0u;
      *(v0 + 600) = 0;
    }

    sub_1A3288FDC(v0 + 568, &qword_1EB0CBD70);
  }

  if (*(v0 + 896) == 0)
  {
    sub_1A3396958();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
    sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);

    v28 = *(v0 + 8);
  }

  else
  {
    v19 = *(v0 + 952);
    v20 = *(v0 + 944);
    v21 = *(v0 + 936);
    if (*(v0 + 896))
    {
      v22 = *(v0 + 896);
    }

    else
    {
      v22 = *(v0 + 904);
    }

    v23 = [v22 identifier];
    sub_1A34CD110();

    sub_1A34C9730();

    v24 = *(v19 + 48);
    if (v24(v21, 1, v20) == 1)
    {
      v25 = *(v0 + 944);
      v26 = *(v0 + 936);
      sub_1A34C8A90();
      if (v24(v26, 1, v25) != 1)
      {
        sub_1A3288FDC(*(v0 + 936), &qword_1EB0C60D0);
      }
    }

    else
    {
      (*(*(v0 + 952) + 32))(*(v0 + 960), *(v0 + 936), *(v0 + 944));
    }

    sub_1A328D790(v0 + 248, v0 + 688, &qword_1EB0CBD60);
    if (*(v0 + 712))
    {
      sub_1A31EE568((v0 + 688), v0 + 648);
    }

    else
    {
      if ([*(v0 + 920) isKeyAvailable_] && objc_msgSend(*(v0 + 920), sel_contactType) == 1 || (v29 = objc_msgSend(objc_opt_self(), sel_stringFromContact_style_, *(v0 + 920), 1002)) == 0)
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      else
      {
        v30 = v29;
        v31 = sub_1A34CD110();
        v33 = v32;
      }

      if (qword_1ED854B20 != -1)
      {
        swift_once();
      }

      v34 = qword_1ED857E20;
      v35 = byte_1ED857E28;
      sub_1A31EE004(qword_1ED857E20, byte_1ED857E28);
      if (qword_1ED8549E0 != -1)
      {
        swift_once();
      }

      v36 = byte_1ED8549E8;
      v37 = qword_1ED8549F0;
      v38 = qword_1ED8549F8;
      *(v0 + 672) = &type metadata for MonogramAvatarSource;
      *(v0 + 680) = &off_1F1629A00;
      v39 = swift_allocObject();
      *(v0 + 648) = v39;
      *(v39 + 16) = v34;
      *(v39 + 24) = v35;
      *(v39 + 32) = v31;
      *(v39 + 40) = v33;
      *(v39 + 48) = v36;
      *(v39 + 56) = v37;
      *(v39 + 64) = v38;
      if (*(v0 + 712))
      {
        sub_1A3288FDC(v0 + 688, &qword_1EB0CBD60);
      }
    }

    sub_1A328D790(v0 + 288, v0 + 768, &qword_1EB0CB0B8);
    if (*(v0 + 792))
    {
      sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
      sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);
      sub_1A31EE568((v0 + 768), v0 + 728);
    }

    else
    {
      v40 = *(v0 + 920);
      *(v0 + 752) = &type metadata for PosterConfigurationSource;
      *(v0 + 760) = &off_1F16220A8;
      v41 = swift_allocObject();
      *(v0 + 728) = v41;
      sub_1A34913A0(v40, v41 + 16);
      sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
      sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);
      if (*(v0 + 792))
      {
        sub_1A3288FDC(v0 + 768, &qword_1EB0CB0B8);
      }
    }

    v42 = *(v0 + 888);
    (*(*(v0 + 952) + 32))(v42, *(v0 + 960), *(v0 + 944));
    v43 = type metadata accessor for VisualIdentity(0);
    *(v42 + v43[5]) = 1;
    *(v42 + v43[6]) = 0;
    sub_1A31EE568((v0 + 648), v42 + v43[7]);
    sub_1A31EE568((v0 + 728), v42 + v43[8]);

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_1A346BA28()
{
  sub_1A335DA80(v0 + 16);
  __swift_deallocate_boxed_opaque_existential_1(v0 + 848);
  sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
  sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 368);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A346BAE0()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_1A346C150;
  }

  else
  {
    v2 = sub_1A346BBF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A346BBF4()
{
  sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);
  v1 = *(v0 + 824);
  *(v0 + 248) = *(v0 + 808);
  *(v0 + 264) = v1;
  *(v0 + 280) = *(v0 + 840);
  __swift_destroy_boxed_opaque_existential_0(v0 + 528);
  if (*(v0 + 896) == 0)
  {
    sub_1A3396958();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
    sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);

    v11 = *(v0 + 8);
  }

  else
  {
    v2 = *(v0 + 952);
    v3 = *(v0 + 944);
    v4 = *(v0 + 936);
    if (*(v0 + 896))
    {
      v5 = *(v0 + 896);
    }

    else
    {
      v5 = *(v0 + 904);
    }

    v6 = [v5 identifier];
    sub_1A34CD110();

    sub_1A34C9730();

    v7 = *(v2 + 48);
    if (v7(v4, 1, v3) == 1)
    {
      v8 = *(v0 + 944);
      v9 = *(v0 + 936);
      sub_1A34C8A90();
      if (v7(v9, 1, v8) != 1)
      {
        sub_1A3288FDC(*(v0 + 936), &qword_1EB0C60D0);
      }
    }

    else
    {
      (*(*(v0 + 952) + 32))(*(v0 + 960), *(v0 + 936), *(v0 + 944));
    }

    sub_1A328D790(v0 + 248, v0 + 688, &qword_1EB0CBD60);
    if (*(v0 + 712))
    {
      sub_1A31EE568((v0 + 688), v0 + 648);
    }

    else
    {
      if ([*(v0 + 920) isKeyAvailable_] && objc_msgSend(*(v0 + 920), sel_contactType) == 1 || (v12 = objc_msgSend(objc_opt_self(), sel_stringFromContact_style_, *(v0 + 920), 1002)) == 0)
      {
        v14 = 0;
        v16 = 0xE000000000000000;
      }

      else
      {
        v13 = v12;
        v14 = sub_1A34CD110();
        v16 = v15;
      }

      if (qword_1ED854B20 != -1)
      {
        swift_once();
      }

      v17 = qword_1ED857E20;
      v18 = byte_1ED857E28;
      sub_1A31EE004(qword_1ED857E20, byte_1ED857E28);
      if (qword_1ED8549E0 != -1)
      {
        swift_once();
      }

      v19 = byte_1ED8549E8;
      v20 = qword_1ED8549F0;
      v21 = qword_1ED8549F8;
      *(v0 + 672) = &type metadata for MonogramAvatarSource;
      *(v0 + 680) = &off_1F1629A00;
      v22 = swift_allocObject();
      *(v0 + 648) = v22;
      *(v22 + 16) = v17;
      *(v22 + 24) = v18;
      *(v22 + 32) = v14;
      *(v22 + 40) = v16;
      *(v22 + 48) = v19;
      *(v22 + 56) = v20;
      *(v22 + 64) = v21;
      if (*(v0 + 712))
      {
        sub_1A3288FDC(v0 + 688, &qword_1EB0CBD60);
      }
    }

    sub_1A328D790(v0 + 288, v0 + 768, &qword_1EB0CB0B8);
    if (*(v0 + 792))
    {
      sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
      sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);
      sub_1A31EE568((v0 + 768), v0 + 728);
    }

    else
    {
      v23 = *(v0 + 920);
      *(v0 + 752) = &type metadata for PosterConfigurationSource;
      *(v0 + 760) = &off_1F16220A8;
      v24 = swift_allocObject();
      *(v0 + 728) = v24;
      sub_1A34913A0(v23, v24 + 16);
      sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
      sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);
      if (*(v0 + 792))
      {
        sub_1A3288FDC(v0 + 768, &qword_1EB0CB0B8);
      }
    }

    v25 = *(v0 + 888);
    (*(*(v0 + 952) + 32))(v25, *(v0 + 960), *(v0 + 944));
    v26 = type metadata accessor for VisualIdentity(0);
    *(v25 + v26[5]) = 1;
    *(v25 + v26[6]) = 0;
    sub_1A31EE568((v0 + 648), v25 + v26[7]);
    sub_1A31EE568((v0 + 728), v25 + v26[8]);

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_1A346C150()
{
  sub_1A3288FDC(v0 + 288, &qword_1EB0CB0B8);
  sub_1A3288FDC(v0 + 248, &qword_1EB0CBD60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 528);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A346C1F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

unint64_t sub_1A346C218()
{
  result = qword_1EB0CA390;
  if (!qword_1EB0CA390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C7760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA390);
  }

  return result;
}

_OWORD *sub_1A346C27C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_1A346C2A8()
{
  result = qword_1EB0CBDC0;
  if (!qword_1EB0CBDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBDC0);
  }

  return result;
}

uint64_t type metadata accessor for VisualIdentityPreview()
{
  result = qword_1EB0C2258;
  if (!qword_1EB0C2258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A346C374()
{
  sub_1A346C48C(319, &qword_1EB0C1178, type metadata accessor for VisualIdentityEditorViewModel);
  if (v0 <= 0x3F)
  {
    sub_1A346C48C(319, &qword_1EB0C1120, type metadata accessor for CGSize);
    if (v1 <= 0x3F)
    {
      sub_1A336F124();
      if (v2 <= 0x3F)
      {
        type metadata accessor for VisualIdentity(319);
        if (v3 <= 0x3F)
        {
          sub_1A346C4E0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A346C48C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A34CA5F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A346C4E0()
{
  if (!qword_1ED853468)
  {
    v0 = sub_1A34CD890();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED853468);
    }
  }
}

unint64_t sub_1A346C544()
{
  result = qword_1EB0CBDD0;
  if (!qword_1EB0CBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CBDD0);
  }

  return result;
}

uint64_t sub_1A346C5B4()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  sub_1A34C9010();
  if ((v6 & 1) == 0)
  {
    sub_1A34CD650();
    v7 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double sub_1A346C6F4()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    return *(v0 + 16);
  }

  sub_1A34C9010();
  sub_1A34CD650();
  v8 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();
  sub_1A346E344(v6, v5, 0);
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_1A346C850()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
  }

  else
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v6 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A336F738(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_1A346C9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE80);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = 0.0;
  if (sub_1A34CAC80())
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 30.0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE88);
  (*(*(v10 - 8) + 16))(v7, a1, v10);
  v11 = &v7[*(v5 + 44)];
  *v11 = v9;
  v11[8] = 1;
  if (sub_1A34CAC80())
  {
    v8 = 1.0;
  }

  sub_1A346EBAC(v7, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE90);
  *(a2 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_1A346CAE4@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(sub_1A346C850() + 16);

  if (v2 != 1)
  {
    goto LABEL_5;
  }

  v3 = sub_1A346C850();
  if (!*(v3 + 16))
  {

LABEL_5:
    v6 = sub_1A346C5B4();
    swift_getKeyPath();
    sub_1A346EB38(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C99A0();

    v4 = *(v6 + 40);

    goto LABEL_6;
  }

  v4 = *(v3 + 32);

LABEL_6:
  *a1 = v4;
  return result;
}

uint64_t sub_1A346CBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a1;
  v91 = a3;
  v90 = sub_1A34CB400();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1A34CB200();
  v6 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1A34CAD60();
  MEMORY[0x1EEE9AC00](v82);
  v9 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBDD8);
  MEMORY[0x1EEE9AC00](v80);
  v11 = (&v76 - v10);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBDE0);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v76 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBDE8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v76 - v13;
  v14 = type metadata accessor for VisualIdentityPreview();
  v15 = a2 + v14[7];
  v16 = (v15 + *(type metadata accessor for VisualIdentity(0) + 28));
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v18 + 16))(v93, v17, v18);
  if (v94)
  {
    v77 = 1.0;
    v19 = 0.0;
    v78 = 0.461538462;
    v20 = 0.269230769;
  }

  else
  {
    v78 = *&v93[3];
    v77 = *&v93[2];
    v19 = *v93;
    v20 = *&v93[1];
  }

  sub_1A34CA7C0();
  v23 = sub_1A343F8EC(v21, v22, 1.0, 1.0);
  v25 = v24;
  v26 = sub_1A346C6F4();
  v28 = v27;
  if (*(a2 + v14[8]) == 1)
  {
    sub_1A34CA7C0();
    v30 = v29;
  }

  else
  {
    v30 = INFINITY;
  }

  if (*(a2 + v14[9]) == 1)
  {
    sub_1A34CA7C0();
  }

  else
  {
    v31 = INFINITY;
  }

  v32 = sub_1A343F8EC(v30, v31, v26, v28);
  v34 = v33;
  sub_1A346CAE4(v95);
  *v11 = sub_1A34CCC80();
  v11[1] = v35;
  v36 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBDF0) + 44));
  *v36 = sub_1A34CCC80();
  v36[1] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBDF8);
  sub_1A346D3EC(a2, v36 + *(v38 + 44), v23, v25, v32, v34, v19, v20, v77, v78, v32, v34);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE00) + 52);
  v40 = sub_1A34C9780();
  v41 = *(*(v40 - 8) + 16);
  v79 = v15;
  v41(v36 + v39, v15, v40);
  sub_1A346E3D0();
  v42 = sub_1A34CA780();
  *(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE08) + 36)) = v42;
  sub_1A34CCC80();
  sub_1A34CA760();
  v43 = (v11 + *(v80 + 36));
  v44 = v95[1];
  *v43 = v95[0];
  v43[1] = v44;
  v43[2] = v95[2];
  sub_1A346CAE4(v92);
  v45 = LOBYTE(v92[0]);
  sub_1A346CAE4(v92);
  v46 = MEMORY[0x1E697F468];
  if (!LOBYTE(v92[0]))
  {
    v46 = MEMORY[0x1E697F480];
  }

  v47 = v83;
  v48 = v85;
  (*(v6 + 104))(v83, *v46, v85);
  v49 = v32 * 0.25;
  if (!v45)
  {
    v49 = v23 * 0.5;
  }

  *v9 = v49;
  v9[1] = v49;
  (*(v6 + 32))(v9 + *(v82 + 20), v47, v48);
  v50 = v84;
  v51 = &v84[*(v81 + 36)];
  sub_1A346E424(v9, v51, MEMORY[0x1E697EAF0]);
  *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CBE10) + 36)) = 256;
  sub_1A329D98C(v11, v50, &qword_1EB0CBDD8);
  sub_1A34CB640();
  v52 = v90;
  sub_1A34CA7D0();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = *(v88 + 8);
  v61(v5, v52);
  v96.origin.x = v54;
  v96.origin.y = v56;
  v96.size.width = v58;
  v96.size.height = v60;
  MidX = CGRectGetMidX(v96);
  sub_1A34CB640();
  sub_1A34CA7D0();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v61(v5, v52);
  v97.origin.x = v64;
  v97.origin.y = v66;
  v97.size.width = v68;
  v97.size.height = v70;
  MidY = CGRectGetMidY(v97);
  v72 = v86;
  sub_1A329D98C(v50, v86, &qword_1EB0CBDE0);
  v73 = (v72 + *(v87 + 36));
  *v73 = MidX;
  v73[1] = MidY;
  v92[0] = sub_1A346DE2C(v79);
  v92[1] = v74;
  sub_1A346E48C();
  sub_1A328A95C();
  sub_1A34CC0A0();

  return sub_1A3288FDC(v72, &qword_1EB0CBDE8);
}