uint64_t sub_2458266E8()
{

  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "PassportSceneView Textures: PassportNode has not been loaded yet; aborting texture update", v7, 2u);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2458267F8()
{
  v1[2] = v0;
  v2 = sub_24590F354();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_245910D34();
  v1[7] = sub_245910D24();
  v4 = sub_245910CD4();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_2458268F0, v4, v3);
}

uint64_t sub_2458268F0()
{
  v0[10] = *(v0[2] + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_phoneNode);
  v0[11] = sub_245910D24();
  v2 = sub_245910CD4();
  v0[12] = v2;
  v0[13] = v1;

  return MEMORY[0x2822009F8](sub_245826994, v2, v1);
}

uint64_t sub_245826994()
{
  v1 = *(v0[10] + OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_loadTask);
  v0[14] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_245826A98;
    v3 = MEMORY[0x277D839B0];

    return MEMORY[0x282200460](v0 + 16, v1, v3);
  }

  else
  {

    v4 = v0[8];
    v5 = v0[9];

    return MEMORY[0x2822009F8](sub_245827018, v4, v5);
  }
}

uint64_t sub_245826A98()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_245826BB8, v3, v2);
}

uint64_t sub_245826BB8()
{

  *(v0 + 129) = *(v0 + 128);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_245826C30, v1, v2);
}

void sub_245826C30()
{
  v1 = *(v0 + 129);

  if (v1 == 1)
  {
    v36 = v0;
    v2 = sub_24580F1B4(&unk_285883098);
    swift_arrayDestroy();
    v3 = sub_2458B8D80(MEMORY[0x277D84F90]);
    v4 = v2 + 56;
    v5 = -1;
    v6 = -1 << *(v2 + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v2 + 56);
    v8 = (63 - v6) >> 6;
    v37 = *MEMORY[0x277CDBB98];
    v38 = v2;

    for (i = 0; v7; v3 = v39)
    {
      v39 = v3;
LABEL_10:
      v11 = (*(v38 + 48) + ((i << 10) | (16 * __clz(__rbit64(v7)))));
      v12 = *v11;
      v13 = v11[1];
      v14 = qword_27EE28690;

      if (v14 != -1)
      {
        swift_once();
      }

      v7 &= v7 - 1;
      v15 = qword_27EE32B38;
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 currentTraitCollection];
      v19 = v12;
      v20 = sub_2459109C4();
      v21 = [objc_opt_self() colorNamed:v20 inBundle:v17 compatibleWithTraitCollection:v18];

      v22 = [objc_allocWithZone(MEMORY[0x277CDBA90]) init];
      v23 = sub_2459109C4();
      [v22 setName_];

      [v22 setLightingModelName_];
      v24 = [v22 diffuse];
      [v24 setContents_];

      v25 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2458B7DDC(v25, v19, v13, isUniquelyReferenced_nonNull_native);
    }

    while (1)
    {
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        v0 = v36;
        v34 = *(v36 + 80);

        sub_245827128(v34, v38, v3);

        goto LABEL_18;
      }

      v7 = *(v4 + 8 * v10);
      ++i;
      if (v7)
      {
        v39 = v3;
        i = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    sub_24590C714();
    v27 = sub_24590F344();
    v28 = sub_245910F54();
    v29 = os_log_type_enabled(v27, v28);
    v31 = *(v0 + 32);
    v30 = *(v0 + 40);
    v32 = *(v0 + 24);
    if (v29)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_245767000, v27, v28, "PassportSceneView Textures: PhoneNode has not been loaded yet; aborting texture update", v33, 2u);
      MEMORY[0x245D77B40](v33, -1, -1);
    }

    (*(v31 + 8))(v30, v32);
LABEL_18:

    v35 = *(v0 + 8);

    v35();
  }
}

uint64_t sub_245827018()
{

  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "PassportSceneView Textures: PhoneNode has not been loaded yet; aborting texture update", v7, 2u);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_245827128(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a1 geometry];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 materials];
    sub_24579D5E0(0, &qword_27EE2A1A0);
    v9 = sub_245910C44();

    v43 = v5;
    v44 = v9;
    v47 = v7;
    if (v9 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
    {
      v11 = 0;
      v12 = a2 + 56;
      v46 = i;
      while (1)
      {
        if ((v44 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x245D76B30](v11, v44);
        }

        else
        {
          if (v11 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v13 = *(v44 + 32 + 8 * v11);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v16 = [v13 name];
        if (v16)
        {
          v17 = v16;
          v18 = sub_245910A04();
          v20 = v19;

          if (!*(a2 + 16))
          {

            goto LABEL_6;
          }

          sub_245911824();
          sub_245910AF4();
          v21 = sub_245911864();
          v22 = -1 << *(a2 + 32);
          v23 = v21 & ~v22;
          if (((*(v12 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
LABEL_21:

            i = v46;
            goto LABEL_6;
          }

          v24 = ~v22;
          while (1)
          {
            v25 = (*(a2 + 48) + 16 * v23);
            v26 = *v25 == v18 && v25[1] == v20;
            if (v26 || (sub_245911714() & 1) != 0)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v12 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          if (*(a3 + 16))
          {
            v45 = sub_24588C5BC(v18, v20);
            v28 = v27;

            v29 = v14;
            i = v46;
            if (v28)
            {
              v29 = *(*(a3 + 56) + 8 * v45);
            }
          }

          else
          {

            v29 = v14;
            i = v46;
          }

          v30 = v29;
          v31 = [v47 materials];
          v32 = sub_245910C44();

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v32 & 0x8000000000000000) != 0 || (v32 & 0x4000000000000000) != 0)
          {
            v32 = sub_245827974(v32);
          }

          if (v11 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20);
          *((v32 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20) = v30;

          v34 = sub_245910C34();

          [v47 setMaterials_];
        }

LABEL_6:
        ++v11;
        if (v15 == i)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

LABEL_38:

    v5 = v43;
  }

  v35 = [v5 childNodes];
  sub_24579D5E0(0, &qword_27EE2A2A0);
  v36 = sub_245910C44();

  if (v36 >> 62)
  {
    goto LABEL_51;
  }

  for (j = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_245911424())
  {
    v38 = 0;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x245D76B30](v38, v36);
      }

      else
      {
        if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      sub_245827128(v39, a2, a3);

      ++v38;
      if (v41 == j)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:
}

uint64_t sub_24582758C(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    v5 = result;
    v6 = 0;
    v7 = *result;
    while (1)
    {
      v7 = 0x5851F42D4C957F2DLL * v7 + 1;
      v9 = (v7 * v3) >> 64;
      if (v3 > v7 * v3)
      {
        v10 = -v3 % v3;
        if (v10 > v7 * v3)
        {
          do
          {
            v7 = 0x5851F42D4C957F2DLL * v7 + 1;
          }

          while (v10 > v7 * v3);
          v9 = (v7 * v3) >> 64;
        }
      }

      v11 = v6 + v9;
      if (__OFADD__(v6, v9))
      {
        break;
      }

      if (v6 != v11)
      {
        v12 = *(v2 + 16);
        if (v6 >= v12)
        {
          goto LABEL_20;
        }

        if (v11 >= v12)
        {
          goto LABEL_21;
        }

        v14 = *(v2 + 32 + 16 * v6);
        v15 = *(v2 + 32 + 16 * v11);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_245827B24(v2);
          v2 = result;
        }

        v13 = *(v2 + 16);
        if (v6 >= v13)
        {
          goto LABEL_22;
        }

        *(v2 + 32 + 16 * v6) = v15;
        if (v11 >= v13)
        {
          goto LABEL_23;
        }

        *(v2 + 32 + 16 * v11) = v14;
        *v1 = v2;
      }

      --v3;
      if (v6++ == v4)
      {
        *v5 = v7;
        return result;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

void sub_2458276E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28CA0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_2458277D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE299B0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_245827890(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C78);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_245827974(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_245911424();
  }

  return sub_245911504();
}

void sub_2458279D8()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v13 = 0;
      MEMORY[0x245D77B60](&v13, 8);
      v6 = (v13 * v2) >> 64;
      if (v2 > v13 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v13 * v2)
        {
          do
          {
            v13 = 0;
            MEMORY[0x245D77B60](&v13, 8);
          }

          while (v7 > v13 * v2);
          v6 = (v13 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v11 = *&v1[16 * v4 + 32];
        v12 = *&v1[16 * v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_245827B24(v1);
        }

        v10 = *(v1 + 2);
        if (v4 >= v10)
        {
          goto LABEL_21;
        }

        *&v1[16 * v4 + 32] = v12;
        if (v8 >= v10)
        {
          goto LABEL_22;
        }

        *&v1[16 * v8 + 32] = v11;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

id sub_245827B38(uint64_t a1, unint64_t a2)
{
  v4 = sub_24590EA74();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  [v12 setBounds_];
  v34 = v12;
  [v12 setContentsScale_];
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v13 = qword_27EE32B38;
  v14 = sub_2459109C4();
  v15 = [objc_opt_self() imageNamed:v14 inBundle:v13 compatibleWithTraitCollection:0];

  if (v15 && (v16 = [v15 CGImage], v15, v16))
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v18 = v34;
    [v34 bounds];
    [v17 setBounds_];
    [v18 bounds];
    MidX = CGRectGetMidX(v37);
    [v18 bounds];
    [v17 setPosition_];
    [v17 setContents_];
    [v17 setContentsGravity_];
    [v17 setContentsScale_];
    [v18 addSublayer_];
  }

  else
  {
    sub_24590C714();

    v20 = sub_24590F344();
    v21 = sub_245910F64();

    v22 = os_log_type_enabled(v20, v21);
    v29 = v6;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2458CC378(a1, a2, &v35);
      _os_log_impl(&dword_245767000, v20, v21, "PassportSceneView Textures: Could not load asset named %s from bundle", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x245D77B40](v24, -1, -1);
      MEMORY[0x245D77B40](v23, -1, -1);
    }

    v25 = *(v7 + 8);
    v25(v11, v6);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_2459114D4();

    v35 = 0xD000000000000021;
    v36 = 0x80000002459293F0;
    MEMORY[0x245D76160](a1, a2);
    (*(v31 + 104))(v30, *MEMORY[0x277CFFB58], v32);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579D1C0();
    v26 = swift_allocError();
    sub_24590EA94();
    v27 = v33;
    sub_24590C714();
    sub_24590C3F4();
    v25(v27, v29);

    return v34;
  }

  return v18;
}

id sub_2458280B4(uint64_t *a1, void *a2)
{
  v4 = sub_24590EAF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277D743F8];
  (*(v5 + 104))(v7, *MEMORY[0x277CFFE40], v4);
  v9 = type metadata accessor for MRZLayer();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzLineLayers] = MEMORY[0x277D84F90];
  (*(v5 + 16))(&v10[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzFormat], v7, v4);
  *&v10[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_fontWeight] = v8;
  *&v10[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_textColor] = a2;
  v10[OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_ignoresAccessibilityBold] = 1;
  v25.receiver = v10;
  v25.super_class = v9;
  v11 = a2;
  v12 = objc_msgSendSuper2(&v25, sel_init);
  sub_2457E4208();
  (*(v5 + 8))(v7, v4);
  sub_2457E4E80(a1);
  v13 = *MEMORY[0x277CDA5A8];
  v14 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
  v15 = v12;
  v16 = [v14 initWithType_];
  [v15 setCompositingFilter_];

  [v15 setPosition_];
  [v15 bounds];
  Width = CGRectGetWidth(v26);
  v18 = *(MEMORY[0x277CD9DE8] + 80);
  *&v24.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v24.m33 = v18;
  v19 = *(MEMORY[0x277CD9DE8] + 112);
  *&v24.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v24.m43 = v19;
  v20 = *(MEMORY[0x277CD9DE8] + 16);
  *&v24.m11 = *MEMORY[0x277CD9DE8];
  *&v24.m13 = v20;
  v21 = *(MEMORY[0x277CD9DE8] + 48);
  *&v24.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v24.m23 = v21;
  CATransform3DScale(&v23, &v24, 1300.0 / Width * 0.9, 1300.0 / Width * 0.9, 1.0);
  CATransform3DRotate(&v24, &v23, 1.57079633, 0.0, 0.0, 1.0);
  [v15 setTransform_];

  return v15;
}

void sub_245828398(uint64_t a1, unint64_t a2, unint64_t i, double a4)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (a1 + 32);
    v10 = MEMORY[0x277D84F90];
    do
    {
      v12 = __OFADD__(v8, 2);
      if (v8 < (v7 - 1))
      {
        if (v8 >= v7)
        {
          goto LABEL_67;
        }

        v42 = *v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24580AD20(0, *(v10 + 2) + 1, 1, v10);
        }

        v4 = *(v10 + 2);
        v13 = *(v10 + 3);
        if (v4 >= v13 >> 1)
        {
          v10 = sub_24580AD20((v13 > 1), v4 + 1, 1, v10);
        }

        *(v10 + 2) = v4 + 1;
        *&v10[16 * v4 + 32] = v42;
      }

      v11 = (v8 + 2) >= v7 || v12;
      v8 += 2;
      ++v9;
    }

    while ((v11 & 1) == 0);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v14 = 1.0;
  if (a4 <= 1.0)
  {
    v14 = a4;
  }

  if (a4 <= 0.0)
  {
    v14 = 0.0;
  }

  v15 = round(v14 * *(v10 + 2));
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_68;
  }

  if (v15 <= -9.22337204e18)
  {
    goto LABEL_69;
  }

  if (v15 >= 9.22337204e18)
  {
    goto LABEL_70;
  }

  v16 = v15;
  if (i)
  {
    v43 = sub_245814FA0(a2, i);
    sub_24582758C(&v43);
    if ((v16 & 0x8000000000000000) == 0)
    {
      v4 = v10;
      v17 = *(v10 + 2);
      if (v17 >= v16)
      {
        v17 = v16;
      }

      v18 = 2 * v17;
      if (v16)
      {
        i = v18 + 1;
      }

      else
      {
        i = 1;
      }

      sub_245911734();
      swift_unknownObjectRetain_n();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        swift_unknownObjectRelease();
        v19 = MEMORY[0x277D84F90];
      }

      v20 = *(v19 + 16);

      if (v20 != i >> 1)
      {
        goto LABEL_71;
      }

      i = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!i)
      {
        for (i = MEMORY[0x277D84F90]; ; i = v40)
        {
          swift_unknownObjectRelease();
          v21 = *(i + 16);
          if (!v21)
          {
            break;
          }

LABEL_50:
          v26 = (i + 40);
          v4 = MEMORY[0x277D84F90];
          while (1)
          {
            v27 = *(v26 - 1);
            v28 = *v26;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C60);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_245916CE0;
            *(inited + 32) = v27;
            v30 = (inited + 32);
            *(inited + 40) = v28;
            v31 = *(v4 + 16);
            v32 = v31 + 2;
            if (__OFADD__(v31, 2))
            {
              break;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || (v34 = *(v4 + 24) >> 1, v34 < v32))
            {
              if (v31 <= v32)
              {
                v35 = v31 + 2;
              }

              else
              {
                v35 = v31;
              }

              v4 = sub_24580AC1C(isUniquelyReferenced_nonNull_native, v35, 1, v4);
              v34 = *(v4 + 24) >> 1;
            }

            v36 = *(v4 + 16);
            if (v34 - v36 < 2)
            {
              goto LABEL_65;
            }

            *(v4 + 8 * v36 + 32) = *v30;

            v37 = *(v4 + 16);
            v38 = __OFADD__(v37, 2);
            v39 = v37 + 2;
            if (v38)
            {
              goto LABEL_66;
            }

            v26 += 2;
            *(v4 + 16) = v39;
            if (!--v21)
            {
              goto LABEL_61;
            }
          }

          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          swift_unknownObjectRelease();
          sub_245827890(v4, v4 + 32, 0, i);
        }

        goto LABEL_61;
      }

      goto LABEL_49;
    }

    __break(1u);
  }

  else
  {
    v43 = v10;
    sub_2458279D8();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v4 = v43;
      v22 = *(v43 + 16);
      if (v22 >= v16)
      {
        v22 = v16;
      }

      v23 = 2 * v22;
      if (v16)
      {
        i = v23 + 1;
      }

      else
      {
        i = 1;
      }

      sub_245911734();
      swift_unknownObjectRetain_n();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        swift_unknownObjectRelease();
        v24 = MEMORY[0x277D84F90];
      }

      v25 = *(v24 + 16);

      if (v25 != i >> 1)
      {
        goto LABEL_71;
      }

      i = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!i)
      {
        swift_unknownObjectRelease();
        i = MEMORY[0x277D84F90];
        v21 = *(MEMORY[0x277D84F90] + 16);
        if (v21)
        {
          goto LABEL_50;
        }

LABEL_61:

        return;
      }

LABEL_49:
      v21 = *(i + 16);
      if (v21)
      {
        goto LABEL_50;
      }

      goto LABEL_61;
    }
  }

  __break(1u);
}

id sub_2458287D4(uint64_t *a1, unint64_t a2, unint64_t a3, char a4, char *a5)
{
  v99 = a5;
  v93 = a2;
  v8 = sub_24590C1F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a4 & 1) == 0;
  if (a4)
  {
    v13 = 0xD00000000000002ALL;
  }

  else
  {
    v13 = 0xD000000000000027;
  }

  if (v12)
  {
    v14 = "sic_Set02_template_Diffuse";
  }

  else
  {
    v14 = "CoreIDVUI.StampLayer";
  }

  if (v12)
  {
    v15 = "_Set01_template_Diffuse";
  }

  else
  {
    v15 = "sic_Set01_template_Diffuse";
  }

  v16 = sub_245821710();
  v17 = sub_245827B38(v13, v14 | 0x8000000000000000);

  v86 = sub_245827B38(v13, v15 | 0x8000000000000000);

  v84 = v16;
  v18 = sub_2458280B4(a1, v16);
  v87 = v17;
  [v17 addSublayer_];
  v83 = v18;
  if (a3)
  {
    v19 = a3;
    v20 = v93;
  }

  else
  {
    sub_24590C1E4();
    v20 = sub_24590C1D4();
    v19 = v21;
    (*(v9 + 8))(v11, v8);
  }

  v22 = 0x5851F42D4C957F2DLL;

  sub_245828398(&unk_285882E70, v20, v19, 0.6);
  v85 = v23;

  v92 = v19;
  v93 = v20;
  v24 = sub_245814FA0(v20, v19);
  v25 = v99;
  v26 = *(v99 + 2);

  v27 = v26 - 2;
  if (v26 >= 2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_71;
    }

    while (1)
    {
      v28 = 0;
      v98 = v27;
      v99 = v25 + 32;
      while (1)
      {
        v24 = v24 * v22 + 1;
        v29 = (v24 * v26) >> 64;
        if (v26 > v24 * v26)
        {
          v30 = -v26 % v26;
          if (v30 > v24 * v26)
          {
            do
            {
              v24 = v24 * v22 + 1;
            }

            while (v30 > v24 * v26);
            v29 = (v24 * v26) >> 64;
          }
        }

        v31 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          break;
        }

        if (v28 != v31)
        {
          v32 = *(v25 + 2);
          if (v28 >= v32)
          {
            goto LABEL_68;
          }

          if (v31 >= v32)
          {
            goto LABEL_69;
          }

          v33 = &v99[24 * v28];
          v34 = v25;
          v25 = *v33;
          v35 = *(v33 + 1);
          v36 = v33[16];
          v27 = &v99[24 * v31];
          v37 = *(v27 + 8);
          v38 = *(v27 + 16);
          *v33 = *v27;
          *(v33 + 1) = v37;
          v33[16] = v38;
          v22 = v34;
          v100 = *(v34 + 2);

          if (v31 >= v100)
          {
            goto LABEL_70;
          }

          *v27 = v25;
          *(v27 + 8) = v35;
          *(v27 + 16) = v36;

          v25 = v22;
          v22 = 0x5851F42D4C957F2DLL;
          v27 = v98;
        }

        --v26;
        v12 = v28++ == v27;
        if (v12)
        {
          goto LABEL_27;
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      v25 = sub_245827960(v25);
    }
  }

LABEL_27:
  v91 = *(v85 + 16);
  if (v91)
  {
    v90 = v85 + 32;
    v89 = objc_opt_self();
    v39 = 0;
    v40 = 0;
    v94 = v25 + 32;
    v88 = xmmword_24591A2C0;
    v99 = v25;
    while (1)
    {
      v98 = v39;
      v26 = *(v90 + 8 * v39);
      v103 = v93;
      v104 = v92;

      MEMORY[0x245D76160](95, 0xE100000000000000);
      v97 = v26;
      v102 = v26;
      v41 = sub_2459116E4();
      v27 = v42;
      MEMORY[0x245D76160](v41);

      v95 = v103;
      v96 = v104;
        ;
      }

      v44 = (i * 3uLL) >> 64;
      v45 = v44 + 1;
      v103 = MEMORY[0x277D84F90];
      v24 = &v103;
      sub_24577CD14(0, v44 + 1, 0);
      v46 = *(v25 + 2);
      if (!v46)
      {
        break;
      }

      v47 = v40 % v46;
      if (v47 < 0)
      {
        goto LABEL_64;
      }

      v100 = v40;
      v25 = v103;
      v48 = &v94[24 * v47];
      v50 = *v48;
      v49 = *(v48 + 1);
      v26 = v48[16];
      v22 = *(v103 + 16);
      v24 = *(v103 + 24);
      v27 = v22 + 1;

      if (v22 >= v24 >> 1)
      {
        v78 = v24 > 1;
        v24 = &v103;
        sub_24577CD14(v78, v22 + 1, 1);
        v25 = v103;
      }

      *(v25 + 2) = v27;
      v51 = &v25[24 * v22];
      *(v51 + 4) = v50;
      *(v51 + 5) = v49;
      v51[48] = v26;
      if (!v44)
      {
        goto LABEL_43;
      }

      if (__OFADD__(v100, 1))
      {
        goto LABEL_66;
      }

      v52 = *(v99 + 2);
      if (!v52)
      {
        break;
      }

      v53 = (v100 + 1) % v52;
      if (v53 < 0)
      {
        goto LABEL_64;
      }

      v54 = &v94[24 * v53];
      v26 = *v54;
      v55 = *(v54 + 1);
      v56 = v54[16];
      v103 = v25;
      v22 = *(v25 + 2);
      v24 = *(v25 + 3);
      v27 = v22 + 1;

      if (v22 >= v24 >> 1)
      {
        v79 = v24 > 1;
        v24 = &v103;
        sub_24577CD14(v79, v22 + 1, 1);
        v25 = v103;
      }

      *(v25 + 2) = v27;
      v57 = &v25[24 * v22];
      *(v57 + 4) = v26;
      *(v57 + 5) = v55;
      v57[48] = v56;
      if (v44 != 1)
      {
        v58 = v100;
        if (__OFADD__(v100, 2))
        {
          goto LABEL_66;
        }

        v59 = *(v99 + 2);
        if (!v59)
        {
          break;
        }

        v60 = (v100 + 2) % v59;
        if (v60 < 0)
        {
          goto LABEL_64;
        }

        v61 = &v94[24 * v60];
        v26 = *v61;
        v62 = *(v61 + 1);
        v63 = v61[16];
        v103 = v25;
        v22 = *(v25 + 2);
        v24 = *(v25 + 3);
        v27 = v22 + 1;

        if (v22 >= v24 >> 1)
        {
          v80 = v24 > 1;
          v24 = &v103;
          sub_24577CD14(v80, v22 + 1, 1);
          v25 = v103;
        }

        *(v25 + 2) = v27;
        v64 = &v25[24 * v22];
        *(v64 + 4) = v26;
        *(v64 + 5) = v62;
        v64[48] = v63;
        v65 = __OFADD__(v58, v45);
        v40 = v58 + v45;
        if (v65)
        {
          goto LABEL_65;
        }
      }

      else
      {
LABEL_43:
        v40 = v100 + v45;
        if (__OFADD__(v100, v45))
        {
          goto LABEL_65;
        }
      }

      v66 = _s21StampPageOverlayLayerCMa();
      v67 = objc_allocWithZone(v66);
      *&v67[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView21StampPageOverlayLayer_fixedSize] = v88;
      *&v67[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView21StampPageOverlayLayer_placedFrames] = MEMORY[0x277D84F90];
      v68 = &v67[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView21StampPageOverlayLayer_rng];
      *v68 = 0;
      v68[8] = 1;
      v69 = sub_245814FA0(v95, v96);

      *v68 = v69;
      v68[8] = 0;
      v101.receiver = v67;
      v101.super_class = v66;
      v70 = objc_msgSendSuper2(&v101, sel_init);
      [v70 setContentsScale_];
      v71 = [v89 clearColor];
      v72 = [v71 CGColor];

      [v70 setBackgroundColor_];
      [v70 setBounds_];
      [v70 setAllowsGroupBlending_];
      sub_2458251B0(v25);

      v73 = v97;
      if (v97 <= 0xF)
      {
        v74 = v97 - 12;
        if (v97 < 0xC)
        {
          v74 = v97;
        }

        if (v74 <= 0xB)
        {
          v75 = v74 > 5;
          v76 = v74 & 1;
          if (v74 >= 6)
          {
            v74 -= 6;
          }

          [v70 setPosition_];
          if (v73 <= 0xB)
          {
            v77 = v87;
          }

          else
          {
            v77 = v86;
          }

          [v77 addSublayer_];
        }
      }

      v39 = v98 + 1;

      v25 = v99;
      v22 = 0x5851F42D4C957F2DLL;
      if (v39 == v91)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_62:

  return v87;
}

id sub_24582904C(uint64_t a1)
{
  v2 = sub_2459109C4();
  v3 = objc_opt_self();
  v4 = [v3 filterWithName_];

  if (v4)
  {
    v5 = sub_2459109C4();
    v6 = [v3 filterWithName_];

    if (v6)
    {
      v7 = *MEMORY[0x277CBFAF0];
      [v4 setValue:a1 forKey:*MEMORY[0x277CBFAF0]];
      v8 = sub_24590C2F4();
      [v4 setValue:v8 forKey:*MEMORY[0x277CBFAC0]];

      v9 = sub_24590C2F4();
      [v4 setValue:v9 forKey:*MEMORY[0x277CBFAD8]];

      v10 = sub_24590C2F4();
      [v4 setValue:v10 forKey:*MEMORY[0x277CBFB10]];

      v11 = [v4 outputImage];
      [v6 setValue:v11 forKey:v7];

      v12 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithX:0.0 Y:0.18];
      v13 = sub_2459109C4();
      [v6 setValue:v12 forKey:v13];

      v14 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithX:0.25 Y:0.28];
      v15 = sub_2459109C4();
      [v6 setValue:v14 forKey:v15];

      v16 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithX:0.5 Y:0.5];
      v17 = sub_2459109C4();
      [v6 setValue:v16 forKey:v17];

      v18 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithX:0.75 Y:0.94];
      v19 = sub_2459109C4();
      [v6 setValue:v18 forKey:v19];

      v20 = [objc_allocWithZone(MEMORY[0x277CBF788]) initWithX:1.0 Y:1.5];
      v21 = sub_2459109C4();
      [v6 setValue:v20 forKey:v21];

      v22 = [v6 outputImage];
      return v22;
    }
  }

  return 0;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_245829408(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24582945C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s17TransitionContextV5PhoneVwet(unsigned __int16 *a1, unsigned int a2)
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

  v4 = *(a1 + 2);
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s17TransitionContextV5PhoneVwst(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 2) = a2 + 2;
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

uint64_t sub_245829604(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[32])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_245829658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t _s17TransitionContextV8PassportVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 65286 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65286 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65286;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65286;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65286;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 7;
  if (v6 < 6)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *_s17TransitionContextV8PassportVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65286 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s17TransitionContextV6CameraVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *_s17TransitionContextV6CameraVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_245829980(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 88) = 2;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 88 * v2;
    v8 = *(v4 + 64);
    v9 = *(v4 + 80);
    v10 = *(v4 + 96);
    v11 = *(v4 + 112);
    v6 = *(v4 + 32);
    v7 = *(v4 + 48);
    v1[1] = v2 + 1;
    v5 = v1[2];
    if (!__OFADD__(v5, 1))
    {
      v1[2] = v5 + 1;
      *a1 = v5;
      *(a1 + 40) = v8;
      *(a1 + 56) = v9;
      *(a1 + 72) = v10;
      *(a1 + 88) = v11;
      *(a1 + 8) = v6;
      *(a1 + 24) = v7;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_245829A38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying))
  {
    sub_24590C714();
    v10 = sub_24590F344();
    v11 = sub_245910F54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245767000, v10, v11, "PassportSceneView Transition: Animation is already playing! Ignoring duplicate call.", v12, 2u);
      MEMORY[0x245D77B40](v12, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying) = 1;
    v14 = *(v3 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onAnimationPlayStateUpdated);
    if (v14)
    {

      v14(1);
      sub_245771C34(v14);
    }

    sub_245829C90();
    sub_245829E48();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = a2;
    sub_24581730C(0);
    v18 = v17;
    sub_245771BB4(a1);
    sub_24582A208(v18, sub_24582C230, v16);
  }
}

id sub_245829C90()
{
  v14.receiver = *(v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_cameraNode);
  receiver = v14.receiver;
  v14.super_class = _s10CameraNodeCMa();
  objc_msgSendSuper2(&v14, sel_removeAllActions);
  [*&receiver[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView10CameraNode_cameraContainerNode] removeAllActions];
  v13.receiver = *(v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_passportNode);
  v2 = v13.receiver;
  v13.super_class = _s12PassportNodeCMa();
  objc_msgSendSuper2(&v13, sel_removeAllActions);
  v3 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245911424())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D76B30](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeAllActions];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  v12.receiver = *(v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_phoneNode);
  v10 = v12.receiver;
  v12.super_class = _s9PhoneNodeCMa();
  objc_msgSendSuper2(&v12, sel_removeAllActions);
  return [*&v10[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowNode] removeAllActions];
}

id sub_245829E48()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_passportNode);
  sub_24581D884();
  v18.receiver = *(v1 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_cameraNode);
  receiver = v18.receiver;
  v18.super_class = _s10CameraNodeCMa();
  objc_msgSendSuper2(&v18, sel_removeAllActions);
  v4 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView10CameraNode_cameraContainerNode;
  [*&receiver[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView10CameraNode_cameraContainerNode] removeAllActions];
  [receiver eulerAngles];
  LODWORD(v5) = -1077342246;
  [receiver setEulerAngles_];
  v6 = *&receiver[v4];
  [v6 position];
  [v6 setPosition_];
  sub_245910F04();
  sub_245910F14();
  sub_245910F04();
  sub_245910F14();
  v17.receiver = v2;
  v17.super_class = _s12PassportNodeCMa();
  objc_msgSendSuper2(&v17, sel_removeAllActions);
  v7 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
  swift_beginAccess();
  v8 = *&v2[v7];
  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245911424())
  {

    if (!i)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x245D76B30](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [v11 removeAllActions];

      ++v10;
      if (v13 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  [v2 position];
  [v2 setPosition_];
  [v2 eulerAngles];
  [v2 setEulerAngles_];
  v14 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_phoneNode);
  v16.receiver = v14;
  v16.super_class = _s9PhoneNodeCMa();
  objc_msgSendSuper2(&v16, sel_removeAllActions);
  [*&v14[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowNode] removeAllActions];
  return [v14 setHidden_];
}

void sub_24582A124(uint64_t a1, void (*a2)(_BYTE *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    if (!a2)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = Strong[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying];
  Strong[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_isAnimationPlaying] = 0;
  if ((v4 & 1) == 0)
  {

    goto LABEL_7;
  }

  v5 = *&Strong[OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_onAnimationPlayStateUpdated];
  if (v5)
  {
    v6 = Strong;

    v5(0);

    Strong = sub_245771C34(v5);
    if (!a2)
    {
      return;
    }
  }

  else
  {

    if (!a2)
    {
      return;
    }
  }

LABEL_8:
  a2(Strong);
}

void sub_24582A208(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v38 = 0;
    v39 = 0;
    v37 = a1;
    sub_245829980(v34);
    v7 = v36;
    if (v36 == 2)
    {

      v8 = 0;
LABEL_8:
      v10 = a1 + 32;
      do
      {
        v11 = *(v10 + 48);
        *&v34[32] = *(v10 + 32);
        *&v34[48] = v11;
        *v35 = *(v10 + 64);
        v35[16] = *(v10 + 80);
        v12 = *(v10 + 16);
        v14 = v7 != 2 && v8 == 0;
        *v34 = *v10;
        *&v34[16] = v12;
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = a2;
        *(v15 + 32) = a3;
        sub_245771BB4(a2);
        sub_24582A668(v34, sub_24582C23C, v15);

        --v8;
        v10 += 88;
        --v5;
      }

      while (v5);
      return;
    }

    v8 = *v34;
    v9 = *(v37 + 16);
    if (v9 == v38)
    {
LABEL_4:

      goto LABEL_8;
    }

    if (v9 > v38)
    {
      v16 = *&v34[56];
      v17 = *v35;
      v18 = v39;
      v31 = *&v34[8];
      v32 = *&v34[24];
      v33 = *&v34[40];
      v29 = *&v35[8];
      v30 = v36;
      v19 = v9 > v38;
      v20 = v9 - v38;
      if (v19)
      {
        v21 = v39 + 1;
        if (!__OFADD__(v39, 1))
        {
          v22 = v37 + 88 * v38 + 96;
          do
          {
            if (v16 + v17 >= *(v22 - 16) + *(v22 - 8))
            {
              v26 = v31;
              v27 = v32;
              v28 = v33;
              v24 = v29;
              v25 = v30;
              if (!--v20)
              {
                goto LABEL_4;
              }
            }

            else
            {
              v26 = *(v22 - 64);
              v27 = *(v22 - 48);
              v28 = *(v22 - 32);
              v24 = *v22;
              v25 = *(v22 + 16);
              v8 = v18;
              v16 = *(v22 - 16);
              v17 = *(v22 - 8);
              if (!--v20)
              {
                goto LABEL_4;
              }
            }

            v18 = v21;
            v22 += 88;
            v31 = v26;
            v32 = v27;
            v33 = v28;
            v29 = v24;
            v30 = v25;
          }

          while (!__OFADD__(v21++, 1));
        }

        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }

  else if (a2)
  {
    a2();
  }
}

uint64_t sub_24582A478(uint64_t result, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = result;
    v26 = MEMORY[0x277D84F90];
    sub_24577CCF4(0, v5, 0);
    v7 = (v6 + 32);
    v8 = *(v26 + 16);
    v9 = 88 * v8;
    for (i = v5 - 1; ; --i)
    {
      v24 = v7[3];
      v25 = v7[4];
      v22 = v7[1];
      v23 = v7[2];
      v21 = *v7;
      v11 = *(v26 + 24);
      if (v8 >= v11 >> 1)
      {
        sub_24577CCF4((v11 > 1), v8 + 1, 1);
      }

      *(v26 + 16) = v8 + 1;
      v12 = v26 + v9;
      *(v12 + 32) = v21;
      *(v12 + 80) = v24;
      *(v12 + 96) = v25;
      *(v12 + 48) = v22;
      *(v12 + 64) = v23;
      *(v12 + 112) = 0;
      if (!i)
      {
        break;
      }

      v9 += 88;
      v7 = (v7 + 88);
      ++v8;
    }

    v13 = 0;
    for (j = 32; ; j += 88)
    {
      v15 = *(v26 + j + 16);
      v16 = *(v26 + j + 80);
      v19 = *(v26 + j + 48);
      v20 = *(v26 + j + 64);
      v18 = *(v26 + j);
      v27[2] = *(v26 + j + 32);
      v27[3] = v19;
      v27[4] = v20;
      v28 = v16;
      v27[0] = v18;
      v27[1] = v15;
      v17 = swift_allocObject();
      v17[2] = v13;
      v17[3] = v26;
      v17[4] = a2;
      v17[5] = a3;

      sub_245771BB4(a2);
      sub_24582A668(v27, sub_24582C34C, v17);

      if (v8 == v13)
      {
        break;
      }

      ++v13;
    }
  }

  else if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_24582A668(unsigned __int16 *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  if (*a1 == 5)
  {
    v7 = 4;
  }

  else
  {
    v7 = HIBYTE(*a1);
  }

  if (*a1 == 5)
  {
    v8 = 4;
  }

  else
  {
    v8 = *a1;
  }

  if (a1[1] == 7)
  {
    v9 = 6;
  }

  else
  {
    v9 = HIBYTE(a1[1]);
  }

  if (a1[1] == 7)
  {
    LOBYTE(v10) = 6;
  }

  else
  {
    v10 = a1[1];
  }

  v11 = *(a1 + 8);
  if (v11 == 3)
  {
    v150 = 0.0;
    v151 = 1.0;
    v148 = 0.15;
    v12 = 0.333;
    v13 = 0.333;
    LODWORD(v11) = 2;
  }

  else
  {
    v148 = *(a1 + 2);
    v12 = *(a1 + 6);
    v13 = *(a1 + 8);
    v150 = *(a1 + 7);
    v151 = *(a1 + 9);
  }

  v14 = (*(a1 + 42) << 16) & 0xFF0000;
  v15 = v14 == 196608;
  if (v14 == 196608)
  {
    v16 = 2;
  }

  else
  {
    v16 = *(a1 + 42);
  }

  if (v15)
  {
    LOBYTE(v17) = 3;
  }

  else
  {
    v17 = (a1[20] | (*(a1 + 42) << 16)) >> 8;
  }

  v156 = v17;
  v157 = v16;
  if (v15)
  {
    LOBYTE(v18) = 3;
  }

  else
  {
    v18 = a1[20];
  }

  v158 = v18;
  v20 = *(a1 + 6);
  v19 = *(a1 + 7);
  v162 = *(a1 + 16);
  v160 = *(a1 + 18);
  v161 = *(a1 + 17);
  v159 = *(a1 + 19);
  v21 = *(a1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v152 = (v22 + 16);
  v153 = v21;
  v154 = v22;
  v155 = v11;
  if (v8 != 4 && v7 != 4)
  {
    v146 = v10;
    v23 = *(v4 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_cameraNode);
    v24 = swift_allocObject();
    v24[2] = v22;
    v24[3] = a2;
    v24[4] = a3;
    if (v8 > 1u)
    {
      if (v8 != 2)
      {
        v26 = -1081734511;
        goto LABEL_36;
      }

      v25 = 14.0;
      v26 = -1077342246;
    }

    else
    {
      v25 = 16.0;
      v26 = -1077342246;
      if (!v8)
      {
LABEL_36:
        v25 = 20.0;
        if (v7 > 1)
        {
          goto LABEL_37;
        }

        goto LABEL_33;
      }
    }

    if (v7 > 1)
    {
LABEL_37:
      if (v7 == 2)
      {
        v27 = 14.0;
        v28 = -1077342246;
LABEL_39:
        if (v21)
        {
LABEL_40:
          LODWORD(v145) = v9;
          v149 = v4;
          v29 = objc_opt_self();
          v30 = swift_allocObject();
          *(v30 + 16) = v20;
          *(v30 + 24) = v162;
          *(v30 + 28) = v161;
          *(v30 + 32) = v160;
          *(v30 + 36) = v159;
          *(v30 + 40) = v26;
          *(v30 + 44) = v28;
          *(v30 + 48) = sub_2458177B0;
          *(v30 + 56) = 0;
          v171 = sub_2458211F0;
          v172 = v30;
          aBlock = MEMORY[0x277D85DD0];
          v168 = 1107296256;
          v169 = sub_245817970;
          v170 = &block_descriptor_78;
          v31 = _Block_copy(&aBlock);

          sub_245771BB4(a2);

          v32 = [v29 customActionWithDuration:v31 actionBlock:v20];
          _Block_release(v31);
          if (v19 > 0.0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
            v33 = swift_allocObject();
            *(v33 + 16) = xmmword_2459186C0;
            *(v33 + 32) = [v29 waitForDuration_];
            *(v33 + 40) = v32;
            sub_24582C290();
            v34 = v32;
            v35 = sub_245910C34();

            v32 = [v29 sequence_];
          }

          v36 = swift_allocObject();
          *(v36 + 16) = v20;
          *(v36 + 24) = v162;
          *(v36 + 28) = v161;
          *(v36 + 32) = v160;
          *(v36 + 36) = v159;
          *(v36 + 40) = v25;
          *(v36 + 44) = v27;
          *(v36 + 48) = sub_245817808;
          *(v36 + 56) = 0;
          v171 = sub_2458211F0;
          v172 = v36;
          aBlock = MEMORY[0x277D85DD0];
          v168 = 1107296256;
          v169 = sub_245817970;
          v170 = &block_descriptor_85;
          v37 = _Block_copy(&aBlock);

          v38 = [v29 customActionWithDuration:v37 actionBlock:v20];
          _Block_release(v37);
          if (v19 > 0.0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_2459186C0;
            *(v39 + 32) = [v29 waitForDuration_];
            *(v39 + 40) = v38;
            sub_24582C290();
            v40 = v38;
            v41 = sub_245910C34();

            v38 = [v29 sequence_];
          }

          v4 = v149;
          v22 = v154;
          [v23 runAction_];
          v11 = *&v23[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView10CameraNode_cameraContainerNode];
          v171 = sub_24582C3E0;
          v172 = v24;
          aBlock = MEMORY[0x277D85DD0];
          v168 = 1107296256;
          v169 = sub_2458935A8;
          v170 = &block_descriptor_88;
          v42 = _Block_copy(&aBlock);

          [v11 runAction:v38 completionHandler:v42];

          _Block_release(v42);

          v21 = v153;
          LODWORD(v11) = v155;
          v9 = v145;
LABEL_51:
          LOBYTE(v10) = v146;
          goto LABEL_52;
        }

LABEL_47:

        sub_245771BB4(a2);

        sub_245771BB4(a2);
        v164.receiver = v23;
        v164.super_class = _s10CameraNodeCMa();
        objc_msgSendSuper2(&v164, sel_removeAllActions);
        v43 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView10CameraNode_cameraContainerNode;
        [*&v23[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView10CameraNode_cameraContainerNode] removeAllActions];
        [v23 eulerAngles];
        LODWORD(v44) = v28;
        [v23 setEulerAngles_];
        v45 = *&v23[v43];
        [v45 position];
        [v45 setPosition_];
        v46 = swift_beginAccess();
        if ((*(v22 + 16) & 1) == 0)
        {
          *v152 = 1;
          if (a2)
          {
            a2(v46);
          }
        }

        sub_245771C34(a2);
        LODWORD(v11) = v155;
        goto LABEL_51;
      }

      v28 = -1081734511;
LABEL_46:
      v27 = 20.0;
      if (v21)
      {
        goto LABEL_40;
      }

      goto LABEL_47;
    }

LABEL_33:
    v27 = 16.0;
    v28 = -1077342246;
    if (v7)
    {
      goto LABEL_39;
    }

    goto LABEL_46;
  }

LABEL_52:
  if (v10 == 6 || v9 == 6)
  {
    goto LABEL_91;
  }

  v147 = *(v4 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_passportNode);
  v47 = swift_allocObject();
  v47[2] = v22;
  v47[3] = a2;
  v47[4] = a3;

  sub_245771BB4(a2);

  sub_245771BB4(a2);
  if (!v10)
  {
    sub_245910F04();
    v49 = v50;
    goto LABEL_62;
  }

  sub_245910F04();
  v49 = v48;
  if (v10 <= 2u)
  {
    if (v10 != 1)
    {
      goto LABEL_62;
    }

LABEL_60:
    sub_245910F04();
    v52 = v51;
    if (v9)
    {
      goto LABEL_63;
    }

LABEL_61:
    sub_245910F04();
    v54 = v53;
    goto LABEL_68;
  }

  if (v10 == 4)
  {
    goto LABEL_60;
  }

LABEL_62:
  sub_245910F14();
  v52 = v55;
  if (!v9)
  {
    goto LABEL_61;
  }

LABEL_63:
  sub_245910F04();
  v54 = v56;
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      goto LABEL_67;
    }

LABEL_68:
    sub_245910F14();
    goto LABEL_69;
  }

  if (v9 != 4)
  {
    goto LABEL_68;
  }

LABEL_67:
  sub_245910F04();
LABEL_69:
  v58 = v57;
  v145 = v47;
  if (v21)
  {

    sub_245771C34(a2);
    v165 = MEMORY[0x277D84F90];
    sub_245911564();
    v59 = objc_opt_self();
    v60 = swift_allocObject();
    *(v60 + 16) = v20;
    *(v60 + 24) = v162;
    *(v60 + 28) = v161;
    *(v60 + 32) = v160;
    *(v60 + 36) = v159;
    *(v60 + 40) = v49;
    *(v60 + 44) = v54;
    *(v60 + 48) = sub_245817808;
    *(v60 + 56) = 0;
    v171 = sub_2458211F0;
    v172 = v60;
    aBlock = MEMORY[0x277D85DD0];
    v168 = 1107296256;
    v169 = sub_245817970;
    v170 = &block_descriptor_55;
    v61 = _Block_copy(&aBlock);

    v62 = [v59 customActionWithDuration:v61 actionBlock:v20];
    _Block_release(v61);
    v63 = v21;
    if (v19 > 0.0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_2459186C0;
      *(v64 + 32) = [v59 waitForDuration_];
      *(v64 + 40) = v62;
      sub_24582C290();
      v65 = v62;
      v66 = sub_245910C34();

      v67 = [v59 sequence_];
    }

    sub_245911544();
    sub_245911574();
    sub_245911584();
    sub_245911554();
    v68 = swift_allocObject();
    *(v68 + 16) = v20;
    *(v68 + 24) = v162;
    *(v68 + 28) = v161;
    *(v68 + 32) = v160;
    *(v68 + 36) = v159;
    *(v68 + 40) = v52;
    *(v68 + 44) = v58;
    *(v68 + 48) = sub_24581E94C;
    *(v68 + 56) = 0;
    v171 = sub_2458211F0;
    v172 = v68;
    aBlock = MEMORY[0x277D85DD0];
    v168 = 1107296256;
    v169 = sub_245817970;
    v170 = &block_descriptor_62;
    v69 = _Block_copy(&aBlock);

    v70 = [v59 customActionWithDuration:v69 actionBlock:v20];
    _Block_release(v69);
    if (v19 > 0.0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_2459186C0;
      *(v71 + 32) = [v59 waitForDuration_];
      *(v71 + 40) = v70;
      sub_24582C290();
      v72 = v70;
      v73 = sub_245910C34();

      v74 = [v59 sequence_];
    }

    v21 = v63;
    v22 = v154;
    sub_245911544();
    sub_245911574();
    sub_245911584();
    sub_245911554();
    sub_24582C290();
    v75 = sub_245910C34();

    v76 = [v59 group_];

    v77 = swift_allocObject();
    *(v77 + 16) = sub_24582C3E0;
    *(v77 + 24) = v145;
    v171 = sub_24582C2DC;
    v172 = v77;
    aBlock = MEMORY[0x277D85DD0];
    v168 = 1107296256;
    v169 = sub_2458935A8;
    v170 = &block_descriptor_68;
    v78 = _Block_copy(&aBlock);

    [v147 runAction:v76 completionHandler:v78];

    _Block_release(v78);
  }

  else
  {
    v79 = _s12PassportNodeCMa();
    v166.receiver = v147;
    v166.super_class = v79;
    objc_msgSendSuper2(&v166, sel_removeAllActions);
    v80 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView12PassportNode_pageNodes;
    swift_beginAccess();
    v81 = *&v147[v80];
    if (v81 >> 62)
    {
      goto LABEL_122;
    }

    for (i = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_245911424())
    {

      if (!i)
      {
        break;
      }

      v83 = 0;
      while (1)
      {
        if ((v81 & 0xC000000000000001) != 0)
        {
          v84 = MEMORY[0x245D76B30](v83, v81);
        }

        else
        {
          if (v83 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_121;
          }

          v84 = *(v81 + 8 * v83 + 32);
        }

        v85 = v84;
        v86 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        [v84 removeAllActions];

        ++v83;
        if (v86 == i)
        {
          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      ;
    }

LABEL_86:

    [v147 position];
    [v147 setPosition_];
    [v147 eulerAngles];
    [v147 setEulerAngles_];
    v87 = swift_beginAccess();
    if ((*v152 & 1) == 0)
    {
      *v152 = 1;
      if (a2)
      {
        a2(v87);
      }
    }

    v22 = v154;

    sub_245771C34(a2);
    v21 = v153;
  }

  LODWORD(v11) = v155;
LABEL_91:
  if (v11 != 2)
  {
    v88 = swift_allocObject();
    v88[2] = v22;
    v88[3] = a2;
    v88[4] = a3;

    sub_245771BB4(a2);
    if (v11)
    {
      sub_24581E160(v21, sub_24582C2E4, v88, v20, v19, v148, v12, v150, v13, v151);
    }

    else
    {
      sub_24581DAD4(v21, sub_24582C2E4, v88, v20, v19, v12, v150, v13, v151);
    }
  }

  if (v158 != 3 && v156 != 3)
  {
    v89 = *(v4 + OBJC_IVAR____TtC9CoreIDVUI17PassportSceneView_phoneNode);
    v90 = swift_allocObject();
    v90[2] = v22;
    v90[3] = a2;
    v90[4] = a3;

    sub_245771BB4(a2);

    sub_245771BB4(a2);
    sub_245910F04();
    v92 = v91;
    v94 = v93;
    sub_245910F04();
    v96 = v95;
    v98 = v97;
    if (v21)
    {

      sub_245771C34(a2);
      v99 = objc_opt_self();
      v100 = swift_allocObject();
      *(v100 + 16) = v20;
      *(v100 + 24) = v162;
      *(v100 + 28) = v161;
      *(v100 + 32) = v160;
      *(v100 + 36) = v159;
      *(v100 + 40) = v92;
      *(v100 + 44) = v96;
      *(v100 + 48) = sub_2458237F0;
      *(v100 + 56) = 0;
      v171 = sub_245820E80;
      v172 = v100;
      aBlock = MEMORY[0x277D85DD0];
      v168 = 1107296256;
      v169 = sub_245817970;
      v170 = &block_descriptor_21;
      v101 = _Block_copy(&aBlock);

      v102 = [v99 customActionWithDuration:v101 actionBlock:v20];
      _Block_release(v101);
      if (v19 > 0.0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_2459186C0;
        *(v103 + 32) = [v99 waitForDuration_];
        *(v103 + 40) = v102;
        sub_24582C290();
        v104 = v102;
        v105 = sub_245910C34();

        v102 = [v99 sequence_];
      }

      v106 = swift_allocObject();
      *(v106 + 16) = v20;
      *(v106 + 24) = v162;
      *(v106 + 28) = v161;
      *(v106 + 32) = v160;
      *(v106 + 36) = v159;
      *(v106 + 40) = v94;
      *(v106 + 44) = v98;
      *(v106 + 48) = sub_245817808;
      *(v106 + 56) = 0;
      v171 = sub_2458211F0;
      v172 = v106;
      aBlock = MEMORY[0x277D85DD0];
      v168 = 1107296256;
      v169 = sub_245817970;
      v170 = &block_descriptor_22;
      v107 = _Block_copy(&aBlock);

      v108 = [v99 customActionWithDuration:v107 actionBlock:v20];
      _Block_release(v107);
      if (v19 > 0.0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
        v109 = swift_allocObject();
        *(v109 + 16) = xmmword_2459186C0;
        *(v109 + 32) = [v99 waitForDuration_];
        *(v109 + 40) = v108;
        sub_24582C290();
        v110 = v108;
        v111 = sub_245910C34();

        v108 = [v99 sequence_];
      }

      v112 = swift_allocObject();
      *(v112 + 16) = v20;
      *(v112 + 24) = v162;
      *(v112 + 28) = v161;
      *(v112 + 32) = v160;
      *(v112 + 36) = v159;
      *(v112 + 40) = v96 - v92;
      *(v112 + 44) = v96 - v96;
      *(v112 + 48) = sub_2458237F0;
      *(v112 + 56) = 0;
      v171 = sub_2458211F0;
      v172 = v112;
      aBlock = MEMORY[0x277D85DD0];
      v168 = 1107296256;
      v169 = sub_245817970;
      v170 = &block_descriptor_29;
      v113 = _Block_copy(&aBlock);

      v114 = [v99 customActionWithDuration:v113 actionBlock:v20];
      _Block_release(v113);
      if (v19 > 0.0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
        v115 = swift_allocObject();
        *(v115 + 16) = xmmword_2459186C0;
        *(v115 + 32) = [v99 waitForDuration_];
        *(v115 + 40) = v114;
        sub_24582C290();
        v116 = v114;
        v117 = sub_245910C34();

        v114 = [v99 sequence_];
      }

      v118 = swift_allocObject();
      *(v118 + 16) = v20;
      *(v118 + 24) = v162;
      *(v118 + 28) = v161;
      *(v118 + 32) = v160;
      *(v118 + 36) = v159;
      *(v118 + 40) = v92;
      *(v118 + 44) = v96;
      *(v118 + 48) = sub_245822F40;
      *(v118 + 56) = 0;
      v171 = sub_2458211F0;
      v172 = v118;
      aBlock = MEMORY[0x277D85DD0];
      v168 = 1107296256;
      v169 = sub_245817970;
      v170 = &block_descriptor_36_0;
      v119 = _Block_copy(&aBlock);

      v120 = [v99 customActionWithDuration:v119 actionBlock:v20];
      _Block_release(v119);
      if (v19 > 0.0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
        v121 = swift_allocObject();
        *(v121 + 16) = xmmword_2459186C0;
        *(v121 + 32) = [v99 waitForDuration_];
        *(v121 + 40) = v120;
        sub_24582C290();
        v122 = v120;
        v123 = sub_245910C34();

        v120 = [v99 sequence_];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_2459186C0;
      *(v124 + 32) = v102;
      *(v124 + 40) = v108;
      sub_24582C290();
      v163 = v102;
      v125 = v108;
      v126 = sub_245910C34();

      v127 = [v99 group_];

      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_2459186C0;
      *(v128 + 32) = v114;
      *(v128 + 40) = v120;
      v129 = v114;
      v130 = v120;
      v131 = sub_245910C34();

      v132 = [v99 group_];

      [v89 runAction_];
      v133 = *&v89[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowNode];
      v134 = swift_allocObject();
      *(v134 + 16) = sub_24582C3E0;
      *(v134 + 24) = v90;
      v171 = sub_24582C2DC;
      v172 = v134;
      aBlock = MEMORY[0x277D85DD0];
      v168 = 1107296256;
      v169 = sub_2458935A8;
      v170 = &block_descriptor_42;
      v135 = _Block_copy(&aBlock);
      v21 = v133;

      [v21 runAction:v132 completionHandler:v135];

      _Block_release(v135);

      LOBYTE(v21) = v153;
    }

    else
    {
      v136 = _s9PhoneNodeCMa();
      v173.receiver = v89;
      v173.super_class = v136;
      objc_msgSendSuper2(&v173, sel_removeAllActions);
      v137 = OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowNode;
      [*&v89[OBJC_IVAR____TtCC9CoreIDVUI17PassportSceneView9PhoneNode_shadowNode] removeAllActions];
      [v89 position];
      [v89 setPosition_];
      [v89 position];
      [v89 setPosition_];
      v138 = *&v89[v137];
      [v138 position];
      [v138 setPosition_];

      LODWORD(v139) = 1.0;
      v140 = ((v96 + -0.25) / -2.25) + 1.0;
      v141 = 0.0;
      if (v140 > 0.0)
      {
        *&v141 = ((v96 + -0.25) / -2.25) + 1.0;
      }

      if (v140 <= 1.0)
      {
        v142 = *&v141;
      }

      else
      {
        v142 = 1.0;
      }

      [*&v89[v137] setOpacity_];
      v143 = swift_beginAccess();
      if ((*v152 & 1) == 0)
      {
        *v152 = 1;
        if (a2)
        {
          a2(v143);
        }
      }

      sub_245771C34(a2);
      LOBYTE(v21) = v153;
    }
  }

  if (v157 != 2)
  {
    sub_245822F6C(v157 & 1, v21, v19);
  }
}

uint64_t sub_24582C1B4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    result = swift_beginAccess();
    *(a1 + 16) = 1;
    if (a2)
    {
      return a2(result);
    }
  }

  return result;
}

uint64_t sub_24582C23C()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16) == 1 && v1 != 0)
  {
    return v1();
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24582C290()
{
  result = qword_27EE2A2D0;
  if (!qword_27EE2A2D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE2A2D0);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24582C34C()
{
  v1 = v0[4];
  if (*(v0[3] + 16) - 1 == v0[2] && v1 != 0)
  {
    return v1();
  }

  return result;
}

uint64_t sub_24582C3E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_24590D724();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  sub_245910D34();
  *(v5 + 80) = sub_245910D24();
  v8 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_24582C4EC, v8, v7);
}

uint64_t sub_24582C4EC()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v14 = *(v0 + 88);
  v6 = *(v0 + 32);
  v15 = *(v0 + 24);
  v7 = *(v0 + 16);

  sub_24590D714();
  (*(v3 + 16))(v2, v1, v4);
  v8 = sub_24580D4DC(v2);
  (*(v3 + 8))(v1, v4);
  if (v8 == 3)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  objc_allocWithZone(type metadata accessor for PassportSceneView());

  v10 = sub_245815710(v9, v7, v15, v6, v14 & 1, 0, 0, 0.0, 0.0, 0.0, 0.0);
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = *(v0 + 8);

  return v12();
}

unint64_t sub_24582C6A0()
{
  result = qword_27EE2A390;
  if (!qword_27EE2A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A390);
  }

  return result;
}

uint64_t sub_24582C6F4()
{
  v0 = sub_24590FDA4();
  v17 = *(v0 - 8);
  v18 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  __swift_allocate_value_buffer(v3, qword_27EE32C00);
  v4 = __swift_project_value_buffer(v3, qword_27EE32C00);
  v16 = sub_2459100B4();
  v15 = sub_245910474();
  v5 = sub_2459100B4();
  v6 = sub_245910484();
  v7 = sub_2459100F4();
  v8 = sub_245910484();
  v9 = sub_24590FBD4();
  v10 = sub_2459106F4();
  v12 = v11;
  sub_24590FD64();
  v13 = v15;
  *v4 = v16;
  *(v4 + 8) = v13;
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  *(v4 + 48) = 0x4010000000000000;
  *(v4 + 56) = 0x41A0000041600000;
  *(v4 + 64) = v9;
  *(v4 + 72) = v10;
  *(v4 + 80) = v12;
  *(v4 + 88) = 0;
  *(v4 + 96) = xmmword_24591A470;
  *(v4 + 112) = 0x4043000000000000;
  return (*(v17 + 32))(v4 + *(v3 + 76), v2, v18);
}

uint64_t sub_24582C888@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE286E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  v3 = __swift_project_value_buffer(v2, qword_27EE32C00);

  return sub_24582CDBC(v3, a1);
}

uint64_t sub_24582C904()
{
  sub_24580EEF8();

  return sub_24590FB24();
}

uint64_t sub_24582C954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24582CCB8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24582C9B8()
{
  sub_24580EE50();
  sub_24590FB24();
  return v1;
}

__n128 sub_24582C9F4@<Q0>(uint64_t *a1@<X8>)
{
  *&v8 = 0;
  *(&v8 + 1) = 0xE000000000000000;
  v9.n128_u64[0] = 0;
  v9.n128_u64[1] = 0xE000000000000000;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  LODWORD(v13) = 257;
  *(&v13 + 1) = MEMORY[0x277D84FA0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v17[2] = 0;
  v17[3] = 0xE000000000000000;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 257;
  v22 = MEMORY[0x277D84FA0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  sub_24582CD0C(&v8, &v7);
  sub_24582CD68(v17);
  a1[3] = &_s14BaseViewConfigVN;
  a1[4] = &off_285888C90;
  v2 = swift_allocObject();
  *a1 = v2;
  v3 = v15;
  *(v2 + 112) = v14;
  *(v2 + 128) = v3;
  *(v2 + 144) = v16;
  v4 = v11;
  *(v2 + 48) = v10;
  *(v2 + 64) = v4;
  v5 = v13;
  *(v2 + 80) = v12;
  *(v2 + 96) = v5;
  result = v9;
  *(v2 + 16) = v8;
  *(v2 + 32) = result;
  return result;
}

uint64_t sub_24582CAE0()
{
  sub_24580EEA4();

  return sub_24590FB24();
}

uint64_t type metadata accessor for IdentityProofing.ViewStyleFormat()
{
  result = qword_27EE2A398;
  if (!qword_27EE2A398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24582CBCC()
{
  result = sub_24590FDA4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24582CCB8()
{
  result = qword_27EE2A3A8;
  if (!qword_27EE2A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A3A8);
  }

  return result;
}

uint64_t sub_24582CDBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24582CE34()
{
  result = qword_27EE2A3B0[0];
  if (!qword_27EE2A3B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE2A3B0);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_24582CEB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_24582CF00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24582CF7C()
{
  sub_24582D740();
  if (v0 <= 0x3F)
  {
    sub_24582D798();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24582D038(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24590FDA4() - 8);
  v7 = ((*(v6 + 80) + 120) & ~*(v6 + 80)) + *(v6 + 64);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(a3 + 24);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  v16 = *(v12 + 80);
  if (v11 <= v13)
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = *(v10 + 84);
  }

  if (v17 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v18)
  {
    goto LABEL_34;
  }

  v19 = ((v15 + v16 + (((v8 & 0xFFFFFFFFFFFFFFF8) + v14 + 49) & ~v14)) & ~v16) + *(*(v9 - 8) + 64);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v23 < 2)
    {
LABEL_34:
      if (v17 > 0xFE)
      {
        v28 = (((a1 + v8 + 8) & 0xFFFFFFFFFFFFFFF8) + v14 + 41) & ~v14;
        if (v11 == v18)
        {
          v29 = *(v10 + 48);

          return v29(v28);
        }

        else
        {
          v30 = *(v12 + 48);
          v31 = (v28 + v15 + v16) & ~v16;

          return v30(v31, v13, v9);
        }
      }

      else
      {
        v27 = *(a1 + v8);
        if (v27 >= 2)
        {
          return (v27 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_34;
  }

LABEL_21:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v18 + (v26 | v24) + 1;
}

void sub_24582D32C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_24590FDA4() - 8);
  v9 = ((*(v8 + 80) + 120) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  v18 = *(v14 + 80);
  if (v13 <= v15)
  {
    v19 = *(v14 + 84);
  }

  else
  {
    v19 = *(v12 + 84);
  }

  if (v19 <= 0xFE)
  {
    v20 = 254;
  }

  else
  {
    v20 = v19;
  }

  v21 = ((v17 + v18 + (((v10 & 0xFFFFFFFFFFFFFFF8) + v16 + 49) & ~v16)) & ~v18) + *(*(v11 - 8) + 64);
  if (a3 <= v20)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v20 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v20 < a2)
  {
    v23 = ~v20 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_65:
              if (v22 == 2)
              {
                *&a1[v21] = v24;
              }

              else
              {
                *&a1[v21] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v22)
    {
      a1[v21] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v22)
  {
    goto LABEL_36;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v28 = v10 + 1;
  if (v19 > 0xFE)
  {
    v29 = ((&a1[v28 + 7] & 0xFFFFFFFFFFFFFFF8) + v16 + 41) & ~v16;
    if (v13 == v20)
    {
      v30 = *(v12 + 56);

      v30(v29, a2);
    }

    else
    {
      v34 = *(v14 + 56);
      v35 = (v29 + v17 + v18) & ~v18;

      v34(v35, a2, v15, v11);
    }
  }

  else if (a2 > 0xFE)
  {
    if (v28 <= 3)
    {
      v31 = ~(-1 << (8 * v28));
    }

    else
    {
      v31 = -1;
    }

    if (v10 != -1)
    {
      v32 = v31 & (a2 - 255);
      if (v28 <= 3)
      {
        v33 = v10 + 1;
      }

      else
      {
        v33 = 4;
      }

      bzero(a1, v28);
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          *a1 = v32;
          a1[2] = BYTE2(v32);
        }

        else
        {
          *a1 = v32;
        }
      }

      else if (v33 == 1)
      {
        *a1 = v32;
      }

      else
      {
        *a1 = v32;
      }
    }
  }

  else
  {
    a1[v10] = -a2;
  }
}

void sub_24582D740()
{
  if (!qword_27EE29E48)
  {
    type metadata accessor for IdentityProofing.ViewStyleFormat();
    v0 = sub_24590F5C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE29E48);
    }
  }
}

void sub_24582D798()
{
  if (!qword_27EE2A438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A440);
    v0 = sub_24590F5C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE2A438);
    }
  }
}

uint64_t sub_24582D7FC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_245910754();
}

uint64_t sub_24582D9CC@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A4D8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v65 - v6;
  v8 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v65 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A4E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v65 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A4E8) - 8;
  MEMORY[0x28223BE20](v71);
  v70 = &v65 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A4F0) - 8;
  MEMORY[0x28223BE20](v74);
  v73 = &v65 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A4F8) - 8;
  MEMORY[0x28223BE20](v76);
  v75 = &v65 - v21;
  sub_24577A354(v15);
  v22 = v15;
  v69 = v15;
  v23 = *(v15 + 8);
  v67 = type metadata accessor for IdentityProofing.ViewStyleFormat;
  sub_245833C78(v22, type metadata accessor for IdentityProofing.ViewStyleFormat);
  sub_24577A354(v13);
  v24 = *(v13 + 6);
  sub_245833C78(v13, type metadata accessor for IdentityProofing.ViewStyleFormat);
  *v18 = v23;
  *(v18 + 1) = v24;
  v18[16] = 0;
  v68 = v18;
  v25 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A500) + 44)];
  v65 = v7;
  v66 = v1;
  sub_24582E034(v7);
  sub_24582E2B4(&v78);
  v26 = v78;
  v27 = v79;
  v28 = *(&v79 + 1);
  v29 = v80;
  v30 = BYTE8(v80);
  sub_245778F2C(v7, v5, &qword_27EE2A4D8);
  sub_245778F2C(v5, v25, &qword_27EE2A4D8);
  v31 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A508) + 48);
  *v31 = v26;
  *(v31 + 16) = v27;
  *(v31 + 24) = v28;
  *(v31 + 32) = v29;
  *(v31 + 40) = v30;
  sub_245812E64(v26, *(&v26 + 1), v27);

  sub_245778F94(v65, &qword_27EE2A4D8);
  sub_24580FD24(v26, *(&v26 + 1), v27);

  sub_245778F94(v5, &qword_27EE2A4D8);
  v32 = v72;
  sub_24577A354(v72);
  v33 = v67;
  sub_245833C78(v32, v67);
  sub_24590F904();
  v34 = v70;
  sub_24577ABC4(v68, v70, &qword_27EE2A4E0);
  v35 = (v34 + *(v71 + 44));
  v36 = v83;
  v35[4] = v82;
  v35[5] = v36;
  v35[6] = v84;
  v37 = v79;
  *v35 = v78;
  v35[1] = v37;
  v38 = v81;
  v35[2] = v80;
  v35[3] = v38;
  LOBYTE(v25) = sub_24590FFA4();
  v39 = v69;
  sub_24577A354(v69);
  sub_245833C78(v39, v33);
  sub_24590F594();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v34;
  v49 = v73;
  sub_24577ABC4(v48, v73, &qword_27EE2A4E8);
  v50 = v49 + *(v74 + 44);
  *v50 = v25;
  *(v50 + 8) = v41;
  *(v50 + 16) = v43;
  *(v50 + 24) = v45;
  *(v50 + 32) = v47;
  *(v50 + 40) = 0;
  LOBYTE(v25) = sub_24590FFC4();
  sub_24577A354(v39);
  sub_245833C78(v39, v33);
  sub_24590F594();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v49;
  v60 = v75;
  sub_24577ABC4(v59, v75, &qword_27EE2A4F0);
  v61 = v60 + *(v76 + 44);
  *v61 = v25;
  *(v61 + 8) = v52;
  *(v61 + 16) = v54;
  *(v61 + 24) = v56;
  *(v61 + 32) = v58;
  *(v61 + 40) = 0;
  sub_24590F6B4();
  sub_24590F6C4();
  v62 = sub_24590F6A4();

  v63 = v77;
  sub_24577ABC4(v60, v77, &qword_27EE2A4F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A510);
  *(v63 + *(result + 36)) = v62;
  return result;
}

uint64_t sub_24582E034@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24590FB74();
  LOBYTE(v21) = 0;
  sub_24582E53C(&v26);
  v5 = v26;
  v6 = v27[0];
  v19 = *&v27[8];
  v8 = *&v27[24];
  v7 = v28;
  LOBYTE(v26) = v27[0];
  v9 = v21;
  sub_24577A354(v3);
  v10 = *v3;

  sub_245833C78(v3, type metadata accessor for IdentityProofing.ViewStyleFormat);
  KeyPath = swift_getKeyPath();
  *&v21 = v4;
  *(&v21 + 1) = 0x4010000000000000;
  v22[0] = v9;
  *&v22[8] = v5;
  v22[24] = v6;
  v23 = v19;
  *&v24 = v8;
  *(&v24 + 1) = v7;
  *&v25 = KeyPath;
  *(&v25 + 1) = v10;
  sub_245910054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A518);
  sub_245833ED0();
  v12 = v20;
  sub_245910204();
  *&v27[16] = *&v22[16];
  v28 = v23;
  v29 = v24;
  v30 = v25;
  v26 = v21;
  *v27 = *v22;
  sub_245778F94(&v26, &qword_27EE2A518);
  sub_24577A354(v3);
  v13 = *(v3 + 1);

  sub_245833C78(v3, type metadata accessor for IdentityProofing.ViewStyleFormat);
  v14 = swift_getKeyPath();
  v15 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A538) + 36));
  *v15 = v14;
  v15[1] = v13;
  sub_24577A354(v3);
  LOBYTE(v13) = v3[88];
  sub_245833C78(v3, type metadata accessor for IdentityProofing.ViewStyleFormat);
  v16 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A4D8);
  v18 = v12 + *(result + 36);
  *v18 = v16;
  *(v18 + 8) = v13;
  return result;
}

uint64_t sub_24582E2B4@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13TitleTextViewVMa(0);
  v34 = v1;
  sub_24577A524(v38);
  v5 = v39;
  v6 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v36 = (*(v6 + 16))(v5, v6);
  v37 = v7;
  sub_245778CE8();
  v8 = sub_2459101A4();
  v10 = v9;
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(v38);
  sub_24577A354(v4);

  v33 = type metadata accessor for IdentityProofing.ViewStyleFormat;
  sub_245833C78(v4, type metadata accessor for IdentityProofing.ViewStyleFormat);
  v13 = sub_245910184();
  v15 = v14;
  LOBYTE(v5) = v16;
  sub_24580FD24(v8, v10, v12 & 1);

  sub_245910084();
  v17 = sub_245910144();
  v19 = v18;
  v21 = v20;
  sub_24580FD24(v13, v15, v5 & 1);

  sub_24577A354(v4);

  v22 = v33;
  sub_245833C78(v4, v33);
  v31 = sub_245910154();
  v32 = v23;
  v25 = v24;
  LOBYTE(v13) = v26;
  sub_24580FD24(v17, v19, v21 & 1);

  sub_24577A354(v4);
  v27 = v4[88];
  sub_245833C78(v4, v22);
  result = swift_getKeyPath();
  v29 = v35;
  *v35 = v31;
  v29[1] = v25;
  *(v29 + 16) = v13 & 1;
  v29[3] = v32;
  v29[4] = result;
  *(v29 + 40) = v27;
  return result;
}

uint64_t sub_24582E53C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2459107D4();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245910794();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24590FE44();
  v7 = MEMORY[0x28223BE20](v45);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  _s13TitleTextViewVMa(0);
  sub_24577A524(v48);
  v11 = v49;
  v12 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v46 = (*(v12 + 8))(v11, v12);
  v47 = v13;
  sub_245778CE8();
  v14 = sub_2459101A4();
  v16 = v15;
  v44 = v17;
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_24577A524(v48);
  v20 = v49;
  v21 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v22 = (*(v21 + 72))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v48);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v22)
  {
    v23 = sub_2459104C4();
    v24 = sub_245910424();
    v26 = v6;
    sub_245910784();
    v36 = v14;
    v27 = v38;
    sub_2459107C4();
    v28 = *(v45 + 20);
    v37 = v19;
    v29 = v42;
    v30 = v43;
    (*(v42 + 16))(&v10[v28], v27, v43);
    sub_245833C30(&qword_27EE2B060, MEMORY[0x277CE1580]);
    v31 = v41;
    sub_245910774();
    v32 = v27;
    v14 = v36;
    (*(v29 + 8))(v32, v30);
    v19 = v37;
    (*(v40 + 8))(v26, v31);
    sub_24583404C(v10, v39, MEMORY[0x277CDE1A0]);
    sub_245833C30(&qword_27EE2A540, MEMORY[0x277CDE1A0]);
    v25 = sub_24590F6D4();
    sub_245833C78(v10, MEMORY[0x277CDE1A0]);
  }

  v33 = v44 & 1;
  sub_245812E64(v14, v16, v44 & 1);

  sub_245833FB4(v23);
  sub_245834000(v23);
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v33;
  *(a1 + 24) = v19;
  *(a1 + 32) = v23;
  *(a1 + 40) = v24;
  *(a1 + 48) = v25;
  sub_245834000(v23);
  sub_24580FD24(v14, v16, v33);
}

uint64_t sub_24582E9D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A548);
  MEMORY[0x28223BE20](v5);
  v7 = (&v28 - v6);
  sub_24577A354(v4);
  v8 = v4[15];
  sub_245833C78(v4, type metadata accessor for IdentityProofing.ViewStyleFormat);
  *v7 = sub_24590FBC4();
  v7[1] = v8;
  *(v7 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A550);
  sub_24582EC50(v7 + *(v9 + 44));
  v10 = sub_24590FFA4();
  sub_24577A354(v4);
  sub_245833C78(v4, type metadata accessor for IdentityProofing.ViewStyleFormat);
  sub_24590F594();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A558) + 36);
  *v19 = v10;
  *(v19 + 1) = v12;
  *(v19 + 2) = v14;
  *(v19 + 3) = v16;
  *(v19 + 4) = v18;
  v19[40] = 0;
  v20 = sub_24590FFD4();
  sub_24577A354(v4);
  sub_245833C78(v4, type metadata accessor for IdentityProofing.ViewStyleFormat);
  sub_24590F594();
  v21 = v7 + *(v5 + 36);
  *v21 = v20;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_245910094();
  sub_2458340B4();
  sub_245910204();
  sub_245778F94(v7, &qword_27EE2A548);
  sub_24590F6B4();
  sub_24590F6C4();
  v26 = sub_24590F6A4();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A580);
  *(a1 + *(result + 36)) = v26;
  return result;
}

uint64_t sub_24582EC50@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A588);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v37 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A590);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  _s14BottomTrayViewVMa(0);
  sub_24577A524(&v74);
  v13 = *(&v75 + 1);
  v14 = v76;
  __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
  v15 = (*(v14 + 64))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  if (v15)
  {
    sub_24582F168(&v52);
    v71 = v60;
    v72 = v61;
    v73 = v62;
    v67 = v56;
    v68 = v57;
    v69 = v58;
    v70 = v59;
    v63 = v52;
    v64 = v53;
    v65 = v54;
    v66 = v55;
    nullsub_1(&v63);
    v82 = v71;
    v83 = v72;
    v84 = v73;
    v78 = v67;
    v79 = v68;
    v80 = v69;
    v81 = v70;
    v74 = v63;
    v75 = v64;
    v76 = v65;
    v77 = v66;
  }

  else
  {
    sub_2458341F8(&v74);
  }

  sub_24577A524(&v63);
  v16 = *(&v64 + 1);
  v17 = v65;
  __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
  v18 = (*(v17 + 48))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  if (v18 == 1 && (sub_24577A524(&v63), v19 = *(&v64 + 1), v20 = v65, __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1)), v21 = (*(v20 + 56))(v19, v20), __swift_destroy_boxed_opaque_existential_1(&v63), v21 == 1))
  {
    v22 = 1;
  }

  else
  {
    sub_24577A354(v4);
    v23 = v4[14];
    sub_245833C78(v4, type metadata accessor for IdentityProofing.ViewStyleFormat);
    *v7 = sub_24590FBC4();
    v7[1] = v23;
    *(v7 + 16) = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A598);
    sub_24582F59C(v7 + *(v24 + 44));
    sub_24577ABC4(v7, v12, &qword_27EE2A588);
    v22 = 0;
  }

  (*(v38 + 56))(v12, v22, 1, v39);
  v49 = v82;
  v50 = v83;
  v51 = v84;
  v45 = v78;
  v46 = v79;
  v47 = v80;
  v48 = v81;
  v41 = v74;
  v42 = v75;
  v43 = v76;
  v44 = v77;
  v25 = v40;
  sub_245778F2C(v12, v40, &qword_27EE2A590);
  v26 = v50;
  v60 = v49;
  v61 = v50;
  v27 = v45;
  v28 = v46;
  v56 = v45;
  v57 = v46;
  v30 = v47;
  v29 = v48;
  v58 = v47;
  v59 = v48;
  v31 = v41;
  v32 = v42;
  v52 = v41;
  v53 = v42;
  v34 = v43;
  v33 = v44;
  v54 = v43;
  v55 = v44;
  *(a1 + 128) = v49;
  *(a1 + 144) = v26;
  *(a1 + 64) = v27;
  *(a1 + 80) = v28;
  *(a1 + 96) = v30;
  *(a1 + 112) = v29;
  *a1 = v31;
  *(a1 + 16) = v32;
  v62 = v51;
  *(a1 + 160) = v51;
  *(a1 + 32) = v34;
  *(a1 + 48) = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5A0);
  sub_245778F2C(v25, a1 + *(v35 + 48), &qword_27EE2A590);
  sub_245778F2C(&v52, &v63, &qword_27EE2A5A8);
  sub_245778F94(v12, &qword_27EE2A590);
  sub_245778F94(v25, &qword_27EE2A590);
  v71 = v49;
  v72 = v50;
  v73 = v51;
  v67 = v45;
  v68 = v46;
  v69 = v47;
  v70 = v48;
  v63 = v41;
  v64 = v42;
  v65 = v43;
  v66 = v44;
  return sub_245778F94(&v63, &qword_27EE2A5A8);
}

__n128 sub_24582F168@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v39 - v6;
  _s14BottomTrayViewVMa(0);
  sub_24577A524(&v65);
  v8 = *(&v66 + 1);
  v9 = v67;
  __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
  v10 = (*(v9 + 24))(v8, v9);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    __swift_destroy_boxed_opaque_existential_1(&v65);
    *&v72 = v12;
    *(&v72 + 1) = v13;
    sub_245778CE8();
    v14 = sub_2459101A4();
    v47 = v5;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_24577A354(v7);

    v42 = type metadata accessor for IdentityProofing.ViewStyleFormat;
    sub_245833C78(v7, type metadata accessor for IdentityProofing.ViewStyleFormat);
    v20 = sub_245910184();
    v40 = v21;
    v41 = v20;
    LOBYTE(v13) = v22;
    v39[1] = v23;
    sub_24580FD24(v15, v17, v19 & 1);

    sub_24577A354(v7);
    v24 = *(v7 + 5);

    v25 = v42;
    sub_245833C78(v7, v42);
    *&v72 = v24;
    v27 = v40;
    v26 = v41;
    v44 = sub_245910164();
    v45 = v28;
    v46 = v29;
    v43 = v30;
    sub_24580FD24(v26, v27, v13 & 1);

    sub_24577A354(v7);
    LOBYTE(v24) = v7[88];
    v31 = v25;
    sub_245833C78(v7, v25);
    KeyPath = swift_getKeyPath();
    v33 = v47;
    sub_24577A354(v47);
    sub_245833C78(v33, v31);
    sub_24590F904();
    v49 = v43 & 1;
    *&v48[55] = v68;
    *&v48[71] = v69;
    *&v48[87] = v70;
    *&v48[103] = v71;
    *&v48[7] = v65;
    *&v48[23] = v66;
    *&v48[39] = v67;
    *&v61 = v44;
    *(&v61 + 1) = v46;
    LOBYTE(v62) = v43 & 1;
    *(&v62 + 1) = v45;
    *&v63[0] = KeyPath;
    BYTE8(v63[0]) = v24;
    *(&v63[3] + 9) = *&v48[48];
    *(&v63[2] + 9) = *&v48[32];
    *(&v63[1] + 9) = *&v48[16];
    *(v63 + 9) = *v48;
    *(&v63[7] + 1) = *(&v71 + 1);
    *(&v63[6] + 9) = *&v48[96];
    *(&v63[5] + 9) = *&v48[80];
    *(&v63[4] + 9) = *&v48[64];
    sub_2458342B4(&v61);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v65);
    sub_24583421C(&v61);
  }

  v58 = v63[6];
  v59 = v63[7];
  v60 = v64;
  v54 = v63[2];
  v55 = v63[3];
  v56 = v63[4];
  v57 = v63[5];
  v50 = v61;
  v51 = v62;
  v52 = v63[0];
  v53 = v63[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5B0);
  sub_245834228();
  sub_24590FD14();
  v34 = v81;
  *(a1 + 128) = v80;
  *(a1 + 144) = v34;
  *(a1 + 160) = v82;
  v35 = v77;
  *(a1 + 64) = v76;
  *(a1 + 80) = v35;
  v36 = v79;
  *(a1 + 96) = v78;
  *(a1 + 112) = v36;
  v37 = v73;
  *a1 = v72;
  *(a1 + 16) = v37;
  result = v75;
  *(a1 + 32) = v74;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24582F59C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5C0);
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x28223BE20](v1);
  v31 = &v30 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5C8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5D0);
  v8 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  _s14BottomTrayViewVMa(0);
  sub_24577A524(v37);
  v17 = v38;
  v18 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v19 = (*(v18 + 48))(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v37);
  if (v19 == 1)
  {
    v20 = 1;
  }

  else
  {
    sub_24582F9F0(v10);
    sub_24577ABC4(v10, v16, &qword_27EE2A5D0);
    v20 = 0;
  }

  v21 = 1;
  (*(v8 + 56))(v16, v20, 1, v32);
  sub_24577A524(v37);
  v22 = v38;
  v23 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v24 = (*(v23 + 56))(v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v37);
  if (v24 != 1)
  {
    v25 = v31;
    sub_245830154(v31);
    sub_24577ABC4(v25, v7, &qword_27EE2A5C0);
    v21 = 0;
  }

  (*(v33 + 56))(v7, v21, 1, v34);
  sub_245778F2C(v16, v14, &qword_27EE2A5D8);
  v26 = v35;
  sub_245778F2C(v7, v35, &qword_27EE2A5C8);
  v27 = v36;
  sub_245778F2C(v14, v36, &qword_27EE2A5D8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5E0);
  sub_245778F2C(v26, v27 + *(v28 + 48), &qword_27EE2A5C8);
  sub_245778F94(v7, &qword_27EE2A5C8);
  sub_245778F94(v16, &qword_27EE2A5D8);
  sub_245778F94(v26, &qword_27EE2A5C8);
  return sub_245778F94(v14, &qword_27EE2A5D8);
}

uint64_t sub_24582F9F0@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_24590FB14();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24590FE64();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = _s14BottomTrayViewVMa(0);
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v49);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A658);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A660);
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A668);
  MEMORY[0x28223BE20](v51);
  v54 = &v46 - v15;
  sub_24583404C(v1, &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), _s14BottomTrayViewVMa);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_2458342C8(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v56 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A670);
  sub_24583484C();
  sub_2459105B4();
  v18 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A6B8) + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A610) + 28);
  v20 = *MEMORY[0x277CDF420];
  v21 = sub_24590F5B4();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  v22 = &v11[*(v9 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A618);
  sub_24590F914();
  *v22 = swift_getKeyPath();
  sub_24590FE54();
  sub_245834A74();
  sub_245833C30(&qword_27EE2A6E0, MEMORY[0x277CDE340]);
  v23 = v50;
  sub_245910224();
  (*(v4 + 8))(v6, v23);
  v24 = v49;
  sub_245778F94(v11, &qword_27EE2A658);
  v25 = v1 + *(v24 + 20);
  v26 = *v25;
  if (*(v25 + 8) == 1)
  {
    if (v26)
    {
LABEL_3:
      v27 = &selRef_tertiarySystemFillColor;
      goto LABEL_6;
    }
  }

  else
  {

    sub_245910F74();
    v28 = sub_24590FF74();
    sub_24590F314();

    v29 = v46;
    sub_24590FB04();
    swift_getAtKeyPath();
    sub_2458342BC(v26, 0);
    (*(v47 + 8))(v29, v48);
    if (v57[0])
    {
      goto LABEL_3;
    }
  }

  v27 = &selRef_systemBlueColor;
LABEL_6:
  v30 = v54;
  v31 = [objc_opt_self() *v27];
  v32 = sub_245910414();
  KeyPath = swift_getKeyPath();
  v57[0] = v32;
  v34 = sub_24590F694();
  (*(v52 + 32))(v30, v14, v53);
  v35 = (v30 + *(v51 + 36));
  *v35 = KeyPath;
  v35[1] = v34;
  sub_24577A524(v57);
  v36 = v58;
  v37 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  LODWORD(v36) = (*(v37 + 48))(v36, v37);
  __swift_destroy_boxed_opaque_existential_1(v57);
  if (v36 == 3)
  {
    v38 = 1;
  }

  else
  {
    sub_24577A524(v57);
    v39 = v58;
    v40 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v38 = (*(v40 + 48))(v39, v40) == 2;
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  v43 = v55;
  sub_24577ABC4(v30, v55, &qword_27EE2A668);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5D0);
  v45 = (v43 + *(result + 36));
  *v45 = v41;
  v45[1] = sub_245834C10;
  v45[2] = v42;
  return result;
}

uint64_t sub_245830154@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_24590FB14();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24590F894();
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s14BottomTrayViewVMa(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5E8);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5F0);
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  sub_24583404C(v1, &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s14BottomTrayViewVMa);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_2458342C8(&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5F8);
  sub_24583434C();
  sub_2459105B4();
  v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A608) + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A610) + 28);
  v22 = *MEMORY[0x277CDF420];
  v23 = sub_24590F5B4();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  v24 = &v14[*(v12 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A618);
  sub_24590F914();
  *v24 = swift_getKeyPath();
  sub_24590F884();
  sub_245834498();
  sub_245833C30(&qword_27EE2A650, MEMORY[0x277CDDA98]);
  v25 = v41;
  sub_245910224();
  (*(v42 + 8))(v7, v25);
  sub_245778F94(v14, &qword_27EE2A5E8);
  v26 = v1 + *(v9 + 28);
  v27 = *v26;
  if (*(v26 + 8) != 1)
  {

    sub_245910F74();
    v29 = sub_24590FF74();
    sub_24590F314();

    v30 = v38;
    sub_24590FB04();
    swift_getAtKeyPath();
    sub_2458342BC(v27, 0);
    (*(v39 + 8))(v30, v40);
    if (v47 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v31 = [objc_opt_self() systemOrangeColor];
    v28 = sub_245910414();
    goto LABEL_6;
  }

  if (v27)
  {
    goto LABEL_5;
  }

LABEL_3:
  v28 = sub_245910474();
LABEL_6:
  v32 = v28;
  KeyPath = swift_getKeyPath();
  v47 = v32;
  v34 = sub_24590F694();
  v35 = v45;
  (*(v43 + 32))(v45, v17, v44);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5C0);
  v37 = (v35 + *(result + 36));
  *v37 = KeyPath;
  v37[1] = v34;
  return result;
}

uint64_t sub_245830730()
{
  _s14BottomTrayViewVMa(0);
  sub_24577A524(v5);
  v0 = v6;
  v1 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v2 = (*(v1 + 88))(v0, v1);
  if (v2)
  {
    v3 = v2;
    v2();
    sub_245771C34(v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_2458307D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A6E8);
  MEMORY[0x28223BE20](v0);
  v2 = &v35 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A688);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  _s14BottomTrayViewVMa(0);
  sub_24577A524(&v36);
  v6 = *(&v37 + 1);
  v7 = v38;
  __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  v8 = (*(v7 + 48))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(&v36);
  if (v8 == 2)
  {
    sub_24590F644();
    v9 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A698) + 36)];
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A610) + 28);
    v11 = *MEMORY[0x277CDF440];
    v12 = sub_24590F5B4();
    (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
    *v9 = swift_getKeyPath();
    v13 = [objc_opt_self() systemGrayColor];
    v14 = sub_245910414();
    KeyPath = swift_getKeyPath();
    *&v36 = v14;
    v16 = sub_24590F694();
    v17 = &v5[*(v3 + 36)];
    *v17 = KeyPath;
    v17[1] = v16;
    sub_245778F2C(v5, v2, &qword_27EE2A688);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5F8);
    sub_2458348D8();
    sub_24583434C();
    sub_24590FD14();
    return sub_245778F94(v5, &qword_27EE2A688);
  }

  else
  {
    sub_24577A524(&v36);
    v19 = *(&v37 + 1);
    v20 = v38;
    __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    v21 = (*(v20 + 32))(v19, v20);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v36);
    *&v36 = v23;
    *(&v36 + 1) = v24;
    sub_245778CE8();
    v25 = sub_2459101A4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_2459106E4();
    sub_24590F904();
    v43 = v29 & 1;
    *v2 = v25;
    *(v2 + 1) = v27;
    v2[16] = v29 & 1;
    *(v2 + 3) = v31;
    v32 = v41;
    *(v2 + 6) = v40;
    *(v2 + 7) = v32;
    *(v2 + 8) = v42;
    v33 = v37;
    *(v2 + 2) = v36;
    *(v2 + 3) = v33;
    v34 = v39;
    *(v2 + 4) = v38;
    *(v2 + 5) = v34;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A5F8);
    sub_2458348D8();
    sub_24583434C();
    return sub_24590FD14();
  }
}

uint64_t sub_245830BF8()
{
  _s14BottomTrayViewVMa(0);
  sub_24577A524(v5);
  v0 = v6;
  v1 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v2 = (*(v1 + 96))(v0, v1);
  if (v2)
  {
    v3 = v2;
    v2();
    sub_245771C34(v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

__n128 sub_245830C98@<Q0>(uint64_t a1@<X8>)
{
  _s14BottomTrayViewVMa(0);
  sub_24577A524(&v18);
  v2 = *(&v19 + 1);
  v3 = v20;
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  v4 = (*(v3 + 40))(v2, v3);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_1(&v18);
  *&v18 = v6;
  *(&v18 + 1) = v7;
  sub_245778CE8();
  v8 = sub_2459101A4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_2459106E4();
  sub_24590F904();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  v15 = v23;
  *(a1 + 96) = v22;
  *(a1 + 112) = v15;
  *(a1 + 128) = v24;
  v16 = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v16;
  result = v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_245830DE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a1;
  v52 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A448);
  _s14BottomTrayViewVMa(255);
  v53 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_245910744();
  v48 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_2459105E4();
  v49 = MEMORY[0x277CE1198];
  swift_getWitnessTable();
  sub_24590FD34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A450);
  sub_24590F854();
  WitnessTable = swift_getWitnessTable();
  v72 = sub_245778BD8(&qword_27EE2A458, &qword_27EE2A450);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A460);
  sub_24590F854();
  v3 = sub_24590F854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A468);
  sub_245778BD8(&qword_27EE2A470, &qword_27EE2A468);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_245778BD8(&qword_27EE2A478, &qword_27EE2A460);
  v67 = swift_getWitnessTable();
  v68 = v70;
  v60 = v47;
  v61 = v3;
  v62 = OpaqueTypeConformance2;
  v63 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_245910744();
  v46 = swift_getWitnessTable();
  v5 = sub_2459105E4();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = sub_24590F854();
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v36 - v9;
  v43 = swift_getWitnessTable();
  v65 = v43;
  v66 = MEMORY[0x277CE0880];
  v10 = swift_getWitnessTable();
  v60 = v8;
  v61 = v10;
  v41 = v8;
  v11 = v10;
  v42 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v37 = OpaqueTypeMetadata2;
  v49 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v45 = &v36 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A480);
  v40 = v14;
  v60 = v8;
  v61 = v11;
  v15 = swift_getOpaqueTypeConformance2();
  v39 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A488);
  v17 = sub_24583397C();
  v60 = v16;
  v61 = v17;
  v38 = swift_getOpaqueTypeConformance2();
  v60 = OpaqueTypeMetadata2;
  v61 = v14;
  v62 = v15;
  v63 = v38;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v36 - v23;
  v25 = v51;
  v59 = v51;
  v36 = *(v50 + 32);
  v57 = v53;
  v58 = v36;
  sub_24590FBC4();
  sub_2459105D4();
  sub_24590F874();
  sub_24590FFB4();
  v26 = v44;
  sub_2459102B4();
  (*(v47 + 8))(v7, v5);
  sub_24577A524(&v60);
  v27 = v63;
  v28 = v64;
  __swift_project_boxed_opaque_existential_1(&v60, v63);
  v29 = (*(v28 + 80))(v27, v28);
  sub_245788770(0, v29);

  __swift_destroy_boxed_opaque_existential_1(&v60);
  v30 = v45;
  v31 = v41;
  sub_245910384();
  (*(v48 + 8))(v26, v31);
  v54 = v53;
  v55 = v36;
  v56 = v25;
  v32 = v37;
  sub_2459103C4();
  (*(v49 + 8))(v30, v32);
  v33 = *(v19 + 16);
  v33(v24, v22, v18);
  v34 = *(v19 + 8);
  v34(v22, v18);
  v33(v52, v24, v18);
  return (v34)(v24, v18);
}

uint64_t sub_24583172C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v86 = a5;
  v87 = a4;
  v85 = a3;
  v83 = a2;
  v75 = a1;
  v82 = a6;
  v81 = sub_24590FD54();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A468);
  v76 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v74 = &v61 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A448);
  v80 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v78 = &v61 - v9;
  _s14BottomTrayViewVMa(255);
  swift_getTupleTypeMetadata2();
  sub_245910744();
  swift_getWitnessTable();
  sub_2459105E4();
  swift_getWitnessTable();
  sub_24590FD34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A450);
  v10 = sub_24590F854();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_245778BD8(&qword_27EE2A458, &qword_27EE2A450);
  v99 = WitnessTable;
  v100 = v12;
  v13 = swift_getWitnessTable();
  v91 = v10;
  v92 = v13;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A460);
  sub_24590F854();
  v14 = sub_24590F854();
  v15 = sub_245778BD8(&qword_27EE2A470, &qword_27EE2A468);
  v77 = v7;
  v91 = v7;
  v92 = v15;
  v64 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = v10;
  v92 = v13;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_245778BD8(&qword_27EE2A478, &qword_27EE2A460);
  v97 = v17;
  v98 = v18;
  v95 = swift_getWitnessTable();
  v96 = v18;
  v19 = v67;
  v20 = swift_getWitnessTable();
  v91 = v84;
  v92 = v14;
  v73 = OpaqueTypeConformance2;
  v93 = OpaqueTypeConformance2;
  v94 = v20;
  v66 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  v21 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v71 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v69 = &v61 - v27;
  v28 = *(v83 - 8);
  v29 = MEMORY[0x28223BE20](v26);
  v63 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v61 - v31;
  v34 = v33;
  v91 = v33;
  v92 = v85;
  v93 = v87;
  v94 = v86;
  v35 = *(_s8BaseViewVMa() + 56);
  v70 = v28;
  v36 = *(v28 + 16);
  v65 = v32;
  v62 = v36;
  v36(v32, (v75 + v35), v34);
  sub_24590FF94();
  _s13TitleTextViewVMa(0);
  sub_245833C30(&qword_27EE2A498, _s13TitleTextViewVMa);
  v37 = v74;
  sub_24590F5A4();
  sub_24590FD44();
  LOBYTE(v32) = sub_24590FF94();
  sub_24590FF84();
  sub_24590FF84();
  if (sub_24590FF84() != v32)
  {
    sub_24590FF84();
  }

  v38 = v78;
  v39 = v77;
  sub_245910344();
  (*(v79 + 8))(v19, v81);
  v40 = (*(v76 + 8))(v37, v39);
  MEMORY[0x28223BE20](v40);
  v41 = v85;
  *(&v61 - 6) = v34;
  *(&v61 - 5) = v41;
  v42 = v86;
  *(&v61 - 4) = v87;
  *(&v61 - 3) = v42;
  sub_24590FBC4();
  v43 = swift_checkMetadataState();
  v44 = v66;
  v60 = v66;
  v45 = v73;
  v59 = v73;
  v46 = v84;
  sub_245910244();
  (*(v80 + 8))(v38, v46);
  v91 = v46;
  v92 = v43;
  v93 = v45;
  v94 = v44;
  v86 = swift_getOpaqueTypeConformance2();
  v47 = v72;
  v48 = *(v72 + 16);
  v49 = v69;
  v50 = OpaqueTypeMetadata2;
  v48(v69, v25, OpaqueTypeMetadata2);
  v51 = *(v47 + 8);
  v51(v25, v50);
  v52 = v63;
  v53 = v65;
  v54 = v83;
  v62(v63, v65, v83);
  v91 = v52;
  v55 = v71;
  v48(v71, v49, v50);
  v92 = v55;
  v90[0] = v54;
  v90[1] = v50;
  v56 = v54;
  v88 = v87;
  v89 = v86;
  sub_24582D7FC(&v91, 2uLL, v90);
  v51(v49, v50);
  v57 = *(v70 + 8);
  v57(v53, v56);
  v51(v55, v50);
  return (v57)(v52, v56);
}

uint64_t sub_245832120@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BC8);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(_s13TitleTextViewVMa(0) + 20);
  result = swift_getKeyPath();
  *v2 = result;
  v2[40] = 0;
  return result;
}

uint64_t sub_245832198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v63 = a5;
  v62 = a4;
  v47 = a2;
  v70 = a6;
  v69 = sub_24590FBB4();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14BottomTrayViewVMa(255);
  v10 = a3;
  v48 = a3;
  swift_getTupleTypeMetadata2();
  sub_245910744();
  swift_getWitnessTable();
  v55 = sub_2459105E4();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_24590FD34();
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A450);
  v14 = sub_24590F854();
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = swift_getWitnessTable();
  v49 = v17;
  v18 = sub_245778BD8(&qword_27EE2A458, &qword_27EE2A450);
  v88 = v17;
  v89 = v18;
  v68 = MEMORY[0x277CDFAD8];
  v50 = swift_getWitnessTable();
  v83 = v14;
  v84 = v50;
  v53 = MEMORY[0x277CDEA38];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = &v47 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A460);
  v60 = sub_24590F854();
  v65 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v51 = &v47 - v21;
  v22 = sub_24590F854();
  v64 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v59 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v61 = &v47 - v25;
  v71 = a2;
  v72 = v10;
  v26 = v62;
  v27 = v63;
  v73 = v62;
  v74 = v63;
  v75 = a1;
  sub_24590FD24();
  sub_245833BAC();
  sub_245910264();
  (*(v57 + 8))(v13, v11);
  v28 = v66;
  sub_24590FBA4();
  v29 = v50;
  sub_245910314();
  (*(v67 + 8))(v28, v69);
  (*(v56 + 8))(v16, v14);
  MEMORY[0x245D75D50](0.5, 1.0, 0.0);
  v83 = v47;
  v84 = v48;
  v85 = v26;
  v86 = v27;
  _s8BaseViewVMa();
  sub_24577A524(&v83);
  v30 = v86;
  v31 = v87;
  __swift_project_boxed_opaque_existential_1(&v83, v86);
  v82 = (*(v31 + 48))(v30, v31);
  v80 = v14;
  v81 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24582CE34();
  v33 = v51;
  v34 = OpaqueTypeMetadata2;
  sub_2459103F4();

  (*(v58 + 8))(v20, v34);
  v35 = __swift_destroy_boxed_opaque_existential_1(&v83);
  MEMORY[0x245D75D50](v35, 0.5, 1.0, 0.0);
  sub_24577A524(&v83);
  v36 = v86;
  v37 = v87;
  __swift_project_boxed_opaque_existential_1(&v83, v86);
  LOBYTE(v80) = (*(v37 + 56))(v36, v37);
  v38 = sub_245778BD8(&qword_27EE2A478, &qword_27EE2A460);
  v78 = OpaqueTypeConformance2;
  v79 = v38;
  v39 = v60;
  v40 = swift_getWitnessTable();
  v41 = v59;
  sub_2459103F4();

  (*(v65 + 8))(v33, v39);
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v76 = v40;
  v77 = v38;
  swift_getWitnessTable();
  v42 = v64;
  v43 = *(v64 + 16);
  v44 = v61;
  v43(v61, v41, v22);
  v45 = *(v42 + 8);
  v45(v41, v22);
  v43(v70, v44, v22);
  return (v45)(v44, v22);
}

uint64_t sub_245832A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v20 = a5;
  v21 = a6;
  _s14BottomTrayViewVMa(255);
  swift_getTupleTypeMetadata2();
  sub_245910744();
  swift_getWitnessTable();
  v10 = sub_2459105E4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = v20;
  v26 = a1;
  sub_24590FBC4();
  sub_2459105D4();
  swift_getWitnessTable();
  v17 = *(v11 + 16);
  v17(v16, v14, v10);
  v18 = *(v11 + 8);
  v18(v14, v10);
  v17(v21, v16, v10);
  return (v18)(v16, v10);
}

uint64_t sub_245832C88@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a1;
  v31 = a5;
  v32 = a6;
  v10 = _s14BottomTrayViewVMa(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v29 - v15);
  v17 = *(a3 - 1);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v23 = _s8BaseViewVMa();
  v24 = *(v17 + 16);
  v24(v22, v30 + *(v23 + 60), a3);
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BC8);
  swift_storeEnumTagMultiPayload();
  v25 = v16 + *(v10 + 20);
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v16 + *(v10 + 24);
  *v26 = swift_getKeyPath();
  v26[40] = 0;
  v24(v20, v22, a3);
  v36 = v20;
  sub_24583404C(v16, v13, _s14BottomTrayViewVMa);
  v37 = v13;
  v35[0] = a3;
  v35[1] = v10;
  v33 = v31;
  v34 = sub_245833C30(&qword_27EE2A4A8, _s14BottomTrayViewVMa);
  sub_24582D7FC(&v36, 2uLL, v35);
  sub_245833C78(v16, _s14BottomTrayViewVMa);
  v27 = *(v17 + 8);
  v27(v22, a3);
  sub_245833C78(v13, _s14BottomTrayViewVMa);
  return (v27)(v20, a3);
}

uint64_t sub_245832F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FD0);
  v11 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v42 - v12;
  v13 = sub_24590FDA4();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IdentityProofing.ViewStyleFormat();
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29FE0);
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42 - v18;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A488);
  v19 = MEMORY[0x28223BE20](v53);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v45 = a2;
  v46 = a3;
  v56 = a2;
  v57 = a3;
  v47 = a4;
  v48 = a5;
  v58 = a4;
  v59 = a5;
  _s8BaseViewVMa();
  v24 = a1;
  sub_24577A524(&v56);
  v25 = v59;
  v26 = v60;
  __swift_project_boxed_opaque_existential_1(&v56, v59);
  v27 = (*(v26 + 80))(v25, v26);
  LOBYTE(v25) = sub_245788770(1, v27);

  __swift_destroy_boxed_opaque_existential_1(&v56);
  if (v25)
  {
    sub_24577A354(v17);
    (*(v42 + 16))(v44, &v17[*(v15 + 76)], v43);
    v28 = sub_245833C78(v17, type metadata accessor for IdentityProofing.ViewStyleFormat);
    MEMORY[0x28223BE20](v28);
    v29 = v46;
    *(&v42 - 6) = v45;
    *(&v42 - 5) = v29;
    v30 = v48;
    *(&v42 - 4) = v47;
    *(&v42 - 3) = v30;
    *(&v42 - 2) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A020);
    sub_245778BD8(&qword_27EE2A028, &qword_27EE2A020);
    v31 = v49;
    sub_24590F5F4();
    v32 = sub_245778BD8(&qword_27EE29FE8, &qword_27EE29FE0);
    v33 = v51;
    v34 = v52;
    MEMORY[0x245D75410](v31, v52, v32);
    v35 = v54;
    (*(v11 + 16))(v21, v33, v54);
    (*(v11 + 56))(v21, 0, 1, v35);
    v56 = v34;
    v57 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D75420](v21, v35, OpaqueTypeConformance2);
    sub_245778F94(v21, &qword_27EE2A488);
    (*(v11 + 8))(v33, v35);
    (*(v50 + 8))(v31, v34);
  }

  else
  {
    v37 = v54;
    (*(v11 + 56))(v21, 1, 1, v54);
    v38 = sub_245778BD8(&qword_27EE29FE8, &qword_27EE29FE0);
    v56 = v52;
    v57 = v38;
    v39 = swift_getOpaqueTypeConformance2();
    MEMORY[0x245D75420](v21, v37, v39);
    sub_245778F94(v21, &qword_27EE2A488);
  }

  v40 = sub_24583397C();
  MEMORY[0x245D75410](v23, v53, v40);
  return sub_245778F94(v23, &qword_27EE2A488);
}

uint64_t sub_245833594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21[0] = a5;
  v21[1] = a6;
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = a4;
  v21[5] = a5;
  v10 = _s8BaseViewVMa();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = sub_24590F584();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590F564();
  (*(v11 + 16))(v13, a1, v10);
  v17 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  v19 = v21[0];
  *(v18 + 4) = a4;
  *(v18 + 5) = v19;
  (*(v11 + 32))(&v18[v17], v13, v10);
  return MEMORY[0x245D75C00](v16, sub_245833AB8, v18);
}

uint64_t sub_24583374C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v11 = a5;
  _s8BaseViewVMa();
  sub_24577A524(v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = (*(v6 + 104))(v5, v6);
  if (v7)
  {
    v8 = v7;
    v7();
    sub_245771C34(v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_2458337FC()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24583382C()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_24583387C()
{
  v1 = *(v0 + 96);
  sub_245771BB4(v1);
  return v1;
}

uint64_t sub_2458338B0()
{
  v1 = *(v0 + 112);
  sub_245771BB4(v1);
  return v1;
}

uint64_t sub_2458338E4()
{
  v1 = *(v0 + 128);
  sub_245771BB4(v1);
  return v1;
}

unint64_t sub_24583397C()
{
  result = qword_27EE2A490;
  if (!qword_27EE2A490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29FE0);
    sub_245778BD8(&qword_27EE29FE8, &qword_27EE29FE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A490);
  }

  return result;
}

uint64_t sub_245833AB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(_s8BaseViewVMa() - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_24583374C(v6, v1, v2, v3, v4);
}

unint64_t sub_245833BAC()
{
  result = qword_27EE2A4A0;
  if (!qword_27EE2A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A4A0);
  }

  return result;
}

uint64_t sub_245833C30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_245833C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_245833D00()
{
  sub_24582D740();
  if (v0 <= 0x3F)
  {
    sub_245833D9C();
    if (v1 <= 0x3F)
    {
      sub_24582D798();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_245833D9C()
{
  if (!qword_27EE2A4C0)
  {
    v0 = sub_24590F5C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE2A4C0);
    }
  }
}

void sub_245833E14()
{
  sub_24582D740();
  if (v0 <= 0x3F)
  {
    sub_24582D798();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_245833ED0()
{
  result = qword_27EE2A520;
  if (!qword_27EE2A520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A518);
    sub_245778BD8(&qword_27EE2A528, &qword_27EE2A530);
    sub_245778BD8(&qword_27EE28B90, &qword_27EE28B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A520);
  }

  return result;
}

uint64_t sub_245833FB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_245834000(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24583404C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2458340B4()
{
  result = qword_27EE2A560;
  if (!qword_27EE2A560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A548);
    sub_245834140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A560);
  }

  return result;
}

unint64_t sub_245834140()
{
  result = qword_27EE2A568;
  if (!qword_27EE2A568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A558);
    sub_245778BD8(&qword_27EE2A570, &qword_27EE2A578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A568);
  }

  return result;
}

double sub_2458341F8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = -1;
  return result;
}

unint64_t sub_245834228()
{
  result = qword_27EE2A5B8;
  if (!qword_27EE2A5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A5B0);
    sub_24580FC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A5B8);
  }

  return result;
}

uint64_t sub_2458342BC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2458342C8(uint64_t a1, uint64_t a2)
{
  v4 = _s14BottomTrayViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24583434C()
{
  result = qword_27EE2A600;
  if (!qword_27EE2A600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A600);
  }

  return result;
}

uint64_t sub_2458343D0(uint64_t a1)
{
  v2 = sub_24590F924();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24590FA04();
}

unint64_t sub_245834498()
{
  result = qword_27EE2A620;
  if (!qword_27EE2A620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A5E8);
    sub_245834550();
    sub_245778BD8(&qword_27EE2A648, &qword_27EE2A618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A620);
  }

  return result;
}

unint64_t sub_245834550()
{
  result = qword_27EE2A628;
  if (!qword_27EE2A628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A608);
    sub_245778BD8(&qword_27EE2A630, &qword_27EE2A638);
    sub_245778BD8(&qword_27EE2A640, &qword_27EE2A610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A628);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  v1 = _s14BottomTrayViewVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28BC8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(type metadata accessor for IdentityProofing.ViewStyleFormat() + 76);
    v5 = sub_24590FDA4();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  sub_2458342BC(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8));
  v6 = v2 + *(v1 + 24);
  if (*(v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2458347D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s14BottomTrayViewVMa(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24583484C()
{
  result = qword_27EE2A678;
  if (!qword_27EE2A678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A670);
    sub_2458348D8();
    sub_24583434C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A678);
  }

  return result;
}

unint64_t sub_2458348D8()
{
  result = qword_27EE2A680;
  if (!qword_27EE2A680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A688);
    sub_245834990();
    sub_245778BD8(&qword_27EE2A6A8, &qword_27EE2A6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A680);
  }

  return result;
}

unint64_t sub_245834990()
{
  result = qword_27EE2A690;
  if (!qword_27EE2A690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A698);
    sub_245778BD8(&qword_27EE2A6A0, &qword_27EE29ED0);
    sub_245778BD8(&qword_27EE2A640, &qword_27EE2A610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A690);
  }

  return result;
}

unint64_t sub_245834A74()
{
  result = qword_27EE2A6C0;
  if (!qword_27EE2A6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A658);
    sub_245834B2C();
    sub_245778BD8(&qword_27EE2A648, &qword_27EE2A618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A6C0);
  }

  return result;
}

unint64_t sub_245834B2C()
{
  result = qword_27EE2A6C8;
  if (!qword_27EE2A6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A6B8);
    sub_245778BD8(&qword_27EE2A6D0, &qword_27EE2A6D8);
    sub_245778BD8(&qword_27EE2A640, &qword_27EE2A610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A6C8);
  }

  return result;
}

unint64_t sub_245834C18()
{
  result = qword_27EE2A6F0;
  if (!qword_27EE2A6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A510);
    sub_245834CD0();
    sub_245778BD8(&qword_27EE2A718, &qword_27EE2A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A6F0);
  }

  return result;
}

unint64_t sub_245834CD0()
{
  result = qword_27EE2A6F8;
  if (!qword_27EE2A6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A4F8);
    sub_245834D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A6F8);
  }

  return result;
}

unint64_t sub_245834D5C()
{
  result = qword_27EE2A700;
  if (!qword_27EE2A700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A4F0);
    sub_245834DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A700);
  }

  return result;
}

unint64_t sub_245834DE8()
{
  result = qword_27EE2A708;
  if (!qword_27EE2A708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A4E8);
    sub_245778BD8(&qword_27EE2A710, &qword_27EE2A4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A708);
  }

  return result;
}

unint64_t sub_245834EA0()
{
  result = qword_27EE2A728;
  if (!qword_27EE2A728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE2A548);
    sub_2458340B4();
    swift_getOpaqueTypeConformance2();
    sub_245778BD8(&qword_27EE2A718, &qword_27EE2A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2A728);
  }

  return result;
}

uint64_t PassportInformation.imageData.getter()
{
  v1 = *(v0 + 232);
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 224);
  }

  sub_24578FB6C(*(v0 + 224), v1);
  return v2;
}

uint64_t PassportInformation.name.getter()
{
  v1 = sub_24590BE34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[11];
  v35 = v0[10];
  v36 = v5;
  v6 = v0[13];
  v37 = v0[12];
  v38 = v6;
  v7 = v0[7];
  v31 = v0[6];
  v32 = v7;
  v8 = v0[9];
  v33 = v0[8];
  v34 = v8;
  v9 = v0[3];
  v27 = v0[2];
  v28 = v9;
  v10 = v0[5];
  v29 = v0[4];
  v30 = v10;
  v11 = v0[1];
  v26[0] = *v0;
  v26[1] = v11;
  v12 = sub_24583521C(v26);
  result = 0;
  if (v12 != 1)
  {
    v25 = v27;

    sub_24590BE14();
    sub_245778CE8();
    v14 = sub_245911304();
    v16 = v15;
    (*(v2 + 8))(v4, v1);

    *&v25 = v14;
    *(&v25 + 1) = v16;
    v23 = 15420;
    v24 = 0xE200000000000000;
    v21 = 8236;
    v22 = 0xE200000000000000;
    v17 = sub_245911314();
    v19 = v18;

    *&v25 = v17;
    *(&v25 + 1) = v19;
    v23 = 60;
    v24 = 0xE100000000000000;
    v21 = 32;
    v22 = 0xE100000000000000;
    v20 = sub_245911314();

    return v20;
  }

  return result;
}

uint64_t sub_24583521C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t PassportInformation.issuer.getter()
{
  v1 = v0[11];
  v20 = v0[10];
  v21 = v1;
  v2 = v0[13];
  v22 = v0[12];
  v23 = v2;
  v3 = v0[7];
  v16 = v0[6];
  v17 = v3;
  v4 = v0[9];
  v18 = v0[8];
  v19 = v4;
  v5 = v0[3];
  v12 = v0[2];
  v13 = v5;
  v6 = v0[5];
  v14 = v0[4];
  v15 = v6;
  v7 = v0[1];
  v10 = *v0;
  v11 = v7;
  if (sub_24583521C(&v10) == 1)
  {
    return 0;
  }

  v8 = v11;

  return v8;
}

uint64_t PassportInformation.nationality.getter()
{
  v1 = v0[11];
  v16 = v0[10];
  v17 = v1;
  v2 = v0[13];
  v18 = v0[12];
  v19 = v2;
  v3 = v0[7];
  v12 = v0[6];
  v13 = v3;
  v4 = v0[9];
  v14 = v0[8];
  v15 = v4;
  v5 = v0[3];
  v10[2] = v0[2];
  v10[3] = v5;
  v6 = v0[5];
  v10[4] = v0[4];
  v11 = v6;
  v7 = v0[1];
  v10[0] = *v0;
  v10[1] = v7;
  if (sub_24583521C(v10) == 1)
  {
    return 0;
  }

  v8 = v11;

  return v8;
}

uint64_t PassportInformation.dateOfBirth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24590F354();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = *(v1 + 176);
  v29 = *(v1 + 160);
  v30 = v7;
  v8 = *(v1 + 208);
  v31 = *(v1 + 192);
  v32 = v8;
  v9 = *(v1 + 112);
  v25 = *(v1 + 96);
  v26 = v9;
  v10 = *(v1 + 144);
  v27 = *(v1 + 128);
  v28 = v10;
  v11 = *(v1 + 48);
  v24[2] = *(v1 + 32);
  v12 = *(v1 + 64);
  v13 = *(v1 + 80);
  v24[3] = v11;
  v24[4] = v12;
  v24[5] = v13;
  v14 = *(v1 + 16);
  v24[0] = *v1;
  v24[1] = v14;
  v15 = *(v1 + 240);
  if (sub_24583521C(v24) == 1)
  {
    goto LABEL_6;
  }

  v16 = HIBYTE(*(&v25 + 1)) & 0xFLL;
  if ((*(&v25 + 1) & 0x2000000000000000) == 0)
  {
    v16 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_6:
    v17 = sub_24590C1C4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  else
  {

    sub_24590CB04();

    v19 = sub_2459109C4();

    v20 = [v15 dateFromString_];

    if (v20)
    {
      sub_24590C1A4();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = sub_24590C1C4();
    (*(*(v22 - 8) + 56))(v6, v21, 1, v22);
    return sub_245835BA0(v6, a1);
  }
}

uint64_t PassportInformation.dateOfExpiry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24590F354();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = *(v1 + 176);
  v26 = *(v1 + 160);
  v27 = v7;
  v8 = *(v1 + 208);
  v28 = *(v1 + 192);
  v29 = v8;
  v9 = *(v1 + 112);
  v24[6] = *(v1 + 96);
  v24[7] = v9;
  v10 = *(v1 + 144);
  v24[8] = *(v1 + 128);
  v25 = v10;
  v11 = *(v1 + 48);
  v24[2] = *(v1 + 32);
  v12 = *(v1 + 64);
  v13 = *(v1 + 80);
  v24[3] = v11;
  v24[4] = v12;
  v24[5] = v13;
  v14 = *(v1 + 16);
  v24[0] = *v1;
  v24[1] = v14;
  v15 = *(v1 + 240);
  if (sub_24583521C(v24) == 1)
  {
    goto LABEL_6;
  }

  v16 = HIBYTE(*(&v25 + 1)) & 0xFLL;
  if ((*(&v25 + 1) & 0x2000000000000000) == 0)
  {
    v16 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_6:
    v17 = sub_24590C1C4();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  else
  {

    sub_24590CB04();

    v19 = sub_2459109C4();

    v20 = [v15 dateFromString_];

    if (v20)
    {
      sub_24590C1A4();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = sub_24590C1C4();
    (*(*(v22 - 8) + 56))(v6, v21, 1, v22);
    return sub_245835BA0(v6, a1);
  }
}

uint64_t PassportInformation.gender.getter()
{
  v1 = v0[11];
  v13 = v0[10];
  v14 = v1;
  v2 = v0[13];
  v15 = v0[12];
  v16 = v2;
  v3 = v0[7];
  v10[6] = v0[6];
  v10[7] = v3;
  v4 = v0[9];
  v11 = v0[8];
  v12 = v4;
  v5 = v0[3];
  v10[2] = v0[2];
  v10[3] = v5;
  v6 = v0[5];
  v10[4] = v0[4];
  v10[5] = v6;
  v7 = v0[1];
  v10[0] = *v0;
  v10[1] = v7;
  if (sub_24583521C(v10) == 1)
  {
    return 0;
  }

  v8 = v11;

  return v8;
}

uint64_t PassportInformation.documentNumber.getter()
{
  v1 = v0[11];
  v18 = v0[10];
  v19 = v1;
  v2 = v0[13];
  v20 = v0[12];
  v21 = v2;
  v3 = v0[7];
  v14 = v0[6];
  v15 = v3;
  v4 = v0[9];
  v16 = v0[8];
  v17 = v4;
  v5 = v0[3];
  v10[2] = v0[2];
  v11 = v5;
  v6 = v0[5];
  v12 = v0[4];
  v13 = v6;
  v7 = v0[1];
  v10[0] = *v0;
  v10[1] = v7;
  if (sub_24583521C(v10) == 1)
  {
    return 0;
  }

  v8 = v11;

  return v8;
}

uint64_t PassportInformation.optionalData.getter()
{
  v1 = v0[11];
  v10[10] = v0[10];
  v11 = v1;
  v2 = v0[13];
  v12 = v0[12];
  v13 = v2;
  v3 = v0[7];
  v10[6] = v0[6];
  v10[7] = v3;
  v4 = v0[9];
  v10[8] = v0[8];
  v10[9] = v4;
  v5 = v0[3];
  v10[2] = v0[2];
  v10[3] = v5;
  v6 = v0[5];
  v10[4] = v0[4];
  v10[5] = v6;
  v7 = v0[1];
  v10[0] = *v0;
  v10[1] = v7;
  if (sub_24583521C(v10) == 1)
  {
    return 0;
  }

  v8 = v11;

  return v8;
}

uint64_t sub_245835BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9CoreIDVUI7DG1DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9CoreIDVUI7DG2DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_245835C9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 240);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_245835CE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 240) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_245835D70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v3 + 168) = 0;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 145) = 0u;
  *(v3 + 176) = 1;
  *(v3 + 184) = 0;
  *(v3 + 192) = 1;
  *(v3 + 200) = 0;
  *(v3 + 208) = 1;
  v6 = MEMORY[0x277D84F90];
  *(v3 + 216) = sub_2458B8388(MEMORY[0x277D84F90]);
  v7 = type metadata accessor for PassportNFCReaderSessionDelegate();
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations] = v6;
  v8[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_isGetPendingCommandsRunning] = 0;
  *&v8[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_getPendingCommandsTask] = 0;
  swift_weakInit();
  v9 = &v8[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_passportInformation];
  v10 = *(a1 + 80);
  *(v9 + 4) = *(a1 + 64);
  *(v9 + 5) = v10;
  *(v9 + 6) = *(a1 + 96);
  v9[112] = *(a1 + 112);
  v11 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v11;
  v12 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v12;
  *&v8[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_proofingFlowManager] = a2;
  v33.receiver = v8;
  v33.super_class = v7;

  *(v3 + 112) = objc_msgSendSuper2(&v33, sel_init);
  sub_24579D5E0(0, &qword_27EE2B020);
  sub_24590D934();
  v13 = sub_245910FB4();
  LOBYTE(v8) = v14;

  if (v8)
  {
    v15 = *(a2 + 312);
    v16 = 0.0;
    if (v15 && (v17 = v15, v18 = sub_24590D7D4(), v20 = v19, v17, (v20 & 1) == 0))
    {
      v16 = COERCE_DOUBLE(sub_245805E64(v18));
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
    v16 = v13;
  }

  *(v3 + 168) = v16;
  *(v3 + 176) = v21 & 1;
  sub_24590D914();
  v22 = sub_245910FB4();
  v24 = v23;

  if ((v24 & 1) == 0)
  {

    v30 = 0;
    v31 = v22;
    goto LABEL_14;
  }

  v25 = *(a2 + 312);
  if (!v25)
  {

    goto LABEL_13;
  }

  v26 = v25;
  v27 = sub_24590D7B4();
  v29 = v28;

  if (v29)
  {
LABEL_13:
    v30 = 1;
    v31 = 0.0;
    goto LABEL_14;
  }

  v31 = COERCE_DOUBLE(sub_245805E64(v27));
LABEL_14:
  *(v3 + 184) = v31;
  *(v3 + 192) = v30 & 1;
  swift_weakAssign();
  return v3;
}

uint64_t sub_245836000()
{
  v1[21] = v0;
  v2 = sub_24590EA84();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_24590EA74();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v4 = sub_24590F354();
  v1[28] = v4;
  v1[29] = *(v4 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[35] = v5;
  *v5 = v1;
  v5[1] = sub_245836208;

  return sub_245838618();
}

uint64_t sub_245836208()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_245836344, v1, 0);
}

uint64_t sub_245836344()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "PassportNFCReader starting new reading session", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[34];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[21];

  v8 = *(v6 + 8);
  v0[36] = v8;
  v8(v4, v5);
  v10 = sub_2458410FC(&qword_27EE2A820, v9, type metadata accessor for PassportNFCReader);
  v11 = swift_task_alloc();
  v0[37] = v11;
  v12 = sub_24579D5E0(0, &qword_27EE2A828);
  *v11 = v0;
  v11[1] = sub_24583654C;

  return MEMORY[0x2822008A0](v0 + 18, v7, v10, 0x7365537472617473, 0xEE0029286E6F6973, sub_245837A44, 0, v12);
}

uint64_t sub_24583654C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_24583768C;
  }

  else
  {
    v4 = sub_2458366A4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2458366A4()
{
  v90 = v0;
  v89 = *MEMORY[0x277D85DE8];
  v0[19] = 0;
  v1 = v0[21];
  v2 = v0[18];
  v0[39] = v2;
  [v2 expectedAllowedReaderTime_];
  v4 = v3;
  v5 = v0[19];
  *(v1 + 200) = v3;
  *(v1 + 208) = 0;
  v88 = v5;
  if (v5)
  {
    v87 = v2;
    v6 = v5;
    sub_24590C714();
    v7 = v6;
    v8 = sub_24590F344();
    v9 = sub_245910F64();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v5;
      v12 = v7;
      _os_log_impl(&dword_245767000, v8, v9, "PassportNFCReader Allowing NFC session to start; Failed to get expected allowed reader time: %@", v10, 0xCu);
      sub_245778F94(v11, &qword_27EE297C0);
      MEMORY[0x245D77B40](v11, -1, -1);
      MEMORY[0x245D77B40](v10, -1, -1);
    }

    v13 = v8;
    v14 = v0[36];
    v15 = v0[33];
    v16 = v0[28];
    v17 = v0[29];
    v85 = v0[32];
    v86 = v0[28];
    v18 = v7;
    v19 = v0[26];
    v20 = v0[27];
    v21 = v0[25];
    v83 = v0[22];

    v84 = v17 + 8;
    v14(v15, v16);
    (*(v19 + 104))(v20, *MEMORY[0x277CFFD88], v21);
    v22 = v18;
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_2458410FC(&qword_27EE2BC40, 255, MEMORY[0x277CFFE30]);
    v23 = swift_allocError();
    v78 = 150;
    HIBYTE(v77[1]) = -18;
    strcpy(v77, "startSession()");
    sub_24590EA94();
    sub_24590C714();
    sub_24590C724();

    v14(v85, v86);
    v2 = v87;
LABEL_12:
    sub_24590C714();

    v33 = sub_24590F344();
    v34 = sub_245910F54();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v0[21];
      v36 = swift_slowAlloc();
      v37 = v36;
      *v36 = 134218240;
      *(v36 + 4) = v4;
      *(v36 + 12) = 2048;
      v38 = *(v35 + 168);
      if (*(v35 + 176))
      {
        v38 = 0.0;
      }

      *(v36 + 14) = v38;
      _os_log_impl(&dword_245767000, v33, v34, "PassportNFCReader has an expected allowed reader time of %fs (Threshold: %fs). Starting NFC Session.", v36, 0x16u);
      MEMORY[0x245D77B40](v37, -1, -1);
    }

    v39 = v0[36];
    v40 = v0[30];
    v41 = v0[28];

    v39(v40, v41);
    v0[20] = 0;
    v42 = [v2 startPollingForTechnology:3 error:v0 + 20];
    v43 = v0[20];
    if (v42)
    {
      v44 = v0[21];
      v45 = v44[14];
      v46 = v43;
      [v2 setDelegate_];
      v47 = v44[15];
      v44[15] = v2;

      v48 = v44[16];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        __break(1u);
      }

      v44[16] = v50;

      v51 = v0[1];
      goto LABEL_27;
    }

    v52 = v43;
    v53 = sub_24590BFA4();

    swift_willThrow();
    v54 = sub_24590BF94();
    v55 = [v54 domain];
    v56 = sub_245910A04();
    v58 = v57;

    v88 = v54;
    if (v56 == sub_245910B34() && v58 == v59)
    {
    }

    else
    {
      v60 = sub_245911714();

      if ((v60 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if ([v54 code] == 47)
    {
      v79 = 0xD000000000000035;
      v61 = MEMORY[0x277CFFBA8];
      v62 = 170;
LABEL_26:
      v84 = v0[34];
      v85 = v0[33];
      v63 = v0[32];
      v86 = v0[31];
      v87 = v0[30];
      v80 = v0[29];
      v81 = v0[28];
      v82 = v0[36];
      v65 = v0[24];
      v64 = v0[25];
      v67 = v0[22];
      v66 = v0[23];
      v68 = *v61;
      v69 = *(v0[26] + 104);
      v83 = v0[27];
      v69(v83, v68, v64);
      v70 = v53;
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      HIBYTE(v77[1]) = -18;
      v78 = v62;
      strcpy(v77, "startSession()");
      sub_24590EA94();
      sub_2458410FC(&qword_27EE2BC40, 255, MEMORY[0x277CFFE30]);
      v71 = swift_allocError();
      v72 = v53;
      v73 = *(v66 + 16);
      v73(v74, v65, v67);
      sub_24590C714();
      sub_24590C3F4();
      v82(v63, v81);

      swift_allocError();
      v73(v75, v65, v67);
      swift_willThrow();

      (*(v66 + 8))(v65, v67);

      v51 = v0[1];
LABEL_27:

      return v51();
    }

LABEL_25:
    v79 = 0xD000000000000022;
    v61 = MEMORY[0x277CFFB18];
    v62 = 172;
    goto LABEL_26;
  }

  v24 = v0[21];
  if (*(v24 + 176))
  {
    goto LABEL_12;
  }

  v25 = *(v24 + 168);
  if (v3 >= v25)
  {
    goto LABEL_12;
  }

  sub_24590C714();
  v26 = sub_24590F344();
  v27 = sub_245910F54();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    *(v28 + 4) = v4;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v25;
    _os_log_impl(&dword_245767000, v26, v27, "PassportNFCReader expected allowed reader time %fs does not meet the threshold (%fs). Blocking NFC session and updating UI.", v28, 0x16u);
    MEMORY[0x245D77B40](v28, -1, -1);
  }

  v29 = v0[36];
  v30 = v0[31];
  v31 = v0[28];

  v29(v30, v31);
  v0[2] = v0;
  v0[3] = sub_2458370E8;
  v32 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_245838004;
  v0[13] = &block_descriptor_83;
  v0[14] = v32;
  [v2 endSessionWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2458370E8()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_245837208, v1, 0);
}

uint64_t sub_245837208()
{
  v38 = v0;
  v37 = *MEMORY[0x277D85DE8];
  v1 = v0[39];
  LODWORD(v33) = *MEMORY[0x277CFFBA8];
  (*(v0[26] + 104))(v0[27]);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  v36 = sub_2458410FC(&qword_27EE2BC40, 255, MEMORY[0x277CFFE30]);
  v2 = swift_allocError();
  HIBYTE(v26[1]) = -18;
  strcpy(v26, "startSession()");
  v35 = "U MAP - ignoring error";
  sub_24590EA94();
  swift_willThrow();

  v3 = v2;
  v4 = sub_24590BF94();
  v5 = [v4 domain];
  v6 = sub_245910A04();
  v8 = v7;

  v34 = v4;
  if (v6 == sub_245910B34() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_245911714();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if ([v4 code] == 47)
  {
    v11 = 170;
    v12 = v33;
    goto LABEL_8;
  }

LABEL_7:
  v12 = *MEMORY[0x277CFFB18];
  v11 = 172;
LABEL_8:
  v30 = v0[34];
  v31 = v0[33];
  v13 = v0[32];
  v32 = v0[31];
  v33 = v0[30];
  v26[4] = v0[29];
  v27 = v0[28];
  v28 = v0[36];
  v14 = v0[25];
  v15 = v0[23];
  v16 = v0[24];
  v17 = v0[22];
  v18 = *(v0[26] + 104);
  v29 = v0[27];
  v18(v29, v12, v14);
  v19 = v3;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  HIBYTE(v26[1]) = -18;
  v26[2] = v11;
  strcpy(v26, "startSession()");
  sub_24590EA94();
  v20 = swift_allocError();
  v21 = *(v15 + 16);
  v21(v22, v16, v17);
  sub_24590C714();
  sub_24590C3F4();
  v28(v13, v27);

  swift_allocError();
  v21(v23, v16, v17);
  swift_willThrow();

  (*(v15 + 8))(v16, v17);

  v24 = v0[1];

  return v24();
}

uint64_t sub_24583768C()
{
  v23 = v0[38];
  v1 = sub_24590BF94();
  v2 = [v1 domain];
  v3 = sub_245910A04();
  v5 = v4;

  if (v3 == sub_245910B34() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_245911714();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v1 code] == 47)
  {
    v9 = MEMORY[0x277CFFBA8];
    goto LABEL_11;
  }

LABEL_10:
  v9 = MEMORY[0x277CFFB18];
LABEL_11:
  v10 = v0[32];
  v21 = v0[28];
  v22 = v0[36];
  v11 = v0[24];
  v13 = v0[22];
  v12 = v0[23];
  (*(v0[26] + 104))(v0[27], *v9, v0[25]);
  v14 = v23;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA94();
  sub_2458410FC(&qword_27EE2BC40, 255, MEMORY[0x277CFFE30]);
  v15 = swift_allocError();
  v16 = *(v12 + 16);
  v16(v17, v11, v13);
  sub_24590C714();
  sub_24590C3F4();
  v22(v10, v21);

  swift_allocError();
  v16(v18, v11, v13);
  swift_willThrow();

  (*(v12 + 8))(v11, v13);

  v19 = v0[1];

  return v19();
}

uint64_t sub_245837A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A830);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() sharedHardwareManagerWithNoUI];
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_245841144;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245837F78;
  aBlock[3] = &block_descriptor_89;
  v9 = _Block_copy(aBlock);

  v10 = [v6 startReaderSession_];
  _Block_release(v9);

  return swift_unknownObjectRelease();
}

uint64_t sub_245837C2C(void *a1, void *a2)
{
  v4 = sub_24590EA74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590F354();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = a2;
    v13 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A830);
    return sub_245910CE4();
  }

  if (!a1)
  {
    v16 = v10;
    sub_24590C714();
    v17 = sub_24590F344();
    v18 = sub_245910F64();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_245767000, v17, v18, "PassportNFCReader could not create NF reader session", v19, 2u);
      MEMORY[0x245D77B40](v19, -1, -1);
    }

    (*(v9 + 8))(v12, v16);
    (*(v5 + 104))(v7, *MEMORY[0x277CFFCA8], v4);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458410FC(&qword_27EE2BC40, 255, MEMORY[0x277CFFE30]);
    v20 = swift_allocError();
    sub_24590EA94();
    v22 = v20;
    goto LABEL_3;
  }

  v22 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A830);
  return sub_245910CF4();
}

void sub_245837F78(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_245838004(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_245838038()
{
  v1[2] = v0;
  v2 = sub_24590F354();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458380F8, v0, 0);
}

uint64_t sub_2458380F8()
{
  v1 = *(v0[2] + 120);
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    if (([v2 isActive]& 1) != 0)
    {
      sub_24590C714();
      v3 = sub_24590F344();
      v4 = sub_245910F54();
      v5 = os_log_type_enabled(v3, v4);
      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[3];
      if (v5)
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_245767000, v3, v4, "PassportNFCReader session already in progress; not starting new session", v9, 2u);
        MEMORY[0x245D77B40](v9, -1, -1);
        v10 = v3;
      }

      else
      {
        v10 = v2;
        v2 = v3;
      }

      (*(v7 + 8))(v6, v8);

      v14 = v0[1];

      return v14();
    }

    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v12 = sub_2458382FC;
  }

  else
  {
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v12 = sub_245838494;
  }

  v11[1] = v12;

  return sub_245836000();
}

uint64_t sub_2458382FC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_2458385AC;
  }

  else
  {
    v4 = sub_245838428;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_245838428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245838494()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2458385AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245838618()
{
  v1[18] = v0;
  v2 = sub_24590F354();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2458386D8, v0, 0);
}

uint64_t sub_2458386D8()
{
  v1 = *(v0[18] + 120);
  v0[22] = v1;
  if (v1)
  {
    v2 = v1;
    sub_24590C714();
    v3 = sub_24590F344();
    v4 = sub_245910F54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_245767000, v3, v4, "PassportNFCReader ending current reading session", v5, 2u);
      MEMORY[0x245D77B40](v5, -1, -1);
    }

    v7 = v0[20];
    v6 = v0[21];
    v8 = v0[19];

    (*(v7 + 8))(v6, v8);
    v0[2] = v0;
    v0[3] = sub_2458388E8;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_245838004;
    v0[13] = &block_descriptor_74;
    v0[14] = v9;
    [v2 endSessionWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2458388E8()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_2458389DC, v1, 0);
}

uint64_t sub_2458389DC()
{
  v1 = *(v0 + 144);

  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  v3 = *(v0 + 8);

  return v3();
}

void sub_245838A54()
{
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v8 = sub_24590EA74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  if (*(v0 + 208))
  {
    sub_24590C714();
    v15 = sub_24590F344();
    v16 = sub_245910F54();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_245767000, v15, v16, "PassportNFCReader failed to log thermal read failure; missing last expected allowed read time", v17, 2u);
      MEMORY[0x245D77B40](v17, -1, -1);
    }

    v18 = *(v2 + 8);
    v18(v5, v1);
    (*(v9 + 104))(v14, *MEMORY[0x277CFFD10], v8);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458410FC(&qword_27EE2BC40, 255, MEMORY[0x277CFFE30]);
    v19 = swift_allocError();
    sub_24590EA94();
    sub_24590C714();
    sub_24590C724();
    v18(v7, v1);
  }

  else
  {
    sub_245838EFC(v20 - v13, *(v0 + 200));
    v20[2] = "logThermalReadFailure()";
    (*(v9 + 16))(v12, v14, v8);
    v21 = v1;
    v20[1] = "U MAP - ignoring error";
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2458410FC(&qword_27EE2BC40, 255, MEMORY[0x277CFFE30]);
    v19 = swift_allocError();
    sub_24590EA94();
    sub_24590C714();
    sub_24590C724();
    (*(v2 + 8))(v7, v21);
    (*(v9 + 8))(v14, v8);
  }
}

uint64_t sub_245838EFC@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_24590EA74();
  v5 = *(*(v4 - 8) + 104);
  if (a2 >= 2.5)
  {
    if (a2 >= 5.0)
    {
      v6 = MEMORY[0x277CFFDD8];
      v7 = MEMORY[0x277CFFDB8];
      v8 = MEMORY[0x277CFFDE0];
      v9 = MEMORY[0x277CFFDC0];
      v10 = MEMORY[0x277CFFDE8];
      v11 = MEMORY[0x277CFFE00];
      if (a2 < 20.0)
      {
        v11 = MEMORY[0x277CFFDC8];
      }

      if (a2 >= 17.5)
      {
        v10 = v11;
      }

      if (a2 >= 15.0)
      {
        v9 = v10;
      }

      if (a2 >= 12.5)
      {
        v8 = v9;
      }

      if (a2 >= 10.0)
      {
        v7 = v8;
      }

      if (a2 >= 7.5)
      {
        v6 = v7;
      }
    }

    else
    {
      v6 = MEMORY[0x277CFFDB0];
    }
  }

  else
  {
    v6 = MEMORY[0x277CFFDD0];
  }

  v12 = *v6;

  return v5(a1, v12, v4);
}

uint64_t sub_245839028()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24583909C(uint64_t a1)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D18);
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[5] = v4;
  v2[6] = v5;

  return MEMORY[0x2822009F8](sub_245839168, v5, 0);
}

uint64_t sub_245839168()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0[6] + 112);
  *(swift_task_alloc() + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A7E0);
  (*(v3 + 104))(v1, *MEMORY[0x277D85778], v2);
  sub_245910DA4();

  v5 = v0[1];

  return v5();
}

uint64_t sub_245839268()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2457A18F4;

  return sub_245836000();
}

uint64_t sub_2458392F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2457AA49C;

  return sub_245838038();
}

uint64_t sub_245839388()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2457A18F4;

  return sub_245838618();
}

uint64_t sub_245839418(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_245839438, v3, 0);
}

uint64_t sub_245839438()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + 144);
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);
  *v2 = *(v1 + 128);
  *(v2 + 16) = v3;
  *(v2 + 24) = v5;
  *(v2 + 32) = v4;
  return (*(v0 + 8))();
}

uint64_t sub_245839470()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_245839490, v2, 0);
}

uint64_t sub_245839490()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  v5 = *(v0 + 8);

  return v5(v3, v2);
}

uint64_t sub_245839510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  (*(v5 + 16))(&v14 - v6, a1, v4);
  v8 = OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations;
  v9 = *(a2 + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_24580AA2C(0, v9[2] + 1, 1, v9);
    *(a2 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_24580AA2C(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  *(a2 + v8) = v9;
  return result;
}

uint64_t sub_245839698@<X0>(char *a1@<X8>)
{
  v2 = 0;
  while (1)
  {
    v3 = byte_285883360[v2++ + 32];
    v4 = sub_245910BA4();

    if (v4)
    {
      break;
    }

    if (v2 == 14)
    {
      v3 = 14;
      break;
    }
  }

  *a1 = v3;
  return result;
}

void sub_2458399F0(void *a1, unint64_t a2)
{
  v114[1] = *MEMORY[0x277D85DE8];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A7F0);
  v101 = *(v100 - 8);
  MEMORY[0x28223BE20](v100 - 8);
  v113 = &v96 - v4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20);
  v105 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v96 - v7;
  v9 = sub_24590F354();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v104 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v97 = &v96 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v106 = &v96 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v98 = &v96 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v96 - v19;
  sub_24590C714();

  v21 = sub_24590F344();
  v22 = sub_245910F54();
  v23 = os_log_type_enabled(v21, v22);
  v24 = a2 >> 62;
  v99 = v8;
  if (v23)
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    if (v24)
    {
      v95 = v25;
      v26 = sub_245911424();
      v25 = v95;
    }

    else
    {
      v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v25 + 4) = v26;
    v27 = v25;

    _os_log_impl(&dword_245767000, v21, v22, "PassportNFCReader Session detected %ld tags", v27, 0xCu);
    MEMORY[0x245D77B40](v27, -1, -1);
  }

  else
  {
  }

  v28 = *(v10 + 8);
  v108 = v10 + 8;
  v111 = v28;
  v28(v20, v9);
  v109 = v9;
  v110 = a1;
  if (v24)
  {
    goto LABEL_47;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
  {
    v30 = 0;
    v31 = a2 & 0xC000000000000001;
    v32 = a2 & 0xFFFFFFFFFFFFFF8;
    v112 = i;
    while (1)
    {
      if (v31)
      {
        v37 = MEMORY[0x245D76B30](v30, a2);
      }

      else
      {
        if (v30 >= *(v32 + 16))
        {
          goto LABEL_46;
        }

        v37 = *(a2 + 8 * v30 + 32);
      }

      v38 = v37;
      v39 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if ([v37 type] == 3 || objc_msgSend(v38, sel_type) == 6)
      {
        goto LABEL_40;
      }

      if ([v38 type] == 5)
      {
        v40 = [v38 tagB];
        if (!v40)
        {
          v33 = 0;
          v34 = 0xF000000000000000;
          goto LABEL_10;
        }

        v41 = v32;
        v42 = v31;
        v43 = [v40 pupi];
        swift_unknownObjectRelease();
        v33 = sub_24590C154();
        v34 = v44;

        if (v34 >> 60 == 15)
        {
          v31 = v42;
          v32 = v41;
          i = v112;
LABEL_10:
          sub_245771C44(v33, v34);
          v35 = 0;
          v36 = 0xC000000000000000;
LABEL_11:
          sub_245771C44(v35, v36);
          goto LABEL_12;
        }

        v45 = v34 >> 62;
        if (v34 >> 62 == 3)
        {
          if (v34 == 0xC000000000000000)
          {
            v50 = 0;
          }

          else
          {
            v50 = v33;
          }

          if (!v33)
          {
            v33 = v50;
          }

LABEL_39:
          sub_245771C44(0, 0xC000000000000000);
          sub_245771C44(v33, v34);
LABEL_40:
          v51 = v38;
          v52 = v110;
          if ([v110 connectTag_])
          {

            v53 = sub_245910D64();
            v54 = v99;
            (*(*(v53 - 8) + 56))(v99, 1, 1, v53);
            v55 = swift_allocObject();
            v55[2] = 0;
            v55[3] = 0;
            v56 = v107;
            v55[4] = v107;
            v55[5] = v51;
            v55[6] = v52;
            v57 = v56;
            v58 = v52;
            sub_2458B90EC(0, 0, v54, &unk_24591AFA8, v55);
          }

          else
          {
            v59 = v98;
            sub_24590C714();
            v60 = sub_24590F344();
            v61 = sub_245910F64();
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              *v62 = 0;
              _os_log_impl(&dword_245767000, v60, v61, "PassportNFCReader could not connect to detected tag", v62, 2u);
              MEMORY[0x245D77B40](v62, -1, -1);
            }

            v111(v59, v109);
            [v52 endSession];
          }

          return;
        }

        if (v45)
        {
          v31 = v42;
          if (v45 == 1)
          {
            LODWORD(v46) = HIDWORD(v33) - v33;
            if (__OFSUB__(HIDWORD(v33), v33))
            {
              __break(1u);
LABEL_66:
              __break(1u);
            }

            v32 = v41;
            v46 = v46;
            goto LABEL_31;
          }

          v48 = *(v33 + 16);
          v47 = *(v33 + 24);
          v49 = __OFSUB__(v47, v48);
          v46 = v47 - v48;
          if (v49)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v46 = BYTE6(v34);
          v31 = v42;
        }

        v32 = v41;
LABEL_31:
        i = v112;
        if (!v46)
        {
          goto LABEL_39;
        }

        sub_245771C44(0, 0xC000000000000000);
        v35 = v33;
        v36 = v34;
        goto LABEL_11;
      }

LABEL_12:

      ++v30;
      if (v39 == i)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_48:
  v63 = v106;
  sub_24590C714();
  v64 = sub_24590F344();
  v65 = sub_245910F54();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_245767000, v64, v65, "PassportNFCReader No compatible tags detected", v66, 2u);
    MEMORY[0x245D77B40](v66, -1, -1);
  }

  v67 = v109;
  v111(v63, v109);
  v114[0] = 0;
  v68 = v110;
  v69 = [v110 disconnectTagWithCardRemoval_];
  v70 = v114[0];
  if (v69 && (v114[0] = 0, v71 = v70, v72 = [v68 restartPollingWithError_], v70 = v114[0], v72))
  {
    v73 = v114[0];
    v74 = v97;
    sub_24590C714();
    v75 = sub_24590F344();
    v76 = sub_245910F84();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_245767000, v75, v76, "Did not find compatible tag. Restarting polling", v77, 2u);
      MEMORY[0x245D77B40](v77, -1, -1);
    }

    v111(v74, v67);
  }

  else
  {
    v78 = v70;
    v79 = sub_24590BFA4();

    swift_willThrow();
    v80 = v104;
    sub_24590C714();
    v81 = sub_24590F344();
    v82 = sub_245910F64();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_245767000, v81, v82, "Failed to restart polling, ending NFC session", v83, 2u);
      MEMORY[0x245D77B40](v83, -1, -1);
    }

    v111(v80, v67);
    [v68 endSession];
    v84 = *&v107[OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations];
    v85 = v84[2];
    if (v85)
    {
      v86 = *(v105 + 16);
      v111 = v79;
      v112 = v86;
      v87 = v84 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
      v88 = *(v105 + 72);
      v89 = (v101 + 8);
      v90 = (v105 + 8);
      v110 = v84;

      v91 = v100;
      v92 = v102;
      v93 = v103;
      do
      {
        v112(v92, v87, v93);
        LOBYTE(v114[0]) = 6;
        HIDWORD(v114[0]) = 0;
        sub_245910D74();
        (*v89)(v113, v91);
        (*v90)(v92, v93);
        v87 += v88;
        --v85;
      }

      while (v85);

      v94 = v111;
    }

    else
    {
      v94 = v79;
    }
  }
}

uint64_t sub_24583A468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[38] = a4;
  v6[39] = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A7F0);
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20);
  v6[43] = v10;
  v6[44] = *(v10 - 8);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v11 = sub_24590F354();
  v6[50] = v11;
  v6[51] = *(v11 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[54] = v12;
  *v12 = v6;
  v12[1] = sub_24583A6AC;

  return sub_24583B57C(a5, a6);
}

uint64_t sub_24583A6AC()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_24583B2E8;
  }

  else
  {
    v2 = sub_24583A7C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24583A7C0()
{
  v1 = v0[39];
  v0[10] = v0;
  v0[11] = sub_24583A8D4;
  v2 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_245838004;
  v0[29] = &block_descriptor_56;
  v0[30] = v2;
  [v1 endSessionWithCompletion_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_24583A8D4()
{

  return MEMORY[0x2822009F8](sub_24583A9B4, 0, 0);
}

uint64_t sub_24583A9B4()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[53];
  v5 = v0[50];
  v6 = v0[51];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "PassportNFCReader Finished current NFC session.", v7, 2u);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24583AB0C()
{

  return MEMORY[0x2822009F8](sub_24583ABEC, 0, 0);
}

uint64_t sub_24583ABEC()
{
  v1 = *(v0 + 392);
  swift_getErrorValue();
  sub_2459117E4();
  v2 = sub_24590EA74();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_2:
    v4 = *(*(v0 + 304) + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v0 + 352);
      v8 = *(v6 + 16);
      v7 = v6 + 16;
      v9 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
      v43 = *(v7 + 56);
      v46 = v8;
      v10 = (*(v0 + 328) + 8);

      do
      {
        v11 = *(v0 + 360);
        v13 = *(v0 + 336);
        v12 = *(v0 + 344);
        v14 = *(v0 + 320);
        v46(v11, v9, v12);
        *(v0 + 456) = 8;
        *(v0 + 460) = 0;
        sub_245910D74();
        (*v10)(v13, v14);
        (*(v7 - 8))(v11, v12);
        v9 += v43;
        --v5;
      }

      while (v5);
LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v15 = *(v0 + 384);
  sub_245840FCC(*(v0 + 392), v15);
  v16 = (*(v3 + 88))(v15, v2);
  if (v16 == *MEMORY[0x277CFF950])
  {
    v17 = *(*(v0 + 304) + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v0 + 352);
      v21 = *(v19 + 16);
      v20 = v19 + 16;
      v22 = v17 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v44 = *(v20 + 56);
      v47 = v21;
      v23 = (*(v0 + 328) + 8);

      do
      {
        v24 = *(v0 + 368);
        v26 = *(v0 + 336);
        v25 = *(v0 + 344);
        v27 = *(v0 + 320);
        v47(v24, v22, v25);
        *(v0 + 464) = 9;
        *(v0 + 468) = 0;
        sub_245910D74();
        (*v23)(v26, v27);
        (*(v20 - 8))(v24, v25);
        v22 += v44;
        --v18;
      }

      while (v18);
      goto LABEL_10;
    }

LABEL_11:
    v28 = *(v0 + 392);

    sub_245778F94(v28, &qword_27EE2A800);

    v29 = *(v0 + 8);

    return v29();
  }

  if (v16 != *MEMORY[0x277CFFA70])
  {
    (*(v3 + 8))(*(v0 + 384), v2);
    goto LABEL_2;
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 448) = Strong;
  if (!Strong)
  {
    v32 = *(*(v0 + 304) + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations);
    v33 = *(v32 + 16);
    if (!v33)
    {
      goto LABEL_11;
    }

    v34 = *(v0 + 352);
    v36 = *(v34 + 16);
    v35 = v34 + 16;
    v37 = v32 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v45 = *(v35 + 56);
    v48 = v36;
    v38 = (*(v0 + 328) + 8);

    do
    {
      v39 = *(v0 + 376);
      v41 = *(v0 + 336);
      v40 = *(v0 + 344);
      v42 = *(v0 + 320);
      v48(v39, v37, v40);
      *(v0 + 472) = 6;
      *(v0 + 476) = 0;
      sub_245910D74();
      (*v38)(v41, v42);
      (*(v35 - 8))(v39, v40);
      v37 += v45;
      --v33;
    }

    while (v33);
    goto LABEL_10;
  }

  return MEMORY[0x2822009F8](sub_24583B0A8, Strong, 0);
}

uint64_t sub_24583B0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 448);
  v6 = *(v5 + 17);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 17) = v8;

    v5 = sub_24583B124;
    a2 = 0;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](v5, a2, a3);
}

uint64_t sub_24583B124()
{
  v1 = *(*(v0 + 304) + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 352);
    v5 = *(v3 + 16);
    v4 = v3 + 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v15 = *(v4 + 56);
    v16 = v5;
    v7 = (*(v0 + 328) + 8);

    do
    {
      v8 = *(v0 + 376);
      v10 = *(v0 + 336);
      v9 = *(v0 + 344);
      v11 = *(v0 + 320);
      v16(v8, v6, v9);
      *(v0 + 472) = 6;
      *(v0 + 476) = 0;
      sub_245910D74();
      (*v7)(v10, v11);
      (*(v4 - 8))(v8, v9);
      v6 += v15;
      --v2;
    }

    while (v2);
  }

  v12 = *(v0 + 392);

  sub_245778F94(v12, &qword_27EE2A800);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24583B2E8()
{
  v1 = v0[38];
  if (*(v1 + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_getPendingCommandsTask))
  {
    sub_24590CAF4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    sub_245910DD4();

    v1 = v0[38];
  }

  v2 = v0[55];
  *(v1 + OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_isGetPendingCommandsRunning) = 0;
  sub_24590C714();
  v3 = v2;
  v4 = sub_24590F344();
  v5 = sub_245910F64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[55];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v4, v5, "PassportNFCReader Error reading passport chip: %@", v7, 0xCu);
    sub_245778F94(v8, &qword_27EE297C0);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  v12 = v0[51];
  v11 = v0[52];
  v13 = v0[50];
  v14 = v0[39];

  (*(v12 + 8))(v11, v13);
  v0[2] = v0;
  v0[3] = sub_24583AB0C;
  v15 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A808);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_245838004;
  v0[21] = &block_descriptor_22;
  v0[22] = v15;
  [v14 endSessionWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24583B57C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A7F0);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE2A810);
  v3[24] = swift_task_alloc();
  v5 = sub_24590EAB4();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29D20);
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v7 = sub_24590F354();
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24583B7BC, 0, 0);
}

uint64_t sub_24583B7BC()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "PassportNFCReader connected to chip, starting reading passport information", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 160);

  v8 = *(v6 + 8);
  *(v0 + 288) = v8;
  v8(v4, v5);
  v9 = OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations;
  *(v0 + 296) = OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_streamContinuations;
  v10 = *(v7 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v0 + 232);
    v14 = *(v12 + 16);
    v13 = v12 + 16;
    v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v34 = *(v13 + 56);
    v35 = v14;
    v16 = (*(v0 + 176) + 8);

    do
    {
      v17 = *(v0 + 248);
      v18 = *(v0 + 224);
      v19 = *(v0 + 184);
      v20 = *(v0 + 168);
      v35(v17, v15, v18);
      *(v0 + 504) = 2;
      *(v0 + 508) = 0;
      sub_245910D74();
      (*v16)(v19, v20);
      (*(v13 - 8))(v17, v18);
      v15 += v34;
      --v11;
    }

    while (v11);
  }

  v22 = *(v0 + 208);
  v21 = *(v0 + 216);
  v24 = *(v0 + 192);
  v23 = *(v0 + 200);
  v25 = *(v0 + 152);
  v26 = *(v0 + 144);
  v27 = v25;
  sub_24590EAA4();
  (*(v22 + 16))(v24, v21, v23);
  (*(v22 + 56))(v24, 0, 1, v23);
  sub_24590C704();
  swift_allocObject();
  v28 = sub_24590C6E4();
  *(v0 + 304) = v28;
  sub_24590C4C4();
  swift_allocObject();
  *(v0 + 312) = sub_24590C4B4();
  type metadata accessor for PassportReaderManager();
  inited = swift_initStackObject();
  *(v0 + 320) = inited;
  inited[2] = &unk_285883390;
  inited[5] = 0;
  swift_unknownObjectWeakInit();
  inited[6] = MEMORY[0x277D84F98];
  inited[3] = v28;
  *(v0 + 328) = OBJC_IVAR____TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate_passportReader;
  Strong = swift_weakLoadStrong();
  *(v0 + 336) = Strong;
  if (Strong)
  {
    v31 = Strong;

    return MEMORY[0x2822009F8](sub_24583BB64, v31, 0);
  }

  else
  {

    v32 = swift_task_alloc();
    *(v0 + 344) = v32;
    *v32 = v0;
    v32[1] = sub_24583BC34;

    return sub_24583E6D4(0);
  }
}

uint64_t sub_24583BB64()
{
  v1 = *(v0 + 336);
  v2 = sub_2458B8388(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v1 + 216) = v2;

  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  *v3 = v0;
  v3[1] = sub_24583BC34;

  return sub_24583E6D4(0);
}

uint64_t sub_24583BC34(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_24583DE68;
  }

  else
  {
    v4 = sub_24583BD48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24583BD48()
{
  v1 = *(v0 + 352);
  *(v0 + 368) = sub_24590CAE4();
  *(v0 + 376) = v2;
  if (v2)
  {
    Strong = swift_weakLoadStrong();
    *(v0 + 384) = Strong;
    if (Strong)
    {
      v4 = Strong;
      v5 = sub_24583C4D0;
LABEL_4:
      v6 = v5;
      goto LABEL_15;
    }
  }

  v7 = sub_24590CAA4();
  *(v0 + 524) = v8;
  v10 = *(v0 + 352);
  v9 = *(v0 + 360);
  *(v0 + 392) = v7;
  *(v0 + 400) = v10;
  v11 = sub_24590CAB4();

  if (v11 >> 62)
  {
    v12 = sub_245911424();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    v22 = swift_weakLoadStrong();
    *(v0 + 472) = v22;
    if (v22)
    {
      v23 = v22;
      sub_24590C4A4();
      *(v0 + 520) = v24;
      v6 = sub_24583D6B4;
      v4 = v23;
LABEL_15:
      v25 = 0;

      return MEMORY[0x2822009F8](v6, v4, v25);
    }

    sub_24590C714();
    v45 = sub_24590F344();
    v46 = sub_245910F54();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_245767000, v45, v46, "PassportNFCReader finished full NFC read", v47, 2u);
      MEMORY[0x245D77B40](v47, -1, -1);
    }

    v48 = *(v0 + 524);
    v49 = *(v0 + 288);
    v50 = *(v0 + 272);
    v51 = *(v0 + 256);

    v49(v50, v51);
    v52 = swift_task_alloc();
    *(v0 + 480) = v52;
    *v52 = v0;
    v52[1] = sub_24583D874;
    v53 = *(v0 + 392);
    v54 = *(v0 + 320);

    return sub_24583EEAC(v54, v53, v48 & 1);
  }

  v13 = *(v0 + 304);
  v14 = sub_24590CAB4();
  v15 = sub_24583EB10(v14, v13);
  *(v0 + 408) = v9;
  if (v9)
  {
    v16 = *(v0 + 320);
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = *(v0 + 200);

    swift_setDeallocating();
    sub_2457B2F00(v16 + 32);

    (*(v18 + 8))(v17, v19);

    v20 = *(v0 + 8);

    return v20();
  }

  v26 = v15;

  sub_24590CAE4();
  sub_24590CAC4();

  sub_24590CAA4();
  v27 = objc_allocWithZone(sub_24590CAF4());
  *(v0 + 416) = sub_24590CAD4();
  v28 = sub_24590CAB4();
  if (v28 >> 62)
  {
    v72 = v28;
    v29 = sub_245911424();
    v28 = v72;
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = MEMORY[0x277D84F90];
  v77 = v26;
  if (v29)
  {
    v31 = v28;
    *(v0 + 120) = MEMORY[0x277D84F90];
    v6 = sub_24577CCB4(0, v29 & ~(v29 >> 63), 0);
    if (v29 < 0)
    {
      __break(1u);
      goto LABEL_60;
    }

    v32 = 0;
    v33 = *(v0 + 120);
    v34 = v31;
    v78 = v31 & 0xC000000000000001;
    v35 = v31;
    v36 = v29;
    do
    {
      if (v78)
      {
        v37 = MEMORY[0x245D76B30](v32, v34);
      }

      else
      {
        v37 = *(v34 + 8 * v32 + 32);
      }

      v38 = v37;
      sub_24590C3B4();
      v39 = sub_245910A84();
      v41 = v40;

      *(v0 + 120) = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_24577CCB4((v42 > 1), v43 + 1, 1);
        v33 = *(v0 + 120);
      }

      ++v32;
      *(v33 + 16) = v43 + 1;
      v44 = v33 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
      v34 = v35;
    }

    while (v36 != v32);

    v30 = MEMORY[0x277D84F90];
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  *(v0 + 424) = v33;
  if (v77 >> 62)
  {
    v55 = sub_245911424();
    if (v55)
    {
LABEL_38:
      *(v0 + 128) = v30;
      v6 = sub_24577CCB4(0, v55 & ~(v55 >> 63), 0);
      if ((v55 & 0x8000000000000000) == 0)
      {
        v56 = *(v0 + 128);
        if ((v77 & 0xC000000000000001) != 0)
        {
          v57 = 0;
          do
          {
            MEMORY[0x245D76B30](v57, v77);
            sub_24590C3B4();
            v58 = sub_245910A84();
            v60 = v59;

            swift_unknownObjectRelease();
            *(v0 + 128) = v56;
            v62 = *(v56 + 16);
            v61 = *(v56 + 24);
            if (v62 >= v61 >> 1)
            {
              sub_24577CCB4((v61 > 1), v62 + 1, 1);
              v56 = *(v0 + 128);
            }

            ++v57;
            *(v56 + 16) = v62 + 1;
            v63 = v56 + 16 * v62;
            *(v63 + 32) = v58;
            *(v63 + 40) = v60;
          }

          while (v55 != v57);
        }

        else
        {
          v64 = 32;
          do
          {
            v65 = *(v77 + v64);
            sub_24590C3B4();
            v66 = sub_245910A84();
            v68 = v67;

            *(v0 + 128) = v56;
            v70 = *(v56 + 16);
            v69 = *(v56 + 24);
            if (v70 >= v69 >> 1)
            {
              sub_24577CCB4((v69 > 1), v70 + 1, 1);
              v56 = *(v0 + 128);
            }

            *(v56 + 16) = v70 + 1;
            v71 = v56 + 16 * v70;
            *(v71 + 32) = v66;
            *(v71 + 40) = v68;
            v64 += 8;
            --v55;
          }

          while (v55);
        }

        goto LABEL_54;
      }

LABEL_60:
      __break(1u);
      return MEMORY[0x2822009F8](v6, v4, v25);
    }
  }

  else
  {
    v55 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_38;
    }
  }

  v56 = MEMORY[0x277D84F90];
LABEL_54:
  *(v0 + 432) = v56;
  v73 = swift_weakLoadStrong();
  *(v0 + 440) = v73;
  if (v73)
  {
    v4 = v73;
    v5 = sub_24583CC8C;
    goto LABEL_4;
  }

  v74 = *(v0 + 416);

  v75 = v74;
  v76 = swift_task_alloc();
  *(v0 + 448) = v76;
  *v76 = v0;
  v76[1] = sub_24583CE24;

  return sub_24583E6D4(v74);
}

uint64_t sub_24583C4D0()
{
  *(*(v0 + 384) + 224) = *(v0 + 368);

  return MEMORY[0x2822009F8](sub_24583C54C, 0, 0);
}

uint64_t sub_24583C54C()
{
  v1 = sub_24590CAA4();
  *(v0 + 524) = v2;
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  *(v0 + 392) = v1;
  *(v0 + 400) = v4;
  v5 = sub_24590CAB4();

  if (v5 >> 62)
  {
    v6 = sub_245911424();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = *(v0 + 304);
    v8 = sub_24590CAB4();
    v9 = sub_24583EB10(v8, v7);
    *(v0 + 408) = v3;
    if (v3)
    {
      v10 = *(v0 + 320);
      v12 = *(v0 + 208);
      v11 = *(v0 + 216);
      v13 = *(v0 + 200);

      swift_setDeallocating();
      sub_2457B2F00(v10 + 32);

      (*(v12 + 8))(v11, v13);

      v14 = *(v0 + 8);

      return v14();
    }

    v21 = v9;

    sub_24590CAE4();
    sub_24590CAC4();

    sub_24590CAA4();
    v22 = objc_allocWithZone(sub_24590CAF4());
    *(v0 + 416) = sub_24590CAD4();
    v23 = sub_24590CAB4();
    if (v23 >> 62)
    {
      v69 = v23;
      v24 = sub_245911424();
      v23 = v69;
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = MEMORY[0x277D84F90];
    v74 = v21;
    if (v24)
    {
      v26 = v23;
      *(v0 + 120) = MEMORY[0x277D84F90];
      v19 = sub_24577CCB4(0, v24 & ~(v24 >> 63), 0);
      if (v24 < 0)
      {
        __break(1u);
        goto LABEL_55;
      }

      v28 = 0;
      v75 = v0;
      v29 = *(v0 + 120);
      v30 = v26;
      v31 = v26 & 0xC000000000000001;
      v32 = v26;
      v33 = v24;
      do
      {
        if (v31)
        {
          v34 = MEMORY[0x245D76B30](v28, v30);
        }

        else
        {
          v34 = *(v30 + 8 * v28 + 32);
        }

        v35 = v34;
        sub_24590C3B4();
        v36 = sub_245910A84();
        v38 = v37;

        *(v75 + 120) = v29;
        v40 = *(v29 + 16);
        v39 = *(v29 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_24577CCB4((v39 > 1), v40 + 1, 1);
          v29 = *(v75 + 120);
        }

        ++v28;
        *(v29 + 16) = v40 + 1;
        v41 = v29 + 16 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v38;
        v30 = v32;
      }

      while (v33 != v28);

      v25 = MEMORY[0x277D84F90];
      v0 = v75;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    *(v0 + 424) = v29;
    if (v74 >> 62)
    {
      v52 = sub_245911424();
      if (v52)
      {
LABEL_30:
        *(v0 + 128) = v25;
        v19 = sub_24577CCB4(0, v52 & ~(v52 >> 63), 0);
        if ((v52 & 0x8000000000000000) == 0)
        {
          v53 = *(v0 + 128);
          if ((v74 & 0xC000000000000001) != 0)
          {
            v54 = 0;
            do
            {
              MEMORY[0x245D76B30](v54, v74);
              sub_24590C3B4();
              v55 = sub_245910A84();
              v57 = v56;

              swift_unknownObjectRelease();
              *(v0 + 128) = v53;
              v59 = *(v53 + 16);
              v58 = *(v53 + 24);
              if (v59 >= v58 >> 1)
              {
                sub_24577CCB4((v58 > 1), v59 + 1, 1);
                v53 = *(v0 + 128);
              }

              ++v54;
              *(v53 + 16) = v59 + 1;
              v60 = v53 + 16 * v59;
              *(v60 + 32) = v55;
              *(v60 + 40) = v57;
            }

            while (v52 != v54);
          }

          else
          {
            v61 = 32;
            do
            {
              v62 = *(v74 + v61);
              sub_24590C3B4();
              v63 = sub_245910A84();
              v65 = v64;

              *(v0 + 128) = v53;
              v67 = *(v53 + 16);
              v66 = *(v53 + 24);
              if (v67 >= v66 >> 1)
              {
                sub_24577CCB4((v66 > 1), v67 + 1, 1);
                v53 = *(v0 + 128);
              }

              *(v53 + 16) = v67 + 1;
              v68 = v53 + 16 * v67;
              *(v68 + 32) = v63;
              *(v68 + 40) = v65;
              v61 += 8;
              --v52;
            }

            while (v52);
          }

          goto LABEL_46;
        }

LABEL_55:
        __break(1u);
        return MEMORY[0x2822009F8](v19, v20, v27);
      }
    }

    else
    {
      v52 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        goto LABEL_30;
      }
    }

    v53 = MEMORY[0x277D84F90];
LABEL_46:
    *(v0 + 432) = v53;
    Strong = swift_weakLoadStrong();
    *(v0 + 440) = Strong;
    if (Strong)
    {
      v20 = Strong;
      v19 = sub_24583CC8C;
LABEL_48:
      v27 = 0;

      return MEMORY[0x2822009F8](v19, v20, v27);
    }

    v71 = *(v0 + 416);

    v72 = v71;
    v73 = swift_task_alloc();
    *(v0 + 448) = v73;
    *v73 = v0;
    v73[1] = sub_24583CE24;

    return sub_24583E6D4(v71);
  }

  v16 = swift_weakLoadStrong();
  *(v0 + 472) = v16;
  if (v16)
  {
    v17 = v16;
    sub_24590C4A4();
    *(v0 + 520) = v18;
    v19 = sub_24583D6B4;
    v20 = v17;
    goto LABEL_48;
  }

  sub_24590C714();
  v42 = sub_24590F344();
  v43 = sub_245910F54();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_245767000, v42, v43, "PassportNFCReader finished full NFC read", v44, 2u);
    MEMORY[0x245D77B40](v44, -1, -1);
  }

  v45 = *(v0 + 524);
  v46 = *(v0 + 288);
  v47 = *(v0 + 272);
  v48 = *(v0 + 256);

  v46(v47, v48);
  v49 = swift_task_alloc();
  *(v0 + 480) = v49;
  *v49 = v0;
  v49[1] = sub_24583D874;
  v50 = *(v0 + 392);
  v51 = *(v0 + 320);

  return sub_24583EEAC(v51, v50, v45 & 1);
}