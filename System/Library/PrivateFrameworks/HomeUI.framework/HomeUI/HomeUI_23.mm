void sub_20D0EB030(uint64_t a1)
{
  if (a1 && (objc_opt_self(), (v1 = swift_dynamicCastObjCClass()) != 0))
  {
    v2 = v1;
    v3 = objc_allocWithZone(MEMORY[0x277CCAD78]);
    swift_unknownObjectRetain();
    v4 = [v3 init];
    v5 = [v4 UUIDString];

    if (!v5)
    {
      sub_20D567838();
      v5 = sub_20D5677F8();
    }

    v6 = [objc_opt_self() customWallpaperWithAssetIdentifier_];

    v7 = sub_20D0EB294(v6, v2);
    v13[4] = sub_20CF36F00;
    v13[5] = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_20D0261C0;
    v13[3] = &block_descriptor_7_1;
    v8 = _Block_copy(v13);
    v9 = [v7 addFailureBlock_];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27C81A330 != -1)
    {
      swift_once();
    }

    v10 = qword_27C8382C8;
    v11 = sub_20D567EC8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20CEB6000, v10, v11, "Cannot decode image for external image drop session", v12, 2u);

      JUMPOUT(0x20F31FC70);
    }
  }
}

id sub_20D0EB294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 context];
  v7 = *&v6[OBJC_IVAR___HUDashboardContext_room];
  v8 = v7;

  if (v7)
  {
    v9 = v8;
    v10 = [v3 context];
    v11 = *&v10[OBJC_IVAR___HUDashboardContext_home];

    v12 = [objc_allocWithZone(MEMORY[0x277D149D8]) initWithExistingObject:v9 inHome:v11];
    v13 = [v12 wallpaperBuilder];
    if (v13)
    {
      v14 = v13;
      [v13 setWallpaper:a1 image:a2];
    }

    v15 = [v12 commitItem];
    v16 = [v15 asGeneric];
  }

  else
  {
    v17 = [v3 context];
    v18 = *&v17[OBJC_IVAR___HUDashboardContext_home];

    v19 = [v3 context];
    v20 = *&v19[OBJC_IVAR___HUDashboardContext_home];

    v12 = [objc_allocWithZone(MEMORY[0x277D146C8]) initWithExistingObject:v18 inHome:v20];
    v21 = [v12 wallpaperBuilder];
    if (v21)
    {
      v22 = v21;
      [v21 setWallpaper:a1 image:a2];
    }

    v15 = [v12 commitItem];
    v16 = [v15 asGeneric];
  }

  return v16;
}

uint64_t sub_20D0EB4F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_20D0EB570()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  sub_20D567838();
  sub_20D5678C8();

  return sub_20D568D98();
}

uint64_t sub_20D0EB5E8()
{
  MEMORY[0x20F31E200](*v0);
  sub_20D567838();
  sub_20D5678C8();
}

uint64_t sub_20D0EB650()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  sub_20D567838();
  sub_20D5678C8();

  return sub_20D568D98();
}

uint64_t sub_20D0EB6C4(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = sub_20D567838();
    v4 = v3;
    if (v2 == sub_20D567838() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_20D568BF8();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::String_optional __swiftcall HUDashboardViewController.contextTypeDescriptionForAnalytics()()
{
  v1 = [v0 context];
  v2 = sub_20CFE86BC();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

unint64_t sub_20D0EB850()
{
  result = qword_27C821280;
  if (!qword_27C821280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821280);
  }

  return result;
}

char *sub_20D0EB8A4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20D568768())
  {
    v12 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_20:
      v26 = sub_20CEF36C8(v12);

      if (*(v26 + 16) == 1)
      {
        v27 = sub_20CFAFAB0(v26);
        v29 = v28;

        if ((v29 & 1) == 0)
        {
          return (v27 == a2);
        }
      }

      else
      {
      }

      return 0;
    }

    v38 = MEMORY[0x277D84F90];
    result = sub_20CEF0C78(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v30 = a2;
    v31 = v3;
    v14 = 0;
    v12 = v38;
    v15 = a1;
    v34 = a1;
    v35 = a1 & 0xC000000000000001;
    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = i;
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v35)
      {
        v17 = MEMORY[0x20F31DD20](v14, v15);
        a2 = v37;
      }

      else
      {
        a2 = v37;
        if (v14 >= *(v32 + 16))
        {
          goto LABEL_27;
        }

        v17 = *(v15 + 8 * v14 + 32);
      }

      v18 = [v36 itemManager];
      v19 = [v18 indexPathForItem_];

      if (v19)
      {
        sub_20D563878();

        v20 = 0;
      }

      else
      {
        v20 = 1;
      }

      v21 = sub_20D5638C8();
      v22 = *(v21 - 8);
      (*(v22 + 56))(a2, v20, 1, v21);
      sub_20CF5E4EC(a2, v10);
      if ((*(v22 + 48))(v10, 1, v21) == 1)
      {
        sub_20CEF928C(v10, &qword_27C81D5C0);
        sub_20D0EB850();
        swift_allocError();
        *v24 = 7;
        swift_willThrow();

        return v25;
      }

      a2 = sub_20D5638B8();

      (*(v22 + 8))(v10, v21);
      v38 = v12;
      v3 = *(v12 + 16);
      v23 = *(v12 + 24);
      a1 = v3 + 1;
      if (v3 >= v23 >> 1)
      {
        sub_20CEF0C78((v23 > 1), v3 + 1, 1);
        v12 = v38;
      }

      *(v12 + 16) = a1;
      *(v12 + 8 * v3 + 32) = a2;
      ++v14;
      v15 = v34;
      if (v16 == v33)
      {
        a2 = v30;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  __break(1u);
  return result;
}

uint64_t _s6ErrorsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6ErrorsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20D0EBDB8()
{
  result = qword_27C8212F8;
  if (!qword_27C8212F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8212F8);
  }

  return result;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20D0EBE2C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45[7] = a3;
  v7 = sub_20D5638C8();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v4 collectionView];
  if (!v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  [a1 locationInView_];
  v15 = v14;
  v17 = v16;

  v18 = [v4 collectionView];
  if (!v18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = [v18 collectionViewLayout];

  [v20 _layoutFrameForSection_];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v47.origin.x = v22;
  v47.origin.y = v24;
  v47.size.width = v26;
  v47.size.height = v28;
  v46.x = v15;
  v46.y = v17;
  if (!CGRectContainsPoint(v47, v46))
  {
    sub_20D0EB850();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    return;
  }

  v29 = [v4 collectionView];
  if (!v29)
  {
    goto LABEL_16;
  }

  v30 = v29;
  v31 = *MEMORY[0x277D767D8];
  MEMORY[0x20F318D30](0, a2);
  v32 = sub_20D563868();
  (*(v8 + 8))(v11, v7);
  v33 = [v30 layoutAttributesForSupplementaryElementOfKind:v31 atIndexPath:v32];

  if (v33)
  {
    [v33 size];
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  v37 = [v4 layoutManager];
  v38 = *&v37[OBJC_IVAR___HUCollectionLayoutManager_layoutOptions];
  v39 = v38;

  if (!v38)
  {
    goto LABEL_17;
  }

  v40 = [v4 traitCollection];
  v41 = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
  sub_20CEFD658(v39, v40, v15 - v22, v17 - v24 - v35);
  v43 = v42;

  if (v43)
  {
    sub_20D0EB850();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
  }
}

unint64_t sub_20D0EC1C0@<X0>(void **a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_20D0E4220(*a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_20D0EC21C()
{
  result = qword_27C81DB50;
  if (!qword_27C81DB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C81E330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DB50);
  }

  return result;
}

unint64_t sub_20D0EC294()
{
  result = qword_27C821328;
  if (!qword_27C821328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821328);
  }

  return result;
}

uint64_t HUAppInfo.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI9HUAppInfo_bundleID);
  sub_20D5663C8();
  return v1;
}

uint64_t HUAppInfo.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI9HUAppInfo_name);
  sub_20D5663C8();
  return v1;
}

id HUAppInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HUAppInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D0EC58C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20D059BE4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20D0EC608(v6);
  return sub_20D5688D8();
}

uint64_t sub_20D0EC608(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20D568BA8();
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
        type metadata accessor for HUAppInfo();
        v6 = sub_20D567AE8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_20D0EC814(v8, v9, a1, v4);
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
    return sub_20D0EC708(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20D0EC708(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_20CEF44D8();
    v7 = (v6 + 8 * v4 - 8);
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v13 = v7;
    while (1)
    {
      result = sub_20D5685D8();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 = v13 + 1;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v7;
      *v7 = v7[1];
      v7[1] = v10;
      --v7;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20D0EC814(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v86 = result;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v10 = MEMORY[0x277D837D0];
    while (1)
    {
      v11 = v8;
      v12 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v89 = v7;
        v83 = v5;
        v13 = 8 * v8;
        v14 = *v6 + 8 * v8 + 16;
        sub_20CEF44D8();
        result = sub_20D5685D8();
        v15 = result;
        v16 = v11 + 2;
        while (1)
        {
          v12 = v89;
          if (v89 == v16)
          {
            break;
          }

          result = sub_20D5685D8();
          ++v16;
          v14 += 8;
          if ((v15 == -1) == (result != -1))
          {
            v12 = v16 - 1;
            break;
          }
        }

        v6 = a3;
        if (v15 == -1)
        {
          if (v12 < v11)
          {
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
            return result;
          }

          if (v11 < v12)
          {
            v17 = 8 * v12 - 8;
            v18 = v12;
            v19 = v11;
            do
            {
              if (v19 != --v18)
              {
                v21 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v20 = *(v21 + v13);
                *(v21 + v13) = *(v21 + v17);
                *(v21 + v17) = v20;
              }

              ++v19;
              v17 -= 8;
              v13 += 8;
            }

            while (v19 < v18);
          }

          v5 = v83;
        }

        else
        {
          v5 = v83;
        }
      }

      v22 = v6[1];
      if (v12 < v22)
      {
        if (__OFSUB__(v12, v11))
        {
          goto LABEL_117;
        }

        if (v12 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_118;
          }

          if (v11 + a4 < v22)
          {
            v22 = v11 + a4;
          }

          if (v22 < v11)
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v12 != v22)
          {
            v88 = v22;
            v84 = v5;
            v23 = *v6;
            sub_20CEF44D8();
            v24 = v23 + 8 * v12 - 8;
            v85 = v11;
            v25 = v11 - v12;
            do
            {
              v90 = v12;
              v26 = v25;
              v27 = v24;
              do
              {
                result = sub_20D5685D8();
                if (result != -1)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_122;
                }

                v28 = *v27;
                *v27 = v27[1];
                v27[1] = v28;
                --v27;
              }

              while (!__CFADD__(v26++, 1));
              ++v12;
              v24 += 8;
              --v25;
            }

            while (v90 + 1 != v88);
            v6 = a3;
            v12 = v88;
            v5 = v84;
            v11 = v85;
          }
        }
      }

      if (v12 < v11)
      {
        goto LABEL_116;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v91 = v12;
      if ((result & 1) == 0)
      {
        result = sub_20CEE81E4(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v31 = *(v9 + 2);
      v30 = *(v9 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        result = sub_20CEE81E4((v30 > 1), v31 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v32;
      v33 = &v9[16 * v31];
      *(v33 + 4) = v11;
      *(v33 + 5) = v91;
      v34 = *v86;
      if (!*v86)
      {
        goto LABEL_126;
      }

      if (v31)
      {
        while (1)
        {
          v35 = v32 - 1;
          if (v32 >= 4)
          {
            break;
          }

          if (v32 == 3)
          {
            v36 = *(v9 + 4);
            v37 = *(v9 + 5);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_57:
            if (v39)
            {
              goto LABEL_105;
            }

            v52 = &v9[16 * v32];
            v54 = *v52;
            v53 = *(v52 + 1);
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_108;
            }

            v58 = &v9[16 * v35 + 32];
            v60 = *v58;
            v59 = *(v58 + 1);
            v46 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v46)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v56, v61))
            {
              goto LABEL_112;
            }

            if (v56 + v61 >= v38)
            {
              if (v38 < v61)
              {
                v35 = v32 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v62 = &v9[16 * v32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v46 = __OFSUB__(v63, v64);
          v56 = v63 - v64;
          v57 = v46;
LABEL_71:
          if (v57)
          {
            goto LABEL_107;
          }

          v65 = &v9[16 * v35];
          v67 = *(v65 + 4);
          v66 = *(v65 + 5);
          v46 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v46)
          {
            goto LABEL_110;
          }

          if (v68 < v56)
          {
            goto LABEL_3;
          }

LABEL_78:
          v73 = v35 - 1;
          if (v35 - 1 >= v32)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (!*v6)
          {
            goto LABEL_123;
          }

          v74 = *&v9[16 * v73 + 32];
          v75 = *&v9[16 * v35 + 40];
          sub_20D0ECE98((*v6 + 8 * v74), (*v6 + 8 * *&v9[16 * v35 + 32]), (*v6 + 8 * v75), v34);
          if (v5)
          {
          }

          if (v75 < v74)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_20D057C88(v9);
          }

          if (v73 >= *(v9 + 2))
          {
            goto LABEL_102;
          }

          v76 = &v9[16 * v73];
          *(v76 + 4) = v74;
          *(v76 + 5) = v75;
          result = sub_20D057BFC(v35);
          v32 = *(v9 + 2);
          if (v32 <= 1)
          {
            goto LABEL_3;
          }
        }

        v40 = &v9[16 * v32 + 32];
        v41 = *(v40 - 64);
        v42 = *(v40 - 56);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_103;
        }

        v45 = *(v40 - 48);
        v44 = *(v40 - 40);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_104;
        }

        v47 = &v9[16 * v32];
        v49 = *v47;
        v48 = *(v47 + 1);
        v46 = __OFSUB__(v48, v49);
        v50 = v48 - v49;
        if (v46)
        {
          goto LABEL_106;
        }

        v46 = __OFADD__(v38, v50);
        v51 = v38 + v50;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v51 >= v43)
        {
          v69 = &v9[16 * v35 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v46 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v46)
          {
            goto LABEL_113;
          }

          if (v38 < v72)
          {
            v35 = v32 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v7 = v6[1];
      v8 = v91;
      if (v91 >= v7)
      {
        goto LABEL_88;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_88:
  v10 = v5;
  v5 = *v86;
  if (!*v86)
  {
    goto LABEL_127;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = sub_20D057C88(v9);
    v9 = result;
  }

  v77 = *(v9 + 2);
  if (v77 >= 2)
  {
    while (1)
    {
      v78 = *v6;
      if (!*v6)
      {
        goto LABEL_124;
      }

      v6 = (v77 - 1);
      v79 = *&v9[16 * v77];
      v80 = *&v9[16 * v77 + 24];
      sub_20D0ECE98((v78 + 8 * v79), (v78 + 8 * *&v9[16 * v77 + 16]), (v78 + 8 * v80), v5);
      if (v10)
      {
      }

      if (v80 < v79)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_20D057C88(v9);
      }

      if (v77 - 2 >= *(v9 + 2))
      {
        goto LABEL_115;
      }

      v81 = &v9[16 * v77];
      *v81 = v79;
      *(v81 + 1) = v80;
      result = sub_20D057BFC(v6);
      v77 = *(v9 + 2);
      v6 = a3;
      if (v77 <= 1)
      {
      }
    }
  }
}

uint64_t sub_20D0ECE98(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      sub_20CEF44D8();
      do
      {
        v21 = v6;
        v17 = v6 - 8;
        v5 -= 8;
        v18 = v14;
        while (1)
        {
          v19 = v5 + 8;
          v18 -= 8;
          v6 = v17;
          if (sub_20D5685D8() == -1)
          {
            break;
          }

          if (v19 != v14)
          {
            *v5 = *v18;
          }

          v5 -= 8;
          v14 = v18;
          v17 = v6;
          if (v18 <= v4)
          {
            v14 = v18;
            v6 = v21;
            goto LABEL_40;
          }
        }

        if (v19 != v21)
        {
          *v5 = *v6;
        }
      }

      while (v14 > v4 && v6 > v7);
    }
  }

  else
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      sub_20CEF44D8();
      while (sub_20D5685D8() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          v6 = v7;
          goto LABEL_40;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

    v6 = v7;
  }

LABEL_40:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

id _s6HomeUI0A19EnergyManagerHelperC7tccAppsSayAA9HUAppInfoCGyFZ_0()
{
  v54 = *MEMORY[0x277D85DE8];
  v45 = sub_20D5636B8();
  v0 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*MEMORY[0x277D6C148])
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  v3 = *MEMORY[0x277D6C148];
  v4 = TCCAccessCopyInformation();

  if (!v4)
  {
    goto LABEL_46;
  }

  v5 = sub_20D567A78();

  v53 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_40;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
LABEL_5:
    v46 = v2;
    v7 = 0;
    v41 = 0;
    v2 = (v5 & 0xC000000000000001);
    v49 = v5 & 0xFFFFFFFFFFFFFF8;
    v8 = &unk_27C821340;
    v43 = MEMORY[0x277D84F90];
    v44 = v0 + 1;
    v47 = v5 & 0xC000000000000001;
    v48 = v6;
    while (1)
    {
      if (v2)
      {
        v0 = MEMORY[0x20F31DD20](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v7 >= *(v49 + 16))
        {
          goto LABEL_39;
        }

        v0 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v6 = sub_20D568768();
          if (!v6)
          {
            goto LABEL_41;
          }

          goto LABEL_5;
        }
      }

      v52 = v0;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8);
      if (swift_dynamicCast())
      {
        break;
      }

      swift_unknownObjectRelease();
LABEL_7:
      ++v7;
      if (v9 == v6)
      {

        v38 = v41;
        goto LABEL_42;
      }
    }

    if (!*MEMORY[0x277D6C0C8])
    {
      __break(1u);
      goto LABEL_45;
    }

    v10 = v8;
    v11 = v51;
    v12 = *MEMORY[0x277D6C0C8];
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = v12;
      v14 = sub_20D568A38();

      if (!v14)
      {
LABEL_34:
        swift_unknownObjectRelease();

        goto LABEL_35;
      }

LABEL_22:
      type metadata accessor for CFBundle(0);
      swift_unknownObjectRetain();
      v17 = swift_dynamicCastUnknownClassUnconditional();
      v18 = CFBundleCopyBundleURL(v17);

      if (v18)
      {
        v19 = v46;
        sub_20D563698();

        v20 = objc_allocWithZone(MEMORY[0x277CC1E70]);
        v21 = sub_20D563678();
        v52 = 0;
        v13 = [v20 initWithURL:v21 allowPlaceholder:0 error:&v52];

        if (v13)
        {
          v22 = v52;
          v23 = [v13 bundleIdentifier];
          if (v23)
          {
            v24 = v23;
            v25 = sub_20D567838();
            v42 = v26;
            v43 = v25;

            v27 = [v13 localizedName];
            v28 = sub_20D567838();
            v30 = v29;

            v31 = type metadata accessor for HUAppInfo();
            v32 = objc_allocWithZone(v31);
            v33 = &v32[OBJC_IVAR____TtC6HomeUI9HUAppInfo_bundleID];
            v34 = v42;
            *v33 = v43;
            *(v33 + 1) = v34;
            v35 = &v32[OBJC_IVAR____TtC6HomeUI9HUAppInfo_name];
            *v35 = v28;
            v35[1] = v30;
            v50.receiver = v32;
            v50.super_class = v31;
            objc_msgSendSuper2(&v50, sel_init);
            MEMORY[0x20F31CEE0]();
            if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20D567AB8();
            }

            sub_20D567B08();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            (*v44)(v46, v45);
            v43 = v53;
            goto LABEL_35;
          }

          (*v44)(v46, v45);
          swift_unknownObjectRelease();
          goto LABEL_34;
        }

        v36 = v52;
        v37 = sub_20D5635D8();

        swift_willThrow();
        (*v44)(v19, v45);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v41 = 0;
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

LABEL_35:
      v2 = v47;
      v6 = v48;
      goto LABEL_36;
    }

    if (*(v11 + 16))
    {
      v15 = v12;
      sub_20CEEDEE8(v12);
      if (v16)
      {
        swift_unknownObjectRetain();

        goto LABEL_22;
      }
    }

    else
    {
      v15 = v12;
    }

    swift_unknownObjectRelease();

LABEL_36:
    v8 = v10;
    goto LABEL_7;
  }

LABEL_41:

  v38 = 0;
LABEL_42:
  v39 = sub_20D5663C8();
  v52 = sub_20CF85654(v39);
  sub_20D0EC58C(&v52);
  if (v38)
  {

    __break(1u);
  }

  else
  {

    return v52;
  }

  return result;
}

__n128 sub_20D0ED798@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_actionSetGridConfig);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_20D0ED7F0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_actionSetGridConfig;
  result = swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  v7 = *(v1 + OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_module);
  if (v7)
  {
    v8 = v7 + OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config;
    result = swift_beginAccess();
    *v8 = v2;
    *(v8 + 8) = v3;
    *(v8 + 16) = v4;
  }

  return result;
}

void (*sub_20D0ED890(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_actionSetGridConfig;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_20D0ED918;
}

void sub_20D0ED918(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_module);
    if (v5)
    {
      v6 = (v4 + v3[4]);
      v7 = *v6;
      v8 = v6[1];
      v9 = *(v6 + 16);
      v10 = v5 + OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config;
      swift_beginAccess();
      *v10 = v7;
      *(v10 + 8) = v8;
      *(v10 + 16) = v9;
    }
  }

  free(v3);
}

uint64_t sub_20D0ED9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_0(a1, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = a3(v12, a2, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

double sub_20D0EDAF0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_20CECF7A0(a3, v20);
  objc_allocWithZone(type metadata accessor for ActionSetContainerSummaryGridItemModule());
  v5 = a1;
  swift_unknownObjectRetain();
  v6 = sub_20D0860B0(v20, v5, a2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong + OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_actionSetGridConfig;
    v9 = Strong;
    swift_beginAccess();
    v11 = *v8;
    v10 = *(v8 + 8);
    v12 = *(v8 + 16);
  }

  else
  {
    v10 = 0;
    v12 = 1;
    v11 = 15;
  }

  v13 = &v6[OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config];
  swift_beginAccess();
  *v13 = v11;
  *(v13 + 1) = v10;
  v13[16] = v12;
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = *(v14 + OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_module);
    *(v14 + OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_module) = v6;
    v16 = v14;
    v17 = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v18 = swift_allocObject();
  *&result = 1;
  *(v18 + 16) = xmmword_20D5BA040;
  *(v18 + 32) = v6;
  return result;
}

id sub_20D0EDC78(void *a1)
{
  type metadata accessor for ActionSetContainerSummaryGridItemModule();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for ActionSetContainerSummaryGridItemModuleController());
  v6 = a1;
  v7 = [v5 initWithModule_];
  swift_unknownObjectWeakAssign();
  v8 = *(v1 + OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_moduleController);
  *(v1 + OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_moduleController) = v7;
  v9 = v7;

  v10 = [v9 asGeneric];
  return v10;
}

id sub_20D0EDDC0(uint64_t a1, void *a2)
{
  v5 = *&v2[OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_moduleController];
  if (v5 && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    v8 = v5;
    v9 = a2;
    v10 = [v7 actionSet];
    v11 = [v8 module];
    v12 = *&v11[OBJC_IVAR___HUActionSetItemModule_home];

    v13 = [objc_allocWithZone(MEMORY[0x277D14398]) initWithExistingObject:v10 inHome:v12];
    v14 = [objc_allocWithZone(HUSceneActionEditorViewController) initWithActionSetBuilder:v13 mode:3];
    [v14 setShowCancelButton_];
    [v14 setSceneEditorDelegate_];

    return v14;
  }

  else
  {
    v17.receiver = v2;
    v17.super_class = type metadata accessor for ActionSetContainerSummaryGridViewController();
    v16 = objc_msgSendSuper2(&v17, sel_detailsViewControllerForPresentationCoordinator_item_, a1, a2);

    return v16;
  }
}

id sub_20D0EDFD4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = *&v4[OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_moduleController];
  if (v9)
  {
    v10 = v9;
    v11 = [v10 module];
    v12 = *&v11[OBJC_IVAR___HUActionSetItemModule_home];

    LODWORD(v11) = [v12 hf_currentUserIsAdministrator];
    if (!v11)
    {
      return 0;
    }
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for ActionSetContainerSummaryGridViewController();
  return objc_msgSendSuper2(&v14, sel_presentationCoordinator_shouldBeginInteractivePresentationWithTouchLocation_view_, a1, a2, a3, a4);
}

id ActionSetContainerSummaryGridViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id ActionSetContainerSummaryGridViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

void sub_20D0EE2F8()
{
  v1 = &v0[OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_actionSetGridConfig];
  swift_beginAccess();
  *v1 = 4;
  v2 = *&v0[OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_module];
  swift_beginAccess();
  if (v2)
  {
    v3 = *v1;
    v4 = *(v1 + 1);
    v5 = v1[16];
    v6 = v2 + OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config;
    swift_beginAccess();
    *v6 = v3;
    *(v6 + 8) = v4;
    *(v6 + 16) = v5;
    swift_beginAccess();
    *(v1 + 1) = 2;
    v1[16] = 0;
    v7 = *v1;
    v1 = (v2 + OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config);
    swift_beginAccess();
    *v1 = v7;
  }

  *(v1 + 1) = 2;
  v1[16] = 0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for EmbeddedActionSetContainerSummaryGridViewController();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v8 = [v0 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 _setShouldDeriveVisibleBoundsFromContainingScrollView_];

  v10 = [v0 collectionView];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v10 setScrollEnabled_];

  v12 = [v0 collectionView];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  [v12 setClipsToBounds_];

  v14 = [v0 collectionView];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 clearColor];
  [v15 setBackgroundColor_];

  v18 = [v0 view];
  if (v18)
  {
    v19 = v18;
    v20 = [v16 clearColor];
    [v19 setBackgroundColor_];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_20D0EE5EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, id, uint64_t, uint64_t))
{
  v7 = objc_allocWithZone(v3);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_0(a1, v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = a3(v13, a2, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

id sub_20D0EE718(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20D0EE750(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(v9 + 32))(&v18 - v14, v13);
  (*(v9 + 16))(v11, v15, a4);
  v16 = sub_20D0EE89C(v11, a2, a3, a4, a5);
  (*(v9 + 8))(v15, a4);
  return v16;
}

id sub_20D0EE89C(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v28[3] = a4;
  v28[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *&a3[OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_module] = 0;
  *&a3[OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_moduleController] = 0;
  v10 = &a3[OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_actionSetGridConfig];
  *v10 = xmmword_20D5BD1F0;
  v10[16] = 1;
  v11 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  v27.receiver = a3;
  v27.super_class = type metadata accessor for ActionSetContainerSummaryGridViewController();
  v12 = objc_msgSendSuper2(&v27, sel_initUsingCompositionalLayoutWithItemManager_, v11);
  [v11 setDelegate_];
  if (a2)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    v24 = sub_20D0E0688;
    v25 = v13;
    v20 = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_20CF351D8;
    v23 = &block_descriptor_28_0;
    v14 = _Block_copy(&v20);
    v15 = a2;

    [v11 setHomeCreator_];
    _Block_release(v14);
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20CECF7A0(v28, v26);
  v17 = swift_allocObject();
  sub_20CF02B6C(v26, v17 + 16);
  *(v17 + 56) = v16;
  v24 = sub_20CF02B84;
  v25 = v17;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_20CF35658;
  v23 = &block_descriptor_48;
  v18 = _Block_copy(&v20);

  [v11 setItemModuleCreator_];
  _Block_release(v18);

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v12;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D0EED08(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_20D566078();
  if (v6)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_20CEF928C(v5, &unk_27C81C7A0);
    return 0;
  }

  return result;
}

uint64_t UIConfigurationState.updated(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = a1;
  v9 = sub_20D567ED8();
  v11 = v10;
  if (!sub_20D0EF630())
  {
    if ((v11 & 1) == 0)
    {
      UIConfigurationState.isActive.setter(v9 == 2, a2, a3);
    }

    MEMORY[0x20F31D7A0](v15, *MEMORY[0x277D13FD8]);
    if (v16)
    {
      sub_20CF28748();
      if (swift_dynamicCast())
      {
        if ([v14 BOOLValue])
        {
          UIConfigurationState.isActive.setter(0, a2, a3);
        }
      }
    }

    else
    {
      sub_20CEF928C(v15, &qword_27C81BF00);
    }
  }

  UIConfigurationState.hasActivity.setter(([v8 loadingState] >> 1) & 1, a2, a3);
  if ((v11 & 1) != 0 || v9)
  {
    MEMORY[0x20F31D7A0](v15, *MEMORY[0x277D13E68]);
    v12 = v16 != 0;
    sub_20CEF928C(v15, &qword_27C81BF00);
  }

  else
  {
    v12 = 1;
  }

  return UIConfigurationState.isDisabled.setter(v12, a2, a3);
}

uint64_t UIConfigurationState.borderStyle.setter(uint64_t a1, char a2)
{
  if (qword_28111FDD0 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v2 = qword_28111FDD8;
  if (a2)
  {
    v3 = qword_28111FDD8;
  }

  else
  {
    type metadata accessor for HUTileCellBorderStyle(0);
    sub_20D0085EC(&unk_28111FE90, type metadata accessor for HUTileCellBorderStyle);
    v4 = v2;
    sub_20D5687F8();
  }

  return sub_20D566088();
}

uint64_t UIConfigurationState.backgroundDisplayStyle.setter(uint64_t a1, char a2)
{
  if (qword_28111FD98 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v2 = qword_28111FDA0;
  if (a2)
  {
    v3 = qword_28111FDA0;
  }

  else
  {
    type metadata accessor for HUTileCellBackgroundDisplayStyle(0);
    sub_20D0085EC(&unk_28111FD78, type metadata accessor for HUTileCellBackgroundDisplayStyle);
    v4 = v2;
    sub_20D5687F8();
  }

  return sub_20D566088();
}

uint64_t sub_20D0EF2A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_20D566078();
  if (v9)
  {
    a5(0);
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_20CEF928C(v8, &unk_27C81C7A0);
    return 0;
  }
}

uint64_t sub_20D0EF384()
{
  result = sub_20D5677F8();
  qword_28111FDC8 = result;
  return result;
}

uint64_t sub_20D0EF3E0()
{
  result = sub_20D5677F8();
  qword_28111FD90 = result;
  return result;
}

uint64_t sub_20D0EF43C()
{
  result = sub_20D5677F8();
  qword_28111FDD8 = result;
  return result;
}

uint64_t sub_20D0EF498()
{
  result = sub_20D5677F8();
  qword_28111FDA0 = result;
  return result;
}

uint64_t sub_20D0EF4F4()
{
  result = sub_20D5677F8();
  qword_28111FDB8 = result;
  return result;
}

uint64_t sub_20D0EF550()
{
  result = sub_20D5677F8();
  qword_28111FDF0 = result;
  return result;
}

uint64_t (*UIConfigurationState.isActive.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = UIConfigurationState.isActive.getter(a2, a3) & 1;
  return sub_20D0EF604;
}

BOOL sub_20D0EF630()
{
  if (qword_28111FD88 != -1)
  {
    swift_once();
  }

  sub_20D566078();
  v0 = v3 != 0;
  sub_20CEF928C(v2, &unk_27C81C7A0);
  return v0;
}

void (*UIConfigurationState.borderStyle.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = UIConfigurationState.borderStyle.getter(a2, a3);
  *(v8 + 8) = v9 & 1;
  return sub_20D0EF770;
}

void (*UIConfigurationState.backgroundDisplayStyle.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  *v7 = UIConfigurationState.backgroundDisplayStyle.getter(a2, a3);
  *(v8 + 8) = v9 & 1;
  return sub_20D0EF824;
}

void sub_20D0EF83C(void **a1, uint64_t a2, void (*a3)(void, void, void, void))
{
  v3 = *a1;
  a3(**a1, *(*a1 + 8), (*a1)[2], (*a1)[3]);

  free(v3);
}

uint64_t (*UIConfigurationState.hasActivity.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = UIConfigurationState.hasActivity.getter(a2, a3) & 1;
  return sub_20D0EF908;
}

uint64_t (*UIConfigurationState.isToggleable.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = UIConfigurationState.isToggleable.getter(a2, a3) & 1;
  return sub_20D0EF98C;
}

uint64_t sub_20D0EF9DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, id *a5)
{
  if (*a4 != -1)
  {
    v7 = a5;
    swift_once();
    a5 = v7;
  }

  v5 = *a5;
  sub_20D5687F8();
  return sub_20D566088();
}

uint64_t (*UIConfigurationState.isDisabled.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = UIConfigurationState.isDisabled.getter(a2, a3) & 1;
  return sub_20D0EFAE0;
}

uint64_t keypath_get_4Tm@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X3>, uint64_t a4@<X8>)
{
  result = a3(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void static HUGraphicsUtilities.setRearrangingAnimation(rearranging:layer:frame:)(char a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGRectGetHeight(*&a3);
  v13.origin.x = a3;
  v13.origin.y = a4;
  v13.size.width = a5;
  v13.size.height = a6;
  CGRectGetWidth(v13);

  sub_20D0F0088(a1, a2);
}

id sub_20D0EFC2C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1052266988;
  LODWORD(v2) = 1059145646;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  qword_27C821368 = result;
  return result;
}

id sub_20D0EFD48()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9E10]) init];
  v1 = sub_20D5677F8();
  [v0 setKeyPath_];

  v2 = v0;
  [v2 setDuration_];
  [v2 setBeginTime_];
  v3 = sub_20D563958();
  [v2 setFromValue_];

  v4 = sub_20D563958();
  [v2 setToValue_];

  if (qword_27C81A340 != -1)
  {
    swift_once();
  }

  [v2 setTimingFunction_];
  LODWORD(v5) = 2139095039;
  [v2 setRepeatCount_];
  [v2 setAutoreverses_];
  [v2 setRemovedOnCompletion_];

  return v2;
}

id sub_20D0EFEE8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9E10]) init];
  v1 = sub_20D5677F8();
  [v0 setKeyPath_];

  v2 = v0;
  [v2 setDuration_];
  [v2 setBeginTime_];
  v3 = sub_20D563958();
  [v2 setFromValue_];

  v4 = sub_20D563958();
  [v2 setToValue_];

  if (qword_27C81A340 != -1)
  {
    swift_once();
  }

  [v2 setTimingFunction_];
  LODWORD(v5) = 2139095039;
  [v2 setRepeatCount_];
  [v2 setAutoreverses_];
  [v2 setRemovedOnCompletion_];

  return v2;
}

void sub_20D0F0088(char a1, void *a2)
{
  if (a1)
  {
    v3 = sub_20D0EFD48();
    v4 = sub_20D5677F8();
    [v3 setKeyPath_];

    [v3 setDuration_];
    v5 = sub_20D5677F8();
    [a2 addAnimation:v3 forKey:v5];

    v6 = sub_20D0EFD48();
    v7 = sub_20D5677F8();
    [v6 setKeyPath_];

    [v6 setDuration_];
    v8 = sub_20D5677F8();
    [a2 addAnimation:v6 forKey:v8];

    v9 = sub_20D0EFEE8();
    v12 = sub_20D5677F8();
    [a2 addAnimation:v9 forKey:?];
  }

  else
  {
    v10 = sub_20D5677F8();
    [a2 removeAnimationForKey_];

    v11 = sub_20D5677F8();
    [a2 removeAnimationForKey_];

    v12 = sub_20D5677F8();
    [a2 removeAnimationForKey_];
  }
}

uint64_t OnChangeAfterInitialSetupModifier.propertyToObserve.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D567518();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OnChangeAfterInitialSetupModifier.propertyToObserve.setter(uint64_t a1)
{
  v3 = sub_20D567518();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OnChangeAfterInitialSetupModifier.onChangeHandler.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t sub_20D0F0480()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567448();
  return v1;
}

uint64_t OnChangeAfterInitialSetupModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v49 = a1;
  v53 = a3;
  v5 = *(a2 + 16);
  v52 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v50 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = v10;
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_20D566D48();
  v12 = sub_20D566948();
  v45 = v12;
  v51 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v54 = &v36 - v13;
  WitnessTable = swift_getWitnessTable();
  v59 = WitnessTable;
  v60 = MEMORY[0x277CE0790];
  v46 = swift_getWitnessTable();
  v14 = *(a2 + 24);
  v55 = v12;
  v56 = v5;
  v57 = v46;
  v58 = v14;
  v39 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  v48 = OpaqueTypeMetadata2;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v42 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v44 = &v36 - v19;
  v41 = *(v8 + 16);
  v41(v11, v3, a2, v18);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = v14;
  v37 = *(v8 + 32);
  v37(v21 + v20, v11, a2);
  sub_20D567248();

  v22 = sub_20D567518();
  v23 = v50;
  v24 = v38;
  MEMORY[0x20F31C980](v22);
  (v41)(v11, v24, a2);
  v25 = swift_allocObject();
  v26 = v39;
  *(v25 + 16) = v5;
  *(v25 + 24) = v26;
  v37(v25 + v20, v11, a2);
  v27 = v42;
  v28 = v45;
  v29 = v54;
  sub_20D567268();

  (*(v52 + 8))(v23, v5);
  (*(v51 + 8))(v29, v28);
  v31 = v47;
  v30 = v48;
  v32 = *(v47 + 16);
  v33 = v44;
  v32(v44, v27, v48);
  v34 = *(v31 + 8);
  v34(v27, v30);
  v32(v53, v33, v30);
  return (v34)(v33, v30);
}

uint64_t sub_20D0F0A70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D567518();
  MEMORY[0x20F31C980]();
  v7 = *(type metadata accessor for OnChangeAfterInitialSetupModifier() + 36);
  v8 = sub_20D5677E8();
  (*(v4 + 8))(v6, a2);
  if (v8)
  {
    return sub_20D0F04E0();
  }

  (*(v4 + 16))(v6, a1 + v7, a2);
  return sub_20D5674E8();
}

uint64_t sub_20D0F0C04(uint64_t a1)
{
  v2 = type metadata accessor for OnChangeAfterInitialSetupModifier();
  if (sub_20D0F0480())
  {
    return (*(a1 + *(v2 + 40)))();
  }

  else
  {
    return sub_20D0F04E0();
  }
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for OnChangeAfterInitialSetupModifier() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);

  v6 = sub_20D567518();
  v7 = *(*(v1 - 8) + 8);
  v7(v0 + v4 + *(v6 + 32), v1);
  v7(v0 + v4 + v2[11], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20D0F0DB8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for OnChangeAfterInitialSetupModifier() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

void sub_20D0F0EC4()
{
  sub_20D567518();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_20CF507E0();
      if (v2 <= 0x3F)
      {
        sub_20CF0BE4C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20D0F0F84(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((((v7 + ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v18 + v6 + 8) & ~v6);
    }

    v19 = *v18;
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

_BYTE *sub_20D0F10E8(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 16) & ~v8)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 16) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 16) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((*(*(*(a4 + 16) - 8) + 64) + v8 + ((v8 + 16) & ~v8)) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_20D0F13DC(uint64_t a1)
{
  v3 = OBJC_IVAR___HUUtilityOnboardingTermsViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20D0F1434(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUUtilityOnboardingTermsViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id UtilityOnboardingTermsViewController.init(context:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___HUUtilityOnboardingTermsViewController_delegate] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingTermsViewController_agreeButton] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingTermsViewController_onboardingContext] = a1;
  swift_getKeyPath();
  v25 = a1;
  sub_20D0B8DF4(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v4 = a1;
  sub_20D563908();

  v5 = &v4[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID];
  swift_beginAccess();
  if (*(v5 + 1))
  {
    v6 = *v5;
    v7 = *(v5 + 1);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v1[OBJC_IVAR___HUUtilityOnboardingTermsViewController_utilityID];
  *v8 = v6;
  *(v8 + 1) = v7;
  swift_getKeyPath();
  v24 = v4;
  sub_20D5663C8();
  sub_20D563908();

  v9 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v10 = *&v4[v9];
  if (!v10 || (v11 = v10, v12 = sub_20D564BB8(), v14 = v13, v11, !v14))
  {

    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = &v2[OBJC_IVAR___HUUtilityOnboardingTermsViewController_termsAndConditions];
  *v15 = v12;
  v15[1] = v14;
  v22 = v12;
  v23 = v14;
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821420));
  sub_20D5663C8();
  *&v2[OBJC_IVAR___HUUtilityOnboardingTermsViewController_rootVC] = sub_20D566C08();
  v17 = sub_20D5677F8();
  v18 = HULocalizedString(v17);

  if (!v18)
  {
    sub_20D567838();
    v18 = sub_20D5677F8();
  }

  v21.receiver = v2;
  v21.super_class = type metadata accessor for UtilityOnboardingTermsViewController();
  v19 = objc_msgSendSuper2(&v21, sel_initWithTitle_detailText_icon_contentLayout_, v18, 0, 0, 2);

  return v19;
}

id sub_20D0F181C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v58 - v2;
  v4 = sub_20D563BA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UtilityOnboardingTermsViewController();
  v62.receiver = v0;
  v62.super_class = v8;
  objc_msgSendSuper2(&v62, sel_viewDidLoad);
  sub_20D0F20B8();
  v9 = sub_20CEF3A4C(&unk_2823CEA50);
  sub_20CEF928C(&unk_2823CEA70, &unk_27C81E440);
  v10 = [v0 headerView];
  v11 = [v10 subviews];

  if (!v11)
  {
    sub_20CECF940(0, &qword_28111FB70);
    sub_20D567A78();
    v11 = sub_20D567A58();
  }

  v12 = objc_opt_self();
  v13 = sub_20D567738();
  [v12 setAccessibilityIDForViews:v11 withIDDictionary:v13];

  v14 = *&v0[OBJC_IVAR___HUUtilityOnboardingTermsViewController_rootVC];
  result = [v14 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = result;
  v61 = v9;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v14 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = result;
  v18 = [v0 contentView];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v17 setFrame_];
  [v0 addChildViewController_];
  v27 = [v0 contentView];
  result = [v14 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = result;
  v58 = v5;
  v59 = v4;
  v60 = v7;
  [v27 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20D5BF1C0;
  result = [v14 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = result;
  v31 = [result topAnchor];

  v32 = [v0 contentView];
  v33 = [v32 topAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v29 + 32) = v34;
  result = [v14 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = result;
  v36 = [result centerXAnchor];

  v37 = [v0 contentView];
  v38 = [v37 centerXAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(v29 + 40) = v39;
  result = [v14 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v40 = result;
  v41 = [result leadingAnchor];

  v42 = [v0 contentView];
  v43 = [v42 leadingAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v29 + 48) = v44;
  result = [v14 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v45 = result;
  v46 = [result trailingAnchor];

  v47 = [v0 contentView];
  v48 = [v47 trailingAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v29 + 56) = v49;
  result = [v14 view];
  if (result)
  {
    v50 = result;

    v51 = objc_opt_self();
    v52 = [v50 bottomAnchor];

    v53 = [v0 contentView];
    v54 = [v53 bottomAnchor];

    v55 = [v52 constraintEqualToAnchor_];
    *(v29 + 64) = v55;
    sub_20CECF940(0, &qword_28111FEC0);
    v56 = sub_20D567A58();

    [v51 activateConstraints_];

    [v0 updateViewConstraints];
    sub_20D563AE8();
    (*(v58 + 104))(v60, *MEMORY[0x277D17000], v59);
    sub_20D5663C8();
    sub_20D563B78();
    v57 = sub_20D563B98();
    (*(*(v57 - 8) + 56))(v3, 0, 1, v57);
    sub_20D563B48();
    swift_allocObject();
    sub_20D563B38();
    MEMORY[0x20F318F80]();
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_20D0F20B8()
{
  v1 = [v0 navigationItem];
  v2 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v3 = v0;
  v4 = [v2 initWithBarButtonSystemItem:1 target:v3 action:sel_cancelOnboardingWithSender_];
  [v1 setLeftBarButtonItem_];

  v5 = [v3 navigationItem];
  v6 = [v5 leftBarButtonItem];

  if (v6)
  {
    v7 = sub_20D5677F8();
    [v6 setAccessibilityIdentifier_];
  }

  v8 = sub_20D5677F8();
  v9 = HULocalizedString(v8);

  if (!v9)
  {
    sub_20D567838();
    v9 = sub_20D5677F8();
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v9 style:0 target:v3 action:sel_cancelOnboardingWithSender_];

  v11 = v10;
  v12 = sub_20D5677F8();
  [v11 setAccessibilityIdentifier_];

  v13 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:v3 action:0];
  v14 = sub_20D5677F8();
  v15 = HULocalizedString(v14);

  if (!v15)
  {
    sub_20D567838();
    v15 = sub_20D5677F8();
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v15 style:0 target:v3 action:sel_didAcceptConsentWithSender_];

  v17 = v16;
  v18 = sub_20D5677F8();
  [v17 setAccessibilityIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20D5BECD0;
  *(v19 + 32) = v11;
  *(v19 + 40) = v13;
  *(v19 + 48) = v17;
  sub_20CECF940(0, &qword_27C821440);
  v25 = v11;
  v20 = v17;
  v21 = v13;
  v22 = sub_20D567A58();

  [v3 setToolbarItems:v22 animated:1];

  v23 = [v3 navigationController];
  if (v23)
  {
    v24 = v23;
    [v23 setToolbarHidden_];
  }
}

uint64_t sub_20D0F2480()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_20D563BA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D565988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v13 = qword_27C838280;
  sub_20D565998();
  v14 = sub_20D565968();
  v15 = sub_20D567EC8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = v4;
    v19 = v5;
    v20 = v8;
    v21 = v18;
    v36[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_20CEE913C(0xD000000000000019, 0x800000020D5DA620, v36);
    _os_log_impl(&dword_20CEB6000, v14, v15, "%s User tapped button to cancel onboarding", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v21;
    v8 = v20;
    v5 = v19;
    v4 = v32;
    MEMORY[0x20F31FC70](v22, -1, -1);
    v23 = v17;
    v1 = v33;
    MEMORY[0x20F31FC70](v23, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_20D563AE8();
  (*(v6 + 104))(v8, *MEMORY[0x277D16FC8], v5);
  sub_20D5663C8();
  sub_20D563B78();
  v24 = sub_20D563B98();
  (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();

  v25 = OBJC_IVAR___HUUtilityOnboardingTermsViewController_delegate;
  result = swift_beginAccess();
  v27 = *(v1 + v25);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    v34 = sub_20D567838();
    v35 = v29;
    swift_unknownObjectRetain();
    sub_20D5687F8();
    *(inited + 96) = MEMORY[0x277D83E88];
    *(inited + 72) = 16;
    sub_20CEF49C8(inited);
    swift_setDeallocating();
    sub_20CEF928C(inited + 32, &qword_27C81D8D0);
    v30 = sub_20D567738();

    [v27 viewController:v1 didFinishWithConfigurationResults:v30];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20D0F29D8()
{
  v0 = sub_20D565988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v36 - v5;
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v7 = qword_27C838280;
  sub_20D565998();
  v8 = sub_20D565968();
  v9 = sub_20D567EC8();
  v10 = os_log_type_enabled(v8, v9);
  v36[0] = v1;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v39 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_20CEE913C(0xD000000000000019, 0x800000020D5DA600, &v39);
    _os_log_impl(&dword_20CEB6000, v8, v9, "%s user tapped agree button", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F31FC70](v12, -1, -1);
    MEMORY[0x20F31FC70](v11, -1, -1);
  }

  v13 = *(v1 + 8);
  v13(v6, v0);
  v14 = sub_20D564B68();
  v40 = v14;
  v41 = sub_20D0B8DF4(&qword_27C81BEB0, MEMORY[0x277D073A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  (*(*(v14 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v14);
  LOBYTE(v14) = sub_20D563968();
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v16 = sub_20D567838();
  v18 = v17;
  v19 = 17;
  if (v14)
  {
    v19 = 8;
  }

  v40 = MEMORY[0x277D83B88];
  *&v39 = v19;
  sub_20CEC80B0(&v39, v38);
  v20 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v20;
  sub_20CEEF74C(v38, v16, v18, isUniquelyReferenced_nonNull_native);

  v22 = v37;
  sub_20D565998();
  v23 = sub_20D565968();
  v24 = sub_20D567EC8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v39 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_20CEE913C(0xD000000000000019, 0x800000020D5DA600, &v39);
    *(v25 + 12) = 2080;
    sub_20D5663C8();
    v27 = sub_20D567768();
    v29 = v28;

    v30 = sub_20CEE913C(v27, v29, &v39);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_20CEB6000, v23, v24, "%s Finished with results %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v26, -1, -1);
    MEMORY[0x20F31FC70](v25, -1, -1);
  }

  v13(v3, v0);
  v31 = OBJC_IVAR___HUUtilityOnboardingTermsViewController_delegate;
  v32 = v36[1];
  swift_beginAccess();
  v33 = *(v32 + v31);
  if (!v33)
  {
  }

  swift_unknownObjectRetain();
  sub_20CF27E80(v22);

  v34 = sub_20D567738();

  [v33 viewController:v32 didFinishWithConfigurationResults:v34];

  return swift_unknownObjectRelease();
}

uint64_t sub_20D0F2F1C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_20D568628();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

id UtilityOnboardingTermsViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20D5677F8();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20D5677F8();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20D5677F8();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id UtilityOnboardingTermsViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20D5677F8();

  if (a4)
  {
    v12 = sub_20D5677F8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id UtilityOnboardingTermsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityOnboardingTermsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_20D0F32EC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_20D566BA8();
  v17 = 1;
  sub_20D0F3418(&v9);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v25[0] = v9;
  v25[1] = v10;
  v25[2] = v11;
  v25[3] = v12;
  v25[4] = v13;
  v25[5] = v14;
  v25[6] = v15;
  sub_20D0F3808(&v18, &v8);
  sub_20CEF928C(v25, &qword_27C821438);
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[103] = v24;
  *&v16[7] = v18;
  *&v16[23] = v19;
  *&v16[39] = v20;
  v3 = *&v16[80];
  *(a1 + 81) = *&v16[64];
  *(a1 + 97) = v3;
  *(a1 + 113) = *&v16[96];
  v4 = *&v16[16];
  *(a1 + 17) = *v16;
  *(a1 + 33) = v4;
  result = *&v16[32];
  v6 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  v7 = v17;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 128) = *&v16[111];
  *(a1 + 65) = v6;
  *(a1 + 136) = 256;
  return result;
}

uint64_t sub_20D0F3418@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20D5677F8();
  v3 = HULocalizedString(v2);

  sub_20D567838();
  sub_20CEF44D8();
  v4 = sub_20D5670E8();
  v6 = v5;
  v8 = v7;
  sub_20D567058();
  v9 = sub_20D5670C8();
  v29 = v10;
  v27 = v11;
  v28 = v12;

  sub_20CF13F34(v4, v6, v8 & 1);

  v13 = sub_20D5677F8();
  v14 = HULocalizedString(v13);

  sub_20D567838();
  v15 = sub_20D5670E8();
  v17 = v16;
  LOBYTE(v2) = v18;
  v20 = v19;
  sub_20D5663C8();
  sub_20D566B48();
  v21 = sub_20D5670D8();
  v23 = v22;
  LOBYTE(v3) = v24 & 1;
  *a1 = v9;
  *(a1 + 8) = v29;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v28;
  *(a1 + 32) = v15;
  *(a1 + 40) = v17;
  *(a1 + 48) = v2 & 1;
  *(a1 + 56) = v20;
  *(a1 + 64) = 0x403E000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = v21;
  *(a1 + 88) = v22;
  *(a1 + 96) = v24 & 1;
  *(a1 + 104) = v25;
  sub_20CF14B58(v9, v29, v27 & 1);
  sub_20D5663C8();
  sub_20CF14B58(v15, v17, v2 & 1);
  sub_20D5663C8();
  sub_20CF14B58(v21, v23, v3);
  sub_20D5663C8();
  sub_20CF13F34(v21, v23, v3);

  sub_20CF13F34(v15, v17, v2 & 1);

  sub_20CF13F34(v9, v29, v27 & 1);
}

uint64_t sub_20D0F3808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D0F3878()
{
  result = qword_27C821448;
  if (!qword_27C821448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821450);
    sub_20D0F3904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821448);
  }

  return result;
}

unint64_t sub_20D0F3904()
{
  result = qword_27C821458;
  if (!qword_27C821458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27C821460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821458);
  }

  return result;
}

uint64_t sub_20D0F3968(void *a1)
{
  v1 = a1;
  v2 = [v1 home];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 isUserBeingEditedTheDeviceUser];
    v5 = [v1 userSettingsItemModule];
    v6 = [v5 isNull];

    LODWORD(v5) = [v3 hf_hasHomePods];
    return v4 & v5 & (v6 ^ 1);
  }

  else
  {

    return 0;
  }
}

id sub_20D0F3CD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20D0F3D30()
{
  result = [objc_allocWithZone(type metadata accessor for DashboardPresentationManager()) init];
  qword_281120550 = result;
  return result;
}

id static DashboardPresentationManager.shared.getter()
{
  if (qword_281120548 != -1)
  {
    swift_once();
  }

  v1 = qword_281120550;

  return v1;
}

uint64_t sub_20D0F3E18(uint64_t a1, uint64_t *a2)
{
  sub_20D0F3ED4(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR___HUDashboardPresentationManager_delegate;
  swift_beginAccess();
  sub_20D0F3FA4(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_20D0F3E7C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HUDashboardPresentationManager_delegate;
  swift_beginAccess();
  return sub_20D0F3ED4(v1 + v3, a1);
}

uint64_t sub_20D0F3ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D0F3F44(uint64_t a1)
{
  v3 = OBJC_IVAR___HUDashboardPresentationManager_delegate;
  swift_beginAccess();
  sub_20D0F3FA4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20D0F3FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821480);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id DashboardPresentationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardPresentationManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DashboardPresentationManager.navigationController(_:willShow:animated:)(UINavigationController *_, UIViewController *willShow, Swift::Bool animated)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v25 = willShow;
  v9 = [v8 context];
  [v3 navigationController:_ willPresent:v9 animated:animated];

  if (!animated)
  {
    if ([v8 isOverlay])
    {
      v10 = type metadata accessor for DashboardAnimator();
      v11 = objc_allocWithZone(v10);
      swift_unknownObjectWeakInit();
      v12 = &v11[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame];
      *v12 = 0u;
      *(v12 + 1) = 0u;
      v12[32] = 1;
      *&v11[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewLayout] = 0;
      v13 = &v11[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset];
      v14 = *(MEMORY[0x277D768C8] + 16);
      *v13 = *MEMORY[0x277D768C8];
      v13[1] = v14;
      *&v11[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetNavigationBarAppearance] = 0;
      v11[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_style] = 0;
      v26.receiver = v11;
      v26.super_class = v10;
      v15 = [(UINavigationController *)&v26 init];
    }

    else
    {
      v16 = [(UINavigationController *)_ viewControllers];
      sub_20CECF940(0, &qword_28111FF50);
      v17 = sub_20D567A78();

      if (v17 >> 62)
      {
        v18 = sub_20D568768();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18 != 1)
      {
        goto LABEL_3;
      }

      v19 = type metadata accessor for DashboardAnimator();
      v20 = objc_allocWithZone(v19);
      swift_unknownObjectWeakInit();
      v21 = &v20[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame];
      *v21 = 0u;
      *(v21 + 1) = 0u;
      v21[32] = 1;
      *&v20[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewLayout] = 0;
      v22 = &v20[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset];
      v23 = *(MEMORY[0x277D768C8] + 16);
      *v22 = *MEMORY[0x277D768C8];
      v22[1] = v23;
      *&v20[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetNavigationBarAppearance] = 0;
      v20[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_style] = 1;
      v27.receiver = v20;
      v27.super_class = v19;
      v15 = [(UINavigationController *)&v27 init];
    }

    v24 = v15;
    sub_20CFBDD50(_);

    return;
  }

LABEL_3:
}

void sub_20D0F465C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v25 = a3;
  v6 = sub_20D563DB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_20D564208();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 104))(v14, *MEMORY[0x277D15B08], v10, v12);
  sub_20D0F572C(&unk_281120980, MEMORY[0x277D15B10]);
  v15 = sub_20D563978();
  (*(v11 + 8))(v14, v10);
  if (v15 & 1) != 0 && ((*(v7 + 104))(v9, *MEMORY[0x277D15248], v6), sub_20D0F572C(&qword_2811209A0, MEMORY[0x277D15260]), v16 = sub_20D563978(), (*(v7 + 8))(v9, v6), (v16))
  {
    v17 = OBJC_IVAR___HUDashboardPresentationManager_delegate;
    swift_beginAccess();
    sub_20D0F3ED4(v4 + v17, v29);
    if (v30)
    {
      sub_20CECF7A0(v29, v26);
      sub_20D0F5774(v29);
      v18 = v27;
      v19 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v19 + 8))(a2, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    else
    {
      sub_20D0F5774(v29);
    }
  }

  else
  {
    v20 = [objc_opt_self() sharedManager];
    [v20 setCurrentContext_];
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = [v21 filterBarController];
    if (v22)
    {
      v23 = v22;
      sub_20D09D3A8(a2, v25 & 1);
    }
  }
}

void sub_20D0F4A54(void *a1, void *a2)
{
  v3 = [a1 viewControllers];
  sub_20CECF940(0, &qword_28111FF50);
  v4 = sub_20D567A78();

  v21 = a1;
  if (v4 >> 62)
  {
LABEL_27:
    v5 = sub_20D568768();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_28:

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_28;
  }

LABEL_3:
  v6 = 0;
  while ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x20F31DD20](v6, v4);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v23 = v7;
    sub_20CECF940(0, &qword_28111FB10);
    v9 = [v23 navigationItem];
    v10 = sub_20D5683F8();

    if (v10)
    {
      goto LABEL_13;
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_28;
    }
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_27;
  }

  v7 = *(v4 + 8 * v6 + 32);
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 context];
    v14 = OBJC_IVAR___HUDashboardContext_filterPresentationStyle;
    swift_beginAccess();
    v15 = *&v13[v14];

    if (v15)
    {
      v16 = [v21 navigationBar];
      v17 = [v16 topItem];

      if (v17)
      {
        v18 = [v17 _bottomPalette];

        if (v18)
        {
          [a2 _setBottomPalette_];
          v19 = [a2 _bottomPalette];
          if (v19)
          {
            v20 = v19;
            [v19 setMinimumHeight_];
          }
        }
      }
    }

    if ([v12 isOverlay])
    {
      [a2 setHidesBackButton_];
    }
  }
}

void sub_20D0F4D84(void *a1, void *a2)
{
  v2 = [a1 viewControllers];
  sub_20CECF940(0, &qword_28111FF50);
  v3 = sub_20D567A78();

  if (v3 >> 62)
  {
LABEL_22:
    v4 = sub_20D568768();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_23:

    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  while ((v3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x20F31DD20](v5, v3);
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v17 = v6;
    sub_20CECF940(0, &qword_28111FB10);
    v8 = [v17 navigationItem];
    v9 = sub_20D5683F8();

    if (v9)
    {
      goto LABEL_13;
    }

    ++v5;
    if (v7 == v4)
    {
      goto LABEL_23;
    }
  }

  if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = *(v3 + 8 * v5 + 32);
  v7 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 context];
    v12 = OBJC_IVAR___HUDashboardContext_filterPresentationStyle;
    swift_beginAccess();
    v13 = *&v11[v12];

    if (v13 == 1)
    {
      v14 = [a2 _bottomPalette];
      if (v14)
      {
        v15 = v14;
        [v14 setMinimumHeight_];
      }
    }
  }
}

void sub_20D0F5004(void *a1, double a2)
{
  v3 = [a1 topViewController];
  if (!v3)
  {
    return;
  }

  v22 = v3;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 context];
    v7 = OBJC_IVAR___HUDashboardContext_filterPresentationStyle;
    swift_beginAccess();
    v8 = *&v6[v7];

    if (!v8 || (v9 = [v5 navigationItem], v10 = objc_msgSend(v9, sel__bottomPalette), v9, !v10))
    {

      return;
    }

    [v10 preferredHeight];
    v12 = v11;
    [v10 setPreferredHeight_];
    v13 = v22;
    v14 = [v5 collectionView];
    if (v14)
    {
      v15 = v14;
      [v14 contentOffset];
      v17 = v16;
      v19 = v18;

      v20 = [v5 collectionView];
      if (v20)
      {
        v21 = a2 - v12;
        if (a2 - v12 < 0.0)
        {
          v21 = 0.0;
        }

        [v20 _setContentOffsetPinned_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }
}

uint64_t _s6HomeUI28DashboardPresentationManagerC20navigationController_09animationG3For4from2toSo06UIViewG21AnimatedTransitioning_pSgSo012UINavigationG0C_So0oG9OperationVSo0lG0CAOtF_0(void *a1, uint64_t a2, void *a3, void *a4)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v9 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v10 = result;
      v11 = a3;
      v12 = a4;
      v13 = [v9 isOverlay];
      v14 = [v10 isOverlay];
      if (a2 == 2)
      {
        if (v13)
        {
          if ((v14 & 1) == 0)
          {
            v21 = type metadata accessor for DashboardAnimator();
            v22 = objc_allocWithZone(v21);
            swift_unknownObjectWeakInit();
            v23 = &v22[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame];
            *v23 = 0u;
            *(v23 + 1) = 0u;
            v23[32] = 1;
            *&v22[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewLayout] = 0;
            v24 = &v22[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset];
            v25 = *(MEMORY[0x277D768C8] + 16);
            *v24 = *MEMORY[0x277D768C8];
            v24[1] = v25;
            *&v22[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetNavigationBarAppearance] = 0;
            v22[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_style] = 1;
            v20 = objc_msgSendSuper2(&v40, sel_init, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v22, v21);
            goto LABEL_13;
          }
        }

        else if ((v14 & 1) == 0)
        {
          v32 = type metadata accessor for DashboardAnimator();
          v33 = objc_allocWithZone(v32);
          swift_unknownObjectWeakInit();
          v34 = &v33[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame];
          *v34 = 0u;
          *(v34 + 1) = 0u;
          v34[32] = 1;
          *&v33[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewLayout] = 0;
          v35 = &v33[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset];
          v36 = *(MEMORY[0x277D768C8] + 16);
          *v35 = *MEMORY[0x277D768C8];
          v35[1] = v36;
          *&v33[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetNavigationBarAppearance] = 0;
          v33[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_style] = 1;
          v41.receiver = v33;
          v41.super_class = v32;
          v37 = objc_msgSendSuper2(&v41, sel_init);
          sub_20CFBDD50(a1);

          return 0;
        }
      }

      else if (a2 == 1)
      {
        if (v13)
        {
          if (v14)
          {
            v15 = type metadata accessor for DashboardAnimator();
            v16 = objc_allocWithZone(v15);
            swift_unknownObjectWeakInit();
            v17 = &v16[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame];
            *v17 = 0u;
            *(v17 + 1) = 0u;
            v17[32] = 1;
            *&v16[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewLayout] = 0;
            v18 = &v16[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset];
            v19 = *(MEMORY[0x277D768C8] + 16);
            *v18 = *MEMORY[0x277D768C8];
            v18[1] = v19;
            *&v16[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetNavigationBarAppearance] = 0;
            v16[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_style] = 2;
            v20 = objc_msgSendSuper2(&v38, sel_init, v16, v15, v39.receiver, v39.super_class, v40.receiver, v40.super_class);
LABEL_13:
            v31 = v20;

            return v31;
          }
        }

        else if (v14)
        {
          v26 = type metadata accessor for DashboardAnimator();
          v27 = objc_allocWithZone(v26);
          swift_unknownObjectWeakInit();
          v28 = &v27[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewFrame];
          *v28 = 0u;
          *(v28 + 1) = 0u;
          v28[32] = 1;
          *&v27[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetCollectionViewLayout] = 0;
          v29 = &v27[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetContentInset];
          v30 = *(MEMORY[0x277D768C8] + 16);
          *v29 = *MEMORY[0x277D768C8];
          v29[1] = v30;
          *&v27[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_targetNavigationBarAppearance] = 0;
          v27[OBJC_IVAR____TtC6HomeUI17DashboardAnimator_style] = 0;
          v20 = objc_msgSendSuper2(&v39, sel_init, v38.receiver, v38.super_class, v27, v26, v40.receiver, v40.super_class);
          goto LABEL_13;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_20D0F572C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D0F5774(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20D0F57DC(double *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_dimension;
  result = swift_beginAccess();
  v6 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 setNeedsUpdateConstraints];
  }

  return result;
}

double sub_20D0F584C()
{
  v1 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_dimension;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_20D0F5890(double a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_dimension;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  *&v1[v3] = a1;
  if (v5 != a1)
  {
    return [v1 setNeedsUpdateConstraints];
  }

  return result;
}

void (*sub_20D0F58FC(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_dimension;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_20D0F5990;
}

void sub_20D0F5990(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[4] setNeedsUpdateConstraints];
  }

  free(v1);
}

char *sub_20D0F59F0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconDescriptor] = 0;
  v4[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_useIntrinsicContentSizeFromAsset] = 1;
  *&v4[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_dimension] = 0x4045000000000000;
  v9 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D180D0]) initWithFrame:4 contentMode:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_backgroundView] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for IconRoundButtonView();
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconView;
  v12 = *&v10[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconView];
  v13 = v10;
  [v13 addSubview_];
  [*&v10[v11] setIconSize_];
  [*&v10[v11] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v10[v11] setUseIntrinsicContentSizeFromAsset_];
  [v13 setNeedsUpdateConstraints];

  return v13;
}

id sub_20D0F5D1C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = a1[6];
  *&v1[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconDescriptor] = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v8 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconView;
  [*&v1[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconView] setContentMode_];
  if (v5)
  {
    [*&v1[v8] setVibrancyEffect:v5 animated:1];
  }

  else
  {
    [*&v1[v8] setVibrancyEffect_];
  }

  v1[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_useIntrinsicContentSizeFromAsset] = v6;
  [*&v1[v8] setUseIntrinsicContentSizeFromAsset_];
  [*&v1[v8] updateWithIconDescriptor:v7 displayStyle:v2 animated:1];
  if ((v4 & 1) == 0)
  {
    [v1 setBackgroundColor_];
    [v1 setClipsToBounds_];
    v13 = *&v1[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_backgroundView];
    [v13 setHidden_];
    goto LABEL_8;
  }

  v9 = objc_opt_self();
  v10 = v3;
  v11 = [v9 clearColor];
  [v1 setBackgroundColor_];

  [v1 setClipsToBounds_];
  v12 = *&v1[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_backgroundView];
  if (v12)
  {
    v13 = v12;
    [v13 setHidden_];
LABEL_8:

    goto LABEL_9;
  }

  *&v1[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_backgroundView] = v3;
  v15 = v10;
  [v1 addSubview_];
  [v1 sendSubviewToBack_];
  [v1 bounds];
  [v15 setFrame_];
  [v15 setAutoresizingMask_];
LABEL_9:

  return [v1 setNeedsUpdateConstraints];
}

id sub_20D0F5F7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20D5C9560;
  v2 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconView;
  v3 = [*&v0[OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconView] widthAnchor];
  v4 = [v0 widthAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [*&v0[v2] heightAnchor];
  v7 = [v0 heightAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v1 + 40) = v8;
  v9 = [*&v0[v2] centerXAnchor];
  v10 = [v0 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v1 + 48) = v11;
  v12 = [*&v0[v2] centerYAnchor];
  v13 = [v0 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v1 + 56) = v14;
  v15 = [v0 widthAnchor];
  v16 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_dimension;
  swift_beginAccess();
  v17 = [v15 constraintEqualToConstant_];

  *(v1 + 64) = v17;
  v18 = [v0 heightAnchor];
  v19 = [v18 constraintEqualToConstant_];

  *(v1 + 72) = v19;
  v20 = objc_opt_self();
  v21 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconConstraints;
  sub_20CF0AC18();
  sub_20D5663C8();
  v22 = sub_20D567A58();

  [v20 deactivateConstraints_];

  *&v0[v21] = v1;
  sub_20D5663C8();

  v23 = sub_20D567A58();

  [v20 activateConstraints_];

  v25.receiver = v0;
  v25.super_class = type metadata accessor for IconRoundButtonView();
  return objc_msgSendSuper2(&v25, sel_updateConstraints);
}

id IconRoundButtonView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconRoundButtonView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20D0F6494()
{
  *(v0 + OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconDescriptor) = 0;
  *(v0 + OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_useIntrinsicContentSizeFromAsset) = 1;
  *(v0 + OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_dimension) = 0x4045000000000000;
  v1 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_iconView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D180D0]) initWithFrame:4 contentMode:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_backgroundView) = 0;
  sub_20D568A58();
  __break(1u);
}

id sub_20D0F6578(void *a1)
{
  v1 = [a1 systemCyanColor];

  return v1;
}

id static UIColor.climate.getter()
{
  v0 = [swift_getObjCClassFromMetadata() systemCyanColor];

  return v0;
}

id sub_20D0F65EC()
{
  v0 = sub_20D5672F8();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  sub_20D567388();
  sub_20D0F67EC();
  v4 = sub_20D568348();

  return v4;
}

uint64_t static UIColor.energy.getter()
{
  v0 = sub_20D5672F8();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  sub_20D567388();
  sub_20D0F67EC();
  return sub_20D568348();
}

unint64_t sub_20D0F67EC()
{
  result = qword_28111FB60;
  if (!qword_28111FB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FB60);
  }

  return result;
}

id sub_20D0F6838(void *a1)
{
  v1 = [a1 systemYellowColor];

  return v1;
}

id static UIColor.lighting.getter()
{
  v0 = [swift_getObjCClassFromMetadata() systemYellowColor];

  return v0;
}

id sub_20D0F68AC()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4[4] = sub_20D0F6A44;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_20CFF02FC;
  v4[3] = &block_descriptor_3;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  return v2;
}

id static UIColor.media.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4[4] = sub_20D0F6A44;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_20CFF02FC;
  v4[3] = &block_descriptor_49;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  return v2;
}

id sub_20D0F6A44(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_blackColor;
  if (v1 != 1)
  {
    v3 = &selRef_whiteColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_20D0F6AB0(void *a1)
{
  v1 = [a1 systemMintColor];

  return v1;
}

id static UIColor.security.getter()
{
  v0 = [swift_getObjCClassFromMetadata() systemMintColor];

  return v0;
}

id sub_20D0F6B24(void *a1)
{
  v1 = [a1 systemBlueColor];

  return v1;
}

id static UIColor.water.getter()
{
  v0 = [swift_getObjCClassFromMetadata() systemBlueColor];

  return v0;
}

id UIColor.color(for:)(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v3 = [v1 resolvedColorWithTraitCollection_];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v2 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v3 = [v1 resolvedColorWithTraitCollection_];
LABEL_5:
    v4 = v3;

    return v4;
  }

  return v1;
}

id sub_20D0F6C8C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = UIColor.color(for:)(a3);

  return v5;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D0F6CF8()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_27C8382D8);
  __swift_project_value_buffer(v0, qword_27C8382D8);
  return sub_20D565978();
}

uint64_t sub_20D0F6E58()
{
  v1 = (v0 + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v2 = *v1;
  sub_20CEC81F4(*v1);
  return v2;
}

void sub_20D0F6EB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_20D0F6FE0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_20CEC8164(v6);
}

uint64_t sub_20D0F7040@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20D056ED0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20CEC81F4(v4);
}

uint64_t sub_20D0F70E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20CFC42B8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20CEC81F4(v3);
  return sub_20CEC8164(v8);
}

uint64_t sub_20D0F7208()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_27C8382F0);
  v1 = __swift_project_value_buffer(v0, qword_27C8382F0);
  if (qword_27C81A350 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27C8382D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_20D0F72D0()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  v1[4] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821530);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D0F73F4, 0, 0);
}

uint64_t sub_20D0F73F4()
{
  v0[10] = *(v0[2] + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_session);

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_20D0F74AC;
  v2 = v0[9];

  return MEMORY[0x28215FB78](v2);
}

uint64_t sub_20D0F74AC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_20D0F77EC;
  }

  else
  {

    v2 = sub_20D0F75C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20D0F75C8()
{
  v1 = v0[2];
  v19 = OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_preferenceChangesTask;
  v2 = v1;
  if (*&v1[OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_preferenceChangesTask])
  {

    sub_20D567C88();

    v2 = v0[2];
  }

  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v17 = v4;
  v18 = v0[3];
  v9 = sub_20D567C58();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v6 + 16))(v3, v4, v8);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = (v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v6 + 32))(v12 + v10, v3, v8);
  *(v12 + v11) = v2;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v13 = v2;
  v14 = sub_20CF18960(0, 0, v7, &unk_20D5C95C0, v12);
  (*(v6 + 8))(v17, v8);
  *&v1[v19] = v14;

  v15 = v0[1];

  return v15();
}

uint64_t sub_20D0F77EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D0F7878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_20D563A28();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821550);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = sub_20D5639E8();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821568);
  v5[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821570);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D0F7A94, 0, 0);
}

uint64_t sub_20D0F7A94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821530);
  sub_20D567C68();
  *(v0 + 176) = OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_meDeviceUpdateCallback;
  swift_beginAccess();
  v1 = *MEMORY[0x277D09178];
  *(v0 + 192) = *MEMORY[0x277D091A0];
  *(v0 + 196) = v1;
  v2 = *MEMORY[0x277D09180];
  *(v0 + 200) = *MEMORY[0x277D09198];
  *(v0 + 204) = v2;
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_20D0F7BBC;
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t sub_20D0F7BBC()
{

  return MEMORY[0x2822009F8](sub_20D0F7CB8, 0, 0);
}

uint64_t sub_20D0F7CB8()
{
  v66 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    if (qword_27C81A358 != -1)
    {
      swift_once();
    }

    v4 = sub_20D565988();
    __swift_project_value_buffer(v4, qword_27C8382F0);
    v5 = sub_20D565968();
    v6 = sub_20D567EC8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20CEB6000, v5, v6, "Successfully startMonitoringPreferencesChange", v7, 2u);
      MEMORY[0x20F31FC70](v7, -1, -1);
    }

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 192);
    v11 = *(v0 + 136);
    (*(v3 + 32))(v11, v1, v2);
    v12 = (*(v3 + 88))(v11, v2);
    if (v12 == v10)
    {
      v13 = *(v0 + 136);
      v14 = *(v0 + 112);
      (*(*(v0 + 128) + 96))(v13, *(v0 + 120));
      sub_20D0FBCDC(v13, v14);
      if (qword_27C81A358 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 104);
      v16 = *(v0 + 112);
      v17 = sub_20D565988();
      __swift_project_value_buffer(v17, qword_27C8382F0);
      sub_20D0FBD4C(v16, v15);
      v18 = sub_20D565968();
      v19 = sub_20D567EC8();
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 104);
      if (v20)
      {
        v22 = *(v0 + 96);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v65 = v24;
        *v23 = 136315138;
        sub_20D0FBD4C(v21, v22);
        v25 = sub_20D567858();
        v27 = v26;
        sub_20CEF928C(v21, &qword_27C821550);
        v28 = sub_20CEE913C(v25, v27, &v65);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_20CEB6000, v18, v19, "Preferences stream receive meDevice updated: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x20F31FC70](v24, -1, -1);
        MEMORY[0x20F31FC70](v23, -1, -1);
      }

      else
      {

        sub_20CEF928C(v21, &qword_27C821550);
      }

      v35 = *(v0 + 88);
      v36 = *(v0 + 56);
      v37 = *(v0 + 64);
      sub_20D0FBD4C(*(v0 + 112), v35);
      v38 = (*(v37 + 48))(v35, 1, v36);
      v39 = *(v0 + 176);
      if (v38 == 1)
      {
        v40 = *(v0 + 48);
        sub_20CEF928C(*(v0 + 88), &qword_27C821550);
        v41 = *(v40 + v39);
        if (v41)
        {

          v41(0);
          sub_20CEC8164(v41);
        }

        v42 = *(v0 + 112);
      }

      else
      {
        v50 = *(v0 + 48);
        (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 88), *(v0 + 56));
        sub_20D563A18();
        sub_20D563A08();
        v51 = sub_20D5639F8();
        v52 = objc_allocWithZone(HULocationDevice);
        v53 = sub_20D5677F8();

        v54 = sub_20D5677F8();

        v55 = [v52 initWithIdentifier:v53 name:v54 isThisDevice:v51 & 1];

        v56 = *(v50 + v39);
        if (v56)
        {
          sub_20CEC81F4(*(v50 + v39));
          v57 = v55;
          v56(v55);

          sub_20CEC8164(v56);
        }

        v58 = *(v0 + 112);
        v60 = *(v0 + 64);
        v59 = *(v0 + 72);
        v61 = *(v0 + 56);

        (*(v60 + 8))(v59, v61);
        v42 = v58;
      }

      sub_20CEF928C(v42, &qword_27C821550);
    }

    else if (v12 == *(v0 + 196) || v12 == *(v0 + 200) || v12 == *(v0 + 204))
    {
      if (qword_27C81A358 != -1)
      {
        swift_once();
      }

      v31 = sub_20D565988();
      __swift_project_value_buffer(v31, qword_27C8382F0);
      v32 = sub_20D565968();
      v33 = sub_20D567EC8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_20CEB6000, v32, v33, "Preferences stream, update received but meDevice did not change", v34, 2u);
        MEMORY[0x20F31FC70](v34, -1, -1);
      }
    }

    else
    {
      if (qword_27C81A358 != -1)
      {
        swift_once();
      }

      v43 = sub_20D565988();
      __swift_project_value_buffer(v43, qword_27C8382F0);
      v44 = sub_20D565968();
      v45 = sub_20D567EA8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_20CEB6000, v44, v45, "Unknown update type, meDevice did not change", v46, 2u);
        MEMORY[0x20F31FC70](v46, -1, -1);
      }

      v48 = *(v0 + 128);
      v47 = *(v0 + 136);
      v49 = *(v0 + 120);

      (*(v48 + 8))(v47, v49);
    }

    v62 = swift_task_alloc();
    *(v0 + 184) = v62;
    *v62 = v0;
    v62[1] = sub_20D0F7BBC;
    v63 = *(v0 + 144);
    v64 = *(v0 + 152);

    return MEMORY[0x2822003E8](v63, 0, 0, v64);
  }
}

uint64_t sub_20D0F8478(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821530) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_20CEF934C;

  return sub_20D0F7878(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_20D0F8734(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20D0FBDC0;

  return sub_20D0F72D0();
}

uint64_t sub_20D0F87FC()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_preferenceChangesTask;
  if (*(v1 + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_preferenceChangesTask))
  {

    sub_20D567C88();
  }

  *(v1 + v2) = 0;

  if (qword_27C81A358 != -1)
  {
    swift_once();
  }

  v3 = sub_20D565988();
  __swift_project_value_buffer(v3, qword_27C8382F0);
  v4 = sub_20D565968();
  v5 = sub_20D567EC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, v5, "FindMyLocateSession: Successfully stopMonitoringPreferencesChange", v6, 2u);
    MEMORY[0x20F31FC70](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20D0F8AE0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20D0FBDC0;

  return sub_20D0F87DC();
}

uint64_t sub_20D0F8B88()
{
  v1[3] = v0;
  v2 = sub_20D5639B8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_20D563A28();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D0F8CC8, 0, 0);
}

uint64_t sub_20D0F8CC8()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_session;
  v0[13] = OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_session;
  v0[14] = *(v1 + v2);

  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_20D0F8D88;
  v4 = v0[12];

  return MEMORY[0x28215FB40](v4, 1);
}

uint64_t sub_20D0F8D88()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20D0F91A0;
  }

  else
  {

    v2 = sub_20D0F8EA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20D0F8EA4()
{
  v31 = v0;
  if (qword_27C81A358 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[7];
  v4 = v0[8];
  v5 = sub_20D565988();
  __swift_project_value_buffer(v5, qword_27C8382F0);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_20D565968();
  v7 = sub_20D567EC8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 136315138;
    sub_20D0FB1C8();
    v13 = sub_20D568BB8();
    v15 = v14;
    v16 = *(v11 + 8);
    v16(v9, v10);
    v17 = v16;
    v18 = sub_20CEE913C(v13, v15, &v30);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_20CEB6000, v6, v7, "Successfully got active location sharing device: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x20F31FC70](v29, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v9, v10);
    v17 = v19;
  }

  v20 = v0[12];
  v21 = v0[7];
  sub_20D563A18();
  sub_20D563A08();
  v22 = sub_20D5639F8();
  v23 = objc_allocWithZone(HULocationDevice);
  v24 = sub_20D5677F8();

  v25 = sub_20D5677F8();

  v26 = [v23 initWithIdentifier:v24 name:v25 isThisDevice:v22 & 1];

  v17(v20, v21);

  v27 = v0[1];

  return v27(v26);
}

uint64_t sub_20D0F91A0()
{
  v1 = *(v0 + 128);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 40) + 88))(*(v0 + 48), *(v0 + 32)) == *MEMORY[0x277D090B0])
    {

      if (qword_27C81A358 != -1)
      {
        swift_once();
      }

      v3 = sub_20D565988();
      *(v0 + 136) = __swift_project_value_buffer(v3, qword_27C8382F0);
      v4 = sub_20D565968();
      v5 = sub_20D567EC8();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_20CEB6000, v4, v5, "Error getting cached location sharing device, trying not cached.", v6, 2u);
        MEMORY[0x20F31FC70](v6, -1, -1);
      }

      v7 = *(v0 + 104);
      v8 = *(v0 + 24);

      *(v0 + 144) = *(v8 + v7);

      v9 = swift_task_alloc();
      *(v0 + 152) = v9;
      *v9 = v0;
      v9[1] = sub_20D0F9558;
      v10 = *(v0 + 80);

      return MEMORY[0x28215FB40](v10, 0);
    }

    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  }

  if (qword_27C81A358 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 128);
  v12 = sub_20D565988();
  __swift_project_value_buffer(v12, qword_27C8382F0);
  v13 = v11;
  v14 = sub_20D565968();
  v15 = sub_20D567EA8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    v18 = sub_20D5635C8();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_20CEB6000, v14, v15, "Error getting active location sharing device: %{public}@", v16, 0xCu);
    sub_20CEF928C(v17, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v17, -1, -1);
    MEMORY[0x20F31FC70](v16, -1, -1);
  }

  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_20D0F9558()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_20D0F993C;
  }

  else
  {
    v2 = sub_20D0F968C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20D0F968C()
{
  v26 = v0;
  (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 80), *(v0 + 56));
  v1 = sub_20D565968();
  v2 = sub_20D567EC8();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v7 = 136315138;
    sub_20D0FB1C8();
    v8 = sub_20D568BB8();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v4, v6);
    v12 = v11;
    v13 = sub_20CEE913C(v8, v10, &v25);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_20CEB6000, v1, v2, "Successfully got non-cached active location sharing device: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x20F31FC70](v24, -1, -1);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  else
  {

    v14 = *(v5 + 8);
    v14(v4, v6);
    v12 = v14;
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 56);
  sub_20D563A18();
  sub_20D563A08();
  v17 = sub_20D5639F8();
  v18 = objc_allocWithZone(HULocationDevice);
  v19 = sub_20D5677F8();

  v20 = sub_20D5677F8();

  v21 = [v18 initWithIdentifier:v19 name:v20 isThisDevice:v17 & 1];

  v12(v15, v16);

  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_20D0F993C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D0F9B54(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20D0FBDBC;

  return sub_20D0F8B88();
}

uint64_t sub_20D0F9BFC()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821550);
  v1[3] = swift_task_alloc();
  v2 = sub_20D5639D8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_20D563A28();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D0F9D50, 0, 0);
}

uint64_t sub_20D0F9D50()
{
  v0[10] = *(v0[2] + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_session);

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_20D0F9E08;
  v2 = v0[6];

  return MEMORY[0x28215FB20](v2);
}

uint64_t sub_20D0F9E08()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_20D0FA180;
  }

  else
  {

    v2 = sub_20D0F9F24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20D0F9F24()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  sub_20D5639C8();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_20CEF928C(v0[3], &qword_27C821550);
    sub_20D0FB220();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[7];
    (*(v10 + 32))(v11);
    sub_20D563A18();
    sub_20D563A08();
    v13 = sub_20D5639F8();
    v14 = objc_allocWithZone(HULocationDevice);
    v15 = sub_20D5677F8();

    v16 = sub_20D5677F8();

    v17 = [v14 initWithIdentifier:v15 name:v16 isThisDevice:v13 & 1];

    (*(v10 + 8))(v11, v12);

    v18 = v0[1];

    return v18(v17);
  }
}

uint64_t sub_20D0FA180()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D0FA380(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20D0FA428;

  return sub_20D0F9BFC();
}

uint64_t sub_20D0FA428(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_20D5635C8();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_20D0FA5C8()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_20D0FA658;

  return sub_20D0F9BFC();
}

uint64_t sub_20D0FA658(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_20D0FA7A4, 0, 0);
  }
}

uint64_t sub_20D0FA7A4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = [v1 identifier];

  v4 = sub_20D567838();
  v6 = v5;

  v0[5] = v6;
  v0[6] = *(v2 + OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_session);

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_20D0FA8A4;

  return MEMORY[0x28215FB70](v4, v6);
}

uint64_t sub_20D0FA8A4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20D0FA9EC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20D0FA9EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D0FABCC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20D0FAC74;

  return sub_20D0FA5C8();
}

uint64_t sub_20D0FAC74()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_20D5635C8();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id FindMyLocateSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FindMyLocateSession.init()()
{
  v1 = v0;
  v2 = sub_20D563988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20D563998();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v8 = &v1[OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_meDeviceUpdateCallback];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_session;
  (*(v3 + 104))(v5, *MEMORY[0x277D09060], v2, v7);
  sub_20D5639A8();
  sub_20D563A78();
  swift_allocObject();
  *&v1[v9] = sub_20D563A88();
  *&v1[OBJC_IVAR____TtC6HomeUI19FindMyLocateSession_preferenceChangesTask] = 0;
  Session = type metadata accessor for FindMyLocateSession();
  v12.receiver = v1;
  v12.super_class = Session;
  return objc_msgSendSuper2(&v12, sel_init);
}

id FindMyLocateSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyLocateSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20D0FB1C8()
{
  result = qword_27C821548;
  if (!qword_27C821548)
  {
    sub_20D563A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821548);
  }

  return result;
}

unint64_t sub_20D0FB220()
{
  result = qword_27C821558;
  if (!qword_27C821558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821558);
  }

  return result;
}

uint64_t dispatch thunk of FindMyLocateSession.startMonitoringPrefrenceChanges()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF934C;

  return v5();
}

uint64_t dispatch thunk of FindMyLocateSession.stopMonitoringPreferenceChanges()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF934C;

  return v5();
}

uint64_t dispatch thunk of FindMyLocateSession.getActiveLocationSharingDevice()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF9350;

  return v5();
}

uint64_t dispatch thunk of FindMyLocateSession.getThisDevice()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF7788;

  return v5();
}

uint64_t dispatch thunk of FindMyLocateSession.setActiveLocationSharingDeviceToThisDevice()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF5FFC;

  return v5();
}

unint64_t sub_20D0FB900()
{
  result = qword_27C821560;
  if (!qword_27C821560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821560);
  }

  return result;
}

uint64_t sub_20D0FB954()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF5FFC;

  return sub_20D0FABCC(v2, v3);
}

uint64_t sub_20D0FBA00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20D0FA380(v2, v3);
}

uint64_t sub_20D0FBAAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20D0F9B54(v2, v3);
}

uint64_t sub_20D0FBB58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20D0F8AE0(v2, v3);
}

uint64_t sub_20D0FBC04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20CEF934C;

  return sub_20D0F8734(v2, v3);
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D0FBCDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D0FBD4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D0FBDC4()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_27C838308);
  __swift_project_value_buffer(v0, qword_27C838308);
  return sub_20D565978();
}

uint64_t sub_20D0FBEF8()
{
  v1 = OBJC_IVAR___HUGridStatusCell_areCellContentsHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20D0FBF90(char a1)
{
  v3 = OBJC_IVAR___HUGridStatusCell_areCellContentsHidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_20D0FC08C()
{
  v1 = OBJC_IVAR___HUGridStatusCell_layoutOptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20D0FC138(uint64_t a1)
{
  v3 = OBJC_IVAR___HUGridStatusCell_layoutOptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_20D0FC190(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUGridStatusCell_layoutOptions;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_20D0FC29C()
{
  v1 = OBJC_IVAR___HUGridStatusCell_item;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20D0FC370(void *a1)
{
  v3 = OBJC_IVAR___HUGridStatusCell_item;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 setNeedsUpdateConfiguration];
}

id sub_20D0FC3E4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUGridStatusCell_item;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  v6 = v2;

  return [v3 setNeedsUpdateConfiguration];
}

id (*sub_20D0FC454(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CF08024;
}

id GridStatusCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GridStatusCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR___HUGridStatusCell_areCellContentsHidden] = 0;
  *&v4[OBJC_IVAR___HUGridStatusCell_layoutOptions] = 0;
  *&v4[OBJC_IVAR___HUGridStatusCell_item] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for GridStatusCell();
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 backgroundView];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor_];
  }

  return v9;
}

id GridStatusCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GridStatusCell.init(coder:)()
{
  *(v0 + OBJC_IVAR___HUGridStatusCell_areCellContentsHidden) = 0;
  *(v0 + OBJC_IVAR___HUGridStatusCell_layoutOptions) = 0;
  *(v0 + OBJC_IVAR___HUGridStatusCell_item) = 0;
  sub_20D568A58();
  __break(1u);
}

void sub_20D0FC81C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8215A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - v6;
  v8 = sub_20D5661A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E080);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v35 - v13;
  v15 = sub_20D5660B8();
  v16 = type metadata accessor for GridStatusCell();
  v39.receiver = v2;
  v39.super_class = v16;
  objc_msgSendSuper2(&v39, sel__bridgedUpdateConfigurationUsingState_, v15);

  sub_20D566178();
  v17 = sub_20D5660D8();
  v37 = v17;
  v38 = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a1, v17);
  sub_20D566188();
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v36);
  (*(v9 + 56))(v14, 0, 1, v8);
  MEMORY[0x20F31D5E0](v14);
  v19 = OBJC_IVAR___HUGridStatusCell_item;
  swift_beginAccess();
  v20 = *&v2[v19];
  if (v20)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v20;
    }

    v23 = [v21 itemUpdateFromLatestResults];

    if (v23)
    {
      v24 = qword_27C81A360;
      v25 = v23;
      if (v24 != -1)
      {
        swift_once();
      }

      v26 = sub_20D565988();
      __swift_project_value_buffer(v26, qword_27C838308);
      v27 = v25;
      v28 = sub_20D565968();
      v29 = sub_20D567EC8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v23;
        v32 = v27;
        _os_log_impl(&dword_20CEB6000, v28, v29, "Updating status cell: %@", v30, 0xCu);
        sub_20CEF928C(v31, &unk_27C81BE60);
        MEMORY[0x20F31FC70](v31, -1, -1);
        MEMORY[0x20F31FC70](v30, -1, -1);
      }

      MEMORY[0x28223BE20](v33);
      v35[-2] = v27;
      v35[-1] = v2;
      type metadata accessor for StatusContentView(0);
      sub_20D0FD7DC(&qword_27C8215B0, type metadata accessor for StatusContentView);
      sub_20D566D88();
      v37 = v4;
      v38 = sub_20D0FCE40();
      v34 = __swift_allocate_boxed_opaque_existential_1(v36);
      (*(v5 + 16))(v34, v7, v4);
      MEMORY[0x20F31D5C0](v36);

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_20D0FCD00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR___HUGridStatusCell_layoutOptions;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  KeyPath = swift_getKeyPath();
  v11 = type metadata accessor for StatusContentView(0);
  *(a3 + *(v11 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8215C0);
  swift_storeEnumTagMultiPayload();
  sub_20D565A48();
  sub_20D0FD7DC(&qword_27C81CBC8, MEMORY[0x277D13218]);
  v12 = a1;
  result = sub_20D566888();
  *a3 = result;
  a3[1] = v14;
  *(a3 + *(v11 + 24)) = v8;
  return result;
}

unint64_t sub_20D0FCE40()
{
  result = qword_27C8215B8;
  if (!qword_27C8215B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C8215A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8215B8);
  }

  return result;
}

id GridStatusCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GridStatusCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::String_optional __swiftcall GridStatusCell.prefixString()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall GridStatusCell.primaryString()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall GridStatusCell.secondaryString()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

NSAttributedString_optional __swiftcall GridStatusCell.secondaryAttributedString()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

__C::CGRect __swiftcall GridStatusCell.iconViewTileFrame()()
{
  v0 = 0.0;
  v1 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v1;
  result.origin.x = v0;
  return result;
}

__C::CGRect __swiftcall GridStatusCell.prefixLabelTileFrame()()
{
  v0 = 0.0;
  v1 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v1;
  result.origin.x = v0;
  return result;
}

__C::CGRect __swiftcall GridStatusCell.primaryLabelTileFrame()()
{
  v0 = 0.0;
  v1 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v1;
  result.origin.x = v0;
  return result;
}

__C::CGRect __swiftcall GridStatusCell.secondaryLabelTileFrame()()
{
  v0 = 0.0;
  v1 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v1;
  result.origin.x = v0;
  return result;
}

UIFont_optional __swiftcall GridStatusCell.prefixLabelFont()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

UIFont_optional __swiftcall GridStatusCell.primaryLabelFont()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

UIFont_optional __swiftcall GridStatusCell.secondaryLabelFont()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

UIColor_optional __swiftcall GridStatusCell.prefixLabelTextColor()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

UIColor_optional __swiftcall GridStatusCell.primaryLabelTextColor()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

UIColor_optional __swiftcall GridStatusCell.secondaryLabelTextColor()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

__C::CGRect __swiftcall GridStatusCell.tileFrame()()
{
  [v0 frame];
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

uint64_t GridStatusCell.baseIconViewConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HUGridStatusCell_item;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v6 = *MEMORY[0x277D13E88];
    v7 = v5;
    MEMORY[0x20F31D7A0](v42, v6);
    if (v42[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EB70);
      if (swift_dynamicCast())
      {
        v8 = v41;
        sub_20CFDAF28(v43, &v30);
        v9 = v7;
        sub_20CFD8D74(v9, 3, &v30, &v39);
        MEMORY[0x20F31D7A0](v38, v6);
        if (v38[3])
        {
          sub_20CECF940(0, &qword_28111FE00);
          if (swift_dynamicCast())
          {

            v10 = 1;
LABEL_14:
            v28 = v39;
            v29[0] = v40[0];
            *(v29 + 10) = *(v40 + 10);
            sub_20CFD7ED4(&v39, &v30);
            sub_20CFD910C(v10, v8, &v28, &v30);
            sub_20CFDAF98(&v39);

            sub_20CEF928C(v43, &unk_27C81EB60);
            v13 = *&v32[16];
            v14 = v30;
            v15 = v31;
            v16 = *v32;
            v31 = v39;
            *v32 = v40[0];
            *&v32[10] = *(v40 + 10);
            v30 = v10;
            *&v33 = v8;
            *(&v33 + 1) = 0x4045000000000000;
            v34 = v14;
            v35 = v15;
            v36 = v16;
            v37 = v13;
            v17 = type metadata accessor for BaseIconView.__Configuration();
            v18 = objc_allocWithZone(v17);
            v19 = &v18[OBJC_IVAR___HUBaseIconViewConfiguration_configuration];
            *v19 = v30;
            v20 = v34;
            v21 = v35;
            v22 = v36;
            *(v19 + 16) = v37;
            *(v19 + 6) = v21;
            *(v19 + 7) = v22;
            *(v19 + 5) = v20;
            v23 = v31;
            v24 = *v32;
            v25 = v33;
            *(v19 + 3) = *&v32[16];
            *(v19 + 4) = v25;
            *(v19 + 1) = v23;
            *(v19 + 2) = v24;
            sub_20CFDAFC8(&v30, &v28);
            v27.receiver = v18;
            v27.super_class = v17;
            v26 = objc_msgSendSuper2(&v27, sel_init);
            *(a1 + 24) = v17;

            result = sub_20CFF7478(&v30);
            *a1 = v26;
            return result;
          }
        }

        else
        {
          sub_20CEF928C(v38, &qword_27C81BF00);
        }

        v10 = 0;
        goto LABEL_14;
      }

      v11 = &unk_27C81EB60;
      v12 = v43;
    }

    else
    {

      sub_20CEF928C(v43, &unk_27C81EB60);
      v11 = &qword_27C81BF00;
      v12 = v42;
    }

    result = sub_20CEF928C(v12, v11);
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_20D0FD7DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20D0FD850()
{
  result = qword_27C8215C8;
  if (!qword_27C8215C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8215C8);
  }

  return result;
}

void sub_20D0FD970()
{
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 contentSize];
  }

  else
  {
    __break(1u);
  }
}

id sub_20D0FD9D0()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 tableView];
  if (result)
  {
    v8 = result;
    [result contentSize];
    v10 = v9;

    sub_20D565958();
    v11 = v1;
    v12 = sub_20D565968();
    v13 = sub_20D567E88();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19[0] = v16;
      *v14 = 138412802;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2080;
      v17 = v11;
      *(v14 + 14) = sub_20CEE913C(0x6548657461647075, 0xEE00292874686769, v19);
      *(v14 + 22) = 2048;
      *(v14 + 24) = v10;
      _os_log_impl(&dword_20CEB6000, v12, v13, "%@ - %s: updating height: %f", v14, 0x20u);
      sub_20CF31DFC(v15);
      MEMORY[0x20F31FC70](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F31FC70](v16, -1, -1);
      MEMORY[0x20F31FC70](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_20CECF7A0(v11 + OBJC_IVAR____TtC6HomeUI50AccessoryDetailsSuggestedAutomationsViewController_viewCoordinator, v19);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_20D566718();
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20D0FDC50()
{
  v1 = sub_20D565988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D565958();
  v5 = v0;
  v6 = sub_20D565968();
  v7 = sub_20D567E88();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    *(v8 + 14) = sub_20CEE913C(0xD000000000000017, 0x800000020D5DAB80, &v15);
    _os_log_impl(&dword_20CEB6000, v6, v7, "%@ - %s", v8, 0x16u);
    sub_20CF31DFC(v9);
    MEMORY[0x20F31FC70](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v12 = type metadata accessor for AccessoryDetailsSuggestedAutomationsViewController();
  v16.receiver = v5;
  v16.super_class = v12;
  objc_msgSendSuper2(&v16, sel_viewDidLayoutSubviews);
  return sub_20D0FD9D0();
}

id sub_20D0FDEC8(void *a1)
{
  v3 = sub_20D565988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D565958();
  v7 = v1;
  v8 = a1;
  v9 = sub_20D565968();
  v10 = sub_20D567E88();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v12 = 138412802;
    *(v12 + 4) = v7;
    *v13 = v7;
    *(v12 + 12) = 2080;
    v15 = v7;
    *(v12 + 14) = sub_20CEE913C(0xD00000000000001FLL, 0x800000020D5DABA0, &v27);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v8;
    v13[1] = v8;
    v16 = v8;
    _os_log_impl(&dword_20CEB6000, v9, v10, "%@ - %s itemModule: %@", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F31FC70](v14, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);

    (*(v4 + 8))(v6, v26);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = OBJC_IVAR____TtC6HomeUI50AccessoryDetailsSuggestedAutomationsViewController_triggerModuleController;
    v19 = *&v7[OBJC_IVAR____TtC6HomeUI50AccessoryDetailsSuggestedAutomationsViewController_triggerModuleController];
    v20 = objc_allocWithZone(HUAvailableRelatedTriggerItemModuleController);
    v21 = v19;
    v17 = [v20 initWithModule_];
    v22 = *&v7[v18];
    *&v7[v18] = v17;
    v23 = v17;

    if (v23)
    {
      v24 = v23;
      [v24 setHost_];
      [v21 updatePresentedViewControllerForNewModuleController_];
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

id AccessoryDetailsSuggestedAutomationsViewController.__allocating_init(itemManager:tableViewStyle:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithItemManager:a1 tableViewStyle:a2];

  return v4;
}

id AccessoryDetailsSuggestedAutomationsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDetailsSuggestedAutomationsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D0FE4B0(uint64_t a1)
{
  v3 = OBJC_IVAR___UtilityOnboardingPasswordlessViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20D0FE508(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___UtilityOnboardingPasswordlessViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id UtilityOnboardingPasswordlessViewController.init(context:isEditMode:)(void *a1, char a2)
{
  *&v2[OBJC_IVAR___UtilityOnboardingPasswordlessViewController_delegate] = 0;
  *&v2[OBJC_IVAR___UtilityOnboardingPasswordlessViewController_context] = a1;
  v2[OBJC_IVAR___UtilityOnboardingPasswordlessViewController_isEditMode] = a2;
  v3 = a1;
  v4 = sub_20D5677F8();
  v5 = HULocalizedString(v4);

  if (!v5)
  {
    sub_20D567838();
    v5 = sub_20D5677F8();
  }

  v6 = sub_20D5677F8();
  v7 = HULocalizedString(v6);

  if (!v7)
  {
    sub_20D567838();
    v7 = sub_20D5677F8();
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for UtilityOnboardingPasswordlessViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithTitle_detailText_icon_contentLayout_, v5, v7, 0, 3);

  return v8;
}

void sub_20D0FE7B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v81 - v3;
  v5 = sub_20D563BA8();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormView();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UtilityOnboardingPasswordlessViewController();
  v88.receiver = v0;
  v88.super_class = v12;
  objc_msgSendSuper2(&v88, sel_viewDidLoad);
  v13 = *&v0[OBJC_IVAR___UtilityOnboardingPasswordlessViewController_context];
  v14 = [v0 headerView];
  sub_20CEE70AC(v14);

  v15 = [v0 headerView];
  v16 = sub_20D5677F8();
  [v15 setTitleAccessibilityIdentifier_];

  v17 = [v1 headerView];
  v18 = sub_20D5677F8();
  [v17 setDetailTextAccessibilityIdentifier_];

  v19 = [v1 navigationItem];
  v20 = sub_20D0FF360(0);
  [v19 setLeftBarButtonItem_];

  LODWORD(v20) = v1[OBJC_IVAR___UtilityOnboardingPasswordlessViewController_isEditMode];
  v21 = [v1 navigationItem];
  if (v20)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  v23 = sub_20D0FF360(v22);
  [v21 setRightBarButtonItem_];

  sub_20D0FF580();
  type metadata accessor for UtilityOnboardingContext();
  v24 = sub_20D103C28(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  v25 = v13;
  v83 = v24;
  sub_20D5675C8();
  v26 = &v11[*(v9 + 28)];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821608));
  v28 = sub_20D566C08();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = sub_20D566C18();
  v32 = (v31 + *(v9 + 28));
  v33 = *v32;
  *v32 = sub_20D0FF908;
  v32[1] = v29;
  sub_20CEC8164(v33);
  v30(v87, 0);

  v34 = v28;
  v35 = [v34 view];
  if (!v35)
  {
    __break(1u);
    goto LABEL_13;
  }

  v36 = v35;
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];

  v37 = [v34 view];
  if (!v37)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v38 = v37;
  v39 = [v1 contentView];
  [v39 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  [v38 setFrame_];
  [v1 addChildViewController_];
  v48 = [v1 contentView];
  v49 = [v34 view];
  if (!v49)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v50 = v49;
  v81 = v7;
  v82 = v4;
  [v48 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20D5BC4C0;
  v52 = [v34 view];
  if (!v52)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v53 = v52;
  v54 = [v52 topAnchor];

  v55 = [v1 contentView];
  v56 = [v55 topAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v51 + 32) = v57;
  v58 = [v34 view];
  if (!v58)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v59 = v58;
  v60 = [v58 leadingAnchor];

  v61 = [v1 contentView];
  v62 = [v61 leadingAnchor];

  v63 = [v60 constraintEqualToAnchor_];
  *(v51 + 40) = v63;
  v64 = [v34 view];
  if (!v64)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v65 = v64;
  v66 = [v64 trailingAnchor];

  v67 = [v1 contentView];
  v68 = [v67 trailingAnchor];

  v69 = [v66 constraintEqualToAnchor_];
  *(v51 + 48) = v69;
  v70 = [v34 view];

  if (v70)
  {
    v71 = objc_opt_self();
    v72 = [v70 bottomAnchor];

    v73 = [v1 &selRef_dateAndTimePickerCell_didSelectDate_];
    v74 = [v73 bottomAnchor];

    v75 = [v72 constraintEqualToAnchor_];
    *(v51 + 56) = v75;
    sub_20CECF940(0, &qword_28111FEC0);
    v76 = sub_20D567A58();

    [v71 activateConstraints_];

    [v1 setShouldAdjustScrollViewInsetForKeyboard_];
    v77 = [v1 scrollView];
    [v77 setKeyboardDismissMode_];

    v78 = [v1 scrollView];
    [v78 setContentInsetAdjustmentBehavior_];

    [v1 setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen_];
    sub_20D563AE8();
    (*(v84 + 104))(v81, *MEMORY[0x277D16FD8], v85);
    swift_getKeyPath();
    v87[0] = v25;
    sub_20D563908();

    swift_beginAccess();
    swift_getKeyPath();
    v86 = v25;
    sub_20D563908();

    swift_beginAccess();
    sub_20D5663C8();
    v79 = v82;
    sub_20D563B78();
    v80 = sub_20D563B98();
    (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
    sub_20D563B48();
    swift_allocObject();
    sub_20D563B38();
    MEMORY[0x20F318F80]();

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t type metadata accessor for FormView()
{
  result = qword_27C821620;
  if (!qword_27C821620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D0FF2C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20D0FF580();
  }
}

id sub_20D0FF360(char a1)
{
  v3 = a1 == 0;
  v4 = type metadata accessor for UtilityOnboardingPasswordlessViewController();
  v20[3] = v4;
  v20[0] = v1;
  v5 = *off_277DB7090[a1];
  if (v4)
  {
    v6 = v4;
    v7 = __swift_project_boxed_opaque_existential_1(v20, v4);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7);
    v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = v1;
    v13 = sub_20D568BD8();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v14 = v1;
    v13 = 0;
  }

  v15 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v16 = [v15 initWithBarButtonSystemItem:v3 target:v13 action:{v5, v20[0]}];
  swift_unknownObjectRelease();
  v17 = v16;
  v18 = sub_20D5677F8();

  [v17 setAccessibilityIdentifier_];

  [v17 setHidden_];
  return v17;
}

void sub_20D0FF580()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR___UtilityOnboardingPasswordlessViewController_context];
  swift_getKeyPath();
  v23[3] = v6;
  sub_20D103C28(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v7 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8)
  {
    swift_getKeyPath();
    v23[0] = v6;
    v9 = v8;
    sub_20D563908();

    v10 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__validFields;
    swift_beginAccess();
    v11 = *(v6 + v10);
    v12 = *&v9[OBJC_IVAR___HUUtilityConfigurationHelper_requiredFields];
    sub_20D5663C8();
    sub_20D5663C8();
    v13 = sub_20CEF088C(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v1 navigationItem];
  v15 = [v14 rightBarButtonItem];

  if (v15)
  {
    v16 = [v15 isEnabled];

    if ((v13 & 1) != v16)
    {
      if (qword_27C81A2D8 != -1)
      {
        swift_once();
      }

      v17 = qword_27C838280;
      sub_20D565998();
      v18 = sub_20D565968();
      v19 = sub_20D567EC8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 67109120;
        *(v20 + 4) = v13 & 1;
        _os_log_impl(&dword_20CEB6000, v18, v19, "enableContinueButton(): %{BOOL}d", v20, 8u);
        MEMORY[0x20F31FC70](v20, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      v21 = [v1 navigationItem];
      v22 = [v21 rightBarButtonItem];

      [v22 setEnabled_];
    }
  }
}

uint64_t sub_20D0FF910()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27C838280;
  sub_20D565998();
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20CEE913C(0xD000000000000016, 0x800000020D5D22B0, v18);
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s Cancel button tapped", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v11 = OBJC_IVAR___UtilityOnboardingPasswordlessViewController_delegate;
  result = swift_beginAccess();
  v13 = *(v1 + v11);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    v17[0] = sub_20D567838();
    v17[1] = v15;
    swift_unknownObjectRetain();
    sub_20D5687F8();
    *(inited + 96) = MEMORY[0x277D83E88];
    *(inited + 72) = 16;
    sub_20CEF49C8(inited);
    swift_setDeallocating();
    sub_20CEF928C(inited + 32, &qword_27C81D8D0);
    v16 = sub_20D567738();

    [v13 viewController:v1 didFinishWithConfigurationResults:v16];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20D0FFC1C()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27C838280;
  sub_20D565998();
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5DADE0, v18);
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s Done editing button tapped", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v11 = OBJC_IVAR___UtilityOnboardingPasswordlessViewController_delegate;
  result = swift_beginAccess();
  v13 = *(v1 + v11);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    v17[0] = sub_20D567838();
    v17[1] = v15;
    swift_unknownObjectRetain();
    sub_20D5687F8();
    *(inited + 96) = MEMORY[0x277D83E88];
    *(inited + 72) = 1;
    sub_20CEF49C8(inited);
    swift_setDeallocating();
    sub_20CEF928C(inited + 32, &qword_27C81D8D0);
    v16 = sub_20D567738();

    [v13 viewController:v1 didFinishWithConfigurationResults:v16];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20D0FFF28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20D565988();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v9 = qword_27C838280;
  sub_20D565998();
  v10 = sub_20D565968();
  v11 = sub_20D567EC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5DADC0, &v22);
    _os_log_impl(&dword_20CEB6000, v10, v11, "%s Next button tapped", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F31FC70](v13, -1, -1);
    MEMORY[0x20F31FC70](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  if (sub_20CEDAF54())
  {
    sub_20D101058();
  }

  else
  {
    sub_20D100D4C();
    v14 = swift_allocObject();
    *(v14 + 16) = 13;
    v15 = swift_allocObject();
    *(v15 + 16) = MEMORY[0x277D84F98];
    v16 = sub_20D567C58();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    sub_20D567C18();
    v17 = v1;

    v18 = sub_20D567C08();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v17;
    v19[5] = v14;
    v19[6] = v15;
    sub_20CF18960(0, 0, v4, &unk_20D5C9AB0, v19);
  }
}

uint64_t sub_20D100298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  v7 = sub_20D565988();
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = sub_20D567C18();
  v6[27] = sub_20D567C08();
  v9 = sub_20D567BA8();
  v6[28] = v9;
  v6[29] = v8;

  return MEMORY[0x2822009F8](sub_20D1003A0, v9, v8);
}

uint64_t sub_20D1003A0()
{
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_20D10043C;

  return sub_20CEDF698();
}

uint64_t sub_20D10043C()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_20D1007BC;
  }

  else
  {
    v5 = sub_20D100578;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D100578()
{
  v1 = v0[20];
  swift_beginAccess();
  *(v1 + 16) = 5;
  v0[32] = v0[31];

  return MEMORY[0x2822009F8](sub_20D100600, 0, 0);
}

uint64_t sub_20D100600()
{
  *(v0 + 264) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D10068C, v2, v1);
}

void sub_20D10068C()
{
  v1 = v0[32];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  sub_20D100B54(v2 + 16, (v3 + 16), v4);
  if (v1)
  {
  }

  else
  {
    v5 = v0[28];
    v6 = v0[29];

    MEMORY[0x2822009F8](sub_20D100748, v5, v6);
  }
}

uint64_t sub_20D100748()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D1007BC()
{
  v1 = type metadata accessor for HomeEnergyManagerHelper();
  v2 = sub_20D5635C8();
  LOBYTE(v1) = [v1 redirectToOAuth_];

  if (v1)
  {
    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v3 = qword_27C838280;
    sub_20D565998();
    v4 = sub_20D565968();
    v5 = sub_20D567EA8();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[31];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20CEB6000, v4, v5, "verifyAddressAndSubmitTAF(): Account Not Found", v8, 2u);
      MEMORY[0x20F31FC70](v8, -1, -1);
    }

    else
    {
    }

    v29 = v0[20];
    (*(v0[23] + 8))(v0[25], v0[22]);
    swift_beginAccess();
    *(v29 + 16) = 12;
  }

  else
  {
    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v9 = v0[31];
    v10 = qword_27C838280;
    sub_20D565998();
    v11 = v9;
    v12 = sub_20D565968();
    v13 = sub_20D567EA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[31];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v14;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_20CEB6000, v12, v13, "verifyAddressAndSubmitTAF(): Error submitting TAF information: %@", v15, 0xCu);
      sub_20CEF928C(v16, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v16, -1, -1);
      MEMORY[0x20F31FC70](v15, -1, -1);
    }

    v19 = v0[31];
    v21 = v0[23];
    v20 = v0[24];
    v22 = v0[22];

    (*(v21 + 8))(v20, v22);
    v23 = sub_20D567838();
    v25 = v24;
    swift_getErrorValue();
    v26 = v0[6];
    v27 = v0[7];
    v0[5] = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v26, v27);
    swift_beginAccess();
    sub_20CED9A44((v0 + 2), v23, v25);
    swift_endAccess();
  }

  v0[32] = 0;

  return MEMORY[0x2822009F8](sub_20D100600, 0, 0);
}

void sub_20D100B54(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_20D567838();
  v7 = v6;
  swift_beginAccess();
  v8 = *a2;
  v13[3] = MEMORY[0x277D83E88];
  v13[0] = v8;
  swift_beginAccess();
  sub_20CED9A44(v13, v5, v7);
  swift_endAccess();
  v9 = OBJC_IVAR___UtilityOnboardingPasswordlessViewController_delegate;
  swift_beginAccess();
  v10 = *(a3 + v9);
  if (v10)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    v11 = sub_20D5663C8();
    sub_20CF27E80(v11);

    v12 = sub_20D567738();

    [v10 viewController:a3 didFinishWithConfigurationResults:v12];

    swift_unknownObjectRelease();
  }

  sub_20D100E90();
}

uint64_t sub_20D100CD8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_20D568628();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

void sub_20D100D4C()
{
  v6 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v1 = [v0 navigationItem];
  v2 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v1 setRightBarButtonItem_];

  [v6 startAnimating];
  v3 = [v0 navigationItem];
  [v3 setHidesBackButton_];

  v4 = [v0 navigationItem];
  v5 = [v4 leftBarButtonItem];

  if (v5)
  {
    [v5 setEnabled_];
  }
}

void sub_20D100E90()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItem];

  if (v2)
  {
    v3 = [v2 customView];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        [v4 stopAnimating];
        [v5 setHidesWhenStopped_];
      }
    }
  }

  v6 = v0[OBJC_IVAR___UtilityOnboardingPasswordlessViewController_isEditMode];
  v7 = [v0 navigationItem];
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = sub_20D0FF360(v8);
  [v7 setRightBarButtonItem_];

  v10 = [v0 navigationItem];
  [v10 setHidesBackButton_];

  v11 = [v0 navigationItem];
  v12 = [v11 leftBarButtonItem];

  if (v12)
  {
    [v12 setEnabled_];
  }
}

void sub_20D101058()
{
  v1 = sub_20D5677F8();
  v2 = HULocalizedString(v1);

  sub_20D567838();
  v3 = sub_20D5677F8();
  v4 = HULocalizedString(v3);

  sub_20D567838();
  v5 = sub_20D5677F8();

  v6 = sub_20D5677F8();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = sub_20D5677F8();
  v9 = HULocalizedString(v8);

  sub_20D567838();
  v10 = sub_20D5677F8();

  v13[4] = sub_20D1012C8;
  v13[5] = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20CF13714;
  v13[3] = &block_descriptor_51;
  v11 = _Block_copy(v13);

  v12 = [objc_opt_self() actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v7 addAction_];
  [v0 presentViewController:v7 animated:1 completion:0];
}

uint64_t sub_20D1012C8()
{
  v0 = sub_20D565988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A320 != -1)
  {
    swift_once();
  }

  v4 = qword_27C8382B8;
  sub_20D565998();
  v5 = sub_20D565968();
  v6 = sub_20D567EC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v5, v6, "User dismissed invalid email alert", v7, 2u);
    MEMORY[0x20F31FC70](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

id UtilityOnboardingPasswordlessViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20D5677F8();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20D5677F8();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20D5677F8();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id UtilityOnboardingPasswordlessViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20D5677F8();

  if (a4)
  {
    v12 = sub_20D5677F8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id UtilityOnboardingPasswordlessViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityOnboardingPasswordlessViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20D101918()
{
  sub_20D10199C();
  if (v0 <= 0x3F)
  {
    sub_20D1019F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20D10199C()
{
  if (!qword_27C821630)
  {
    type metadata accessor for UtilityOnboardingContext();
    v0 = sub_20D5675D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27C821630);
    }
  }
}

void sub_20D1019F4()
{
  if (!qword_27C81D3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C821640);
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81D3A0);
    }
  }
}

uint64_t sub_20D101A74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_20D566968();
  v4 = *(v3 - 8);
  v25 = v3;
  v26 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821650);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821658);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821660);
  v15 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v17 = &v24 - v16;
  v28 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821668);
  sub_20D102C4C();
  sub_20D567068();
  v18 = sub_20CF156D0(&qword_27C8216C0, &qword_27C821650);
  sub_20D567208();
  (*(v8 + 8))(v10, v7);
  sub_20D567608();
  v29 = v7;
  v30 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_20D103C28(&qword_27C8216C8, MEMORY[0x277CDDAB8]);
  v21 = v25;
  sub_20D567278();
  (*(v26 + 8))(v6, v21);
  (*(v12 + 8))(v14, v11);
  v29 = v11;
  v30 = v21;
  v31 = OpaqueTypeConformance2;
  v32 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v24;
  sub_20D5671E8();
  return (*(v15 + 8))(v17, v22);
}

uint64_t sub_20D101E74@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8216B0);
  v37 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v36 = &v35 - v2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8216D0);
  MEMORY[0x28223BE20](v46);
  v47 = &v35 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8216D8);
  MEMORY[0x28223BE20](v40);
  v42 = &v35 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821680);
  MEMORY[0x28223BE20](v45);
  v43 = &v35 - v5;
  v6 = type metadata accessor for FormView();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821690);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = &v35 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821610);
  v11 = v1;
  sub_20D5675B8();
  v12 = v51;
  swift_getKeyPath();
  v51 = v12;
  sub_20D103C28(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v13 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v14 = *&v12[v13];
  v15 = v14;

  if (v14)
  {
    v16 = UtilityConfigurationHelper.passwordlessSections.getter();

    if (v16 >> 62)
    {
      if (sub_20D568768())
      {
        goto LABEL_4;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v50 = v16;
      swift_getKeyPath();
      sub_20D102F50(v11, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v17 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v18 = swift_allocObject();
      sub_20D102FB4(v8, v18 + v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8216E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8216A0);
      sub_20CF156D0(&qword_27C8216E8, &qword_27C8216E0);
      sub_20D103C28(&qword_27C8216F0, type metadata accessor for HUTAFSection);
      sub_20D102DBC();
      sub_20D567538();
      v19 = v38;
      v20 = v41;
      (*(v38 + 16))(v42, v10, v41);
      swift_storeEnumTagMultiPayload();
      sub_20D102E80(&qword_27C821688, &qword_27C821690, &unk_20D5C99B8, sub_20D102DBC);
      sub_20D102E80(&qword_27C8216A8, &qword_27C8216B0, &unk_20D5C99C8, sub_20D102EFC);
      v21 = v43;
      sub_20D566D18();
      sub_20CEF9178(v21, v47, &qword_27C821680);
      swift_storeEnumTagMultiPayload();
      sub_20D102CD8();
      sub_20D566D18();
      sub_20CEF928C(v21, &qword_27C821680);
      return (*(v19 + 8))(v10, v20);
    }
  }

  v23 = v11;
  sub_20D5675B8();
  v24 = v50;
  swift_getKeyPath();
  v50 = v24;
  sub_20D563908();

  v25 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v27 = v26;

  if (v26)
  {
    v28 = *&v27[OBJC_IVAR___HUUtilityConfigurationHelper_fields];
    sub_20D5663C8();

    v49 = v28;
    swift_getKeyPath();
    sub_20D102F50(v23, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v30 = swift_allocObject();
    sub_20D102FB4(v8, v30 + v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8216F8);
    sub_20CF156D0(&unk_27C821700, &qword_27C8216F8);
    sub_20D102EFC();
    v31 = v36;
    sub_20D567538();
    v32 = v37;
    v33 = v44;
    (*(v37 + 16))(v42, v31, v44);
    swift_storeEnumTagMultiPayload();
    sub_20D102E80(&qword_27C821688, &qword_27C821690, &unk_20D5C99B8, sub_20D102DBC);
    sub_20D102E80(&qword_27C8216A8, &qword_27C8216B0, &unk_20D5C99C8, sub_20D102EFC);
    v34 = v43;
    sub_20D566D18();
    sub_20CEF9178(v34, v47, &qword_27C821680);
    swift_storeEnumTagMultiPayload();
    sub_20D102CD8();
    sub_20D566D18();
    sub_20CEF928C(v34, &qword_27C821680);
    return (*(v32 + 8))(v31, v33);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_20D102CD8();
    return sub_20D566D18();
  }
}

uint64_t sub_20D1027C4()
{
  sub_20D5663C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8216B0);
  sub_20D102E80(&qword_27C8216A8, &qword_27C8216B0, &unk_20D5C99C8, sub_20D102EFC);
  sub_20CEF44D8();
  return sub_20D567568();
}

uint64_t sub_20D1028A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = *(a1 + OBJC_IVAR____TtC6HomeUI12HUTAFSection_fields);
  swift_getKeyPath();
  sub_20D102F50(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_20D102FB4(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_20D5663C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8216F8);
  sub_20CF156D0(&unk_27C821700, &qword_27C8216F8);
  sub_20D102EFC();
  return sub_20D567538();
}

__n128 sub_20D102A58@<Q0>(void **a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821610);
  sub_20D5675B8();
  v6 = v5;
  sub_20D5675B8();
  v7 = *&v6[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey];
  v8 = *&v6[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey + 8];
  swift_getKeyPath();
  sub_20D103C28(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v9 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__tafResponses;
  swift_beginAccess();
  v10 = *&v18[v9];
  sub_20D5663C8();

  if (*(v10 + 16))
  {
    sub_20CEED668(v7, v8);
    if (v11)
    {
      sub_20D5663C8();
    }
  }

  v12 = (a2 + *(type metadata accessor for FormView() + 20));
  v13 = *v12;
  v14 = v12[1];
  sub_20CEC81F4(*v12);
  sub_20D567438();
  result = v16;
  a3->n128_u64[0] = v18;
  a3->n128_u64[1] = v6;
  a3[1] = v16;
  a3[2].n128_u64[0] = v17;
  a3[2].n128_u64[1] = v13;
  a3[3].n128_u64[0] = v14;
  return result;
}

unint64_t sub_20D102C4C()
{
  result = qword_27C821670;
  if (!qword_27C821670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821668);
    sub_20D102CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821670);
  }

  return result;
}

unint64_t sub_20D102CD8()
{
  result = qword_27C821678;
  if (!qword_27C821678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821680);
    sub_20D102E80(&qword_27C821688, &qword_27C821690, &unk_20D5C99B8, sub_20D102DBC);
    sub_20D102E80(&qword_27C8216A8, &qword_27C8216B0, &unk_20D5C99C8, sub_20D102EFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821678);
  }

  return result;
}

unint64_t sub_20D102DBC()
{
  result = qword_27C821698;
  if (!qword_27C821698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8216A0);
    sub_20D102E80(&qword_27C8216A8, &qword_27C8216B0, &unk_20D5C99C8, sub_20D102EFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821698);
  }

  return result;
}

uint64_t sub_20D102E80(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20D102EFC()
{
  result = qword_27C8216B8;
  if (!qword_27C8216B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8216B8);
  }

  return result;
}

uint64_t sub_20D102F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D102FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D103018()
{
  type metadata accessor for FormView();

  return sub_20D1027C4();
}

uint64_t sub_20D103098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821710);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821718);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = &v29 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821720);
  MEMORY[0x28223BE20](v37);
  v8 = &v29 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821728);
  MEMORY[0x28223BE20](v38);
  v39 = &v29 - v9;
  v10 = *(v1 + 8);
  v11 = *&v10[OBJC_IVAR____TtC6HomeUI10HUTAFField_label];
  v12 = *&v10[OBJC_IVAR____TtC6HomeUI10HUTAFField_label + 8];
  v46 = *(v1 + 16);
  v13 = *(v1 + 32);
  v44 = *(v1 + 16);
  v36 = v13;
  v45 = v13;
  sub_20D5663C8();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821730);
  sub_20D567468();
  *&v42 = v11;
  *(&v42 + 1) = v12;
  sub_20CEF44D8();
  sub_20D567618();
  v14 = *&v10[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey];
  v15 = *&v10[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey + 8];
  if ((v14 != 0x656E6F6850 || v15 != 0xE500000000000000) && (sub_20D568BF8() & 1) == 0 && (v14 != 0x6C69616D45 || v15 != 0xE500000000000000) && (sub_20D568BF8() & 1) == 0 && (v14 != 0x6F436C6174736F50 || v15 != 0xEA00000000006564))
  {
    sub_20D568BF8();
  }

  sub_20CF156D0(&qword_27C821738, &qword_27C821710);
  v16 = v31;
  v17 = v33;
  sub_20D567168();
  (*(v30 + 8))(v4, v17);
  v18 = [objc_opt_self() tertiarySystemFillColor];
  *&v42 = sub_20D5672E8();
  v19 = sub_20D5674C8();
  (*(v34 + 32))(v8, v16, v35);
  *&v8[*(v37 + 36)] = v19;
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  sub_20D568858();

  *&v42 = 0xD00000000000002ALL;
  *(&v42 + 1) = 0x800000020D5DAE90;
  MEMORY[0x20F31CDB0](v14, v15);
  sub_20D103A3C();
  v20 = v39;
  sub_20D567188();

  sub_20CEF928C(v8, &qword_27C821720);
  v42 = v46;
  v21 = v36;
  v43 = v36;
  sub_20D567448();
  v22 = *v2;
  v42 = v46;
  v47 = v21;
  v23 = *(v2 + 40);
  v24 = swift_allocObject();
  v25 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = *(v2 + 48);
  v26 = v22;
  v27 = v10;
  sub_20CFE60E8(&v42, v41);
  sub_20CEF9178(&v47, v41, &qword_27C821748);
  sub_20CEC81F4(v23);
  sub_20D103B6C();
  sub_20D567258();

  return sub_20CEF928C(v20, &qword_27C821728);
}

uint64_t sub_20D1036D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20CED9368(*(a3 + 8), *a2, *(a2 + 8));
  v5 = *(a3 + 40);
  if (v5)
  {
    return v5(result);
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{
  v1 = (type metadata accessor for FormView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C821610);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  if (*(v0 + v3 + v1[7]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_20D103828@<D0>(void **a1@<X0>, __n128 *a2@<X8>)
{
  v5 = *(type metadata accessor for FormView() - 8);
  *&result = sub_20D102A58(a1, v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)), a2).n128_u64[0];
  return result;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D1038B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CEF5FFC;

  return sub_20D100298(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20D10397C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D1039C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20D103A3C()
{
  result = qword_27C821740;
  if (!qword_27C821740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821710);
    sub_20CF156D0(&qword_27C821738, &qword_27C821710);
    swift_getOpaqueTypeConformance2();
    sub_20CF156D0(&qword_27C820090, &unk_27C8202D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821740);
  }

  return result;
}

unint64_t sub_20D103B6C()
{
  result = qword_27C821750;
  if (!qword_27C821750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C821728);
    sub_20D103A3C();
    sub_20D103C28(&qword_27C820400, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C821750);
  }

  return result;
}

uint64_t sub_20D103C28(unint64_t *a1, void (*a2)(uint64_t))
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

id ActionGridItemModule.__allocating_init(actionBuilderContainer:home:itemUpdater:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = &v8[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *(v9 + 24) = xmmword_20D5C3B50;
  *(v9 + 5) = 0;
  *(v9 + 24) = 1;
  *&v8[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_20CECF7A0(a1, &v8[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer]);
  swift_getObjectType();
  v10 = sub_20CF86924(a2, a3, 0, 0, v8);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_20D103D4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v11 = *(v3 + 48);
  v10[1] = v5;
  v10[2] = v6;
  v10[0] = v4;
  v7 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v7;
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = *(v3 + 48);
  return sub_20CFE769C(v10, &v9);
}

uint64_t sub_20D103DD4(__int128 *a1, void *a2)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v14 = a1[2];
  v15 = *(a1 + 24);
  v3 = *a2 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v17 = *(v3 + 48);
  v16[1] = v5;
  v16[2] = v6;
  v16[0] = v4;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  *(v3 + 48) = v15;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *v3 = v7;
  sub_20CFE769C(&v12, &v11);
  return sub_20CFE76F8(v16);
}

uint64_t sub_20D103E78@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v4;
  v10 = *(v3 + 32);
  v5 = v10;
  v11 = *(v3 + 48);
  v6 = v11;
  *a1 = v9[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return sub_20CFE769C(v9, &v8);
}

uint64_t sub_20D103EF0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v4;
  v7[2] = *(v3 + 32);
  v8 = *(v3 + 48);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = *(a1 + 48);
  return sub_20CFE76F8(v7);
}

id ActionGridItemModule.init(actionBuilderContainer:home:itemUpdater:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *(v7 + 24) = xmmword_20D5C3B50;
  *(v7 + 5) = 0;
  *(v7 + 24) = 1;
  *&v3[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_20CECF7A0(a1, &v3[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer]);
  swift_getObjectType();
  v8 = sub_20CF86924(a2, a3, 0, 0, v3);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_20D1040AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = Strong;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer), *(v0 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer + 24));
  v3 = v2;
  v4 = v0;
  v5 = sub_20D565B58();
  v6 = [objc_allocWithZone(MEMORY[0x277D14A90]) initWithHome:v3 actionSetBuilder:v5];

  [v6 setActionSetValueSourceDelegate_];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_20D104CB4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF7FA88;
  aBlock[3] = &block_descriptor_52;
  v8 = _Block_copy(aBlock);

  [v6 setFilter_];
  _Block_release(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BA040;
  *(inited + 32) = v6;
  v10 = v6;
  sub_20CEF7FC4(inited);
  v12 = v11;

  return v12;
}

uint64_t sub_20D104288(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_20D1044D8(a1);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_20D1043B0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_20CECDBF4(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20D1044D8(void *a1)
{
  v2 = v1;
  v4 = [a1 containingItem];
  v5 = [v4 services];

  sub_20CECF940(0, &qword_27C81AEC0);
  sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0);
  v6 = sub_20D567D08();

  v7 = [a1 containingItem];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
  }

  v9 = [a1 containingItem];
  sub_20D565D18();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    if (!v8)
    {
      goto LABEL_16;
    }

LABEL_7:
    v11 = [v8 mediaProfileContainer];
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = v11;
    v13 = (v2 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config);
    swift_beginAccess();
    if (v13[1] && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80), v14 = swift_allocObject(), *(v14 + 16) = xmmword_20D5BA040, *(v14 + 32) = v12, sub_20D5663C8(), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8217D8), sub_20CF156D0(&unk_27C8217E0, &qword_27C8217D8), v15 = sub_20D5679A8(), , , (v15 & 1) == 0))
    {

      swift_unknownObjectRelease();
    }

    else
    {
      if (!*v13)
      {
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_20D5BA040;
      *(v16 + 32) = v12;
      swift_unknownObjectRetain();
      sub_20D5663C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8217D8);
      sub_20CF156D0(&unk_27C8217E0, &qword_27C8217D8);
      v17 = sub_20D5679A8();

      swift_unknownObjectRelease();
      if ((v17 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_16:
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (sub_20D568768())
    {
      goto LABEL_18;
    }
  }

  else if (*(v6 + 16))
  {
LABEL_18:
    v19 = (v2 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config);
    swift_beginAccess();
    if (!v19[1] || (sub_20D5663C8(), sub_20CF81C60(v6), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8217D8), sub_20CF156D0(&unk_27C8217E0, &qword_27C8217D8), v20 = sub_20D5679B8(), , , (v20 & 1) != 0))
    {
      if (*v19)
      {
        sub_20D5663C8();
        sub_20CF81C60(v6);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8217D8);
        sub_20CF156D0(&unk_27C8217E0, &qword_27C8217D8);
        v21 = sub_20D5679B8();

        return (v21 & 1) == 0;
      }

      goto LABEL_37;
    }

LABEL_35:
    return 0;
  }

  if (v10)
  {
    sub_20D565CF8();
    v22 = (v2 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config);
    swift_beginAccess();
    if (v22[1])
    {
      sub_20D5663C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8217D8);
      sub_20CF156D0(&unk_27C8217E0, &qword_27C8217D8);
      v23 = sub_20D5679C8();

      if ((v23 & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_35;
      }
    }

    if (!*v22)
    {

      swift_unknownObjectRelease();
      v10 = v8;
LABEL_37:

      return 1;
    }

    sub_20D5663C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8217D8);
    sub_20CF156D0(&unk_27C8217E0, &qword_27C8217D8);
    v24 = sub_20D5679C8();

    swift_unknownObjectRelease();
    return (v24 & 1) == 0;
  }

  v25 = v2 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config;
  swift_beginAccess();
  return !*(v25 + 8);
}

uint64_t sub_20D104BB4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_actionBuilderContainer);
  v1 = v0 + OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_delegate;

  return sub_20CEC8088(v1);
}

id ActionGridItemModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionGridItemModule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20D104E18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 50))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20D104E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id HUBlurButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HUBlurButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC6HomeUI12HUBlurButton_horizontalPadding) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC6HomeUI12HUBlurButton_verticalPadding) = 0x4014000000000000;
  *(v0 + OBJC_IVAR____TtC6HomeUI12HUBlurButton_cornerRadius) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC6HomeUI12HUBlurButton_blurBackgroundView) = 0;
  sub_20D568A58();
  __break(1u);
}

id HUBlurButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *HUBlurButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC6HomeUI12HUBlurButton_horizontalPadding] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC6HomeUI12HUBlurButton_verticalPadding] = 0x4014000000000000;
  *&v4[OBJC_IVAR____TtC6HomeUI12HUBlurButton_cornerRadius] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC6HomeUI12HUBlurButton_blurBackgroundView] = 0;
  v34.receiver = v4;
  v34.super_class = type metadata accessor for HUBlurButton();
  v9 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 effectWithStyle_];
  v13 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setUserInteractionEnabled_];
  v14 = v11;
  [v14 addSubview_];
  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20D5BC4C0;
  v17 = [v14 topAnchor];
  v18 = [v13 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:5.0];

  *(v16 + 32) = v19;
  v20 = [v14 bottomAnchor];

  v21 = [v13 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-5.0];

  *(v16 + 40) = v22;
  v23 = [v14 leadingAnchor];

  v24 = [v13 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:20.0];

  *(v16 + 48) = v25;
  v26 = [v14 trailingAnchor];

  v27 = [v13 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-20.0];

  *(v16 + 56) = v28;
  sub_20CF0AC18();
  v29 = sub_20D567A58();

  [v15 activateConstraints_];

  v30 = *&v14[OBJC_IVAR____TtC6HomeUI12HUBlurButton_blurBackgroundView];
  *&v14[OBJC_IVAR____TtC6HomeUI12HUBlurButton_blurBackgroundView] = v13;
  v31 = v13;

  [v14 _setContinuousCornerRadius_];
  [v31 _setContinuousCornerRadius_];

  v32 = [objc_opt_self() blackColor];
  [v14 setTitleColor:v32 forState:0];

  return v14;
}

id HUBlurButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HUBlurButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TAFFieldName.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TAFFieldName.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TAFFieldName();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TAFFieldName.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TAFFieldName();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::String_optional __swiftcall AccountDetailsDataModel.getInfo(tafFieldKey:)(Swift::String tafFieldKey)
{
  v2 = tafFieldKey._countAndFlagsBits == 1701667150 && tafFieldKey._object == 0xE400000000000000;
  if (v2 || (object = tafFieldKey._object, countAndFlagsBits = tafFieldKey._countAndFlagsBits, (sub_20D568BF8() & 1) != 0))
  {
    v5 = sub_20D105E2C();
  }

  else if (countAndFlagsBits == 0x6D614E7473726946 && object == 0xE900000000000065 || (sub_20D568BF8() & 1) != 0)
  {
    v5 = sub_20D10800C();
  }

  else if (countAndFlagsBits == 0x656D614E7473614CLL && object == 0xE800000000000000 || (sub_20D568BF8() & 1) != 0)
  {
    v5 = sub_20D108138();
  }

  else if (countAndFlagsBits == 0x656E6F6850 && object == 0xE500000000000000 || (sub_20D568BF8() & 1) != 0)
  {
    sub_20D10796C();
  }

  else if (countAndFlagsBits == 0x6C69616D45 && object == 0xE500000000000000 || (sub_20D568BF8() & 1) != 0)
  {
    sub_20D10767C();
  }

  else
  {
    if (countAndFlagsBits == 0x4C73736572646441 && object == 0xEC00000031656E69 || (sub_20D568BF8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress1;
    }

    else if (countAndFlagsBits == 0x4C73736572646441 && object == 0xEC00000032656E69 || (sub_20D568BF8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress2;
    }

    else if (countAndFlagsBits == 0x4C73736572646441 && object == 0xEC00000033656E69 || (sub_20D568BF8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress3;
    }

    else if (countAndFlagsBits == 2037672259 && object == 0xE400000000000000 || (sub_20D568BF8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_city;
    }

    else if (countAndFlagsBits == 0x6574617453 && object == 0xE500000000000000 || (sub_20D568BF8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_state;
    }

    else if (countAndFlagsBits == 0x7972746E756F43 && object == 0xE700000000000000 || (sub_20D568BF8() & 1) != 0)
    {
      v7 = OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_country;
    }

    else
    {
      if ((countAndFlagsBits != 0x6F436C6174736F50 || object != 0xEA00000000006564) && (sub_20D568BF8() & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_53;
      }

      v7 = OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_zipCode;
    }

    v8 = *(v1 + v7);
    v6 = sub_20D5663C8();
    v5 = v8;
  }

LABEL_53:
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_20D105E2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  if (v4)
  {
    v0 = [objc_opt_self() stringFromContact:v4 style:0];
    if (v0)
    {
      v1 = v0;
      v2 = sub_20D567838();

      return v2;
    }
  }

  return 0;
}

uint64_t sub_20D105F00()
{
  sub_20D10767C();
  v14[0] = v0;
  sub_20D10796C();
  v1 = 0;
  v14[1] = v2;
  v14[2] = v3;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = &v14[2 * v1++];
    while (1)
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = *(v5 - 1);
        v8 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v8 = v7 & 0xFFFFFFFFFFFFLL;
        }

        if (v8)
        {
          break;
        }
      }

      v5 += 2;
      if (++v1 == 3)
      {
        goto LABEL_13;
      }
    }

    sub_20D5663C8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_20CEE7F6C(0, *(v4 + 2) + 1, 1, v4);
    }

    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    if (v10 >= v9 >> 1)
    {
      v4 = sub_20CEE7F6C((v9 > 1), v10 + 1, 1, v4);
    }

    *(v4 + 2) = v10 + 1;
    v11 = &v4[16 * v10];
    *(v11 + 4) = v7;
    *(v11 + 5) = v6;
  }

  while (v1 != 2);
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C260);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EC30);
  sub_20CF76364();
  v12 = sub_20D5677D8();

  return v12;
}

uint64_t sub_20D10608C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  return v1;
}

uint64_t sub_20D106100()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_20D566668();

  return v1;
}

id AccountDetailsDataModel.init(meContact:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821818);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821820);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel__contact;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821830);
  sub_20D566658();
  (*(v8 + 32))(&v1[v11], v10, v7);
  v12 = OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel__didSubmitInfo;
  LOBYTE(v28) = 0;
  sub_20D566658();
  (*(v4 + 32))(&v1[v12], v6, v3);
  v13 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress1];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress2];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress3];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_city];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_state];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_country];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_zipCode];
  *v19 = 0;
  *(v19 + 1) = 0;
  swift_beginAccess();
  v20 = *(v8 + 8);
  v21 = a1;
  v20(&v1[v11], v7);
  v27 = a1;
  sub_20D566658();
  swift_endAccess();
  v26.receiver = v1;
  v26.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v26, sel_init);
  sub_20D10644C();

  return v22;
}

void *sub_20D10644C()
{
  v1 = v0;
  result = sub_20D107D74();
  if (result)
  {
    v3 = result;
    v4 = [result street];
    v5 = sub_20D567838();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_20CEF44D8();
      v9 = sub_20D568578();

      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = (v1 + OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress3);
        v13 = (v1 + OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress2);
        v14 = (v1 + OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress1);
        v15 = (v9 + 40);
        do
        {
          if (v11 >= *(v9 + 16))
          {
            __break(1u);
            return result;
          }

          result = *v15;
          v16 = v14;
          if (v11)
          {
            if (v11 == 2)
            {
              v16 = v12;
            }

            else
            {
              v16 = v13;
              if (v11 != 1)
              {
                goto LABEL_9;
              }
            }
          }

          *v16 = *(v15 - 1);
          v16[1] = result;
          sub_20D5663C8();

LABEL_9:
          ++v11;
          v15 += 2;
        }

        while (v10 != v11);
      }
    }

    v17 = [v3 city];
    v18 = sub_20D567838();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v22 = (v1 + OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_city);
      *v22 = v18;
      v22[1] = v20;
    }

    v23 = [v3 state];
    v24 = sub_20D567838();
    v26 = v25;

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v28 = (v1 + OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_state);
      *v28 = v24;
      v28[1] = v26;
    }

    v29 = [v3 country];
    v30 = sub_20D567838();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v34 = (v1 + OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_country);
      *v34 = v30;
      v34[1] = v32;
    }

    v35 = [v3 postalCode];
    v36 = sub_20D567838();
    v38 = v37;

    v39 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v39 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = (v1 + OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_zipCode);
      *v40 = v36;
      v40[1] = v38;
    }
  }

  return result;
}

id sub_20D10676C(Swift::OpaquePointer a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821818);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821820);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel__contact;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821830);
  sub_20D566658();
  (*(v9 + 32))(&v1[v12], v11, v8);
  v13 = OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel__didSubmitInfo;
  LOBYTE(v25) = 0;
  sub_20D566658();
  (*(v5 + 32))(&v1[v13], v7, v4);
  v14 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress1];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress2];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress3];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_city];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_state];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_country];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v1[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_zipCode];
  *v20 = 0;
  *(v20 + 1) = 0;
  v24.receiver = v1;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, sel_init);
  AccountDetailsDataModel.deserialize(results:)(a1);

  return v21;
}

Swift::Void __swiftcall AccountDetailsDataModel.deserialize(results:)(Swift::OpaquePointer results)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v133 = sub_20D5633F8();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v7 = *(results._rawValue + 2);
  v130 = v6;
  v127 = ObjectType;
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = v6;
  sub_20CEED668(1701667150, 0xE400000000000000);
  if (v9)
  {
    v10 = &selRef_setGivenName_;
  }

  else
  {
    if (!*(results._rawValue + 2))
    {
      goto LABEL_20;
    }

    sub_20CEED668(0x6D614E7473726946, 0xE900000000000065);
    if (v33)
    {
      sub_20D5663C8();
      v34 = sub_20D5677F8();

      [v8 setGivenName_];
    }

    if (!*(results._rawValue + 2))
    {
      goto LABEL_20;
    }

    sub_20CEED668(0x656D614E7473614CLL, 0xE800000000000000);
    if ((v35 & 1) == 0)
    {
      goto LABEL_5;
    }

    v10 = &selRef_setFamilyName_;
  }

  sub_20D5663C8();
  v11 = sub_20D5677F8();

  [v8 *v10];

LABEL_5:
  if (*(results._rawValue + 2))
  {
    sub_20CEED668(0x656E6F6850, 0xE500000000000000);
    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_20D5BA040;
      sub_20D567838();
      v14 = objc_allocWithZone(MEMORY[0x277CBDB70]);
      sub_20D5663C8();
      v15 = sub_20D5677F8();

      v16 = [v14 initWithStringValue_];

      v17 = objc_allocWithZone(MEMORY[0x277CBDB20]);
      v18 = sub_20D5677F8();

      v19 = [v17 initWithLabel:v18 value:v16];

      *(v13 + 32) = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821840);
      v20 = sub_20D567A58();

      [v130 setPhoneNumbers_];
    }

    if (*(results._rawValue + 2))
    {
      sub_20CEED668(0x6C69616D45, 0xE500000000000000);
      if (v21)
      {
        sub_20D5663C8();
        v22 = sub_20D5677F8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_20D5BA040;
        sub_20D567838();
        v24 = objc_allocWithZone(MEMORY[0x277CBDB20]);
        v25 = v22;
        v26 = sub_20D5677F8();

        v27 = [v24 initWithLabel:v26 value:v25];

        *(v23 + 32) = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821840);
        v28 = sub_20D567A58();

        [v130 setEmailAddresses_];
      }

      if (*(results._rawValue + 2))
      {
        v29 = sub_20CEED668(0x4C73736572646441, 0xEC00000031656E69);
        if (v30)
        {
          v31 = *(*(results._rawValue + 7) + 16 * v29);
          v32 = sub_20D5663C8();
          goto LABEL_21;
        }
      }
    }
  }

LABEL_20:
  v31 = 0;
  v32 = 0;
LABEL_21:
  v36 = &v2[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress1];
  *v36 = v31;
  *(v36 + 1) = v32;

  if (*(results._rawValue + 2) && (v37 = sub_20CEED668(0x4C73736572646441, 0xEC00000032656E69), (v38 & 1) != 0))
  {
    v39 = *(*(results._rawValue + 7) + 16 * v37);
    v40 = sub_20D5663C8();
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v41 = &v2[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress2];
  *v41 = v39;
  *(v41 + 1) = v40;

  if (*(results._rawValue + 2) && (v42 = sub_20CEED668(0x4C73736572646441, 0xEC00000033656E69), (v43 & 1) != 0))
  {
    v44 = *(*(results._rawValue + 7) + 16 * v42);
    v45 = sub_20D5663C8();
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v46 = &v2[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_streetAddress3];
  *v46 = v44;
  *(v46 + 1) = v45;

  if (*(results._rawValue + 2) && (v47 = sub_20CEED668(2037672259, 0xE400000000000000), (v48 & 1) != 0))
  {
    v49 = *(*(results._rawValue + 7) + 16 * v47);
    v50 = sub_20D5663C8();
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v51 = &v2[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_city];
  *v51 = v49;
  *(v51 + 1) = v50;

  if (*(results._rawValue + 2) && (v52 = sub_20CEED668(0x6574617453, 0xE500000000000000), (v53 & 1) != 0))
  {
    v54 = *(*(results._rawValue + 7) + 16 * v52);
    v55 = sub_20D5663C8();
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  v56 = &v2[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_state];
  *v56 = v54;
  *(v56 + 1) = v55;

  if (*(results._rawValue + 2) && (v57 = sub_20CEED668(0x6F436C6174736F50, 0xEA00000000006564), (v58 & 1) != 0))
  {
    v59 = *(*(results._rawValue + 7) + 16 * v57);
    v60 = sub_20D5663C8();
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v61 = &v2[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_zipCode];
  *v61 = v59;
  *(v61 + 1) = v60;

  if (*(results._rawValue + 2) && (v62 = sub_20CEED668(0x7972746E756F43, 0xE700000000000000), (v63 & 1) != 0))
  {
    v64 = *(*(results._rawValue + 7) + 16 * v62);
    v65 = sub_20D5663C8();
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v126 = v2;
  v66 = &v2[OBJC_IVAR____TtC6HomeUI23AccountDetailsDataModel_country];
  v120[4] = v64;
  *v66 = v64;
  *(v66 + 1) = v65;
  v125 = v65;
  sub_20D5663C8();

  v67 = *v36;
  v68 = *(v36 + 1);
  v69 = *v41;
  v70 = *(v41 + 1);
  v71 = *v46;
  v72 = *(v46 + 1);
  v128 = v69;
  v129 = v71;
  v73 = *v51;
  v74 = *(v51 + 1);
  v120[1] = v73;
  v75 = *v56;
  v76 = *(v56 + 1);
  v120[2] = v75;
  v77 = *v61;
  v78 = *(v61 + 1);
  v120[3] = v77;
  v79 = objc_allocWithZone(MEMORY[0x277CBDB60]);
  v123 = v78;
  sub_20D5663C8();
  sub_20D5663C8();
  sub_20D5663C8();
  sub_20D5663C8();
  v121 = v74;
  sub_20D5663C8();
  v122 = v76;
  sub_20D5663C8();
  v124 = [v79 init];
  v80 = 0;
  if (v68)
  {
    v81 = v67;
  }

  else
  {
    v81 = 0;
  }

  v82 = 0xE000000000000000;
  if (v68)
  {
    v83 = v68;
  }

  else
  {
    v83 = 0xE000000000000000;
  }

  v137 = v81;
  v138[0] = v83;
  v84 = v128;
  if (v70)
  {
    v85 = v70;
  }

  else
  {
    v84 = 0;
    v85 = 0xE000000000000000;
  }

  v138[1] = v84;
  v138[2] = v85;
  v86 = v129;
  if (v72)
  {
    v82 = v72;
  }

  else
  {
    v86 = 0;
  }

  v138[3] = v86;
  v138[4] = v82;
  v87 = (v131 + 1);
  v88 = MEMORY[0x277D84F90];
  do
  {
    v131 = v88;
    v89 = 3;
    if (v80 > 3)
    {
      v89 = v80;
    }

    v90 = -v89;
    v91 = &v138[2 * v80++];
    while (1)
    {
      if (v90 + v80 == 1)
      {
        __break(1u);
        return;
      }

      v92 = *(v91 - 1);
      v93 = *v91;
      v134 = v92;
      v135 = v93;
      sub_20D5663C8();
      v94 = v132;
      sub_20D5633B8();
      sub_20CEF44D8();
      v95 = sub_20D5685A8();
      v97 = v96;
      (*v87)(v94, v133);

      v98 = HIBYTE(v97) & 0xF;
      if ((v97 & 0x2000000000000000) == 0)
      {
        v98 = v95 & 0xFFFFFFFFFFFFLL;
      }

      if (v98)
      {
        break;
      }

      ++v80;
      v91 += 2;
      if (v80 == 4)
      {
        v88 = v131;
        goto LABEL_72;
      }
    }

    v88 = v131;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = v88;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_20CEF0AC8(0, v88[2] + 1, 1);
      v88 = v136;
    }

    v101 = v88[2];
    v100 = v88[3];
    if (v101 >= v100 >> 1)
    {
      sub_20CEF0AC8((v100 > 1), v101 + 1, 1);
      v88 = v136;
    }

    v88[2] = v101 + 1;
    v102 = &v88[2 * v101];
    v102[4] = v92;
    v102[5] = v93;
  }

  while (v80 != 3);
LABEL_72:
  swift_arrayDestroy();
  v134 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EC30);
  sub_20CF76364();
  sub_20D5677D8();

  v103 = sub_20D5677F8();

  v104 = v124;
  [v124 setStreet_];

  if (v121)
  {
    v105 = sub_20D5677F8();
    [v104 setCity_];
  }

  v106 = v130;
  v107 = v125;
  v108 = v123;
  if (v122)
  {
    v109 = sub_20D5677F8();
    [v104 setState_];
  }

  if (v108)
  {
    v110 = sub_20D5677F8();
    [v104 setPostalCode_];
  }

  if (v107)
  {
    v111 = sub_20D5678D8();
    v112 = sub_20D5677F8();
    if (v111 == 2)
    {
      [v104 setISOCountryCode_];
    }

    else
    {
      [v104 setCountry_];
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_20D5BA040;
  sub_20D567838();
  v114 = objc_allocWithZone(MEMORY[0x277CBDB20]);
  v115 = v104;
  v116 = sub_20D5677F8();

  v117 = [v114 initWithLabel:v116 value:v115];

  *(v113 + 32) = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C821840);
  v118 = sub_20D567A58();

  [v106 setPostalAddresses_];

  swift_getKeyPath();
  swift_getKeyPath();
  v134 = v106;
  v119 = v106;
  v126;
  sub_20D566678();
  sub_20D108B1C();
  sub_20D566628();
  sub_20D566638();
}