unint64_t sub_21E9F84D4()
{
  result = qword_28125B780;
  if (!qword_28125B780)
  {
    sub_21E9F8880(255, &qword_28125B790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125B780);
  }

  return result;
}

id CCUIIndicatorColorForGameModeState(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      a1 = [MEMORY[0x277D75348] systemBlueColor];
      goto LABEL_8;
    }

    if (a1 == 4)
    {
      a1 = [MEMORY[0x277D75348] systemRedColor];
      goto LABEL_8;
    }

    if (a1 != 5)
    {
      goto LABEL_8;
    }

LABEL_7:
    a1 = [MEMORY[0x277D75348] systemGrayColor];
    goto LABEL_8;
  }

  if (a1 <= 2)
  {
    goto LABEL_7;
  }

LABEL_8:

  return a1;
}

id CCUIFixSpecialAttributions(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v25;
    v4 = *MEMORY[0x277CFC8D0];
    v22 = *MEMORY[0x277CFC908];
    v21 = *MEMORY[0x277CFC8D8];
    v5 = *MEMORY[0x277CFC918];
    v20 = *MEMORY[0x277CFC910];
    v6 = *MEMORY[0x277CFC8C8];
    v7 = *MEMORY[0x277CFC920];
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v25 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v12 = [MEMORY[0x277D75418] currentDevice];
          v13 = [v12 userInterfaceIdiom];

          if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            v14 = v21;
          }

          else
          {
            v14 = v22;
          }

          [v9 setBundleIdentifier:v14];
        }

        v15 = [v9 bundleIdentifier];
        v16 = [v15 isEqualToString:v5];

        if (v16)
        {
          [v9 setBundleIdentifier:v20];
        }

        v17 = [v9 bundleIdentifier];
        v18 = [v17 isEqualToString:v6];

        if (v18)
        {
          [v9 setBundleIdentifier:v7];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v2);
  }

  return obj;
}

uint64_t sub_21E9F8880(uint64_t a1, unint64_t *a2)
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

id CCUIUniqueSensorAttributionEntitiesForSensorActivityData(void *a1, char a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v41 = [MEMORY[0x277CBEB18] array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v58 + 1) + 8 * i);
        if ((a2 & 1) != 0 || ([*(*(&v58 + 1) + 8 * i) usedRecently] & 1) == 0)
        {
          if (![v13 sensorType])
          {
            [v5 addObject:v13];
          }

          if ([v13 sensorType] == 1)
          {
            [v6 addObject:v13];
          }

          if ([v13 sensorType] == 2)
          {
            [v7 addObject:v13];
          }

          if ([v13 sensorType] == 3)
          {
            [v41 addObject:v13];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v10);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v55;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [MEMORY[0x277CFC9C0] attributionEntityFromSensorActivityData:*(*(&v54 + 1) + 8 * j)];
        [v4 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v16);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v51;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v51 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [MEMORY[0x277CFC9C0] attributionEntityFromSensorActivityData:*(*(&v50 + 1) + 8 * k)];
        [v4 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v50 objects:v64 count:16];
    }

    while (v22);
  }

  v40 = v8;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = v7;
  v27 = [v26 countByEnumeratingWithState:&v46 objects:v63 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [MEMORY[0x277CFC9C0] attributionEntityFromSensorActivityData:{*(*(&v46 + 1) + 8 * m), v40}];
        [v4 addObject:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v63 count:16];
    }

    while (v28);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = v41;
  v33 = [v32 countByEnumeratingWithState:&v42 objects:v62 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v43;
    do
    {
      for (n = 0; n != v34; ++n)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [MEMORY[0x277CFC9C0] attributionEntityFromSensorActivityData:{*(*(&v42 + 1) + 8 * n), v40}];
        [v4 addObject:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v42 objects:v62 count:16];
    }

    while (v34);
  }

  v38 = [v4 array];

  return v38;
}

id CCUIIconImageForApplicationIdentifier(void *a1, double a2, double a3)
{
  v5 = a1;
  if (!v5)
  {
    v13 = *MEMORY[0x277CFC8E8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8E8], OS_LOG_TYPE_ERROR))
    {
      CCUIIconImageForApplicationIdentifier_cold_4(v13);
    }

    goto LABEL_25;
  }

  v26 = 0;
  v6 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:v5 error:&v26];
  v7 = v26;
  if (!v6)
  {
    v8 = MEMORY[0x277CFC8E8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8E8], OS_LOG_TYPE_ERROR))
    {
      CCUIIconImageForApplicationIdentifier_cold_1();
    }

    v25 = 0;
    v6 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v5 allowPlaceholder:0 error:&v25];
    v9 = v25;
    if (!v6 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      CCUIIconImageForApplicationIdentifier_cold_2();
    }
  }

  v10 = objc_opt_class();
  v11 = v6;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = v12;

  v15 = [v14 applicationState];

  LODWORD(v14) = [v15 isValid];
  if (v14)
  {
    v16 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:v5];
    v17 = _CCUIIconImageDescriptorForSize(a2, a3);
    v18 = [v16 prepareImageForDescriptor:v17];
    v19 = v18;
    if (v18)
    {
      v20 = MEMORY[0x277D755B8];
      v21 = [v18 CGImage];
      [v19 scale];
      v22 = [v20 imageWithCGImage:v21 scale:0 orientation:?];
    }

    else
    {
      v23 = *MEMORY[0x277CFC8E8];
      if (os_log_type_enabled(*MEMORY[0x277CFC8E8], OS_LOG_TYPE_ERROR))
      {
        CCUIIconImageForApplicationIdentifier_cold_3(v5, v23);
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  if (!v22)
  {
LABEL_25:
    v22 = CCUIGenericIconImageForSize(a2, a3);
  }

  return v22;
}

id _CCUIIconImageDescriptorForSize(double a1, double a2)
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:a1 scale:{a2, v6}];

  return v7;
}

id sub_21E9FA1A8()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PowerButtonGlyphView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___CCUIPowerButtonGlyphView_imageView];
  v2 = [v1 image];
  if (v2)
  {
    v3 = v2;
    [v2 size];
  }

  [v0 bounds];
  v4 = [v0 traitCollection];
  [v4 displayScale];
  v6 = v5;

  UIRectCenteredIntegralRectScale();
  return [v1 setFrame_];
}

id CCUIIndicatorColorForSensorType(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = [MEMORY[0x277D75348] systemOrangeColor];
  }

  else if (a1 == 2)
  {
    v1 = [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    if (a1 == 3)
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemGreenColor];
    }
    v1 = ;
  }

  return v1;
}

uint64_t sub_21E9FB444()
{
  v1 = v0;
  v2 = sub_21EAA8790();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR___CCUIPagingViewController_isFinishedRunningFirstUnlockTasks) & 1) == 0)
  {
    v19 = v4;
    sub_21EAA8750();
    v20 = sub_21EAA8760();
    v21 = sub_21EAA9000();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v86[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_21E9FE748(0xD000000000000015, 0x800000021EABE180, v86);
      _os_log_impl(&dword_21E9F5000, v20, v21, "Awaiting first unlock, skipping %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x223D68580](v23, -1, -1);
      MEMORY[0x223D68580](v22, -1, -1);
    }

    return (*(v3 + 8))(v6, v19);
  }

  if (qword_28125B8C0 != -1)
  {
LABEL_66:
    v68 = v4;
    swift_once();
    v4 = v68;
  }

  v73 = __swift_project_value_buffer(v4, qword_28125B8C8);
  v7 = sub_21EAA8760();
  v8 = sub_21EAA9000();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21E9F5000, v7, v8, "Check for invalid modules.", v9, 2u);
    MEMORY[0x223D68580](v9, -1, -1);
  }

  v10 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  v11 = [*(v1 + v10) leafIcons];
  v12 = sub_21E9F8880(0, &qword_28125B848);
  sub_21E9FBE14(&qword_28125B840, &qword_28125B848);
  v13 = sub_21EAA8F60();

  v87 = MEMORY[0x277D84F90];
  v72 = v12;
  if ((v13 & 0xC000000000000001) != 0)
  {
    sub_21EAA9370();
    v4 = sub_21EAA8F90();
    v13 = v88;
    v15 = v89;
    v16 = v90;
    v17 = v91;
    v18 = v92;
  }

  else
  {
    v17 = 0;
    v25 = -1 << *(v13 + 32);
    v15 = v13 + 56;
    v16 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v18 = v27 & *(v13 + 56);
  }

  v69[1] = v16;
  v28 = (v16 + 64) >> 6;
  v82 = MEMORY[0x277D84F90];
  *&v14 = 136315138;
  v71 = v14;
  while (1)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      v29 = v17;
      v30 = v18;
      if (!v18)
      {
        while (1)
        {
          v17 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v17 >= v28)
          {
            goto LABEL_55;
          }

          v30 = *(v15 + 8 * v17);
          ++v29;
          if (v30)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_20:
      v18 = (v30 - 1) & v30;
      v31 = *(*(v13 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v30)))));
      if (!v31)
      {
        break;
      }

      goto LABEL_24;
    }

    v32 = sub_21EAA93A0();
    if (!v32)
    {
      break;
    }

    v85 = v32;
    swift_dynamicCast();
    v31 = v86[0];
    if (!v86[0])
    {
      break;
    }

LABEL_24:
    v33 = [v31 iconDataSources];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD6F8);
    v34 = sub_21EAA8EC0();

    if (v34 >> 62)
    {
      v4 = sub_21EAA9380();
      v35 = v4;
      if (v4)
      {
        goto LABEL_28;
      }

LABEL_26:
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_26;
      }

LABEL_28:
      v36 = v34;
      v37 = 0;
      v83 = v36 & 0xC000000000000001;
      v80 = OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager;
      v70 = v36 & 0xFFFFFFFFFFFFFF8;
      v81 = v36;
      v69[2] = v36 + 32;
      v79 = v1;
      v78 = v13;
      v77 = v15;
      v76 = v28;
      v75 = v18;
      v84 = v31;
      v74 = v35;
      do
      {
        if (v83)
        {
          v4 = MEMORY[0x223D67210](v37, v81);
          v45 = __OFADD__(v37++, 1);
          if (v45)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v37 >= *(v70 + 16))
          {
            goto LABEL_65;
          }

          v4 = swift_unknownObjectRetain();
          v45 = __OFADD__(v37++, 1);
          if (v45)
          {
            goto LABEL_64;
          }
        }

        objc_opt_self();
        v46 = swift_dynamicCastObjCClass();
        if (v46)
        {
          v47 = v46;
          v48 = [*(v1 + v80) loadableModuleIdentifiers];
          v49 = sub_21EAA8F60();

          v50 = [v47 moduleIdentifier];
          v51 = sub_21EAA8E00();
          v53 = v52;

          if (*(v49 + 16) && (sub_21EAA95B0(), sub_21EAA8E40(), v54 = sub_21EAA95D0(), v55 = -1 << *(v49 + 32), v56 = v54 & ~v55, ((*(v49 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) != 0))
          {
            v57 = ~v55;
            while (1)
            {
              v58 = (*(v49 + 48) + 16 * v56);
              v59 = *v58 == v51 && v58[1] == v53;
              if (v59 || (sub_21EAA9530() & 1) != 0)
              {
                break;
              }

              v56 = (v56 + 1) & v57;
              if (((*(v49 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
              {
                goto LABEL_48;
              }
            }

            swift_unknownObjectRelease();
          }

          else
          {
LABEL_48:

            v60 = v84;
            MEMORY[0x223D66C60]();
            if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21EAA8EE0();
            }

            sub_21EAA8EF0();
            v82 = v87;
            swift_unknownObjectRetain();
            v61 = sub_21EAA8760();
            v62 = sub_21EAA9000();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v61, v62))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v86[0] = v39;
              *v38 = v71;
              v40 = [v47 moduleIdentifier];
              v41 = sub_21EAA8E00();
              v43 = v42;

              v44 = sub_21E9FE748(v41, v43, v86);

              *(v38 + 4) = v44;
              _os_log_impl(&dword_21E9F5000, v61, v62, "Remove invalid module %s for module not loadable.", v38, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v39);
              MEMORY[0x223D68580](v39, -1, -1);
              MEMORY[0x223D68580](v38, -1, -1);

              v4 = swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          v1 = v79;
          v13 = v78;
          v15 = v77;
          v28 = v76;
          v18 = v75;
          v35 = v74;
        }

        else
        {
          v4 = swift_unknownObjectRelease();
        }
      }

      while (v37 != v35);
    }
  }

LABEL_55:
  result = sub_21E9FBFD4();
  v63 = v82;
  if (v82 >> 62)
  {
    result = sub_21EAA9380();
    v64 = result;
    if (!result)
    {
    }

LABEL_57:
    if (v64 >= 1)
    {
      for (i = 0; i != v64; ++i)
      {
        if ((v63 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x223D67210](i, v63);
        }

        else
        {
          v66 = *(v63 + 8 * i + 32);
        }

        v67 = v66;
        sub_21EA73EF0(v66);
      }
    }

    __break(1u);
  }

  else
  {
    v64 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v64)
    {
      goto LABEL_57;
    }
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21E9FBE14(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21E9F8880(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21E9FCCE8()
{
  v1 = [v0 currentIconListView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layoutMetrics];
    [v3 rows];
    [v3 columns];
    [v3 alignmentIconSize];
    [v3 iconContentScale];
    [v3 alignmentIconSize];
    [v3 iconContentScale];
    [v3 iconInsets];
    [v2 additionalLayoutInsets];
    UIEdgeInsetsSubtract();
    [v3 iconSpacing];
    [v3 iconSpacing];
  }
}

double CCUILayoutEdgeInsetsForInterfaceOrientation(uint64_t a1)
{
  if (CCUILayoutEdgeInsetsForInterfaceOrientation_onceToken != -1)
  {
    CCUILayoutEdgeInsetsForInterfaceOrientation_cold_1();
  }

  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];
  v4 = (a1 - 1) < 2 || v3 == 1;
  v5 = &CCUILayoutEdgeInsetsForInterfaceOrientation_portraitInsets_0;
  if (!v4)
  {
    v5 = &CCUILayoutEdgeInsetsForInterfaceOrientation_landscapeInsets_0;
  }

  v6 = *v5;

  return v6;
}

double CCUIPortraitHeaderHeight()
{
  if (_CCUIPortraitStatusBarBaselineToTopOffsetHeight_onceToken != -1)
  {
    _CCUIPortraitStatusBarBaselineToTopOffsetHeight_cold_1();
  }

  v0 = *&_CCUIPortraitStatusBarBaselineToTopOffsetHeight_height;
  if (CCUIStatusBarBaselineHeight_onceToken != -1)
  {
    CCUIStatusBarBaselineHeight_cold_1();
  }

  return v0 + *&CCUIStatusBarBaselineHeight_height;
}

void sub_21E9FD210(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  [v4 loadViewIfNeeded];
  v9 = *&v4[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v9)
  {
    v10 = [v9 folderView];
    v11 = &v10[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets];
    v12.f64[0] = *&v10[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets];
    v18 = *&v10[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 8];
    v19 = v12.f64[0];
    v13.f64[0] = *&v10[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 16];
    v20 = v13.f64[0];
    v17 = *&v10[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 24];
    v11->f64[0] = a1;
    v11->f64[1] = a2;
    v11[1].f64[0] = a3;
    v11[1].f64[1] = a4;
    v21 = v10;
    sub_21E9FD31C(v12, v18, v13, v17);
    v14.f64[0] = v11[1].f64[0];
    v14.f64[1] = v17;
    v15.f64[0] = v19;
    v15.f64[1] = v18;
    v16.f64[0] = v20;
    v16.f64[1] = v11[1].f64[1];
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v11, v15), vceqq_f64(v14, v16)))) & 1) == 0)
    {
      sub_21EA8B44C();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21E9FD31C(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets), a1), vceqq_f64(*(v4 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets + 16), a3)))) & 1) == 0)
  {
    [v4 setNeedsLayout];
    v5 = [v4 iconListViews];
    sub_21E9F8880(0, &unk_28125B830);
    v6 = sub_21EAA8EC0();

    if (v6 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21EAA9380())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x223D67210](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        (*((*MEMORY[0x277D85000] & *v4) + 0xE0))();
        [v10 setAdditionalLayoutInsets_];
        [v10 layoutIconsIfNeeded];

        ++v8;
        if (v11 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
  }
}

void sub_21E9FD590(CGFloat a1, CGFloat a2)
{
  [v2 loadViewIfNeeded];
  v5 = *&v2[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v5)
  {
    v6 = [v5 folderView];
    sub_21EA8A91C(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

double CCUIStatusBarHeight()
{
  if (CCUIStatusBarHeight_onceToken != -1)
  {
    CCUIStatusBarHeight_cold_1();
  }

  return *&CCUIStatusBarHeight_height;
}

void *sub_21E9FDE54(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_21E9FDEC8(uint64_t a1, unint64_t a2)
{
  v3 = sub_21E9FE814(a1, a2);
  sub_21E9FE524(&unk_283017710);
  return v3;
}

uint64_t sub_21E9FE130()
{
  v1 = v0;
  v2 = sub_21EAA8790();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[4];
  [v6 removeAllObjects];
  sub_21EAA8750();

  v7 = sub_21EAA8760();
  v8 = sub_21EAA9000();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = v2;
    v10 = v9;
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    v12 = v1[2];
    v13 = v1[3];

    v14 = sub_21E9FE748(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = [v6 count];

    _os_log_impl(&dword_21E9F5000, v7, v8, "[IconImageViewControllerCache (%s)] Purged cache. Cache size: %ld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x223D68580](v11, -1, -1);
    MEMORY[0x223D68580](v10, -1, -1);

    return (*(v3 + 8))(v5, v16);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_21E9FE418(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21E9FDEC8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21EAA9470();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21E9FE524(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21EA62BB8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21E9FE6EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21E9FE748(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21E9FE418(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21E9FE6EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_21E9FE814(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21E9FDE54(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21EAA9470();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21EAA8E70();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21E9FDE54(v10, 0);
        result = sub_21EAA9430();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
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

void sub_21E9FEAFC(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v12 = [a1 customIconImageViewController];
  if (v12)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      a3(v10, a2);
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {

        if (Strong == a1)
        {
          *a6 = 1;
        }
      }
    }

    else
    {
    }
  }
}

void sub_21E9FEC38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_21E9FED20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 moduleIdentifier];
  v8 = sub_21EAA8E00();
  v10 = v9;

  if (v8 == a3 && v10 == a4)
  {
  }

  else
  {
    v12 = sub_21EAA9530();

    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  return [a1 invalidateContainerViewsForPlatterTreatment];
}

uint64_t sub_21E9FEDFC()
{
  v0 = sub_21EAA8E00();
  v2 = v1;
  if (v0 == sub_21EAA8E00() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21EAA9530();
  }

  return v5 & 1;
}

uint64_t sub_21E9FEE84()
{
  sub_21EAA8E00();
  sub_21EAA95B0();
  sub_21EAA8E40();
  v0 = sub_21EAA95D0();

  return v0;
}

uint64_t sub_21E9FEEF8(uint64_t a1, id *a2)
{
  v3 = sub_21EAA8DF0();
  *a2 = 0;
  return v3 & 1;
}

void sub_21E9FEF78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23[2] = a1;
  v23[3] = a2;
  v25 = 0;
  [v3 loadViewIfNeeded];
  v6 = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = swift_allocObject();
  v7[2] = sub_21E9FEAF4;
  v7[3] = v23;
  v7[4] = v3;
  v7[5] = &v25;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21EA87FE0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_21EA87FE8;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E9FEC38;
  aBlock[3] = &block_descriptor_50;
  v9 = _Block_copy(aBlock);
  v10 = v6;
  v11 = v3;

  [v10 enumerateDisplayedIconViewsUsingBlock_];

  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (v25 == 1 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {

    return;
  }

  v13 = Strong;
  v14 = [Strong customIconImageViewController];
  if (v14)
  {
    v15 = v14;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (!v16)
    {

      return;
    }

    v17 = v16;
    v18 = [v16 moduleIdentifier];
    v19 = sub_21EAA8E00();
    v21 = v20;

    if (v19 == a1 && v21 == a2)
    {
    }

    else
    {
      v22 = sub_21EAA9530();

      if ((v22 & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    [v17 invalidateContainerViewsForPlatterTreatment];
    goto LABEL_15;
  }

LABEL_16:
}

uint64_t sub_21E9FF25C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E9FF680(uint64_t a1, int a2)
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

uint64_t sub_21E9FF6A0(uint64_t result, int a2, int a3)
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

uint64_t sub_21E9FF6CC(uint64_t a1, int a2)
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

uint64_t sub_21E9FF6EC(uint64_t result, int a2, int a3)
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

BOOL sub_21E9FF754(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21E9FF7AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21E9FF7E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21EAA8E00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21E9FF860()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E9FF8A0@<X0>(uint64_t a1@<X8>)
{
  result = sub_21EAA89E0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_21E9FF904@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21EAA89A0();
  *a1 = result;
  return result;
}

uint64_t sub_21E9FF95C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21EAA89C0();
  *a1 = result;
  return result;
}

uint64_t sub_21E9FF9B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC8D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E9FFA48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21E9FFA80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CCUIGameModeControlsView_gameModeActivityDataProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21E9FFAF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21E9FFB00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E9FFB48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E9FFBE8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21E9FFC38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E9FFC70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E9FFCE8()
{
  MEMORY[0x223D68630](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E9FFD20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_activityData;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21E9FFD80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21E9FFDD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeState;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_21E9FFE2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeAAA;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_21E9FFE84(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeAAA;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_21E9FFEE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E9FFF20()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_21E9FFF70()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E9FFFB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E9FFFF4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21EA00044()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA0007C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA000BC()
{
  MEMORY[0x223D68630](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA000F4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21EA00164()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA001AC()
{
  MEMORY[0x223D68630](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA001E4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21EA0023C()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_21EA00294()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_21EA002CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21EA00314()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA0034C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21EA003AC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21EA003F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA00434()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA00478()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA004CC()
{
  MEMORY[0x223D68630](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA00514()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00554()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21EA005E0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21EA6A65C(v1);
}

id sub_21EA00610@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21EA0067C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA006B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA006EC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21EA00724()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA00760()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00798()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21EA007D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00808()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA008E4()
{
  MEMORY[0x223D68630](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA0092C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA0096C()
{
  MEMORY[0x223D68630](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA009A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA009DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00A14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00A4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00A94()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21EA00ADC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21EA00B14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA00B4C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21EA00B8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00BEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00C2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00C64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21EA00CA4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA00CDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00D1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00F04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA00F3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21EA00F74()
{
  MEMORY[0x223D68630](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA00FAC()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_21EA00FE4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21EA01024@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioVideoHeaderTrailingText);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_21EA01080@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_gameModeActivityDataProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_21EA010EC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21EA01124()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21EA01168()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA011A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA011D8()
{
  MEMORY[0x223D68630](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21EA01210()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21EA012F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id CCUILocalizedDescriptionForSensorActivityData(void *a1)
{
  v1 = a1;
  v2 = [v1 sensorType] - 1;
  if (v2 > 2)
  {
    v3 = @"CONTROL_CENTER_SENSOR_CAMERA";
  }

  else
  {
    v3 = off_278381D40[v2];
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_28301B138 table:@"ControlCenterUI"];

  v6 = v5;
  LODWORD(v4) = [v1 usedRecently];

  v7 = v6;
  if (v4)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CONTROL_CENTER_SENSOR_STATUS_RECENTLY" value:&stru_28301B138 table:@"ControlCenterUI"];

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v6];
  }

  return v7;
}

id CCUIPlainCircleImage()
{
  v0 = MEMORY[0x277D755B8];
  v1 = _imageSymbolConfiguration();
  v2 = [v0 systemImageNamed:@"circle.fill" withConfiguration:v1];

  return v2;
}

id _imageSymbolConfiguration()
{
  v0 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
  v1 = [MEMORY[0x277D755D0] configurationWithFont:v0 scale:3];

  return v1;
}

id CCUIImageForSensorType(uint64_t a1)
{
  v2 = MEMORY[0x277D755B8];
  v3 = _imageSymbolConfiguration();
  switch(a1)
  {
    case 1:
      v5 = @"mic.fill";
      break;
    case 2:
      v5 = @"location.fill";
      break;
    case 3:
      v4 = [v2 _systemImageNamed:@"rocket.fill" withConfiguration:v3];
      goto LABEL_9;
    default:
      v5 = @"video.fill";
      break;
  }

  v4 = [v2 systemImageNamed:v5 withConfiguration:v3];
LABEL_9:
  v6 = v4;

  return v6;
}

__CFString *CCUIIdentifierForSensorType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"ccui-camera-attribution";
  }

  else
  {
    return off_278381D58[a1 - 1];
  }
}

id CCUISortedAttributionsForEntity(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] array];
  if ([v3 isGenericLocationSystemServiceEntity])
  {
    v6 = [MEMORY[0x277CFC9B8] _genericLocationSystemServiceActivity];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          if ([v13 isSystemService] && objc_msgSend(v13, "sensorType") == 2)
          {
            v11 &= [v13 usedRecently];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v9);
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    [v6 setUsedRecently:v11 & 1];
    [v5 addObject:v6];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v4;
    v14 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v6);
          }

          v18 = *(*(&v28 + 1) + 8 * j);
          v19 = [MEMORY[0x277CFC9C0] attributionEntityFromSensorActivityData:{v18, v28}];
          if ([v3 isEqual:v19])
          {
            [v5 addObject:v18];
          }
        }

        v15 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v15);
    }
  }

  v20 = objc_alloc(MEMORY[0x277CCAC98]);
  v21 = NSStringFromSelector(sel_website);
  v22 = [v20 initWithKey:v21 ascending:1];

  v23 = objc_alloc(MEMORY[0x277CCAC98]);
  v24 = NSStringFromSelector(sel_sensorType);
  v25 = [v23 initWithKey:v24 ascending:1 comparator:&__block_literal_global];

  v36[0] = v22;
  v36[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  [v5 sortUsingDescriptors:v26];

  return v5;
}

uint64_t __CCUISortedAttributionsForEntity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedIntValue];
  v6 = [v4 unsignedIntValue];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 != v6;
  }
}

void sub_21EA030B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EA045FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_21EA0A044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21EA0C26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EA0C3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EA0EE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EA10D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21EA116B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getGKDaemonProxyClass_block_invoke(uint64_t a1)
{
  GameCenterFoundationLibrary();
  result = objc_getClass("GKDaemonProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGKDaemonProxyClass_block_invoke_cold_1();
  }

  getGKDaemonProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void GameCenterFoundationLibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!GameCenterFoundationLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __GameCenterFoundationLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_278382318;
    v2 = 0;
    GameCenterFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GameCenterFoundationLibraryCore_frameworkLibrary)
  {
    GameCenterFoundationLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __GameCenterFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GameCenterFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getGKLocalPlayerClass_block_invoke(uint64_t a1)
{
  GameCenterFoundationLibrary();
  result = objc_getClass("GKLocalPlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGKLocalPlayerClass_block_invoke_cold_1();
  }

  getGKLocalPlayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_21EA135E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EA139D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id CCUIGenericIconImageForSize(double a1, double a2)
{
  v4 = [MEMORY[0x277D1B1A8] genericApplicationIcon];
  v5 = _CCUIIconImageDescriptorForSize(a1, a2);
  v6 = [v4 prepareImageForDescriptor:v5];
  v7 = MEMORY[0x277D755B8];
  v8 = [v6 CGImage];
  [v6 scale];
  v9 = [v7 imageWithCGImage:v8 scale:0 orientation:?];

  return v9;
}

id CCUIIconImageForUntreatedImage(uint64_t a1, double a2, double a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc(MEMORY[0x277D1B160]);
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v8 = [v6 initWithCGImage:a1 scale:?];

  v9 = objc_alloc(MEMORY[0x277D1B1A8]);
  v20[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v11 = [v9 initWithImages:v10];

  v12 = _CCUIIconImageDescriptorForSize(a2, a3);
  v13 = [v11 prepareImageForDescriptor:v12];
  v14 = v13;
  if (v13)
  {
    v15 = MEMORY[0x277D755B8];
    v16 = [v13 CGImage];
    [v14 scale];
    v17 = [v15 imageWithCGImage:v16 scale:0 orientation:?];
    if (v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18 = *MEMORY[0x277CFC8E8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8E8], OS_LOG_TYPE_ERROR))
    {
      CCUIIconImageForUntreatedImage_cold_1(a1, v18);
    }
  }

  v17 = CCUIGenericIconImageForSize(a2, a3);
LABEL_7:

  return v17;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

__CFString *CCUIStringFromCAFrameRateRange(float a1, float a2, float a3)
{
  if (CAFrameRateRangeIsEqualToRange(*&a1, *MEMORY[0x277CD9DD0]))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%f, %f, %f)", a1, a2, a3];
  }

  else
  {
    v6 = @"(CAFrameRateRangeDefault)";
  }

  return v6;
}

void sub_21EA1A5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a62, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id +[CCUIMainViewController _blocksBySignpost](id a1, SEL a2)
{
  if (_blocksBySignpost_onceToken != -1)
  {
    +[CCUIMainViewController(PPTInternal) _blocksBySignpost];
  }

  v3 = _blocksBySignpost_blocksBySignpost;

  return v3;
}

double _CCUIPortraitStatusBarBaselineToTopOffsetHeight()
{
  if (_CCUIPortraitStatusBarBaselineToTopOffsetHeight_onceToken != -1)
  {
    _CCUIPortraitStatusBarBaselineToTopOffsetHeight_cold_1();
  }

  return *&_CCUIPortraitStatusBarBaselineToTopOffsetHeight_height;
}

double CCUIStatusBarBaselineToBaselineOffsetHeight()
{
  if (CCUIStatusBarBaselineToBaselineOffsetHeight_onceToken != -1)
  {
    CCUIStatusBarBaselineToBaselineOffsetHeight_cold_1();
  }

  return *&CCUIStatusBarBaselineToBaselineOffsetHeight_height;
}

void __CCUIStatusBarBaselineToBaselineOffsetHeight_block_invoke()
{
  CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v14);
  if (Width >= 1024.0)
  {
    v0 = [MEMORY[0x277D75418] currentDevice];
    if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
    {
      CCUIStatusBarBaselineToBaselineOffsetHeight_height = 0;
LABEL_40:

      goto LABEL_41;
    }
  }

  CCUIReferenceScreenBounds();
  v5 = CGRectGetWidth(v15);
  if (v5 < 1024.0 || ([MEMORY[0x277D75418] currentDevice], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() != 2)
  {
    CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v16);
    if (v6 >= 834.0)
    {
      v2 = [MEMORY[0x277D75418] currentDevice];
      if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIStatusBarBaselineToBaselineOffsetHeight_height = 0;
LABEL_36:

LABEL_37:
        if (v5 < 1024.0)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    CCUIReferenceScreenBounds();
    v7 = CGRectGetWidth(v17);
    if (v7 >= 834.0)
    {
      v3 = [MEMORY[0x277D75418] currentDevice];
      if ([v3 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUIStatusBarBaselineToBaselineOffsetHeight_height = 0;
        goto LABEL_34;
      }
    }

    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = 0.0;
    if ([v8 userInterfaceIdiom] != 1)
    {
      CCUIReferenceScreenBounds();
      v9 = 25.0;
      if (CGRectGetWidth(v18) < 430.0)
      {
        CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v19) < 428.0)
        {
          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v20) < 420.0 || (v9 = 22.0, SBFEffectiveHomeButtonType() != 2))
          {
            CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v21) < 414.0 || (v9 = 23.0, SBFEffectiveHomeButtonType() != 2))
            {
              CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v22) >= 414.0)
              {
LABEL_29:
                v9 = 18.0;
                goto LABEL_30;
              }

              CCUIReferenceScreenBounds();
              v9 = 22.0;
              if (CGRectGetWidth(v23) < 393.0)
              {
                CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v24) < 390.0)
                {
                  CCUIReferenceScreenBounds();
                  if (CGRectGetWidth(v25) < 375.0 || SBFEffectiveHomeButtonType() != 2)
                  {
                    CCUIReferenceScreenBounds();
                    if (CGRectGetWidth(v26) < 375.0)
                    {
                      CCUIReferenceScreenBounds();
                      CGRectGetWidth(v27);
                    }

                    goto LABEL_29;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_30:
    CCUIStatusBarBaselineToBaselineOffsetHeight_height = *&v9;

    if (v7 < 834.0)
    {
LABEL_35:
      if (v6 < 834.0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_34:

    goto LABEL_35;
  }

  CCUIStatusBarBaselineToBaselineOffsetHeight_height = 0;
LABEL_38:

LABEL_39:
  if (Width >= 1024.0)
  {
    goto LABEL_40;
  }

LABEL_41:
  v12 = [MEMORY[0x277D75418] currentDevice];
  if ([v12 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
  {
  }

  else
  {
    CCUIReferenceScreenBounds();
    v10 = CGRectGetWidth(v28);

    if (v10 < 375.0)
    {
      v11 = *&CCUIStatusBarBaselineToBaselineOffsetHeight_height;
      if (*&CCUIStatusBarBaselineToBaselineOffsetHeight_height < 22.0)
      {
        v11 = 22.0;
      }

      CCUIStatusBarBaselineToBaselineOffsetHeight_height = *&v11;
    }
  }
}

void __CCUIStatusBarHeight_block_invoke()
{
  CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v15);
  if (Width >= 1024.0)
  {
    v0 = [MEMORY[0x277D75418] currentDevice];
    if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
    {
      CCUIStatusBarHeight_height = 0x4032000000000000;
LABEL_40:

      goto LABEL_41;
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
        CCUIStatusBarHeight_height = 0x4032000000000000;
LABEL_36:

LABEL_37:
        if (v5 < 1024.0)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    CCUIReferenceScreenBounds();
    v7 = CGRectGetWidth(v18);
    if (v7 >= 834.0)
    {
      v3 = [MEMORY[0x277D75418] currentDevice];
      if ([v3 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUIStatusBarHeight_height = 0x4032000000000000;
        goto LABEL_34;
      }
    }

    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = 18.0;
    if ([v8 userInterfaceIdiom] != 1)
    {
      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v19) >= 430.0)
      {
LABEL_27:
        v10 = 0x4049000000000000;
LABEL_30:
        v9 = *&v10;
        goto LABEL_31;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v20) >= 428.0)
      {
        goto LABEL_29;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v21) >= 420.0 && SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_27;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v22) >= 414.0 && SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_29;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v23) >= 414.0)
      {
        v9 = 31.5;
        goto LABEL_31;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v24) >= 393.0)
      {
LABEL_29:
        v10 = 0x4046000000000000;
        goto LABEL_30;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v25) >= 390.0)
      {
        goto LABEL_27;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v26) >= 375.0 && SBFEffectiveHomeButtonType() == 2)
      {
        goto LABEL_27;
      }

      CCUIReferenceScreenBounds();
      v9 = 22.0;
      if (CGRectGetWidth(v28) < 375.0)
      {
        CCUIReferenceScreenBounds();
        CGRectGetWidth(v29);
      }
    }

LABEL_31:
    CCUIStatusBarHeight_height = *&v9;

    if (v7 < 834.0)
    {
LABEL_35:
      if (v6 < 834.0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

LABEL_34:

    goto LABEL_35;
  }

  CCUIStatusBarHeight_height = 0x4032000000000000;
LABEL_38:

LABEL_39:
  if (Width >= 1024.0)
  {
    goto LABEL_40;
  }

LABEL_41:
  v13 = [MEMORY[0x277D75418] currentDevice];
  if ([v13 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
  {
  }

  else
  {
    CCUIReferenceScreenBounds();
    v11 = CGRectGetWidth(v27);

    if (v11 < 375.0)
    {
      v12 = *&CCUIStatusBarHeight_height;
      if (*&CCUIStatusBarHeight_height < 50.0)
      {
        v12 = 50.0;
      }

      CCUIStatusBarHeight_height = *&v12;
    }
  }
}

double CCUIStatusBarBaselineHeight()
{
  if (CCUIStatusBarBaselineHeight_onceToken != -1)
  {
    CCUIStatusBarBaselineHeight_cold_1();
  }

  return *&CCUIStatusBarBaselineHeight_height;
}

void __CCUIStatusBarBaselineHeight_block_invoke()
{
  CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v14);
  if (Width >= 1024.0)
  {
    v0 = [MEMORY[0x277D75418] currentDevice];
    if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
    {
      CCUIStatusBarBaselineHeight_height = 0x4020000000000000;
LABEL_39:

      goto LABEL_40;
    }
  }

  CCUIReferenceScreenBounds();
  v5 = CGRectGetWidth(v15);
  if (v5 < 1024.0 || ([MEMORY[0x277D75418] currentDevice], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() != 2)
  {
    CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v16);
    if (v6 >= 834.0)
    {
      v2 = [MEMORY[0x277D75418] currentDevice];
      if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIStatusBarBaselineHeight_height = 0x4014000000000000;
LABEL_35:

LABEL_36:
        if (v5 < 1024.0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    CCUIReferenceScreenBounds();
    v7 = CGRectGetWidth(v17);
    if (v7 >= 834.0 && ([MEMORY[0x277D75418] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() != 2)
    {
      CCUIStatusBarBaselineHeight_height = 0x4014000000000000;
    }

    else
    {
      v8 = [MEMORY[0x277D75418] currentDevice];
      v9 = 6.0;
      if ([v8 userInterfaceIdiom] != 1)
      {
        CCUIReferenceScreenBounds();
        v9 = 14.0;
        if (CGRectGetWidth(v18) < 430.0)
        {
          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v19) < 428.0)
          {
            CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v20) < 420.0 || (v9 = 17.0, SBFEffectiveHomeButtonType() != 2))
            {
              CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v21) < 414.0 || (v9 = 15.0, SBFEffectiveHomeButtonType() != 2))
              {
                CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v22) >= 414.0)
                {
                  v9 = 14.3333333;
                }

                else
                {
                  CCUIReferenceScreenBounds();
                  v9 = 16.0;
                  if (CGRectGetWidth(v23) < 393.0)
                  {
                    CCUIReferenceScreenBounds();
                    if (CGRectGetWidth(v24) < 390.0)
                    {
                      CCUIReferenceScreenBounds();
                      if (CGRectGetWidth(v25) < 375.0 || (v9 = 17.0, SBFEffectiveHomeButtonType() != 2))
                      {
                        CCUIReferenceScreenBounds();
                        v9 = 5.0;
                        if (CGRectGetWidth(v26) < 375.0)
                        {
                          CCUIReferenceScreenBounds();
                          CGRectGetWidth(v27);
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

      CCUIStatusBarBaselineHeight_height = *&v9;

      if (v7 < 834.0)
      {
LABEL_34:
        if (v6 < 834.0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_34;
  }

  CCUIStatusBarBaselineHeight_height = 0x4020000000000000;
LABEL_37:

LABEL_38:
  if (Width >= 1024.0)
  {
    goto LABEL_39;
  }

LABEL_40:
  v12 = [MEMORY[0x277D75418] currentDevice];
  if ([v12 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
  {
  }

  else
  {
    CCUIReferenceScreenBounds();
    v10 = CGRectGetWidth(v28);

    if (v10 < 375.0)
    {
      v11 = *&CCUIStatusBarBaselineHeight_height;
      if (*&CCUIStatusBarBaselineHeight_height < 17.0)
      {
        v11 = 17.0;
      }

      CCUIStatusBarBaselineHeight_height = *&v11;
    }
  }
}

double CCUIPortraitGridLayoutTopMargin()
{
  if (CCUIPortraitGridLayoutTopMargin_onceToken != -1)
  {
    CCUIPortraitGridLayoutTopMargin_cold_1();
  }

  return *&CCUIPortraitGridLayoutTopMargin_margin;
}

void __CCUIPortraitGridLayoutTopMargin_block_invoke()
{
  CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v13);
  if (Width < 1024.0 || ([MEMORY[0x277D75418] currentDevice], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() == 2)
  {
    CCUIReferenceScreenBounds();
    v4 = CGRectGetWidth(v14);
    if (v4 >= 1024.0)
    {
      v0 = [MEMORY[0x277D75418] currentDevice];
      if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIPortraitGridLayoutTopMargin_margin = 0x4041000000000000;
LABEL_40:

LABEL_41:
        v9 = v11;
        if (Width < 1024.0)
        {
          return;
        }

        goto LABEL_42;
      }
    }

    CCUIReferenceScreenBounds();
    v5 = CGRectGetWidth(v15);
    if (v5 >= 834.0)
    {
      v1 = [MEMORY[0x277D75418] currentDevice];
      if ([v1 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUIPortraitGridLayoutTopMargin_margin = 0x403C000000000000;
LABEL_38:

LABEL_39:
        if (v4 < 1024.0)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v16);
    if (v6 >= 834.0)
    {
      v2 = [MEMORY[0x277D75418] currentDevice];
      if ([v2 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
      {
        CCUIPortraitGridLayoutTopMargin_margin = 0x403C000000000000;
LABEL_36:

LABEL_37:
        if (v5 < 834.0)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = 28.0;
    if ([v7 userInterfaceIdiom] != 1)
    {
      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v17) >= 430.0)
      {
        v8 = 37.0;
        goto LABEL_35;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v18) >= 428.0)
      {
        v10 = 0x4042000000000000;
      }

      else
      {
        CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v19) >= 420.0 && SBFEffectiveHomeButtonType() == 2)
        {
          goto LABEL_35;
        }

        CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v20) < 414.0 || SBFEffectiveHomeButtonType() != 2)
        {
          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v21) < 414.0)
          {
            CCUIReferenceScreenBounds();
            v8 = 30.0;
            if (CGRectGetWidth(v22) < 393.0)
            {
              CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v23) < 390.0)
              {
                CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v24) < 375.0 || (v8 = 28.0, SBFEffectiveHomeButtonType() != 2))
                {
                  CCUIReferenceScreenBounds();
                  v8 = 13.0;
                  if (CGRectGetWidth(v25) < 375.0)
                  {
                    CCUIReferenceScreenBounds();
                    CGRectGetWidth(v26);
                  }
                }
              }
            }

            goto LABEL_35;
          }
        }

        v10 = 0x4041000000000000;
      }

      v8 = *&v10;
    }

LABEL_35:
    CCUIPortraitGridLayoutTopMargin_margin = *&v8;

    if (v6 < 834.0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  CCUIPortraitGridLayoutTopMargin_margin = 0x4041000000000000;
  v9 = v11;
LABEL_42:
}

double CCUILandscapeGridLayoutTopMargin()
{
  if (CCUILandscapeGridLayoutTopMargin_onceToken != -1)
  {
    CCUILandscapeGridLayoutTopMargin_cold_1();
  }

  return *&CCUILandscapeGridLayoutTopMargin_margin;
}

void __CCUILandscapeGridLayoutTopMargin_block_invoke()
{
  CCUIReferenceScreenBounds();
  Width = CGRectGetWidth(v12);
  if (Width < 1024.0 || ([MEMORY[0x277D75418] currentDevice], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "userInterfaceIdiom") != 1) || SBFEffectiveHomeButtonType() == 2)
  {
    CCUIReferenceScreenBounds();
    v4 = CGRectGetWidth(v13);
    if (v4 >= 1024.0)
    {
      v0 = [MEMORY[0x277D75418] currentDevice];
      if ([v0 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUILandscapeGridLayoutTopMargin_margin = 0;
LABEL_39:

LABEL_40:
        v9 = v10;
        if (Width < 1024.0)
        {
          return;
        }

        goto LABEL_41;
      }
    }

    CCUIReferenceScreenBounds();
    v5 = CGRectGetWidth(v14);
    if (v5 >= 834.0)
    {
      v1 = [MEMORY[0x277D75418] currentDevice];
      if ([v1 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
      {
        CCUILandscapeGridLayoutTopMargin_margin = 0;
LABEL_37:

LABEL_38:
        if (v4 < 1024.0)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }

    CCUIReferenceScreenBounds();
    v6 = CGRectGetWidth(v15);
    if (v6 >= 834.0 && ([MEMORY[0x277D75418] currentDevice], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() != 2)
    {
      CCUILandscapeGridLayoutTopMargin_margin = 0;
    }

    else
    {
      v7 = [MEMORY[0x277D75418] currentDevice];
      v8 = 0.0;
      if ([v7 userInterfaceIdiom] != 1)
      {
        CCUIReferenceScreenBounds();
        v8 = 16.0;
        if (CGRectGetWidth(v16) < 430.0)
        {
          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v17) < 428.0)
          {
            CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v18) < 420.0 || (v8 = 15.0, SBFEffectiveHomeButtonType() != 2))
            {
              CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v19) < 414.0 || (v8 = 14.0, SBFEffectiveHomeButtonType() != 2))
              {
                CCUIReferenceScreenBounds();
                v8 = 14.0;
                if (CGRectGetWidth(v20) < 414.0)
                {
                  CCUIReferenceScreenBounds();
                  if (CGRectGetWidth(v21) >= 393.0)
                  {
                    v8 = 15.0;
                  }

                  else
                  {
                    CCUIReferenceScreenBounds();
                    if (CGRectGetWidth(v22) < 390.0)
                    {
                      CCUIReferenceScreenBounds();
                      if (CGRectGetWidth(v23) < 375.0 || (v8 = 15.0, SBFEffectiveHomeButtonType() != 2))
                      {
                        CCUIReferenceScreenBounds();
                        v8 = 10.0;
                        if (CGRectGetWidth(v24) < 375.0)
                        {
                          CCUIReferenceScreenBounds();
                          if (CGRectGetWidth(v25) < 320.0)
                          {
                            v8 = 20.0;
                          }

                          else
                          {
                            v8 = 10.0;
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
      }

      CCUILandscapeGridLayoutTopMargin_margin = *&v8;

      if (v6 < 834.0)
      {
LABEL_36:
        if (v5 < 834.0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    goto LABEL_36;
  }

  CCUILandscapeGridLayoutTopMargin_margin = 0;
  v9 = v10;
LABEL_41:
}

double CCUILandscapeGridLayoutSideMargin()
{
  if (CCUILandscapeGridLayoutSideMargin_onceToken != -1)
  {
    CCUILandscapeGridLayoutSideMargin_cold_1();
  }

  return *&CCUILandscapeGridLayoutSideMargin_margin;
}

void __CCUILandscapeGridLayoutSideMargin_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0;
  if (v1 != 1)
  {
    CCUICompactModuleRows();
    CCUIPortraitMainListGridGeometryInfo();
    CCUIReferenceScreenBounds();
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];

    UIFloorToScale();
  }

  CCUILandscapeGridLayoutSideMargin_margin = v2;
}

double __CCUILayoutEdgeInsetsForInterfaceOrientation_block_invoke()
{
  if (CCUIStatusBarBaselineHeight_onceToken != -1)
  {
    CCUIStatusBarBaselineHeight_cold_1();
  }

  v0 = *&CCUIStatusBarBaselineHeight_height;
  if (CCUIPortraitGridLayoutTopMargin_onceToken != -1)
  {
    CCUIPortraitGridLayoutTopMargin_cold_1();
  }

  v1 = *&CCUIPortraitGridLayoutTopMargin_margin;
  CCUIPortraitGridLayoutSideMargin();
  *&CCUILayoutEdgeInsetsForInterfaceOrientation_portraitInsets_0 = v1 - v0;
  CCUILayoutEdgeInsetsForInterfaceOrientation_portraitInsets_1 = v2;
  CCUILayoutEdgeInsetsForInterfaceOrientation_portraitInsets_3 = v2;
  if (CCUILandscapeGridLayoutTopMargin_onceToken != -1)
  {
    CCUILandscapeGridLayoutTopMargin_cold_1();
  }

  v3 = CCUILandscapeGridLayoutTopMargin_margin;
  if (CCUILandscapeGridLayoutSideMargin_onceToken != -1)
  {
    CCUILandscapeGridLayoutSideMargin_cold_1();
  }

  result = *&CCUILandscapeGridLayoutSideMargin_margin;
  CCUILayoutEdgeInsetsForInterfaceOrientation_landscapeInsets_0 = v3;
  CCUILayoutEdgeInsetsForInterfaceOrientation_landscapeInsets_1 = CCUILandscapeGridLayoutSideMargin_margin;
  CCUILayoutEdgeInsetsForInterfaceOrientation_landscapeInsets_3 = CCUILandscapeGridLayoutSideMargin_margin;
  return result;
}

void sub_21EA1E400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EA1E908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EA1EC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EA1F6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EA1FA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getWFNetworkListControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!WiFiKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __WiFiKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278382558;
    v5 = 0;
    WiFiKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WiFiKitLibraryCore_frameworkLibrary)
  {
    __getWFNetworkListControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("WFNetworkListController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWFNetworkListControllerClass_block_invoke_cold_1();
  }

  getWFNetworkListControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WiFiKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WiFiKitLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getWFScanRecordAlphaSortCompartorSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!WiFiKitUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __WiFiKitUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278382570;
    v6 = 0;
    WiFiKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = WiFiKitUILibraryCore_frameworkLibrary;
  if (!WiFiKitUILibraryCore_frameworkLibrary)
  {
    __getWFScanRecordAlphaSortCompartorSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "WFScanRecordAlphaSortCompartor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWFScanRecordAlphaSortCompartorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WiFiKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WiFiKitUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21EA22AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *CCUIStringFromModularControlCenterPresentationState(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<invalid>";
  }

  else
  {
    return off_278382860[a1];
  }
}

__CFString *CCUIStringFromModularControlCenterTransitionState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_278382848[a1];
  }
}

void sub_21EA261BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EA281A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21EA28B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_21EA2CC58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_21EA2CD94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_21EA2CF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EA2D28C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_21EA2D42C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_21EA30C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_21EA34208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EA34A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EA35C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EA35EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL CCUILayoutRectEqual(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[3] == a2[3];
}

uint64_t CCUIMakeLayoutSizeFromDictionary(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 bs_safeNumberForKey:@"width"];
  v5 = [v4 unsignedIntegerValue];
  if (v5)
  {
    a2 = v5;
  }

  v6 = [v3 bs_safeNumberForKey:@"height"];

  [v6 unsignedIntegerValue];
  return a2;
}

__CFString *NSStringFromCCUIOverlayTransitionType(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown: %lu>", a1];
  }

  else
  {
    v2 = off_278382BB0[a1];
  }

  return v2;
}

void sub_21EA37D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EA37ED0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21EA398CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v16 - 96), 8);
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getWFControlCenterStateMonitorClass_block_invoke(uint64_t a1)
{
  WiFiKitLibrary();
  result = objc_getClass("WFControlCenterStateMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWFControlCenterStateMonitorClass_block_invoke_cold_1();
  }

  getWFControlCenterStateMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t WiFiKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!WiFiKitLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __WiFiKitLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278382CC0;
    v4 = 0;
    WiFiKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = WiFiKitLibraryCore_frameworkLibrary_0;
  if (!WiFiKitLibraryCore_frameworkLibrary_0)
  {
    WiFiKitLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __WiFiKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  WiFiKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getWFPersonalHotspotStateMonitorClass_block_invoke(uint64_t a1)
{
  WiFiKitLibrary();
  result = objc_getClass("WFPersonalHotspotStateMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWFPersonalHotspotStateMonitorClass_block_invoke_cold_1();
  }

  getWFPersonalHotspotStateMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWFInterfaceHostAPStateChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = WiFiKitLibrary();
  result = dlsym(v2, "WFInterfaceHostAPStateChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWFInterfaceHostAPStateChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sendExpandModuleTransitionNotificationForSubviews(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 subviews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 contentModuleWillTransitionToExpandedContentMode:a2];
        }

        else
        {
          sendExpandModuleTransitionNotificationForSubviews(v8, a2);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

uint64_t CCUIStatusBarIsSpeakeasy()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

id CCUIStatusBarForStatusBar(void *a1)
{
  v1 = a1;
  if (CCUIStatusBarIsSpeakeasy())
  {
    v2 = [v1 statusBar];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21EA42BA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21EA42BC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_21EA42C64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21EA42C84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

double sub_21EA42D10()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v3 = 0;
  v4 = 0;
  v2 = 0;
  [v0 getRed:v5 green:&v4 blue:&v3 alpha:&v2];
  return *v5;
}

uint64_t sub_21EA42D90(uint64_t a1, id *a2)
{
  result = sub_21EAA8DE0();
  *a2 = 0;
  return result;
}

uint64_t sub_21EA42E08@<X0>(uint64_t *a1@<X8>)
{
  sub_21EAA8E00();
  v2 = sub_21EAA8DC0();

  *a1 = v2;
  return result;
}

void *sub_21EA42E74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21EA42EA0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_21EA42F50()
{
  v0 = sub_21EAA8E00();
  v1 = MEMORY[0x223D66C50](v0);

  return v1;
}

uint64_t sub_21EA42F8C()
{
  sub_21EAA8E00();
  sub_21EAA8E40();
}

uint64_t sub_21EA42FE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21EA43420(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21EA43020@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21EAA8DC0();

  *a1 = v2;
  return result;
}

uint64_t sub_21EA43068(uint64_t a1)
{
  v2 = sub_21EA43270(&qword_28125B820, type metadata accessor for SBIconLocation);
  v3 = sub_21EA43270(&unk_27CEDC320, type metadata accessor for SBIconLocation);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21EA43124(uint64_t a1)
{
  v2 = sub_21EA43270(&qword_28125B7B0, type metadata accessor for SBHIconGridSizeClass);
  v3 = sub_21EA43270(&qword_27CEDC230, type metadata accessor for SBHIconGridSizeClass);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21EA43270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21EA43420(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21EA43480(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21EA434A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void sub_21EA43500(uint64_t a1, unint64_t *a2)
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

id sub_21EA43678(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD080);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC630);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC638);
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = [a1 containerBundleIdentifier];
  if (v12)
  {
    v13 = v12;
    sub_21EAA8E00();

    sub_21EAA86C0();
    sub_21EA439EC(v9);
    v11(v6, 0, 1, v10);
    sub_21EA43A54(v6, v9);
  }

  sub_21EAA9110();
  v14 = [a1 extensionBundleIdentifier];
  sub_21EAA8E00();

  sub_21EAA86C0();
  sub_21EA4397C(v9, v6);
  v15 = sub_21EAA9100();
  v16 = [a1 kind];
  if (!v16)
  {
    sub_21EAA8E00();
    v16 = sub_21EAA8DC0();
  }

  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v18 = [v17 initWithExtensionIdentity:v15 kind:v16 intent:v21];

  sub_21EA439EC(v9);
  return v18;
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

uint64_t sub_21EA4397C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21EA439EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21EA43A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_21EA43AC4(void *a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v12.receiver = v3;
  v12.super_class = type metadata accessor for ModuleInstanceObserver();
  v7 = objc_msgSendSuper2(&v12, sel_init);
  if (a3)
  {
    if (a2)
    {
      v8 = a1;
      v9 = [a3 orderedEnabledModuleIdentifiersFromSettingsApp];
      v10 = sub_21EAA8EC0();

      [a3 addObserver_];
      [a2 addObserver_];
      sub_21EA672E4(v10);

      a1 = sub_21EAA8F50();

      [a2 setEnabledModuleIdentifiersFromSettingsApp_];

      a2 = v8;
    }

    else
    {
      a2 = a1;
      a1 = a3;
    }
  }

  return v7;
}

id sub_21EA43C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModuleInstanceObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21EA43E54()
{
  v0 = sub_21EAA8790();
  __swift_allocate_value_buffer(v0, qword_28125B8C8);
  __swift_project_value_buffer(v0, qword_28125B8C8);
  result = *MEMORY[0x277CFC900];
  if (*MEMORY[0x277CFC900])
  {
    sub_21EAA8E60();
    return sub_21EAA8770();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21EA43F44()
{
  v0 = sub_21EAA8790();
  __swift_allocate_value_buffer(v0, qword_28125B8A8);
  __swift_project_value_buffer(v0, qword_28125B8A8);
  result = *MEMORY[0x277CFC900];
  if (*MEMORY[0x277CFC900])
  {
    sub_21EAA8E60();
    return sub_21EAA8770();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21EA44144(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21EAA8790();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  result = *MEMORY[0x277CFC900];
  if (*MEMORY[0x277CFC900])
  {
    sub_21EAA8E60();
    return sub_21EAA8770();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21EA441E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21EAA8790();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_21EA44310()
{
  v1 = *v0;
  sub_21EAA95B0();
  MEMORY[0x223D67380](v1);
  return sub_21EAA95D0();
}

uint64_t sub_21EA44384()
{
  v1 = *v0;
  sub_21EAA95B0();
  MEMORY[0x223D67380](v1);
  return sub_21EAA95D0();
}

uint64_t sub_21EA4442C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  return v1;
}

uint64_t sub_21EA44498()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  return v1;
}

uint64_t sub_21EA4450C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC968);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21EAB6000;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  v1 = sub_21EAA8BB0();
  *(v0 + 32) = 0;
  *(v0 + 33) = v9;
  *(v0 + 40) = 0x69662E6F65646976;
  *(v0 + 48) = 0xEA00000000006C6CLL;
  *(v0 + 56) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  v2 = sub_21EAA8BD0();
  *(v0 + 64) = 1;
  *(v0 + 65) = v8;
  *(v0 + 72) = 0x6C6C69662E63696DLL;
  *(v0 + 80) = 0xE800000000000000;
  *(v0 + 88) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  v3 = sub_21EAA8B90();
  *(v0 + 96) = 2;
  *(v0 + 97) = v7;
  strcpy((v0 + 104), "location.fill");
  *(v0 + 118) = -4864;
  *(v0 + 120) = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  v4 = sub_21EAA8B90();
  *(v0 + 128) = 3;
  *(v0 + 129) = v6;
  *(v0 + 136) = 0x662E74656B636F72;
  *(v0 + 144) = 0xEB000000006C6C69;
  *(v0 + 152) = v4;
  return v0;
}

uint64_t sub_21EA44750()
{
  result = sub_21EA4450C();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = 32 * v2;
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
      return result;
    }

    ++v2;
    v7 = v6 + 32;
    v8 = *(v1 + v6 + 33);
    v6 += 32;
    if (v8)
    {
      v9 = *(v1 + v7);
      v11 = *(v1 + v7 + 8);
      v10 = *(v1 + v7 + 16);
      v12 = *(v1 + v7 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21EA485C8(0, *(v5 + 16) + 1, 1);
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_21EA485C8((v13 > 1), v14 + 1, 1);
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 32 * v14;
      *(v15 + 32) = v9;
      *(v15 + 33) = 1;
      *(v15 + 40) = v11;
      *(v15 + 48) = v10;
      *(v15 + 56) = v12;
      goto LABEL_2;
    }
  }

  v16 = *(v5 + 16);
  if (v16)
  {
    sub_21EA485A8(0, v16, 0);
    v17 = *(v4 + 16);
    v18 = 32;
    do
    {
      v19 = *(v5 + v18);
      v20 = *(v4 + 24);
      if (v17 >= v20 >> 1)
      {
        sub_21EA485A8((v20 > 1), v17 + 1, 1);
      }

      *(v4 + 16) = v17 + 1;
      *(v4 + v17 + 32) = v19;
      v18 += 32;
      ++v17;
      --v16;
    }

    while (v16);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_21EA44940(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_21EA4450C() + 16;
  v3 = *v2 + 1;
  while (--v3)
  {
    v4 = v2 + 32;
    v5 = *(v2 + 16);
    v2 += 32;
    if (v5 == v1)
    {
      v6 = *(v4 - 8);

      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

uint64_t sub_21EA449C0(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_21EA4450C();
  v3 = (v2 + 32);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 32;
    v6 = *v3;
    v3 += 32;
    if (v6 == v1)
    {
      v7 = *(v5 - 1);

      return v7;
    }
  }

  return sub_21EAA8BC0();
}

uint64_t sub_21EA44A48()
{
  sub_21EA488A0(v0 + 16, &qword_27CEDC8C8);
  v1 = OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__showCamera;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC970);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__showMicrophone, v2);
  v3(v0 + OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__showLocation, v2);
  v3(v0 + OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__showGameMode, v2);
  v3(v0 + OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__audioVideoControlsAreEnabled, v2);
  v4 = OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__title;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC978);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for DynamicControlsViewModel()
{
  result = qword_27CEDC830;
  if (!qword_27CEDC830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21EA44C2C()
{
  sub_21EA44D28(319, &qword_27CEDC840);
  if (v0 <= 0x3F)
  {
    sub_21EA44D28(319, &qword_27CEDC848);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21EA44D28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21EAA88E0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_21EA44D74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21EA44DBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21EA44E24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC978);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC970);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v9 = OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__showCamera;
  LOBYTE(v17[0]) = 0;
  sub_21EAA88B0();
  v10 = *(v6 + 32);
  v10(v0 + v9, v8, v5);
  v11 = OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__showMicrophone;
  LOBYTE(v17[0]) = 0;
  sub_21EAA88B0();
  v10(v0 + v11, v8, v5);
  v12 = OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__showLocation;
  LOBYTE(v17[0]) = 0;
  sub_21EAA88B0();
  v10(v0 + v12, v8, v5);
  v13 = OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__showGameMode;
  LOBYTE(v17[0]) = 0;
  sub_21EAA88B0();
  v10(v0 + v13, v8, v5);
  v14 = OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__audioVideoControlsAreEnabled;
  LOBYTE(v17[0]) = 0;
  sub_21EAA88B0();
  v10(v0 + v14, v8, v5);
  v15 = OBJC_IVAR____TtC15ControlCenterUI24DynamicControlsViewModel__title;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_21EAA88B0();
  (*(v2 + 32))(v0 + v15, v4, v1);
  return v0;
}

uint64_t sub_21EA450C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DynamicControlsViewModel();
  result = sub_21EAA88A0();
  *a1 = result;
  return result;
}

double sub_21EA45108(unsigned __int8 a1)
{
  v2 = sub_21EA44750();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1;
LABEL_5:
    v6 = 0;
    v7 = *(v2 + 32 + v4++);
    while (*(v2 + v6 + 32) != v7)
    {
      if (v3 == ++v6)
      {
LABEL_4:
        if (v4 == v3)
        {
          goto LABEL_9;
        }

        goto LABEL_5;
      }
    }

    if (v7 != v5)
    {
      goto LABEL_4;
    }

    v8 = v6 * 24.0;
  }

  else
  {
LABEL_9:

    v8 = 0.0;
  }

  v9 = *(sub_21EA44750() + 16);

  return v8 + (v9 * 30.0 + (v9 + -1.0) * -6.0) * -0.5 + 15.0;
}

uint64_t sub_21EA451E8(unsigned __int8 a1)
{
  result = sub_21EA44750();
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      v7 = *(v3 + 32 + v5);
      if (v7 != a1)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21EA48070(0, *(v6 + 16) + 1, 1, v6);
          v6 = result;
        }

        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          result = sub_21EA48070((v8 > 1), v9 + 1, 1, v6);
          v6 = result;
        }

        ++v5;
        *(v6 + 16) = v9 + 1;
        *(v6 + v9 + 32) = v7;
        if (v4 != v5)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_12:

    v10 = *(v6 + 16);

    return v10 != 0;
  }

  return result;
}

void sub_21EA45308(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = sub_21EAA8BF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21EA451E8(a1);
  v27 = a1;
  v30 = sub_21EA449C0(a1);
  sub_21EAA8CA0();
  sub_21EAA8930();
  v28 = v9 & 1;
  *&v36[3] = *&v36[27];
  *&v36[11] = *&v36[35];
  *&v36[19] = *&v36[43];
  v10 = sub_21EAA8CA0();
  v25 = v11;
  v26 = v10;
  sub_21EA44940(a1);
  sub_21EAA8BE0();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v12 = sub_21EAA8C00();

  (*(v6 + 8))(v8, v5);
  LOBYTE(v8) = sub_21EAA8A50();
  sub_21EAA8910();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v60) = 1;
  LOBYTE(v44[0]) = 0;
  v21 = sub_21EAA8BC0();
  KeyPath = swift_getKeyPath();
  *(&v38 + 2) = v33;
  WORD3(v38) = v34;
  *(&v38 + 9) = *v32;
  HIDWORD(v38) = *&v32[3];
  DWORD1(v41) = *&v35[3];
  *(&v41 + 1) = *v35;
  v37[0] = v12;
  v37[1] = 0;
  LOWORD(v38) = 1;
  BYTE8(v38) = v8;
  *&v39 = v14;
  *(&v39 + 1) = v16;
  *&v40 = v18;
  *(&v40 + 1) = v20;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = KeyPath;
  *&v42 = v21;
  *(&v42 + 1) = v26;
  v43 = v25;
  v66 = v25;
  v65 = v42;
  v64 = v41;
  v63 = v40;
  v62 = v39;
  v61 = v38;
  v60 = v12;
  v44[0] = v12;
  v44[1] = 0;
  v45 = 1;
  v47 = v34;
  v46 = v33;
  v48 = v8;
  *&v49[3] = *&v32[3];
  *v49 = *v32;
  v50 = v14;
  v51 = v16;
  v52 = v18;
  v53 = v20;
  v54 = 0;
  *&v55[3] = *&v35[3];
  *v55 = *v35;
  v56 = KeyPath;
  v57 = v21;
  v58 = v26;
  v59 = v25;
  sub_21EA48990(v37, &v31, &qword_27CEDC940);
  sub_21EA488A0(v44, &qword_27CEDC940);
  v23 = sub_21EA45108(v27);
  v24 = *&v36[8];
  *(a3 + 18) = *v36;
  *a3 = v28;
  *(a3 + 8) = v30;
  *(a3 + 16) = 256;
  *(a3 + 34) = v24;
  *(a3 + 50) = *&v36[16];
  *(a3 + 64) = *&v36[23];
  *(a3 + 120) = v63;
  *(a3 + 136) = v64;
  *(a3 + 152) = v65;
  *(a3 + 168) = v66;
  *(a3 + 72) = v60;
  *(a3 + 88) = v61;
  *(a3 + 104) = v62;
  *(a3 + 176) = v23;
  *(a3 + 184) = 0;
}

uint64_t sub_21EA456B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v55 = sub_21EAA8C90();
  MEMORY[0x28223BE20](v55);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC850);
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC858);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC860);
  MEMORY[0x28223BE20](v56);
  v12 = &v53 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC868);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC870);
  v62 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v58 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v53 - v17;
  v18 = *(sub_21EA44750() + 16);

  if (v18)
  {
    v53 = v14;
    *v7 = sub_21EAA8A00();
    *(v7 + 1) = 0;
    v7[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC878);
    sub_21EA45F60(v63);
    v19 = sub_21EAA8A50();
    v20 = &v7[*(v5 + 36)];
    *v20 = v19;
    __asm { FMOV            V0.2D, #4.0 }

    *(v20 + 8) = _Q0;
    *(v20 + 24) = xmmword_21EAB6010;
    v20[40] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21EAA88C0();

    v54 = a3;
    if (v65 == 1)
    {
      sub_21EAA8C80();
    }

    else
    {
      *&v65 = sub_21EAA8BA0();
    }

    v28 = sub_21EAA8940();
    v29 = &v10[*(v8 + 36)];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC880);
    v31 = (v29 + *(v30 + 52));
    v32 = *(sub_21EAA8960() + 20);
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_21EAA8A20();
    (*(*(v34 - 8) + 104))(&v31->i8[v32], v33, v34);
    *v31 = vdupq_n_s64(0x4059000000000000uLL);
    *v29 = v28;
    *(v29 + *(v30 + 56)) = 256;
    sub_21EA47EFC(v7, v10, &qword_27CEDC850);
    KeyPath = swift_getKeyPath();
    v36 = &v12[*(v56 + 36)];
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC888) + 28);
    v38 = *MEMORY[0x277CDF3D0];
    v39 = sub_21EAA8920();
    (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
    *v36 = KeyPath;
    sub_21EA47EFC(v10, v12, &qword_27CEDC858);
    v40 = swift_allocObject();
    *(v40 + 16) = v63;
    *(v40 + 24) = a2;
    sub_21EA47C8C();

    v41 = v59;
    sub_21EAA8B60();

    sub_21EA488A0(v12, &qword_27CEDC860);
    swift_beginAccess();
    sub_21EA48990(a2 + 16, &v65, &qword_27CEDC8C8);
    if (*(&v66 + 1))
    {
      sub_21EA47F64(&v65, v64);
      sub_21EA488A0(&v65, &qword_27CEDC8C8);
      __swift_project_boxed_opaque_existential_1(v64, v64[3]);
      Strong = swift_unknownObjectWeakLoadStrong();
      v43 = v53;
      if (Strong)
      {
        [Strong maximumAvailableWidth];
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1(v64);
      sub_21EAA8CA0();
    }

    else
    {
      sub_21EA488A0(&v65, &qword_27CEDC8C8);
      sub_21EAA8CA0();
      v43 = v53;
    }

    sub_21EAA8970();
    v44 = v58;
    (*(v60 + 32))(v58, v41, v61);
    v45 = &v44[*(v43 + 36)];
    v46 = v70;
    *(v45 + 4) = v69;
    *(v45 + 5) = v46;
    *(v45 + 6) = v71;
    v47 = v66;
    *v45 = v65;
    *(v45 + 1) = v47;
    v48 = v68;
    *(v45 + 2) = v67;
    *(v45 + 3) = v48;
    v49 = v44;
    v50 = v57;
    sub_21EA47EFC(v49, v57, &qword_27CEDC870);
    v51 = v50;
    v52 = v54;
    sub_21EA47EFC(v51, v54, &qword_27CEDC870);
    return (*(v62 + 56))(v52, 0, 1, v43);
  }

  else
  {
    v26 = *(v62 + 56);

    return v26(a3, 1, 1, v14);
  }
}

uint64_t sub_21EA45F60(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v87 = v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC8D0);
  v6 = MEMORY[0x28223BE20](v84);
  v88 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC8D8);
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x28223BE20](v9);
  v79 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC8E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v85 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC8E8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v78 - v16;
  v18 = sub_21EAA8CA0();
  v99 = v19;
  v100 = v18;
  sub_21EA46AF4(v4, v118);
  memcpy(v124, v118, sizeof(v124));
  memcpy(v125, v118, sizeof(v125));
  sub_21EA48990(v124, v102, &qword_27CEDC8F0);
  sub_21EA488A0(v125, &qword_27CEDC8F0);
  memcpy(v129, v124, sizeof(v129));
  v80 = v3;
  sub_21EA44750();

  sub_21EAA8CA0();
  sub_21EAA8930();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  sub_21EA4800C();
  v20 = sub_21EAA8B20();
  v22 = v21;
  v24 = v23;
  v25 = sub_21EAA8A60();
  v26 = *(v25 - 8);
  v90 = *(v26 + 56);
  v91 = v25;
  v89 = v26 + 56;
  v90(v17, 1, 1);
  sub_21EAA8A80();
  v92 = v17;
  sub_21EA488A0(v17, &qword_27CEDC8E8);
  v27 = sub_21EAA8B00();
  v29 = v28;
  LOBYTE(v17) = v30;

  sub_21EA48060(v20, v22, v24 & 1);

  sub_21EAA8A70();
  v31 = sub_21EAA8AF0();
  v96 = v32;
  v97 = v31;
  v34 = v33;
  v98 = v35;
  sub_21EA48060(v27, v29, v17 & 1);

  KeyPath = swift_getKeyPath();
  v81 = sub_21EAA8BC0();
  v94 = swift_getKeyPath();
  v93 = v34 & 1;
  LOBYTE(v118[0]) = v34 & 1;
  LOBYTE(v102[0]) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  if (LOBYTE(v118[0]) == 1)
  {
    sub_21EAA8A10();
    v36 = sub_21EAA8B10();
    v38 = v37;
    v40 = v39;
    v41 = v92;
    (v90)(v92, 1, 1, v91);
    sub_21EAA8A80();
    sub_21EA488A0(v41, &qword_27CEDC8E8);
    v42 = sub_21EAA8B00();
    v44 = v43;
    v46 = v45;

    sub_21EA48060(v36, v38, v40 & 1);

    sub_21EAA8A70();
    v47 = sub_21EAA8AF0();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_21EA48060(v42, v44, v46 & 1);

    v54 = swift_getKeyPath();
    v55 = sub_21EAA8B80();
    LOBYTE(v108[0]) = v51 & 1;
    LOBYTE(v103) = 0;
    v56 = v83;
    v57 = *(v83 + 36);
    v58 = *MEMORY[0x277CE13B8];
    v59 = sub_21EAA8CB0();
    v60 = v79;
    (*(*(v59 - 8) + 104))(&v79[v57], v58, v59);
    *v60 = v47;
    *(v60 + 8) = v49;
    *(v60 + 16) = v108[0];
    *(v60 + 17) = v118[0];
    *(v60 + 20) = *(v118 + 3);
    *(v60 + 24) = v53;
    *(v60 + 32) = v54;
    *(v60 + 40) = 1;
    *(v60 + 48) = v103;
    *(v60 + 49) = v102[0];
    *(v60 + 52) = *(v102 + 3);
    *(v60 + 56) = v55;
    v61 = v101;
    sub_21EA48900(v60, v101);
    (*(v82 + 56))(v61, 0, 1, v56);
  }

  else
  {
    (*(v82 + 56))(v101, 1, 1, v83);
    v58 = *MEMORY[0x277CE13B8];
  }

  v62 = sub_21EAA8BE0();
  v63 = v92;
  (v90)(v92, 1, 1, v91);
  v64 = sub_21EAA8A80();
  sub_21EA488A0(v63, &qword_27CEDC8E8);
  v65 = swift_getKeyPath();
  v118[0] = v62;
  v118[1] = v65;
  v118[2] = v64;
  sub_21EAA8A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC8F8);
  sub_21EA487E8();
  v66 = v86;
  sub_21EAA8B50();

  v67 = sub_21EAA8B80();
  *(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC918) + 36)) = v67;
  v68 = *(v84 + 36);
  v69 = sub_21EAA8CB0();
  (*(*(v69 - 8) + 104))(v66 + v68, v58, v69);
  v70 = v85;
  sub_21EA48990(v101, v85, &qword_27CEDC8E0);
  v71 = v88;
  sub_21E9FF9B4(v66, v88);
  *&v102[0] = v100;
  *(&v102[0] + 1) = v99;
  memcpy(&v102[1], v129, 0x300uLL);
  v102[49] = v126;
  v102[50] = v127;
  v102[51] = v128;
  v72 = v87;
  memcpy(v87, v102, 0x340uLL);
  *&v103 = v97;
  *(&v103 + 1) = v96;
  LOBYTE(v104) = v93;
  *(&v104 + 1) = *v123;
  DWORD1(v104) = *&v123[3];
  *(&v104 + 1) = v98;
  *&v105 = KeyPath;
  *(&v105 + 1) = 1;
  LOBYTE(v106) = 0;
  *(&v106 + 1) = *v122;
  DWORD1(v106) = *&v122[3];
  *(&v106 + 1) = v94;
  v73 = v81;
  v107 = v81;
  v72[112] = v81;
  v74 = v104;
  *(v72 + 52) = v103;
  *(v72 + 53) = v74;
  v75 = v106;
  *(v72 + 54) = v105;
  *(v72 + 55) = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC920);
  sub_21EA48990(v70, v72 + *(v76 + 64), &qword_27CEDC8E0);
  sub_21E9FF9B4(v71, v72 + *(v76 + 80));
  sub_21EA48990(v102, v118, &qword_27CEDC928);
  sub_21EA48990(&v103, v118, &qword_27CEDC930);
  sub_21EA488A0(v66, &qword_27CEDC8D0);
  sub_21EA488A0(v101, &qword_27CEDC8E0);
  sub_21EA488A0(v71, &qword_27CEDC8D0);
  sub_21EA488A0(v70, &qword_27CEDC8E0);
  v108[0] = v97;
  v108[1] = v96;
  v109 = v93;
  *v110 = *v123;
  *&v110[3] = *&v123[3];
  v111 = v98;
  v112 = KeyPath;
  v113 = 1;
  v114 = 0;
  *v115 = *v122;
  *&v115[3] = *&v122[3];
  v116 = v94;
  v117 = v73;
  sub_21EA488A0(v108, &qword_27CEDC930);
  v118[0] = v100;
  v118[1] = v99;
  memcpy(&v118[2], v129, 0x300uLL);
  v119 = v126;
  v120 = v127;
  v121 = v128;
  return sub_21EA488A0(v118, &qword_27CEDC928);
}

uint64_t sub_21EA46AF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  if (v108 == 1)
  {
    sub_21EA45308(0, a1, &v84);
    v104 = v92;
    v105 = v93;
    v106 = v94;
    v107 = v95;
    v100 = v88;
    v101 = v89;
    v102 = v90;
    v103 = v91;
    v96 = v84;
    v97 = v85;
    v98 = v86;
    v99 = v87;
    nullsub_1(&v96);
    v116 = v104;
    v117 = v105;
    v118 = v106;
    v119 = v107;
    v112 = v100;
    v113 = v101;
    v114 = v102;
    v115 = v103;
    v108 = v96;
    v109 = v97;
    v110 = v98;
    v111 = v99;
  }

  else
  {
    sub_21EA48970(&v108);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  if (v96 == 1)
  {
    sub_21EA45308(1, a1, &v72);
    v92 = v80;
    v93 = v81;
    v94 = v82;
    v95 = v83;
    v88 = v76;
    v89 = v77;
    v90 = v78;
    v91 = v79;
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v87 = v75;
    nullsub_1(&v84);
    v104 = v92;
    v105 = v93;
    v106 = v94;
    v107 = v95;
    v100 = v88;
    v101 = v89;
    v102 = v90;
    v103 = v91;
    v96 = v84;
    v97 = v85;
    v98 = v86;
    v99 = v87;
  }

  else
  {
    sub_21EA48970(&v96);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  if (v84 == 1)
  {
    sub_21EA45308(2, a1, &v60);
    v80 = v68;
    v81 = v69;
    v82 = v70;
    v83 = v71;
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v72 = v60;
    v73 = v61;
    v74 = v62;
    v75 = v63;
    nullsub_1(&v72);
    v92 = v80;
    v93 = v81;
    v94 = v82;
    v95 = v83;
    v88 = v76;
    v89 = v77;
    v90 = v78;
    v91 = v79;
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v87 = v75;
  }

  else
  {
    sub_21EA48970(&v84);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  if (v72 == 1)
  {
    sub_21EA45308(3, a1, &v48);
    v68 = v56;
    v69 = v57;
    v70 = v58;
    v71 = v59;
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v60 = v48;
    v61 = v49;
    v62 = v50;
    v63 = v51;
    nullsub_1(&v60);
    v80 = v68;
    v81 = v69;
    v82 = v70;
    v83 = v71;
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v72 = v60;
    v73 = v61;
    v74 = v62;
    v75 = v63;
  }

  else
  {
    sub_21EA48970(&v72);
  }

  v38 = v116;
  v39 = v117;
  v40 = v118;
  v41 = v119;
  v34 = v112;
  v35 = v113;
  v36 = v114;
  v37 = v115;
  v30 = v108;
  v31 = v109;
  v32 = v110;
  v33 = v111;
  v26 = v104;
  v27 = v105;
  v28 = v106;
  v29 = v107;
  v22 = v100;
  v23 = v101;
  v24 = v102;
  v25 = v103;
  v18 = v96;
  v19 = v97;
  v20 = v98;
  v21 = v99;
  v14 = v92;
  v15 = v93;
  v16 = v94;
  v17 = v95;
  v10 = v88;
  v11 = v89;
  v12 = v90;
  v13 = v91;
  v6 = v84;
  v7 = v85;
  v8 = v86;
  v9 = v87;
  v46[8] = v80;
  v46[9] = v81;
  v46[10] = v82;
  v46[11] = v83;
  v46[4] = v76;
  v46[5] = v77;
  v46[6] = v78;
  v46[7] = v79;
  v46[0] = v72;
  v46[1] = v73;
  v46[2] = v74;
  v46[3] = v75;
  v42[8] = v116;
  v42[9] = v117;
  v42[10] = v118;
  v42[11] = v119;
  v42[4] = v112;
  v42[5] = v113;
  v42[6] = v114;
  v42[7] = v115;
  v42[0] = v108;
  v42[1] = v109;
  v42[2] = v110;
  v42[3] = v111;
  __src[8] = v116;
  __src[9] = v117;
  __src[10] = v118;
  __src[11] = v119;
  __src[4] = v112;
  __src[5] = v113;
  __src[6] = v114;
  __src[7] = v115;
  __src[0] = v108;
  __src[1] = v109;
  __src[2] = v110;
  __src[3] = v111;
  v43[8] = v104;
  v43[9] = v105;
  v43[10] = v106;
  v43[11] = v107;
  v43[4] = v100;
  v43[5] = v101;
  v43[6] = v102;
  v43[7] = v103;
  v43[0] = v96;
  v43[1] = v97;
  v43[2] = v98;
  v43[3] = v99;
  __src[20] = v104;
  __src[21] = v105;
  __src[22] = v106;
  __src[23] = v107;
  __src[16] = v100;
  __src[17] = v101;
  __src[18] = v102;
  __src[19] = v103;
  __src[12] = v96;
  __src[13] = v97;
  __src[14] = v98;
  __src[15] = v99;
  v44[8] = v92;
  v44[9] = v93;
  v44[10] = v94;
  v44[11] = v95;
  v44[4] = v88;
  v44[5] = v89;
  v44[6] = v90;
  v44[7] = v91;
  v44[0] = v84;
  v44[1] = v85;
  v44[2] = v86;
  v44[3] = v87;
  __src[32] = v92;
  __src[33] = v93;
  __src[34] = v94;
  __src[35] = v95;
  __src[28] = v88;
  __src[29] = v89;
  __src[30] = v90;
  __src[31] = v91;
  __src[24] = v84;
  __src[25] = v85;
  __src[26] = v86;
  __src[27] = v87;
  v45[8] = v80;
  v45[9] = v81;
  v45[10] = v82;
  v45[11] = v83;
  v45[4] = v76;
  v45[5] = v77;
  v45[6] = v78;
  v45[7] = v79;
  v45[0] = v72;
  v45[1] = v73;
  v45[2] = v74;
  v45[3] = v75;
  __src[44] = v80;
  __src[45] = v81;
  __src[46] = v82;
  __src[47] = v83;
  __src[40] = v76;
  __src[41] = v77;
  __src[42] = v78;
  __src[43] = v79;
  __src[36] = v72;
  __src[37] = v73;
  __src[38] = v74;
  __src[39] = v75;
  memcpy(a2, __src, 0x300uLL);
  sub_21EA48990(v42, &v60, &qword_27CEDC938);
  sub_21EA48990(v43, &v60, &qword_27CEDC938);
  sub_21EA48990(v44, &v60, &qword_27CEDC938);
  sub_21EA48990(v45, &v60, &qword_27CEDC938);
  sub_21EA488A0(v46, &qword_27CEDC938);
  v47[8] = v14;
  v47[9] = v15;
  v47[10] = v16;
  v47[11] = v17;
  v47[4] = v10;
  v47[5] = v11;
  v47[6] = v12;
  v47[7] = v13;
  v47[0] = v6;
  v47[1] = v7;
  v47[2] = v8;
  v47[3] = v9;
  sub_21EA488A0(v47, &qword_27CEDC938);
  v56 = v26;
  v57 = v27;
  v58 = v28;
  v59 = v29;
  v52 = v22;
  v53 = v23;
  v54 = v24;
  v55 = v25;
  v48 = v18;
  v49 = v19;
  v50 = v20;
  v51 = v21;
  sub_21EA488A0(&v48, &qword_27CEDC938);
  v68 = v38;
  v69 = v39;
  v70 = v40;
  v71 = v41;
  v64 = v34;
  v65 = v35;
  v66 = v36;
  v67 = v37;
  v60 = v30;
  v61 = v31;
  v62 = v32;
  v63 = v33;
  return sub_21EA488A0(&v60, &qword_27CEDC938);
}

uint64_t sub_21EA476B0(uint64_t a1)
{
  v2 = sub_21EAA8920();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21EAA8990();
}

uint64_t sub_21EA47778(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21EA48990(a2 + 16, v6, &qword_27CEDC8C8);
  if (!v7)
  {
    return sub_21EA488A0(v6, &qword_27CEDC8C8);
  }

  sub_21EA47F64(v6, v5);
  sub_21EA488A0(v6, &qword_27CEDC8C8);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong privacyButtonTapped];
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

double sub_21EA47878@<D0>(char a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  sub_21EAA8AD0();
  v27 = 0x3FF0000000000000;
  v28 = 0;
  v29 = 0;
  v30 = 0x3FF0000000000000;
  v31 = 0;
  v32 = 0;
  sub_21EAA8AA0();
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  CGRectGetMidX(v33);
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetMidY(v34);
  if (a1)
  {
    MEMORY[0x28223BE20](v12);
    __asm { FMOV            V0.2D, #30.0 }

    sub_21EAA8AE0();
    CGAffineTransformMakeScale(&v26, 1.0, 1.0);
    sub_21EAA8A90();
    v24[0] = v19;
    v24[1] = v20;
    v25 = v21;
    sub_21EAA8AC0();
    sub_21EAA8AB0();
    sub_21EA490E0(&v23);
    sub_21EA490E0(&v22);
    sub_21EA490E0(v24);
  }

  result = *&v19;
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  return result;
}

double sub_21EA47A30@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_21EA47878(*v5, v9, a2, a3, a4, a5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_21EA47A9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21EAA88F0();
  return sub_21EA47B24;
}

void sub_21EA47B24(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_21EA47B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21EA49134();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_21EA47BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21EA49134();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_21EA47C38(uint64_t a1)
{
  v2 = sub_21EA49134();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_21EA47C8C()
{
  result = qword_27CEDC890;
  if (!qword_27CEDC890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEDC860);
    sub_21EA47D8C();
    sub_21EA48EEC(&qword_27CEDC8C0, &qword_27CEDC888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDC890);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_21EA47D8C()
{
  result = qword_27CEDC898;
  if (!qword_27CEDC898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEDC858);
    sub_21EA47E44();
    sub_21EA48EEC(&qword_27CEDC8B8, &qword_27CEDC880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDC898);
  }

  return result;
}

unint64_t sub_21EA47E44()
{
  result = qword_27CEDC8A0;
  if (!qword_27CEDC8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEDC850);
    sub_21EA48EEC(&qword_27CEDC8A8, &qword_27CEDC8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDC8A0);
  }

  return result;
}

uint64_t sub_21EA47EFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21EA47F64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21EA4800C()
{
  result = qword_28125B880;
  if (!qword_28125B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125B880);
  }

  return result;
}

uint64_t sub_21EA48060(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

char *sub_21EA48070(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_21EA48164(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_21EA48258(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21EA48368(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21EA48474(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC958);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21EA485A8(char *a1, int64_t a2, char a3)
{
  result = sub_21EA485E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21EA485C8(char *a1, int64_t a2, char a3)
{
  result = sub_21EA486DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21EA485E8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_21EA486DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC968);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_21EA487E8()
{
  result = qword_27CEDC900;
  if (!qword_27CEDC900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEDC8F8);
    sub_21EA48EEC(&qword_27CEDC908, &qword_27CEDC910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDC900);
  }

  return result;
}

uint64_t sub_21EA488A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21EA48900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC8D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21EA48970(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_21EA48990(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21EA489F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21EA48A40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IndicatorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IndicatorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CircleWithBite(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CircleWithBite(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21EA48D5C()
{
  result = qword_27CEDC990;
  if (!qword_27CEDC990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEDC998);
    sub_21EA48DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDC990);
  }

  return result;
}

unint64_t sub_21EA48DE0()
{
  result = qword_27CEDC9A0;
  if (!qword_27CEDC9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEDC870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEDC860);
    sub_21EA47C8C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDC9A0);
  }

  return result;
}

uint64_t sub_21EA48EEC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21EA48F38()
{
  result = qword_27CEDC9B8;
  if (!qword_27CEDC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDC9B8);
  }

  return result;
}

unint64_t sub_21EA48F90()
{
  result = qword_27CEDC9C0;
  if (!qword_27CEDC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDC9C0);
  }

  return result;
}

unint64_t sub_21EA48FE8()
{
  result = qword_27CEDC9C8;
  if (!qword_27CEDC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDC9C8);
  }

  return result;
}

unint64_t sub_21EA49040()
{
  result = qword_27CEDC9D0;
  if (!qword_27CEDC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDC9D0);
  }

  return result;
}

unint64_t sub_21EA49134()
{
  result = qword_27CEDC9D8;
  if (!qword_27CEDC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDC9D8);
  }

  return result;
}

void GameModeControlsView.init(provider:activityData:frame:)(void *a1, void *a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = OBJC_IVAR___CCUIGameModeControlsView_gameModeActivityDataProvider;
  *&v6[OBJC_IVAR___CCUIGameModeControlsView_gameModeActivityDataProvider] = 0;
  swift_beginAccess();
  *&v6[v12] = a1;
  v13 = objc_allocWithZone(CCUIGameOverlayMediator);
  v14 = a1;
  v15 = [v13 init];
  *&v6[OBJC_IVAR___CCUIGameModeControlsView_overlayMediator] = v15;
  v16 = [a2 bundleIdentifier];
  v17 = sub_21EAA8E00();
  v19 = v18;

  v20 = &v6[OBJC_IVAR___CCUIGameModeControlsView_bundleIdentifier];
  *v20 = v17;
  v20[1] = v19;
  v21 = *&v14[OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_bundleIdentifierState];
  if (*(v21 + 16))
  {

    v22 = sub_21EA49DF4(v17, v19);
    v24 = v23;

    if (v24)
    {
      v25 = *(*(v21 + 56) + 8 * v22);
    }

    else
    {
      v25 = 4;
    }
  }

  else
  {
    v25 = 4;
  }

  *&v6[OBJC_IVAR___CCUIGameModeControlsView_state] = v25;
  v26 = [objc_opt_self() systemFontOfSize:25.0 weight:*MEMORY[0x277D74420]];
  v27 = [objc_opt_self() configurationWithFont:v26 scale:2];
  v28 = sub_21EAA8DC0();
  v29 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v29)
  {
    v45 = v26;
    v47 = v14;
    v48 = a2;
    v30 = [objc_opt_self() clearColor];
    v31 = [objc_allocWithZone(MEMORY[0x277CFC9B0]) initWithGlyphImage:v29 highlightColor:v30 useLightStyle:1];
    [v31 setUseAutomaticSymbolColors_];
    *&v6[OBJC_IVAR___CCUIGameModeControlsView_overlayRoundButton] = v31;
    v32 = v31;
    CCUIPortraitMainListGridGeometryInfo();
    v34 = v33;
    v36 = v35;
    v37 = [objc_allocWithZone(MEMORY[0x277CFC978]) initWithFrame_];
    [v37 ccui_applyGlass];
    [v37 setCustomGlyphView_];
    [v37 setGridSizeClass_];
    if (qword_28125B658 != -1)
    {
      swift_once();
    }

    v38 = qword_28125C5F8;
    v39 = sub_21EAA8DC0();
    v40 = sub_21EAA8DC0();
    v41 = [v38 localizedStringForKey:v39 value:0 table:v40];

    if (!v41)
    {
      sub_21EAA8E00();
      v41 = sub_21EAA8DC0();
    }

    [v37 setTitle_];

    MEMORY[0x223D675B0](3, v34, v36);
    [v37 setContinuousCornerRadius_];
    *&v6[OBJC_IVAR___CCUIGameModeControlsView_templateView] = v37;
    v42 = &v6[OBJC_IVAR___CCUIGameModeControlsView_preferredFrame];
    *v42 = a3;
    v42[1] = a4;
    v42[2] = a5;
    v42[3] = v34;
    v49.receiver = v6;
    v49.super_class = type metadata accessor for GameModeControlsView();
    v43 = v37;
    v44 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a3, a4, a5, v34);
    [v43 setDelegate_];
    [v44 addSubview_];
    [*&v44[OBJC_IVAR___CCUIGameModeControlsView_overlayRoundButton] setSelected_];
    [*&v44[OBJC_IVAR___CCUIGameModeControlsView_templateView] setSubtitle_];
  }

  else
  {
    __break(1u);
  }
}

void *sub_21EA49840()
{
  v1 = OBJC_IVAR___CCUIGameModeControlsView_gameModeActivityDataProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21EA498EC(uint64_t a1)
{
  v3 = OBJC_IVAR___CCUIGameModeControlsView_gameModeActivityDataProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_21EA49944(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CCUIGameModeControlsView_gameModeActivityDataProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id GameModeControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GameModeControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameModeControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GameModeControlsView.performPrimaryAction(for:)()
{
  v1 = v0;
  sub_21EA49E90();
  v2 = sub_21EAA9210();
  if (v2)
  {
    v3 = [objc_opt_self() sharedService];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v8[4] = sub_21EA49EDC;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_21EA49D2C;
    v8[3] = &block_descriptor;
    v5 = _Block_copy(v8);
    v6 = v1;

    [v3 handleControlCenterOperationType:2 completionHandler:v5];

    _Block_release(v5);
  }

  return v2 & 1;
}

void sub_21EA49CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR___CCUIGameModeControlsView_overlayMediator);
  v4 = sub_21EAA8DC0();
  [v3 launchOverlayForGameBundleIdentifier_];
}

void sub_21EA49D2C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_21EA49DF4(uint64_t a1, uint64_t a2)
{
  sub_21EAA95B0();
  sub_21EAA8E40();
  v4 = sub_21EAA95D0();

  return sub_21EA4A130(a1, a2, v4);
}

unint64_t sub_21EA49E90()
{
  result = qword_28125B640;
  if (!qword_28125B640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28125B640);
  }

  return result;
}

unint64_t sub_21EA49FAC(uint64_t a1, uint64_t a2, char a3)
{
  sub_21EAA95B0();
  if (a3)
  {
    MEMORY[0x223D67380](1);
    sub_21EAA8E40();
  }

  else
  {
    MEMORY[0x223D67380](0);
    MEMORY[0x223D67380](a1);
  }

  v6 = sub_21EAA95D0();

  return sub_21EA4A1E8(a1, a2, a3 & 1, v6);
}

unint64_t sub_21EA4A05C(uint64_t a1)
{
  v2 = sub_21EAA93C0();

  return sub_21EA4A2D8(a1, v2);
}

unint64_t sub_21EA4A0A0(uint64_t a1)
{
  sub_21EAA8E00();
  sub_21EAA95B0();
  sub_21EAA8E40();
  v2 = sub_21EAA95D0();

  return sub_21EA4A450(a1, v2);
}

unint64_t sub_21EA4A130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21EAA9530())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21EA4A1E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = *v13;
      if (v13[2])
      {
        if (a3)
        {
          v15 = v14 == a1 && v13[1] == a2;
          if (v15 || (sub_21EAA9530() & 1) != 0)
          {
            return v7;
          }
        }
      }

      else if ((a3 & 1) == 0 && v14 == a1)
      {
        return v7;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_21EA4A2D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21EA4A3A0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D67190](v9, a1);
      sub_21EA4A3FC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21EA4A450(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21EAA8E00();
      v8 = v7;
      if (v6 == sub_21EAA8E00() && v8 == v9)
      {
        break;
      }

      v11 = sub_21EAA9530();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

CCUIIconSubviewStretchable __swiftcall CCUIIconSubviewStretchable.init(iconView:subview:)(SBIconView *iconView, UIView *subview)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIconView:iconView subview:subview];

  v7 = v4;
  result.subview = v6;
  result.iconView = v5;
  result.super.isa = v7;
  return result;
}

id CCUIIconSubviewStretchable.init(iconView:subview:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___CCUIIconSubviewStretchable_iconView) = a1;
  *(v2 + OBJC_IVAR___CCUIIconSubviewStretchable_subview) = a2;
  v4.super_class = CCUIIconSubviewStretchable;
  return objc_msgSendSuper2(&v4, sel_init);
}

Swift::Void __swiftcall CCUIIconSubviewStretchable.applyStretchScale(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  v4 = [v1 subview];
  [v4 transform];
  CGAffineTransformDecompose(&v5, &transform);
  transform.a = x;
  transform.b = y;
  *&transform.c = *&v5.c;
  *&transform.tx = *&v5.tx;
  CGAffineTransformMakeWithComponents(&v5, &transform);
  transform = v5;
  [v4 setTransform_];
}

Swift::Void __swiftcall CCUIIconSubviewStretchable.applyStretchTranslation(_:)(CGVector a1)
{
  dy = a1.dy;
  dx = a1.dx;
  v4 = [v1 subview];
  [v4 transform];
  CGAffineTransformDecompose(&v5, &transform);
  *&transform.a = *&v5.a;
  *&transform.c = *&v5.c;
  transform.tx = dx;
  transform.ty = dy;
  CGAffineTransformMakeWithComponents(&v5, &transform);
  transform = v5;
  [v4 setTransform_];
}

CCUIIconSubviewStretchable __swiftcall CCUIIconSubviewStretchable.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.subview = v3;
  result.iconView = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for CCUIIconSubviewStretchable()
{
  result = qword_27CEDCA28;
  if (!qword_27CEDCA28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEDCA28);
  }

  return result;
}

char *sub_21EA4AADC(void *a1)
{
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_referenceIconView] = 0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView] = 0;
  v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_isFlocked] = 0;
  v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconAllowsLabelArea] = 0;
  v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconAllowsAccessory] = 0;
  v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconIsEditing] = 0;
  v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconCanShowCloseBox] = 1;
  v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconCanShowResizeHandle] = 1;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconContentScale] = 0x3FF0000000000000;
  v3 = &v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_cleanUpHandler];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_onCleanUp];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_referenceIconImageInfo];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconCanShowAdornments] = 1;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_customIconImageViewController] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview__dragState] = 0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview____lazy_storage___delayCleanupAssertions] = 0;
  v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_isDelayingCleanup] = 0;
  [a1 iconImageInfo];
  BSRectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v26.receiver = v1;
  v26.super_class = type metadata accessor for ControlIconDragPreview();
  v14 = objc_msgSendSuper2(&v26, sel_initWithFrame_, v7, v9, v11, v13);
  v15 = *&v14[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_referenceIconView];
  *&v14[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_referenceIconView] = a1;
  v16 = v14;
  v17 = a1;

  v18 = [v17 isEditing];
  v16[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconIsEditing] = v18;
  v19 = [v17 allowsLabelArea];
  v16[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconAllowsLabelArea] = v19;
  v20 = [v17 allowsAccessoryView];
  v16[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconAllowsAccessory] = v20;
  v21 = [v17 allowsCloseBox];
  v16[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconCanShowCloseBox] = v21;
  v22 = [v17 allowsResizeHandle];
  v16[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconCanShowResizeHandle] = v22;
  [v17 iconContentScale];
  *&v16[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconContentScale] = v23;
  v24 = [v17 allowsAdornmentsOverIconImage];

  v16[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconCanShowAdornments] = v24;
  return v16;
}

uint64_t sub_21EA4AF68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

unint64_t sub_21EA4B0D8(unint64_t result)
{
  v2 = OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview__dragState;
  if (*&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview__dragState] != result)
  {
    *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview__dragState] = result;
    if (result < 2 || *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView])
    {
      v3 = 0;
    }

    else
    {
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_21EA4C64C;
      *(v12 + 24) = v11;
      v16[4] = sub_21EA4C654;
      v16[5] = v12;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 1107296256;
      v16[2] = sub_21EA89FB8;
      v16[3] = &block_descriptor_0;
      v13 = _Block_copy(v16);
      v14 = v1;

      [v10 performWithoutAnimation_];
      _Block_release(v13);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
        return result;
      }

      v15 = *&v14[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_referenceIconView];
      *&v14[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_referenceIconView] = 0;

      result = *&v1[v2];
      v3 = sub_21EA4C64C;
    }

    if (result - 3 >= 2)
    {
      if (result != 2)
      {
        goto LABEL_14;
      }

      v8 = OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView;
      v9 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView];
      if (!v9)
      {
        goto LABEL_14;
      }

      [v9 setAllowsAdornmentsOverIconImage:0 animated:1];
      v7 = *&v1[v8];
      if (!v7)
      {
        goto LABEL_14;
      }

      v6 = 0;
    }

    else
    {
      v4 = OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView;
      v5 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView];
      if (!v5)
      {
        goto LABEL_14;
      }

      v6 = 1;
      [v5 setAllowsAdornmentsOverIconImage:1 animated:1];
      v7 = *&v1[v4];
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    [v7 setEditing:v6 animated:1];
LABEL_14:
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
    return sub_21E9FFAF0(v3);
  }

  return result;
}

void sub_21EA4B35C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_referenceIconView);
  if (v1)
  {
    v2 = v1;
    sub_21EA4BA08(v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_21EA4B434(void *a1)
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_customIconImageViewController;
  v4 = *(v1 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_customIconImageViewController);
  *(v1 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_customIconImageViewController) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView);
  if (v6)
  {
    v9 = v6;
    if (a1)
    {
      v7 = [v5 parentViewController];
      if (v7)
      {
        v8 = v7;
        [v7 bs:v5 removeChildViewController:?];
      }
    }

    [v9 setOverrideCustomIconImageViewController_];
  }
}

id sub_21EA4B674()
{
  v1 = OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView;
  result = *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView);
  if (result)
  {
    [result setIcon_];
    result = *(v0 + v1);
    if (result)
    {

      return [result setDelegate_];
    }
  }

  return result;
}

void sub_21EA4B808()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ControlIconDragPreview();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView];
  if (v1)
  {
    if (v0[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_referenceIconImageInfo + 32])
    {
      __break(1u);
    }

    else
    {
      v2 = v1;
      BSRectWithSize();
      [v2 setBounds_];
      [v0 bounds];
      UIRectGetCenter();
      [v2 setCenter_];
      v3 = *&v0[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview__dragState];
      v4 = 1.0;
      if (v3 <= 4)
      {
        v4 = dbl_21EAB6750[v3];
      }

      if (BSFloatIsOne())
      {
        *&v5.a = 0x3FF0000000000000uLL;
        v5.c = 0.0;
        v5.d = 1.0;
        *&v5.tx = 0uLL;
        [v2 setTransform_];
      }

      else
      {
        CGAffineTransformMakeScale(&v5, v4, v4);
        [v2 setTransform_];
      }
    }
  }
}

id sub_21EA4B98C()
{
  v1 = OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview____lazy_storage___delayCleanupAssertions;
  v2 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview____lazy_storage___delayCleanupAssertions);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview____lazy_storage___delayCleanupAssertions);
  }

  else
  {
    v4 = [objc_opt_self() weakObjectsHashTable];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_21EA4BA08(void *a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromObject()) initWithConfigurationOptions_];
  v4 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_customIconImageViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 parentViewController];
    if (v6)
    {
      v7 = v6;
      [v6 bs:v5 removeChildViewController:?];
    }

    [v3 setOverrideCustomIconImageViewController_];
  }

  [a1 configureMatchingIconView_];
  [v3 setSuppressesDefaultEditingAnimation_];
  [a1 iconImageInfo];
  v8 = &v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_referenceIconImageInfo];
  *v8 = v9;
  *(v8 + 1) = v10;
  *(v8 + 2) = v11;
  *(v8 + 3) = v12;
  v8[32] = 0;
  [v3 setIconImageInfo_];
  [v3 setEditing_];
  [v3 setAllowsLabelArea_];
  [v3 setAllowsAccessoryView_];
  [v3 setAllowsCloseBox_];
  [v3 setAllowsResizeHandle_];
  [v3 setAllowsAdornmentsOverIconImage_];
  [v3 setIconContentScale_];
  v13 = [a1 accessibilityTintColor];
  [v3 setAccessibilityTintColor_];

  v14 = v3;
  BSRectWithSize();
  [v14 setFrame_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [v14 setDelegate_];
    swift_unknownObjectRelease();
  }

  v16 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView];
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView] = v14;
  v17 = v14;

  [v1 addSubview_];
  [v1 setNeedsLayout];
  [v1 layoutIfNeeded];
}

void sub_21EA4BCE4()
{
  v1 = (v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_cleanUpHandler);
  v2 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_cleanUpHandler);
  if (v2)
  {
    *v1 = 0;
    v1[1] = 0;
    v2(v0);
    sub_21E9FFAF0(v2);
  }

  v3 = (v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_onCleanUp);
  v4 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_onCleanUp);
  if (v4)
  {
    *v3 = 0;
    v3[1] = 0;
    v4();

    sub_21E9FFAF0(v4);
  }
}

id sub_21EA4BDBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlIconDragPreview();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21EA4BEB8()
{
  v1 = v0;
  if ((v0[OBJC_IVAR____TtC15ControlCenterUI43ControlIconDragPreviewDelayCleanupAssertion_isInvalidated] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC15ControlCenterUI43ControlIconDragPreviewDelayCleanupAssertion_isInvalidated] = 1;
    v2 = *&v0[OBJC_IVAR____TtC15ControlCenterUI43ControlIconDragPreviewDelayCleanupAssertion_dragPreview];
    v3 = sub_21EA4B98C();
    [v3 removeObject_];

    if (![*(v2 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview____lazy_storage___delayCleanupAssertions) count] && *(v2 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_isDelayingCleanup) == 1)
    {
      sub_21EA4BCE4();
    }
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlIconDragPreviewDelayCleanupAssertion();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_21EA4BFEC()
{
  if ((*(v0 + OBJC_IVAR____TtC15ControlCenterUI43ControlIconDragPreviewDelayCleanupAssertion_isInvalidated) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC15ControlCenterUI43ControlIconDragPreviewDelayCleanupAssertion_isInvalidated) = 1;
    v1 = v0;
    v2 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI43ControlIconDragPreviewDelayCleanupAssertion_dragPreview);
    v3 = sub_21EA4B98C();
    [v3 removeObject_];

    if (![*(v2 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview____lazy_storage___delayCleanupAssertions) count] && *(v2 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_isDelayingCleanup) == 1)
    {
      sub_21EA4BCE4();
    }
  }
}

void sub_21EA4C414()
{
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_referenceIconView) = 0;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView) = 0;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_isFlocked) = 0;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconAllowsLabelArea) = 0;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconAllowsAccessory) = 0;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconIsEditing) = 0;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconCanShowCloseBox) = 1;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconCanShowResizeHandle) = 1;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconContentScale) = 0x3FF0000000000000;
  v1 = (v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_cleanUpHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_onCleanUp);
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_referenceIconImageInfo;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconCanShowAdornments) = 1;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_customIconImageViewController) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview__dragState) = 0;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview____lazy_storage___delayCleanupAssertions) = 0;
  *(v0 + OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_isDelayingCleanup) = 0;
  sub_21EAA94A0();
  __break(1u);
}

void sub_21EA4C56C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0C00]) initWithObject_];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21EAA8DC0();
    v4 = sub_21EAA8DC0();
    [v2 appendString:v3 withName:v4];

    v5 = [v2 build];
    if (v5)
    {
      sub_21EAA8E00();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_21EA4C8E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ColorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21EA4C948(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_folder);
  *(v1 + OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_folder) = a1;
  v7 = v3;
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    a1 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_21EAA9220(), a1 = a1, v4 = v7, v5 = sub_21EAA9210(), v4, (v5 & 1) == 0))
  {
LABEL_7:
    sub_21EA4CD5C(v7);

    v6 = v7;
    goto LABEL_8;
  }

  v6 = v4;
LABEL_8:
}

id sub_21EA4CA20(void *a1)
{
  *&v1[OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_indicatorTypes] = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_folder;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_folder] = 0;
  v5 = OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_indicatorTypesByListIdentifier;
  *&v1[v5] = sub_21EA50E70(v3);
  v6 = *&v1[v4];
  *&v1[v4] = a1;
  v7 = a1;

  v10.receiver = v1;
  v10.super_class = type metadata accessor for FolderPageIndicatorProvider();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_21EA4CD5C(0);

  return v8;
}

uint64_t sub_21EA4CD5C(void *a1)
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_indicatorTypesByListIdentifier;
  swift_beginAccess();
  *&v1[v3] = MEMORY[0x277D84F98];

  if (a1)
  {
    v4 = a1;
    [v4 removeFolderObserver_];
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = swift_allocObject();
    v7 = sub_21EA4E884;
    *(v6 + 16) = sub_21EA4E884;
    *(v6 + 24) = v5;
    v22 = sub_21EA4EA24;
    v23 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_21EA4D078;
    v21 = &block_descriptor_56;
    v8 = _Block_copy(&aBlock);
    v9 = v1;

    [v4 enumerateListsWithOptions:4 usingBlock:v8];

    _Block_release(v8);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = 0;
LABEL_5:
  v10 = *&v1[OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_folder];
  if (!v10)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v11 = v10;
  [v11 addFolderObserver_];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = swift_allocObject();
  v14 = sub_21EA4E874;
  *(v13 + 16) = sub_21EA4E874;
  *(v13 + 24) = v12;
  v22 = sub_21EA4EA24;
  v23 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_21EA4D078;
  v21 = &block_descriptor_46;
  v15 = _Block_copy(&aBlock);
  v16 = v1;

  [v11 enumerateListsWithOptions:4 usingBlock:v15];

  _Block_release(v15);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  sub_21EA4D4E8();
  sub_21E9FFAF0(v7);
  return sub_21E9FFAF0(v14);
}

void sub_21EA4D078(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_21EA4D0DC()
{
  v0 = sub_21EAA8790();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21EAA8750();
  v4 = sub_21EAA8760();
  v5 = sub_21EAA8FD0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21E9F5000, v4, v5, "Page indicator content did invalidate for folder", v6, 2u);
    MEMORY[0x223D68580](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_21EA4D4E8();
}

uint64_t sub_21EA4D224(void *a1)
{
  v2 = v1;
  v4 = sub_21EAA8790();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = *(v2 + OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_folder);
  if (v11)
  {
    v12 = v11;
    sub_21EAA8750();
    v13 = v12;
    v14 = a1;
    v15 = sub_21EAA8760();
    v16 = sub_21EAA8FD0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = [v13 indexOfList:v14];

      _os_log_impl(&dword_21E9F5000, v15, v16, "Page indicator content did invalidate for list at index: %ld", v17, 0xCu);
      MEMORY[0x223D68580](v17, -1, -1);
    }

    else
    {

      v15 = v13;
    }
  }

  else
  {
    sub_21EAA8750();
    v15 = sub_21EAA8760();
    v18 = sub_21EAA8FE0();
    if (os_log_type_enabled(v15, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21E9F5000, v15, v18, "Page indicator content did invalidate for list despite not tracking a folder", v19, 2u);
      MEMORY[0x223D68580](v19, -1, -1);
    }

    v10 = v8;
  }

  (*(v5 + 8))(v10, v4);
  v20 = [a1 uniqueIdentifier];
  v21 = sub_21EAA8E00();
  v23 = v22;

  swift_beginAccess();
  sub_21EA62CAC(v21, v23);
  swift_endAccess();

  return sub_21EA4D4E8();
}

uint64_t sub_21EA4D4E8()
{
  v1 = v0;
  v2 = sub_21EAA8790();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_indicatorTypes;
  swift_beginAccess();
  v6 = *&v1[v5];
  v7 = MEMORY[0x277D84F90];
  *&v1[v5] = MEMORY[0x277D84F90];
  v8 = *&v1[OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_folder];
  if (v8)
  {
    v35 = 0;
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = &v35;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_21EA4E844;
    *(v10 + 24) = v9;
    aBlock[4] = sub_21EA4E84C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21EA4D078;
    aBlock[3] = &block_descriptor_36;
    v11 = _Block_copy(aBlock);
    v12 = v8;
    v13 = v1;

    [v12 enumerateListsWithOptions:6 usingBlock:v11];

    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
      return result;
    }

    v7 = *&v1[v5];
    v15 = sub_21EA4E844;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_21EA4E45C(v7, v6);

  if ((v16 & 1) == 0)
  {
    sub_21EAA8750();
    v17 = v1;
    v18 = sub_21EAA8760();
    v19 = sub_21EAA8FC0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v31 = v2;
      v23 = v22;
      aBlock[0] = v22;
      *v21 = 136315138;

      v25 = MEMORY[0x223D66C90](v24, &type metadata for PageIndicatorType);
      v26 = v15;
      v28 = v27;

      v29 = sub_21E9FE748(v25, v28, aBlock);
      v15 = v26;

      *(v21 + 4) = v29;
      _os_log_impl(&dword_21E9F5000, v18, v19, "Page indicator types: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x223D68580](v23, -1, -1);
      MEMORY[0x223D68580](v21, -1, -1);

      (*(v33 + 8))(v32, v31);
    }

    else
    {

      (*(v33 + 8))(v4, v2);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_21EA8B85C();
      swift_unknownObjectRelease();
    }
  }

  return sub_21E9FFAF0(v15);
}

uint64_t sub_21EA4D8C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = sub_21EA4D9C8(a1);
  if (v7 == 5)
  {
    if (*a5)
    {
      v7 = 5;
    }

    else
    {
      *a5 = 1;
      v7 = 4;
    }
  }

  v8 = OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_indicatorTypes;
  swift_beginAccess();
  v9 = *(a4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_21EA48164(0, *(v9 + 2) + 1, 1, v9);
    *(a4 + v8) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_21EA48164((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v9[v12 + 32] = v7;
  *(a4 + v8) = v9;
  return swift_endAccess();
}

uint64_t sub_21EA4D9C8(void *a1)
{
  v2 = v1;
  v4 = [a1 uniqueIdentifier];
  v5 = sub_21EAA8E00();
  v7 = v6;

  v8 = OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_indicatorTypesByListIdentifier;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_21EA49DF4(v5, v7);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v13 = sub_21EA4E694(a1);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + v8);
    *(v2 + v8) = 0x8000000000000000;
    sub_21EA65924(v13, v5, v7, isUniquelyReferenced_nonNull_native);

    *(v2 + v8) = v16;
    swift_endAccess();
    return v13;
  }

  v12 = v10;

  v13 = *(*(v9 + 56) + v12);

  return v13;
}

void sub_21EA4DB08(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -2;
    return;
  }

  v5 = v4;
  v6 = a1;
  if (![v5 activeDataSource])
  {

LABEL_10:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
    return;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 moduleIdentifier];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v16 = v15;
  v9 = [v15 containerBundleIdentifier];
  if (!v9)
  {
    v8 = [v16 extensionBundleIdentifier];
    goto LABEL_5;
  }

LABEL_6:
  v10 = v9;
  v11 = sub_21EAA8E00();
  v13 = v12;

  v14 = sub_21EA962D8(v11, v13);
  swift_unknownObjectRelease();

  if (v14 == 4)
  {
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = 1;
  }

  else
  {

    *a2 = v14;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

uint64_t sub_21EA4DCA8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a1 iconGridSizeClassSizes];
  v35 = sub_21EA50F6C(MEMORY[0x277D84F90]);
  v34 = 0;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v7[5] = &v35;
  v7[6] = &v34;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21EA4E7E8;
  *(v8 + 24) = v7;
  v33[4] = sub_21EA4E7F8;
  v33[5] = v8;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 1107296256;
  v33[2] = sub_21EA4D078;
  v33[3] = &block_descriptor_1;
  v9 = _Block_copy(v33);

  v10 = v6;

  [v5 enumerateIconsUsingBlock_];
  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (v34)
  {
    v12 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCB98);
    result = sub_21EAA94C0();
    v15 = result;
    v16 = 0;
    v17 = 1 << *(v12 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_12:
        v25 = v22 | (v16 << 6);
        v26 = *(v12 + 48) + 24 * v25;
        result = *v26;
        v27 = *(v26 + 8);
        v28 = *(v26 + 16);
        LODWORD(v13) = *(*(v12 + 56) + 4 * v25);
        LODWORD(v14) = v34;
        *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v29 = v15[6] + 24 * v25;
        *v29 = result;
        *(v29 + 8) = v27;
        *(v29 + 16) = v28;
        *(v15[7] + 8 * v25) = v13 / v14;
        v30 = v15[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          break;
        }

        v15[2] = v32;
        result = sub_21EA4E7C8(result, v27, v28);
        if (!v19)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v23 = v16;
      while (1)
      {
        v16 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v16 >= v20)
        {
          goto LABEL_16;
        }

        v24 = *(v12 + 64 + 8 * v16);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v19 = (v24 - 1) & v24;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  v15 = sub_21EA5108C(MEMORY[0x277D84F90]);
LABEL_16:

  return v15;
}

id sub_21EA4DFE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderPageIndicatorProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21EA4E0A8()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_21EAA95B0();
  if (v2)
  {
    MEMORY[0x223D67380](1);
    sub_21EAA8E40();
  }

  else
  {
    MEMORY[0x223D67380](0);
    MEMORY[0x223D67380](v1);
  }

  return sub_21EAA95D0();
}

uint64_t sub_21EA4E12C()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x223D67380](1);

    return sub_21EAA8E40();
  }

  else
  {
    MEMORY[0x223D67380](0);
    return MEMORY[0x223D67380](v1);
  }
}

uint64_t sub_21EA4E1B0()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_21EAA95B0();
  if (v2)
  {
    MEMORY[0x223D67380](1);
    sub_21EAA8E40();
  }

  else
  {
    MEMORY[0x223D67380](0);
    MEMORY[0x223D67380](v1);
  }

  return sub_21EAA95D0();
}

uint64_t sub_21EA4E230(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    if (a2[2])
    {
      v5 = a1[1];
      if (v3 == v4 && v5 == a2[1])
      {
        return 1;
      }

      else
      {
        return sub_21EAA9530();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (a2[2] & 1) == 0 && v4 == v3;
  }
}

unint64_t sub_21EA4E294(void *a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, void *), uint64_t a5, void *a6, uint64_t *a7, _DWORD *a8)
{
  result = [a1 isPlaceholder];
  if ((result & 1) == 0)
  {
    result = a4(&v26, a1);
    v14 = v28;
    if (v28 != 254)
    {
      v15 = v26;
      v16 = v27;
      sub_21EA4E800(v26, v27, v28);
      v17 = [a1 gridSizeClass];
      v18 = [a6 gridSizeAreaForGridSizeClass_];
      if (v14 == 255)
      {

        result = sub_21EA4E818(v15, v16, 255);
      }

      else
      {
        v19 = *a7;
        v20 = *(*a7 + 16);
        result = sub_21EA4E800(v15, v16, v14);
        if (v20 && (result = sub_21EA49FAC(v15, v16, v14 & 1), (v21 & 1) != 0))
        {
          v22 = *(*(v19 + 56) + 4 * result);
        }

        else
        {
          v22 = 0;
        }

        v23 = v22 + v18;
        if (__CFADD__(v22, v18))
        {
          goto LABEL_15;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *a7;
        *a7 = 0x8000000000000000;
        sub_21EA657A4(v23, v15, v16, v14 & 1, isUniquelyReferenced_nonNull_native);

        sub_21EA4E818(v15, v16, v14);
        sub_21EA4E818(v15, v16, v14);
        sub_21EA4E82C(v15, v16, v14);
        *a7 = v25;
      }

      if (!__CFADD__(*a8, v18))
      {
        *a8 += v18;
        return result;
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21EA4E45C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 6)
      {
        if (v7 != 6)
        {
          return 0;
        }
      }

      else if (v5 == 5)
      {
        if (v7 != 5)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if ((v7 - 7) > 0xFFFFFFFC || v5 != v7)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t sub_21EA4E4F8(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_21EA4D0DC();
  }

  result = sub_21EAA9380();
  v4 = result;
  if (!result)
  {
    return sub_21EA4D0DC();
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_indicatorTypesByListIdentifier;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D67210](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 uniqueIdentifier];
      v10 = sub_21EAA8E00();
      v12 = v11;

      swift_beginAccess();
      v13 = sub_21EA49DF4(v10, v12);
      LOBYTE(v9) = v14;

      if (v9)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *(v2 + v6);
        v17 = v16;
        *(v2 + v6) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_21EA64C28();
        }

        sub_21EA64550(v13, v16);
        *(v2 + v6) = v16;
      }

      ++v5;
      swift_endAccess();
      [v8 removeListObserver_];
    }

    while (v4 != v5);
    return sub_21EA4D0DC();
  }

  __break(1u);
  return result;
}

uint64_t sub_21EA4E694(void *a1)
{
  result = sub_21EA4DCA8(a1, sub_21EA4DB08, 0);
  if (*(result + 16))
  {
    v2 = 0;
    v3 = 1 << *(result + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(result + 64);
    v6 = (v3 + 63) >> 6;
    while (v5)
    {
      v7 = v2;
LABEL_11:
      v8 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v9 = v8 | (v7 << 6);
      if (*(*(result + 56) + 8 * v9) > 0.5)
      {
        v10 = *(result + 48) + 24 * v9;
        v11 = *v10;
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        sub_21EA4E7C8(*v10, v12, v13);

        if (v13)
        {
          sub_21EA4E7D8(v11, v12, 1);
          return 5;
        }

        return v11;
      }
    }

    while (1)
    {
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v7 >= v6)
      {

        return 5;
      }

      v5 = *(result + 64 + 8 * v7);
      ++v2;
      if (v5)
      {
        v2 = v7;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    return 6;
  }

  return result;
}

uint64_t sub_21EA4E7C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21EA4E7D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21EA4E800(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21EA4E7C8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21EA4E818(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != 254)
  {
    return sub_21EA4E82C(result, a2, a3);
  }

  return result;
}

uint64_t sub_21EA4E82C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21EA4E7D8(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_21EA4E894()
{
  result = qword_27CEDCBA0;
  if (!qword_27CEDCBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEDCBA0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21EA4E900(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21EA4E948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_21EA4E9AC()
{
  result = qword_28125B9F8;
  if (!qword_28125B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125B9F8);
  }

  return result;
}

uint64_t sub_21EA4EA28()
{
  v0 = sub_21EAA8790();
  __swift_allocate_value_buffer(v0, qword_27CEDF0C8);
  __swift_project_value_buffer(v0, qword_27CEDF0C8);
  result = *MEMORY[0x277CFC900];
  if (*MEMORY[0x277CFC900])
  {
    sub_21EAA8E60();
    return sub_21EAA8770();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA4EB0C()
{
  v1 = OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection;
  v2 = *(v0 + OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection);
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v5 = sub_21EAA8DC0();
    v6 = [v4 initWithMachServiceName:v5 options:0];

    v7 = sub_21EAA86A0();
    [v6 setRemoteObjectInterface_];

    v8 = sub_21EAA8690();
    [v6 setExportedInterface_];

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = sub_21EA5221C;
    v21 = v9;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_21EA87FF0;
    v19 = &block_descriptor_72;
    v10 = _Block_copy(&v16);

    [v6 setInterruptionHandler_];
    _Block_release(v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = sub_21EA52224;
    v21 = v11;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_21EA87FF0;
    v19 = &block_descriptor_76;
    v12 = _Block_copy(&v16);

    [v6 setInvalidationHandler_];
    _Block_release(v12);
    [v6 setExportedObject_];
    [v6 resume];
    v13 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void sub_21EA4ED84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection);

    [v2 invalidate];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection];
    *&v3[OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection] = 0;
  }
}

void sub_21EA4EE38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection];
    *&Strong[OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection] = 0;
  }
}

id sub_21EA4EE98()
{
  [*&v0[OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CCUIGamePolicyProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21EA4EF5C()
{
  sub_21EAA95B0();
  MEMORY[0x223D67380](0);
  return sub_21EAA95D0();
}

uint64_t sub_21EA4EFA0()
{
  sub_21EAA95B0();
  MEMORY[0x223D67380](0);
  return sub_21EAA95D0();
}

uint64_t sub_21EA4F028()
{
  v1 = *v0;
  sub_21EAA95B0();
  MEMORY[0x223D67380](v1);
  return sub_21EAA95D0();
}

uint64_t sub_21EA4F09C()
{
  v1 = *v0;
  sub_21EAA95B0();
  MEMORY[0x223D67380](v1);
  return sub_21EAA95D0();
}

unint64_t sub_21EA4F0E0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21EA51800(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21EA4F1EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_activityData;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21EA4F244(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_activityData;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_21EA4F30C()
{
  v1 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21EA4F3A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21EA4F49C()
{
  v1 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeAAA;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21EA4F534(char a1)
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeAAA;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CCUIGameModeActivityDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CCUIGameModeActivityDataProvider.init()()
{
  v1 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_bundleIdentifierState;
  *&v0[v1] = sub_21EA511B0(MEMORY[0x277D84F90]);
  *&v0[OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_consoleModeDidChangeNotificationToken] = 0;
  *&v0[OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_activeGamesDidChangeNotificationToken] = 0;
  v2 = [objc_opt_self() weakObjectsHashTable];
  *&v0[OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_observers] = v2;
  *&v0[OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_activityData] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeState] = 1;
  v0[OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeAAA] = 0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for CCUIGameModeActivityDataProvider();
  v3 = objc_msgSendSuper2(&v21, sel_init);
  v18 = &type metadata for GamePolicyFF;
  v19 = sub_21EA51834();
  v4 = sub_21EAA86B0();
  __swift_destroy_boxed_opaque_existential_1(&v15);
  if (v4)
  {
    sub_21E9F8880(0, &qword_28125B7F0);
    v5 = sub_21EAA90C0();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = sub_21EA523A8;
    v20 = v6;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_21EA4F918;
    v18 = &block_descriptor_2;
    v7 = _Block_copy(&v15);
    v8 = v3;

    v9 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_consoleModeDidChangeNotificationToken;
    swift_beginAccess();
    notify_register_dispatch("com.apple.system.console_mode_available_changed", &v8[v9], v5, v7);
    swift_endAccess();
    _Block_release(v7);

    v10 = sub_21EAA90C0();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v19 = sub_21EA51888;
    v20 = v11;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_21EA4F918;
    v18 = &block_descriptor_4;
    v12 = _Block_copy(&v15);

    v13 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_activeGamesDidChangeNotificationToken;
    swift_beginAccess();
    notify_register_dispatch("com.apple.system.active_games_changed", &v8[v13], v10, v12);
    swift_endAccess();
    _Block_release(v12);
  }

  return v3;
}