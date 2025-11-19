uint64_t sub_2442AFF68(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v40 = a4;
  v41 = a5;
  v8 = sub_2442B47D8();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2442B4808();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 extensionIdentity];
  v16 = [a1 kind];
  if (!v16)
  {
    sub_2442B48A8();
    v16 = sub_2442B4878();
  }

  v17 = [a1 defaultIntentReference];
  v18 = [objc_allocWithZone(MEMORY[0x277CFA228]) initWithExtensionIdentity:v15 kind:v16 intentReference:v17];

  v19 = v18;
  sub_2442B48B8();
  v20 = [a2 uniqueIdentifier];
  sub_2442B48A8();

  v21 = objc_allocWithZone(MEMORY[0x277CFA230]);
  v22 = sub_2442B4878();

  v23 = sub_2442B4878();

  v24 = [v21 initWithControl:v19 contentType:1 hostIdentifier:v22 configurationIdentifier:v23];

  sub_2442A34F8(0, &qword_27EDDDB10, 0x277D85C78);
  v25 = sub_2442B4A18();
  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = v24;
  v28 = v40;
  v27 = v41;
  v26[4] = a3;
  v26[5] = v28;
  v26[6] = v27;
  aBlock[4] = sub_2442B4468;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2442B46CC;
  aBlock[3] = &block_descriptor_45;
  v29 = _Block_copy(aBlock);
  v30 = a2;
  v31 = v24;
  v32 = a3;
  v33 = v28;
  v34 = v27;

  sub_2442B47E8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2442B43B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB00, &unk_2442B79C8);
  sub_2442B4680(&qword_27EDDDB08, &qword_27EDDDB00, &unk_2442B79C8);
  v35 = v39;
  v36 = v45;
  sub_2442B4B18();
  MEMORY[0x245D5DE60](0, v14, v35, v29);
  _Block_release(v29);

  (*(v44 + 8))(v35, v36);
  return (*(v42 + 8))(v14, v43);
}

void sub_2442B03B8(void *a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v8 = [objc_opt_self() instanceOfType:objc_msgSend(a1 instanceIdentity:{sel_controlType), a2}];
  v9 = [objc_allocWithZone(MEMORY[0x277CFC970]) initWithControlInstance_];
  v10 = [a3 gridSizeClass];
  v11 = CCUIGridSizeClassForSBHIconGridSizeClass(v10, 1);

  [v9 setGridSizeClass_];
  v12 = sub_2442AF5C4();
  [v9 setContentMetrics_];

  [v9 setDelegate_];
  v13 = *&a5[OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_controlHostViewController];
  *&a5[OBJC_IVAR____TtC23ControlCenterUIServices30ControlContainerViewController_controlHostViewController] = v9;
  v14 = v9;

  v28 = v14;
  [a5 bs:v28 addChildViewController:?];
  v15 = [v28 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = v15;
  v17 = [a5 view];
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame_];
  v27 = [v28 view];

  if (!v27)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v27 setAutoresizingMask_];
}

uint64_t sub_2442B060C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_2442B06B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      v7 = [v6 customItemsDelegate];
      if (v7)
      {
        [v7 controlsGalleryViewController:v6 didFinishWithWidgetIcon:a3];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_2442B07CC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a1 identity];
    v6 = [a1 type];
    [a1 gridSizeClass];
    v7 = [objc_allocWithZone(CCUISConfiguredControl) initWithIdentity:v5 type:v6 size:sub_2442B49C8()];

    v8 = *(v1 + OBJC_IVAR____TtC23ControlCenterUIServices22ControlsGalleryManager_extensionProvider);
    v9 = [v7 identity];
    v10 = [v8 controlDescriptorForControl_];

    if (v10)
    {
      v11 = v7;
      v12 = [objc_allocWithZone(CCUISControlsGalleryResult) initWithControl:v11 promptsForUserConfiguration:{objc_msgSend(v10, sel_promptsForUserConfiguration)}];

      v13 = v12;
      v14 = [v4 delegate];
      if (v14)
      {
        [v14 controlsGalleryViewController:v4 didFinishWithResult:v13 error:0];
        swift_unknownObjectRelease();
      }

      else
      {
        [v4 dismissViewControllerAnimated:1 completion:0];
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDAD8, &qword_2442B79B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2442B6DC0;
      v16 = *MEMORY[0x277CCA068];
      *(inited + 32) = sub_2442B48A8();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v17;
      *(inited + 48) = 0xD000000000000014;
      *(inited + 56) = 0x80000002442BB750;
      sub_2442B3BC8(inited);
      swift_setDeallocating();
      sub_2442B45B8(inited + 32, &qword_27EDDDAE0, &qword_2442B79B8);
      v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      if (qword_27EDDCF40 != -1)
      {
        swift_once();
      }

      v19 = qword_27EDDE800;
      v20 = sub_2442B4818();

      v21 = [v18 initWithDomain:v19 code:1001 userInfo:v20];

      v22 = [v4 delegate];
      if (v22)
      {
        v23 = v22;
        v24 = sub_2442B46F8();
        [v23 controlsGalleryViewController:v4 didFinishWithResult:0 error:v24];
        swift_unknownObjectRelease();
      }

      else
      {
        [v4 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  return 0;
}

unint64_t sub_2442B0D60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2442B4C88();
  sub_2442B48C8();
  v6 = sub_2442B4CA8();

  return sub_2442B0E6C(a1, a2, v6);
}

unint64_t sub_2442B0DDC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2442B48A8();
  sub_2442B4C88();
  sub_2442B48C8();
  v4 = sub_2442B4CA8();

  return sub_2442B0F24(a1, v4);
}

unint64_t sub_2442B0E6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2442B4C68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2442B0F24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2442B48A8();
      v9 = v8;
      if (v7 == sub_2442B48A8() && v9 == v10)
      {
        break;
      }

      v12 = sub_2442B4C68();

      if ((v12 & 1) == 0)
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

char *sub_2442B1028(char *a1, int64_t a2, char a3)
{
  result = sub_2442B1048(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2442B1048(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD088, &qword_2442B7A00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2442B1168(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2442B4BF8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2442B4B78();
  *v1 = result;
  return result;
}

uint64_t sub_2442B1208(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2442B4C48();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2442A34F8(0, &qword_27EDDDAD0, 0x277D66130);
        v6 = sub_2442B4978();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2442B14B4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2442B131C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2442B131C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_5:
    v20 = a3;
    v6 = *(v21 + 8 * a3);
    v18 = v5;
    v19 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 displayName];
      if (v10)
      {
        v11 = v10;
        sub_2442B48A8();
      }

      v12 = [v9 displayName];
      if (v12)
      {
        v13 = v12;
        sub_2442B48A8();
      }

      sub_2442A3370();
      v14 = sub_2442B4AD8();

      if (v14 != -1)
      {
LABEL_4:
        a3 = v20 + 1;
        v4 = v19 + 8;
        v5 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      v15 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v15;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2442B14B4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_105:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_139:
      v10 = sub_2442B2124(v10);
    }

    v126 = v10;
    v104 = *(v10 + 2);
    if (v104 >= 2)
    {
      while (*v7)
      {
        v105 = v10;
        v10 = (v104 - 1);
        v106 = *&v105[16 * v104];
        v107 = *&v105[16 * v104 + 24];
        sub_2442B1C70((*v7 + 8 * v106), (*v7 + 8 * *&v105[16 * v104 + 16]), (*v7 + 8 * v107), v5);
        if (v6)
        {
          goto LABEL_115;
        }

        if (v107 < v106)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_2442B2124(v105);
        }

        if (v104 - 2 >= *(v105 + 2))
        {
          goto LABEL_133;
        }

        v108 = &v105[16 * v104];
        *v108 = v106;
        *(v108 + 1) = v107;
        v126 = v105;
        sub_2442B2098(v104 - 1);
        v10 = v126;
        v104 = *(v126 + 2);
        if (v104 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_143;
    }

LABEL_115:

    return;
  }

  v109 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v113 = v9;
    if (v9 + 1 >= v8)
    {
      v30 = v9 + 1;
    }

    else
    {
      v11 = *v7;
      v124 = *(v11 + 8 * (v9 + 1));
      v5 = v9;
      v120 = v8;
      v122 = *(v11 + 8 * v9);
      v12 = v122;
      v13 = v124;
      v14 = v12;
      v118 = sub_2442ACCE4(&v124, &v122);
      if (v6)
      {

        return;
      }

      v15 = (v5 + 2);
      v6 = 8 * v5;
      v16 = (v11 + 8 * v5 + 16);
      v116 = v10;
      do
      {
        if (v120 == v15)
        {
          v30 = v120;
          goto LABEL_17;
        }

        v22 = *(v16 - 1);
        v23 = *v16;
        v24 = v22;
        v25 = [v23 displayName];
        if (v25)
        {
          v26 = v25;
          v27 = sub_2442B48A8();
          v5 = v28;
        }

        else
        {
          v27 = 0;
          v5 = 0xE000000000000000;
        }

        v124 = v27;
        v125 = v5;
        v29 = [v24 displayName];
        if (v29)
        {
          v17 = v29;
          v18 = sub_2442B48A8();
          v20 = v19;
        }

        else
        {
          v18 = 0;
          v20 = 0xE000000000000000;
        }

        v122 = v18;
        v123 = v20;
        sub_2442A3370();
        v21 = sub_2442B4AD8();

        ++v15;
        ++v16;
        v10 = v116;
      }

      while (((v118 ^ (v21 != -1)) & 1) != 0);
      v30 = (v15 - 1);
LABEL_17:
      v7 = a3;
      v9 = v113;
      if (v118)
      {
        if (v30 < v113)
        {
          goto LABEL_138;
        }

        if (v113 < v30)
        {
          v31 = 8 * v30 - 8;
          v32 = v30;
          v33 = v113;
          do
          {
            if (v33 != --v32)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              v35 = *(v34 + v6);
              *(v34 + v6) = *(v34 + v31);
              *(v34 + v31) = v35;
            }

            ++v33;
            v31 -= 8;
            v6 += 8;
          }

          while (v33 < v32);
        }
      }

      v6 = 0;
    }

    v36 = v7[1];
    if (v30 < v36)
    {
      if (__OFSUB__(v30, v9))
      {
        goto LABEL_135;
      }

      if (v30 - v9 < v109)
      {
        if (__OFADD__(v9, v109))
        {
          goto LABEL_136;
        }

        if (v9 + v109 >= v36)
        {
          v5 = v7[1];
        }

        else
        {
          v5 = v9 + v109;
        }

        if (v5 < v9)
        {
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v30 != v5)
        {
          break;
        }
      }
    }

    v5 = v30;
    if (v30 < v9)
    {
      goto LABEL_134;
    }

LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2442A8A58(0, *(v10 + 2) + 1, 1, v10);
    }

    v38 = *(v10 + 2);
    v37 = *(v10 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v10 = sub_2442A8A58((v37 > 1), v38 + 1, 1, v10);
    }

    *(v10 + 2) = v39;
    v40 = &v10[16 * v38];
    *(v40 + 4) = v113;
    *(v40 + 5) = v5;
    v41 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v10 + 4);
          v44 = *(v10 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_55:
          if (v46)
          {
            goto LABEL_123;
          }

          v59 = &v10[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_126;
          }

          v65 = &v10[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_130;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v69 = &v10[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_69:
        if (v64)
        {
          goto LABEL_125;
        }

        v72 = &v10[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_128;
        }

        if (v75 < v63)
        {
          goto LABEL_85;
        }

LABEL_76:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v7)
        {
          goto LABEL_141;
        }

        v81 = *&v10[16 * v80 + 32];
        v82 = *&v10[16 * v42 + 40];
        sub_2442B1C70((*v7 + 8 * v81), (*v7 + 8 * *&v10[16 * v42 + 32]), (*v7 + 8 * v82), v41);
        if (v6)
        {
          goto LABEL_115;
        }

        if (v82 < v81)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2442B2124(v10);
        }

        if (v80 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v83 = &v10[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        v126 = v10;
        sub_2442B2098(v42);
        v10 = v126;
        v39 = *(v126 + 2);
        v9 = v5;
        if (v39 <= 1)
        {
          goto LABEL_86;
        }
      }

      v47 = &v10[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_121;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_122;
      }

      v54 = &v10[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_124;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_127;
      }

      if (v58 >= v50)
      {
        v76 = &v10[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_131;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_85:
    v9 = v5;
LABEL_86:
    v8 = v7[1];
    if (v9 >= v8)
    {
      goto LABEL_105;
    }
  }

  v117 = v10;
  v111 = v6;
  v84 = *v7;
  v85 = *v7 + 8 * v30 - 8;
  v86 = v9 - v30;
  v114 = v5;
LABEL_90:
  v119 = v85;
  v121 = v30;
  v87 = *(v84 + 8 * v30);
  v115 = v86;
  while (1)
  {
    v88 = *v85;
    v89 = v87;
    v90 = v88;
    v91 = [v89 displayName];
    if (v91)
    {
      v92 = v91;
      v93 = sub_2442B48A8();
      v95 = v94;
    }

    else
    {
      v93 = 0;
      v95 = 0xE000000000000000;
    }

    v124 = v93;
    v125 = v95;
    v96 = [v90 displayName];
    if (v96)
    {
      v97 = v96;
      v98 = sub_2442B48A8();
      v100 = v99;
    }

    else
    {
      v98 = 0;
      v100 = 0xE000000000000000;
    }

    v122 = v98;
    v123 = v100;
    sub_2442A3370();
    v101 = sub_2442B4AD8();

    if (v101 != -1)
    {
LABEL_89:
      v30 = v121 + 1;
      v85 = v119 + 8;
      v5 = v114;
      v86 = v115 - 1;
      if ((v121 + 1) != v114)
      {
        goto LABEL_90;
      }

      v7 = a3;
      v6 = v111;
      v10 = v117;
      if (v114 < v113)
      {
        goto LABEL_134;
      }

      goto LABEL_36;
    }

    if (!v84)
    {
      break;
    }

    v102 = *v85;
    v87 = *(v85 + 8);
    *v85 = v87;
    *(v85 + 8) = v102;
    v85 -= 8;
    if (__CFADD__(v86++, 1))
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_2442B1C70(void **__src, id *a2, id *a3, void **__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = __dst;
    if (__dst != a2 || &a2[v12] <= __dst)
    {
      memmove(__dst, a2, 8 * v12);
      v5 = a2;
    }

    v46 = &v15[v12];
    if (v10 < 8 || v5 <= v6)
    {
      v40 = v5;
    }

    else
    {
      __srca = v15;
      do
      {
        v45 = v5;
        v28 = v5 - 1;
        --v4;
        v29 = v46;
        v42 = v28;
        while (1)
        {
          v30 = *--v29;
          v31 = *v28;
          v32 = v30;
          v33 = v31;
          v34 = [v32 displayName];
          if (v34)
          {
            v35 = v34;
            sub_2442B48A8();
          }

          v36 = [v33 displayName];
          if (v36)
          {
            v37 = v36;
            sub_2442B48A8();
          }

          sub_2442A3370();
          v38 = sub_2442B4AD8();

          v39 = (v4 + 1);
          if (v38 == -1)
          {
            break;
          }

          if (v39 != v46)
          {
            *v4 = *v29;
          }

          --v4;
          v46 = v29;
          v28 = v42;
          if (v29 <= __srca)
          {
            v46 = v29;
            v15 = __srca;
            v40 = v45;
            goto LABEL_47;
          }
        }

        v40 = v42;
        if (v39 != v45)
        {
          *v4 = *v42;
        }

        v15 = __srca;
        if (v46 <= __srca)
        {
          break;
        }

        v5 = v42;
      }

      while (v42 > v6);
    }
  }

  else
  {
    if (__dst != __src || &__src[v9] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
      __dst = v13;
    }

    v46 = &__dst[v9];
    v15 = __dst;
    if (v7 >= 8 && v5 < v4)
    {
      v16 = 0x278E10000uLL;
      while (1)
      {
        v44 = v5;
        v17 = *v15;
        v18 = *v5;
        v19 = v17;
        v20 = [v18 *(v16 + 3456)];
        if (v20)
        {
          v21 = v20;
          sub_2442B48A8();
        }

        v22 = [v19 *(v16 + 3456)];
        if (v22)
        {
          v23 = v22;
          sub_2442B48A8();
        }

        sub_2442A3370();
        v24 = sub_2442B4AD8();

        if (v24 != -1)
        {
          break;
        }

        v25 = v44;
        v5 = v44 + 1;
        v16 = 0x278E10000;
        if (v6 != v44)
        {
          goto LABEL_18;
        }

LABEL_19:
        ++v6;
        if (v15 >= v46 || v5 >= v4)
        {
          goto LABEL_44;
        }
      }

      v25 = v15;
      v26 = v6 == v15++;
      v5 = v44;
      v16 = 0x278E10000;
      if (v26)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v6 = *v25;
      goto LABEL_19;
    }

LABEL_44:
    v40 = v6;
  }

LABEL_47:
  if (v40 != v15 || v40 >= (v15 + ((v46 - v15 + (v46 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v40, v15, 8 * ((v46 - v15) / 8));
  }

  return 1;
}

uint64_t sub_2442B2098(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2442B2124(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2442B2138(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2442B4BF8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2442B4B78();
}

uint64_t sub_2442B21B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2442B4BF8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2442B4BF8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2442B4680(&qword_27EDDDBD0, &qword_27EDDDBA8, &qword_2442B7A48);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDBA8, &qword_2442B7A48);
            v9 = sub_2442B2514(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2442B2360(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2442B4BF8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2442B4BF8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2442B4680(&unk_27EDDDBF0, &qword_27EDDDBE8, &qword_2442B7A70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDBE8, &qword_2442B7A70);
            v9 = sub_2442B259C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2442A34F8(0, &qword_27EDDDAD0, 0x277D66130);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2442B2514(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x245D5DFA0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_2442B2594;
  }

  __break(1u);
  return result;
}

void (*sub_2442B259C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D5DFA0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2442B261C;
  }

  __break(1u);
  return result;
}

uint64_t sub_2442B2624(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    v3 = *(a2 + 16);
    v2 = *(a2 + 24);
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v5 = result;
    swift_unknownObjectRetain();
    v6 = [v5 moduleIdentifier];
    v7 = sub_2442B48A8();
    v9 = v8;

    if (v2)
    {
      if (v3 != v7 || v2 != v9)
      {
LABEL_8:
        v11 = sub_2442B4C68();

        swift_unknownObjectRelease();
        return (v11 & 1) != 0;
      }

LABEL_34:

      swift_unknownObjectRelease();
      return 1;
    }

    goto LABEL_36;
  }

  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v15 = *(a2 + 48);
  v14 = *(a2 + 56);
  v16 = *(a2 + 64);
  v17 = *(a2 + 72);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v18 = result;
  v35 = v16;
  swift_unknownObjectRetain();
  v19 = [v18 extensionBundleIdentifier];
  v20 = sub_2442B48A8();
  v22 = v21;

  if (!v12)
  {
    goto LABEL_36;
  }

  if (v13 == v20 && v12 == v22)
  {
  }

  else
  {
    v24 = sub_2442B4C68();

    if ((v24 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v25 = [v18 containerBundleIdentifier];
  if (!v25)
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_37;
  }

  v26 = v25;
  v27 = sub_2442B48A8();
  v29 = v28;

  if (!v14)
  {
    if (!v29)
    {
      goto LABEL_31;
    }

LABEL_36:

    goto LABEL_37;
  }

  if (v29)
  {
    if (v15 == v27 && v14 == v29)
    {

      goto LABEL_31;
    }

    v30 = sub_2442B4C68();

    if (v30)
    {
LABEL_31:
      v31 = [v18 kind];
      v32 = sub_2442B48A8();
      v34 = v33;

      if (v17)
      {
        if (v35 != v32 || v17 != v34)
        {
          goto LABEL_8;
        }

        goto LABEL_34;
      }

      goto LABEL_36;
    }
  }

LABEL_37:
  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_2442B28CC(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v57 = MEMORY[0x277D84F90];
  v3 = *(a2 + 48);
  v4 = v3[2];
  if (v4)
  {
    if (v2 >> 62)
    {
      goto LABEL_63;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2442B4BF8())
    {
      v45 = v3 + 4;
      v6 = v2 & 0xC000000000000001;

      v7 = 0;
      v51 = MEMORY[0x277D84F90];
      v46 = v4;
      while (1)
      {
        if (v7 == v4)
        {
          __break(1u);
          goto LABEL_62;
        }

        if (i)
        {
          break;
        }

LABEL_9:
        if (++v7 == v4)
        {
          goto LABEL_60;
        }
      }

      if (i >= 1)
      {
        v47 = v7;
        v8 = &v45[10 * v7];
        v9 = *v8;
        v10 = v8[3];
        v3 = v8[5];
        v52 = v8[4];
        v53 = v8[2];
        v11 = v8[7];
        v12 = v8[9];
        v48 = v8[6];
        v49 = v8[8];

        v56 = v3;

        v54 = v11;

        v50 = v12;

        v13 = 0;
        v55 = v9;
        while (1)
        {
          if (v6)
          {
            MEMORY[0x245D5DFA0](v13, v2);
            if (v9)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v21 = *(v2 + 8 * v13 + 32);
            swift_unknownObjectRetain();
            if (v9)
            {
LABEL_18:
              objc_opt_self();
              v14 = swift_dynamicCastObjCClass();
              if (v14)
              {
                v15 = v14;
                swift_unknownObjectRetain();
                v16 = [v15 moduleIdentifier];
                v17 = sub_2442B48A8();
                v3 = v18;

                if (!v10)
                {
                  goto LABEL_56;
                }

                if (v53 == v17 && v10 == v3)
                {
LABEL_52:

                  swift_unknownObjectRelease();
LABEL_53:
                  v42 = swift_unknownObjectRetain();
                  v3 = &v57;
                  MEMORY[0x245D5DD70](v42);
                  if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v43 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_2442B4968();
                  }

                  sub_2442B4988();
                  swift_unknownObjectRelease();
                  v51 = v57;
                  goto LABEL_15;
                }

LABEL_24:
                v20 = sub_2442B4C68();

                swift_unknownObjectRelease();
                if (v20)
                {
                  goto LABEL_53;
                }

                goto LABEL_14;
              }

              goto LABEL_14;
            }
          }

          objc_opt_self();
          v22 = swift_dynamicCastObjCClass();
          if (v22)
          {
            v3 = v22;
            v23 = i;
            v24 = v6;
            v25 = v2;
            v26 = v10;
            swift_unknownObjectRetain();
            v27 = [v3 extensionBundleIdentifier];
            v28 = sub_2442B48A8();
            v30 = v29;

            if (!v56)
            {

LABEL_36:
              swift_unknownObjectRelease_n();
              v10 = v26;
              v2 = v25;
              v6 = v24;
              i = v23;
              v9 = v55;
              goto LABEL_15;
            }

            if (v52 == v28 && v56 == v30)
            {
            }

            else
            {
              v32 = sub_2442B4C68();

              if ((v32 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            v33 = [v3 containerBundleIdentifier];
            if (v33)
            {
              v34 = v33;
              v35 = sub_2442B48A8();
              v37 = v36;

              if (v54)
              {
                v10 = v26;
                v2 = v25;
                v6 = v24;
                i = v23;
                v9 = v55;
                if (!v37)
                {
                  goto LABEL_57;
                }

                if (v48 == v35 && v54 == v37)
                {
                }

                else
                {
                  v38 = sub_2442B4C68();

                  if ((v38 & 1) == 0)
                  {
                    goto LABEL_57;
                  }
                }
              }

              else
              {
                v10 = v26;
                v2 = v25;
                v6 = v24;
                i = v23;
                v9 = v55;
                if (v37)
                {
                  goto LABEL_56;
                }
              }
            }

            else
            {
              v10 = v26;
              v2 = v25;
              v6 = v24;
              i = v23;
              v9 = v55;
              if (v54)
              {
                goto LABEL_57;
              }
            }

            v39 = [v3 kind];
            v40 = sub_2442B48A8();
            v3 = v41;

            if (!v50)
            {
LABEL_56:

LABEL_57:
              swift_unknownObjectRelease_n();
              goto LABEL_15;
            }

            if (v49 == v40 && v50 == v3)
            {
              goto LABEL_52;
            }

            goto LABEL_24;
          }

LABEL_14:
          swift_unknownObjectRelease();
LABEL_15:
          if (i == ++v13)
          {

            v4 = v46;
            v7 = v47;
            goto LABEL_9;
          }
        }
      }

LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }
  }

  v51 = MEMORY[0x277D84F90];
LABEL_60:

  return v51;
}

uint64_t sub_2442B2DC0(unint64_t a1, uint64_t a2)
{
  v33 = MEMORY[0x277D84F90];
  v2 = *(a2 + 16);
  if (v2)
  {
    if (a1 >> 62)
    {
      goto LABEL_31;
    }

    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v26)
    {
      v4 = 0;
      v29 = a2 + 32;
      v27 = MEMORY[0x277D84F90];
      v28 = v2;
      while (v4 != v2)
      {
        v5 = v29 + 88 * v4;
        v6 = *(v5 + 64);
        v34[3] = *(v5 + 48);
        v35 = v6;
        v7 = *(v5 + 32);
        v34[1] = *(v5 + 16);
        v34[2] = v7;
        v8 = *(v5 + 80);
        v36 = v8;
        v34[0] = *v5;
        v9 = *(&v35 + 1);
        sub_2442A005C(v34, v32);
        if (i)
        {
          v10 = 0;
          while (1)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x245D5DFA0](v10, a1);
            }

            else
            {
              if (v10 >= *(v30 + 16))
              {
                goto LABEL_29;
              }

              v11 = *(a1 + 8 * v10 + 32);
            }

            v12 = v11;
            v2 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            v13 = [v11 uniqueIdentifier];
            v14 = sub_2442B48A8();
            v16 = v15;

            if (v14 == v9 && v16 == v8)
            {
              break;
            }

            v18 = sub_2442B4C68();

            if (v18)
            {
              goto LABEL_23;
            }

            ++v10;
            if (v2 == i)
            {
              goto LABEL_5;
            }
          }

LABEL_23:
          v19 = [v12 widgetDescriptors];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDB78, &qword_2442B79D8);
          v20 = sub_2442B4958();

          sub_2442B28CC(v20, v34);

          v21 = v12;
          v22 = sub_2442B4948();
          [v21 setWidgetDescriptors_];

          MEMORY[0x245D5DD70]();
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v23 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2442B4968();
          }

          sub_2442B4988();
          sub_2442A0094(v34);

          v27 = v33;
        }

        else
        {
LABEL_5:
          sub_2442A0094(v34);
        }

        ++v4;
        v2 = v28;
        if (v4 == v28)
        {
          return v27;
        }
      }

LABEL_30:
      __break(1u);
LABEL_31:
      v30 = a1 & 0xFFFFFFFFFFFFFF8;
      v25 = a2;
      v26 = sub_2442B4BF8();
      a2 = v25;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2442B30B8(void *a1, uint64_t a2)
{
  if (*a2 != 1)
  {
    v14 = *(a2 + 32);
    v15 = *(a2 + 40);
    v16 = a1;
    v17 = [v16 extensionBundleIdentifier];
    v18 = sub_2442B48A8();
    v20 = v19;

    if (v15)
    {
      if (v14 == v18 && v15 == v20)
      {
      }

      else
      {
        v22 = sub_2442B4C68();

        if ((v22 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v23 = [v16 containerBundleIdentifier];
      if (!v23)
      {
        if (!*(a2 + 56))
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      }

      v24 = v23;
      v25 = sub_2442B48A8();
      v27 = v26;

      v28 = *(a2 + 56);
      if (v28)
      {
        if (v27)
        {
          if (*(a2 + 48) == v25 && v28 == v27)
          {

            goto LABEL_32;
          }

          v29 = sub_2442B4C68();

          if (v29)
          {
LABEL_32:
            v30 = *(a2 + 64);
            v6 = *(a2 + 72);
            v31 = [v16 kind];
            v32 = sub_2442B48A8();
            v34 = v33;

            if (v6)
            {
              if (v30 == v32 && v6 == v34)
              {
LABEL_35:

                LOBYTE(v6) = 1;
                goto LABEL_39;
              }

              LOBYTE(v6) = sub_2442B4C68();
            }

LABEL_38:

            goto LABEL_39;
          }
        }

LABEL_36:
        LOBYTE(v6) = 0;
        goto LABEL_39;
      }

      if (!v27)
      {
        goto LABEL_32;
      }
    }

    LOBYTE(v6) = 0;
LABEL_39:

    return v6 & 1;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    v8 = a1;
    v9 = [v5 moduleIdentifier];
    v10 = sub_2442B48A8();
    v12 = v11;

    if (v6)
    {
      if (v7 != v10 || v6 != v12)
      {
        LOBYTE(v6) = sub_2442B4C68();
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    goto LABEL_38;
  }

  LOBYTE(v6) = 0;
  return v6 & 1;
}

unint64_t sub_2442B333C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDD840, &qword_2442B78D8);
    v3 = sub_2442B4C28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2442B0D60(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2442B3440(unint64_t a1)
{
  v2 = sub_2442B333C(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_41:
    v3 = sub_2442B4BF8();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = a1 & 0xC000000000000001;
      v56 = a1 & 0xC000000000000001;
      v57 = a1 & 0xFFFFFFFFFFFFFF8;
      v6 = 0x278E10000uLL;
      v55 = a1;
      while (1)
      {
        if (v5)
        {
          v7 = MEMORY[0x245D5DFA0](v4, a1);
        }

        else
        {
          if (v4 >= *(v57 + 16))
          {
            goto LABEL_39;
          }

          v7 = *(a1 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        v10 = v3;
        v11 = [v7 *(v6 + 3536)];
        sub_2442B48A8();

        LOBYTE(v11) = sub_2442B48F8();

        if (v11)
        {
          break;
        }

LABEL_5:
        ++v4;
        v5 = v56;
        if (v9 == v3)
        {
          v31 = v2;
          v58 = MEMORY[0x277D84F90];

          v2 = 0;
          while (1)
          {
            if (v56)
            {
              v33 = MEMORY[0x245D5DFA0](v2, a1);
            }

            else
            {
              if (v2 >= *(v57 + 16))
              {
                goto LABEL_37;
              }

              v33 = *(a1 + 8 * v2 + 32);
            }

            v34 = v33;
            v35 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              break;
            }

            v36 = [v33 *(v6 + 3536)];
            sub_2442B48A8();

            LOBYTE(v36) = sub_2442B48F8();

            if (v36)
            {
            }

            else
            {
              sub_2442B4B88();
              v32 = *(v58 + 16);
              sub_2442B4BB8();
              sub_2442B4BC8();
              sub_2442B4B98();
            }

            ++v2;
            v6 = 0x278E10000uLL;
            if (v35 == v3)
            {
              v37 = v58;
              v2 = v31;
              goto LABEL_43;
            }
          }

LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      v12 = [v8 *(v6 + 3536)];
      v13 = v2;
      v2 = sub_2442B48A8();
      a1 = v14;

      v15 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_2442B0D60(v2, a1);
      v19 = v13[2];
      v20 = (v17 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_38;
      }

      v22 = v17;
      if (v13[3] < v21)
      {
        sub_2442A5E54(v21, isUniquelyReferenced_nonNull_native);
        v23 = sub_2442B0D60(v2, a1);
        if ((v22 & 1) != (v24 & 1))
        {
          result = sub_2442B4C78();
          __break(1u);
          return result;
        }

        v18 = v23;
        v3 = v10;
        if ((v22 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_19:

        v2 = v13;
        v25 = v13[7];
        v26 = *(v25 + 8 * v18);
        *(v25 + 8 * v18) = v15;

LABEL_23:
        a1 = v55;
        v6 = 0x278E10000;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v3 = v10;
        if (v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_2442A66EC();
        v3 = v10;
        if (v22)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      v13[(v18 >> 6) + 8] |= 1 << v18;
      v27 = (v13[6] + 16 * v18);
      *v27 = v2;
      v27[1] = a1;
      v2 = v13;
      *(v13[7] + 8 * v18) = v15;

      v28 = v13[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_40;
      }

      v13[2] = v30;
      goto LABEL_23;
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_43:

  if (*(v2 + 16))
  {
    v38 = sub_2442B0D60(0x4249535345434341, 0xED00005954494C49);
    if (v39)
    {
      v40 = *(*(v2 + 56) + 8 * v38);
      MEMORY[0x245D5DD70]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v51 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2442B4968();
      }

      sub_2442B4988();
    }

    if (*(v2 + 16))
    {
      v41 = sub_2442B0D60(0xD000000000000015, 0x80000002442B7FC0);
      if (v42)
      {
        v43 = *(*(v2 + 56) + 8 * v41);
        MEMORY[0x245D5DD70]();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v52 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2442B4968();
        }

        sub_2442B4988();
      }

      if (*(v2 + 16))
      {
        v44 = sub_2442B0D60(0xD000000000000013, 0x80000002442B7FE0);
        if (v45)
        {
          v46 = *(*(v2 + 56) + 8 * v44);
          MEMORY[0x245D5DD70]();
          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v53 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2442B4968();
          }

          sub_2442B4988();
        }

        if (*(v2 + 16))
        {
          v47 = sub_2442B0D60(0xD000000000000014, 0x80000002442B8000);
          if (v48)
          {
            v49 = *(*(v2 + 56) + 8 * v47);
            MEMORY[0x245D5DD70]();
            if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v54 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2442B4968();
            }

            sub_2442B4988();
          }
        }
      }
    }
  }

  swift_arrayDestroy();

  return v37;
}

unint64_t sub_2442B3AD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDDBD8, &unk_2442B7A60);
    v3 = sub_2442B4C28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_2442B0DDC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2442B3BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDDAE8, &qword_2442B79C0);
    v3 = sub_2442B4C28();
    v4 = a1 + 32;

    while (1)
    {
      sub_2442B4550(v4, &v13, &qword_27EDDDAE0, &qword_2442B79B8);
      v5 = v13;
      v6 = v14;
      result = sub_2442B0D60(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2442B4370(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2442B3CF8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      if (v3)
      {
        if (!swift_dynamicCastObjCProtocolConditional())
        {
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_2442B3DA4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result customItemsDelegate];
    if (v2)
    {
      v3 = [v2 customApplicationWidgetCollectionsForControlsGalleryViewController_];
      swift_unknownObjectRelease();
      sub_2442A34F8(0, &qword_27EDDDAD0, 0x277D66130);
      v4 = sub_2442B4958();

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_2442B3E60(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = *(Strong + OBJC_IVAR___CCUISControlsGalleryViewController_configuration);
  v7 = a1;
  v8 = v6;
  v9 = [v3 extensionIdentity];
  v10 = [v8 disallowedExtensionIdentities];
  if (v10)
  {
    v11 = v10;
    sub_2442B4A58();
    v12 = sub_2442B4958();

    if (v12 >> 62)
    {
      v13 = sub_2442B4BF8();
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_6:
        v31 = v7;
        if (v13 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v13; ++i)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x245D5DFA0](i, v12);
          }

          else
          {
            v15 = *(v12 + 8 * i + 32);
          }

          v16 = v15;
          v17 = [v9 isEqual_];
        }

        v7 = v31;
        if (v17)
        {

          return;
        }

        goto LABEL_16;
      }
    }
  }

LABEL_16:
  v18 = [v3 kind];
  if (!v18)
  {
    sub_2442B48A8();
    v18 = sub_2442B4878();
  }

  v19 = [v3 defaultIntentReference];
  v20 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v21 = v9;
  v22 = [v20 initWithExtensionIdentity:v21 kind:v18 intentReference:v19];

  v23 = [v8 disallowedControlIdentities];
  if (v23)
  {
    v24 = v23;
    sub_2442A34F8(0, &qword_27EDDD898, 0x277CFA228);
    v25 = sub_2442B4958();

    v32 = v7;
    if (v25 >> 62)
    {
LABEL_35:
      v26 = sub_2442B4BF8();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (j = 0; v26 != j; ++j)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x245D5DFA0](j, v25);
      }

      else
      {
        if (j >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v28 = *(v25 + 8 * j + 32);
      }

      v29 = v28;
      if (__OFADD__(j, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v30 = [v22 matches_];

      if (v30)
      {

        return;
      }
    }
  }

  else
  {
  }
}

uint64_t sub_2442B4220(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      sub_2442A34F8(0, &unk_27EDDDAC0, 0x277D66450);
      swift_unknownObjectRetain();
      v6 = sub_2442B49B8();
      [v6 addIconDataSource_];
      v7 = v6;
      v8 = SBHIconGridSizeClassForCCUIGridSizeClass([v5 preferredGallerySizeClass]);
      [v7 setGridSizeClass_];

      swift_unknownObjectRelease();
      return v7;
    }

    else
    {
      v9 = [v3 customItemsDelegate];
      if (v9)
      {
        v10 = [v9 controlsGalleryViewController:v3 widgetIconForGalleryItem:a1];
        swift_unknownObjectRelease();

        return v10;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

_OWORD *sub_2442B4370(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2442B43B8()
{
  result = qword_27EDDDAF8;
  if (!qword_27EDDDAF8)
  {
    sub_2442B47D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDDAF8);
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2442B4498(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2442B4C68() & 1;
  }
}

uint64_t sub_2442B4550(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2442B45B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2442B4618(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_2442A34F8(0, &qword_27EDDDAD0, 0x277D66130);
  return sub_2442B4AB8() & 1;
}

uint64_t sub_2442B4680(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}