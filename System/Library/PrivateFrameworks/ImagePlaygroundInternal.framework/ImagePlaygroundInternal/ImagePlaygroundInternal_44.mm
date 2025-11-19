uint64_t sub_1D2750AF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2879368();
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
      result = sub_1D2879368();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D275115C(&qword_1EC6E1710, &qword_1EC6DDFC8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFC8);
            v9 = sub_1D23ECAA8(v13, i, a3);
            v11 = *v10;
            sub_1D2870F78();
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
        type metadata accessor for PhotoGridElementViewModel();
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

uint64_t sub_1D2750C84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2879368();
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
      result = sub_1D2879368();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D275115C(&qword_1EC6E16F0, &qword_1EC6E16E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E16E8);
            v9 = sub_1D23ECB30(v13, i, a3);
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
        sub_1D22BCFD0(0, &qword_1EC6D74E0);
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

uint64_t sub_1D2750E24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = v8;
  *(v2 + 56) = 1;
  *(v2 + 64) = v8;
  *(v2 + 16) = a1;
  (*(v5 + 104))(v7, *MEMORY[0x1E696E3A0], v4);
  sub_1D2870F78();
  LOBYTE(a1) = sub_1D2872058();
  (*(v5 + 8))(v7, v4);
  if (a1)
  {
    sub_1D2873B58();
    sub_1D2873B48();
    sub_1D2751114(&qword_1EC6E16C8, v9, type metadata accessor for ExternalProviderInfoManager);
    sub_1D2870F78();
    sub_1D2873B28();

    sub_1D2873B48();
    sub_1D2873B38();

    if (v16)
    {
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v10 = sub_1D2873B68();
      __swift_destroy_boxed_opaque_existential_0(v15);
      v11 = v10 == 0;
    }

    else
    {
      sub_1D22BD238(v15, &qword_1EC6E16D0);
      v11 = 0;
    }

    v12 = *(v2 + 56);
    *(v2 + 56) = v11;
    sub_1D274F9F4(v12);
  }

  return v2;
}

uint64_t sub_1D275104C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D274E994(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D2751114(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D275115C(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1D27511B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2751218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2751278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D27512E0(__int16 a1)
{
  sub_1D2879168();

  strcpy(v6, "objectName: ");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  if (a1)
  {
    v2 = 0x6F6C42656E616C50;
  }

  else
  {
    v2 = 0x73676E69646E6962;
  }

  if (a1)
  {
    v3 = 0xE900000000000062;
  }

  else
  {
    v3 = 0xEC00000065646F4ELL;
  }

  MEMORY[0x1D38A0C50](v2, v3);

  MEMORY[0x1D38A0C50](0x747265706F72702FLL, 0xEF203A656D614E79);
  v4 = sub_1D27513EC(SHIBYTE(a1));
  MEMORY[0x1D38A0C50](v4);

  return v6[0];
}

unint64_t sub_1D27513EC(char a1)
{
  result = 0x7461526567616D69;
  switch(a1)
  {
    case 1:
      result = 0x69735F6567616D69;
      break;
    case 2:
      result = 0x6F705F656C707061;
      break;
    case 3:
      result = 0x63735F656C707061;
      break;
    case 4:
      result = 0x736F705F626F6C62;
      break;
    case 5:
      result = 0x6163735F626F6C62;
      break;
    case 6:
    case 26:
    case 44:
      result = 0xD000000000000012;
      break;
    case 7:
      v3 = 5;
      goto LABEL_29;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
      result = 0xD000000000000014;
      break;
    case 25:
      result = 0x73736572676F7270;
      break;
    case 27:
      result = 0x646F4D746867696CLL;
      break;
    case 28:
      result = 0x725F6E6565726373;
      break;
    case 29:
      result = 0x5F79636E6574616CLL;
      break;
    case 30:
    case 33:
      result = 0xD000000000000016;
      break;
    case 31:
      result = 0xD000000000000018;
      break;
    case 32:
      result = 0xD000000000000017;
      break;
    case 34:
    case 45:
      v3 = 10;
LABEL_29:
      result = v3 | 0xD000000000000010;
      break;
    case 35:
      result = 0xD000000000000025;
      break;
    case 36:
      result = 0xD000000000000013;
      break;
    case 37:
      result = 0x67616D49776F6873;
      break;
    case 38:
      result = 0x6E65675F626F6C62;
      break;
    case 39:
      result = 0xD000000000000010;
      break;
    case 40:
      result = 0x6F74636172747461;
      break;
    case 41:
      result = 0x6F632E6567616D69;
      break;
    case 42:
      result = 0x625F656C63726963;
      break;
    case 43:
      result = 0x6F5F656C63726963;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D275186C@<X0>(__int16 a1@<W0>, _OWORD *a2@<X8>)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1D2872668();
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = sub_1D27512E0(a1 & 0xFF00 | 1u);
      v14 = sub_1D23D7C84(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1D226E000, v8, v9, "No node for binding %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    result = (*(v5 + 8))(v7, v4);
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v16 = sub_1D27513EC(SHIBYTE(a1));
    sub_1D2777570(v16, v17, a2);
  }

  return result;
}

void sub_1D2751A74(void *a1, char a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_1D2873CB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26[-2] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D2751D2C(a1, a2, a3);
  if (v13)
  {
    v14 = v13;
    [a1 bounds];
    *&v15 = CGRectGetWidth(v27);
    v25 = v15;
    [a1 bounds];
    Height = CGRectGetHeight(v28);
    *&v17.f64[0] = v25;
    v17.f64[1] = Height;
    v18 = [objc_opt_self() valueWithVFXFloat2_];
    v26[3] = sub_1D22BCFD0(0, &qword_1ED89CC90);
    v26[0] = v18;
    v19 = v18;
    sub_1D2777178(v26, 0x69735F6567616D69, 0xEA0000000000657ALL, 1);
    __swift_destroy_boxed_opaque_existential_0(v26);
    swift_getObjectType();
    v26[0] = v14;
    swift_unknownObjectRetain();
    v20 = sub_1D2879608();
    v21 = sub_1D2878068();
    [a5 setValue:v20 forKeyPath:v21];

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D2872668();
    v22 = sub_1D2873CA8();
    v23 = sub_1D2878A18();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D226E000, v22, v23, "No content texture provided to load in blob's content", v24, 2u);
      MEMORY[0x1D38A3520](v24, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

id sub_1D2751D2C(void *a1, char a2, double a3)
{
  v4 = v3;
  [a1 frame];
  if (v9 == 0.0 && v8 == 0.0)
  {
    return 0;
  }

  v10 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  v11 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v12 = sub_1D28780A8();
  v14 = v12;
  v15 = v13;
  if (v10)
  {
    type metadata accessor for CGColorSpace(0);
    v37 = v16;
    *&v36 = v10;
    sub_1D23C3FAC(&v36, v35);
    v17 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E935C(v35, v14, v15, isUniquelyReferenced_nonNull_native);

    v38 = v11;
  }

  else
  {
    sub_1D25D2C38(v12, v13, &v36);

    sub_1D22BD238(&v36, &qword_1EC6E1900);
    v11 = v38;
  }

  v19 = sub_1D28780A8();
  v21 = v20;
  v37 = MEMORY[0x1E69E6370];
  LOBYTE(v36) = 1;
  sub_1D23C3FAC(&v36, v35);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D24E935C(v35, v19, v21, v22);

  v23 = sub_1D27552FC(*(v4 + 40), a3);
  if (!v23)
  {

    return 0;
  }

  v34 = v23;
  v24 = sub_1D275464C(v23, v11, a3);

  if (!v24)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v25 = *(v4 + 16);
  if (v25)
  {
    v26 = objc_opt_self();
    v27 = v25;
    [v26 begin];
    [v26 setDisableActions_];
    v28 = [v27 layer];
    if (v28 && (v29 = v28, sub_1D22BCFD0(0, &qword_1ED89CCB0), v30 = a1, v31 = sub_1D2878D78(), v30, v29, (v31 & 1) != 0) && (a2 & 1) == 0)
    {
      v32 = &selRef_commit;
    }

    else
    {
      [v27 setLayer_];
      [v26 commit];
      v32 = &selRef_flush;
    }

    [v26 *v32];
  }

  [v24 beginFrameAtTime:0 timeStamp:CACurrentMediaTime()];
  [v24 updateBounds];
  [v24 addUpdateRect_];
  [v24 render];
  [v24 endFrame];

  return v34;
}

void sub_1D27520C0(void *a1)
{
  v2 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1D2879608();
  v4 = sub_1D2878068();
  [v2 setValue:v3 forKeyPath:v4];
  swift_unknownObjectRelease();
}

void sub_1D275215C()
{
  v1 = *(v0 + 8);
  v2 = sub_1D2878068();
  [v1 setValue:0 forKeyPath:v2];
}

void sub_1D27521D8()
{
  v1 = *(v0 + 16);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t sub_1D2752230(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F6C42656E616C50;
  }

  else
  {
    v3 = 0x73676E69646E6962;
  }

  if (v2)
  {
    v4 = 0xEC00000065646F4ELL;
  }

  else
  {
    v4 = 0xE900000000000062;
  }

  if (*a2)
  {
    v5 = 0x6F6C42656E616C50;
  }

  else
  {
    v5 = 0x73676E69646E6962;
  }

  if (*a2)
  {
    v6 = 0xE900000000000062;
  }

  else
  {
    v6 = 0xEC00000065646F4ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2879618();
  }

  return v8 & 1;
}

uint64_t sub_1D27522E4()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D2752374()
{
  sub_1D2877F38();
}

uint64_t sub_1D27523F0()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D275247C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D2879488();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D27524DC(uint64_t *a1@<X8>)
{
  v2 = 0x73676E69646E6962;
  if (*v1)
  {
    v2 = 0x6F6C42656E616C50;
  }

  v3 = 0xEC00000065646F4ELL;
  if (*v1)
  {
    v3 = 0xE900000000000062;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D2752528(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D27513EC(*a1);
  v5 = v4;
  if (v3 == sub_1D27513EC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2879618();
  }

  return v8 & 1;
}

uint64_t sub_1D27525B0()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D27513EC(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D2752614()
{
  sub_1D27513EC(*v0);
  sub_1D2877F38();
}

uint64_t sub_1D2752668()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D27513EC(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D27526C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D27552A8();
  *a1 = result;
  return result;
}

unint64_t sub_1D27526F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D27513EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D2752724()
{
  v1 = *(v0 + 1);
  sub_1D28797D8();
  sub_1D2877F38();

  sub_1D27513EC(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D27527E8()
{
  v1 = *(v0 + 1);
  sub_1D2877F38();

  sub_1D27513EC(v1);
  sub_1D2877F38();
}

uint64_t sub_1D275289C()
{
  v1 = *(v0 + 1);
  sub_1D28797D8();
  sub_1D2877F38();

  sub_1D27513EC(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D2752988(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  *(v1 + 24) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = sub_1D25DAAE0(MEMORY[0x1E69E7CC0]);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  type metadata accessor for LayerRenderer();
  swift_allocObject();
  *(v1 + 64) = sub_1D275458C();
  *(v1 + 72) = 0;
  *(v1 + 80) = 0x4000000000000000;
  *(v1 + 88) = v7;
  *(v1 + 96) = v7;
  *(v1 + 104) = v7;
  sub_1D28738E8();
  sub_1D28738A8();
  v8 = sub_1D2873838();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {

    sub_1D22BD238(v6, &unk_1EC6E1770);

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_1D22BD238(v6, &unk_1EC6E1770);
    *(v1 + 16) = a1;
    type metadata accessor for AnimationBezierCurveGenerator();
    swift_allocObject();
    *(v1 + 56) = sub_1D27544D0(60, 0x3F8000003ECCCCCDLL, 0x3F8000003F666666);
  }

  return v2;
}

double sub_1D2752B9C@<D0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1D2873838();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v2 + 32);
  if (*(v12 + 16))
  {
    v13 = sub_1D25D100C(a1 & 0xFF01);
    if (v14)
    {
      sub_1D22D7044(*(v12 + 56) + 40 * v13, &v17);
      sub_1D22D79FC(&v17, v19);
      swift_endAccess();
LABEL_10:
      sub_1D22D79FC(v19, a2);
      return result;
    }
  }

  swift_endAccess();
  sub_1D28738E8();
  sub_1D28738A8();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D22BD238(v7, &unk_1EC6E1770);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
    return result;
  }

  (*(v9 + 32))(v11, v7, v8);
  if (a1)
  {
    sub_1D2879618();
  }

  sub_1D2873828();
  sub_1D27513EC(SHIBYTE(a1));
  sub_1D28737E8();

  if (v18)
  {
    sub_1D22D79FC(&v17, v19);
    sub_1D22D7044(v19, &v17);
    swift_beginAccess();
    sub_1D25CFF40(&v17, a1 & 0xFF01);
    swift_endAccess();
    (*(v9 + 8))(v11, v8);
    goto LABEL_10;
  }

  (*(v9 + 8))(v11, v8);
  sub_1D22BD238(&v17, &qword_1EC6E1750);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D2752F18(void *a1, char a2, double a3)
{
  *(v3 + 80) = a3;
  if ((*(v3 + 40) & 1) == 0)
  {
    v6 = a3;
    v7 = CACurrentMediaTime();
    a3 = v6;
    *(v3 + 48) = v7;
    *(v3 + 40) = 1;
  }

  result = sub_1D2751D2C(a1, a2 & 1, a3);
  if (result)
  {
    [a1 bounds];
    Width = CGRectGetWidth(v14);
    [a1 bounds];
    Height = CGRectGetHeight(v15);
    v10.f64[0] = Width;
    v10.f64[1] = Height;
    v11 = [objc_opt_self() valueWithVFXFloat2_];
    v13[3] = sub_1D22BCFD0(0, &qword_1ED89CC90);
    v13[0] = v11;
    sub_1D2754BC0(v13, 256);
    __swift_destroy_boxed_opaque_existential_0(v13);
    result = swift_unknownObjectRelease();
  }

  if (*(v3 + 40) == 1)
  {
    *(v3 + 40) = 0;
  }

  return result;
}

uint64_t sub_1D2753044(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v6 = v5;
  v88 = a3;
  v89 = a4;
  v87 = *&a2;
  v95 = sub_1D2873878();
  v9 = *(v95 - 8);
  v10 = MEMORY[0x1EEE9AC00](v95);
  v94 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v87 - v12;
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v100 = a1;
  sub_1D2870F68();
  swift_beginAccess();
  v17 = 0;
  v18 = 0;
  v19 = (v14 + 63) >> 6;
  v92 = *MEMORY[0x1E697A518];
  v90 = (v9 + 8);
  v91 = (v9 + 104);
  v20 = v16;
  v21 = MEMORY[0x1E69E7CC0];
  v104 = v6;
  v96 = v19;
  v97 = v13;
LABEL_4:
  v98 = v21;
LABEL_5:
  if (v20)
  {
    v22 = v17;
    v23 = v17;
    goto LABEL_15;
  }

  if (v19 <= v17 + 1)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v19;
  }

  v25 = v24 - 1;
  do
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_121;
    }

    if (v23 >= v19)
    {
      v102 = 0;
      *&v114 = 0;
      v22 = v25;
      v112 = 0u;
      v113 = 0u;
      goto LABEL_16;
    }

    v20 = *(v13 + 8 * v23);
    ++v17;
  }

  while (!v20);
  v22 = v23;
LABEL_15:
  v102 = (v20 - 1) & v20;
  v26 = __clz(__rbit64(v20)) | (v23 << 6);
  v27 = (*(v100 + 48) + 2 * v26);
  v28 = *v27;
  v29 = v27[1];
  sub_1D23C3EE4(*(v100 + 56) + 32 * v26, &v110);
  LOBYTE(v112) = v28;
  BYTE1(v112) = v29;
  sub_1D23C3FAC(&v110, (&v112 + 8));
LABEL_16:
  v124[0] = v112;
  v124[1] = v113;
  v125 = v114;
  if (!v114)
  {
    goto LABEL_103;
  }

  v101 = v22;
  v30 = LOBYTE(v124[0]);
  v31 = BYTE1(v124[0]);
  sub_1D23C3FAC((v124 + 8), v123);
  v99 = v30 | (v31 << 8);
  sub_1D2752B9C(v30 | (v31 << 8), &v112);
  if (!*(&v113 + 1))
  {
    goto LABEL_124;
  }

  sub_1D22D79FC(&v112, v121);
  v32 = *(v6 + 11);
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v33 - 1;
    if (!__OFSUB__(v33, 1))
    {
      goto LABEL_20;
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v71 = sub_1D2879368();
  v34 = v71 - 1;
  if (__OFSUB__(v71, 1))
  {
    goto LABEL_121;
  }

LABEL_20:
  v103 = 0;
  while (1)
  {
    if (v34 > 0)
    {
      v35 = v34 - 1;
      goto LABEL_26;
    }

    if ((v34 != 0) | v103 & 1)
    {
      sub_1D23C3EE4(v123, &v112);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_76;
      }

      v60 = *&v110;
      sub_1D2752B9C(v99, &v110);
      if (v111)
      {
        sub_1D22D79FC(&v110, &v112);
        sub_1D28738E8();
        sub_1D28738C8();
        __swift_destroy_boxed_opaque_existential_0(&v112);
        if (*(&v120 + 1))
        {
          if (swift_dynamicCast())
          {
            if (vabds_f32(v60, *&v112) <= 0.0001)
            {
              __swift_destroy_boxed_opaque_existential_0(v123);
              __swift_destroy_boxed_opaque_existential_0(v121);
              v21 = v98;
LABEL_84:
              v19 = v96;
              v13 = v97;
              v17 = v101;
              v20 = v102;
              goto LABEL_5;
            }

            *(&v113 + 1) = MEMORY[0x1E69E6448];
            *(&v115 + 1) = MEMORY[0x1E69E6448];
            *&v114 = v60;
            sub_1D22D7044(v121, &v116);
            v21 = v98;
LABEL_96:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_1D27CD088(0, *(v21 + 16) + 1, 1, v21);
            }

            v73 = *(v21 + 16);
            v72 = *(v21 + 24);
            if (v73 >= v72 >> 1)
            {
              v21 = sub_1D27CD088((v72 > 1), v73 + 1, 1, v21);
            }

            __swift_destroy_boxed_opaque_existential_0(v123);
            *(v21 + 16) = v73 + 1;
            v74 = v21 + 104 * v73;
            v75 = v112;
            v76 = v114;
            *(v74 + 48) = v113;
            *(v74 + 64) = v76;
            *(v74 + 32) = v75;
            v77 = v115;
            v78 = v116;
            v79 = v117;
            *(v74 + 128) = v118;
            *(v74 + 96) = v78;
            *(v74 + 112) = v79;
            *(v74 + 80) = v77;
            __swift_destroy_boxed_opaque_existential_0(v121);
            v19 = v96;
            v13 = v97;
            v17 = v101;
            v20 = v102;
            goto LABEL_4;
          }

LABEL_76:
          __swift_project_boxed_opaque_existential_1(v121, v122);
          v61 = v93;
          sub_1D2873868();
          v62 = v94;
          v63 = v95;
          (*v91)(v94, v92, v95);
          sub_1D2754F18();
          sub_1D2878368();
          sub_1D2878368();
          v64 = *v90;
          (*v90)(v62, v63);
          v64(v61, v63);
          if (v112 != v110)
          {
            __swift_destroy_boxed_opaque_existential_0(v123);
            v21 = v98;
            goto LABEL_90;
          }

          sub_1D23C3EE4(v123, &v112);
          sub_1D22BCFD0(0, &qword_1ED89CC90);
          v65 = swift_dynamicCast();
          v21 = v98;
          if (!v65)
          {
            goto LABEL_86;
          }

          v66 = v110;
          [v110 VFXFloat2Value];
          v68 = v67;

          sub_1D2752B9C(v99, &v110);
          if (!v111)
          {
            __swift_destroy_boxed_opaque_existential_0(v123);
            sub_1D22BD238(&v110, &qword_1EC6E1750);
            v119 = 0u;
            v120 = 0u;
            goto LABEL_89;
          }

          sub_1D22D79FC(&v110, &v112);
          sub_1D28738E8();
          sub_1D28738C8();
          __swift_destroy_boxed_opaque_existential_0(&v112);
          if (!*(&v120 + 1))
          {
            __swift_destroy_boxed_opaque_existential_0(v123);
LABEL_89:
            sub_1D22BD238(&v119, &qword_1EC6E1900);
LABEL_90:
            v13 = v97;
            v20 = v102;
            __swift_destroy_boxed_opaque_existential_0(v121);
            v19 = v96;
            v17 = v101;
            goto LABEL_5;
          }

          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1768);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_86:
            __swift_destroy_boxed_opaque_existential_0(v123);
            goto LABEL_90;
          }

          v70 = vsub_f32(v68, *&v112);
          if (fabsf(v70.f32[0]) <= 0.0001 && fabsf(v70.f32[1]) <= 0.0001)
          {
            __swift_destroy_boxed_opaque_existential_0(v123);
            __swift_destroy_boxed_opaque_existential_0(v121);
            goto LABEL_84;
          }

          *(&v113 + 1) = v69;
          *(&v115 + 1) = v69;
          *&v114 = v68;
          sub_1D22D7044(v121, &v116);
          goto LABEL_96;
        }
      }

      else
      {
        sub_1D22BD238(&v110, &qword_1EC6E1750);
        v119 = 0u;
        v120 = 0u;
      }

      sub_1D22BD238(&v119, &qword_1EC6E1900);
      goto LABEL_76;
    }

    v35 = 0;
    v103 = 1;
LABEL_26:
    swift_beginAccess();
    v36 = *(v6 + 11);
    v107 = v35;
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1D38A1C30](v34);
    }

    else
    {
      if (v34 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
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
      }

      v37 = *(v36 + 8 * v34 + 32);
      sub_1D2870F78();
    }

    swift_endAccess();
    LOBYTE(v31) = v122;
    __swift_project_boxed_opaque_existential_1(v121, v122);
    v38 = sub_1D2873858();
    v40 = v39;
    swift_beginAccess();
    v6 = *(v37 + 16);
    sub_1D2870F68();
    v41 = sub_1D2755184(v6, v38, v40);
    if (v18)
    {
      break;
    }

    v21 = v41;
    v43 = v42;

    v105 = v34;
    v106 = 0;
    v108 = v37;
    if (v43)
    {
      v21 = *(v6 + 2);
      v44 = v21;
    }

    else
    {
      v109 = v38;
      v45 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_116;
      }

      v46 = *(v6 + 2);
      if (v45 != v46)
      {
        v53 = 104 * v21 + 136;
        v44 = v21 + 1;
        while ((v45 & 0x8000000000000000) == 0)
        {
          if (v44 >= v46)
          {
            goto LABEL_102;
          }

          sub_1D2754A20(&v6[v53], &v112);
          __swift_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));
          if (sub_1D2873858() == v109 && v54 == v40)
          {

            sub_1D2754A58(&v112);
          }

          else
          {
            v56 = sub_1D2879618();

            sub_1D2754A58(&v112);
            if ((v56 & 1) == 0)
            {
              if (v44 != v21)
              {
                if ((v21 & 0x8000000000000000) != 0)
                {
                  goto LABEL_108;
                }

                v57 = *(v6 + 2);
                if (v21 >= v57)
                {
                  goto LABEL_109;
                }

                sub_1D2754A20(&v6[104 * v21 + 32], &v112);
                if (v44 >= v57)
                {
                  goto LABEL_110;
                }

                sub_1D2754A20(&v6[v53], &v110);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v108 + 16) = v6;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v6 = sub_1D278BDA8(v6);
                  *(v108 + 16) = v6;
                }

                if (v21 >= *(v6 + 2))
                {
                  goto LABEL_111;
                }

                sub_1D2755270(&v110, &v6[104 * v21 + 32]);
                v59 = v108;
                *(v108 + 16) = v6;
                if (v44 >= *(v6 + 2))
                {
                  goto LABEL_112;
                }

                sub_1D2755270(&v112, &v6[v53]);
                *(v59 + 16) = v6;
              }

              ++v21;
            }
          }

          ++v44;
          v46 = *(v6 + 2);
          v53 += 104;
          if (v44 == v46)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:

        if (*(v21 + 16))
        {
          if (v89 == 2)
          {
            sub_1D2870F78();
          }

LABEL_116:
          type metadata accessor for VisualEffectRENodes.VisualEffectFloatParameterAnimation();
          v81 = swift_allocObject();
          *(v81 + 24) = 0;
          *(v81 + 32) = 0;
          *(v81 + 40) = 1;
          *(v81 + 56) = 0;
          *(v81 + 64) = 0;
          swift_weakInit();
          *(v81 + 16) = v21;
          v82 = 1.0 / a5;
          *(v81 + 44) = v82;
          v83 = v87;
          v84 = v89;
          if (v88)
          {
            v83 = 0.0;
          }

          *(v81 + 48) = v83;
          *(v81 + 72) = v84;
          swift_weakAssign();

          v85 = swift_beginAccess();
          MEMORY[0x1D38A0E30](v85);
          if (*((*(v6 + 11) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v6 + 11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_119:
            sub_1D2878488();
            return swift_endAccess();
          }

LABEL_122:
          sub_1D2878428();
          goto LABEL_119;
        }
      }

      v44 = v21 + 1;
LABEL_35:
      if (v44 < v21)
      {
        goto LABEL_107;
      }
    }

    v47 = v44;
    v48 = v108;
    sub_1D278CC00(v21, v47);
    swift_endAccess();

    if (*(*(v48 + 16) + 16))
    {
      v6 = v104;
      v49 = v105;
      v18 = v106;
      if (*(v48 + 24) != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *(v48 + 24) = 1;
      v6 = v104;
      v49 = v105;
      v18 = v106;
    }

    swift_beginAccess();
    v50 = *(v6 + 11);
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v50 < 0 || (v50 & 0x4000000000000000) != 0)
    {
      v50 = sub_1D278F320(v50);
    }

    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49 >= v51)
    {
      goto LABEL_113;
    }

    v52 = v51 - 1;
    memmove(((v50 & 0xFFFFFFFFFFFFFF8) + 8 * v49 + 32), ((v50 & 0xFFFFFFFFFFFFFF8) + 8 * v49 + 40), 8 * (v51 - 1 - v49));
    *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) = v52;
    *(v6 + 11) = v50;
    swift_endAccess();

LABEL_21:

    v34 = v107;
  }

  swift_endAccess();
  __break(1u);
LABEL_124:
  sub_1D22BD238(&v112, &qword_1EC6E1750);
  *&v112 = 0;
  *(&v112 + 1) = 0xE000000000000000;
  sub_1D2879168();
  MEMORY[0x1D38A0C50](0xD000000000000034, 0x80000001D28C1760);
  v86 = sub_1D27513EC(v31);
  MEMORY[0x1D38A0C50](v86);

  result = sub_1D2879398();
  __break(1u);
  return result;
}

uint64_t sub_1D2753D54()
{
  swift_beginAccess();
  v1 = v0[11];
  if (v1 >> 62)
  {
    goto LABEL_47;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v2; i = v0)
  {
    v0 = v0[2];
    v29 = v1 & 0xFFFFFFFFFFFFFF8;
    v30 = v1 & 0xC000000000000001;
    v28 = v1 + 32;
    sub_1D2870F68();
    v3 = 0;
    while (v30)
    {
      v4 = MEMORY[0x1D38A1C30](v3, v1);
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_45;
      }

LABEL_11:
      swift_beginAccess();
      v6 = *(v4 + 16);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = v1;
        v9 = v6 + 32;
        sub_1D2870F68();
        do
        {
          sub_1D2754A20(v9, v33);
          sub_1D23C3EE4(&v34, v32);
          sub_1D22D7044(&v35, v31);
          sub_1D2754A58(v33);
          sub_1D28738E8();
          sub_1D2873888();
          __swift_destroy_boxed_opaque_existential_0(v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          v9 += 104;
          --v7;
        }

        while (v7);

        v1 = v8;
      }

      *(v4 + 24) = 1;

      if (v3 == v2)
      {

        v0 = i;
        goto LABEL_16;
      }
    }

    if (v3 >= *(v29 + 16))
    {
      goto LABEL_46;
    }

    v4 = *(v28 + 8 * v3);
    sub_1D2870F78();
    v5 = __OFADD__(v3++, 1);
    if (!v5)
    {
      goto LABEL_11;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v2 = sub_1D2879368();
  }

LABEL_16:
  v10 = MEMORY[0x1E69E7CC0];
  v0[11] = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v11 = v0[12];
  if (v11 >> 62)
  {
    v12 = sub_1D2879368();
    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_28;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  sub_1D2870F68();
  v13 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1D38A1C30](v13, v11);
    }

    else
    {
      v15 = *(v11 + 8 * v13 + 32);
      sub_1D2870F78();
    }

    v16 = *(v15 + 32);
    if (v16)
    {
      v17 = *(v15 + 52);
      v18 = sub_1D2870F78();
      v16(v18, v17);
      sub_1D22A576C(v16);
      v14 = *(v15 + 32);
    }

    else
    {
      v14 = 0;
    }

    ++v13;
    *(v15 + 56) = 1;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    sub_1D22A576C(v14);
  }

  while (v12 != v13);

  v0 = i;
LABEL_28:
  v0[12] = v10;

  swift_beginAccess();
  v19 = v0[13];
  if (v19 >> 62)
  {
    v20 = sub_1D2879368();
    if (!v20)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_37;
    }
  }

  if (v20 < 1)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_1D2870F68();
  v21 = 0;
  do
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1D38A1C30](v21, v19);
    }

    else
    {
      v22 = *(v19 + 8 * v21 + 32);
      sub_1D2870F78();
    }

    ++v21;
    (*(v22 + 16))();
    *(v22 + 32) = 1;
  }

  while (v20 != v21);

  v0 = i;
LABEL_37:
  v0[13] = v10;

  v23 = v0[11];
  if (v23 >> 62)
  {
    if (sub_1D2879368())
    {
      return sub_1D2753D54();
    }
  }

  else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return sub_1D2753D54();
  }

  v24 = v0[12];
  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return sub_1D2753D54();
    }

    goto LABEL_41;
  }

LABEL_57:
  if (sub_1D2879368())
  {
    return sub_1D2753D54();
  }

LABEL_41:
  v25 = v0[13];
  if (v25 >> 62)
  {
    result = sub_1D2879368();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  return sub_1D2753D54();
}

uint64_t sub_1D27541C8()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1D2754208()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2754240()
{

  sub_1D22A576C(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1D2754280()
{

  return v0;
}

uint64_t sub_1D27542D0()
{
  sub_1D2754280();

  return swift_deallocClassInstance();
}

double sub_1D27543BC@<D0>(__int16 a1@<W0>, _OWORD *a2@<X8>)
{
  sub_1D2752B9C(a1 & 0xFF01, &v4);
  if (v5)
  {
    sub_1D22D79FC(&v4, v6);
    sub_1D28738E8();
    sub_1D28738C8();
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1D22BD238(&v4, &qword_1EC6E1750);
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1D2754458()
{
  v1 = *(*v0 + 64);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

float32x2_t *sub_1D27544D0(uint64_t a1, float32x2_t a2, float32x2_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  __asm { FMOV            V2.2S, #3.0 }

  v10 = vmul_f32(a2, _D2);
  v11 = vsub_f32(vmul_f32(vsub_f32(a3, a2), _D2), v10);
  __asm { FMOV            V1.2S, #1.0 }

  v3[3] = v11;
  v3[4] = v10;
  v3[2] = vsub_f32(vsub_f32(_D1, v10), v11);
  v3[5] = v4;
  v3[6] = a1;
  v3[5] = sub_1D2755538(a1);

  return v3;
}

uint64_t sub_1D2754530()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D275458C()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 71;
  if (qword_1ED8A4BA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8B0258;
  v0[6] = qword_1ED8B0258;
  v0[7] = v1;
  v2 = MTLCreateSystemDefaultDevice();
  if (v2)
  {
    v0[5] = v2;
    return v0;
  }

  else
  {
    result = sub_1D2879398();
    __break(1u);
  }

  return result;
}

id sub_1D275464C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(v3 + 16);
  v5 = v4;
  if (!v4)
  {
    sub_1D241748C(a2);
    v8 = sub_1D2877E78();

    v5 = [objc_opt_self() rendererWithMTLTexture:a1 options:v8];

    [v5 setBounds_];
    v9 = *(v3 + 16);
    *(v3 + 16) = v5;
    v10 = v5;
  }

  v11 = v4;
  return v5;
}

uint64_t sub_1D2754738()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D27547C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1D275480C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualEffectBinding(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D275491C()
{
  result = qword_1EC6E1738;
  if (!qword_1EC6E1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1738);
  }

  return result;
}

unint64_t sub_1D2754974()
{
  result = qword_1EC6E1740;
  if (!qword_1EC6E1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1740);
  }

  return result;
}

unint64_t sub_1D27549CC()
{
  result = qword_1EC6E1748;
  if (!qword_1EC6E1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1748);
  }

  return result;
}

uint64_t sub_1D2754A88(__int16 a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v3 = HIBYTE(a1);
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v5 = 0x6F6C42656E616C50;
  }

  else
  {
    v5 = 0x73676E69646E6962;
  }

  if (v4)
  {
    v6 = 0xEC00000065646F4ELL;
  }

  else
  {
    v6 = 0xE900000000000062;
  }

  if (a2)
  {
    v7 = 0x6F6C42656E616C50;
  }

  else
  {
    v7 = 0x73676E69646E6962;
  }

  if (a2)
  {
    v8 = 0xE900000000000062;
  }

  else
  {
    v8 = 0xEC00000065646F4ELL;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v9 = sub_1D2879618();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  v11 = sub_1D27513EC(v3);
  v13 = v12;
  if (v11 == sub_1D27513EC(v2) && v13 == v14)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D2879618();
  }

  return v10 & 1;
}

uint64_t sub_1D2754BC0(uint64_t a1, __int16 a2)
{
  v4 = sub_1D2873878();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  sub_1D2752B9C(a2 & 0xFF01, &v20);
  if (!v21)
  {
    return sub_1D22BD238(&v20, &qword_1EC6E1750);
  }

  sub_1D22D79FC(&v20, v22);
  sub_1D23C3EE4(a1, &v20);
  v11 = MEMORY[0x1E69E6448];
  if (swift_dynamicCast())
  {
    v12 = *&v19;
  }

  else
  {
    sub_1D23C3EE4(a1, &v20);
    if (swift_dynamicCast())
    {
      v12 = *&v19;
    }

    else
    {
      sub_1D23C3EE4(a1, &v20);
      if (!swift_dynamicCast())
      {
        __swift_project_boxed_opaque_existential_1(v22, v22[3]);
        sub_1D2873868();
        (*(v5 + 104))(v8, *MEMORY[0x1E697A518], v4);
        sub_1D2754F18();
        sub_1D2878368();
        sub_1D2878368();
        v14 = *(v5 + 8);
        v14(v8, v4);
        v14(v10, v4);
        if (v20 == v19 && (sub_1D23C3EE4(a1, &v20), sub_1D22BCFD0(0, &qword_1ED89CC90), (swift_dynamicCast() & 1) != 0))
        {
          v15 = v19;
          [v19 VFXFloat2Value];
          v17 = v16;
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1768);

          *&v20 = v17;
        }

        else
        {
          sub_1D23C3EE4(a1, &v20);
        }

        goto LABEL_10;
      }

      v12 = v19;
    }
  }

  v21 = v11;
  *&v20 = v12;
LABEL_10:
  sub_1D28738E8();
  sub_1D2873888();
  __swift_destroy_boxed_opaque_existential_0(&v20);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

unint64_t sub_1D2754F18()
{
  result = qword_1EC6E1758;
  if (!qword_1EC6E1758)
  {
    sub_1D2873878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1758);
  }

  return result;
}

uint64_t sub_1D2754F70(uint64_t a1, __int16 a2, char a3)
{
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1D2872668();
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A18();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      v14 = sub_1D27512E0(a2 & 0xFF00 | 1u);
      v16 = sub_1D23D7C84(v14, v15, &v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1D226E000, v10, v11, "No node for binding %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1D38A3520](v13, -1, -1);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v18 = sub_1D27513EC(SHIBYTE(a2));
    sub_1D2777178(a1, v18, v19, a3 & 1);
  }
}

uint64_t sub_1D2755184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 96); ; i += 13)
  {
    __swift_project_boxed_opaque_existential_1(i, i[3]);
    if (sub_1D2873858() == a2 && v8 == a3)
    {
      break;
    }

    v10 = sub_1D2879618();

    if (v10)
    {
      return v6;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1D27552A8()
{
  v0 = sub_1D2879698();

  if (v0 >= 0x2E)
  {
    return 46;
  }

  else
  {
    return v0;
  }
}

id sub_1D27552FC(void *a1, double a2)
{
  v3 = *(v2 + 24);
  if (v3)
  {
LABEL_11:
    swift_unknownObjectRetain();
    return v3;
  }

  result = objc_opt_self();
  v7 = *(v2 + 48) * a2;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v2 + 56) * a2;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 < 9.22337204e18)
  {
    v9 = [result texture2DDescriptorWithPixelFormat:*(v2 + 32) width:v7 height:v8 mipmapped:0];
    [v9 setSampleCount_];
    [v9 setMipmapLevelCount_];
    [v9 setDepth_];
    [v9 setArrayLength_];
    [v9 setStorageMode_];
    [v9 setUsage_];
    v3 = [a1 newTextureWithDescriptor_];
    if (v3)
    {
      swift_unknownObjectRetain();
      v10 = sub_1D2878068();
      [v3 setLabel_];
      swift_unknownObjectRelease();
    }

    *(v2 + 24) = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

char *sub_1D2755538(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  v5 = a1;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = a1 == 0;
  if (a1 <= 0)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = v4 + 1; ; i = a1)
  {
    v10 = v4 / v5;
    v11 = 0.0;
    if (v10 >= 0.0)
    {
      v11 = 1.0;
      if (v10 <= 1.0)
      {
        v12 = *(v1 + 16);
        v13 = *(v1 + 24);
        v14 = *(v1 + 32);
        v15 = v10 * (*&v14 + (v10 * ((v10 * *&v12) + *&v13)));
        if (vabds_f32(v15, v10) >= 0.00001)
        {
          v16 = 3.0 * *&v12;
          v17 = *&v13 + *&v13;
          v18 = *&v14 + (v10 * ((v10 * (3.0 * *&v12)) + (*&v13 + *&v13)));
          if (fabsf(v18) < 0.00001 || (v11 = v10 - ((v15 - v10) / v18), v24 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v24, v10) >= 0.00001) && ((v30 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v30) < 0.00001) || (v11 = v11 - ((v24 - v10) / v30), v31 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v31, v10) >= 0.00001) && ((v32 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v32) < 0.00001) || (v11 = v11 - ((v31 - v10) / v32), v33 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v33, v10) >= 0.00001) && ((v34 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v34) < 0.00001) || (v11 = v11 - ((v33 - v10) / v34), v35 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v35, v10) >= 0.00001) && ((v36 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v36) < 0.00001) || (v11 = v11 - ((v35 - v10) / v36), v37 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v37, v10) >= 0.00001) && ((v38 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v38) < 0.00001) || (v11 = v11 - ((v37 - v10) / v38), v39 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), vabds_f32(v39, v10) >= 0.00001) && ((v40 = *&v14 + (v11 * ((v11 * v16) + v17)), fabsf(v40) < 0.00001) || (v11 = v11 - ((v39 - v10) / v40), vabds_f32(v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13))), v10) >= 0.00001))))))))
          {
            v19 = 1.0;
            v20 = 0.0;
            v21 = 512;
            v11 = v10;
            do
            {
              v22 = v11 * (*&v14 + (v11 * ((v11 * *&v12) + *&v13)));
              if (vabds_f32(v22, v10) < 0.00001)
              {
                break;
              }

              if ((v22 - v10) >= 0.0)
              {
                v19 = v11;
              }

              else
              {
                v20 = v11;
              }

              v11 = v20 + ((v19 - v20) * 0.5);
            }

            while (v20 < v19 && v21-- > 1);
          }
        }

        else
        {
          v11 = v4 / v5;
        }
      }
    }

    v25 = *(v1 + 20);
    v26 = *(v1 + 28);
    v27 = *(v1 + 36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D27CDA40(0, *(v6 + 2) + 1, 1, v6);
    }

    v29 = *(v6 + 2);
    v28 = *(v6 + 3);
    if (v29 >= v28 >> 1)
    {
      v6 = sub_1D27CDA40((v28 > 1), v29 + 1, 1, v6);
    }

    *(v6 + 2) = v29 + 1;
    *&v6[4 * v29 + 32] = v11 * (v27 + (v11 * ((v11 * v25) + v26)));
    v4 = i;
    v7 = i == a1;
    if (i < a1)
    {
      goto LABEL_2;
    }

LABEL_3:
    v9 = !v7;
    if ((v9 | v3))
    {
      break;
    }

    v3 = 1;
  }

  return v6;
}

uint64_t sub_1D2755968(void *a1)
{
  v2 = sub_1D2873CB8();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  type metadata accessor for LayerRenderer();
  swift_allocObject();
  sub_1D275458C();
  v11 = [a1 rootNode];
  v12 = sub_1D2878068();
  v13 = [v11 childNodeWithName_];

  if (!v13)
  {
    sub_1D2872668();
    v23 = sub_1D2873CA8();
    v24 = sub_1D2878A18();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D226E000, v23, v24, "Failed to load emmitter", v25, 2u);
      MEMORY[0x1D38A3520](v25, -1, -1);
    }

    (*(v32 + 8))(v10, v33);
    return 0;
  }

  v14 = [a1 rootNode];
  v15 = sub_1D2878068();
  v16 = [v14 childNodeWithName_];

  if (!v16)
  {
    sub_1D2872668();
    v26 = sub_1D2873CA8();
    v27 = sub_1D2878A18();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D226E000, v26, v27, "Failed to load plane", v28, 2u);
      MEMORY[0x1D38A3520](v28, -1, -1);
    }

    else
    {
    }

    (*(v32 + 8))(v7, v33);
    return 0;
  }

  v17 = [v16 model];
  if (!v17)
  {
LABEL_19:
    sub_1D2872668();
    v29 = sub_1D2873CA8();
    v30 = sub_1D2878A18();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D226E000, v29, v30, "Failed to load planeMaterial", v31, 2u);
      MEMORY[0x1D38A3520](v31, -1, -1);
    }

    else
    {
    }

    (*(v32 + 8))(v4, v33);
    return 0;
  }

  v18 = v17;
  v19 = [v17 materials];

  sub_1D22BCFD0(0, &unk_1ED89CDD8);
  v20 = sub_1D28783E8();

  if (!(v20 >> 62))
  {
    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  result = sub_1D2879368();
  if (!result)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_6:
  if ((v20 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D38A1C30](0, v20);
    goto LABEL_9;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v20 + 32);
LABEL_9:

    return v13;
  }

  __break(1u);
  return result;
}

BOOL sub_1D2755E4C(void *a1)
{
  v2 = sub_1D2878068();
  v3 = [a1 valueForKeyPath_];

  if (v3)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
    sub_1D23C3FAC(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_1D22BD238(v6, &qword_1EC6E1900);
  return v3 != 0;
}

uint64_t sub_1D2755F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D2879168();

  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = sub_1D28795C8();
    MEMORY[0x1D38A0C50](v7);

    MEMORY[0x1D38A0C50](a3, a4);
    sub_1D2870F68();
    v8 = sub_1D27552A8();
    if (v8 != 46)
    {
      v9 = v8;

      return (v9 << 8);
    }
  }

  sub_1D2879168();

  MEMORY[0x1D38A0C50](0xD00000000000001CLL, 0x80000001D28C17A0);
  result = sub_1D2879398();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for VisualEffectBinding.PropertyName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 45;
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

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualEffectBinding.PropertyName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2756214()
{
  result = qword_1EC6E1780;
  if (!qword_1EC6E1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1780);
  }

  return result;
}

unint64_t sub_1D275626C()
{
  result = qword_1EC6E1788;
  if (!qword_1EC6E1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1788);
  }

  return result;
}

uint64_t sub_1D27562CC()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent);
}

uint64_t sub_1D2756344(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2758C34();
    sub_1D28719D8();
  }

  return result;
}

double sub_1D275642C()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale);
}

void sub_1D27564A4(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) == a1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2758C34();
    sub_1D28719D8();
  }
}

uint64_t sub_1D2756594()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

void *sub_1D2756618()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  sub_1D233EDE0(v1);
  return v1;
}

uint64_t sub_1D27566A8(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  sub_1D2758420(v1, sub_1D27591CC, v3);
}

uint64_t sub_1D2756720()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D2870F68();
}

uint64_t sub_1D27567B0()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872668();
  v6 = sub_1D2873CA8();
  v7 = sub_1D28789F8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, "discardSceneManager", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v11[-4] = v1;
  *&v11[-3] = xmmword_1D28854B0;
  v11[1] = v1;
  sub_1D2758C34();
  sub_1D28719D8();
}

uint64_t sub_1D2756990(uint64_t a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = a1;
  sub_1D2758C34();
  sub_1D28719E8();

  v6 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  if (v6 < 2)
  {
    swift_getKeyPath();
    v18 = a1;
    sub_1D28719E8();

    v18 = a1;
    swift_getKeyPath();
    sub_1D2871A08();

    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
    swift_beginAccess();
    v8 = *(a1 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1D27CCA60(0, v8[2] + 1, 1, v8);
      *(a1 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1D27CCA60((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1D2757A80;
    v12[5] = 0;
    *(a1 + v7) = v8;
    swift_endAccess();
    v18 = a1;
    swift_getKeyPath();
    sub_1D28719F8();
  }

  if (v6 != 2)
  {
    sub_1D233EDE0(v6);
    sub_1D2769CA0(CGRectMake, 0);
  }

  sub_1D2872668();
  v13 = sub_1D2873CA8();
  v14 = sub_1D2878A18();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D226E000, v13, v14, "sceneManager is nil", v15, 2u);
    MEMORY[0x1D38A3520](v15, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1D2756CAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v34 - v3;
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v34 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v34 - v13;
  sub_1D2872668();
  v15 = sub_1D2873CA8();
  v16 = sub_1D28789F8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D226E000, v15, v16, "loadGenerationAnimatedEffectIfNeeded", v17, 2u);
    MEMORY[0x1D38A3520](v17, -1, -1);
  }

  v18 = *(v6 + 8);
  v18(v14, v5);
  if (sub_1D27EEA80())
  {
    sub_1D2872668();
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A38();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D226E000, v19, v20, "Skipped loading VFX because we are running in unit tests or on unsupported platform", v21, 2u);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    v18(v12, v5);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v34[-3] = 0;
    v34[-2] = 0;
    v34[-4] = v1;
    v35 = v1;
    sub_1D2758C34();
    sub_1D28719D8();
  }

  else
  {
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D23B7BB8();
    v23 = sub_1D2878A58();
    v24 = sub_1D2878068();
    v25 = [v23 BOOLForKey_];

    if ((v25 & 1) == 0)
    {
      swift_getKeyPath();
      v35 = v1;
      sub_1D2758C34();
      sub_1D28719E8();

      if (!*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState))
      {
        v26 = swift_getKeyPath();
        v34[1] = v34;
        MEMORY[0x1EEE9AC00](v26);
        v34[-4] = v1;
        *&v34[-3] = xmmword_1D2883070;
        v35 = v1;
        sub_1D28719D8();

        sub_1D2872668();
        v27 = sub_1D2873CA8();
        v28 = sub_1D2878A08();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1D226E000, v27, v28, "SceneManager is loading…", v29, 2u);
          MEMORY[0x1D38A3520](v29, -1, -1);
        }

        v18(v9, v5);
        v30 = sub_1D28785F8();
        (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
        sub_1D2878568();
        sub_1D2870F78();
        v31 = sub_1D2878558();
        v32 = swift_allocObject();
        v33 = MEMORY[0x1E69E85E0];
        v32[2] = v31;
        v32[3] = v33;
        v32[4] = v1;
        sub_1D22AE01C(0, 0, v4, &unk_1D28A4208, v32);
      }
    }
  }
}

uint64_t sub_1D2757274@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D2757300()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719D8();
}

void *sub_1D27573C8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  *v3 = a2;
  v3[1] = a3;
  sub_1D233EDE0(a2);
  return sub_1D233EE24(v4);
}

void sub_1D2757494(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isAnimationPaused);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 24) = v3;
  sub_1D277B970();
}

uint64_t sub_1D2757528(void *a1, const char *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872668();
  sub_1D2870F78();
  v12 = sub_1D2873CA8();
  v13 = sub_1D28789F8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = *(v7 + *a1);

    _os_log_impl(&dword_1D226E000, v12, v13, a2, v14, 8u);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2758DF8(v7, a3, v15);
}

void sub_1D27576F4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isBlurred);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 25) = v3;
  sub_1D277BB4C();
}

uint64_t sub_1D2757760(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError);
    *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError) = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError);
    sub_1D2760028(v3);
  }

  return result;
}

uint64_t sub_1D27577E0(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isCreating;
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isCreating) = a2;
  sub_1D2758CD8(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v8);
  if (v10)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    sub_1D2758D34(&v8);
    v4 = *(&v12 + 1);
    if (*(&v12 + 1))
    {
LABEL_3:
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(&v11, v4);
      v6 = *(a1 + v3);
      v9 = MEMORY[0x1E69E6370];
      LOBYTE(v8) = v6;
      (*(v5 + 8))(&v8, 7424, v4, v5);
      __swift_destroy_boxed_opaque_existential_0(&v8);
      return __swift_destroy_boxed_opaque_existential_0(&v11);
    }
  }

  else
  {
    sub_1D227268C(&v8, &v11);
    v4 = *(&v12 + 1);
    if (*(&v12 + 1))
    {
      goto LABEL_3;
    }
  }

  return sub_1D2758D88(&v11);
}

uint64_t sub_1D27578DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_1D2870F68();
}

uint64_t sub_1D2757974()
{
  swift_getKeyPath();
  sub_1D2758C34();
  sub_1D28719D8();
}

uint64_t sub_1D2757A10(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
  swift_beginAccess();
  *(a1 + v4) = a2;
  sub_1D2870F68();
}

uint64_t sub_1D2757ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_1D2873CB8();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_1D2878568();
  v4[17] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[18] = v7;
  v4[19] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2757BBC, v7, v6);
}

uint64_t sub_1D2757BBC()
{
  v1 = *(v0 + 96);
  type metadata accessor for VisualEffectLoader();
  *(v0 + 184) = v1[17];
  v2 = v1[OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_shouldUseVFXRenderingDelegate];
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_defaultAspectRatio;
  v4 = (*(*v1 + 416))();
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_1D2757CCC;

  return sub_1D275CD0C((v0 + 184), v2, &v1[v3], v4 & 1);
}

uint64_t sub_1D2757CCC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D2757DF4, v6, v5);
}

uint64_t sub_1D2757DF4()
{
  v42 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 96);

  swift_getKeyPath();
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  *(v0 + 64) = v3;
  sub_1D233EDE0(v1);
  sub_1D2758C34();
  sub_1D28719D8();
  sub_1D233EE24(v1);

  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      sub_1D2872668();
      v7 = sub_1D2873CA8();
      v8 = sub_1D2878A08();
      if (os_log_type_enabled(v7, v8))
      {
        v10 = *(v0 + 112);
        v9 = *(v0 + 120);
        v11 = *(v0 + 104);
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1D226E000, v7, v8, "SceneManager is shutting down", v12, 2u);
        MEMORY[0x1D38A3520](v12, -1, -1);

        sub_1D233EE24(2);
        (*(v10 + 8))(v9, v11);
      }

      else
      {
        v38 = *(v0 + 112);
        v37 = *(v0 + 120);
        v39 = *(v0 + 104);

        (*(v38 + 8))(v37, v39);
      }
    }

    else
    {
      v14 = *(v0 + 168);
      v13 = *(v0 + 176);
      v15 = *(v0 + 96);
      swift_getKeyPath();
      *(v0 + 72) = v15;
      sub_1D28719E8();

      v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
      swift_beginAccess();
      v17 = *(v15 + v16);
      v18 = *(v17 + 16);
      if (v18)
      {
        sub_1D2870F68();
        v19 = v17 + 40;
        do
        {
          v20 = *(v19 - 8);
          v40 = v14;
          v41 = v13;
          sub_1D2870F78();
          v20(&v40, &v41);

          v19 += 16;
          --v18;
        }

        while (v18);
      }

      v21 = *(v0 + 96);
      swift_getKeyPath();
      v22 = swift_task_alloc();
      v23 = MEMORY[0x1E69E7CC0];
      *(v22 + 16) = v21;
      *(v22 + 24) = v23;
      *(v0 + 80) = v21;
      sub_1D28719D8();

      sub_1D2872668();
      v24 = sub_1D2873CA8();
      v25 = sub_1D2878A08();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1D226E000, v24, v25, "SceneManager is loaded", v26, 2u);
        MEMORY[0x1D38A3520](v26, -1, -1);
      }

      v27 = *(v0 + 128);
      v29 = *(v0 + 104);
      v28 = *(v0 + 112);
      v30 = *(v0 + 96);

      (*(v28 + 8))(v27, v29);
      swift_getKeyPath();
      *(v0 + 88) = v30;
      sub_1D28719E8();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v32 = Strong;
        swift_beginAccess();
        v33 = swift_unknownObjectWeakLoadStrong();
        v34 = *(v0 + 168);
        if (v33)
        {
          v35 = *(v32 + 64);
          ObjectType = swift_getObjectType();
          (*(v35 + 48))(v32, ObjectType, v35);
          swift_unknownObjectRelease();
          sub_1D233EE24(v34);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          sub_1D233EE24(v34);
        }
      }

      else
      {
        sub_1D233EE24(*(v0 + 168));
      }
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t type metadata accessor for AbstractEffectViewModel()
{
  result = qword_1ED8A0C98;
  if (!qword_1ED8A0C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D275830C()
{
  result = sub_1D2871DD8();
  if (v1 <= 0x3F)
  {
    result = sub_1D2871A28();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D2758420(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  v6 = sub_1D2873CB8();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_getKeyPath();
  v24 = a1;
  sub_1D2758C34();
  sub_1D2870F78();
  sub_1D28719E8();

  v10 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      sub_1D2872668();
      v18 = sub_1D2873CA8();
      v19 = sub_1D2878A18();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D226E000, v18, v19, "sceneManager is nil", v20, 2u);
        MEMORY[0x1D38A3520](v20, -1, -1);
      }

      (*(v23 + 8))(v8, v6);
    }

    else
    {
      v21 = v10;
      sub_1D2870F78();
      a2(v21);
    }
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1D2759384;
    *(v11 + 24) = v9;
    swift_getKeyPath();
    v24 = a1;
    sub_1D2870F78();
    sub_1D28719E8();

    v24 = a1;
    swift_getKeyPath();
    sub_1D2871A08();

    v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
    swift_beginAccess();
    v13 = *(a1 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1D27CCA60(0, v13[2] + 1, 1, v13);
      *(a1 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1D27CCA60((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1D2759388;
    v17[5] = v11;
    *(a1 + v12) = v13;
    swift_endAccess();
    v24 = a1;
    swift_getKeyPath();
    sub_1D28719F8();
  }
}

uint64_t sub_1D27587B4(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, unint64_t a6, int a7)
{
  v14 = sub_1D2873CB8();
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v32 = a3;
  *(v17 + 24) = a3;
  v33 = a4;
  v34 = a6;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  v35 = a7;
  *(v17 + 56) = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D2758BF4;
  *(v18 + 24) = v17;
  swift_getKeyPath();
  v38 = a1;
  sub_1D2758C34();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D2870F78();
  sub_1D28719E8();

  v19 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  if (v19 >= 2)
  {
    if (v19 == 2)
    {
      sub_1D2872668();
      v27 = sub_1D2873CA8();
      v28 = sub_1D2878A18();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1D226E000, v27, v28, "sceneManager is nil", v29, 2u);
        MEMORY[0x1D38A3520](v29, -1, -1);
      }

      (*(v36 + 8))(v16, v37);
    }

    else
    {
      sub_1D2870F78();
      sub_1D2870F78();
      sub_1D233EDE0(v19);
      sub_1D277F8B4(v19, a2, v32 & 1, v33, a5, v34, v35);
    }
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1D2758C0C;
    *(v20 + 24) = v18;
    swift_getKeyPath();
    v38 = a1;
    sub_1D2870F78();
    sub_1D28719E8();

    v38 = a1;
    swift_getKeyPath();
    sub_1D2871A08();

    v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
    swift_beginAccess();
    v22 = *(a1 + v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v21) = v22;
    v37 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1D27CCA60(0, v22[2] + 1, 1, v22);
      *(a1 + v21) = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1D27CCA60((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[2 * v25];
    v26[4] = sub_1D2758C8C;
    v26[5] = v20;
    *(a1 + v21) = v22;
    swift_endAccess();
    v38 = a1;
    swift_getKeyPath();
    sub_1D28719F8();
  }
}

unint64_t sub_1D2758C34()
{
  result = qword_1ED8A0CA8;
  if (!qword_1ED8A0CA8)
  {
    type metadata accessor for AbstractEffectViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0CA8);
  }

  return result;
}

uint64_t sub_1D2758D88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2758DF8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_1D2873CB8();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_getKeyPath();
  v25 = a1;
  sub_1D2758C34();
  sub_1D2870F78();
  sub_1D28719E8();

  v10 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      sub_1D2872668();
      v18 = sub_1D2873CA8();
      v19 = sub_1D2878A18();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D226E000, v18, v19, "sceneManager is nil", v20, 2u);
        MEMORY[0x1D38A3520](v20, -1, -1);
      }

      (*(v24 + 8))(v8, v6);
    }

    else
    {
      v21 = v10;
      v22 = sub_1D2870F78();
      a2(v22);
    }
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1D2759188;
    *(v11 + 24) = v9;
    swift_getKeyPath();
    v25 = a1;
    sub_1D2870F78();
    sub_1D28719E8();

    v25 = a1;
    swift_getKeyPath();
    sub_1D2871A08();

    v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__delayedJobs;
    swift_beginAccess();
    v13 = *(a1 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1D27CCA60(0, v13[2] + 1, 1, v13);
      *(a1 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1D27CCA60((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1D2759388;
    v17[5] = v11;
    *(a1 + v12) = v13;
    swift_endAccess();
    v25 = a1;
    swift_getKeyPath();
    sub_1D28719F8();
  }
}

double sub_1D2759228()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = result;
  return result;
}

uint64_t sub_1D2759260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D2757ABC(a1, v4, v5, v6);
}

void *sub_1D2759314()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState;
  v4 = *v3;
  *v3 = v1;
  *(v3 + 8) = v2;
  sub_1D233EDE0(v1);
  return sub_1D233EE24(v4);
}

uint64_t type metadata accessor for EffectView()
{
  result = qword_1ED8A5148;
  if (!qword_1ED8A5148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2759418()
{
  sub_1D27595BC(319, &qword_1ED89D058, type metadata accessor for AbstractEffectViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1D27595BC(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1D22EAE8C();
      if (v2 <= 0x3F)
      {
        sub_1D27595BC(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D27595BC(319, &qword_1ED89DFD0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1D24F8F5C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D27595BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D275963C(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D27596BC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D2759758(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D27597D8()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

void sub_1D2759874(unsigned __int8 *a1@<X8>)
{
  sub_1D23B7BB8();
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D27598F4()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D2759990@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_1D2875628();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EffectView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  sub_1D2759D00(v1, &v22 - v9);
  sub_1D275C708(v1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EffectView);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_1D275BBD8(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = &v10[*(v8 + 36)];
  *v13 = sub_1D275BC3C;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v14 = v1 + *(v5 + 44);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = *v14;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v17 = sub_1D28762E8();
    v23 = v2;
    v18 = v17;
    sub_1D2873BE8();

    v19 = v24;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v15, 0);
    (*(v25 + 8))(v19, v23);
    v16 = v27;
  }

  v27 = v16;
  sub_1D275C708(v1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EffectView);
  v20 = swift_allocObject();
  sub_1D275BBD8(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v11);
  sub_1D275BD1C();
  sub_1D2403664();
  sub_1D2876F48();

  return sub_1D22BD238(v10, &qword_1EC6E17A0);
}

uint64_t sub_1D2759D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v120 = type metadata accessor for VisualEffectViewRepresentable();
  MEMORY[0x1EEE9AC00](v120);
  v115 = &v107[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = sub_1D2874438();
  v137 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v136 = &v107[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for EffectView();
  v131 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v134 = v6;
  v135 = &v107[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17F0);
  MEMORY[0x1EEE9AC00](v122);
  v128 = &v107[-v7];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17F8);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v107[-v8];
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17E8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v107[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v107[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v107[-v14];
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17D8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v107[-v15];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17D0);
  MEMORY[0x1EEE9AC00](v123);
  v129 = &v107[-v16];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17C8);
  MEMORY[0x1EEE9AC00](v141);
  v130 = &v107[-v17];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1800);
  v132 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v138 = &v107[-v18];
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1808);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v107[-v19];
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1810);
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v107[-v20];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17C0);
  MEMORY[0x1EEE9AC00](v145);
  v142 = &v107[-v21];
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17B8);
  MEMORY[0x1EEE9AC00](v152);
  v148 = &v107[-v22];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1818);
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v107[-v23];
  v24 = sub_1D2875628();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v107[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v133 = v5;
  v28 = *(v5 + 28);
  v149 = a1;
  v29 = a1 + v28;
  v30 = *v29;
  v31 = *(v29 + 8);
  if (v31 == 1)
  {
    v154 = *v29;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v32 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    v25[1](v27, v24);
  }

  v116 = v25;
  v127 = v12;

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v33 = off_1ED8A4930;
  v34 = OBJC_IVAR____TtC23ImagePlaygroundInternal13DebugSettings___observationRegistrar;
  v154 = off_1ED8A4930;
  v35 = sub_1D275C348(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  v114 = v34;
  v113 = v35;
  sub_1D28719E8();
  v36 = sub_1D23B7BB8();
  sub_1D2870F78();
  v112 = v36;
  v37 = sub_1D2878A58();
  v38 = sub_1D2878068();
  v39 = [v37 BOOLForKey_];

  if (v39)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v41 = v151;
    *v151 = 0xD000000000000011;
    v41[1] = 0x80000001D28C1940;
    *(v41 + 16) = 0;
    v41[3] = v40;
    swift_storeEnumTagMultiPayload();
    sub_1D275BEB8();
    return sub_1D2875AF8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798);
  sub_1D2877618();
  v43 = v154;
  swift_getKeyPath();
  v154 = v43;
  sub_1D275C348(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
  sub_1D28719E8();

  v44 = *(v43 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  v45 = *(v43 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState + 8);
  sub_1D233EDE0(v44);

  if (v44 >= 2)
  {
    if (v44 == 2)
    {
      sub_1D2875798();
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v57 = qword_1ED8B0058;
      v58 = sub_1D2876668();
      v59 = v147;
      *v147 = v58;
      v59[1] = v60;
      *(v59 + 16) = v61 & 1;
      v59[3] = v62;
      swift_storeEnumTagMultiPayload();
      sub_1D275BF44();
      v56 = v148;
      sub_1D2875AF8();
      goto LABEL_25;
    }

    v111 = v44;
    sub_1D2877618();
    v109 = v154;
    sub_1D2877618();
    v63 = v154;
    swift_getKeyPath();
    v154 = v63;
    sub_1D28719E8();

    v64 = *(v63 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent);

    if (v31)
    {
      v154 = v30;
      sub_1D2870F78();
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v65 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();

      v116[1](v27, v24);
    }

    v66 = v111;

    v67 = v66[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType];
    v110 = v45;
    if (v67 > 1)
    {
    }

    else
    {
      v68 = sub_1D2879618();

      if ((v68 & 1) == 0)
      {
        v69 = *(v45 + 16);
        if (v69)
        {
          v70 = swift_allocObject();
          *(v70 + 16) = v69;
          swift_getKeyPath();
          v154 = v33;
          v116 = v69;
          sub_1D28719E8();
          swift_retain_n();
          v71 = sub_1D2878A58();
          v72 = sub_1D2878068();
          v108 = v64;
          v73 = v72;
          v74 = [v71 BOOLForKey_];

          LOBYTE(v73) = (*(*v109 + 472))();
          swift_getKeyPath();
          v154 = v33;
          sub_1D28719E8();
          v75 = sub_1D2878A58();
          v76 = sub_1D2878068();
          v77 = [v75 BOOLForKey_];

          v78 = v115;
          v79 = v111;
          *v115 = v111;
          *(v78 + 8) = sub_1D275C700;
          *(v78 + 16) = v70;
          *(v78 + 24) = v74;
          *(v78 + 25) = v73 & 1;
          *(v78 + 26) = v77 ^ 1;
          *(v78 + 27) = v108;
          *(v78 + 32) = swift_getKeyPath();
          *(v78 + 40) = 0;
          v80 = v120;
          v81 = *(v120 + 44);
          *(v78 + v81) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
          swift_storeEnumTagMultiPayload();
          v82 = v78 + *(v80 + 48);
          *v82 = swift_getKeyPath();
          *(v82 + 8) = 0;
          sub_1D275C708(v78, v118, type metadata accessor for VisualEffectViewRepresentable);
          swift_storeEnumTagMultiPayload();
          sub_1D275C348(&qword_1ED89F078, type metadata accessor for VisualEffectViewRepresentable);
          v83 = v79;
          v84 = v119;
          sub_1D2875AF8();
          sub_1D275C770(v84, v128);
          swift_storeEnumTagMultiPayload();
          sub_1D275C28C();
          v85 = v127;
          sub_1D2875AF8();

          sub_1D22BD238(v84, &qword_1EC6E17E8);
          sub_1D275C7E0(v78);
        }

        else
        {
          swift_storeEnumTagMultiPayload();
          sub_1D275C28C();
          v85 = v127;
          sub_1D2875AF8();
        }

        goto LABEL_24;
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_1D275C348(&qword_1ED89F078, type metadata accessor for VisualEffectViewRepresentable);
    v86 = v119;
    sub_1D2875AF8();
    sub_1D275C770(v86, v128);
    swift_storeEnumTagMultiPayload();
    sub_1D275C28C();
    v85 = v127;
    sub_1D2875AF8();

    sub_1D22BD238(v86, &qword_1EC6E17E8);
LABEL_24:
    v87 = v126;
    sub_1D22EC9BC(v85, v126, &qword_1EC6E17E0);
    v88 = v87;
    v89 = v124;
    sub_1D22EC9BC(v88, v124, &qword_1EC6E17E0);
    v89[*(v125 + 36)] = 0;
    v90 = v129;
    sub_1D22EC9BC(v89, v129, &qword_1EC6E17D8);
    v90[*(v123 + 36)] = 1;
    v91 = v149;
    v92 = v135;
    sub_1D275C708(v149, v135, type metadata accessor for EffectView);
    v93 = (*(v131 + 80) + 16) & ~*(v131 + 80);
    v94 = swift_allocObject();
    sub_1D275BBD8(v92, v94 + v93);
    v95 = v130;
    sub_1D22EC9BC(v90, v130, &qword_1EC6E17D0);
    v96 = v141;
    v97 = &v95[*(v141 + 36)];
    *v97 = sub_1D275C390;
    v97[1] = v94;
    v97[2] = 0;
    v97[3] = 0;
    v98 = v136;
    sub_1D24CC0E8(v136);
    sub_1D275C708(v91, v92, type metadata accessor for EffectView);
    v99 = swift_allocObject();
    sub_1D275BBD8(v92, v99 + v93);
    v100 = sub_1D275C05C();
    v101 = sub_1D275C348(&qword_1ED89E078, MEMORY[0x1E697DBD0]);
    v102 = v138;
    v103 = v144;
    sub_1D2876F58();

    (*(v137 + 8))(v98, v103);
    sub_1D22BD238(v95, &qword_1EC6E17C8);
    v104 = v132;
    v105 = v143;
    (*(v132 + 16))(v140, v102, v143);
    swift_storeEnumTagMultiPayload();
    v154 = v96;
    v155 = v103;
    v156 = v100;
    v157 = v101;
    swift_getOpaqueTypeConformance2();
    v106 = v142;
    sub_1D2875AF8();
    sub_1D22BD1D0(v106, v147, &qword_1EC6E17C0);
    swift_storeEnumTagMultiPayload();
    sub_1D275BF44();
    v56 = v148;
    sub_1D2875AF8();

    sub_1D22BD238(v106, &qword_1EC6E17C0);
    (*(v104 + 8))(v138, v105);
    goto LABEL_25;
  }

  v154 = 32;
  v155 = 0xE100000000000000;
  sub_1D22BD06C();
  v46 = sub_1D2876698();
  v48 = v47;
  v49 = v140;
  *v140 = v46;
  v49[1] = v47;
  v51 = v50 & 1;
  *(v49 + 16) = v50 & 1;
  v49[3] = v52;
  swift_storeEnumTagMultiPayload();
  sub_1D22BBFAC(v46, v48, v51);
  v53 = sub_1D275C05C();
  v54 = sub_1D275C348(&qword_1ED89E078, MEMORY[0x1E697DBD0]);
  sub_1D2870F68();
  v154 = v141;
  v155 = v144;
  v156 = v53;
  v157 = v54;
  swift_getOpaqueTypeConformance2();
  v55 = v142;
  sub_1D2875AF8();
  sub_1D22BD1D0(v55, v147, &qword_1EC6E17C0);
  swift_storeEnumTagMultiPayload();
  sub_1D275BF44();
  v56 = v148;
  sub_1D2875AF8();
  sub_1D22ED6E0(v46, v48, v51);

  sub_1D22BD238(v55, &qword_1EC6E17C0);
LABEL_25:
  sub_1D22BD1D0(v56, v151, &qword_1EC6E17B8);
  swift_storeEnumTagMultiPayload();
  sub_1D275BEB8();
  sub_1D2875AF8();
  return sub_1D22BD238(v56, &qword_1EC6E17B8);
}

uint64_t sub_1D275B490(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  v27 = a2;
  v28 = a3;
  v26 = sub_1D2874EA8();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25[0] = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v9 = sub_1D2874438();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798);
  sub_1D2877618();
  v16 = v29;
  type metadata accessor for EffectView();
  v25[1] = a1;
  sub_1D24CC0E8(v15);
  if (v16[16])
  {
    v17 = 0;
  }

  else
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E697DBB8], v9);
    v17 = sub_1D2874428();
    (*(v10 + 8))(v12, v9);
  }

  (*(*v16 + 408))(v17 & 1);

  (*(v10 + 8))(v15, v9);
  sub_1D2877618();
  v18 = v29;
  sub_1D24CC6D4(v8);
  v19 = v25[0];
  v20 = v26;
  (*(v4 + 104))(v25[0], *MEMORY[0x1E697E7D8], v26);
  v21 = sub_1D2874E98();
  v22 = *(v4 + 8);
  v22(v19, v20);
  v22(v8, v20);
  v23 = swift_allocObject();
  *(v23 + 16) = v21 & 1;
  sub_1D2758420(v18, v28, v23);
}

uint64_t sub_1D275B7D8(uint64_t a1)
{
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798);
  sub_1D2877618();
  sub_1D2756CAC();

  sub_1D2877618();
  v6 = v14;
  v7 = a1 + *(type metadata accessor for EffectView() + 36);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v10 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v8, 0);
    (*(v3 + 8))(v5, v2);
    v9 = v14;
  }

  if (*(*&v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) == v9)
  {
    *(*&v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v13 - 2) = v6;
    *(&v13 - 1) = v9;
    v14 = v6;
    sub_1D275C348(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D275BA80(uint64_t a1, double *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798);
  sub_1D2877618();
  if (*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) == v2)
  {
    *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D275C348(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D275BBD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EffectView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D275BC3C()
{
  v1 = *(type metadata accessor for EffectView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1D275B7D8(v2);
}

uint64_t sub_1D275BC9C(uint64_t a1, double *a2)
{
  type metadata accessor for EffectView();

  return sub_1D275BA80(a1, a2);
}

unint64_t sub_1D275BD1C()
{
  result = qword_1ED89DC10;
  if (!qword_1ED89DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17A0);
    sub_1D275BDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC10);
  }

  return result;
}

unint64_t sub_1D275BDA8()
{
  result = qword_1ED89D238;
  if (!qword_1ED89D238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17A8);
    sub_1D275BE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D238);
  }

  return result;
}

unint64_t sub_1D275BE2C()
{
  result = qword_1ED89D5B8;
  if (!qword_1ED89D5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17B0);
    sub_1D275BEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5B8);
  }

  return result;
}

unint64_t sub_1D275BEB8()
{
  result = qword_1ED89D520;
  if (!qword_1ED89D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17B8);
    sub_1D275BF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D520);
  }

  return result;
}

unint64_t sub_1D275BF44()
{
  result = qword_1ED89D5C0;
  if (!qword_1ED89D5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17C8);
    sub_1D2874438();
    sub_1D275C05C();
    sub_1D275C348(&qword_1ED89E078, MEMORY[0x1E697DBD0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5C0);
  }

  return result;
}

unint64_t sub_1D275C05C()
{
  result = qword_1ED89D940;
  if (!qword_1ED89D940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17C8);
    sub_1D275C0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D940);
  }

  return result;
}

unint64_t sub_1D275C0E8()
{
  result = qword_1ED89DB08;
  if (!qword_1ED89DB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17D0);
    sub_1D275C174();
    sub_1D250C854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB08);
  }

  return result;
}

unint64_t sub_1D275C174()
{
  result = qword_1ED89DDB8;
  if (!qword_1ED89DDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17D8);
    sub_1D275C200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDB8);
  }

  return result;
}

unint64_t sub_1D275C200()
{
  result = qword_1ED89D4F8;
  if (!qword_1ED89D4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17E0);
    sub_1D275C28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D4F8);
  }

  return result;
}

unint64_t sub_1D275C28C()
{
  result = qword_1ED89D540;
  if (!qword_1ED89D540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E17E8);
    sub_1D275C348(&qword_1ED89F078, type metadata accessor for VisualEffectViewRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D540);
  }

  return result;
}

uint64_t sub_1D275C348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_33()
{
  v1 = type metadata accessor for EffectView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1798);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2874438();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1D2875E18();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D2874EA8();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[9]), *(v2 + v1[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D275C708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D275C770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E17E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D275C7E0(uint64_t a1)
{
  v2 = type metadata accessor for VisualEffectViewRepresentable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D275C860(uint64_t a1, uint64_t *a2)
{
  v37 = sub_1D2873CB8();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2871908();
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2871988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1920);
  v13 = v12 - 8;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  (*(v9 + 16))(v11, a1, v8, v14);
  v17 = v8;
  v18 = MEMORY[0x1E6969B50];
  sub_1D2775F90(&qword_1ED8A6C60, MEMORY[0x1E6969B50]);
  sub_1D2878318();
  v19 = *(v13 + 44);
  v20 = sub_1D2775F90(&unk_1ED8A6C50, v18);
  ++v40;
  v36 = (v4 + 8);
  *&v21 = 134217984;
  v35 = v21;
  v38 = v19;
  v39 = v17;
  while (1)
  {
    v24 = v41;
    sub_1D2878868();
    sub_1D2775F90(&unk_1ED8A6C70, MEMORY[0x1E6969B18]);
    v25 = sub_1D2877F98();
    (*v40)(v24, v6);
    if (v25)
    {
      break;
    }

    v26 = sub_1D28788B8();
    v28 = *v27;
    v26(v42, 0);
    v29 = v20;
    sub_1D2878878();
    sub_1D2872668();
    v30 = sub_1D2873CA8();
    v31 = sub_1D2878A08();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = v35;
      *(v32 + 4) = v28;
      _os_log_impl(&dword_1D226E000, v30, v31, "indicesToRemove index: %ld VFX attractor - showAttractors: false", v32, 0xCu);
      MEMORY[0x1D38A3520](v32, -1, -1);
    }

    (*v36)(v43, v37);
    v22 = sub_1D2755514(v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_1D24EA42C(v22 & 0xFF01, isUniquelyReferenced_nonNull_native, 0.0);
    *a2 = v42[0];

    v20 = v29;
  }

  return sub_1D22BD238(v16, &unk_1EC6E1920);
}

uint64_t sub_1D275CD0C(_BYTE *a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 377) = a4;
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;
  *(v5 + 376) = a2;
  v7 = sub_1D2873CB8();
  *(v5 + 32) = v7;
  *(v5 + 40) = *(v7 - 8);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  v8 = sub_1D2871DD8();
  *(v5 + 64) = v8;
  *(v5 + 72) = *(v8 - 8);
  *(v5 + 80) = swift_task_alloc();
  v9 = sub_1D2873C58();
  *(v5 + 88) = v9;
  *(v5 + 96) = *(v9 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1770);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  v10 = sub_1D2873838();
  *(v5 + 144) = v10;
  *(v5 + 152) = *(v10 - 8);
  *(v5 + 160) = swift_task_alloc();
  v11 = sub_1D2873C28();
  *(v5 + 168) = v11;
  *(v5 + 176) = *(v11 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v12 = sub_1D2873C48();
  *(v5 + 224) = v12;
  *(v5 + 232) = *(v12 - 8);
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 378) = *a1;
  sub_1D2878568();
  *(v5 + 248) = sub_1D2878558();
  v14 = sub_1D28784F8();
  *(v5 + 256) = v14;
  *(v5 + 264) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D275D078, v14, v13);
}

uint64_t sub_1D275D078()
{
  v81 = v0;
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  v1 = sub_1D2873C38();
  v2 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v80[0] = v4;
    *v3 = 136315138;
    v5 = sub_1D2879198();
    v7 = sub_1D23D7C84(v5, v6, v80);

    *(v3 + 4) = v7;
    v8 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v1, v2, v8, "EffectWorldWarming", "%s - start", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1D38A3520](v4, -1, -1);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v9 = *(v0 + 378);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 168);
  v13 = *(v0 + 176);
  v14 = *(v13 + 16);
  *(v0 + 272) = v14;
  *(v0 + 280) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v11, v10, v12);
  *(v0 + 288) = sub_1D2873C88();
  swift_allocObject();
  *(v0 + 296) = sub_1D2873C78();
  v15 = v9 != 0;
  v16 = sub_1D2879618();

  if (v16)
  {
    sub_1D275F2D4(v15, *(v0 + 136));
    v17 = *(v0 + 144);
    v18 = *(v0 + 152);
    v19 = *(v0 + 136);
    v22 = *(v0 + 160);
    v23 = *(v0 + 128);
    v24 = *(v18 + 56);
    v24(v19, 0, 1, v17);
    (*(v18 + 32))(v22, v19, v17);
    sub_1D28738E8();
    swift_allocObject();
    v25 = sub_1D28738D8();
    (*(v18 + 16))(v23, v22, v17);
    v24(v23, 0, 1, v17);
    sub_1D28738B8();
    (*(v18 + 8))(v22, v17);
    *(v0 + 320) = v25;
    *(v0 + 328) = 0;
    v26 = sub_1D2873C38();
    sub_1D2873C68();
    v27 = sub_1D2878BA8();
    v28 = sub_1D2878EE8();
    if (v28)
    {
      v78 = v27;
      v29 = *(v0 + 120);
      v31 = *(v0 + 88);
      v30 = *(v0 + 96);
      sub_1D2870F78();
      sub_1D2873C98();

      if ((*(v30 + 88))(v29, v31) == *MEMORY[0x1E69E93E8])
      {
        v32 = 0;
        v33 = 0;
        v74 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 96) + 8))(*(v0 + 120), *(v0 + 88));
        v74 = "%s - end";
        v33 = 2;
        v32 = 1;
      }

      v38 = *(v0 + 200);
      v39 = *(v0 + 176);
      v76 = *(v0 + 168);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v80[0] = v41;
      *v40 = v33;
      *(v40 + 1) = v32;
      *(v40 + 2) = 2080;
      v42 = sub_1D2879198();
      v44 = sub_1D23D7C84(v42, v43, v80);

      *(v40 + 4) = v44;
      v45 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v26, v78, v45, "EffectWorldWarming", v74, v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1D38A3520](v41, -1, -1);
      MEMORY[0x1D38A3520](v40, -1, -1);

      v37 = *(v39 + 8);
      v37(v38, v76);
    }

    else
    {
      v34 = *(v0 + 200);
      v35 = *(v0 + 168);
      v36 = *(v0 + 176);

      v37 = *(v36 + 8);
      v37(v34, v35);
    }

    *(v0 + 336) = v37;
    v46 = *(v0 + 72);
    v47 = *(v0 + 80);
    v48 = *(v0 + 64);
    v49 = *(v0 + 377);
    v50 = *(v0 + 16);
    v51 = *(v0 + 376);
    LOBYTE(v80[0]) = *(v0 + 378);
    (*(v46 + 16))(v47, v50, v48);
    objc_allocWithZone(type metadata accessor for VisualEffectSceneManager());
    sub_1D2870F78();
    v52 = sub_1D2771748(0, v25, v80, v51, v47, v49);
    *(v0 + 344) = v52;

    if (v52)
    {
      type metadata accessor for VisualEffectViewManager();
      v53 = swift_allocObject();
      *(v0 + 352) = v53;
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      v54 = sub_1D2873C38();
      v55 = sub_1D2878BB8();
      if (sub_1D2878EE8())
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v80[0] = v57;
        *v56 = 136315138;
        v58 = sub_1D2879198();
        v60 = sub_1D23D7C84(v58, v59, v80);

        *(v56 + 4) = v60;
        v61 = sub_1D2873C08();
        _os_signpost_emit_with_name_impl(&dword_1D226E000, v54, v55, v61, "EffectViewWarming", "%s - start", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x1D38A3520](v57, -1, -1);
        MEMORY[0x1D38A3520](v56, -1, -1);
      }

      (*(v0 + 272))(*(v0 + 208), *(v0 + 216), *(v0 + 168));
      swift_allocObject();
      *(v0 + 360) = sub_1D2873C78();
      v62 = swift_task_alloc();
      *(v0 + 368) = v62;
      *v62 = v0;
      v62[1] = sub_1D275E940;

      return sub_1D277BF6C(v52);
    }

    else
    {

      sub_1D2872668();
      v63 = sub_1D2873CA8();
      v64 = sub_1D2878A18();
      v65 = os_log_type_enabled(v63, v64);
      v67 = *(v0 + 232);
      v66 = *(v0 + 240);
      v77 = *(v0 + 216);
      v79 = *(v0 + 224);
      v75 = *(v0 + 168);
      v73 = *(v0 + 56);
      v69 = *(v0 + 32);
      v68 = *(v0 + 40);
      if (v65)
      {
        format = *(v0 + 240);
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1D226E000, v63, v64, "Failed to load SceneManager", v70, 2u);
        MEMORY[0x1D38A3520](v70, -1, -1);

        (*(v68 + 8))(v73, v69);
        v37(v77, v75);
        (*(v67 + 8))(format, v79);
      }

      else
      {

        (*(v68 + 8))(v73, v69);
        v37(v77, v75);
        (*(v67 + 8))(v66, v79);
      }

      v71 = *(v0 + 8);

      return v71(2, 0);
    }
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 304) = v20;
    *v20 = v0;
    v20[1] = sub_1D275DD98;

    return sub_1D2770ED8(v15);
  }
}

uint64_t sub_1D275DD98(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[32];
    v6 = v4[33];
    v7 = sub_1D275E520;
  }

  else
  {
    v4[39] = a1;
    v5 = v4[32];
    v6 = v4[33];
    v7 = sub_1D275DEC4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D275DEC4()
{
  v59 = v0;
  v1 = *(v0 + 312);
  *(v0 + 320) = 0;
  *(v0 + 328) = v1;
  v2 = sub_1D2873C38();
  sub_1D2873C68();
  v3 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v56 = v3;
    v4 = *(v0 + 120);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x1E69E93E8])
    {
      v7 = 0;
      v8 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 96) + 8))(*(v0 + 120), *(v0 + 88));
      format = "%s - end";
      v8 = 2;
      v7 = 1;
    }

    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v54 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v58 = v16;
    *v15 = v8;
    *(v15 + 1) = v7;
    *(v15 + 2) = 2080;
    v17 = sub_1D2879198();
    v19 = sub_1D23D7C84(v17, v18, &v58);

    *(v15 + 4) = v19;
    v20 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v2, v56, v20, "EffectWorldWarming", format, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1D38A3520](v16, -1, -1);
    MEMORY[0x1D38A3520](v15, -1, -1);

    v12 = *(v14 + 8);
    v12(v13, v54);
  }

  else
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);

    v12 = *(v11 + 8);
    v12(v9, v10);
  }

  *(v0 + 336) = v12;
  v21 = *(v0 + 72);
  v22 = *(v0 + 80);
  v23 = *(v0 + 64);
  v24 = *(v0 + 377);
  v25 = *(v0 + 16);
  v26 = *(v0 + 376);
  LOBYTE(v58) = *(v0 + 378);
  (*(v21 + 16))(v22, v25, v23);
  objc_allocWithZone(type metadata accessor for VisualEffectSceneManager());
  v27 = v1;
  v28 = sub_1D2771748(v1, 0, &v58, v26, v22, v24);
  *(v0 + 344) = v28;

  if (v28)
  {
    type metadata accessor for VisualEffectViewManager();
    v29 = swift_allocObject();
    *(v0 + 352) = v29;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    v30 = sub_1D2873C38();
    v31 = sub_1D2878BB8();
    if (sub_1D2878EE8())
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v32 = 136315138;
      v34 = sub_1D2879198();
      v36 = sub_1D23D7C84(v34, v35, &v58);

      *(v32 + 4) = v36;
      v37 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v30, v31, v37, "EffectViewWarming", "%s - start", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1D38A3520](v33, -1, -1);
      MEMORY[0x1D38A3520](v32, -1, -1);
    }

    (*(v0 + 272))(*(v0 + 208), *(v0 + 216), *(v0 + 168));
    swift_allocObject();
    *(v0 + 360) = sub_1D2873C78();
    v38 = swift_task_alloc();
    *(v0 + 368) = v38;
    *v38 = v0;
    v38[1] = sub_1D275E940;

    return sub_1D277BF6C(v28);
  }

  else
  {

    sub_1D2872668();
    v40 = sub_1D2873CA8();
    v41 = sub_1D2878A18();
    v42 = os_log_type_enabled(v40, v41);
    v44 = *(v0 + 232);
    v43 = *(v0 + 240);
    v55 = *(v0 + 216);
    v57 = *(v0 + 224);
    formata = *(v0 + 168);
    v45 = *(v0 + 56);
    v47 = *(v0 + 32);
    v46 = *(v0 + 40);
    if (v42)
    {
      v51 = *(v0 + 240);
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1D226E000, v40, v41, "Failed to load SceneManager", v48, 2u);
      v49 = v48;
      v43 = v51;
      MEMORY[0x1D38A3520](v49, -1, -1);
    }

    (*(v46 + 8))(v45, v47);
    v12(v55, formata);
    (*(v44 + 8))(v43, v57);

    v50 = *(v0 + 8);

    return v50(2, 0);
  }
}

uint64_t sub_1D275E520()
{
  v41 = v0;

  sub_1D2872668();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A18();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D226E000, v1, v2, "Failed to load VFXWorld / SceneManager.", v3, 2u);
    MEMORY[0x1D38A3520](v3, -1, -1);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  (*(v5 + 8))(v4, v6);
  v7 = sub_1D2873C38();
  sub_1D2873C68();
  v8 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v39 = v8;
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
      format = "%s - end with error";
      v13 = 2;
      v12 = 1;
    }

    v22 = v0[29];
    v37 = v0[28];
    v38 = v0[30];
    v36 = v0[27];
    v24 = v0[22];
    v23 = v0[23];
    v25 = v0[21];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = v13;
    *(v26 + 1) = v12;
    *(v26 + 2) = 2080;
    v28 = sub_1D2879198();
    v30 = sub_1D23D7C84(v28, v29, &v40);

    *(v26 + 4) = v30;
    v31 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v7, v39, v31, "EffectWorldWarming", format, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1D38A3520](v27, -1, -1);
    MEMORY[0x1D38A3520](v26, -1, -1);

    v32 = *(v24 + 8);
    v32(v23, v25);
    v32(v36, v25);
    (*(v22 + 8))(v38, v37);
  }

  else
  {
    v15 = v0[29];
    v14 = v0[30];
    v17 = v0[27];
    v16 = v0[28];
    v19 = v0[22];
    v18 = v0[23];
    v20 = v0[21];

    v21 = *(v19 + 8);
    v21(v18, v20);
    v21(v17, v20);
    (*(v15 + 8))(v14, v16);
  }

  v33 = v0[1];

  return v33(2, 0);
}

uint64_t sub_1D275E940()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D275EA60, v3, v2);
}

uint64_t sub_1D275EA60()
{
  v37 = v0;

  v1 = sub_1D2873C38();
  sub_1D2873C68();
  v2 = sub_1D2878BA8();
  if (sub_1D2878EE8())
  {
    v33 = v2;
    v3 = v0[14];
    v5 = v0[11];
    v4 = v0[12];
    sub_1D2870F78();
    sub_1D2873C98();

    if ((*(v4 + 88))(v3, v5) == *MEMORY[0x1E69E93E8])
    {
      v6 = 0;
      v7 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[12] + 8))(v0[14], v0[11]);
      format = "%s - end";
      v7 = 2;
      v6 = 1;
    }

    v25 = v0[41];
    v13 = v0[29];
    v31 = v0[30];
    v27 = v0[42];
    v29 = v0[28];
    v26 = v0[27];
    v14 = v0[24];
    v15 = v0[21];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = v7;
    *(v16 + 1) = v6;
    *(v16 + 2) = 2080;
    v18 = sub_1D2879198();
    v20 = sub_1D23D7C84(v18, v19, &v36);

    *(v16 + 4) = v20;
    v21 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v1, v33, v21, "EffectViewWarming", format, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1D38A3520](v17, -1, -1);
    MEMORY[0x1D38A3520](v16, -1, -1);

    v27(v14, v15);
    v27(v26, v15);
    (*(v13 + 8))(v31, v29);
  }

  else
  {
    v8 = v0[41];
    v9 = v0[42];
    v10 = v0[29];
    v30 = v0[28];
    v34 = v0[30];
    v28 = v0[27];
    v11 = v0[24];
    v12 = v0[21];

    v9(v11, v12);
    v9(v28, v12);
    (*(v10 + 8))(v34, v30);
  }

  v32 = v0[43];
  v35 = v0[44];

  v22 = v0[1];

  return v22(v32, v35);
}

uint64_t sub_1D275EE48(char a1)
{
  v2 = v1;
  sub_1D2758CD8(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v16);
  if (v18)
  {
    v4 = *(&v16 + 1);
    v5 = v17;
    v14 = MEMORY[0x1E69E6370];
    v6 = a1 & 1;
    LOBYTE(v13[0]) = a1 & 1;
    v7 = v16;
    sub_1D2777178(v13, 0x646F4D746867696CLL, 0xE900000000000065, 1);
  }

  else
  {
    sub_1D227268C(&v16, v13);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = MEMORY[0x1E69E6370];
    v6 = a1 & 1;
    v11[0] = a1 & 1;
    (*(v9 + 8))(v11, 6912, v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  result = __swift_destroy_boxed_opaque_existential_0(v13);
  *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isInLightMode) = v6;
  return result;
}

uint64_t sub_1D275EF74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746365666645;
  if (v2 != 1)
  {
    v4 = 0x4433746365666645;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65666645646E6157;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007463;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746365666645;
  if (*a2 != 1)
  {
    v8 = 0x4433746365666645;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65666645646E6157;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007463;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2879618();
  }

  return v11 & 1;
}

uint64_t sub_1D275F070()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D275F114()
{
  sub_1D2877F38();
}

uint64_t sub_1D275F1A4()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D275F244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D2771DE0();
  *a1 = result;
  return result;
}

void sub_1D275F274(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007463;
  v4 = 0xE600000000000000;
  v5 = 0x746365666645;
  if (v2 != 1)
  {
    v5 = 0x4433746365666645;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65666645646E6157;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D275F2D4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v47[1] = a2;
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = v47 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v48 = v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v47 - v15;
  v17 = sub_1D28716B8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v52 = v47 - v20;
  v53 = v4;
  v49 = a1;
  v54 = v3;
  if (a1 > 1u)
  {
  }

  else
  {
    v21 = sub_1D2879618();

    if ((v21 & 1) == 0)
    {
      sub_1D2872668();
      v22 = sub_1D2873CA8();
      v23 = sub_1D2878A18();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1D226E000, v22, v23, "Unsupported effect type for component loading", v24, 2u);
        MEMORY[0x1D38A3520](v24, -1, -1);
      }

      (*(v53 + 8))(v6, v54);
LABEL_20:
      sub_1D2775E68();
      swift_allocError();
      return swift_willThrow();
    }
  }

  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v25 = [qword_1ED8B0058 builtInPlugInsURL];
  if (v25)
  {
    v26 = v25;
    sub_1D2871638();

    (*(v18 + 56))(v13, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v13, 1, 1, v17);
  }

  sub_1D2775EBC(v13, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D22BD238(v16, &qword_1EC6DA1B8);
LABEL_17:
    v33 = v54;
    v34 = v53;
    v35 = v51;
    sub_1D2872668();
    v36 = sub_1D2873CA8();
    v37 = sub_1D2878A18();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D226E000, v36, v37, "Did not find vfxlibrary", v38, 2u);
      MEMORY[0x1D38A3520](v38, -1, -1);
    }

    (*(v34 + 8))(v35, v33);
    goto LABEL_20;
  }

  sub_1D28715F8();
  v27 = *(v18 + 8);
  v27(v16, v17);
  v28 = v52;
  (*(v18 + 32))();
  v29 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v30 = sub_1D28715B8();
  v31 = [v29 initWithURL_];

  if (!v31)
  {
    v27(v28, v17);
    goto LABEL_17;
  }

  v47[0] = v27;
  v32 = v48;
  sub_1D28737F8();
  v40 = v31;
  v41 = v50;
  sub_1D28737D8();
  if (v41)
  {

    sub_1D2872668();
    v42 = sub_1D2873CA8();
    v43 = sub_1D2878A18();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v47[0];
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D226E000, v42, v43, "Failed to create VFXResource", v46, 2u);
      MEMORY[0x1D38A3520](v46, -1, -1);
    }

    (*(v53 + 8))(v32, v54);
    sub_1D2775E68();
    swift_allocError();
    swift_willThrow();

    return v45(v52, v17);
  }

  else
  {

    sub_1D2873848();
    return (v47[0])(v28, v17);
  }
}

id sub_1D275FA24(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D28715B8();
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_1D2775F90(&qword_1ED89CD10, type metadata accessor for VFXWorldLoaderOption);
    v5 = sub_1D2877E78();
  }

  else
  {
    v5 = 0;
  }

  v14[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() worldWithURL:v4 options:v5 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_1D28716B8();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14[0];
    sub_1D28714B8();

    swift_willThrow();
    v12 = sub_1D28716B8();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_1D275FC64()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v28);
  if (v29 == 1)
  {
    v12 = v28[0];
    v11 = v28[1];
    v13 = v28[2];
    v14 = (v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition);
    if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition + 48))
    {
      sub_1D2872668();
      v15 = sub_1D2873CA8();
      v16 = sub_1D2878A18();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1D226E000, v15, v16, "magicEffectPosition is nil", v17, 2u);
        MEMORY[0x1D38A3520](v17, -1, -1);
      }

      else
      {
      }

      return (*(v2 + 8))(v7, v1);
    }

    else
    {
      v22 = *v14;
      if (v14->f64[0] == 0.0 || v22.f64[1] == 0.0)
      {
        sub_1D2872668();
        v25 = sub_1D2873CA8();
        v26 = sub_1D2878A18();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1D226E000, v25, v26, "effectSize is empty", v27, 2u);
          MEMORY[0x1D38A3520](v27, -1, -1);
        }

        return (*(v2 + 8))(v10, v1);
      }

      else
      {
        v23 = [objc_opt_self() valueWithVFXFloat2_];
        v28[3] = sub_1D22BCFD0(0, &qword_1ED89CC90);
        v28[0] = v23;
        v24 = v12;
        sub_1D2777178(v28, 0x725F6E6565726373, 0xEC0000006F697461, 1);

        return __swift_destroy_boxed_opaque_existential_0(v28);
      }
    }
  }

  else
  {
    sub_1D2758D34(v28);
    sub_1D2872668();
    v18 = sub_1D2873CA8();
    v19 = sub_1D2878A18();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D226E000, v18, v19, "wandNodes is nil", v20, 2u);
      MEMORY[0x1D38A3520](v20, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

void sub_1D2760028(char a1)
{
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError) == (a1 & 1))
  {
    return;
  }

  v3 = v1;
  sub_1D2760488();
  if (*(v1 + v2))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {

LABEL_10:
    sub_1D2758CD8(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
    if (v27 == 1)
    {
      sub_1D2758D34(&aBlock);
    }

    else
    {
      sub_1D227268C(&aBlock, v22);
      sub_1D22D7044(v22, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
      type metadata accessor for VisualEffectRENodes();
      if (swift_dynamicCast())
      {
        sub_1D2760560((*(v1 + v2) & 1) == 0, 0x3FC999999999999AuLL, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D287F500;
        *(inited + 32) = 9216;
        v7 = inited + 32;
        *(inited + 64) = MEMORY[0x1E69E6448];
        *(inited + 40) = v4;
        v8 = sub_1D25D6D04(inited);
        swift_setDeallocating();
        sub_1D22BD238(v7, &unk_1EC6E1910);
        sub_1D2753044(v8, 0, 1, 0, 0.2);

        sub_1D2760BB8(v21, 0, 1, 0.2);

        __swift_destroy_boxed_opaque_existential_0(v22);
        return;
      }

      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    goto LABEL_15;
  }

  v5 = sub_1D2879618();

  if (v5)
  {
    goto LABEL_10;
  }

LABEL_15:
  v9 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
      return;
    }

    *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v13;
    sub_1D277A35C();
    swift_unknownObjectRelease();
  }

  v14 = *MEMORY[0x1E6979EB8];
  v15 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  *(v15 + 24) = *(v9 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = v15;
  v17 = objc_opt_self();
  sub_1D2870F78();
  v18 = [v17 functionWithName_];
  v19 = objc_opt_self();
  [v19 begin];
  v26 = sub_1D2776400;
  v27 = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v24 = sub_1D23DFBA8;
  v25 = &block_descriptor_280;
  v20 = _Block_copy(&aBlock);
  sub_1D2870F78();

  [v19 setCompletionBlock_];
  _Block_release(v20);
  [v19 setAnimationDuration_];
  [v19 setAnimationTimingFunction_];
  sub_1D2760EA8(v3, v4);
  [v19 commit];
}

uint64_t sub_1D2760488()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_areAttractorsEnabled;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_areAttractorsEnabled) == 1 && (sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v7), v2 = v8, sub_1D2758D34(v7), (v2 & 1) == 0))
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  result = sub_1D276B0A0(v3 & 1);
  if (*(v0 + v1) == 1 && (sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v7), v5 = v8, result = sub_1D2758D34(v7), (v5 & 1) == 0))
  {
    v6 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxShouldReadColors) = v6 & 1;
  return result;
}

uint64_t sub_1D2760560(char a1, unint64_t a2, char a3)
{
  sub_1D2758CD8(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v41);
  if (v44)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    sub_1D2758D34(&v41);
    if (*(&v46 + 1))
    {
      goto LABEL_3;
    }

    return sub_1D22BD238(&v45, &qword_1EC6E1790);
  }

  sub_1D227268C(&v41, &v45);
  if (!*(&v46 + 1))
  {
    return sub_1D22BD238(&v45, &qword_1EC6E1790);
  }

LABEL_3:
  sub_1D227268C(&v45, &v41);
  v8 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsMapper);
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {
    sub_1D2870F68();
  }

  else
  {
    v10 = sub_1D2879618();
    sub_1D2870F68();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_1D22D7044(&v41, &v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
  type metadata accessor for VisualEffectRENodes();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v11 = *(v8 + 16);
    if (v11)
    {
      a2 = 0;
      v12 = (a1 & 1);
      while (a2 < *(v8 + 16))
      {
        v13 = *(v8 + 8 * a2 + 32);
        v14 = v42;
        v15 = v43;
        __swift_project_boxed_opaque_existential_1(&v41, v42);
        *(&v46 + 1) = MEMORY[0x1E69E6448];
        *&v45 = v12;
        sub_1D2879168();

        if (__OFADD__(v13, 1))
        {
          goto LABEL_41;
        }

        v16 = sub_1D28795C8();
        MEMORY[0x1D38A0C50](v16);

        MEMORY[0x1D38A0C50](0x69736E65746E695FLL, 0xEA00000000007974);
        v4 = 0x6F74636172747461;
        sub_1D2870F68();
        v17 = sub_1D27552A8();
        if (v17 == 46)
        {
          goto LABEL_46;
        }

        v18 = v17;
        ++a2;

        (*(v15 + 16))(&v45, (v18 << 8), 0, v14, v15);
        __swift_destroy_boxed_opaque_existential_0(&v45);
        if (v11 == a2)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      sub_1D2879168();

      MEMORY[0x1D38A0C50](0xD00000000000001CLL, 0x80000001D28C17A0);
      while (1)
      {
        sub_1D2879398();
        __break(1u);
LABEL_48:
        *&v45 = 0;
        *(&v45 + 1) = 0xE000000000000000;
        sub_1D2879168();

        *&v45 = a2;
        *(&v45 + 1) = v4;
        MEMORY[0x1D38A0C50](0xD00000000000001CLL, 0x80000001D28C17A0);
      }
    }

LABEL_20:

    return __swift_destroy_boxed_opaque_existential_0(&v41);
  }

  if (a3)
  {

    goto LABEL_14;
  }

  v40 = *&a2;
  v19 = sub_1D25D6C04(MEMORY[0x1E69E7CC0]);
  v20 = *(v8 + 16);
  if (!v20)
  {
LABEL_39:

    v39 = sub_1D24171A8(v19);

    sub_1D2753044(v39, 0, 1, 0, v40);

    return __swift_destroy_boxed_opaque_existential_0(&v41);
  }

  v21 = 0;
  v22 = (a1 & 1);
  while (1)
  {
    if (v21 >= *(v8 + 16))
    {
      goto LABEL_42;
    }

    v23 = *(v8 + 32 + 8 * v21);
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1D2879168();

    *&v45 = 0x6F74636172747461;
    *(&v45 + 1) = 0xE900000000000072;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_43;
    }

    v24 = sub_1D28795C8();
    MEMORY[0x1D38A0C50](v24);

    MEMORY[0x1D38A0C50](0x69736E65746E695FLL, 0xEA00000000007974);
    v4 = *(&v45 + 1);
    a2 = v45;
    sub_1D2870F68();
    v25 = sub_1D27552A8();
    if (v25 == 46)
    {
      goto LABEL_48;
    }

    v26 = v25;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = v19;
    a2 = (v26 << 8);
    v28 = sub_1D25D100C(v26 << 8);
    v30 = v19[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_44;
    }

    v4 = v29;
    if (v19[3] < v33)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }

    v38 = v28;
    sub_1D24EFC94();
    v28 = v38;
    v19 = v45;
    if (v4)
    {
LABEL_24:
      *(v19[7] + 4 * v28) = v22;
      goto LABEL_25;
    }

LABEL_35:
    v19[(v28 >> 6) + 8] |= 1 << v28;
    v35 = (v19[6] + 2 * v28);
    *v35 = 0;
    v35[1] = v26;
    *(v19[7] + 4 * v28) = v22;
    v36 = v19[2];
    v32 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v32)
    {
      goto LABEL_45;
    }

    v19[2] = v37;
LABEL_25:
    if (v20 == ++v21)
    {
      goto LABEL_39;
    }
  }

  sub_1D24E644C(v33, isUniquelyReferenced_nonNull_native);
  v28 = sub_1D25D100C(v26 << 8);
  if ((v4 & 1) == (v34 & 1))
  {
LABEL_34:
    v19 = v45;
    if (v4)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  result = sub_1D28796E8();
  __break(1u);
  return result;
}

uint64_t sub_1D2760BB8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if (a3)
  {
    v9 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
      v12 = __CFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        __break(1u);
        return result;
      }

      *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v13;
      sub_1D277A35C();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = swift_allocObject();
    v9 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
    swift_unknownObjectWeakLoadStrong();
    *(v14 + 24) = *(v9 + 24);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
    v15 = swift_allocObject();
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 1;
    v16 = 1.0 / *&a2;
    *(v15 + 64) = 0;
    *(v15 + 72) = 0;
    *(v15 + 52) = v16;
    *(v15 + 56) = 0;
    *(v15 + 16) = sub_1D276ED00;
    *(v15 + 24) = v14;
    swift_beginAccess();
    v17 = swift_retain_n();
    MEMORY[0x1D38A0E30](v17);
    if (*((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2878428();
    }

    sub_1D2878488();
    swift_endAccess();
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  *(v18 + 24) = *(v9 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
  v19 = swift_allocObject();
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = 1;
  v20 = 1.0 / a4;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 52) = v20;
  v21 = *&a2;
  if (a3)
  {
    v21 = 0.0;
  }

  *(v19 + 56) = v21;
  *(v19 + 16) = sub_1D276ECF8;
  *(v19 + 24) = v18;
  swift_beginAccess();
  v22 = swift_retain_n();
  MEMORY[0x1D38A0E30](v22);
  if (*((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D2878428();
  }

  sub_1D2878488();
  swift_endAccess();
}

uint64_t sub_1D2760EA8(uint64_t a1, float a2)
{
  sub_1D2758CD8(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v16);
  if (v18)
  {
    v4 = *(&v16 + 1);
    v5 = v17;
    v14 = MEMORY[0x1E69E6448];
    *v13 = a2;
    v6 = v16;
    sub_1D2777178(v13, 0xD000000000000013, 0x80000001D28AEB00, 0);
  }

  else
  {
    sub_1D227268C(&v16, v13);
    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError;
    sub_1D2760560((*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError) & 1) == 0, 0, 1);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = MEMORY[0x1E69E6448];
    *v11 = a2;
    (*(v9 + 16))(v11, 9216, 0, v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v11);
    if (*(a1 + v7) == 1)
    {
      sub_1D2761000();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_1D2761000()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v14);
  if (v16)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1D2758D34(&v14);
    if (*(&v18 + 1))
    {
LABEL_3:
      sub_1D227268C(&v17, v20);
      v5 = v21;
      v6 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v7 = MEMORY[0x1E69E6448];
      v15 = MEMORY[0x1E69E6448];
      LODWORD(v14) = 0;
      (*(v6 + 8))(&v14, 6400, v5, v6);
      __swift_destroy_boxed_opaque_existential_0(&v14);
      v8 = v21;
      v9 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v15 = v7;
      LODWORD(v14) = 0;
      (*(v9 + 8))(&v14, 6656, v8, v9);
      __swift_destroy_boxed_opaque_existential_0(&v14);
      return __swift_destroy_boxed_opaque_existential_0(v20);
    }
  }

  else
  {
    sub_1D227268C(&v14, &v17);
    if (*(&v18 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D22BD238(&v17, &qword_1EC6E1790);
  sub_1D2872668();
  v11 = sub_1D2873CA8();
  v12 = sub_1D2878A18();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D226E000, v11, v12, "gpNodes is nil", v13, 2u);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_1D2761250()
{
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isForStickers) == 1)
  {
    sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v10);
    if (v12)
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      sub_1D2758D34(&v10);
      if (*(&v14 + 1))
      {
LABEL_4:
        sub_1D227268C(&v13, v16);
        v1 = v17;
        v2 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v11 = MEMORY[0x1E69E6370];
        LOBYTE(v10) = 1;
        (*(v2 + 8))(&v10, 9728, v1, v2);
        __swift_destroy_boxed_opaque_existential_0(&v10);
        if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
        {
        }

        else
        {
          v3 = sub_1D2879618();

          if ((v3 & 1) == 0)
          {
            v4 = v17;
            v5 = v18;
            __swift_project_boxed_opaque_existential_1(v16, v17);
            v11 = MEMORY[0x1E69E6448];
            LODWORD(v10) = 1058642330;
            (*(v5 + 8))(&v10, 1280, v4, v5);
            __swift_destroy_boxed_opaque_existential_0(&v10);
            v6 = COERCE_DOUBLE(vdup_n_s32(0x3F19999Au));
LABEL_13:
            v7 = [objc_opt_self() valueWithVFXFloat2_];
            v8 = v17;
            v9 = v18;
            __swift_project_boxed_opaque_existential_1(v16, v17);
            v11 = sub_1D22BCFD0(0, &qword_1ED89CC90);
            *&v10 = v7;
            (*(v9 + 8))(&v10, 1536, v8, v9);
            __swift_destroy_boxed_opaque_existential_0(&v10);
            __swift_destroy_boxed_opaque_existential_0(v16);
            return;
          }
        }

        sub_1D2766E4C(1);
        v6 = 2.00000048;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D227268C(&v10, &v13);
      if (*(&v14 + 1))
      {
        goto LABEL_4;
      }
    }

    sub_1D22BD238(&v13, &qword_1EC6E1790);
  }
}

uint64_t sub_1D27614F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingScroll);
  result = swift_unknownObjectWeakLoadStrong();
  if (v1 == 1)
  {
    if (!result)
    {
      return result;
    }

    v3 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
    v4 = __CFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
      return result;
    }

    *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v5;
    sub_1D277A35C();
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_1D277B7F8();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1D2761588()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2871DD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v19);
  if (v21)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    sub_1D2758D34(&v19);
    if (*(&v23 + 1))
    {
LABEL_3:
      sub_1D227268C(&v22, v25);
      v9 = v26;
      v10 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_aspectRatio;
      swift_beginAccess();
      (*(v6 + 16))(v8, v0 + v11, v5);
      sub_1D2871DA8();
      v13 = v12;
      (*(v6 + 8))(v8, v5);
      v14 = v13;
      v20 = MEMORY[0x1E69E6448];
      *&v19 = v14;
      (*(v10 + 8))(&v19, 0, v9, v10);
      __swift_destroy_boxed_opaque_existential_0(&v19);
      return __swift_destroy_boxed_opaque_existential_0(v25);
    }
  }

  else
  {
    sub_1D227268C(&v19, &v22);
    if (*(&v23 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D22BD238(&v22, &qword_1EC6E1790);
  sub_1D2872668();
  v16 = sub_1D2873CA8();
  v17 = sub_1D2878A18();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D226E000, v16, v17, "gpNodes is nil", v18, 2u);
    MEMORY[0x1D38A3520](v18, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_1D2761880()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {

    goto LABEL_12;
  }

  v5 = sub_1D2879618();

  if (v5)
  {
LABEL_12:

    sub_1D276B0A0(1);
    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_world);
  if (v6)
  {
    v21 = v4;
    v22 = v2;
    v23 = v1;
    v20 = v0;
    v26 = MEMORY[0x1E69E7CC0];
    v7 = v6;
    v8 = 1;
    while (1)
    {
      v9 = [v7 rootNode];
      strcpy(v25, "EmitterFlare");
      HIBYTE(v25[6]) = 0;
      v25[7] = -5120;
      v24 = v8;
      v10 = sub_1D28795C8();
      MEMORY[0x1D38A0C50](v10);

      v11 = sub_1D2878068();

      v12 = [v9 childNodeWithName_];

      if (!v12)
      {
        break;
      }

      v13 = v12;
      MEMORY[0x1D38A0E30]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2878428();
      }

      sub_1D2878488();

      v14 = v26;
      if (++v8 == 9)
      {
        v19 = v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxAttractorNodes;
        sub_1D2870F68();
        os_unfair_lock_lock(v19);

        *(v19 + 8) = v14;

        os_unfair_lock_unlock(v19);

        return;
      }
    }

    v15 = v21;
    sub_1D2872668();
    v16 = sub_1D2873CA8();
    v17 = sub_1D2878A18();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v8;
      _os_log_impl(&dword_1D226E000, v16, v17, "Failed to load 'EmitterFlare%ld'", v18, 0xCu);
      MEMORY[0x1D38A3520](v18, -1, -1);
    }

    (*(v22 + 8))(v15, v23);
  }
}

uint64_t sub_1D2761C30(char a1, char a2, char a3, char a4)
{
  v5 = v4;
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
  sub_1D2758CD8(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v107);
  v10 = MEMORY[0x1E69E6448];
  if ((v109 & 1) == 0)
  {
    sub_1D227268C(&v107, v104);
    v97 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType);
    v95 = a1;
    if (*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
    {

      v20 = 0.7;
    }

    else
    {
      v19 = sub_1D2879618();

      if (v19)
      {
        v20 = 0.7;
      }

      else
      {
        v20 = 0.42;
      }
    }

    v21 = v105;
    v22 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    v102 = v10;
    *&v101 = v20;
    (*(v22 + 8))(&v101, 768, v21, v22);
    __swift_destroy_boxed_opaque_existential_0(&v101);
    v23 = v97;
    if (v97 > 1)
    {
    }

    else
    {
      v24 = sub_1D2879618();

      if ((v24 & 1) == 0)
      {
LABEL_21:
        v94 = v9;
        if (a2)
        {
          goto LABEL_24;
        }

        if (v23 > 1)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_32;
        }

        v30 = sub_1D2879618();

        if ((v30 & 1) == 0)
        {
LABEL_24:
          v31 = v105;
          v32 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v10;
          LODWORD(v101) = 1051372202;
          v33 = *(v32 + 8);
          v34 = v32;
          v23 = v97;
          v33(&v101, 1280, v31, v34);
          __swift_destroy_boxed_opaque_existential_0(&v101);
        }

        if (v23 > 1)
        {

          if (a2)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v35 = sub_1D2879618();

          if (v35 & 1) == 0 || (a2)
          {
            goto LABEL_40;
          }
        }

LABEL_32:
        if ((*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isForStickers) & 1) == 0)
        {
          sub_1D22D7044(v104, &v101);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
          type metadata accessor for VisualEffectRENodes();
          if (swift_dynamicCast())
          {
            v36 = v98[0];
            if (a4)
            {
              v37 = 1.0;
            }

            else
            {
              v37 = 0.0;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F8);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1D287F550;
            *(inited + 32) = 7680;
            *(inited + 36) = 0;
            *(inited + 40) = 10752;
            *(inited + 44) = v37;
            v39 = sub_1D25D6C04(inited);
            swift_setDeallocating();
            v40 = sub_1D24171A8(v39);

            sub_1D2753044(v40, 0, 1, 0, 0.2);

            v41 = swift_allocObject();
            swift_unknownObjectWeakInit();
            type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
            v42 = swift_allocObject();
            *(v42 + 32) = 0;
            *(v42 + 40) = 0;
            *(v42 + 48) = 1;
            *(v42 + 64) = 0;
            *(v42 + 72) = 0;
            *(v42 + 52) = 1084227584;
            *(v42 + 56) = 0;
            *(v42 + 16) = sub_1D276ECE8;
            *(v42 + 24) = v41;
            swift_beginAccess();
            v43 = swift_retain_n();
            MEMORY[0x1D38A0E30](v43);
            if (*((*(v36 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v36 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D2878428();
            }

            sub_1D2878488();
            swift_endAccess();

            sub_1D2760BB8(v36, 0, 1, 0.2);

            v23 = v97;
          }
        }

LABEL_40:
        if (v23 < 2)
        {
          v44 = v5;
          v46 = sub_1D2879618();

          if (v46)
          {
            v47 = -1;
          }

          else
          {
            v47 = 0;
          }

          v45 = vbsl_s8(vdup_n_s32(v47), vdup_n_s32(0x3FD55555u), 0x3F0000003F000000);
LABEL_46:
          v48 = objc_opt_self();
          v49 = [v48 valueWithVFXFloat2_];
          v51 = v105;
          v50 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v52 = sub_1D22BCFD0(0, &qword_1ED89CC90);
          v102 = v52;
          *&v101 = v49;
          v53 = *(v50 + 8);
          v93 = v49;
          v53(&v101, 1536, v51, v50);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          v54 = v44;
          sub_1D2761588();
          if ((v95 & 1) == 0)
          {
            sub_1D2765280(0, 1);
          }

          __asm { FMOV            V0.2S, #1.0 }

          v60 = [v48 valueWithVFXFloat2_];
          v61 = v105;
          v62 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v52;
          *&v101 = v60;
          v63 = *(v62 + 8);
          v64 = v60;
          v63(&v101, 7168, v61, v62);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          v65 = MEMORY[0x1E69E6448];
          if (v95)
          {
            if (a2)
            {
LABEL_52:
              v67 = v105;
              v68 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = v65;
              LODWORD(v101) = 0;
              (*(v68 + 8))(&v101, 7680, v67, v68);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              goto LABEL_53;
            }

            if (v97 <= 1)
            {
              v66 = sub_1D2879618();

              if (v66)
              {
                goto LABEL_53;
              }

              goto LABEL_52;
            }
          }

LABEL_53:
          v69 = v105;
          v70 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v65;
          LODWORD(v101) = 0;
          (*(v70 + 8))(&v101, 0x2000, v69, v70);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          v71 = v105;
          v72 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v65;
          LODWORD(v101) = 0;
          (*(v72 + 8))(&v101, 8704, v71, v72);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          v73 = v105;
          v74 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v65;
          LODWORD(v101) = 1065353216;
          (*(v74 + 8))(&v101, 8448, v73, v74);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          if (v97 > 1)
          {
          }

          else
          {
            v75 = sub_1D2879618();

            if ((v75 & 1) == 0)
            {
              v76 = v105;
              v77 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = v65;
              LODWORD(v101) = 0;
              (*(v77 + 8))(&v101, 7936, v76, v77);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              sub_1D2761000();
LABEL_58:
              v80 = v105;
              v81 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = v65;
              LODWORD(v101) = 1032805416;
              (*(v81 + 8))(&v101, 1792, v80, v81);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              v82 = v105;
              v83 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = MEMORY[0x1E69E6370];
              LOBYTE(v101) = 0;
              (*(v83 + 8))(&v101, 7424, v82, v83);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              v84 = v105;
              v85 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = MEMORY[0x1E69E6530];
              *&v101 = 0;
              (*(v85 + 8))(&v101, 9984, v84, v85);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              if (v97 > 1)
              {

                v87 = 0.1;
              }

              else
              {
                v86 = sub_1D2879618();

                if (v86)
                {
                  v87 = 0.1;
                }

                else
                {
                  v87 = 0.35;
                }
              }

              v88 = v105;
              v89 = v106;
              __swift_project_boxed_opaque_existential_1(v104, v105);
              v102 = MEMORY[0x1E69E63B0];
              *&v101 = v87;
              (*(v89 + 8))(&v101, 6144, v88, v89);
              __swift_destroy_boxed_opaque_existential_0(&v101);
              sub_1D2758CD8(v54 + v94, &v101);
              if (v103)
              {

                sub_1D2758D34(&v101);
              }

              else
              {
                sub_1D227268C(&v101, v98);
                v90 = v99;
                v91 = v100;
                __swift_project_boxed_opaque_existential_1(v98, v99);
                (*(v91 + 40))(v90, v91);

                __swift_destroy_boxed_opaque_existential_0(v98);
              }

              v18 = v104;
              return __swift_destroy_boxed_opaque_existential_0(v18);
            }
          }

          v78 = v105;
          v79 = v106;
          __swift_project_boxed_opaque_existential_1(v104, v105);
          v102 = v65;
          LODWORD(v101) = 0;
          (*(v79 + 8))(&v101, 6400, v78, v79);
          __swift_destroy_boxed_opaque_existential_0(&v101);
          goto LABEL_58;
        }

LABEL_41:
        v44 = v5;

        v45 = vdup_n_s32(0x3FD55555u);
        goto LABEL_46;
      }
    }

    sub_1D22D7044(v104, &v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
    type metadata accessor for VisualEffectRENodes();
    if (swift_dynamicCast())
    {
      v25 = v98[0];
      if (a3)
      {
        v102 = v10;
        LODWORD(v101) = 0;
        sub_1D2754BC0(&v101, 11008);
        __swift_destroy_boxed_opaque_existential_0(&v101);
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v25;
        type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
        v28 = swift_allocObject();
        *(v28 + 32) = 0;
        *(v28 + 40) = 0;
        *(v28 + 48) = 1;
        *(v28 + 64) = 0;
        *(v28 + 72) = 0;
        *(v28 + 52) = 1084227584;
        *(v28 + 56) = 0;
        *(v28 + 16) = sub_1D276ECF0;
        *(v28 + 24) = v27;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D2870F78();
        v29 = sub_1D2870F78();
        MEMORY[0x1D38A0E30](v29);
        if (*((*(v25 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v25 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D2878428();
        }

        sub_1D2878488();
        swift_endAccess();

        sub_1D2760BB8(v25, 0, 1, 0.2);

        v23 = v97;
      }

      else
      {
        v102 = v10;
        LODWORD(v101) = 1061997773;
        sub_1D2754BC0(&v101, 11008);

        __swift_destroy_boxed_opaque_existential_0(&v101);
      }
    }

    goto LABEL_21;
  }

  v11 = *(&v107 + 1);
  v12 = v108;
  v13 = 1.0;
  if (a1)
  {
    v13 = 0.0;
  }

  v102 = MEMORY[0x1E69E6448];
  *&v101 = v13;
  v14 = v107;
  sub_1D2777178(&v101, 0xD000000000000017, 0x80000001D28AF030, 1);

  __swift_destroy_boxed_opaque_existential_0(&v101);
  v102 = v10;
  LODWORD(v101) = 0;
  v15 = v14;
  sub_1D2777178(&v101, 0xD000000000000016, 0x80000001D28AEA90, 1);

  __swift_destroy_boxed_opaque_existential_0(&v101);
  v102 = v10;
  LODWORD(v101) = 0;
  v16 = v15;
  sub_1D2777178(&v101, 0xD00000000000001ALL, 0x80000001D28AEAB0, 1);

  __swift_destroy_boxed_opaque_existential_0(&v101);
  v102 = v10;
  LODWORD(v101) = 0;
  v17 = v16;
  sub_1D2777178(&v101, 0xD00000000000001CLL, 0x80000001D28AF050, 1);

  v18 = &v101;
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_1D2762B40(int a1, int a2, int a3)
{
  v4 = v3;
  LODWORD(v42) = a3;
  LODWORD(v41) = a2;
  v40 = a1;
  v5 = sub_1D2877B48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D2877B68();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D2877B38();
  v9 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1D2877BA8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v38 - v18;
  v20 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType);
  v48 = v6;
  v49 = v5;
  v43 = v17;
  if (v20 > 1)
  {
  }

  else
  {
    v21 = sub_1D2879618();

    if ((v21 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_1D2758CD8(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v55 == 1)
  {
    sub_1D2758D34(&aBlock);
  }

  else
  {
    sub_1D227268C(&aBlock, v50);
    sub_1D22D7044(v50, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
    type metadata accessor for VisualEffectRENodes();
    if (swift_dynamicCast())
    {
      sub_1D2753D54();
    }

    __swift_destroy_boxed_opaque_existential_0(v50);
  }

LABEL_10:
  v22 = v4;
  v23 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
  result = swift_unknownObjectWeakLoadStrong();
  v25 = result;
  v26 = *(v23 + 24);
  if (!result)
  {
LABEL_13:
    v38[1] = v22;
    sub_1D2761C30(v40 & 1, 0, v41 & 1, v42 & 1);
    sub_1D22BCFD0(0, &qword_1ED89CD50);
    v42 = sub_1D2878AB8();
    sub_1D2877B88();
    *v11 = 1;
    v30 = v39;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E7F48], v39);
    MEMORY[0x1D38A0630](v16, v11);
    (*(v9 + 8))(v11, v30);
    v41 = *(v13 + 8);
    v31 = v43;
    v41(v16, v43);
    v32 = swift_allocObject();
    *(v32 + 16) = v25;
    *(v32 + 24) = v26;
    v54 = sub_1D276ECA8;
    v55 = v32;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v52 = sub_1D23DFBA8;
    v53 = &block_descriptor_42;
    v33 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v34 = v44;
    sub_1D2877B58();
    v50[0] = MEMORY[0x1E69E7CC0];
    sub_1D2775F90(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
    sub_1D22D5EFC();
    v35 = v46;
    v36 = v49;
    sub_1D2879088();
    v37 = v42;
    MEMORY[0x1D38A1510](v19, v34, v35, v33);
    _Block_release(v33);

    (*(v48 + 8))(v35, v36);
    (*(v45 + 8))(v34, v47);
    v41(v19, v31);

    sub_1D2761250();
    return swift_unknownObjectRelease();
  }

  v27 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
  v28 = __CFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v29;
    swift_unknownObjectRetain();
    sub_1D277A35C();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D276319C(double a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratingTask;
    if (*(result + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratingTask))
    {
      sub_1D2870F78();
      sub_1D28786B8();
    }

    v15 = sub_1D28785F8();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v17 = sub_1D2878558();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v16;
    *(v18 + 40) = a3 & 1;
    *(v18 + 48) = a1;
    *(v18 + 56) = a4;
    *(v18 + 64) = a5;

    *&v13[v14] = sub_1D22AE01C(0, 0, v11, &unk_1D28A4868, v18);
  }

  return result;
}

uint64_t sub_1D27633B0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 472) = a7;
  *(v8 + 480) = a8;
  *(v8 + 464) = a1;
  *(v8 + 177) = a6;
  *(v8 + 456) = a5;
  v9 = sub_1D2873CB8();
  *(v8 + 488) = v9;
  *(v8 + 496) = *(v9 - 8);
  *(v8 + 504) = swift_task_alloc();
  sub_1D2878568();
  *(v8 + 512) = sub_1D2878558();
  v11 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D27634B0, v11, v10);
}

uint64_t sub_1D27634B0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_1D28786D8() & 1) != 0 || (sub_1D28786D8())
    {
      goto LABEL_32;
    }

    v3 = *(v0 + 464);
    v4 = *(v0 + 177);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    *(v5 + 32) = v4;
    *(v5 + 40) = *(v0 + 472);
    sub_1D2758CD8(&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController], v0 + 136);
    if (*(v0 + 176))
    {
      *(v0 + 256) = 0;
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
      v6 = v2;
      swift_retain_n();
      v7 = v6;
      sub_1D2758D34(v0 + 136);
      if (*(v0 + 248))
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_1D227268C((v0 + 136), v0 + 224);
      v12 = v2;
      swift_retain_n();
      v13 = v12;
      if (*(v0 + 248))
      {
LABEL_6:
        v8 = *(v0 + 177);
        sub_1D227268C((v0 + 224), v0 + 184);
        v9 = *(v0 + 208);
        v10 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_1((v0 + 184), v9);
        v11 = MEMORY[0x1E69E6448];
        *(v0 + 328) = MEMORY[0x1E69E6448];
        *(v0 + 304) = 0;
        (*(v10 + 16))(v0 + 304, 6400, 0, v9, v10);
        __swift_destroy_boxed_opaque_existential_0(v0 + 304);
        if ((v8 & 1) == 0)
        {
          v25 = *(v0 + 208);
          v26 = *(v0 + 216);
          __swift_project_boxed_opaque_existential_1((v0 + 184), v25);
          *(v0 + 360) = v11;
          *(v0 + 336) = 1036831949;
          (*(v26 + 16))(v0 + 336, 6400, 0, v25, v26);
          __swift_destroy_boxed_opaque_existential_0(v0 + 336);
          if (sub_1D28786D8())
          {
LABEL_24:
            __swift_destroy_boxed_opaque_existential_0(v0 + 184);
            goto LABEL_25;
          }

          v28 = *(v0 + 472);
          v27 = *(v0 + 480);
          v29 = *(v0 + 464);
          sub_1D2870F78();
          sub_1D2771E2C(0, v2, v28, v27, 0.1, 0.7, v29);
LABEL_23:

          goto LABEL_24;
        }

        if (v2[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType] && v2[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType] != 1)
        {
        }

        else
        {
          v30 = sub_1D2879618();

          if ((v30 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        sub_1D22D7044(v0 + 184, v0 + 264);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
        type metadata accessor for VisualEffectRENodes();
        if (swift_dynamicCast())
        {
          v31 = *(v0 + 448);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D287F500;
          *(inited + 32) = 6400;
          v33 = inited + 32;
          *(inited + 64) = v11;
          *(inited + 40) = 1036831949;
          v34 = sub_1D25D6D04(inited);
          swift_setDeallocating();
          sub_1D22BD238(v33, &unk_1EC6E1910);
          sub_1D2753044(v34, 0, 1, 2, 1.0);

          type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
          v35 = swift_allocObject();
          *(v35 + 32) = 0;
          *(v35 + 40) = 0;
          *(v35 + 48) = 1;
          *(v35 + 64) = 0;
          *(v35 + 72) = 0;
          *(v35 + 52) = 1065353216;
          *(v35 + 56) = 0;
          *(v35 + 16) = sub_1D2774758;
          *(v35 + 24) = v5;
          swift_beginAccess();
          v36 = sub_1D2870F78();
          MEMORY[0x1D38A0E30](v36);
          if (*((*(v31 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v31 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_22:
            sub_1D2878488();
            swift_endAccess();
            sub_1D2760BB8(v31, 0, 1, 1.0);
            goto LABEL_23;
          }

LABEL_37:
          sub_1D2878428();
          goto LABEL_22;
        }

LABEL_26:
        v37 = objc_allocWithZone(MEMORY[0x1E69793D0]);
        LODWORD(v38) = 1053609165;
        LODWORD(v39) = 1063675494;
        LODWORD(v40) = 1.0;
        LODWORD(v41) = 1.0;
        v42 = [v37 initWithControlPoints__:v38 :{v40, v39, v41}];
        v43 = swift_allocObject();
        *(v43 + 16) = sub_1D2774758;
        *(v43 + 24) = v5;
        v31 = *&v2[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator];
        v44 = swift_unknownObjectWeakLoadStrong();
        if (!v44)
        {
          sub_1D2870F78();
          goto LABEL_30;
        }

        v45 = *(v44 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
        v46 = __CFADD__(v45, 1);
        v47 = v45 + 1;
        if (!v46)
        {
          *(v44 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v47;
          sub_1D2870F78();
          sub_1D277A35C();
          swift_unknownObjectRelease();
LABEL_30:
          v48 = swift_allocObject();
          swift_unknownObjectWeakLoadStrong();
          *(v48 + 24) = *(v31 + 24);
          swift_unknownObjectWeakInit();
          swift_unknownObjectRelease();
          v49 = swift_allocObject();
          v49[2] = v48;
          v49[3] = sub_1D22D79AC;
          v49[4] = v43;
          v50 = objc_opt_self();
          sub_1D2870F78();
          sub_1D2870F78();
          [v50 begin];
          *(v0 + 120) = sub_1D2776400;
          *(v0 + 128) = v49;
          *(v0 + 88) = MEMORY[0x1E69E9820];
          *(v0 + 96) = 1107296256;
          *(v0 + 104) = sub_1D23DFBA8;
          *(v0 + 112) = &block_descriptor_93;
          v51 = _Block_copy((v0 + 88));
          sub_1D2870F78();

          [v50 setCompletionBlock_];
          _Block_release(v51);
          [v50 setAnimationDuration_];
          [v50 setAnimationTimingFunction_];
          v53 = *(v0 + 208);
          v52 = *(v0 + 216);
          __swift_project_boxed_opaque_existential_1((v0 + 184), v53);
          *(v0 + 392) = MEMORY[0x1E69E6448];
          *(v0 + 368) = 1036831949;
          (*(v52 + 16))(v0 + 368, 6400, 0, v53, v52);
          __swift_destroy_boxed_opaque_existential_0(v0 + 368);
          [v50 commit];

          __swift_destroy_boxed_opaque_existential_0(v0 + 184);

          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_37;
      }
    }

    sub_1D22BD238(v0 + 224, &qword_1EC6E1790);
    sub_1D2872668();
    v14 = sub_1D2873CA8();
    v15 = sub_1D2878A18();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D226E000, v14, v15, "gpNodes is nil", v16, 2u);
      MEMORY[0x1D38A3520](v16, -1, -1);
    }

    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v19 = *(v0 + 488);

    (*(v18 + 8))(v17, v19);
    v20 = sub_1D28786D8();
    v21 = *(v0 + 480);
    if ((v20 & 1) == 0)
    {
      v22 = *(v0 + 472);
      v23 = *(v0 + 464);
      v24 = *(v0 + 177);
      sub_1D2870F78();
      sub_1D2771E2C(v24, v2, v22, v21, 0.1, 0.7, v23);

LABEL_31:

LABEL_32:
      goto LABEL_33;
    }

LABEL_25:

    goto LABEL_31;
  }

LABEL_33:

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1D2763D80(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, double a5)
{
  result = sub_1D28786D8();
  if ((result & 1) == 0)
  {
    sub_1D2870F78();
    sub_1D2771E2C(a2 & 1, a1, a3, a4, 0.1, 0.7, a5);
  }

  return result;
}

uint64_t sub_1D2763E28(double a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratingTask;
    if (*(result + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratingTask))
    {
      sub_1D2870F78();
      sub_1D28786B8();
    }

    v15 = sub_1D28785F8();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    sub_1D2878568();
    v16 = v13;
    sub_1D2870F78();
    v17 = sub_1D2878558();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v16;
    *(v18 + 40) = a1;
    *(v18 + 48) = a3 & 1;
    *(v18 + 56) = a4;
    *(v18 + 64) = a5;
    *&v13[v14] = sub_1D22AE01C(0, 0, v11, &unk_1D28A4878, v18);
  }

  return result;
}

uint64_t sub_1D2764004(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 56) = a6;
  *(v8 + 24) = a1;
  *(v8 + 16) = a5;
  sub_1D2878568();
  *(v8 + 48) = sub_1D2878558();
  v10 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D27640A8, v10, v9);
}

uint64_t sub_1D27640A8()
{

  if ((sub_1D28786D8() & 1) == 0)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
    v3 = *(v0 + 56);
    v4 = *(v0 + 24);
    v5 = *(v0 + 16);
    sub_1D2870F78();
    sub_1D27725F4(v3, v5, v1, v2, 0.0, 0.7, v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D2764168(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 76) = a6;
  *(v8 + 72) = a1;
  *(v8 + 40) = a5;
  sub_1D2878568();
  *(v8 + 64) = sub_1D2878558();
  v10 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D276420C, v10, v9);
}

uint64_t sub_1D276420C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 76);
    v6 = *(v0 + 72);
    sub_1D2870F78();
    v7 = v2;
    sub_1D2772DBC(v5, v7, v4, v3, v7, v6, 1.0, 0.3);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D27642FC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_delayedGeneratedCompletions;
  swift_beginAccess();
  v5 = *(a3 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    sub_1D2870F68();
    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v9 = sub_1D2870F78();
      v8(v9);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *(a3 + v4) = MEMORY[0x1E69E7CC0];

  *(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratedTask) = 0;
}

uint64_t sub_1D27643D8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2758CD8(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v34);
  if (v36)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1D2758D34(&v34);
    if (*(&v38 + 1))
    {
LABEL_3:
      sub_1D227268C(&v37, v40);
      if (a1)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      if ((a3 & 1) != 0 || (sub_1D22D7044(v40, &v34), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0), type metadata accessor for VisualEffectRENodes(), (swift_dynamicCast() & 1) == 0))
      {
        v20 = v41;
        v21 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v22 = MEMORY[0x1E69E6448];
        v35 = MEMORY[0x1E69E6448];
        LODWORD(v34) = 1065353216;
        (*(v21 + 16))(&v34, 7680, 0, v20, v21);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        v23 = v41;
        v24 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v35 = v22;
        LODWORD(v34) = 0;
        (*(v24 + 16))(&v34, 7936, 0, v23, v24);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        v25 = v41;
        v26 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v35 = v22;
        LODWORD(v34) = 0;
        (*(v26 + 16))(&v34, 8704, 0, v25, v26);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        v27 = v41;
        v28 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v35 = v22;
        LODWORD(v34) = 0;
        (*(v28 + 16))(&v34, 0x2000, 0, v27, v28);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        v29 = v41;
        v30 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v35 = v22;
        *&v34 = v12;
        (*(v30 + 16))(&v34, 6656, 0, v29, v30);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        v31 = v41;
        v32 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        v35 = v22;
        LODWORD(v34) = 1065353216;
        (*(v32 + 16))(&v34, 9472, 0, v31, v32);
        __swift_destroy_boxed_opaque_existential_0(&v34);
        sub_1D27648E8(1, 0, 1, 1, 0.0);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D2888690;
        *(inited + 32) = 7680;
        *(inited + 36) = 1065353216;
        *(inited + 40) = 7936;
        *(inited + 44) = 0;
        *(inited + 48) = 8704;
        *(inited + 52) = 0;
        *(inited + 56) = 0x2000;
        *(inited + 60) = 0;
        *(inited + 64) = 6656;
        *(inited + 68) = v12;
        *(inited + 72) = 9472;
        *(inited + 76) = 1065353216;
        v14 = sub_1D25D6C04(inited);
        swift_setDeallocating();
        v15 = sub_1D24171A8(v14);

        sub_1D2753044(v15, 0, 1, 0, *&a2);

        sub_1D27648E8(1, a2, 0, 1, 0.0);
      }

      return __swift_destroy_boxed_opaque_existential_0(v40);
    }
  }

  else
  {
    sub_1D227268C(&v34, &v37);
    if (*(&v38 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D22BD238(&v37, &qword_1EC6E1790);
  sub_1D2872668();
  v16 = sub_1D2873CA8();
  v17 = sub_1D2878A18();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D226E000, v16, v17, "gpNodes is nil", v18, 2u);
    MEMORY[0x1D38A3520](v18, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D27648E8(char a1, uint64_t a2, char a3, char a4, float a5)
{
  v11 = sub_1D2873CB8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
  sub_1D2758CD8(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v52)
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    sub_1D2758D34(&aBlock);
    if (*(&v54 + 1))
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_1D22BD238(&v53, &qword_1EC6E1790);
    sub_1D2872668();
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D226E000, v21, v22, "gpNodes is nil", v23, 2u);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    return (*(v12 + 8))(v14, v11);
  }

  sub_1D227268C(&aBlock, &v53);
  if (!*(&v54 + 1))
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1D227268C(&v53, v56);
  v16 = 0.0;
  v17 = 1.0;
  if (a1)
  {
    v16 = 1.0;
    v17 = 0.5;
  }

  v18 = v17 * a5;
  v19 = v16 + v18;
  if (a1)
  {
    if (a4)
    {
      v20 = a2;
    }

    else
    {
      v20 = 0;
    }

    sub_1D276713C(0, v20, a3 & 1 | ((a4 & 1) == 0), v16 + v18);
    return __swift_destroy_boxed_opaque_existential_0(v56);
  }

  if ((a4 & 1) == 0)
  {
    v25 = v57;
    v26 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v50 = MEMORY[0x1E69E6448];
    *&aBlock = v19;
    (*(v26 + 8))(&aBlock, 8704, v25, v26);
    p_aBlock = &aBlock;
    goto LABEL_19;
  }

  if (*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {
  }

  else
  {
    v28 = sub_1D2879618();

    if ((v28 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_1D2758CD8(v5 + v15, &aBlock);
  if (v52 != 1)
  {
    sub_1D227268C(&aBlock, &v53);
    sub_1D22D7044(&v53, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
    type metadata accessor for VisualEffectRENodes();
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v53);
      goto LABEL_28;
    }

    v29 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D287F500;
    *(inited + 32) = 8704;
    v31 = inited + 32;
    *(inited + 64) = MEMORY[0x1E69E6448];
    *(inited + 40) = v19;
    v32 = sub_1D25D6D04(inited);
    swift_setDeallocating();
    sub_1D22BD238(v31, &unk_1EC6E1910);
    sub_1D2753044(v32, 0, 1, 0, 0.1);

    sub_1D2760BB8(v29, 0, 1, 0.1);

    p_aBlock = &v53;
LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(p_aBlock);
    return __swift_destroy_boxed_opaque_existential_0(v56);
  }

  sub_1D2758D34(&aBlock);
LABEL_28:
  v33 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_31:
    v37 = *MEMORY[0x1E6979EB8];
    v38 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    *(v38 + 24) = *(v33 + 24);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v39 = swift_allocObject();
    v39[3] = 0;
    v39[4] = 0;
    v39[2] = v38;
    v40 = objc_opt_self();
    sub_1D2870F78();
    v41 = [v40 functionWithName_];
    v42 = objc_opt_self();
    [v42 begin];
    v51 = sub_1D2776400;
    v52 = v39;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v49 = sub_1D23DFBA8;
    v50 = &block_descriptor_179_0;
    v43 = _Block_copy(&aBlock);
    sub_1D2870F78();

    [v42 setCompletionBlock_];
    _Block_release(v43);
    [v42 setAnimationDuration_];
    [v42 setAnimationTimingFunction_];
    v44 = v57;
    v45 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v50 = MEMORY[0x1E69E6448];
    *&aBlock = v19;
    (*(v45 + 8))(&aBlock, 8704, v44, v45);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    [v42 commit];

    return __swift_destroy_boxed_opaque_existential_0(v56);
  }

  v34 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
  v35 = __CFADD__(v34, 1);
  v36 = v34 + 1;
  if (!v35)
  {
    *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v36;
    sub_1D277A35C();
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2764F68(uint64_t a1, char a2)
{
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v21);
  if (v23)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_1D2758D34(&v21);
    if (*(&v25 + 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D227268C(&v21, &v24);
    if (*(&v25 + 1))
    {
LABEL_3:
      sub_1D227268C(&v24, v27);
      sub_1D2765280(a1, a2 & 1);
      if ((a2 & 1) != 0 || (sub_1D22D7044(v27, &v21), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0), type metadata accessor for VisualEffectRENodes(), (swift_dynamicCast() & 1) == 0))
      {
        v16 = v28;
        v17 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v18 = MEMORY[0x1E69E6448];
        v22 = MEMORY[0x1E69E6448];
        LODWORD(v21) = 0;
        (*(v17 + 16))(&v21, 6656, 0, v16, v17);
        __swift_destroy_boxed_opaque_existential_0(&v21);
        v19 = v28;
        v20 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v22 = v18;
        LODWORD(v21) = 1065353216;
        (*(v20 + 16))(&v21, 8704, 0, v19, v20);
        __swift_destroy_boxed_opaque_existential_0(&v21);
      }

      else
      {
        v9 = *&a1;
        v10 = sub_1D25D6C04(&unk_1F4DBCC60);
        v11 = sub_1D24171A8(v10);

        sub_1D2753044(v11, 0, 1, 0, v9);
      }

      return __swift_destroy_boxed_opaque_existential_0(v27);
    }
  }

  sub_1D22BD238(&v24, &qword_1EC6E1790);
  sub_1D2872668();
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A18();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D226E000, v12, v13, "gpNodes is nil", v14, 2u);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D2765280(uint64_t a1, char a2)
{
  v3 = v2;
  v62 = a1;
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1D2877B48();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D2877B68();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1D2877BA8();
  v63 = *(v70 - 8);
  v11 = MEMORY[0x1EEE9AC00](v70);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  v16 = sub_1D2871DD8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v76)
  {
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    sub_1D2758D34(&aBlock);
    if (*(&v78 + 1))
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_1D22BD238(&v77, &qword_1EC6E1790);
    sub_1D2872668();
    v28 = sub_1D2873CA8();
    v29 = sub_1D2878A18();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D226E000, v28, v29, "gpNodes is nil", v30, 2u);
      MEMORY[0x1D38A3520](v30, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }

  sub_1D227268C(&aBlock, &v77);
  if (!*(&v78 + 1))
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_1D227268C(&v77, v80);
  v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_aspectRatio;
  swift_beginAccess();
  (*(v17 + 16))(v19, v3 + v20, v16);
  sub_1D2871DA8();
  v22 = v21;
  v24 = (*(v17 + 8))(v19, v16);
  v23 = v22;
  v24.n128_u32[0] = 1058362709;
  v24.n128_u32[0] = vdup_lane_s32(v24.n128_u64[0], 0).u32[0];
  v25.i32[0] = 1058362709;
  v26 = COERCE_DOUBLE(vdup_lane_s32(v25, 0));
  if (v23 < 1.0)
  {
    *&v26 = v23 * 0.58333;
    v27 = v26;
  }

  else
  {
    v24.n128_f32[1] = 0.58333 / v23;
    v27 = v24.n128_f64[0];
  }

  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {

    goto LABEL_16;
  }

  v32 = sub_1D2879618();

  if (v32)
  {
LABEL_16:
    v27 = COERCE_DOUBLE(vmul_f32(*&v27, vdup_n_s32(0x40555555u)));
  }

  v33 = [objc_opt_self() valueWithVFXFloat2_];
  v34 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_world);
  if (v34)
  {
    v35 = [v34 rootNode];
    v36 = sub_1D2878068();
    v37 = [v35 childNodeWithName_];

    v38 = [v37 camera];
    if (v38)
    {
      if (v23 <= 1.0)
      {
        v39 = 2;
      }

      else
      {
        v39 = 3;
      }

      [v38 setFillMode_];
    }
  }

  if ((a2 & 1) == 0)
  {
    sub_1D22D7044(v80, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
    type metadata accessor for VisualEffectRENodes();
    if (swift_dynamicCast())
    {
      v40 = *&v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D287F500;
      *(inited + 32) = 1536;
      *(inited + 64) = sub_1D22BCFD0(0, &qword_1ED89CC90);
      *(inited + 40) = v33;
      v42 = v33;
      v43 = sub_1D25D6D04(inited);
      swift_setDeallocating();
      sub_1D22BD238(inited + 32, &unk_1EC6E1910);
      sub_1D2753044(v43, 0, 1, 1, v40);

      return __swift_destroy_boxed_opaque_existential_0(v80);
    }
  }

  sub_1D22D7044(v80, &v77);
  v44 = swift_allocObject();
  sub_1D227268C(&v77, v44 + 16);
  *(v44 + 56) = v33;
  v45 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
  result = swift_unknownObjectWeakLoadStrong();
  v61 = v33;
  if (!result)
  {
    v50 = v33;
    goto LABEL_30;
  }

  v46 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
  v47 = __CFADD__(v46, 1);
  v48 = v46 + 1;
  if (!v47)
  {
    *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v48;
    v49 = v33;
    sub_1D277A35C();
    swift_unknownObjectRelease();
LABEL_30:
    v51 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    *(v51 + 24) = *(v45 + 24);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v52 = swift_allocObject();
    v52[2] = v51;
    sub_1D22BCFD0(0, &qword_1ED89CD50);
    v52[3] = 0;
    v52[4] = 0;
    sub_1D2870F78();
    v62 = sub_1D2878AB8();
    sub_1D2877B88();
    v60 = v15;
    sub_1D2877BC8();
    v63 = *(v63 + 8);
    (v63)(v13, v70);
    v53 = swift_allocObject();
    v53[2] = sub_1D277464C;
    v53[3] = v52;
    v53[4] = 0x3FD3333333333333;
    v53[5] = sub_1D2774640;
    v53[6] = v44;
    v75 = sub_1D277466C;
    v76 = v53;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v73 = sub_1D23DFBA8;
    v74 = &block_descriptor_61;
    v54 = _Block_copy(&aBlock);
    sub_1D2870F78();
    sub_1D2870F78();
    v55 = v64;
    sub_1D2877B58();
    v71 = MEMORY[0x1E69E7CC0];
    sub_1D2775F90(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
    sub_1D22D5EFC();
    v56 = v65;
    v57 = v69;
    sub_1D2879088();
    v58 = v60;
    v59 = v62;
    MEMORY[0x1D38A1510](v60, v55, v56, v54);
    _Block_release(v54);

    (*(v68 + 8))(v56, v57);
    (*(v66 + 8))(v55, v67);
    (v63)(v58, v70);
    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2765D3C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v25);
  if (v27)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_1D2758D34(&v25);
    if (*(&v29 + 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D227268C(&v25, &v28);
    if (*(&v29 + 1))
    {
LABEL_3:
      sub_1D227268C(&v28, v31);
      v10 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_world);
      if (v10)
      {
        v11 = [v10 rootNode];
        v12 = sub_1D2878068();
        v13 = [v11 childNodeWithName_];

        v14 = [v13 camera];
        if (v14)
        {
          [v14 setFillMode_];
        }
      }

      if ((a2 & 1) != 0 || (sub_1D22D7044(v31, &v25), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0), type metadata accessor for VisualEffectRENodes(), (swift_dynamicCast() & 1) == 0))
      {
        v22 = v32;
        v23 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v26 = MEMORY[0x1E69E6448];
        LODWORD(v25) = 0;
        (*(v23 + 16))(&v25, 8704, 0, v22, v23);
        __swift_destroy_boxed_opaque_existential_0(&v25);
        sub_1D27648E8(1, 0, 1, 1, 0.0);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D287F500;
        *(inited + 32) = 8704;
        v16 = inited + 32;
        *(inited + 64) = MEMORY[0x1E69E6448];
        *(inited + 40) = 0;
        v17 = sub_1D25D6D04(inited);
        swift_setDeallocating();
        sub_1D22BD238(v16, &unk_1EC6E1910);
        sub_1D2753044(v17, 0, 1, 0, *&a1);

        sub_1D27648E8(1, a1, 0, 1, 0.0);
      }

      return __swift_destroy_boxed_opaque_existential_0(v31);
    }
  }

  sub_1D22BD238(&v28, &qword_1EC6E1790);
  sub_1D2872668();
  v18 = sub_1D2873CA8();
  v19 = sub_1D2878A18();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D226E000, v18, v19, "gpNodes is nil", v20, 2u);
    MEMORY[0x1D38A3520](v20, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D2766134(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
  sub_1D2758CD8(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v40)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_1D2758D34(&aBlock);
    if (*(&v42 + 1))
    {
LABEL_3:
      sub_1D227268C(&v41, v44);
      v11 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration);
      if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
      {
      }

      else
      {
        v16 = sub_1D2879618();

        if ((v16 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      sub_1D2758CD8(v3 + v10, &aBlock);
      if (v40 == 1)
      {
        sub_1D2758D34(&aBlock);
      }

      else
      {
        sub_1D227268C(&aBlock, &v41);
        sub_1D22D7044(&v41, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
        type metadata accessor for VisualEffectRENodes();
        if (swift_dynamicCast())
        {
          v17 = v35[1];
          v18 = sub_1D25D6C04(&unk_1F4DBD100);
          v19 = sub_1D24171A8(v18);

          sub_1D2753044(v19, 0, 1, 0, *&v11);

          sub_1D2765280(v11, 0);
          type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
          v20 = swift_allocObject();
          *(v20 + 32) = 0;
          *(v20 + 40) = 0;
          *(v20 + 48) = 1;
          *(v20 + 64) = 0;
          *(v20 + 72) = 0;
          v21 = 1.0 / *&v11;
          *(v20 + 52) = v21;
          *(v20 + 56) = 0;
          *(v20 + 16) = a1;
          *(v20 + 24) = a2;
          swift_beginAccess();
          v22 = sub_1D2870F78();
          MEMORY[0x1D38A0E30](v22);
          if (*((v17[13] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v17[13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_17:
            sub_1D2878488();
            swift_endAccess();
            sub_1D2760BB8(v17, 0, 1, *&v11);

            __swift_destroy_boxed_opaque_existential_0(&v41);
            return __swift_destroy_boxed_opaque_existential_0(v44);
          }

LABEL_26:
          sub_1D2878428();
          goto LABEL_17;
        }

        __swift_destroy_boxed_opaque_existential_0(&v41);
      }

LABEL_19:
      v17 = swift_allocObject();
      v17[2] = a1;
      v17[3] = a2;
      v23 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        sub_1D2870F78();
        goto LABEL_23;
      }

      v25 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
      v26 = __CFADD__(v25, 1);
      v27 = v25 + 1;
      if (!v26)
      {
        *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v27;
        sub_1D2870F78();
        sub_1D277A35C();
        swift_unknownObjectRelease();
LABEL_23:
        v28 = *MEMORY[0x1E6979EB8];
        v29 = swift_allocObject();
        swift_unknownObjectWeakLoadStrong();
        *(v29 + 24) = *(v23 + 24);
        swift_unknownObjectWeakInit();
        swift_unknownObjectRelease();
        v30 = swift_allocObject();
        v30[2] = v29;
        v30[3] = sub_1D22D5EBC;
        v30[4] = v17;
        v31 = objc_opt_self();
        sub_1D2870F78();
        sub_1D2870F78();
        v32 = [v31 functionWithName_];
        v33 = objc_opt_self();
        [v33 begin];
        v39 = sub_1D2776400;
        v40 = v30;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v37 = sub_1D23DFBA8;
        v38 = &block_descriptor_245;
        v34 = _Block_copy(&aBlock);
        sub_1D2870F78();

        [v33 setCompletionBlock_];
        _Block_release(v34);
        [v33 setAnimationDuration_];
        [v33 setAnimationTimingFunction_];
        sub_1D2766788(v44);
        [v33 commit];

        return __swift_destroy_boxed_opaque_existential_0(v44);
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    sub_1D227268C(&aBlock, &v41);
    if (*(&v42 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D22BD238(&v41, &qword_1EC6E1790);
  sub_1D2872668();
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A18();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D226E000, v12, v13, "gpNodes is nil", v14, 2u);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D2766788(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = MEMORY[0x1E69E6448];
  v7 = MEMORY[0x1E69E6448];
  v6[0] = 1065353216;
  v4 = *(v2 + 16);
  v4(v6, 7680, 0, v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v6);
  v7 = v3;
  v6[0] = 1065353216;
  v4(v6, 7936, 0, v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v6);
  v7 = v3;
  v6[0] = 1065353216;
  v4(v6, 8704, 0, v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v6);
  v7 = v3;
  v6[0] = 1065353216;
  v4(v6, 0x2000, 0, v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return sub_1D2765280(0, 1);
}

uint64_t sub_1D27668BC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v8[3] = sub_1D22BCFD0(0, &qword_1ED89CC90);
  v8[0] = a2;
  v5 = *(v4 + 8);
  v6 = a2;
  v5(v8, 1536, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_1D2766954(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(&v3[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController], &v24);
  if (v26)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_1D2758D34(&v24);
    if (*(&v28 + 1))
    {
LABEL_3:
      sub_1D227268C(&v27, v30);
      if (a1)
      {
        v10 = v31;
        v11 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        v25 = sub_1D22BCFD0(0, &qword_1ED89CC78);
        *&v24 = a1;
        v12 = *(v11 + 32);
        v13 = a1;
        v12(&v24, v10, v11);
        __swift_destroy_boxed_opaque_existential_0(&v24);
        v14 = *&v3[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectImage];
        *&v3[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectImage] = a1;
      }

      else
      {
        v19 = v31;
        v20 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        if ((*(v20 + 64))(v19, v20))
        {
          v21 = *&v3[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectImage];
          v22 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v23 = v21;
          sub_1D2773AF0(0, a2 & 1, 1, v3, v22, v21);
        }
      }

      return __swift_destroy_boxed_opaque_existential_0(v30);
    }
  }

  else
  {
    sub_1D227268C(&v24, &v27);
    if (*(&v28 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D22BD238(&v27, &qword_1EC6E1790);
  sub_1D2872668();
  v15 = sub_1D2873CA8();
  v16 = sub_1D2878A18();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D226E000, v15, v16, "gpNodes is nil", v17, 2u);
    MEMORY[0x1D38A3520](v17, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D2766C30(float a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v13);
  if (v15)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1D2758D34(&v13);
    if (*(&v17 + 1))
    {
LABEL_3:
      sub_1D227268C(&v16, v19);
      v7 = v20;
      v8 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v14 = MEMORY[0x1E69E6448];
      *&v13 = 1.0 - a1;
      (*(v8 + 8))(&v13, 9984, v7, v8);
      __swift_destroy_boxed_opaque_existential_0(&v13);
      return __swift_destroy_boxed_opaque_existential_0(v19);
    }
  }

  else
  {
    sub_1D227268C(&v13, &v16);
    if (*(&v17 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D22BD238(&v16, &qword_1EC6E1790);
  sub_1D2872668();
  v10 = sub_1D2873CA8();
  v11 = sub_1D2878A18();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D226E000, v10, v11, "gpNodes is nil", v12, 2u);
    MEMORY[0x1D38A3520](v12, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D2766E4C(char a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v17);
  if (v19)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_1D2758D34(&v17);
    if (*(&v21 + 1))
    {
LABEL_3:
      sub_1D227268C(&v20, v23);
      if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
      {
      }

      else
      {
        v11 = sub_1D2879618();

        if ((v11 & 1) == 0)
        {
          v12 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_blobStateScaleModifier);
LABEL_14:
          v13 = 0.33333;
          if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isForStickers))
          {
            v13 = 0.6;
          }

          v14 = v12 * v13;
          v15 = v24;
          v16 = v25;
          __swift_project_boxed_opaque_existential_1(v23, v24);
          v18 = MEMORY[0x1E69E6448];
          *&v17 = v14;
          (*(v16 + 16))(&v17, 1280, a1 & 1, v15, v16);
          __swift_destroy_boxed_opaque_existential_0(&v17);
          return __swift_destroy_boxed_opaque_existential_0(v23);
        }
      }

      v12 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_blobViewScaleModifier) * *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_blobStateScaleModifier);
      goto LABEL_14;
    }
  }

  else
  {
    sub_1D227268C(&v17, &v20);
    if (*(&v21 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D22BD238(&v20, &qword_1EC6E1790);
  sub_1D2872668();
  v7 = sub_1D2873CA8();
  v8 = sub_1D2878A18();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D226E000, v7, v8, "gpNodes is nil", v9, 2u);
    MEMORY[0x1D38A3520](v9, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D276713C(char a1, uint64_t a2, char a3, float a4)
{
  if (a3)
  {
    goto LABEL_24;
  }

  sub_1D2758CD8(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v22);
  if (v23 == 1)
  {
    sub_1D2758D34(v22);
LABEL_24:
    *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_blobStateScaleModifier) = a4;
    return sub_1D2766E4C(a1 & 1);
  }

  sub_1D227268C(v22, v24);
  sub_1D22D7044(v24, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
  type metadata accessor for VisualEffectRENodes();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v24);
    goto LABEL_24;
  }

  v8 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_blobStateScaleModifier);
  if (vabds_f32(v8, a4) <= 0.0001)
  {
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_beginAccess();
  v11 = *(v21 + 96);
  if (v11 >> 62)
  {
    result = sub_1D2879368();
    v12 = result;
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    sub_1D2870F78();
LABEL_28:
    type metadata accessor for VisualEffectRENodes.VisualEffectFloatCallbackAnimation();
    v17 = swift_allocObject();
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    *(v17 + 72) = 1;
    *(v17 + 88) = 0;
    *(v17 + 96) = 0;
    *(v17 + 16) = 0xD000000000000010;
    *(v17 + 24) = 0x80000001D28C1D10;
    *(v17 + 48) = v8;
    *(v17 + 52) = a4;
    v18 = 1.0 / *&a2;
    *(v17 + 76) = v18;
    *(v17 + 80) = 0;
    *(v17 + 32) = sub_1D27755A0;
    *(v17 + 40) = v9;
    swift_beginAccess();
    v19 = sub_1D2870F78();
    MEMORY[0x1D38A0E30](v19);
    if (*((*(v21 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v21 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2878428();
    }

    sub_1D2878488();
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  if (v12 >= 1)
  {
    v20 = v9;
    sub_1D2870F78();
    sub_1D2870F68();
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D38A1C30](v13, v11);
        if ((*(v15 + 56) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
        sub_1D2870F78();
        if ((*(v15 + 56) & 1) == 0)
        {
LABEL_17:
          v16 = *(v15 + 16) == 0xD000000000000010 && 0x80000001D28C1D10 == *(v15 + 24);
          if (v16 || (sub_1D2879618() & 1) != 0)
          {
            *(v15 + 56) = 1;
            v14 = *(v15 + 32);
            *(v15 + 32) = 0;
            *(v15 + 40) = 0;
            sub_1D22A576C(v14);
          }
        }
      }

      ++v13;

      if (v12 == v13)
      {

        v9 = v20;
        goto LABEL_28;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1D27674B4(float a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_blobStateScaleModifier) = a1;
    sub_1D2766E4C(1);
  }
}

uint64_t sub_1D2767524(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1D2758CD8(result + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v11);
    if (v12)
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      sub_1D2758D34(v11);
      if (*(&v14 + 1))
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D227268C(v11, &v13);
      if (*(&v14 + 1))
      {
LABEL_4:
        sub_1D227268C(&v13, v16);
        v5 = *&v4[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectImage];
        if (a2)
        {
          if (!v5)
          {
            goto LABEL_8;
          }

          sub_1D22BCFD0(0, &qword_1ED89CC78);
          v6 = v5;
          v7 = a2;
          v8 = sub_1D2878D78();

          if ((v8 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else if (v5)
        {
          goto LABEL_8;
        }

        v9 = v17;
        v10 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        (*(v10 + 40))(v9, v10);
LABEL_8:

        return __swift_destroy_boxed_opaque_existential_0(v16);
      }
    }

    return sub_1D22BD238(&v13, &qword_1EC6E1790);
  }

  return result;
}

uint64_t sub_1D2767698(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1D2758CD8(result + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v11);
    if (v12)
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      sub_1D2758D34(v11);
      if (*(&v14 + 1))
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D227268C(v11, &v13);
      if (*(&v14 + 1))
      {
LABEL_4:
        sub_1D227268C(&v13, v16);
        v5 = *&v4[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectImage];
        if (a2)
        {
          if (!v5)
          {
            goto LABEL_8;
          }

          sub_1D22BCFD0(0, &qword_1ED89CC78);
          v6 = v5;
          v7 = a2;
          v8 = sub_1D2878D78();

          if ((v8 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else if (v5)
        {
          goto LABEL_8;
        }

        v9 = v17;
        v10 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        (*(v10 + 40))(v9, v10);
LABEL_8:

        return __swift_destroy_boxed_opaque_existential_0(v16);
      }
    }

    return sub_1D22BD238(&v13, &qword_1EC6E1790);
  }

  return result;
}

uint64_t sub_1D2767810(int a1, int a2, int a3, void *a4)
{
  LODWORD(v70) = a3;
  LODWORD(v69) = a2;
  v71 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - v6;
  v68 = sub_1D2871818();
  v8 = *(v68 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  v13 = sub_1D2873CB8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a4;
  v66 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
  sub_1D2758CD8(a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v74);
  if (v78)
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
    sub_1D2758D34(&v74);
    if (*(&v81 + 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D227268C(&v74, &v80);
    if (*(&v81 + 1))
    {
LABEL_3:
      sub_1D227268C(&v80, v83);
      v18 = 0.0;
      v19 = 0.0;
      if (v71)
      {
        v20 = v12;
        v22 = v84;
        v21 = v85;
        __swift_project_boxed_opaque_existential_1(v83, v84);
        v23 = *(v21 + 64);
        v24 = v21;
        v12 = v20;
        v19 = 1.0;
        if (v23(v22, v24))
        {
          v18 = 1.0;
        }

        else
        {
          v18 = 0.0;
        }
      }

      v25 = (a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingVisibility);
      if ((*(a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingVisibility + 4) & 1) == 0 && *v25 == v19 && (*(a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingBlobToPictureTarget + 4) & 1) == 0 && *(a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingBlobToPictureTarget) == v18)
      {
        return __swift_destroy_boxed_opaque_existential_0(v83);
      }

      if (v69)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = v19;
      }

      sub_1D22D7044(v83, &v80);
      sub_1D22D7044(v83, v79);
      if ((v70 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v79);
        sub_1D276826C(&v80, v71 & 1, v26, v18);
        __swift_destroy_boxed_opaque_existential_0(&v80);
        return __swift_destroy_boxed_opaque_existential_0(v83);
      }

      __swift_destroy_boxed_opaque_existential_0(&v80);
      sub_1D2871808();
      *v25 = v19;
      *(v25 + 4) = 0;
      v27 = (a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingBlobToPictureTarget);
      *v27 = v18;
      *(v27 + 4) = 0;
      v28 = v12;
      v29 = *(v8 + 16);
      v30 = v68;
      v29(v7, v28, v68);
      (*(v8 + 56))(v7, 0, 1, v30);
      v31 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_currentAnimatingVisibilityUUID;
      swift_beginAccess();
      sub_1D27745CC(v7, v17 + v31);
      swift_endAccess();
      v32 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration;
      v33 = *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration);
      v34 = v67;
      v70 = v28;
      v29(v67, v28, v30);
      v35 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v36 = (v9 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      v69 = v8;
      (*(v8 + 32))(v37 + v35, v34, v30);
      *(v37 + v36) = v17;
      v38 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v38 = CGRectMake;
      v38[1] = 0;
      if (*(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
      {
        v45 = v17;
      }

      else
      {
        v43 = sub_1D2879618();
        v44 = v17;

        if ((v43 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      sub_1D2758CD8(v17 + v66, &v74);
      if (v78)
      {
        sub_1D2758D34(&v74);
      }

      else
      {
        sub_1D227268C(&v74, v73);
        sub_1D22D7044(v73, &v74);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
        type metadata accessor for VisualEffectRENodes();
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(v79);
          v17 = v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D287F550;
          *(inited + 32) = 9472;
          *(inited + 36) = v26;
          *(inited + 40) = 7936;
          *(inited + 44) = v18;
          v47 = sub_1D25D6C04(inited);
          swift_setDeallocating();
          if (v71)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v74 = v47;
            sub_1D24EA42C(6656, isUniquelyReferenced_nonNull_native, 0.0);
            v47 = v74;
          }

          v49 = sub_1D24171A8(v47);

          sub_1D2753044(v49, 0, 1, 0, v33);

          type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
          v50 = swift_allocObject();
          *(v50 + 32) = 0;
          *(v50 + 40) = 0;
          *(v50 + 48) = 1;
          v51 = 1.0 / v33;
          *(v50 + 64) = 0;
          *(v50 + 72) = 0;
          *(v50 + 52) = v51;
          *(v50 + 56) = 0;
          *(v50 + 16) = sub_1D27763A0;
          *(v50 + 24) = v37;
          swift_beginAccess();
          v52 = sub_1D2870F78();
          MEMORY[0x1D38A0E30](v52);
          if (*((v17[13] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v17[13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_32;
          }

          goto LABEL_41;
        }

        __swift_destroy_boxed_opaque_existential_0(v73);
      }

LABEL_34:
      v33 = *(v17 + v32);
      v53 = *(v17 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        sub_1D2870F78();
        goto LABEL_38;
      }

      v55 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
      v56 = __CFADD__(v55, 1);
      v57 = v55 + 1;
      if (!v56)
      {
        *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v57;
        sub_1D2870F78();
        sub_1D277A35C();
        swift_unknownObjectRelease();
LABEL_38:
        v58 = *MEMORY[0x1E6979EB8];
        v59 = swift_allocObject();
        swift_unknownObjectWeakLoadStrong();
        *(v59 + 24) = *(v53 + 24);
        swift_unknownObjectWeakInit();
        swift_unknownObjectRelease();
        v60 = swift_allocObject();
        v60[2] = v59;
        v60[3] = sub_1D27763A0;
        v60[4] = v37;
        v61 = objc_opt_self();
        sub_1D2870F78();
        sub_1D2870F78();
        v62 = [v61 functionWithName_];
        v63 = objc_opt_self();
        [v63 begin];
        v77 = sub_1D2776400;
        v78 = v60;
        *&v74 = MEMORY[0x1E69E9820];
        *(&v74 + 1) = 1107296256;
        v75 = sub_1D23DFBA8;
        v76 = &block_descriptor_345;
        v64 = _Block_copy(&v74);
        sub_1D2870F78();

        [v63 setCompletionBlock_];
        _Block_release(v64);
        [v63 setAnimationDuration_];
        [v63 setAnimationTimingFunction_];
        sub_1D276826C(v79, v71 & 1, v26, v18);
        __swift_destroy_boxed_opaque_existential_0(v79);
        [v63 commit];

        (*(v69 + 8))(v70, v68);

        return __swift_destroy_boxed_opaque_existential_0(v83);
      }

      __break(1u);
LABEL_41:
      sub_1D2878428();
LABEL_32:
      sub_1D2878488();
      swift_endAccess();
      sub_1D2760BB8(v17, 0, 1, v33);

      __swift_destroy_boxed_opaque_existential_0(v73);
      (*(v69 + 8))(v70, v68);
      return __swift_destroy_boxed_opaque_existential_0(v83);
    }
  }

  sub_1D22BD238(&v80, &qword_1EC6E1790);
  sub_1D2872668();
  v39 = sub_1D2873CA8();
  v40 = sub_1D2878A18();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1D226E000, v39, v40, "gpNodes is nil", v41, 2u);
    MEMORY[0x1D38A3520](v41, -1, -1);
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1D276826C(void *a1, char a2, float a3, float a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = MEMORY[0x1E69E6448];
  v13 = MEMORY[0x1E69E6448];
  *v12 = a3;
  v10 = *(v8 + 16);
  v10(v12, 9472, 0, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (a2)
  {
    v13 = v9;
    v12[0] = 0;
    v10(v12, 6656, 0, v7, v8);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  v13 = v9;
  *v12 = a4;
  v10(v12, 7936, 0, v7, v8);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_1D2768370(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v36 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  (*(v7 + 16))(&v34 - v20, a1, v6, v19);
  v35 = *(v7 + 56);
  v35(v21, 0, 1, v6);
  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_currentAnimatingVisibilityUUID;
  swift_beginAccess();
  v23 = *(v10 + 56);
  sub_1D25E3608(v21, v12);
  v37 = a2;
  sub_1D25E3608(a2 + v22, &v12[v23]);
  v24 = *(v7 + 48);
  if (v24(v12, 1, v6) == 1)
  {
    sub_1D22BD238(v21, &qword_1EC6D8F70);
    if (v24(&v12[v23], 1, v6) == 1)
    {
      sub_1D22BD238(v12, &qword_1EC6D8F70);
LABEL_8:
      v30 = v36;
      v29 = v37;
      v31 = v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingVisibility;
      *v31 = 0;
      *(v31 + 4) = 1;
      v32 = v29 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingBlobToPictureTarget;
      *v32 = 0;
      *(v32 + 4) = 1;
      v35(v30, 1, 1, v6);
      swift_beginAccess();
      sub_1D27745CC(v30, v29 + v22);
      v25 = swift_endAccess();
      return v39(v25);
    }

    goto LABEL_6;
  }

  sub_1D25E3608(v12, v17);
  if (v24(&v12[v23], 1, v6) == 1)
  {
    sub_1D22BD238(v21, &qword_1EC6D8F70);
    (*(v7 + 8))(v17, v6);
LABEL_6:
    v25 = sub_1D22BD238(v12, &qword_1EC6D94F0);
    return v39(v25);
  }

  v26 = v34;
  (*(v7 + 32))(v34, &v12[v23], v6);
  sub_1D2775F90(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
  v27 = sub_1D2877F98();
  v28 = *(v7 + 8);
  v28(v26, v6);
  sub_1D22BD238(v21, &qword_1EC6D8F70);
  v28(v17, v6);
  v25 = sub_1D22BD238(v12, &qword_1EC6D8F70);
  if (v27)
  {
    goto LABEL_8;
  }

  return v39(v25);
}