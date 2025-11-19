uint64_t sub_1C5B67BF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v67 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194540);
  MEMORY[0x1EEE9AC00](v58);
  v64 = &v52 - v2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1990A0);
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v52 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v52 - v7;
  v59 = sub_1C5BC8F34();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1990A8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v52 - v11);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1990B0);
  MEMORY[0x1EEE9AC00](v55);
  v61 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v52 - v18;
  v19 = sub_1C5BCA484();
  v20 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1990B8) + 36);
  sub_1C5BCA9D4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1990C0);
  v22 = *(v21 + 52);
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_1C5BC9044();
  v25 = *(*(v24 - 8) + 104);
  v54 = v23;
  v52 = v25;
  v25(&v20[v22], v23, v24);
  *&v20[*(v21 + 56)] = 256;
  *v12 = v19;
  KeyPath = swift_getKeyPath();
  v27 = (v12 + *(v10 + 44));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196130) + 28);
  v29 = *MEMORY[0x1E697DBA8];
  v30 = sub_1C5BC8284();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = KeyPath;
  v31 = *v53;
  v32 = *(v53 + 8);

  v33 = v31;
  if ((v32 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v34 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v35 = v56;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v57 + 8))(v35, v59);
    v33 = v68;
  }

  swift_getKeyPath();
  v68 = v33;
  sub_1C5B68494(&qword_1EC194160, type metadata accessor for ParallaxContext);
  sub_1C5BC7B74();

  v36 = *(v33 + 40);

  if (v36)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  sub_1C59E7D34(v12, v16, &qword_1EC1990A8);
  *&v16[*(v55 + 36)] = v37;
  v38 = v60;
  sub_1C59E7D34(v16, v60, &qword_1EC1990B0);
  v39 = v64;
  v52(v64, v54, v24);
  if (qword_1EC1908F0 != -1)
  {
    swift_once();
  }

  *&v39[*(v58 + 36)] = qword_1EC199018;

  if ((v32 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v40 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v41 = v56;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v57 + 8))(v41, v59);
    v31 = v68;
  }

  swift_getKeyPath();
  v68 = v31;
  sub_1C5BC7B74();

  v42 = *(v31 + 40);

  if (v42)
  {
    v43 = 0.0;
  }

  else
  {
    v43 = 1.0;
  }

  v44 = v39;
  v45 = v62;
  sub_1C59E7D34(v44, v62, &qword_1EC194540);
  *(v45 + *(v63 + 36)) = v43;
  v46 = v65;
  sub_1C59E7D34(v45, v65, &qword_1EC1990A0);
  v47 = v61;
  sub_1C59400B0(v38, v61, &qword_1EC1990B0);
  v48 = v66;
  sub_1C59400B0(v46, v66, &qword_1EC1990A0);
  v49 = v67;
  sub_1C59400B0(v47, v67, &qword_1EC1990B0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1990C8);
  sub_1C59400B0(v48, v49 + *(v50 + 48), &qword_1EC1990A0);
  sub_1C5924EF4(v46, &qword_1EC1990A0);
  sub_1C5924EF4(v38, &qword_1EC1990B0);
  sub_1C5924EF4(v48, &qword_1EC1990A0);
  return sub_1C5924EF4(v47, &qword_1EC1990B0);
}

uint64_t sub_1C5B683B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BCAA54();
  v7 = v6;
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199068) + 36);
  sub_1C5B67894(v2, v8);
  v9 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199070) + 36));
  *v9 = v5;
  v9[1] = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199078);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1C5B68494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s11MediaCoreUI13MCUINamespaceVA2A19ParallaxButtonStyleVRszlE8parallaxAEvgZ_0@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  type metadata accessor for ParallaxContext();
  sub_1C5B68494(&qword_1EC194160, type metadata accessor for ParallaxContext);
  result = sub_1C5BC8324();
  *(a1 + 16) = result;
  *(a1 + 24) = v3 & 1;
  return result;
}

unint64_t sub_1C5B68598()
{
  result = qword_1EC199050;
  if (!qword_1EC199050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199048);
    sub_1C5BC9554();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199028);
    sub_1C5B68494(&qword_1EDA46200, MEMORY[0x1E697C8D0]);
    sub_1C5B67520();
    sub_1C5B67608();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199050);
  }

  return result;
}

void sub_1C5B68718()
{
  sub_1C5B2104C();
  if (v0 <= 0x3F)
  {
    sub_1C5A3B4E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C5B687B8()
{
  result = qword_1EC1990D0;
  if (!qword_1EC1990D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199068);
    sub_1C5924F54(&qword_1EC1990D8, &qword_1EC199078);
    sub_1C5924F54(&qword_1EC1990E0, &qword_1EC199070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1990D0);
  }

  return result;
}

uint64_t sub_1C5B688A4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  *a1 = v3;
  return result;
}

uint64_t sub_1C5B68924(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1C5BC8044();
}

uint64_t sub_1C5B68994()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5B68A08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1C5BC8044();
}

void (*sub_1C5B68A74(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1C5BC8024();
  return sub_1C5A7BFCC;
}

uint64_t sub_1C5B68B18()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  sub_1C5BC8004();
  return swift_endAccess();
}

uint64_t sub_1C5B68B90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  sub_1C5BC8014();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1C5B68D14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  sub_1C5BC8014();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1C5B68E4C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11MediaCoreUI36NowPlayingArtworkRestrictionsMonitor__isMotionDisabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  sub_1C5BC8004();
  swift_endAccess();
  return sub_1C5B68FBC;
}

void sub_1C5B68FBC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1C5BC8014();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1C5BC8014();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void sub_1C5B69124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  if (a2)
  {
    if (a1 == 0x6F4D6E6F69746F6DLL && a2 == 0xEA00000000006564 || (sub_1C5BCBDE4() & 1) != 0)
    {
      v14 = sub_1C5BCB214();
      (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
      sub_1C5BCB1E4();
      v15 = v5;
      v16 = sub_1C5BCB1D4();
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E85E0];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v15;
      sub_1C5AD0FB8(0, 0, v13, &unk_1C5BEF260, v17);

      return;
    }

    v19 = sub_1C5BCAE44();
  }

  else
  {
    v19 = 0;
  }

  sub_1C59AB370(a3, v29);
  v20 = v30;
  if (!v30)
  {
    v26 = 0;
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = __swift_project_boxed_opaque_existential_0(v29, v30);
  v22 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v23);
  v26 = sub_1C5BCBDD4();
  (*(v22 + 8))(v25, v20);
  __swift_destroy_boxed_opaque_existential_0(v29);
  if (a4)
  {
LABEL_10:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1C5929CEC(&qword_1EC190DB0, type metadata accessor for NSKeyValueChangeKey);
    a4 = sub_1C5BCACA4();
  }

LABEL_11:
  v27 = type metadata accessor for NowPlayingArtworkRestrictionsMonitor();
  v28.receiver = v5;
  v28.super_class = v27;
  objc_msgSendSuper2(&v28, sel_observeValueForKeyPath_ofObject_change_context_, v19, v26, a4, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_1C5B6946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1C5BCB1E4();
  *(v4 + 24) = sub_1C5BCB1D4();
  v6 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5B69504, v6, v5);
}

uint64_t sub_1C5B69504()
{

  sub_1C5929DEC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5B69568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C5B6946C(a1, v4, v5, v6);
}

id NowPlayingArtworkRestrictionsMonitor.__deallocating_deinit()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = v0;
  v3 = sub_1C5BCAE44();
  [v1 removeObserver:v2 forKeyPath:v3];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for NowPlayingArtworkRestrictionsMonitor();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1C5B6997C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingArtworkRestrictionsMonitor();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

void sub_1C5B69AE0(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v7 = *(a3 + 16);
  if (!v7)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v56 = *(a3 + 16);
  v57 = a4;
  v8 = v7 - 1;
  v55 = v7 - 1;
  v62 = a3;
  v64 = a1;
  if (v7 != 1)
  {
    v4 = a3 + 56;
    v5 = MEMORY[0x1E69E7CC0];
    v9 = a1;
    while (1)
    {
      v10 = round(*(v4 - 16) * v9);
      if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v10 <= -9.22337204e18)
      {
        goto LABEL_72;
      }

      if (v10 >= 9.22337204e18)
      {
        goto LABEL_73;
      }

      v11 = round(*v4 * v9);
      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_74;
      }

      if (v11 <= -9.22337204e18)
      {
        goto LABEL_75;
      }

      if (v11 >= 9.22337204e18)
      {
        goto LABEL_76;
      }

      v12 = v11 - 1;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_77;
      }

      v13 = v10;
      if (v12 < v10)
      {
        goto LABEL_78;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1C5B760A4(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      v6 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v5 = sub_1C5B760A4((v14 > 1), v15 + 1, 1, v5);
      }

      *(v5 + 2) = v6;
      v16 = &v5[16 * v15];
      *(v16 + 4) = v13;
      *(v16 + 5) = v12;
      v4 += 16;
      if (!--v8)
      {
        goto LABEL_19;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_19:
  v4 = v57;
  if (!(v57 >> 62))
  {
    if (v6 != *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

    goto LABEL_21;
  }

LABEL_84:
  if (v6 != sub_1C5BCB984())
  {
    goto LABEL_85;
  }

LABEL_21:
  v17 = v64 * a2;
  if ((v64 * a2) >> 64 != (v64 * a2) >> 63)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v17 + 0x4000000000000000 < 0)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v18 = sub_1C5B75FA8(0, (2 * v17) & ~((2 * v17) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v52 = *(v5 + 2);
  if (!v52)
  {
    goto LABEL_85;
  }

  if (a2 < 0)
  {
    goto LABEL_91;
  }

  v6 = 0;
  v19 = v5 + 32;
  v20 = v4 & 0xC000000000000001;
  v54 = v62 + 32;
  v49 = (v4 + 32);
  v50 = v4 & 0xFFFFFFFFFFFFFF8;
  v51 = v4 & 0xC000000000000001;
  while (2)
  {
    if (v6 >= *(v5 + 2))
    {
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v21 = &v19[16 * v6];
    v62 = *v21;
    v64 = *(v21 + 1);
    if (v20)
    {
      v22 = MEMORY[0x1C694FD20](v6, v4);
    }

    else
    {
      if (v6 >= *(v50 + 16))
      {
LABEL_92:
        __break(1u);
        return;
      }

      v22 = *&v49[v6];
    }

    v61 = v22;
    if (v6 == v56)
    {
      goto LABEL_87;
    }

    if (v6 == v55)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v24 = *(v54 + 16 * v6);
    v53 = v6 + 1;
    v25 = *(v54 + 16 * (v6 + 1));
    v26 = v62;
    v27 = v64 - v62;
    v28 = __OFSUB__(v64, v62);
    v60 = v28;
    v29 = __OFADD__(v27, 1);
    v30 = v27 + 1;
    v31 = v29;
    v32 = (v30 - 1);
    v58 = (v24 ^ 1) & v25;
    v59 = v31;
    v33 = a2;
    while (1)
    {
      if (v24)
      {
        if (v25)
        {
          v23 = 0.0;
          if (v33)
          {
            goto LABEL_53;
          }

          goto LABEL_62;
        }
      }

      else if ((v25 & 1) == 0)
      {
        LODWORD(v23) = 1.0;
        if (v33)
        {
          goto LABEL_53;
        }

        goto LABEL_62;
      }

      if (__OFSUB__(v26, v62))
      {
        goto LABEL_80;
      }

      if (v60)
      {
        goto LABEL_81;
      }

      if (v59)
      {
        goto LABEL_82;
      }

      *&v23 = (v26 - v62) / v32;
      v4 = v24;
      v34 = v25;
      [v61 _solveForInput_];
      v25 = v34;
      v24 = v4;
      v33 = a2;
      *&v23 = *&v23 * 65535.0;
      if (v58)
      {
        *&v23 = 65535.0 - *&v23;
      }

      if (a2)
      {
LABEL_53:
        v35 = roundf(*&v23);
        LODWORD(v4) = llroundf(*&v23);
        v36 = v33;
        while (1)
        {
          v38 = *(v18 + 2);
          v37 = *(v18 + 3);
          v6 = v38 + 1;
          if (v38 >= v37 >> 1)
          {
            v41 = v18;
            v47 = v24;
            v42 = v25;
            v43 = sub_1C5B75FA8((v37 > 1), v38 + 1, 1, v41);
            v25 = v42;
            v24 = v47;
            v18 = v43;
            v33 = a2;
          }

          *(v18 + 2) = v6;
          *&v18[2 * v38 + 32] = 0;
          if ((LODWORD(v35) & 0x7FFFFFFFu) > 0x7F7FFFFF)
          {
            break;
          }

          if (v35 <= -1.0)
          {
            goto LABEL_69;
          }

          if (v35 >= 65536.0)
          {
            goto LABEL_70;
          }

          v39 = *(v18 + 3);
          v40 = v38 + 2;
          if (v40 > (v39 >> 1))
          {
            v44 = v18;
            v48 = v24;
            v45 = v25;
            v46 = sub_1C5B75FA8((v39 > 1), v40, 1, v44);
            v25 = v45;
            v24 = v48;
            v18 = v46;
            v33 = a2;
          }

          *(v18 + 2) = v40;
          *&v18[2 * v6 + 32] = v4;
          if (!--v36)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

LABEL_62:
      if (v26 == v64)
      {
        break;
      }

      v29 = __OFADD__(v26++, 1);
      if (v29)
      {
        goto LABEL_79;
      }
    }

    v6 = v53;
    v4 = v57;
    v20 = v51;
    v19 = v5 + 32;
    if (v53 != v52)
    {
      continue;
    }

    break;
  }

LABEL_85:
}

uint64_t sub_1C5B6A010(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4();
  }
}

void static NowPlayingViewModel.LeadingTransportButtonConfiguration.previous.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x80000001C5BFCA20;
  *(a1 + 16) = 1;
}

double static NowPlayingViewModel.LeadingTransportButtonConfiguration.seekBackward10.getter@<D0>(uint64_t a1@<X8>)
{
  result = 3.29257015e161;
  *a1 = xmmword_1C5BEF360;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingViewModel.LeadingTransportButtonConfiguration.seekBackward30.getter@<D0>(uint64_t a1@<X8>)
{
  result = 3.29257015e161;
  *a1 = xmmword_1C5BEF380;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingViewModel.LeadingTransportButtonConfiguration.seekBackward45.getter@<D0>(uint64_t a1@<X8>)
{
  result = 3.29257015e161;
  *a1 = xmmword_1C5BEF390;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingViewModel.LeadingTransportButtonConfiguration.seekBackward60.getter@<D0>(uint64_t a1@<X8>)
{
  result = 3.29257015e161;
  *a1 = xmmword_1C5BEF3A0;
  *(a1 + 16) = 0;
  return result;
}

void static NowPlayingViewModel.LeadingTransportButtonConfiguration.configuration(for:)(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 == -10.0)
  {
    v2 = xmmword_1C5BEF360;
LABEL_11:
    *a1 = v2;
    *(a1 + 16) = 0;
    return;
  }

  if (a2 == -15.0)
  {
    v2 = xmmword_1C5BEF370;
    goto LABEL_11;
  }

  if (a2 == -30.0)
  {
    v2 = xmmword_1C5BEF380;
    goto LABEL_11;
  }

  if (a2 == -45.0)
  {
    v2 = xmmword_1C5BEF390;
    goto LABEL_11;
  }

  if (a2 == -60.0)
  {
    v2 = xmmword_1C5BEF3A0;
    goto LABEL_11;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

uint64_t sub_1C5B6A17C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6573756170;
  if (v2 != 1)
  {
    v4 = 1886352499;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2036427888;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6573756170;
  if (*a2 != 1)
  {
    v8 = 1886352499;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2036427888;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C5BCBDE4();
  }

  return v11 & 1;
}

uint64_t sub_1C5B6A260()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5B6A2F0()
{
  sub_1C5BCAF04();
}

uint64_t sub_1C5B6A36C()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5B6A3F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5B6A714();
  *a1 = result;
  return result;
}

void sub_1C5B6A428(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6573756170;
  if (v2 != 1)
  {
    v5 = 1886352499;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2036427888;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double static NowPlayingViewModel.TrailingTransportButtonConfiguration.seekForward10.getter@<D0>(uint64_t a1@<X8>)
{
  result = 9.31739788e242;
  *a1 = xmmword_1C5BEF3B0;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingViewModel.TrailingTransportButtonConfiguration.seekForward15.getter@<D0>(uint64_t a1@<X8>)
{
  result = 9.31739788e242;
  *a1 = xmmword_1C5BEF3C0;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingViewModel.TrailingTransportButtonConfiguration.seekForward45.getter@<D0>(uint64_t a1@<X8>)
{
  result = 9.31739788e242;
  *a1 = xmmword_1C5BEF3E0;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingViewModel.TrailingTransportButtonConfiguration.seekForward60.getter@<D0>(uint64_t a1@<X8>)
{
  result = 9.31739788e242;
  *a1 = xmmword_1C5BEF3F0;
  *(a1 + 16) = 0;
  return result;
}

void static NowPlayingViewModel.TrailingTransportButtonConfiguration.configuration(for:)(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 == 10.0)
  {
    v2 = xmmword_1C5BEF3B0;
LABEL_11:
    *a1 = v2;
    *(a1 + 16) = 0;
    return;
  }

  if (a2 == 15.0)
  {
    v2 = xmmword_1C5BEF3C0;
    goto LABEL_11;
  }

  if (a2 == 30.0)
  {
    v2 = xmmword_1C5BEF3D0;
    goto LABEL_11;
  }

  if (a2 == 45.0)
  {
    v2 = xmmword_1C5BEF3E0;
    goto LABEL_11;
  }

  if (a2 == 60.0)
  {
    v2 = xmmword_1C5BEF3F0;
    goto LABEL_11;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

BOOL _s11MediaCoreUI19NowPlayingViewModelC35LeadingTransportButtonConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v4 = v3 == *a2 && a1[1] == *(a2 + 8);
  return v4 || (sub_1C5BCBDE4() & 1) != 0;
}

unint64_t sub_1C5B6A5C8(uint64_t a1)
{
  result = sub_1C5B6A5F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5B6A5F0()
{
  result = qword_1EDA4A230;
  if (!qword_1EDA4A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A230);
  }

  return result;
}

BOOL sub_1C5B6A644(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v4 = v3 == *a2 && a1[1] == *(a2 + 8);
  return v4 || (sub_1C5BCBDE4() & 1) != 0;
}

unint64_t sub_1C5B6A6C0()
{
  result = qword_1EC1990E8;
  if (!qword_1EC1990E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1990E8);
  }

  return result;
}

uint64_t sub_1C5B6A714()
{
  v0 = sub_1C5BCBCB4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t static WaveformView.ProcessID.current.getter@<X0>(_DWORD *a1@<X8>)
{
  result = getpid();
  *a1 = result;
  return result;
}

uint64_t WaveformView.init(state:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  *a2 = v3;
  return result;
}

double sub_1C5B6A7D4@<D0>(uint64_t a1@<X8>)
{
  sub_1C5AE1310();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C5B6A82C(uint64_t a1)
{
  sub_1C5ADF038(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  sub_1C5AE1310();
  return sub_1C5BC8F54();
}

double sub_1C5B6A890@<D0>(_OWORD *a1@<X8>)
{
  sub_1C5AFAEAC();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C5B6A8E0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1C5AFAEAC();
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  return sub_1C5BC8F54();
}

__n128 WaveformView.body.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v56 = *v1;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  LODWORD(v5) = *(v1 + 41);
  v58 = v8;
  if (v5 == 1)
  {
    v98 = v7;
    v99 = v8;
    v100 = v9;
    v101 = v10;
    v102 = v11;
    v12 = v7;
    v57 = v9;
    v55 = v10;
    sub_1C5ADF038(v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = v7;
    v54 = a1;

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    a1 = v54;
    sub_1C5B6BD3C(v13, v58, v9, v10, v11, 0);
    (*(v4 + 8))(v6, v3);
    v12 = v98;
    v57 = v100;
    v58 = v99;
    v55 = v101;
    v11 = v102;
  }

  if (!v11)
  {
    KeyPath = swift_getKeyPath();
    LOBYTE(v94[0]) = 0;
    v29 = swift_getKeyPath();
    LOBYTE(v83) = 0;
    v30 = swift_getKeyPath();
    LOBYTE(v59[0]) = 0;
    *&v63 = v56;
    *(&v63 + 1) = KeyPath;
    *&v65 = 0;
    v64 = 0uLL;
    BYTE8(v65) = v94[0];
    v66 = v29;
    LOBYTE(v67) = v83;
    *(&v67 + 1) = v30;
    LOBYTE(v68) = 0;
    v54 = v12;
    v31 = v57;
    v32 = v58;
    *(&v68 + 1) = v12;
    *&v69 = v58;
    *(&v69 + 1) = v57;
    *&v70 = v55;
    v81 = v65;
    v82[0] = v66;
    *v80 = v63;
    *&v80[16] = 0u;
    *&v82[4] = v55;
    v33 = v55;
    v82[2] = v68;
    v82[3] = v69;
    v82[1] = v67;
    sub_1C5B6BFC0(v80);
    v94[4] = v82[1];
    v94[5] = v82[2];
    v94[6] = v82[3];
    *(&v94[6] + 9) = *(&v82[3] + 9);
    v94[0] = *v80;
    v94[1] = *&v80[16];
    v94[2] = v81;
    v94[3] = v82[0];
    sub_1C59D9228(v56);
    sub_1C5ADF038(v12, v32, v31, v33, 0);
    sub_1C59400B0(&v63, &v83, &qword_1EC199108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199108);
    sub_1C5B6BDD4();
    sub_1C5B6BE28();
    sub_1C5BC92C4();
    v87 = v76;
    v88 = v77;
    v89[0] = v78[0];
    *(v89 + 9) = *(v78 + 9);
    v83 = v72;
    v84 = v73;
    v85 = v74;
    v86 = v75;
    sub_1C5AA34C0(&v83);
    v96 = v92;
    v97[0] = v93[0];
    *(v97 + 9) = *(v93 + 9);
    v94[6] = v89[0];
    v94[7] = v89[1];
    v94[8] = v90;
    v95 = v91;
    v94[2] = v85;
    v94[3] = v86;
    v94[4] = v87;
    v94[5] = v88;
    v94[0] = v83;
    v94[1] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1990F8);
    sub_1C5B6BD48();
    sub_1C5B6BEB4();
    sub_1C5BC92C4();
    sub_1C5ADF09C(v54, v58, v57, v33, 0);
    sub_1C5924EF4(&v63, &qword_1EC199108);
LABEL_11:
    v96 = v60;
    v97[0] = v61[0];
    v27 = *(v61 + 9);
    goto LABEL_12;
  }

  if (v11 != 1)
  {
    v34 = swift_getKeyPath();
    LOBYTE(v94[0]) = 0;
    v35 = swift_getKeyPath();
    LOBYTE(v83) = 0;
    v36 = swift_getKeyPath();
    LOBYTE(v59[0]) = 0;
    v37 = v56;
    *&v63 = v56;
    *(&v63 + 1) = v34;
    *&v65 = 0;
    v64 = 0uLL;
    BYTE8(v65) = v94[0];
    v66 = v35;
    LOBYTE(v67) = v83;
    *(&v67 + 1) = v36;
    LOBYTE(v68) = 0;
    LOBYTE(v82[2]) = 0;
    v82[0] = v35;
    v82[1] = v67;
    *&v80[16] = 0u;
    v81 = v65;
    *v80 = v63;
    sub_1C5B6BFCC(v80);
    v94[4] = v82[1];
    v94[5] = v82[2];
    v94[6] = v82[3];
    *(&v94[6] + 9) = *(&v82[3] + 9);
    v94[0] = *v80;
    v94[1] = *&v80[16];
    v94[2] = v81;
    v94[3] = v82[0];
    sub_1C59D9228(v37);
    sub_1C5B6BFD4(&v63, &v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199108);
    sub_1C5B6BDD4();
    sub_1C5B6BE28();
    sub_1C5BC92C4();
    v87 = v76;
    v88 = v77;
    v89[0] = v78[0];
    *(v89 + 9) = *(v78 + 9);
    v83 = v72;
    v84 = v73;
    v85 = v74;
    v86 = v75;
    sub_1C5AA34C0(&v83);
    v96 = v92;
    v97[0] = v93[0];
    *(v97 + 9) = *(v93 + 9);
    v94[6] = v89[0];
    v94[7] = v89[1];
    v94[8] = v90;
    v95 = v91;
    v94[2] = v85;
    v94[3] = v86;
    v94[4] = v87;
    v94[5] = v88;
    v94[0] = v83;
    v94[1] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1990F8);
    sub_1C5B6BD48();
    sub_1C5B6BEB4();
    sub_1C5BC92C4();
    sub_1C5B6C00C(&v63);
    goto LABEL_11;
  }

  v83 = 0uLL;
  *&v84 = 0x3FF4000000000000;
  v54 = v12;
  v53 = v12;
  sub_1C5BCA684();
  v15 = v94[0];
  v52 = *(&v94[1] + 1);
  v16 = *&v94[1];
  v51 = swift_getKeyPath();
  v62 = 0;
  v17 = sub_1C5BCAA54();
  v48 = v18;
  v49 = v17;
  v47 = swift_getKeyPath();
  LOBYTE(v94[0]) = 0;
  v46 = swift_getKeyPath();
  LOBYTE(v83) = 0;
  v45 = swift_getKeyPath();
  LOBYTE(v59[0]) = 0;
  v19 = v94[0];
  HIDWORD(v44) = v83;
  v20 = v56;
  sub_1C59D9228(v56);
  if (qword_1EDA48EC8 != -1)
  {
    swift_once();
  }

  v22 = xmmword_1EDA48ED8;
  v21 = unk_1EDA48EE8;
  *&v63 = v49;
  *(&v63 + 1) = v48;
  *&v64 = v20;
  *(&v64 + 1) = v47;
  *&v66 = 0;
  v65 = 0uLL;
  BYTE8(v66) = v19;
  v67 = v46;
  LOBYTE(v68) = BYTE4(v44);
  *(&v68 + 1) = v45;
  LOBYTE(v69) = 0;
  *(&v69 + 1) = qword_1EDA48ED0;
  v70 = xmmword_1EDA48ED8;
  v71 = unk_1EDA48EE8;
  v50 = v62;
  *(v94 + 7) = v63;
  *(&v94[4] + 7) = v46;
  *(&v94[3] + 7) = v66;
  *(&v94[2] + 7) = 0u;
  *(&v94[1] + 7) = v64;
  *(&v94[8] + 7) = unk_1EDA48EE8;
  *(&v94[7] + 7) = xmmword_1EDA48ED8;
  *(&v94[6] + 7) = v69;
  *(&v94[5] + 7) = v68;
  *&v72 = v49;
  *(&v72 + 1) = v48;
  *&v73 = v20;
  *(&v73 + 1) = v47;
  *&v75 = 0;
  v74 = 0uLL;
  BYTE8(v75) = v19;
  v76 = v46;
  LOBYTE(v77) = BYTE4(v44);
  *(&v77 + 1) = v45;
  LOBYTE(v78[0]) = 0;
  *(&v78[0] + 1) = qword_1EDA48ED0;
  v78[1] = xmmword_1EDA48ED8;
  v79 = unk_1EDA48EE8;
  v23 = qword_1EDA48ED0;
  v24 = v22;
  v25 = *(&v22 + 1);
  v26 = v21;
  sub_1C59400B0(&v63, &v83, &qword_1EC1990F0);
  sub_1C5924EF4(&v72, &qword_1EC1990F0);
  *&v80[8] = v15;
  *&v80[24] = v16;
  *(&v82[5] + 9) = v94[5];
  *(&v82[6] + 9) = v94[6];
  *(&v82[7] + 9) = v94[7];
  *(&v82[8] + 8) = *(&v94[7] + 15);
  *(&v82[1] + 9) = v94[1];
  *(&v82[2] + 9) = v94[2];
  *v80 = v53;
  *&v81 = v52;
  *(&v81 + 1) = v51;
  *&v82[0] = 0;
  BYTE8(v82[0]) = v50;
  *(&v82[3] + 9) = v94[3];
  *(&v82[4] + 9) = v94[4];
  *(v82 + 9) = v94[0];
  v92 = v82[7];
  v93[0] = v82[8];
  *&v93[1] = *(&v94[8] + 7);
  v89[0] = v82[3];
  v89[1] = v82[4];
  v90 = v82[5];
  v91 = v82[6];
  v85 = v81;
  v86 = v82[0];
  v87 = v82[1];
  v88 = v82[2];
  v83 = *v80;
  v84 = *&v80[16];
  sub_1C5AA34B4(&v83);
  v96 = v92;
  v97[0] = v93[0];
  *(v97 + 9) = *(v93 + 9);
  v94[6] = v89[0];
  v94[7] = v89[1];
  v94[8] = v90;
  v95 = v91;
  v94[2] = v85;
  v94[3] = v86;
  v94[4] = v87;
  v94[5] = v88;
  v94[0] = v83;
  v94[1] = v84;
  sub_1C59400B0(v80, v59, &qword_1EC1990F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1990F8);
  sub_1C5B6BD48();
  sub_1C5B6BEB4();
  sub_1C5BC92C4();
  sub_1C5ADF09C(v54, v58, v57, v55, 1);
  sub_1C5924EF4(v80, &qword_1EC1990F8);
  v96 = v60;
  v97[0] = v61[0];
  v27 = *(v61 + 9);
LABEL_12:
  *(v97 + 9) = v27;
  v94[6] = v59[6];
  v94[7] = v59[7];
  v94[8] = v59[8];
  v95 = v59[9];
  v94[2] = v59[2];
  v94[3] = v59[3];
  v94[4] = v59[4];
  v94[5] = v59[5];
  v94[0] = v59[0];
  v94[1] = v59[1];
  v38 = v97[0];
  a1[10] = v96;
  a1[11] = v38;
  *(a1 + 185) = *(v97 + 9);
  v39 = v94[7];
  a1[6] = v94[6];
  a1[7] = v39;
  v40 = v95;
  a1[8] = v94[8];
  a1[9] = v40;
  v41 = v94[3];
  a1[2] = v94[2];
  a1[3] = v41;
  v42 = v94[5];
  a1[4] = v94[4];
  a1[5] = v42;
  result = v94[1];
  *a1 = v94[0];
  a1[1] = result;
  return result;
}

uint64_t sub_1C5B6B3DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCA5B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v2;
  sub_1C5BCA594();
  (*(v9 + 104))(v11, *MEMORY[0x1E6981630], v8);
  v40 = sub_1C5BCA5E4();

  (*(v9 + 8))(v11, v8);
  v58 = *(v2 + 56);
  v57 = *(v2 + 40);
  if (v58 == 1)
  {
    v45 = v57;
  }

  else
  {

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v57, &qword_1EC199118);
    v13 = *(v5 + 8);
    v13(v7, v4);

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v57, &qword_1EC199118);
    v13(v7, v4);
  }

  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v39 = v49;
  v15 = v50;
  v38 = v51;
  v16 = v52;
  v37 = v53;
  v36 = v54;
  v48 = v50;
  v47 = v52;
  v46 = 0;
  v17 = *(v2 + 24);
  v55 = *(v2 + 8);
  v56 = v17;
  v18 = *(v2 + 24);
  v42 = *(v2 + 8);
  v43 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199120);
  sub_1C5BCA694();
  v19 = v44;
  v35 = sub_1C5BCAA54();
  v34 = v20;
  sub_1C5BCA474();
  v42 = v55;
  v43 = v56;
  sub_1C5BCA694();
  v33 = sub_1C5BCA4B4();

  v32 = sub_1C5BCAA54();
  v22 = v21;
  sub_1C5BCA494();
  v42 = v55;
  v43 = v56;
  sub_1C5BCA694();
  v23 = sub_1C5BCA4B4();

  v24 = swift_allocObject();
  v25 = *(v2 + 16);
  v24[1] = *v2;
  v24[2] = v25;
  v24[3] = *(v2 + 32);
  *(v24 + 57) = *(v2 + 41);
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199128) + 36));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199130);
  sub_1C5B6D390(v2, &v42);
  result = sub_1C5BCB1F4();
  *(v26 + *(v27 + 40)) = v41;
  *v26 = &unk_1C5BEFD58;
  v26[1] = v24;
  v29 = v39;
  *a1 = v40;
  *(a1 + 8) = v29;
  *(a1 + 16) = v15;
  *(a1 + 24) = v38;
  *(a1 + 32) = v16;
  v30 = v36;
  *(a1 + 40) = v37;
  *(a1 + 48) = v30;
  *(a1 + 56) = 0x3FF0000000000000;
  *(a1 + 64) = 256;
  *(a1 + 72) = v19;
  v31 = v35;
  *(a1 + 80) = v33;
  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  *(a1 + 104) = v23;
  *(a1 + 112) = v32;
  *(a1 + 120) = v22;
  *(a1 + 128) = 0x4018000000000000;
  *(a1 + 136) = 1;
  return result;
}

uint64_t sub_1C5B6B98C(uint64_t *a1)
{
  v1[14] = a1;
  v1[15] = sub_1C5BCB1E4();
  v1[16] = sub_1C5BCB1D4();
  v3 = *a1;
  v4 = swift_task_alloc();
  v1[17] = v4;
  *v4 = v1;
  v4[1] = sub_1C5B6BA58;

  return sub_1C5AE03BC(v3);
}

uint64_t sub_1C5B6BA58(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *v4;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  *(v5 + 144) = a4;

  v7 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5B6BBA4, v7, v6);
}

uint64_t sub_1C5B6BBA4()
{
  v1 = *(v0 + 144);

  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 112);
    v3 = *(v2 + 24);
    v4 = *(v2 + 8);
    *(v0 + 88) = *(v0 + 24);
    v5 = *(v0 + 40);
    *(v0 + 56) = v4;
    *(v0 + 72) = v3;
    *(v0 + 104) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199120);
    sub_1C5BCA6A4();
  }

  v6 = *(v0 + 8);

  return v6();
}

double sub_1C5B6BC54@<D0>(_OWORD *a1@<X8>)
{
  sub_1C5B6D5E4();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_1C5B6BD3C(void *a1, void *a2, void *a3, void *a4, char a5, char a6)
{
  if (a6)
  {
    sub_1C5ADF09C(a1, a2, a3, a4, a5);
  }

  else
  {
  }
}

unint64_t sub_1C5B6BD48()
{
  result = qword_1EDA462F8;
  if (!qword_1EDA462F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199100);
    sub_1C5B6BDD4();
    sub_1C5B6BE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA462F8);
  }

  return result;
}

unint64_t sub_1C5B6BDD4()
{
  result = qword_1EDA47BF0;
  if (!qword_1EDA47BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47BF0);
  }

  return result;
}

unint64_t sub_1C5B6BE28()
{
  result = qword_1EDA46668;
  if (!qword_1EDA46668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199108);
    sub_1C5B6BDD4();
    sub_1C5A282C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46668);
  }

  return result;
}

unint64_t sub_1C5B6BEB4()
{
  result = qword_1EDA46678;
  if (!qword_1EDA46678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1990F8);
    sub_1C5B6BF6C();
    sub_1C5924F54(&qword_1EDA462D8, &qword_1EC1990F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46678);
  }

  return result;
}

unint64_t sub_1C5B6BF6C()
{
  result = qword_1EDA4B2A8[0];
  if (!qword_1EDA4B2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4B2A8);
  }

  return result;
}

uint64_t static WaveformView.setDefaultAudioTapTarget(processID:)(_DWORD *a1)
{
  *(v1 + 56) = *a1;
  sub_1C5BCB1E4();
  *(v1 + 16) = sub_1C5BCB1D4();
  v3 = sub_1C5BCB194();
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1C5B6C0EC, v3, v2);
}

uint64_t sub_1C5B6C0EC()
{
  if (qword_1EDA490C8 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1EDA5DB00;

  return MEMORY[0x1EEE6DFA0](sub_1C5B6C188, 0, 0);
}

uint64_t sub_1C5B6C188()
{
  v1 = sub_1C5A133D4();
  *(v0 + 48) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C5B6C1F4, v1, 0);
}

uint64_t sub_1C5B6C1F4()
{
  v8 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  if (*(v1 + 112) != v2)
  {
    *(v1 + 112) = v2;
    v3 = *(v1 + 120);
    v7 = v2;
    v3(&v7);
  }

  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1C5A2C0A0, v4, v5);
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C5B6C2C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 42))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 3;
  if (v4 < 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1C5B6C330(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 2147483643;
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1C5B6C3B0()
{
  result = qword_1EDA462E8;
  if (!qword_1EDA462E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199110);
    sub_1C5B6BD48();
    sub_1C5B6BEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA462E8);
  }

  return result;
}

uint64_t sub_1C5B6C43C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1C5B6C484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5B6C4FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 81))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 3;
  if (v4 < 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1C5B6C564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 2147483643;
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

char *sub_1C5B6C5E4()
{
  v1 = sub_1C5BC8F34();
  v32 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 8);
  v37 = *v0;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v55[0] = *(v0 + 41);
  *(v55 + 3) = *(v0 + 44);
  v9 = *(v0 + 56);
  v33 = *(v0 + 48);
  v36 = v9;
  v10 = *(v0 + 64);
  v54 = v10;
  v53 = *(v0 + 65);
  v11 = [objc_allocWithZone(type metadata accessor for WaveformPlayIndicator()) init];
  v38 = v8;
  v35 = v5;
  v34 = v6;
  if (v8)
  {
    v39 = v4;
    v40 = v5;
    v41 = v6;
    v42 = v7;
    sub_1C5B6D51C(v4, v5, v6, v7, 1);
    v12 = v7;
    v13 = v5;
    v14 = v4;
    v15 = v32;
  }

  else
  {
    sub_1C5B6D51C(v4, v5, v6, v7, 0);
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B6D580(v4, v5, v6, v7, 0);
    v15 = v32;
    v32[1](v3, v1);
    v14 = v39;
    v13 = v40;
    v6 = v41;
    v12 = v42;
    v10 = v54;
  }

  *&v50 = v14;
  *(&v50 + 1) = v13;
  v51 = v6;
  v52 = v12;
  sub_1C59D3C58(&v50);
  v17 = *&v11[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode];
  v18 = v37;
  *&v11[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode] = v37;
  sub_1C59D9228(v18);
  sub_1C59D924C(v17);
  sub_1C59D1D00();
  v19 = v33;
  v20 = v36;
  if (v10)
  {
    v39 = v33;
    v40 = v36;
    v21 = v33;
    v22 = v36;
  }

  else
  {
    sub_1C5AE98D8(v33, v36, 0);
    sub_1C5BCB4E4();
    v32 = v7;
    v23 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C599ACD8(v19, v20, 0);
    v7 = v32;
    v15[1](v3, v1);
    v21 = v39;
    v22 = v40;
  }

  v24 = v35;
  v25 = v34;
  v26 = &v11[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs];
  v27 = *&v11[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs];
  *v26 = v21;
  v26[1] = v22;
  v50 = v27;
  sub_1C59D3D94(&v50);
  v39 = v18;
  v40 = v4;
  v41 = v24;
  v42 = v25;
  v43 = v7;
  v44 = v38;
  *v45 = v55[0];
  *&v45[3] = *(v55 + 3);
  v46 = v19;
  v47 = v20;
  v48 = v54;
  v49 = v53;
  v28 = v11;
  sub_1C5B6C9EC();
  if (v29)
  {
    v30 = sub_1C5BCAE44();
  }

  else
  {
    v30 = 0;
  }

  [v28 setAccessibilityValue_];

  return v28;
}

uint64_t sub_1C5B6C9EC()
{
  v1 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *v0;
  if (*v0 == 2)
  {
    return 0;
  }

  if (v3 == 4)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v3 == 3)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_10:
  v5 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  return sub_1C5BCAE94();
}

void sub_1C5B6CC60(_BYTE *a1)
{
  v3 = sub_1C5BC8F34();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v40 = *v1;
  v8 = *(v1 + 24);
  v42 = *(v1 + 16);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v60 = v10;
  v59[0] = *(v1 + 41);
  *(v59 + 3) = *(v1 + 44);
  v11 = *(v1 + 48);
  v58 = *(v1 + 64);
  v57[0] = *(v1 + 65);
  *(v57 + 3) = *(v1 + 68);
  v12 = *(v1 + 72);
  v39 = *(v1 + 80);
  v41 = v11;
  v38 = v4;
  if (v39)
  {
    LOBYTE(v43) = v12 & 1;
    v13 = v12;
  }

  else
  {
    v14 = v4;
    sub_1C5950E48(v12, 0);
    sub_1C5BCB4E4();
    v15 = v3;
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v3 = v15;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v12, 0);
    (*(v14 + 8))(v6, v15);
    v13 = v43;
    v10 = v60;
  }

  v17 = a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout];
  a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout] = v13 & 1;
  LOBYTE(v54) = v17;
  sub_1C59D3F88(&v54);
  if (v10)
  {
    v18 = v42;
    *&v43 = v7;
    *(&v43 + 1) = v42;
    v44 = v8;
    v45 = v9;
    sub_1C5B6D51C(v7, v42, v8, v9, 1);
    v19 = v9;
    v20 = v8;
    v21 = v7;
  }

  else
  {
    v22 = v42;
    sub_1C5B6D51C(v7, v42, v8, v9, 0);
    sub_1C5BCB4E4();
    v23 = v7;
    v24 = v12;
    v25 = v9;
    v26 = v8;
    v27 = v3;
    v28 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v3 = v27;
    v8 = v26;
    v9 = v25;
    v12 = v24;
    v7 = v23;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B6D580(v23, v22, v8, v9, 0);
    (*(v38 + 8))(v6, v3);
    v18 = *(&v43 + 1);
    v21 = v43;
    v20 = v44;
    v19 = v45;
  }

  *&v54 = v21;
  *(&v54 + 1) = v18;
  v55 = v20;
  v56 = v19;
  sub_1C59D3C58(&v54);
  v29 = *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode];
  v30 = v40;
  *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode] = v40;
  sub_1C59D9228(v30);
  sub_1C59D924C(v29);
  sub_1C59D1D00();
  if (v58 == 1)
  {
    v31 = v41;
    v43 = v41;
  }

  else
  {
    v32 = v41;
    v37 = v3;
    v33 = *(&v41 + 1);
    sub_1C5AE98D8(v41, *(&v41 + 1), 0);
    sub_1C5BCB4E4();
    v34 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C599ACD8(v32, v33, 0);
    (*(v38 + 8))(v6, v37);
    v31 = v43;
  }

  v54 = *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs];
  *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs] = v31;
  sub_1C59D3D94(&v54);
  *&v43 = v40;
  *(&v43 + 1) = v7;
  v44 = v42;
  v45 = v8;
  v46 = v9;
  v47 = v60;
  *v48 = v59[0];
  *&v48[3] = *(v59 + 3);
  v49 = v41;
  v50 = v58;
  *v51 = v57[0];
  *&v51[3] = *(v57 + 3);
  v52 = v12;
  v53 = v39;
  sub_1C5B6C9EC();
  if (v35)
  {
    v36 = sub_1C5BCAE44();
  }

  else
  {
    v36 = 0;
  }

  [a1 setAccessibilityValue_];
}

uint64_t sub_1C5B6D1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B6D2A8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5B6D21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5B6D2A8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5B6D280()
{
  sub_1C5B6D2A8();
  sub_1C5BC9264();
  __break(1u);
}

unint64_t sub_1C5B6D2A8()
{
  result = qword_1EDA47BF8[0];
  if (!qword_1EDA47BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA47BF8);
  }

  return result;
}

uint64_t sub_1C5B6D2FC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C592ABD4;

  return sub_1C5B6B98C((v0 + 16));
}

uint64_t sub_1C5B6D3C8()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 48);
  v6 = *(v0 + 56);
  if ((*(v0 + 64) & 1) == 0)
  {
    v7 = *(v0 + 48);
    v8 = v6;

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C599ACD8(v7, v8, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return result;
}

id sub_1C5B6D51C(void *a1, void *a2, void *a3, void *a4, char a5)
{
  if (a5)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;

    return a4;
  }

  else
  {
  }
}

void sub_1C5B6D580(void *a1, void *a2, void *a3, void *a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

unint64_t sub_1C5B6D5E4()
{
  result = qword_1EDA463D0;
  if (!qword_1EDA463D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA463D0);
  }

  return result;
}

unint64_t sub_1C5B6D638()
{
  result = qword_1EC199138;
  if (!qword_1EC199138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199128);
    sub_1C5B6D6F0();
    sub_1C5924F54(qword_1EC1991B8, &qword_1EC199130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199138);
  }

  return result;
}

unint64_t sub_1C5B6D6F0()
{
  result = qword_1EC199140;
  if (!qword_1EC199140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199148);
    sub_1C5B6D77C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199140);
  }

  return result;
}

unint64_t sub_1C5B6D77C()
{
  result = qword_1EC199150;
  if (!qword_1EC199150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199158);
    sub_1C5B6D834(&qword_1EC199160, &qword_1EC199168, &unk_1C5BEFD80, sub_1C5B6D8E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199150);
  }

  return result;
}

uint64_t sub_1C5B6D834(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C5924F54(&qword_1EDA46410, &qword_1EC1991B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C5B6D914()
{
  result = qword_1EC199180;
  if (!qword_1EC199180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199188);
    sub_1C5B6D9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199180);
  }

  return result;
}

unint64_t sub_1C5B6D9A0()
{
  result = qword_1EC199190;
  if (!qword_1EC199190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199198);
    sub_1C5B6DA2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199190);
  }

  return result;
}

unint64_t sub_1C5B6DA2C()
{
  result = qword_1EC1991A0;
  if (!qword_1EC1991A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1991A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1991A0);
  }

  return result;
}

uint64_t sub_1C5B6DB30(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1C5B6DB70(a1);
  return v2;
}

void *sub_1C5B6DB70(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v5 = type metadata accessor for LRUCache.Container();
  swift_getTupleTypeMetadata2();
  v6 = sub_1C5BCB0B4();
  v7 = sub_1C59CBCE4(v6, v3, v5, v4);

  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v1[7] = 0;
  v1[8] = 0;
  v1[5] = v8;
  v1[6] = a1;
  return v1;
}

uint64_t sub_1C5B6DCB0()
{

  sub_1C59261FC(*(v0 + 56));
  return v0;
}

uint64_t sub_1C5B6DCE0()
{
  sub_1C5B6DCB0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B6DD2C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_1C5B6DE0C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v2 + *(*v2 + 120)) = 0;
  *(v2 + *(*v2 + 128)) = 0;
  (*(*(*(v4 + 80) - 8) + 32))(v2 + *(*v2 + 104), a1);
  (*(*(*(v4 + 88) - 8) + 32))(v2 + *(*v2 + 112), a2);
  return v2;
}

uint64_t *sub_1C5B6DF1C()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

uint64_t sub_1C5B6DFE8()
{
  sub_1C5B6DF1C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B6E054(void *a1)
{
  v3 = v1[10];
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[11];
  v6 = v1[12];
  v45 = v3;
  v46 = v5;
  v34 = v7;
  v35 = v5;
  v31 = v8;
  v32 = v9;
  v47 = v8;
  v48 = v9;
  v39 = v6;
  v49 = v6;
  v50 = v10;
  v33 = v10;
  v51 = v7;
  _s10CodingKeysOMa_0();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1C5BCBCF4();
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v15 = v37;
  sub_1C5BCBFA4();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return WitnessTable;
  }

  v37 = a1;
  LOBYTE(v45) = 1;
  v16 = v12;
  v18 = sub_1C5BCBCD4();
  WitnessTable = swift_allocObject();
  sub_1C5B6DB70(v18);
  v19 = v3;
  type metadata accessor for LRUCache.Container();
  sub_1C5BCB144();
  LOBYTE(v40) = 0;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = v34;
  v52 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BCBCE4();
  v32 = v14;
  v33 = 0;
  v34 = v16;
  v20 = v45;
  v21 = sub_1C5BCB0F4();
  v22 = v37;
  if (!v21)
  {
LABEL_17:

    (*(v36 + 8))(v32, v34);
    __swift_destroy_boxed_opaque_existential_0(v22);
    return WitnessTable;
  }

  v35 = (v30 + 16);
  v23 = 4;
  while (1)
  {
    v25 = sub_1C5BCB0D4();
    sub_1C5BCB084();
    if (v25)
    {
      v26 = *(v20 + 8 * v23);
    }

    else
    {
      result = sub_1C5BCBAD4();
      v26 = result;
    }

    v27 = v23 - 3;
    if (__OFADD__(v23 - 4, 1))
    {
      break;
    }

    (*v35)(v38, v26 + *(*v26 + 104), v19);
    v40 = v26;
    swift_beginAccess();
    sub_1C5BCACD4();
    swift_retain_n();
    sub_1C5BCACF4();
    swift_endAccess();
    if ()
    {
    }

    else
    {
      *(WitnessTable + 24) = v26;
    }

    *(v26 + *(*v26 + 120)) = *(WitnessTable + 32);
    v28 = *(WitnessTable + 32);

    if (v28)
    {
      *(v28 + *(*v28 + 128)) = v26;
    }

    *(WitnessTable + 32) = v26;

    v24 = sub_1C5BCB0F4();
    ++v23;
    v22 = v37;
    if (v27 == v24)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5B6E588(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v6;
  v22 = *(*v6 + 80);
  v9 = *(v8 + 88);
  v10 = *(v8 + 96);
  v37 = v22;
  v38 = v9;
  v23 = a2;
  v24 = a3;
  v39 = a2;
  v40 = a3;
  v41 = v10;
  v42 = a4;
  v25 = a4;
  v26 = a5;
  v43 = a5;
  _s10CodingKeysOMa_0();
  swift_getWitnessTable();
  v11 = sub_1C5BCBD34();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v27 = v13;
  sub_1C5BCBFB4();
  type metadata accessor for LRUCache.Container();
  v14 = sub_1C5BCAC94();
  v37 = v14;
  v15 = v6[3];

  if (v15)
  {
    sub_1C5BCB144();
    do
    {
      v44 = v15;

      sub_1C5BCB104();
      v16 = *(v15 + *(*v15 + 128));

      v15 = v16;
    }

    while (v16);
    v14 = v37;
  }

  v17 = v30;
  v18 = v27;
  v44 = v14;
  v36 = 0;
  sub_1C5BCB144();
  v32 = v23;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v19 = v28;
  sub_1C5BCBD24();

  if (!v19)
  {
    LOBYTE(v44) = 1;
    sub_1C5BCBD14();
  }

  return (*(v29 + 8))(v18, v17);
}

uint64_t sub_1C5B6E898(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001C5BFCB30 == a2 || (sub_1C5BCBDE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C73656972746E65 && a2 == 0xEC00000074696D69)
  {

    return 1;
  }

  else
  {
    v5 = sub_1C5BCBDE4();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C5B6E9AC(char a1)
{
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](a1 & 1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5B6E9F4(char a1)
{
  if (a1)
  {
    return 0x4C73656972746E65;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1C5B6EA90()
{
  sub_1C5BCBF54();
  sub_1C5B6E984(v2, *v0);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5B6EAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C5B6E898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C5B6EB2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C5B6EB80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void *sub_1C5B6EC2C(void *a1)
{
  v2 = v1;
  v4 = v1[11];
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v31 - v7;
  v8 = v1[10];
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v31 - v12;
  v13 = v1[12];
  v42 = v8;
  v43 = v4;
  v40 = v14;
  v44 = v14;
  v45 = v15;
  v46 = v13;
  v47 = v16;
  v35 = v16;
  v48 = v17;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v41 = sub_1C5BCBCF4();
  v37 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v19 = &v31 - v18;
  v20 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v21 = v49;
  v22 = a1;
  sub_1C5BCBFA4();
  if (!v21)
  {
    v23 = v39;
    v49 = v2;
    v24 = v4;
    LOBYTE(v42) = 0;
    v25 = v37;
    v26 = v38;
    sub_1C5BCBCE4();
    v40 = v8;
    LOBYTE(v42) = 1;
    v27 = v24;
    sub_1C5BCBCE4();
    (*(v25 + 8))(v19, v41);
    v29 = v32;
    (*(v36 + 32))(v32, v26, v40);
    v30 = v34;
    (*(v33 + 32))(v34, v23, v27);
    swift_allocObject();
    v20 = sub_1C5B6DE0C(v29, v30);
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v20;
}

uint64_t sub_1C5B6F000(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v27 = *(*(*v4 + 88) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v26[0] = v26 - v6;
  v30 = *(v7 + 80);
  v8 = *(v7 + 96);
  v32 = v30;
  v33 = v9;
  v28 = v9;
  v34 = v10;
  v35 = v11;
  v36 = v8;
  v37 = v12;
  v26[1] = v13;
  v38 = v13;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v14 = sub_1C5BCBD34();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v26 - v16;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C5BCBFB4();
  LOBYTE(v32) = 0;
  v18 = v31;
  sub_1C5BCBD24();
  if (v18)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v20 = v15;
  v21 = *(*v4 + 112);
  swift_beginAccess();
  v22 = v27;
  v23 = v4 + v21;
  v24 = v26[0];
  v25 = v28;
  (*(v27 + 16))(v26[0], v23, v28);
  v39 = 1;
  sub_1C5BCBD24();
  (*(v22 + 8))(v24, v25);
  return (*(v20 + 8))(v17, v14);
}

uint64_t sub_1C5B6F308(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C5BCBDE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1C5BCBDE4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C5B6F3D0(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1C5B6F498()
{
  sub_1C5BCBF54();
  sub_1C5B6E984(v2, *v0);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5B6F50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C5B6F308(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C5B6F554@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);
  *a3 = result;
  return result;
}

uint64_t sub_1C5B6F598(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C5B6F5EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C5B6F66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t, void, void, void, void)@<X3>, uint64_t *a4@<X8>)
{
  result = a3(a1, *(a2 - 8), *(a2 - 16), *(a2 - 24), *(a2 - 32));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t static PublishedOnChange.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v8 = a1;
  swift_unknownObjectRetain();
  v5 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x1E69E6F98] + 8) - 8) + 16))(a3);
  v5(v7, 0);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5B6F8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - v6;
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  (*(v12 + 16))(&v14 - v6, v5);
  swift_unknownObjectRetain();

  return static PublishedOnChange.subscript.setter(v7, v9, v10, v11, v4);
}

uint64_t static PublishedOnChange.subscript.setter(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a3;
  v8 = MEMORY[0x1E69E6F98];
  v9 = *(*a3 + *MEMORY[0x1E69E6F98]);
  v25 = a5;
  v23 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v26[0] = a2;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  v13 = *(v7 + *v8 + 8);
  v14 = a1;
  LOBYTE(v7) = sub_1C5BCADB4();
  v15 = *(v13 - 8);
  v16 = v12;
  v17 = *(v15 + 8);
  v17(v16, v13);
  if (v7)
  {
    v17(v14, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = v17;
    sub_1C5BC7F14();
    sub_1C5BC7FB4();
    if (swift_dynamicCast())
    {
      sub_1C5BC7FA4();
    }

    v26[4] = a2;
    swift_unknownObjectRetain();
    v19 = swift_modifyAtReferenceWritableKeyPath();
    (*(v15 + 24))(v20, v14, v13);
    v19(v26, 0);
    swift_unknownObjectRelease();

    v22(v14, v13);
    return swift_unknownObjectRelease();
  }
}

void (*static PublishedOnChange.subscript.modify(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v10 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x40uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[2] = a4;
  v11[3] = a5;
  *v11 = a2;
  v11[1] = a3;
  v13 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v11[4] = v13;
  v14 = *(v13 - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v10)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v12[7] = v16;
  static PublishedOnChange.subscript.getter(a2, a3, v16);
  return sub_1C5B6FE24;
}

void sub_1C5B6FE24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v7 = v2[3];
    v10 = *v2;
    v9 = v2[1];
    (*(v6 + 16))((*a1)[6], v4, v5);

    swift_unknownObjectRetain();
    static PublishedOnChange.subscript.setter(v3, v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v12 = v2[2];
    v11 = v2[3];
    v14 = *v2;
    v13 = v2[1];

    swift_unknownObjectRetain();
    static PublishedOnChange.subscript.setter(v4, v14, v13, v12, v11);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1C5B70064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = _s17DownloadContainerVMa();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1C5924EF4(a1, &qword_1EC1930B0);
    v13 = sub_1C5AB6FAC(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1C5AF4DD4();
        v17 = v21;
      }

      sub_1C5B723DC(*(v17 + 56) + *(v10 + 72) * v15, v8, _s17DownloadContainerVMa);
      sub_1C5AF39EC(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1C5924EF4(v8, &qword_1EC1930B0);
  }

  else
  {
    sub_1C5B723DC(a1, v12, _s17DownloadContainerVMa);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1C5B3C03C(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1C5B702B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1993D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1C5924EF4(a1, &qword_1EC1993D8);
    sub_1C5BB7DF8(a2, a3, v9);

    return sub_1C5924EF4(v9, &qword_1EC1993D8);
  }

  else
  {
    sub_1C5B723DC(a1, v12, type metadata accessor for MotionAssetDownload.AssetKey);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1C5B3C604(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1C5B7048C(uint64_t a1, char a2, _OWORD *a3)
{
  *(v4 + 456) = a2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v3;
  v6 = type metadata accessor for MotionAssetDownload.Request(0);
  *(v4 + 288) = v6;
  v7 = *(v6 - 8);
  *(v4 + 296) = v7;
  *(v4 + 304) = *(v7 + 64);
  *(v4 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  *(v4 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1993D8);
  *(v4 + 328) = swift_task_alloc();
  v8 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  *(v4 + 336) = v8;
  *(v4 + 344) = *(v8 - 8);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = *a3;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC19A688;
  *(v4 + 384) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5B70674, v9, 0);
}

uint64_t sub_1C5B70674()
{
  v70 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  swift_beginAccess();
  v3 = *(v2 + 56);
  v4 = *v1;
  *(v0 + 392) = *v1;
  v5 = v1[1];
  *(v0 + 400) = v5;

  v6 = sub_1C5B52B38(v4, v5, v3);

  if (v6)
  {
    if (qword_1EC190900 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = sub_1C5BC7D64();
    __swift_project_value_buffer(v9, qword_1EC1993C0);
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0x696C6C65636E6143, 0xEB0000000020676ELL);
    MEMORY[0x1C694F170](v4, v5);
    MEMORY[0x1C694F170](2112093, 0xE300000000000000);
    v10 = sub_1C59CFA88();
    MEMORY[0x1C694F170](v10);

    MEMORY[0x1C694F170](91, 0xE100000000000000);

    MEMORY[0x1C694F170](0xD00000000000002BLL, 0x80000001C5BFCD20);
    v11 = sub_1C5BCB4F4();
    v68 = v8;
    v69 = v7;
    sub_1C5ACCC10(v11, 0, 0xE000000000000000, &v68);

    swift_beginAccess();
    sub_1C5B0F8CC(v4, v5);
    swift_endAccess();

    v12 = 0;
LABEL_10:

    v25 = *(v0 + 8);

    return v25(v12);
  }

  v13 = *(v0 + 280);
  swift_beginAccess();
  v14 = *(v13 + 48);
  if (*(v14 + 16))
  {
    v15 = sub_1C596FBD8(v4, v5);
    if (v16)
    {
      v18 = *(v0 + 352);
      v17 = *(v0 + 360);
      sub_1C5B721D4(*(v14 + 56) + *(*(v0 + 344) + 72) * v15, v18, type metadata accessor for MotionAssetDownload.AssetKey);
      sub_1C5B723DC(v18, v17, type metadata accessor for MotionAssetDownload.AssetKey);
      swift_endAccess();
      if (qword_1EC190900 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 368);
      v19 = *(v0 + 376);
      v21 = *(v0 + 360);
      v22 = sub_1C5BC7D64();
      __swift_project_value_buffer(v22, qword_1EC1993C0);
      sub_1C5BCBA94();

      MEMORY[0x1C694F170](v4, v5);
      MEMORY[0x1C694F170](8250, 0xE200000000000000);
      v23 = sub_1C59CFA88();
      MEMORY[0x1C694F170](v23);

      v24 = sub_1C5BCB4D4();
      v68 = v20;
      v69 = v19;
      sub_1C5ACCC10(v24, 0xD000000000000020, 0x80000001C5BFCCF0, &v68);

      sub_1C5AF73B0(v21);
      v12 = 1;
      goto LABEL_10;
    }
  }

  v27 = *(v0 + 336);
  v28 = *(v0 + 344);
  v29 = *(v0 + 328);
  v30 = *(v0 + 280);
  v31 = *(v0 + 288);
  v32 = *(v0 + 272);
  swift_endAccess();
  v33 = *(v31 + 20);
  sub_1C5B721D4(v32 + v33, v29, type metadata accessor for MotionAssetDownload.AssetKey);
  (*(v28 + 56))(v29, 0, 1, v27);
  swift_beginAccess();

  sub_1C5B702B8(v29, v4, v5);
  swift_endAccess();
  swift_beginAccess();
  v34 = *(v30 + 40);
  if (*(v34 + 16) && (v35 = sub_1C5AB6FF0(v32 + v33), (v36 & 1) != 0))
  {
    *(v0 + 408) = *(*(v34 + 56) + 8 * v35);
    swift_endAccess();
    v37 = qword_1EC190900;

    if (v37 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 368);
    v38 = *(v0 + 376);
    v40 = sub_1C5BC7D64();
    __swift_project_value_buffer(v40, qword_1EC1993C0);
    sub_1C5BCBA94();

    MEMORY[0x1C694F170](v4, v5);
    MEMORY[0x1C694F170](2112093, 0xE300000000000000);
    v41 = sub_1C59CFA88();
    MEMORY[0x1C694F170](v41);

    MEMORY[0x1C694F170](91, 0xE100000000000000);

    v42 = sub_1C5BCB4F4();
    v68 = v39;
    v69 = v38;
    sub_1C5ACCC10(v42, 0xD00000000000001ALL, 0x80000001C5BFCCD0, &v68);

    swift_beginAccess();

    sub_1C5B0CBD8(&v68, v4, v5);
    swift_endAccess();

    v43 = sub_1C5B71044;
  }

  else
  {
    v67 = v30;
    v44 = v33;
    swift_endAccess();
    if (qword_1EC190900 != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 376);
    v46 = *(v0 + 368);
    v58 = v45;
    v63 = *(v0 + 304);
    v61 = *(v0 + 312);
    v62 = *(v0 + 296);
    v66 = *(v0 + 456);
    v64 = *(v0 + 280);
    v65 = *(v0 + 384);
    v59 = *(v0 + 320);
    v60 = *(v0 + 272);
    v47 = sub_1C5BC7D64();
    __swift_project_value_buffer(v47, qword_1EC1993C0);
    sub_1C5BCBA94();

    MEMORY[0x1C694F170](v4, v5);
    MEMORY[0x1C694F170](2112093, 0xE300000000000000);
    v48 = sub_1C59CFA88();
    MEMORY[0x1C694F170](v48);

    MEMORY[0x1C694F170](91, 0xE100000000000000);

    v49 = sub_1C5BCB4F4();
    v68 = v46;
    v69 = v45;
    sub_1C5ACCC10(v49, 0xD00000000000001ALL, 0x80000001C5BFCCB0, &v68);

    v50 = sub_1C5BCB214();
    (*(*(v50 - 8) + 56))(v59, 1, 1, v50);
    sub_1C5B721D4(v60, v61, type metadata accessor for MotionAssetDownload.Request);
    v51 = sub_1C5B7223C();
    v52 = (*(v62 + 80) + 40) & ~*(v62 + 80);
    v53 = swift_allocObject();
    v53[2] = v65;
    v53[3] = v51;
    v53[4] = v64;
    sub_1C5B723DC(v61, v53 + v52, type metadata accessor for MotionAssetDownload.Request);
    *(v53 + v52 + v63) = v66;
    v54 = v53 + ((v52 + v63) & 0xFFFFFFFFFFFFFFF8);
    *(v54 + 1) = v46;
    *(v54 + 2) = v58;

    v55 = sub_1C5AD15AC(0, 0, v59, &unk_1C5BF02C0, v53);
    _s7ManagerC12DownloadTaskCMa();
    v56 = swift_allocObject();
    *(v0 + 432) = v56;
    *(v56 + 24) = MEMORY[0x1E69E7CD0];
    *(v56 + 16) = v55;
    swift_beginAccess();

    sub_1C5B0CBD8(&v68, v4, v5);
    swift_endAccess();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v67 + 40);
    *(v67 + 40) = 0x8000000000000000;
    sub_1C5B3C460(v56, v32 + v44, isUniquelyReferenced_nonNull_native);
    *(v67 + 40) = v68;
    swift_endAccess();
    v43 = sub_1C5B7130C;
  }

  return MEMORY[0x1EEE6DFA0](v43, 0, 0);
}

uint64_t sub_1C5B71044()
{
  v1 = *(*(v0 + 408) + 16);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_1C5B710F0;

  return MEMORY[0x1EEE6DA40](v0 + 264, v1, &type metadata for MotionCache.FetchResult);
}

uint64_t sub_1C5B710F0()
{

  return MEMORY[0x1EEE6DFA0](sub_1C5B711EC, 0, 0);
}

uint64_t sub_1C5B711EC()
{
  v1 = v0[48];
  v0[53] = v0[33];
  return MEMORY[0x1EEE6DFA0](sub_1C5B71210, v1, 0);
}

uint64_t sub_1C5B71210()
{
  v1 = v0[50];
  v2 = v0[49];
  v3 = v0[41];

  swift_beginAccess();
  sub_1C5BB7DF8(v2, v1, v3);
  swift_endAccess();
  sub_1C5924EF4(v3, &qword_1EC1993D8);
  v4 = v0[53];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1C5B7130C()
{
  v1 = *(*(v0 + 432) + 16);
  v2 = swift_task_alloc();
  *(v0 + 440) = v2;
  *v2 = v0;
  v2[1] = sub_1C5B713B8;

  return MEMORY[0x1EEE6DA40](v0 + 256, v1, &type metadata for MotionCache.FetchResult);
}

uint64_t sub_1C5B713B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1C5B714B4, 0, 0);
}

uint64_t sub_1C5B714B4()
{
  v1 = v0[48];
  v0[56] = v0[32];
  return MEMORY[0x1EEE6DFA0](sub_1C5B714D8, v1, 0);
}

uint64_t sub_1C5B714D8()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[41];
  sub_1C5B71908(v0[35], v0[34], v0[54]);

  swift_beginAccess();
  sub_1C5BB7DF8(v2, v1, v3);
  swift_endAccess();
  sub_1C5924EF4(v3, &qword_1EC1993D8);
  v4 = v0[56];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1C5B715E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 120) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 56) = a1;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC19A688;
  *(v8 + 96) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5B7168C, v9, 0);
}

uint64_t sub_1C5B7168C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(type metadata accessor for MotionAssetDownload.Request(0) + 20);
    v4 = *(type metadata accessor for MotionAssetDownload.AssetKey(0) + 20);
    swift_beginAccess();
    if (*(v2 + 48))
    {
      v5 = *(v0 + 72) + v3;

      sub_1C5B81170(v5 + v4, 5);
    }

    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v9 = *(type metadata accessor for MotionAssetDownload.Request(0) + 20);
  *(v0 + 40) = v7;
  *(v0 + 48) = v6;
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *v10 = v0;
  v10[1] = sub_1C5B717D0;
  v11 = *(v0 + 120);

  return sub_1C59F4F88(v8 + v9, v11, (v0 + 40));
}

uint64_t sub_1C5B717D0(uint64_t a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C5B718E8, v2, 0);
}

uint64_t sub_1C5B71908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  if (!*(v6 + 16))
  {
    return swift_endAccess();
  }

  v7 = *(type metadata accessor for MotionAssetDownload.Request(0) + 20);
  v8 = sub_1C5AB6FF0(a2 + v7);
  if ((v9 & 1) == 0)
  {
    return swift_endAccess();
  }

  v10 = *(*(v6 + 56) + 8 * v8);
  result = swift_endAccess();
  if (v10 == a3)
  {
    swift_beginAccess();
    sub_1C5B804C0(a2 + v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1C5B719D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - v13;
  v16 = *a3;
  v15 = a3[1];
  swift_beginAccess();
  v17 = *(v4 + 48);
  if (*(v17 + 16))
  {
    v18 = sub_1C596FBD8(a1, a2);
    if (v19)
    {
      sub_1C5B721D4(*(v17 + 56) + *(v9 + 72) * v18, v14, type metadata accessor for MotionAssetDownload.AssetKey);
      swift_endAccess();
      swift_beginAccess();
      v20 = *(v4 + 40);
      if (*(v20 + 16) && (v21 = sub_1C5AB6FF0(v14), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        swift_endAccess();
        swift_beginAccess();

        sub_1C5B0F8CC(a1, a2);
        v25 = v24;
        swift_endAccess();
        if (!v25)
        {
          if (qword_1EC190900 != -1)
          {
            swift_once();
          }

          v36 = sub_1C5BC7D64();
          __swift_project_value_buffer(v36, qword_1EC1993C0);
          sub_1C5B721D4(v14, v12, type metadata accessor for MotionAssetDownload.AssetKey);

          v37 = sub_1C5BC7D44();
          v38 = sub_1C5BCB4F4();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v51 = v40;
            *v39 = 136315394;
            *(v39 + 4) = sub_1C592ADA8(a1, a2, &v51);
            *(v39 + 12) = 2080;
            v41 = sub_1C59CFA88();
            v43 = v42;
            sub_1C5AF73B0(v12);
            v44 = sub_1C592ADA8(v41, v43, &v51);

            *(v39 + 14) = v44;
            _os_log_impl(&dword_1C5922000, v37, v38, "Cancelling %s, however request is not currently registered for task. Key: %s", v39, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1C69510F0](v40, -1, -1);
            MEMORY[0x1C69510F0](v39, -1, -1);
          }

          else
          {

            sub_1C5AF73B0(v12);
          }

          return sub_1C5AF73B0(v14);
        }

        if (!*(*(v23 + 24) + 16))
        {
          sub_1C5BCB2A4();
        }

        if (swift_task_isCancelled())
        {
          swift_beginAccess();
          sub_1C5B804C0(v14);
          swift_endAccess();

          return sub_1C5AF73B0(v14);
        }

        if (qword_1EC190900 != -1)
        {
          swift_once();
        }

        v45 = sub_1C5BC7D64();
        __swift_project_value_buffer(v45, qword_1EC1993C0);
        v51 = 0;
        v52 = 0xE000000000000000;
        sub_1C5BCBA94();
        MEMORY[0x1C694F170](0x696C6C65636E6143, 0xEB0000000020676ELL);
        MEMORY[0x1C694F170](a1, a2);
        MEMORY[0x1C694F170](0xD00000000000003FLL, 0x80000001C5BFCDE0);
        v46 = v51;
        v47 = v52;
        v48 = sub_1C5BCB4F4();
        v51 = v16;
        v52 = v15;
        sub_1C5ACCC10(v48, v46, v47, &v51);
      }

      else
      {
        swift_endAccess();
        if (qword_1EC190900 != -1)
        {
          swift_once();
        }

        v31 = sub_1C5BC7D64();
        __swift_project_value_buffer(v31, qword_1EC1993C0);
        v51 = 0;
        v52 = 0xE000000000000000;
        sub_1C5BCBA94();
        MEMORY[0x1C694F170](0xD00000000000001BLL, 0x80000001C5BFCD90);
        MEMORY[0x1C694F170](a1, a2);
        MEMORY[0x1C694F170](0xD000000000000026, 0x80000001C5BFCDB0);
        v32 = sub_1C59CFA88();
        MEMORY[0x1C694F170](v32);

        v33 = v51;
        v34 = v52;
        v35 = sub_1C5BCB4D4();
        v51 = v16;
        v52 = v15;
        sub_1C5ACCC10(v35, v33, v34, &v51);
      }

      return sub_1C5AF73B0(v14);
    }
  }

  swift_endAccess();
  if (qword_1EC190900 != -1)
  {
    swift_once();
  }

  v26 = sub_1C5BC7D64();
  __swift_project_value_buffer(v26, qword_1EC1993C0);
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1C5BCBA94();

  v51 = 0x20676E696B72614DLL;
  v52 = 0xE800000000000000;
  MEMORY[0x1C694F170](a1, a2);
  MEMORY[0x1C694F170](0xD00000000000001FLL, 0x80000001C5BFCD70);
  v27 = v51;
  v28 = v52;
  v29 = sub_1C5BCB4F4();
  v51 = v16;
  v52 = v15;
  sub_1C5ACCC10(v29, v27, v28, &v51);

  swift_beginAccess();

  sub_1C5B0CBD8(&v50, a1, a2);
  swift_endAccess();
}

uint64_t sub_1C5B720B4()
{
  sub_1C5AC8D5C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5B72154()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1993C0);
  __swift_project_value_buffer(v0, qword_1EC1993C0);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5B721D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C5B7223C()
{
  result = qword_1EC1930A8;
  if (!qword_1EC1930A8)
  {
    type metadata accessor for MotionCacheActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1930A8);
  }

  return result;
}

uint64_t sub_1C5B72294(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MotionAssetDownload.Request(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = v1[4];
  v12 = v1 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v13 = *(v12 + 1);
  v14 = *(v12 + 2);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1C592ABD4;

  return sub_1C5B715E4(a1, v8, v9, v11, v1 + v6, v10, v13, v14);
}

uint64_t sub_1C5B723DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5B72444()
{
  result = sub_1C5BCAB14();
  qword_1EC1A6DA8 = result;
  return result;
}

uint64_t sub_1C5B72464()
{
  result = _UISolariumEnabled();
  v1 = 32.0;
  if (!result)
  {
    v1 = 28.0;
  }

  qword_1EC1A6DB0 = *&v1;
  return result;
}

uint64_t sub_1C5B72498()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1C5BC9A64();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E6980EF0], v3, v5);
  v8 = sub_1C5BC9954();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_1C5BC9994();
  v9 = sub_1C5BC99B4();
  sub_1C5924EF4(v2, &qword_1EC190F90);
  result = (*(v4 + 8))(v7, v3);
  qword_1EC1993E0 = v9;
  return result;
}

__n128 LibraryButton.init(_:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t LibraryButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v28 = sub_1C5BC96A4();
  v27 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1993E8);
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1993F0);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1993F8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v29 = &v26 - v12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199400);
  MEMORY[0x1EEE9AC00](v30);
  v14 = &v26 - v13;
  v34 = v2;
  type metadata accessor for LibraryButtonLabel();
  sub_1C5B72E98(&qword_1EC199408, type metadata accessor for LibraryButtonLabel);

  v15 = v26;
  sub_1C5BCA6E4();
  sub_1C5BC9684();
  v16 = sub_1C5924F54(&qword_1EC199410, &qword_1EC1993E8);
  sub_1C5BCA0C4();
  (*(v27 + 8))(v4, v28);
  (*(v5 + 8))(v7, v15);
  sub_1C5B72C58(v2, v38);
  sub_1C5931F84(v38, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199418);
  if ((swift_dynamicCast() & 1) != 0 && (v17 = v36) != 0)
  {
    v18 = v35;
  }

  else
  {
    sub_1C5B72C58(v2, v38);
    sub_1C5931F84(v38, v37);
    __swift_project_boxed_opaque_existential_0(v37, v37[3]);
    DynamicType = swift_getDynamicType();
    v20 = v37[4];
    __swift_destroy_boxed_opaque_existential_0(v37);
    v18 = (*(v20 + 16))(DynamicType, v20);
    v17 = v21;
  }

  *&v38[0] = v18;
  *(&v38[0] + 1) = v17;
  v37[0] = v15;
  v37[1] = v16;
  swift_getOpaqueTypeConformance2();
  sub_1C594A23C();
  v22 = v29;
  v23 = v32;
  sub_1C5BCA034();

  (*(v31 + 8))(v10, v23);
  v24 = sub_1C5BCA434();
  sub_1C59E7D34(v22, v14, &qword_1EC1993F8);
  *&v14[*(v30 + 36)] = v24;
  *&v38[0] = swift_getKeyPath();
  BYTE8(v38[0]) = 0;
  sub_1C5B72CB4();
  sub_1C5B72EE0();
  sub_1C5BCA0E4();
  sub_1C5942458(*&v38[0], SBYTE8(v38[0]));
  return sub_1C5996DB4(v14);
}

uint64_t sub_1C5B72BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C5B72C58(a1, v5);
  sub_1C5931F84(v5, v4);
  return sub_1C5B72F50(v4, a2);
}

uint64_t type metadata accessor for LibraryButtonLabel()
{
  result = qword_1EC199438;
  if (!qword_1EC199438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C5B72CB4()
{
  result = qword_1EC199420;
  if (!qword_1EC199420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199400);
    sub_1C5B72D6C();
    sub_1C5924F54(&qword_1EC1932B8, &qword_1EC1932C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199420);
  }

  return result;
}

unint64_t sub_1C5B72D6C()
{
  result = qword_1EC199428;
  if (!qword_1EC199428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1993F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1993E8);
    sub_1C5924F54(&qword_1EC199410, &qword_1EC1993E8);
    swift_getOpaqueTypeConformance2();
    sub_1C5B72E98(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199428);
  }

  return result;
}

uint64_t sub_1C5B72E98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C5B72EE0()
{
  result = qword_1EC199430;
  if (!qword_1EC199430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC199430);
  }

  return result;
}

uint64_t sub_1C5B72F50@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C5931F84(a1, a2);
  type metadata accessor for LibraryButtonLabel();
  if (qword_1EC190910 != -1)
  {
    swift_once();
  }

  sub_1C5A3B53C();
  sub_1C5BC84C4();
  sub_1C5BC84C4();
  sub_1C5BC84C4();
  sub_1C5BC84C4();
  return sub_1C5BC84C4();
}

void sub_1C5B730BC()
{
  sub_1C5B7314C();
  if (v0 <= 0x3F)
  {
    sub_1C5A3B4E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C5B7314C()
{
  result = qword_1EC199448;
  if (!qword_1EC199448)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC199448);
  }

  return result;
}

uint64_t sub_1C5B731CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_1C5BC96A4();
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199458);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v70 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199460);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199468);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199470);
  MEMORY[0x1EEE9AC00](v71);
  v84 = &v70 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199478);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v70 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199480);
  MEMORY[0x1EEE9AC00](v85);
  v74 = &v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199488);
  v77 = *(v17 - 8);
  v78 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v70 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199490);
  MEMORY[0x1EEE9AC00](v75);
  v79 = &v70 - v19;
  *v7 = sub_1C5BC8FC4();
  *(v7 + 1) = 0x4010000000000000;
  v7[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199498);
  sub_1C5B73C5C(a1, &v7[*(v20 + 44)]);
  v21 = sub_1C5BC98C4();
  sub_1C59318C8(a1, v98);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199418);
  if ((swift_dynamicCast() & 1) != 0 && *(&v92 + 1))
  {

    type metadata accessor for LibraryButtonLabel();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
    sub_1C5BC84D4();
  }

  sub_1C5BC8174();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1C59E7D34(v7, v10, &qword_1EC199458);
  v31 = &v10[*(v8 + 36)];
  *v31 = v21;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_1C5BC98E4();
  sub_1C59318C8(a1, v98);
  v33 = swift_dynamicCast();
  v70 = v22;
  if ((v33 & 1) != 0 && *(&v92 + 1))
  {

    type metadata accessor for LibraryButtonLabel();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
    sub_1C5BC84D4();
  }

  sub_1C5BC8174();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1C59E7D34(v10, v13, &qword_1EC199460);
  v42 = &v13[*(v11 + 36)];
  *v42 = v32;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  if (qword_1EC190910 != -1)
  {
    swift_once();
  }

  type metadata accessor for LibraryButtonLabel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
  sub_1C5BC84D4();
  sub_1C5BC84D4();
  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  v43 = v84;
  sub_1C59E7D34(v13, v84, &qword_1EC199468);
  v44 = (v43 + *(v71 + 36));
  v45 = v98[5];
  v44[4] = v98[4];
  v44[5] = v45;
  v44[6] = v98[6];
  v46 = v98[1];
  *v44 = v98[0];
  v44[1] = v46;
  v47 = v98[3];
  v44[2] = v98[2];
  v44[3] = v47;
  sub_1C59318C8(a1, &v92);
  if ((swift_dynamicCast() & 1) != 0 && *(&v87 + 1))
  {
  }

  else
  {
    sub_1C5BC84D4();
  }

  sub_1C5BC84D4();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v48 = v73;
  sub_1C59E7D34(v84, v73, &qword_1EC199470);
  v49 = (v48 + *(v72 + 36));
  v50 = v98[8];
  *v49 = v98[7];
  v49[1] = v50;
  v49[2] = v98[9];
  v51 = sub_1C5BCAA54();
  v53 = v52;
  sub_1C5B743A0(a1, &v92);
  v54 = *(&v92 + 1);
  v72 = v92;
  v55 = v93;
  v56 = v94;
  v84 = a1;
  v57 = v95;
  v87 = v92;
  v88 = v93;
  v89 = v94;
  *&v90 = v95;
  *(&v90 + 1) = v51;
  v91 = v53;
  v58 = v48;
  v59 = v74;
  sub_1C59E7D34(v58, v74, &qword_1EC199478);
  v60 = v59 + *(v85 + 36);
  v61 = v90;
  *(v60 + 32) = v89;
  *(v60 + 48) = v61;
  *(v60 + 64) = v91;
  v62 = v88;
  *v60 = v87;
  *(v60 + 16) = v62;
  *&v92 = v72;
  *(&v92 + 1) = v54;
  v93 = v55;
  v94 = v56;
  v95 = v57;
  v96 = v51;
  v97 = v53;
  sub_1C59400B0(&v87, v86, &qword_1EC1994A0);
  sub_1C5924EF4(&v92, &qword_1EC1994A0);
  v63 = v80;
  sub_1C5BC9684();
  sub_1C5B74698();
  v64 = v76;
  sub_1C5BCA0C4();
  (*(v81 + 8))(v63, v82);
  sub_1C5924EF4(v59, &qword_1EC199480);
  sub_1C59318C8(v84, v86);
  __swift_project_boxed_opaque_existential_0(v86, v86[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0(v86);
  v66 = v79;
  (*(v77 + 32))(v79, v64, v78);
  *(v66 + *(v75 + 52)) = DynamicType;
  sub_1C5BC8634();
  sub_1C5BCAA84();
  sub_1C5BCAAB4();

  sub_1C5BC8664();

  sub_1C5BC8634();
  sub_1C5BCAA84();
  sub_1C5BCAAB4();

  sub_1C5BC8664();

  v67 = sub_1C5BC85F4();

  v68 = v83;
  sub_1C59E7D34(v66, v83, &qword_1EC199490);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1994E0);
  *(v68 + *(result + 36)) = v67;
  return result;
}

uint64_t sub_1C5B73C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1994E8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v36 - v9);
  sub_1C59318C8(a1, v40);
  __swift_project_boxed_opaque_existential_0(v40, v40[3]);
  DynamicType = swift_getDynamicType();
  v12 = v40[4];
  __swift_destroy_boxed_opaque_existential_0(v40);
  (*(v12 + 8))(DynamicType, v12);
  v13 = sub_1C5BCA5A4();
  v14 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1994F0) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C78) + 28);
  v16 = *MEMORY[0x1E69816E0];
  v17 = sub_1C5BCA5D4();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  *v10 = v13;
  v18 = sub_1C5B74008();
  KeyPath = swift_getKeyPath();
  v20 = (v10 + *(v5 + 44));
  *v20 = KeyPath;
  v20[1] = v18;
  sub_1C59318C8(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199418);
  if ((swift_dynamicCast() & 1) != 0 && v39)
  {
    v37 = a2;
    v40[0] = v38;
    v40[1] = v39;
    sub_1C594A23C();
    v21 = sub_1C5BC9CA4();
    v23 = v22;
    v25 = v24;
    if (qword_1EC190918 != -1)
    {
      swift_once();
    }

    v26 = sub_1C5BC9C14();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_1C5953BD8(v21, v23, v25 & 1);

    v33 = v30 & 1;
    sub_1C59AEE34(v26, v28, v30 & 1);

    a2 = v37;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v33 = 0;
    v32 = 0;
  }

  sub_1C59400B0(v10, v7, &qword_1EC1994E8);
  sub_1C59400B0(v7, a2, &qword_1EC1994E8);
  v34 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1994F8) + 48));
  sub_1C596F94C(v26, v28, v33, v32);
  sub_1C596F908(v26, v28, v33, v32);
  *v34 = v26;
  v34[1] = v28;
  v34[2] = v33;
  v34[3] = v32;
  sub_1C5924EF4(v10, &qword_1EC1994E8);
  sub_1C596F908(v26, v28, v33, v32);
  return sub_1C5924EF4(v7, &qword_1EC1994E8);
}

uint64_t sub_1C5B74008()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3 + 8;
  v5 = sub_1C5BC9A64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_1C59318C8(v1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199418);
  if (swift_dynamicCast())
  {

    v9 = MEMORY[0x1E6980EF0];
LABEL_5:
    (*(v6 + 104))(v8, *v9, v5);
    v10 = sub_1C5BC9954();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_1C5BC9964();
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    v9 = MEMORY[0x1E6980F20];
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
    type metadata accessor for LibraryButtonLabel();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
    sub_1C5BC84D4();
    sub_1C5BC9994();
    v13 = sub_1C5BC9954();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    v11 = sub_1C5BC99A4();
    sub_1C5924EF4(v4, &qword_1EC190F90);
    return v11;
  }

  (*(v6 + 104))(v8, *MEMORY[0x1E6980EF0], v5);
  v14 = sub_1C5BC9954();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1C5BC9994();
LABEL_6:
  v11 = sub_1C5BC99B4();
  sub_1C5924EF4(v4, &qword_1EC190F90);
  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v11;
}

uint64_t sub_1C5B743A0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1C59318C8(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199418);
  if ((swift_dynamicCast() & 1) != 0 || (sub_1C59318C8(a1, v16), result = swift_dynamicCast(), result))
  {
    sub_1C59318C8(a1, v16);
    v5 = swift_dynamicCast();
    v6 = v15;
    type metadata accessor for LibraryButtonLabel();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
    sub_1C5BC84D4();
    v7 = v14[0];
    v8 = [objc_opt_self() tertiarySystemFillColor];
    v9 = sub_1C5BCA424();
    sub_1C59318C8(a1, v14);
    __swift_project_boxed_opaque_existential_0(v14, v14[3]);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(v14);
    sub_1C5BC8634();
    sub_1C5BCAA84();
    sub_1C5BCAAB4();

    sub_1C5BC8664();

    sub_1C5BC8634();
    sub_1C5BCAA84();
    sub_1C5BCAAB4();

    sub_1C5BC8664();

    v11 = sub_1C5BC85F4();

    LOBYTE(v14[0]) = v5 ^ 1;
    if (v5)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 | ((v5 ^ 1u) << 32);
  }

  else
  {
    v13 = 0;
    v9 = 0;
    v7 = 0;
    DynamicType = 0;
    v11 = 0;
  }

  *a2 = v13;
  a2[1] = v9;
  a2[2] = 0;
  a2[3] = v7;
  a2[4] = 0;
  a2[5] = DynamicType;
  a2[6] = v11;
  return result;
}

uint64_t sub_1C5B7464C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C5BCAA54();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199450);
  return sub_1C5B731CC(v1, a1 + *(v4 + 44));
}

unint64_t sub_1C5B74698()
{
  result = qword_1EC1994A8;
  if (!qword_1EC1994A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199480);
    sub_1C5B74750();
    sub_1C5924F54(&qword_1EC1994D8, &qword_1EC1994A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1994A8);
  }

  return result;
}

unint64_t sub_1C5B74750()
{
  result = qword_1EC1994B0;
  if (!qword_1EC1994B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199478);
    sub_1C5B747DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1994B0);
  }

  return result;
}

unint64_t sub_1C5B747DC()
{
  result = qword_1EC1994B8;
  if (!qword_1EC1994B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199470);
    sub_1C5B74868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1994B8);
  }

  return result;
}

unint64_t sub_1C5B74868()
{
  result = qword_1EC1994C0;
  if (!qword_1EC1994C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199468);
    sub_1C5B748F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1994C0);
  }

  return result;
}

unint64_t sub_1C5B748F4()
{
  result = qword_1EC1994C8;
  if (!qword_1EC1994C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199460);
    sub_1C5924F54(&qword_1EC1994D0, &qword_1EC199458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1994C8);
  }

  return result;
}

double static CGFloat.pixel(_:traitCollection:)(void *a1, double a2)
{
  [a1 displayScale];
  v4 = 1.0;
  if (v3 >= 1.0)
  {
    v4 = v3;
    if ((~*&v3 & 0x7FF0000000000000) == 0)
    {
      v4 = 1.0;
      if ((*&v3 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v4 = v3;
      }
    }
  }

  return a2 / v4;
}

BOOL sub_1C5B74A20(double a1, double a2)
{
  if (a1 <= a2)
  {
    return 1;
  }

  if (COERCE__INT64(fabs(a1 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v3 = vabdd_f64(a1, a2);
  v4 = fabs(a1);
  v5 = fabs(a2);
  if (v4 <= v5)
  {
    v4 = v5;
  }

  return v3 <= fmax(v4 * 2.22044605e-16, COERCE_DOUBLE(1));
}

double CGFloat.ceilingValue(scale:)(double a1, double a2)
{
  if (a1 <= 0.0 || (v2 = a1, (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v3 = fabs(a1), v4 = v3 > fmax(v3 * 2.22044605e-16, COERCE_DOUBLE(1)), v2 = a1, !v4))
  {
    v2 = 1.0;
  }

  return ceil(a1 * a2) / v2;
}

double CGFloat.floorValue(scale:)(double a1, double a2)
{
  if (a1 <= 0.0 || (v2 = a1, (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v3 = fabs(a1), v4 = v3 > fmax(v3 * 2.22044605e-16, COERCE_DOUBLE(1)), v2 = a1, !v4))
  {
    v2 = 1.0;
  }

  return floor(a1 * a2) / v2;
}

uint64_t CGSize.description.getter()
{
  v0 = sub_1C5BCB304();
  MEMORY[0x1C694F170](v0);

  MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
  v1 = sub_1C5BCB304();
  MEMORY[0x1C694F170](v1);

  MEMORY[0x1C694F170](62, 0xE100000000000000);
  return 540702524;
}

uint64_t sub_1C5B74BE0()
{
  v0 = sub_1C5BCB304();
  MEMORY[0x1C694F170](v0);

  MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
  v1 = sub_1C5BCB304();
  MEMORY[0x1C694F170](v1);

  MEMORY[0x1C694F170](62, 0xE100000000000000);
  return 540702524;
}

void sub_1C5B74C80()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v1(v34);
  v2 = v34[0];
  if (v34[0])
  {
    v3 = v34[2];
    v42 = v34[1];
    sub_1C5924EF4(&v42, &qword_1EC199510);
    v43 = v3;
    sub_1C5924EF4(&v43, &qword_1EC199518);
  }

  else
  {
    v2 = *MEMORY[0x1E6979DA0];
  }

  [v0 setType_];

  v1(v35);
  if (v35[0])
  {
    v4 = v35[1];
    v5 = v35[2];
    v44 = v35[0];
    sub_1C5B75360(&v44);
    v45 = v5;
    sub_1C5924EF4(&v45, &qword_1EC199518);
    sub_1C5ABD7F8(v4);

    v6 = sub_1C5BCB044();
  }

  else
  {
    v6 = 0;
  }

  [v0 setColors_];

  v1(v36);
  if (v36[0])
  {
    v7 = v36[1];
    v46 = v36[0];

    sub_1C5B75360(&v46);
    v47 = v7;
    sub_1C5924EF4(&v47, &qword_1EC199510);

    sub_1C592535C(0, &unk_1EDA45E00);
    v8 = sub_1C5BCB044();
  }

  else
  {
    v8 = 0;
  }

  [v0 setInterpolations_];

  v9 = (v1)(v37);
  v10 = 0.0;
  v11 = 0.0;
  if (v37[0])
  {
    v13 = v37[1];
    v12 = v37[2];
    v11 = v38;
    v48 = v37[0];
    sub_1C5B75360(&v48);
    v49 = v13;
    sub_1C5924EF4(&v49, &qword_1EC199510);
    v50 = v12;
    v9 = sub_1C5924EF4(&v50, &qword_1EC199518);
  }

  v14 = (v1)(v39, v9);
  if (v39[0])
  {
    v16 = v39[1];
    v15 = v39[2];
    v10 = v40;
    v51 = v39[0];
    sub_1C5B75360(&v51);
    v52 = v16;
    sub_1C5924EF4(&v52, &qword_1EC199510);
    v53 = v15;
    v14 = sub_1C5924EF4(&v53, &qword_1EC199518);
  }

  (v1)(v41, v14);
  if (v41[0])
  {
    v18 = v41[1];
    v17 = v41[2];
    v54 = v41[0];
    sub_1C5B75360(&v54);
    v55 = v18;
    sub_1C5924EF4(&v55, &qword_1EC199510);
    v56 = v17;
    sub_1C5924EF4(&v56, &qword_1EC199518);
  }

  v19 = v11 * v10;
  CAColorMatrixMakeSaturation();
  *&v26 = 1.0 - v11;
  *(&v26 + 4) = 0;
  HIDWORD(v26) = 0;
  *&v27[0] = LODWORD(v19);
  *(v27 + 2) = 1.0 - v11;
  *(v27 + 12) = 0;
  *(&v27[1] + 1) = v19;
  *(&v27[1] + 1) = 0;
  *v28 = COERCE_UNSIGNED_INT(1.0 - v11);
  *&v28[8] = v19;
  *&v28[12] = xmmword_1C5BDA790;
  *&v28[28] = 0;
  CAColorMatrixConcat();
  v20 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v27[1] = v31;
  *v28 = v32;
  *&v28[16] = v33;
  v26 = v29;
  v27[0] = v30;
  v21 = [objc_opt_self() valueWithCAColorMatrix_];
  v22 = sub_1C5BCAE44();
  [v20 setValue:v21 forKey:v22];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C5BCFF00;
  *(v23 + 56) = sub_1C592535C(0, &qword_1EDA45D80);
  *(v23 + 32) = v20;
  v24 = v20;
  v25 = sub_1C5BCB044();

  [v0 setFilters_];
}

double sub_1C5B752F8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id sub_1C5B75308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenColorAdjustmentsLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5B75360(uint64_t a1)
{
  type metadata accessor for CAGradientLayerType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FittedText.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC7B04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

int *FittedText.init(_:maxLines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_1C5BC7AF4();
  result = type metadata accessor for FittedText();
  v15 = a7 + result[6];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a7 + result[5];
  *v16 = a1;
  *(v16 + 8) = a2;
  *(v16 + 16) = a3 & 1;
  *(v16 + 24) = a4;
  v17 = (a7 + result[7]);
  *v17 = sub_1C5B77454;
  v17[1] = 0;
  if ((a6 & 1) == 0)
  {
    if (a5 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = a5;
    }

    *v15 = v18;
    *(v15 + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for FittedText()
{
  result = qword_1EC199530;
  if (!qword_1EC199530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*FittedText.init<A>(_:maxLines:viewConfigurator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11))(uint64_t a1)
{
  sub_1C5BC7AF4();
  v17 = type metadata accessor for FittedText();
  v18 = a9 + v17[6];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a9 + v17[5];
  *v19 = a1;
  *(v19 + 8) = a2;
  *(v19 + 16) = a3 & 1;
  *(v19 + 24) = a4;
  result = swift_allocObject();
  *(result + 2) = a10;
  *(result + 3) = a11;
  *(result + 4) = a7;
  *(result + 5) = a8;
  v21 = (a9 + v17[7]);
  *v21 = sub_1C5B756B4;
  v21[1] = result;
  if ((a6 & 1) == 0)
  {
    v22 = a5;
    if (a5 <= 1)
    {
      v22 = 1;
    }

    *v18 = v22;
    *(v18 + 8) = 0;
  }

  return result;
}

uint64_t sub_1C5B75624(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return sub_1C5BCA804();
}

uint64_t FittedText.init(_:maxLines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  sub_1C5BC7AF4();
  v12 = type metadata accessor for FittedText();
  v13 = a6 + v12[6];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a6 + v12[5];
  *v14 = a1;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3 & 1;
  *(v14 + 24) = a4;
  v15 = (a6 + v12[7]);
  *v15 = sub_1C5B77454;
  v15[1] = 0;
  result = a5();
  if ((v17 & 1) == 0)
  {
    if (result <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = result;
    }

    *v13 = v18;
    *(v13 + 8) = 0;
  }

  return result;
}

uint64_t FittedText.init(_:maxLines:viewConfigurator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  sub_1C5BC7AF4();
  v16 = type metadata accessor for FittedText();
  v17 = a8 + v16[6];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a8 + v16[5];
  *v18 = a1;
  *(v18 + 8) = a2;
  *(v18 + 16) = a3 & 1;
  *(v18 + 24) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = (a8 + v16[7]);
  *v20 = sub_1C5B759EC;
  v20[1] = v19;

  v22 = a5(v21);
  LOBYTE(a5) = v23;

  if ((a5 & 1) == 0)
  {
    if (v22 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v22;
    }

    *v17 = v25;
    *(v17 + 8) = 0;
  }

  return result;
}

uint64_t sub_1C5B758CC(uint64_t a1, void (*a2)(void *__return_ptr, void *))
{
  v9[3] = MEMORY[0x1E6981910];
  v9[4] = MEMORY[0x1E6981900];
  v9[0] = a1;

  a2(v10, v9);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v3 = __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v7 = sub_1C5BCA804();
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

uint64_t sub_1C5B759F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC7B04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FittedText.hash(into:)()
{
  sub_1C5BC7B04();
  sub_1C5B76F90(&qword_1EC196A58, MEMORY[0x1E69695A8]);

  return sub_1C5BCAD44();
}

uint64_t FittedText.hashValue.getter()
{
  sub_1C5BCBF54();
  sub_1C5BC7B04();
  sub_1C5B76F90(&qword_1EC196A58, MEMORY[0x1E69695A8]);
  sub_1C5BCAD44();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5B75B6C()
{
  sub_1C5BCBF54();
  sub_1C5BC7B04();
  sub_1C5B76F90(&qword_1EC196A58, MEMORY[0x1E69695A8]);
  sub_1C5BCAD44();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5B75BF4()
{
  sub_1C5BC7B04();
  sub_1C5B76F90(&qword_1EC196A58, MEMORY[0x1E69695A8]);

  return sub_1C5BCAD44();
}

uint64_t sub_1C5B75C78()
{
  sub_1C5BCBF54();
  sub_1C5BC7B04();
  sub_1C5B76F90(&qword_1EC196A58, MEMORY[0x1E69695A8]);
  sub_1C5BCAD44();
  return sub_1C5BCBF94();
}

uint64_t static FittedTextContentBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t static FittedTextContentBuilder.buildExpression(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199520);
  v2 = *(type metadata accessor for FittedText() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5BCFF00;
  sub_1C5B76E9C(a1, v4 + v3);
  return v4;
}

uint64_t sub_1C5B75E0C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = result + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = v3[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= v3[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v3 = sub_1C5B76CC0(isUniquelyReferenced_nonNull_native, v9, 1, v3, &qword_1EC199520, &unk_1C5BF05B0, type metadata accessor for FittedText);
      if (*(v4 + 16))
      {
LABEL_14:
        v10 = (v3[3] >> 1) - v3[2];
        result = type metadata accessor for FittedText();
        if (v10 < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v11 = v3[2];
          v12 = __OFADD__(v11, v5);
          v13 = v11 + v5;
          if (v12)
          {
            goto LABEL_23;
          }

          v3[2] = v13;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *sub_1C5B75FA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1C5B760B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199590);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C5B761C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199548);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C5B762E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192620);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199550);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C5B76418(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C5B76528(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C5B7662C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC196F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C5B76730(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199598);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

char *sub_1C5B76834(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1995A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1C5B76938(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1995A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_1C5B76A90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C5B76BC4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

size_t sub_1C5B76CC0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1C5B76E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FittedText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5B76F90(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C5B77000()
{
  sub_1C5BC7B04();
  if (v0 <= 0x3F)
  {
    sub_1C5B770A4();
    if (v1 <= 0x3F)
    {
      sub_1C5927B74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C5B770A4()
{
  if (!qword_1EC199540)
  {
    v0 = sub_1C5BCB804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC199540);
    }
  }
}

void *sub_1C5B77118(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192D80);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1C5B77244(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195728);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C5B77350(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199560);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1C5B77464()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  [v0 setAutomaticallyWaitsToMinimizeStalling_];
  [v0 setAllowsExternalPlayback_];
  [v0 setPreventsDisplaySleepDuringVideoPlayback_];
  [v0 setPreventsAutomaticBackgroundingDuringVideoPlayback_];
  [v0 _setSuppressesAudioRendering_];
  [v0 setMuted_];
  v4 = sub_1C5BCB214();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  v7 = sub_1C5B77CE4(0, 0, v3, &unk_1C5BF0760, v5);
  sub_1C5929C38(v3);
  return v7;
}

uint64_t sub_1C5B7760C()
{
  sub_1C5BCB1E4();
  *(v0 + 160) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5B776A0, v2, v1);
}

uint64_t sub_1C5B776A0()
{
  v1 = *(v0 + 152);

  *(v0 + 168) = [v1 asset];

  return MEMORY[0x1EEE6DFA0](sub_1C5B77724, 0, 0);
}

uint64_t sub_1C5B77724()
{
  v1 = v0[21];
  v2 = *MEMORY[0x1E69874F8];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C5B77858;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1995B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C5B78264;
  v0[13] = &block_descriptor_22;
  v0[14] = v3;
  [v1 loadMediaSelectionGroupForMediaCharacteristic:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C5B77858()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1C5B779F4;
  }

  else
  {
    v2 = sub_1C5B77968;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C5B77968()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    [*(v0 + 152) selectMediaOption:0 inMediaSelectionGroup:v1];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C5B779F4()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1C5B77A64(double a1, double a2)
{
  v5 = [v2 loopingPlayerItems];
  sub_1C5B77C44();
  v6 = sub_1C5BCB054();

  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C5BCB984())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C694FD20](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 preferredMinimumResolution];
      if (v12 == 0.0 && v13 == 0.0)
      {
        [v10 setPreferredMinimumResolution_];
      }

      else if (vabdd_f64(a1, v12) / v12 >= 0.01 || vabdd_f64(a2, v13) / v13 >= 0.01)
      {
        v14 = v12;
        v15 = v13;

        sub_1C5B77C90();
        swift_allocError();
        *v16 = v14;
        *(v16 + 8) = v15;
        *(v16 + 16) = 0;
        swift_willThrow();

        return;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
}

unint64_t sub_1C5B77C44()
{
  result = qword_1EC1939E8;
  if (!qword_1EC1939E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC1939E8);
  }

  return result;
}

unint64_t sub_1C5B77C90()
{
  result = qword_1EC1995B0;
  if (!qword_1EC1995B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1995B0);
  }

  return result;
}

uint64_t sub_1C5B77CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1C5929BC8(a3, v22 - v9);
  v11 = sub_1C5BCB214();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C5929C38(v10);
  }

  else
  {
    sub_1C5BCB204();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C5BCB194();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C5BCAED4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C5B77F50()
{
  *(v0 + 24) = [objc_opt_self() auxiliarySession];
  sub_1C5B78140();
  sub_1C5BCB1E4();
  *(v0 + 32) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5B7805C, v2, v1);
}

uint64_t sub_1C5B7805C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  [v2 setAudioSession_];

  return MEMORY[0x1EEE6DFA0](sub_1C5B780DC, 0, 0);
}

uint64_t sub_1C5B780DC()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_1C5B78140()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v1 = [v0 setParticipatesInNowPlayingAppPolicy:0 error:v10];
  v2 = v10[0];
  if (v1 && (v3 = *MEMORY[0x1E6958038], v10[0] = 0, v4 = v2, v5 = [v0 setCategory:v3 error:v10], v2 = v10[0], v5))
  {
    v10[0] = 0;
    v6 = v2;
    if ([v0 setRequiresNoAudioResources:1 error:v10])
    {
      return v10[0];
    }

    v9 = v10[0];
    sub_1C5BC7914();
  }

  else
  {
    v8 = v2;
    sub_1C5BC7914();
  }

  return swift_willThrow();
}

uint64_t sub_1C5B78264(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1C5B78334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C5B77F30(a1, v4, v5, v6);
}

void sub_1C5B783E8()
{
  qword_1EC1995D8 = &type metadata for LibraryButtonState.Add;
  unk_1EC1995E0 = &off_1F4529F98;
  qword_1EC1995C0 = 0;
  unk_1EC1995C8 = 0;
}

uint64_t static LibraryButtonState.add(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  if (a2 && (!a1 && a2 == 0xE000000000000000 || (sub_1C5BCBDE4() & 1) != 0))
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
  }

  v8 = &type metadata for LibraryButtonState.Add;
  v9 = &off_1F4529F98;
  *&v7 = v4;
  *(&v7 + 1) = v3;
  return sub_1C5931F84(&v7, a3);
}

void static LibraryButtonState.progress(_:)(uint64_t a1@<X8>, float a2@<S0>)
{
  *(a1 + 24) = &type metadata for LibraryButtonState.Progress;
  *(a1 + 32) = &off_1F4529F80;
  *a1 = a2;
}

uint64_t sub_1C5B785FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_1C5B72C58(a2, v4);
}

uint64_t sub_1C5B78684()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EC1A6DB8 = result;
  unk_1EC1A6DC0 = v4;
  return result;
}

uint64_t sub_1C5B787FC()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EC1A6DC8 = result;
  unk_1EC1A6DD0 = v4;
  return result;
}

uint64_t sub_1C5B78988()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EC1A6DD8 = result;
  unk_1EC1A6DE0 = v4;
  return result;
}

uint64_t sub_1C5B78B14()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EC1A6DE8 = result;
  unk_1EC1A6DF0 = v4;
  return result;
}

uint64_t sub_1C5B78CC4()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EC1A6DF8 = result;
  unk_1EC1A6E00 = v4;
  return result;
}

uint64_t sub_1C5B78E54()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EC1A6E08 = result;
  unk_1EC1A6E10 = v4;
  return result;
}

uint64_t sub_1C5B78FE0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3 != -1)
  {
    v6 = a4;
    swift_once();
    a4 = v6;
  }

  v4 = *a4;

  return v4;
}

double sub_1C5B79040()
{
  v0 = MTLCreateSystemDefaultDevice();

  return sub_1C5B79070(v0, &qword_1EDA4F010);
}

double sub_1C5B79070@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    swift_getObjectType();
    v4 = [swift_unknownObjectRetain() newCommandQueue];
    if (v4)
    {
      v5 = v4;
      if (qword_1EDA4E5D0 != -1)
      {
        swift_once();
      }

      v16[0] = 0;
      v6 = [a1 newDefaultLibraryWithBundle:qword_1EDA5DD00 error:v16];
      v7 = v16[0];
      if (v6)
      {
        swift_unknownObjectRelease();
        v8 = objc_allocWithZone(MEMORY[0x1E6974438]);
        swift_unknownObjectRetain();
        v9 = [v8 initWithDevice_];
        v10 = [a1 supportsFamily_];
        v11 = sub_1C5B0A4FC();
        swift_unknownObjectRelease();
        *a2 = a1;
        *(a2 + 8) = v5;
        *(a2 + 16) = v6;
        *(a2 + 24) = v9;
        *(a2 + 32) = v11;
        *(a2 + 40) = v10;
        return result;
      }

      v13 = v7;
      v14 = sub_1C5BC7914();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_1C5BCB4D4();
  sub_1C5B79920();
  v15 = sub_1C5BCB7F4();
  sub_1C5BC7C54();
  swift_unknownObjectRelease();

  result = 0.0;
  *(a2 + 25) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id static MetalContext.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA4F008 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = qword_1EDA4F010;
  v3 = qword_1EDA4F018;
  v4 = qword_1EDA4F020;
  v5 = qword_1EDA4F028;
  v6 = qword_1EDA4F030;
  *a1 = qword_1EDA4F010;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = byte_1EDA4F038;

  return sub_1C5B37660(v2, v3, v4, v5);
}

uint64_t sub_1C5B79314(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1C5B7935C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C5B793E8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69741E0]) init];
  v1 = [v0 attributes];
  v2 = [v1 objectAtIndexedSubscript_];

  if (!v2)
  {
    goto LABEL_21;
  }

  [v2 setFormat_];

  v3 = [v0 attributes];
  v4 = [v3 objectAtIndexedSubscript_];

  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v4 setOffset_];

  v5 = [v0 attributes];
  v6 = [v5 objectAtIndexedSubscript_];

  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v6 setBufferIndex_];

  v7 = [v0 attributes];
  v8 = [v7 objectAtIndexedSubscript_];

  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v8 setFormat_];

  v9 = [v0 attributes];
  v10 = [v9 objectAtIndexedSubscript_];

  if (!v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v10 setOffset_];

  v11 = [v0 attributes];
  v12 = [v11 objectAtIndexedSubscript_];

  if (!v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v12 setBufferIndex_];

  v13 = [v0 attributes];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v14 setFormat_];

  v15 = [v0 attributes];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = [v0 attributes];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = [v18 offset];

  if (__OFADD__(v19, 16))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v16 setOffset_];

  v20 = [v0 attributes];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v21 setBufferIndex_];

  v22 = [v0 attributes];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v23 setFormat_];

  v24 = [v0 attributes];
  v25 = [v24 objectAtIndexedSubscript_];

  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = [v0 attributes];
  v27 = [v26 objectAtIndexedSubscript_];

  if (!v27)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = [v27 offset];

  if (__OFADD__(v28, 16))
  {
    goto LABEL_20;
  }

  [v25 setOffset_];

  v29 = [v0 attributes];
  v30 = [v29 objectAtIndexedSubscript_];

  if (!v30)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v30 setBufferIndex_];

  v31 = [v0 layouts];
  v32 = [v31 objectAtIndexedSubscript_];

  if (v32)
  {
    [v32 setStride_];

    return;
  }

LABEL_35:
  __break(1u);
}

unint64_t sub_1C5B79920()
{
  result = qword_1EDA4E5B0;
  if (!qword_1EDA4E5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA4E5B0);
  }

  return result;
}

double sub_1C5B7996C()
{
  result = -0.00781250557;
  xmmword_1EDA5DD90 = xmmword_1C5BF08B0;
  qword_1EDA5DDA0 = 0x3F80000000000000;
  xmmword_1EDA5DDB0 = xmmword_1C5BF08B0;
  unk_1EDA5DDC0 = xmmword_1C5BF08B0;
  return result;
}

double sub_1C5B79994()
{
  result = 0.00781250557;
  xmmword_1EDA5DE30 = xmmword_1C5BF08C0;
  qword_1EDA5DE40 = 0;
  xmmword_1EDA5DE50 = xmmword_1C5BF08C0;
  unk_1EDA5DE60 = xmmword_1C5BF08C0;
  return result;
}

double sub_1C5B799B4()
{
  result = 0.00781250185;
  xmmword_1EDA5DD50 = xmmword_1C5BF08D0;
  qword_1EDA5DD60 = 1065353216;
  xmmword_1EDA5DD70 = xmmword_1C5BF08D0;
  unk_1EDA5DD80 = xmmword_1C5BF08D0;
  return result;
}

double sub_1C5B799DC()
{
  result = -0.00781250185;
  xmmword_1EDA5DDF0 = xmmword_1C5BF08E0;
  __asm { FMOV            V1.2S, #1.0 }

  qword_1EDA5DE00 = _D1;
  xmmword_1EDA5DE10 = xmmword_1C5BF08E0;
  unk_1EDA5DE20 = xmmword_1C5BF08E0;
  return result;
}

double sub_1C5B79A00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199598);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C5BF08F0;
  if (qword_1EDA4EDA8 != -1)
  {
    v14 = v0;
    swift_once();
    v0 = v14;
  }

  v1 = qword_1EDA5DDA0;
  v2 = xmmword_1EDA5DDB0;
  v3 = unk_1EDA5DDC0;
  *(v0 + 32) = xmmword_1EDA5DD90;
  *(v0 + 48) = v1;
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  if (qword_1EDA4EDE0 != -1)
  {
    v15 = v0;
    swift_once();
    v0 = v15;
  }

  v4 = qword_1EDA5DE40;
  v5 = xmmword_1EDA5DE50;
  v6 = unk_1EDA5DE60;
  *(v0 + 96) = xmmword_1EDA5DE30;
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  *(v0 + 144) = v6;
  if (qword_1EDA4ED98 != -1)
  {
    v16 = v0;
    swift_once();
    v0 = v16;
  }

  v7 = qword_1EDA5DD60;
  v8 = xmmword_1EDA5DD70;
  v9 = unk_1EDA5DD80;
  *(v0 + 160) = xmmword_1EDA5DD50;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v9;
  if (qword_1EDA4EDD0 != -1)
  {
    v17 = v0;
    swift_once();
    v0 = v17;
  }

  result = *&xmmword_1EDA5DDF0;
  v11 = qword_1EDA5DE00;
  v12 = xmmword_1EDA5DE10;
  v13 = unk_1EDA5DE20;
  *(v0 + 224) = xmmword_1EDA5DDF0;
  *(v0 + 240) = v11;
  *(v0 + 256) = v12;
  *(v0 + 272) = v13;
  qword_1EDA5DDD0 = v0;
  return result;
}

double sub_1C5B79BC0()
{
  if (qword_1EDA4E650 != -1)
  {
    swift_once();
  }

  dword_1EDA5DB90 = 0;
  xmmword_1EDA5DBA0 = xmmword_1EDA5DD10;
  unk_1EDA5DBB0 = unk_1EDA5DD20;
  xmmword_1EDA5DBC0 = xmmword_1EDA5DD30;
  unk_1EDA5DBD0 = unk_1EDA5DD40;
  dword_1EDA5DC24 = 0;
  dword_1EDA5DC74 = 0;
  dword_1EDA5DCC4 = 0;
  xmmword_1EDA5DBE0 = 0u;
  unk_1EDA5DBF0 = 0u;
  xmmword_1EDA5DC00 = 0u;
  unk_1EDA5DC10 = 0u;
  word_1EDA5DC20 = 0;
  word_1EDA5DC70 = 0;
  xmmword_1EDA5DC50 = 0u;
  unk_1EDA5DC60 = 0u;
  xmmword_1EDA5DC30 = 0u;
  unk_1EDA5DC40 = 0u;
  xmmword_1EDA5DC80 = 0u;
  unk_1EDA5DC90 = 0u;
  xmmword_1EDA5DCA0 = 0u;
  unk_1EDA5DCB0 = 0u;
  word_1EDA5DCC0 = 0;
  result = 0.0;
  xmmword_1EDA5DCD0 = xmmword_1C5BDA790;
  qword_1EDA5DCE0 = 0x3F80000000000000;
  unk_1EDA5DCE8 = 0;
  qword_1EDA5DCF0 = 0;
  unk_1EDA5DCF8 = 0;
  return result;
}

id sub_1C5B79D34()
{
  v1 = [v0 nextResponder];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [v0 nextResponder];
  if (result)
  {
    v4 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = sub_1C5B79D34();

      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1C5B79DF0()
{
  v1 = v0;
  rect.origin.y = v0;
  *&rect.size.width = swift_getObjectType();
  [(CGFloat *)&rect.origin.y layoutSubviews];
  v2 = sub_1C5B79D34();
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(*&v1 + OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_customBackButton);
  v6 = [v5 superview];
  if (!v6)
  {
    if (v4)
    {
      v7 = v4;
      v8 = [v7 viewControllers];
      sub_1C592535C(0, &qword_1EDA45E38);
      v9 = sub_1C5BCB054();

      if (v9 >> 62)
      {
        v10 = sub_1C5BCB984();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v10 >= 2)
      {
        sub_1C5B7A268(v4);
      }

      goto LABEL_13;
    }

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v7 = v4;
LABEL_13:
  v11 = v7;
  v12 = [v11 viewControllers];
  sub_1C592535C(0, &qword_1EDA45E38);
  v13 = sub_1C5BCB054();

  if (v13 >> 62)
  {
    v14 = sub_1C5BCB984();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v14 < 2;
LABEL_17:
  [v5 setHidden_];
  [*&v1 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [*&v1 layoutMargins];
  v26 = UIEdgeInsetsInsetRect(v17, v19, v21, v23, v24, v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [*&v1 effectiveUserInterfaceLayoutDirection];
  v34 = v26;
  v35 = v28;
  v36 = v30;
  v37 = v32;
  if (v33)
  {
    MinX = CGRectGetMaxX(*&v34) + -44.0;
  }

  else
  {
    MinX = CGRectGetMinX(*&v34);
  }

  v39 = [*&v1 overlays];
  v40 = 0.0;
  if (v39)
  {
    v41 = v39;
    rect.origin.x = MinX;
    v42 = v26;
    v43 = v28;
    v44 = v30;
    v45 = v32;
    sub_1C5BCB674();
    MinX = rect.size.height;
    v46 = v55;
    v48 = v56;
    v47 = v57;

    if (v58)
    {
      v48 = 44.0;
      v47 = 44.0;
      v32 = v45;
      v30 = v44;
      v28 = v43;
      v26 = v42;
      MinX = rect.origin.x;
      v40 = 0.0;
    }

    else
    {
      v49 = v46;
      v32 = v45;
      v30 = v44;
      v28 = v43;
      v26 = v42;
      v40 = v49;
    }
  }

  else
  {
    v48 = 44.0;
    v47 = 44.0;
  }

  v50 = [*&v1 effectiveUserInterfaceLayoutDirection];
  v51 = [v5 isHidden];
  if (v50)
  {
    if ((v51 & 1) == 0)
    {
      v59.origin.x = MinX;
      v59.origin.y = v40;
      v59.size.width = v48;
      v59.size.height = v47;
      rect.origin.x = MinX;
      MaxX = CGRectGetMaxX(v59);
      v60.origin.x = v26;
      v60.origin.y = v28;
      v60.size.width = v30;
      v60.size.height = v32;
      if (CGRectGetMaxX(v60) >= MaxX)
      {
        MinX = rect.origin.x;
      }

      else
      {
        v61.origin.x = v26;
        v61.origin.y = v28;
        v61.size.width = v30;
        v61.size.height = v32;
        v53 = CGRectGetMaxX(v61);
        v62.origin.x = rect.origin.x;
        v62.origin.y = v40;
        v62.size.width = v48;
        v62.size.height = v47;
        MinX = v53 - CGRectGetWidth(v62);
      }
    }
  }

  else if ((v51 & 1) == 0)
  {
    v63.origin.x = MinX;
    v63.origin.y = v40;
    v63.size.width = v48;
    v63.size.height = v47;
    rect.origin.x = CGRectGetMinX(v63);
    v64.origin.x = v26;
    v64.origin.y = v28;
    v64.size.width = v30;
    v64.size.height = v32;
    if (rect.origin.x < CGRectGetMinX(v64))
    {
      v65.origin.x = v26;
      v65.origin.y = v28;
      v65.size.width = v30;
      v65.size.height = v32;
      MinX = CGRectGetMinX(v65);
    }
  }

  [v5 setFrame_];
}

void sub_1C5B7A268(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParallaxBackButtonLabel();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1996B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &aBlock[-1] - v8;
  v10 = *&v2[OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_customBackButton];
  sub_1C5BCB784();
  v11 = sub_1C5BCB794();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  sub_1C5BCB7A4();
  v12 = [v2 backButtonMenu];
  [v10 setMenu_];

  [v10 setContextMenuInteractionEnabled_];
  if (a1)
  {
    sub_1C592535C(0, &qword_1EDA4E040);
    *(swift_allocObject() + 16) = a1;
    v13 = a1;
    v14 = sub_1C5BCB774();
    [v10 addAction:v14 forControlEvents:0x2000];
  }

  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  sub_1C5BCAE94();
  v16 = sub_1C5BCAE44();

  [v10 setAccessibilityLabel_];

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C5B7B0A0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C5A07474;
  aBlock[3] = &block_descriptor_23;
  v18 = _Block_copy(aBlock);

  [v10 setConfigurationUpdateHandler_];
  _Block_release(v18);
  v19 = [v10 superview];
  if (!v19)
  {
    if (qword_1EC190910 != -1)
    {
      swift_once();
    }

    aBlock[0] = qword_1EC1A6DB0;
    sub_1C5A3B53C();
    sub_1C5BC84C4();
    v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1996B8));
    v21 = sub_1C5BC8994();
    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    [v21 setUserInteractionEnabled_];
    [v21 setExclusiveTouch_];
    [v10 addSubview_];
    v22 = [v10 layer];
    [v22 setAllowsGroupOpacity_];

    v23 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C5BD9A40;
    v25 = [v21 centerXAnchor];
    v26 = [v10 centerXAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    *(v24 + 32) = v27;
    v28 = [v21 centerYAnchor];
    v29 = [v10 centerYAnchor];
    v30 = [v28 constraintEqualToAnchor_];

    *(v24 + 40) = v30;
    v31 = [v21 widthAnchor];
    v32 = [v10 widthAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    *(v24 + 48) = v33;
    v34 = [v21 heightAnchor];

    v35 = [v10 heightAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    *(v24 + 56) = v36;
    sub_1C592535C(0, &qword_1EDA45E20);
    v37 = sub_1C5BCB044();

    [v23 activateConstraints_];

    [v2 addSubview_];
    v19 = v21;
  }
}

void sub_1C5B7AA00(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong[OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_isNavigationBarOverParallaxHeader] == 1)
    {
      v3 = Strong;
      v4 = [a1 state];
      v5 = 0.25;
      if ((v4 & 2) == 0)
      {
        v6 = [a1 state];
        v5 = 0.5;
        if ((v6 & 1) == 0)
        {
          [a1 state];
          v5 = 1.0;
        }
      }

      [a1 setAlpha_];
      Strong = v3;
    }
  }
}

void sub_1C5B7AAC0(char a1)
{
  if (v1[OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_autoAdjustsNavigationBarTint] != 1)
  {
    return;
  }

  v2 = v1;
  v4 = sub_1C5B79D34();
  if (!v4 || (v5 = v4, objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) != 0))
  {
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_9:
    if (!v4)
    {
      return;
    }

    v15 = v4;
    v8 = [v4 navigationBar];
    [v8 setTintColor_];

    v4 = v8;
    goto LABEL_23;
  }

  v4 = 0;
  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (*(v2 + OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_allowsNavigationBarTintColorUpdate) == 1)
  {
    v14 = v4;
    if (v4)
    {
      v6 = [v4 navigationBar];
      v7 = [v6 tintColor];
    }

    else
    {
      v7 = 0;
    }

    v9 = [v2 tintColor];
    v10 = v9;
    if (v7)
    {
      if (v9)
      {
        sub_1C592535C(0, &qword_1EDA45D98);
        v11 = sub_1C5BCB744();

        if (v11)
        {
LABEL_22:
          v4 = v14;
          goto LABEL_23;
        }

LABEL_20:
        if (!v14)
        {
          return;
        }

        v12 = [v14 navigationBar];
        v13 = [v2 tintColor];
        [v12 setTintColor_];

        goto LABEL_22;
      }

      v10 = v7;
    }

    else if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_23:
}

void sub_1C5B7AD2C(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_willMoveToWindow_, a1);
  if (!a1 && *(v1 + OBJC_IVAR____TtC11MediaCoreUI27ParallaxNavigationTitleView_autoAdjustsNavigationBarTint) == 1)
  {
    v3 = sub_1C5B79D34();
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = [v5 navigationBar];
        [v6 setTintColor_];

        v4 = v6;
      }
    }
  }
}

void sub_1C5B7B0A8()
{
  v1 = [*(v0 + 16) popViewControllerAnimated_];
}

uint64_t sub_1C5B7B0E8()
{
  sub_1C594005C();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5B7B130()
{
  sub_1C593FBC4();

  return sub_1C5BC8F44();
}

uint64_t MCUINamespace<A>.nowPlayingNamespace.getter()
{
  sub_1C59434EC();
  result = sub_1C5BC8F44();
  if ((v2 & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5B7B224@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 52));
  v10 = *v9;
  v11 = *(v9 + 8);

  if ((v11 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v10 = v15;
  }

  swift_getKeyPath();
  v15 = v10;
  sub_1C5B8013C(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  *a2 = *(v10 + 17);
}

void sub_1C5B7B3F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v413 = a1;
  v379 = a4;
  v6 = sub_1C5BC8284();
  v356 = *(v6 - 8);
  v357 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v355 = &v316 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s11ArtworkViewVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196130);
  v411 = v8;
  v9 = sub_1C5BC8AB4();
  v360 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v377 = &v316 - v10;
  v403 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220);
  v397 = v9;
  v11 = sub_1C5BC8AB4();
  v378 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v361 = &v316 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v358 = &v316 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v359 = &v316 - v16;
  v395 = v17;
  v409 = sub_1C5BCB804();
  v394 = *(v409 - 8);
  v18 = MEMORY[0x1EEE9AC00](v409);
  v407 = &v316 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v405 = &v316 - v20;
  v365 = _s21MiniPlayerContentViewVMa();
  v366 = sub_1C5BC8AB4();
  v21 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v369 = v21;
  v406 = sub_1C5BC8AB4();
  v393 = *(v406 - 8);
  v22 = MEMORY[0x1EEE9AC00](v406);
  v396 = &v316 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v367 = &v316 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v368 = &v316 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v372 = &v316 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v404 = &v316 - v30;
  v322 = _s21FullScreenContentViewVMa();
  v327 = sub_1C5BC8AB4();
  v380 = sub_1C5BC8AB4();
  v381 = sub_1C5BC8AB4();
  v382 = sub_1C5BC8AB4();
  v412 = a2;
  v414 = a3;
  v31 = type metadata accessor for NowPlayingView.OverlayView();
  WitnessTable = swift_getWitnessTable();
  v329 = v31;
  v330 = sub_1C5BC8BE4();
  v383 = sub_1C5BC8AB4();
  type metadata accessor for NowPlayingColorSchemeModifier();
  v388 = sub_1C5BC8AB4();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996C8);
  v33 = _s19HeaderDismissButtonVMa();
  v34 = sub_1C5BC8AB4();
  v35 = sub_1C5BC8AB4();
  v36 = sub_1C5BC8AB4();
  v37 = sub_1C5BC8AB4();
  v38 = sub_1C5BC8AB4();
  v351 = v32;
  swift_getTupleTypeMetadata3();
  v39 = sub_1C5BCAB74();
  v353 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v352 = &v316 - v41;
  v334 = v33;
  v333 = *(v33 - 8);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v331 = &v316 - v43;
  v345 = v34;
  v336 = *(v34 - 8);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v335 = &v316 - v45;
  v347 = v35;
  v339 = *(v35 - 8);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v337 = &v316 - v47;
  v349 = v36;
  v48 = v36;
  v49 = v413;
  v342 = *(v48 - 8);
  v50 = MEMORY[0x1EEE9AC00](v46);
  v338 = &v316 - v51;
  v350 = v37;
  v343 = *(v37 - 8);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v341 = &v316 - v53;
  v354 = v38;
  v346 = *(v38 - 8);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v348 = &v316 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v344 = &v316 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v363 = &v316 - v58;
  v389 = sub_1C5BC90D4();
  v385 = *(v389 - 8);
  v59 = MEMORY[0x1EEE9AC00](v389 - 8);
  v61 = &v316 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v59);
  v332 = &v316 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v316 = &v316 - v65;
  v318 = *(v380 - 8);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v317 = &v316 - v67;
  v320 = *(v381 - 8);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v319 = &v316 - v69;
  v323 = *(v382 - 1);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v321 = &v316 - v71;
  v325 = *(v383 - 8);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v324 = &v316 - v73;
  v362 = *(v388 - 1);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v340 = &v316 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v326 = &v316 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v384 = &v316 - v78;
  v392 = v39;
  v402 = sub_1C5BC92D4();
  v408 = *(v402 - 8);
  v79 = MEMORY[0x1EEE9AC00](v402);
  v391 = &v316 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v401 = &v316 - v81;
  v82 = sub_1C5BC8F34();
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v316 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for NowPlayingView();
  v87 = v49 + *(v86 + 56);
  v89 = *v87;
  v88 = *(v87 + 8);
  v386 = v87;
  LODWORD(v87) = *(v87 + 16);
  v399 = v85;
  v398 = v83;
  v364 = v61;
  if (v87 == 1)
  {
    *&v559 = v89;
    *(&v559 + 1) = v88;
  }

  else
  {

    sub_1C5BCB4E4();
    v90 = sub_1C5BC9844();
    v49 = v413;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v89, v88, 0);
    (*(v83 + 8))(v85, v82);
    v88 = *(&v559 + 1);
  }

  v91 = MEMORY[0x1E6980A30];
  v410 = v86;
  v400 = v82;
  if (v88)
  {
  }

  else
  {
    sub_1C5B7B224(v86, &v559);
    if (v559 == 1)
    {
      v92 = sub_1C595B4FC(1);
      v94 = v93;
      LOBYTE(v559) = v92;
      *(&v559 + 1) = v93;
      v96 = v95 & 1;
      LOBYTE(v560) = v95 & 1;
      sub_1C5BC8AC4();
      sub_1C5BC9894();
      _s18ArtworkPlaceholderVMa();
      v97 = swift_getWitnessTable();
      sub_1C5BC9F84();
      sub_1C5942458(v94, v96);
      v98 = *(&v532 + 1);
      v99 = v533;
      LOBYTE(v418[0]) = v532;
      *(&v418[0] + 1) = *(&v532 + 1);
      LOBYTE(v418[1]) = v533;
      *(&v418[1] + 1) = *(&v533 + 1);
      LOBYTE(v418[2]) = v534;
      v100 = sub_1C5BC8AB4();
      v415 = v97;
      v101 = v410;
      v416 = v91;
      v102 = swift_getWitnessTable();
      sub_1C593EDC0(v418, v100, v102);
      v103 = v99;
      v49 = v413;
      sub_1C5942458(v98, v103);
      v104 = *(&v559 + 1);
      LOBYTE(v98) = v560;
      LOBYTE(v418[0]) = v559;
      *(&v418[0] + 1) = *(&v559 + 1);
      LOBYTE(v418[1]) = v560;
      *(&v418[1] + 1) = *(&v560 + 1);
      LOBYTE(v418[2]) = v561;
      sub_1C593EDC0(v418, v100, v102);
      sub_1C5942458(v104, v98);
      v105 = *(&v532 + 1);
      LOBYTE(v98) = v533;
      *&v417[0] = v532;
      *(&v417[0] + 1) = *(&v532 + 1);
      *&v417[1] = v533;
      *(&v417[1] + 1) = *(&v533 + 1);
      LOBYTE(v417[2]) = v534;
      sub_1C5941600(v417, v418);
      sub_1C5942458(v105, v98);
      v106 = v418[1];
      v107 = v418[0];
      v108 = LOBYTE(v418[2]);
      goto LABEL_9;
    }
  }

  v532 = 0uLL;
  v533 = xmmword_1C5BF09C0;
  LOBYTE(v534) = 0;
  _s18ArtworkPlaceholderVMa();
  sub_1C5BC8AB4();
  v565 = swift_getWitnessTable();
  v566 = v91;
  swift_getWitnessTable();
  sub_1C5941600(&v532, &v559);
  v106 = v560;
  v107 = v559;
  v108 = v561;
  v101 = v86;
LABEL_9:
  v370 = v107;
  v371 = v106;
  v375 = *(&v107 + 1);
  v376 = v107;
  v373 = *(&v106 + 1);
  v374 = v106;
  v390 = v108;
  sub_1C5942250(v107, *(&v107 + 1), v106);
  sub_1C59416B4(v556);
  v109 = v557;
  v110 = v49;
  v111 = v558;
  __swift_project_boxed_opaque_existential_0(v556, v557);
  v112 = (v110 + *(v101 + 48));
  *&v564[10] = *(v112 + 58);
  v113 = v112[3];
  v563[2] = v112[2];
  *v564 = v113;
  v115 = *v112;
  v114 = v112[1];
  v387 = v112;
  v563[0] = v115;
  v563[1] = v114;
  if (v564[25])
  {
    v116 = v387[3];
    v554 = v387[2];
    v555[0] = v116;
    *(v555 + 9) = *(v387 + 57);
    v117 = *v387;
    v553 = v387[1];
    v552 = v117;
    v118 = v400;
  }

  else
  {

    sub_1C5BCB4E4();
    v119 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v101 = v410;
    v120 = v399;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v563, &unk_1EC194DE0);
    v118 = v400;
    (*(v398 + 8))(v120, v400);
  }

  v561 = v554;
  v562[0] = v555[0];
  *(v562 + 9) = *(v555 + 9);
  v560 = v553;
  v559 = v552;
  v121 = (*(v111 + 16))(&v559, v109, v111);
  v122 = sub_1C593EBD4(1u, v121);

  __swift_destroy_boxed_opaque_existential_0(v556);
  if (!v122)
  {
    v545 = 0u;
    v544 = 0u;
    v543 = 0u;
    v542 = 0u;
    v541 = 0u;
    v540 = 0u;
    v539 = 0u;
    v538 = 0u;
    v537 = 0u;
    v536 = 0u;
    memset(v535, 0, sizeof(v535));
    v534 = 0u;
    v533 = 0u;
    v532 = 0u;
    v546 = 0;
    v547 = 1;
    sub_1C5BC8AB4();
    sub_1C5BC8AB4();
    v548 = 0u;
    v549 = 0u;
    v550 = 0u;
    v551 = 0u;
    v530 = swift_getWitnessTable();
    v531 = MEMORY[0x1E6980A30];
    v128 = swift_getWitnessTable();
    v129 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220);
    v528 = v128;
    v529 = v129;
    swift_getWitnessTable();
    sub_1C5941600(&v532, &v559);
    v130 = sub_1C5BCB804();
    (*(*(v130 - 8) + 8))(&v532, v130);
    v127 = v413;
    goto LABEL_19;
  }

  sub_1C5941EBC(1, &v559);
  sub_1C5BC8AC4();
  sub_1C5BC9894();
  v123 = v411;
  v124 = swift_getWitnessTable();
  sub_1C5BC9F84();
  (*(*(v123 - 8) + 8))(&v559, v123);
  v126 = *v386;
  v125 = *(v386 + 8);
  if (*(v386 + 16) != 1)
  {

    sub_1C5BCB4E4();
    v131 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v132 = v399;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v126, v125, 0);
    (*(v398 + 8))(v132, v118);
    v127 = v413;
    if (!*(&v559 + 1))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  *&v559 = *v386;
  *(&v559 + 1) = v125;

  v127 = v413;
  if (v125)
  {
LABEL_15:
  }

LABEL_18:
  v133 = sub_1C5BC8AB4();
  v421 = v124;
  v422 = MEMORY[0x1E6980A30];
  v134 = swift_getWitnessTable();
  sub_1C5BCA294();
  (*(*(v133 - 8) + 8))(&v532, v133);
  v135 = sub_1C5BC8AB4();
  v136 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220);
  v419 = v134;
  v420 = v136;
  v137 = swift_getWitnessTable();
  sub_1C593EDC0(&v559, v135, v137);
  v138 = *(*(v135 - 8) + 8);
  v138(&v559, v135);
  sub_1C593EDC0(&v532, v135, v137);
  v138(&v532, v135);
  memcpy(v417, v418, sizeof(v417));
  sub_1C5941600(v417, &v559);
  v139 = sub_1C5BCB804();
  (*(*(v139 - 8) + 8))(v417, v139);
LABEL_19:
  v140 = (v127 + *(v101 + 52));
  v141 = *v140;
  v142 = *(v140 + 8);

  if ((v142 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v143 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v144 = v399;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v398 + 8))(v144, v118);
    v141 = v532;
  }

  v145 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  *&v532 = v141;
  sub_1C5B8013C(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  v146 = *(v141 + 16);

  if (v146 != 1)
  {
    *&v532 = sub_1C5BCA484();
    v181 = v392;
    swift_getWitnessTable();
    sub_1C5941738(&v532, v181, MEMORY[0x1E69815C0]);

    goto LABEL_47;
  }

  sub_1C5B46EC0(&v532);
  *&v418[0] = v532;
  BYTE8(v418[0]) = BYTE8(v532);
  LOBYTE(v417[0]) = 1;
  v147 = v322;
  v148 = swift_getWitnessTable();
  sub_1C5941958(v417, v147, v148);
  sub_1C5942458(*&v418[0], SBYTE8(v418[0]));
  *&v515 = v510;
  BYTE8(v515) = BYTE8(v510);
  *&v516 = v511;
  WORD4(v516) = WORD4(v511);
  sub_1C5B7B224(v101, &v532);
  v149 = v389;
  v150 = v316;
  if (v532 != 1)
  {
    goto LABEL_26;
  }

  v152 = *v386;
  v151 = *(v386 + 8);
  if (*(v386 + 16) == 1)
  {
    *&v532 = *v386;
    *(&v532 + 1) = v151;

    if (v151)
    {
LABEL_25:

LABEL_26:
      *&v532 = v145;
      sub_1C5B8013C(&unk_1EDA46330, MEMORY[0x1E697F5E0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193270);
      sub_1C5924F54(&qword_1EDA45EB8, &qword_1EC193270);
      sub_1C5BCB8F4();
      goto LABEL_27;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v182 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v145 = MEMORY[0x1E69E7CC0];
    v183 = v399;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v152, v151, 0);
    (*(v398 + 8))(v183, v118);
    if (*(&v532 + 1))
    {
      goto LABEL_25;
    }
  }

  sub_1C5BC90A4();
LABEL_27:
  v153 = sub_1C5941A04();
  v443 = v148;
  v322 = v153;
  v444 = v153;
  v154 = swift_getWitnessTable();
  v155 = v317;
  sub_1C5BCA134();
  v156 = *(v385 + 8);
  v327 = v385 + 8;
  v316 = v156;
  (v156)(v150, v149);
  sub_1C5942458(v515, SBYTE8(v515));

  sub_1C5B7B224(v101, &v532);
  v157 = sub_1C5B8013C(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v441 = v154;
  v442 = v157;
  v158 = v380;
  v159 = swift_getWitnessTable();
  v160 = v319;
  sub_1C5BCA1D4();
  (*(v318 + 8))(v155, v158);
  v161 = sub_1C5943498();
  v439 = v159;
  v318 = v161;
  v440 = v161;
  v162 = v381;
  v163 = swift_getWitnessTable();
  v164 = v321;
  MEMORY[0x1C694E3D0](3, v162, v163);
  v165 = (*(v320 + 8))(v160, v162);
  MEMORY[0x1EEE9AC00](v165);
  v166 = v414;
  *(&v316 - 2) = v412;
  *(&v316 - 1) = v166;
  sub_1C5BCAA54();
  v437 = v163;
  v381 = v157;
  v438 = v157;
  v167 = v382;
  v168 = swift_getWitnessTable();
  v169 = v324;
  sub_1C5BCA2C4();
  (*(v323 + 8))(v164, v167);
  v170 = swift_getWitnessTable();
  v435 = v168;
  v436 = v170;
  v171 = v383;
  v172 = swift_getWitnessTable();
  v173 = v326;
  sub_1C5B4ABDC(v171, v172);
  (*(v325 + 8))(v169, v171);
  v174 = sub_1C5B8013C(&qword_1EC1996D8, type metadata accessor for NowPlayingColorSchemeModifier);
  v433 = v172;
  v434 = v174;
  v175 = v388;
  v380 = swift_getWitnessTable();
  sub_1C593EDC0(v173, v175, v380);
  v176 = *(v362 + 8);
  v383 = v362 + 8;
  v382 = v176;
  (v176)(v173, v175);
  sub_1C5B7B224(v410, &v532);
  v177 = v335;
  if (v532 != 1)
  {
    goto LABEL_40;
  }

  v179 = *v386;
  v178 = *(v386 + 8);
  v180 = v398;
  if (*(v386 + 16) != 1)
  {

    sub_1C5BCB4E4();
    v184 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v185 = v399;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v179, v178, 0);
    (*(v180 + 8))(v185, v400);
    v178 = *(&v532 + 1);
    v179 = v532;
    if (*(&v532 + 1))
    {
      goto LABEL_30;
    }

LABEL_37:

    goto LABEL_40;
  }

  *&v532 = *v386;
  *(&v532 + 1) = v178;

  if (!v178)
  {
    goto LABEL_37;
  }

LABEL_30:
  if (v179 == 0x6575657571 && v178 == 0xE500000000000000)
  {

    goto LABEL_39;
  }

  v186 = sub_1C5BCBDE4();

  if ((v186 & 1) == 0)
  {
LABEL_40:
    memset(v535, 0, sizeof(v535));
    v534 = 0u;
    v533 = 0u;
    v532 = 0u;
    v536 = 1uLL;
    v537 = 0uLL;
    goto LABEL_41;
  }

LABEL_39:
  *(&v533 + 1) = &type metadata for Features;
  *&v534 = sub_1C5A2E158();
  v187 = swift_allocObject();
  *&v532 = v187;
  *(v187 + 16) = "MediaCoreUI";
  *(v187 + 24) = 11;
  *(v187 + 32) = 2;
  *(v187 + 40) = "HoveringChapterPicker";
  *(v187 + 48) = 21;
  *(v187 + 56) = 2;
  v188 = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v532);
  if (v188)
  {
    goto LABEL_40;
  }

  KeyPath = swift_getKeyPath();
  LOBYTE(v418[0]) = 0;
  _s5DebugCMa();
  sub_1C5B8013C(&qword_1EDA4A208, _s5DebugCMa);
  v311 = sub_1C5BC8C84();
  v313 = v312;
  _s5QueueCMa();
  sub_1C5B8013C(qword_1EDA4A0C0, _s5QueueCMa);
  v314 = sub_1C5BC8C84();
  *&v532 = KeyPath;
  BYTE9(v535[1]) = 0;
  *&v536 = v311;
  *(&v536 + 1) = v313;
  *&v537 = v314;
  *(&v537 + 1) = v315;
LABEL_41:
  v189 = v331;
  sub_1C5B4816C(v331);
  LOBYTE(v418[0]) = 1;
  v190 = v334;
  v191 = swift_getWitnessTable();
  sub_1C5941958(v418, v190, v191);
  (*(v333 + 8))(v189, v190);
  sub_1C5B7B224(v410, v418);
  v192 = v400;
  v193 = v389;
  if (LOBYTE(v418[0]) == 1)
  {
    v195 = *v386;
    v194 = *(v386 + 8);
    if (*(v386 + 16) == 1)
    {
      *&v418[0] = *v386;
      *(&v418[0] + 1) = v194;

      if (v194)
      {
LABEL_44:

        goto LABEL_45;
      }
    }

    else
    {

      sub_1C5BCB4E4();
      v308 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v309 = v399;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C596AC58(v195, v194, 0);
      (*(v398 + 8))(v309, v192);
      if (*(&v418[0] + 1))
      {
        goto LABEL_44;
      }
    }

    v196 = v332;
    sub_1C5BC90A4();
    goto LABEL_46;
  }

LABEL_45:
  v196 = v332;
  sub_1C5BC90B4();
LABEL_46:
  v431 = v191;
  v432 = v322;
  v197 = v345;
  v198 = swift_getWitnessTable();
  v199 = v337;
  sub_1C5BCA134();
  (v316)(v196, v193);
  (*(v336 + 8))(v177, v197);
  sub_1C5B7B224(v410, v418);
  v429 = v198;
  v200 = v381;
  v430 = v381;
  v201 = v347;
  v202 = swift_getWitnessTable();
  v203 = v338;
  sub_1C5BCA1D4();
  (*(v339 + 8))(v199, v201);
  v427 = v202;
  v428 = v318;
  v204 = v349;
  v205 = swift_getWitnessTable();
  v206 = v341;
  sub_1C5BCA184();
  (*(v342 + 8))(v203, v204);
  v425 = v205;
  v426 = v200;
  v207 = v350;
  v208 = swift_getWitnessTable();
  v209 = v344;
  sub_1C5BCA294();
  (*(v343 + 8))(v206, v207);
  v210 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220);
  v423 = v208;
  v424 = v210;
  v211 = v354;
  v212 = swift_getWitnessTable();
  v213 = v363;
  sub_1C593EDC0(v209, v211, v212);
  v214 = v346;
  v215 = *(v346 + 8);
  v215(v209, v211);
  v216 = v340;
  v217 = v388;
  (*(v362 + 16))(v340, v384, v388);
  v417[4] = v535[1];
  v417[5] = v536;
  v417[6] = v537;
  v417[0] = v532;
  v417[1] = v533;
  v417[2] = v534;
  v417[3] = v535[0];
  *&v524 = v216;
  *(&v524 + 1) = v417;
  v218 = v348;
  (*(v214 + 16))(v348, v213, v211);
  *&v525 = v218;
  sub_1C59400B0(&v532, v418, &qword_1EC1996C8);
  *&v499 = v217;
  *(&v499 + 1) = v351;
  *&v500 = v211;
  *&v521 = v380;
  *(&v521 + 1) = sub_1C5B80064();
  *&v522 = v212;
  v219 = v352;
  sub_1C594226C(&v524, 3uLL, &v499);
  v215(v218, v211);
  v418[4] = v417[4];
  v418[5] = v417[5];
  v418[6] = v417[6];
  v418[0] = v417[0];
  v418[1] = v417[1];
  v418[3] = v417[3];
  v418[2] = v417[2];
  sub_1C5924EF4(v418, &qword_1EC1996C8);
  v220 = v216;
  v221 = v382;
  (v382)(v220, v217);
  v222 = v392;
  swift_getWitnessTable();
  sub_1C5950E54(v219, v222);
  sub_1C5924EF4(&v532, &qword_1EC1996C8);
  (*(v353 + 8))(v219, v222);
  v215(v363, v211);
  v221(v384, v217);
  v101 = v410;
LABEL_47:
  sub_1C5941830(v418);
  sub_1C5BC8AC4();
  sub_1C5BC9894();
  v223 = v365;
  v224 = swift_getWitnessTable();
  sub_1C5BC9F84();
  v521 = v418[0];
  v522 = v418[1];
  v523[0] = v418[2];
  *(v523 + 9) = *(&v418[2] + 9);
  (*(*(v223 - 8) + 8))(&v521, v223);
  v417[2] = v534;
  v417[3] = v535[0];
  *(&v417[3] + 9) = *(v535 + 9);
  v417[0] = v532;
  v417[1] = v533;
  LOBYTE(v510) = 0;
  v519 = v224;
  v520 = MEMORY[0x1E6980A30];
  v225 = v366;
  v226 = swift_getWitnessTable();
  sub_1C5941958(&v510, v225, v226);
  v526 = v417[2];
  v527[0] = v417[3];
  *(v527 + 9) = *(&v417[3] + 9);
  v525 = v417[1];
  v524 = v417[0];
  (*(*(v225 - 8) + 8))(&v524, v225);
  v417[2] = v418[2];
  v417[3] = v418[3];
  v417[4] = v418[4];
  *(&v417[4] + 10) = *(&v418[4] + 10);
  v417[0] = v418[0];
  v417[1] = v418[1];
  sub_1C5B7B224(v101, &v532);
  if (v532)
  {
    *&v532 = MEMORY[0x1E69E7CC0];
    sub_1C5B8013C(&unk_1EDA46330, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193270);
    sub_1C5924F54(&qword_1EDA45EB8, &qword_1EC193270);
    v227 = v364;
    v228 = v389;
    sub_1C5BCB8F4();
  }

  else
  {
    v227 = v364;
    sub_1C5BC90A4();
    v228 = v389;
  }

  v229 = sub_1C5941A04();
  v508 = v226;
  v509 = v229;
  v230 = v369;
  v231 = swift_getWitnessTable();
  v232 = v367;
  sub_1C5BCA134();
  (*(v385 + 8))(v227, v228);
  v512 = v417[2];
  v513 = v417[3];
  v514[0] = v417[4];
  *(v514 + 10) = *(&v417[4] + 10);
  v510 = v417[0];
  v511 = v417[1];
  (*(*(v230 - 8) + 8))(&v510, v230);
  v233 = v368;
  v234 = v406;
  MEMORY[0x1C694CCB0](3, v406);
  v235 = v393 + 8;
  v236 = *(v393 + 8);
  v236(v232, v234);
  v237 = v372;
  sub_1C5BC8A84();
  v236(v233, v234);
  v238 = sub_1C5B8013C(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v506 = v231;
  v507 = v238;
  v385 = swift_getWitnessTable();
  sub_1C593EDC0(v237, v234, v385);
  v389 = v235;
  v388 = v236;
  v236(v237, v234);
  sub_1C59416B4(v503);
  v239 = v504;
  v240 = v505;
  __swift_project_boxed_opaque_existential_0(v503, v504);
  *(v518 + 10) = *(v387 + 58);
  v241 = v387[3];
  v517 = v387[2];
  v518[0] = v241;
  v242 = *v387;
  v516 = v387[1];
  v515 = v242;
  if (BYTE9(v518[1]))
  {
    v243 = v387[3];
    v501 = v387[2];
    v502[0] = v243;
    *(v502 + 9) = *(v387 + 57);
    v244 = *v387;
    v500 = v387[1];
    v499 = v244;
    v245 = v400;
  }

  else
  {

    sub_1C5BCB4E4();
    v246 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v247 = v399;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v515, &unk_1EC194DE0);
    v245 = v400;
    (*(v398 + 8))(v247, v400);
  }

  v248 = MEMORY[0x1E6980A30];
  v534 = v501;
  v535[0] = v502[0];
  *(v535 + 9) = *(v502 + 9);
  v533 = v500;
  v532 = v499;
  v249 = (*(v240 + 16))(&v532, v239, v240);
  v250 = sub_1C593EBD4(1u, v249);

  __swift_destroy_boxed_opaque_existential_0(v503);
  if (v250)
  {
    v251 = v407;
    (*(v378 + 56))(v407, 1, 1, v395);
    v252 = swift_getWitnessTable();
    v253 = sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130);
    v447 = v252;
    v448 = v253;
    v254 = swift_getWitnessTable();
    v255 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220);
    v445 = v254;
    v446 = v255;
    swift_getWitnessTable();
    goto LABEL_63;
  }

  sub_1C5941EBC(0, &v532);
  sub_1C5B7B224(v410, &v488);
  if (v488)
  {
    v257 = v355;
    v256 = v356;
    v258 = v357;
    (*(v356 + 104))(v355, *MEMORY[0x1E697DBA8], v357);
  }

  else
  {
    v257 = v355;
    sub_1C59421E4(v355);
    v256 = v356;
    v258 = v357;
  }

  v259 = v399;
  v260 = v411;
  v261 = swift_getWitnessTable();
  sub_1C5BC9DC4();
  (*(v256 + 8))(v257, v258);
  (*(*(v260 - 8) + 8))(&v532, v260);
  v263 = *v386;
  v262 = *(v386 + 8);
  if (*(v386 + 16) != 1)
  {

    sub_1C5BCB4E4();
    v264 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v263, v262, 0);
    (*(v398 + 8))(v259, v245);
    if (!*(&v532 + 1))
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  *&v532 = *v386;
  *(&v532 + 1) = v262;

  if (v262)
  {
LABEL_60:
  }

LABEL_62:
  v265 = sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130);
  v497 = v261;
  v498 = v265;
  v266 = v397;
  v267 = swift_getWitnessTable();
  v268 = v358;
  v269 = v377;
  sub_1C5BCA294();
  (*(v360 + 8))(v269, v266);
  v270 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220);
  v495 = v267;
  v496 = v270;
  v271 = v395;
  v272 = swift_getWitnessTable();
  v273 = v359;
  sub_1C593EDC0(v268, v271, v272);
  v274 = v378;
  v275 = *(v378 + 8);
  v275(v268, v271);
  v276 = v361;
  sub_1C593EDC0(v273, v271, v272);
  v275(v273, v271);
  v251 = v407;
  (*(v274 + 32))(v407, v276, v271);
  (*(v274 + 56))(v251, 0, 1, v271);
  v248 = MEMORY[0x1E6980A30];
LABEL_63:
  v277 = v410;
  sub_1C5941600(v251, v405);
  v278 = *(v394 + 8);
  v413 = v394 + 8;
  v400 = v278;
  v278(v251, v409);
  sub_1C5B7B224(v277, &v532);
  if (v532 == 1)
  {
    *&v532 = sub_1C5A46560();
    BYTE8(v532) = v279 & 1;
    sub_1C5BC8AC4();
    sub_1C5BC9894();
    _s31TrackSectionsTouchDetectionViewVMa();
    v280 = swift_getWitnessTable();
    sub_1C5BC9F84();

    v475 = v488;
    LOBYTE(v476) = BYTE8(v488);
    v477 = v489;
    LOBYTE(v478) = v490;
    v281 = sub_1C5BC8AB4();
    v449 = v280;
    v450 = v248;
    v282 = swift_getWitnessTable();
    sub_1C593EDC0(&v475, v281, v282);

    v475 = v532;
    LOBYTE(v476) = BYTE8(v532);
    v477 = v533;
    LOBYTE(v478) = BYTE8(v533);
    sub_1C593EDC0(&v475, v281, v282);

    v469 = v488;
    v470 = BYTE8(v488);
    v471 = v489;
    LOBYTE(v472) = v490;
    sub_1C5941600(&v469, &v475);

    v283 = v475;
    v284 = v476;
    v285 = v477;
    v286 = v478;
  }

  else
  {
    v488 = xmmword_1C5BF09D0;
    v489 = 0;
    LOBYTE(v490) = 0;
    _s31TrackSectionsTouchDetectionViewVMa();
    sub_1C5BC8AB4();
    v493 = swift_getWitnessTable();
    v494 = v248;
    swift_getWitnessTable();
    sub_1C5941600(&v488, &v532);
    v284 = *(&v532 + 1);
    v283 = v532;
    v285 = v533;
    v286 = BYTE8(v533);
  }

  v386 = v283;
  v485 = v370;
  v486 = v371;
  v487 = v390;
  *&v488 = &v485;
  v384 = sub_1C5BC8AB4();
  v403 = sub_1C5BC8AB4();
  v287 = sub_1C5BCB804();
  v410 = *(v287 - 8);
  v288 = v287;
  (*(v410 + 16))(&v532, &v559);
  *(&v488 + 1) = &v532;
  v289 = v391;
  v290 = v402;
  (*(v408 + 16))(v391, v401);
  v489 = v289;
  v291 = v396;
  v292 = v406;
  (*(v393 + 16))(v396, v404, v406);
  v490 = v291;
  v293 = v407;
  v294 = v409;
  (*(v394 + 16))();
  v481 = v283;
  v399 = v284;
  v482 = v284;
  v398 = v285;
  v483 = v285;
  LODWORD(v387) = v286;
  v484 = v286;
  v491 = v293;
  v492 = &v481;
  sub_1C5B80034(v283, v284);
  _s18ArtworkPlaceholderVMa();
  sub_1C5BC8AB4();
  v475 = sub_1C5BCB804();
  v476 = v288;
  v383 = v288;
  v477 = v290;
  v478 = v292;
  v479 = v294;
  v412 = _s31TrackSectionsTouchDetectionViewVMa();
  v414 = sub_1C5BC8AB4();
  v480 = sub_1C5BCB804();
  v467 = swift_getWitnessTable();
  v295 = MEMORY[0x1E6980A30];
  v468 = MEMORY[0x1E6980A30];
  v466 = swift_getWitnessTable();
  v469 = swift_getWitnessTable();
  v296 = swift_getWitnessTable();
  v464 = v296;
  v465 = v295;
  v297 = swift_getWitnessTable();
  v298 = sub_1C5924F54(&qword_1EDA462B8, &qword_1EC197220);
  v462 = v297;
  v463 = v298;
  v461 = swift_getWitnessTable();
  v470 = swift_getWitnessTable();
  v459 = swift_getWitnessTable();
  v460 = MEMORY[0x1E6981580];
  v299 = v402;
  v471 = swift_getWitnessTable();
  v472 = v385;
  v300 = sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130);
  v457 = v296;
  v458 = v300;
  v455 = swift_getWitnessTable();
  v456 = v298;
  v454 = swift_getWitnessTable();
  v301 = v409;
  v473 = swift_getWitnessTable();
  v452 = swift_getWitnessTable();
  v453 = v295;
  v451 = swift_getWitnessTable();
  v474 = swift_getWitnessTable();
  sub_1C594226C(&v488, 6uLL, &v475);
  sub_1C594243C(v376, v375, v374);
  sub_1C5B80048(v386, v399);
  v302 = v400;
  v400(v405, v301);
  v303 = v406;
  v304 = v388;
  (v388)(v404, v406);
  v305 = *(v408 + 8);
  v408 += 8;
  v305(v401, v299);
  v306 = *(v410 + 8);
  v307 = v383;
  v306(&v559, v383);
  sub_1C5B80048(v481, v482);
  v302(v407, v409);
  v304(v396, v303);
  v305(v391, v402);
  v306(&v532, v307);
  sub_1C594243C(v485, *(&v485 + 1), v486);
}

uint64_t sub_1C5B7EE10()
{
  *&v4[0] = sub_1C5BC8C84();
  *(&v4[0] + 1) = v0;
  v1 = type metadata accessor for NowPlayingView.OverlayView();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v4, v1, WitnessTable);
  swift_unknownObjectRelease();
  v4[0] = v4[1];
  sub_1C593EDC0(v4, v1, WitnessTable);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5B7EEF0(void (*a1)(void))
{
  a1();
  sub_1C5BC8F44();
  return v2;
}

uint64_t sub_1C5B7EF3C@<X0>(uint64_t a1@<X8>)
{
  sub_1C59434EC();
  result = sub_1C5BC8F44();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void sub_1C5B7EFE8(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingView();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-v4];
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C5BC7D64();
  __swift_project_value_buffer(v6, qword_1EDA5DA78);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_1C5BC7D44();
  v8 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    sub_1C5B7B224(v2, &v16);
    v15[6] = v16;
    v11 = sub_1C5BCAEA4();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_1C592ADA8(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1C5922000, v7, v8, "[NowPlayingView] changed player style: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1C69510F0](v10, -1, -1);
    MEMORY[0x1C69510F0](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1C5B7F238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26 = a4;
  v23 = a2;
  v28 = &type metadata for NowPlayingLookupID;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = sub_1C5950C90();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for ViewProvider();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = v21 - v7;
  v24 = AssociatedConformanceWitness;
  v25 = AssociatedTypeWitness;
  v21[1] = swift_getAssociatedTypeWitness();
  v9 = sub_1C5BCB804();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  if (a1)
  {
    v16 = *(a3 + 384);
    swift_unknownObjectRetain();
    v16(v23, a3);
    swift_unknownObjectRelease();
    v28 = 0x79616C7265764FLL;
    AssociatedTypeWitness = 0xE700000000000000;
    v17 = v22;
    sub_1C595BC70(&v28, v22);

    (*(v6 + 8))(v8, v17);
    v27 = swift_getAssociatedConformanceWitness();
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(v12, v9, WitnessTable);
    v19 = *(v10 + 8);
    v19(v12, v9);
    sub_1C593EDC0(v15, v9, WitnessTable);
    return (v19)(v15, v9);
  }

  else
  {
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}