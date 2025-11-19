uint64_t sub_1E59F7CC0(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[24 * v11] <= a4)
    {
      memmove(a4, __src, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 < 24 || v6 <= v7)
    {
      v20 = v6;
    }

    else
    {
LABEL_27:
      v18 = 0;
      v19 = v12;
      v20 = v6 - 24;
      do
      {
        v21 = &v19[v18];
        v22 = v19[v18 - 24];
        v23 = *(v6 - 24);
        if (v22 == v23)
        {
          v24 = *(v21 - 2) == *(v6 - 2) && *(v21 - 1) == *(v6 - 1);
          if (!v24 && (sub_1E5A2C114() & 1) != 0)
          {
LABEL_39:
            v27 = (v5 + v18);
            v5 = v5 + v18 - 24;
            if (v27 != v6)
            {
              v28 = *v20;
              *(v5 + 16) = *(v6 - 1);
              *v5 = v28;
            }

            v12 = &v19[v18];
            if (&v19[v18] <= v4 || (v6 -= 24, v20 <= v7))
            {
              v12 = &v19[v18];
              goto LABEL_47;
            }

            goto LABEL_27;
          }
        }

        else if (v22 < v23)
        {
          goto LABEL_39;
        }

        if ((v5 + v18) != v21)
        {
          v25 = v5 + v18 - 24;
          v26 = *&v19[v18 - 24];
          *(v25 + 16) = *&v19[v18 - 8];
          *v25 = v26;
        }

        v18 -= 24;
        v12 = &v19[v18];
      }

      while (&v19[v18] > v4);
      v20 = v6;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      do
      {
        v13 = *v6;
        v14 = *v4;
        if (v13 == v14)
        {
          v15 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
          if (v15 || (sub_1E5A2C114() & 1) == 0)
          {
LABEL_13:
            v16 = v4;
            v15 = v7 == v4;
            v4 += 24;
            if (v15)
            {
              goto LABEL_15;
            }

LABEL_14:
            v17 = *v16;
            *(v7 + 2) = *(v16 + 2);
            *v7 = v17;
            goto LABEL_15;
          }
        }

        else if (v13 >= v14)
        {
          goto LABEL_13;
        }

        v16 = v6;
        v15 = v7 == v6;
        v6 += 24;
        if (!v15)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 24;
      }

      while (v4 < v12 && v6 < v5);
    }

    v20 = v7;
  }

LABEL_47:
  v29 = (v12 - v4) / 24;
  if (v20 != v4 || v20 >= &v4[24 * v29])
  {
    memmove(v20, v4, 24 * v29);
  }

  return 1;
}

uint64_t sub_1E59F7F7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5A2A7F4();
  *a1 = result;
  return result;
}

uint64_t sub_1E59F7FD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5A2A884();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E59F803C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 40);
  sub_1E59E925C(a3);
  swift_getKeyPath();
  sub_1E5A2B934();

  LOBYTE(v4) = sub_1E59E8F3C(v4, v5, v11);

  if (v4)
  {
    if (WorkoutPlanCatalogModalityKind.rawValue.getter() == 0x697461746964654DLL && v7 == 0xEA00000000006E6FLL)
    {
    }

    else
    {
      v8 = sub_1E5A2C114();

      if ((v8 & 1) == 0)
      {
        if (qword_1ECFFB478 != -1)
        {
          swift_once();
        }

        v9 = &qword_1ED026498;
        return *v9;
      }
    }

    if (qword_1ECFFB480 != -1)
    {
      swift_once();
    }

    v9 = &qword_1ED0264A0;
    return *v9;
  }

  return a2;
}

uint64_t sub_1E59F81B8(uint64_t a1)
{
  sub_1E59E925C(a1);
  swift_getKeyPath();
  sub_1E5A2B934();

  if (v3 == 1)
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v1 = &qword_1ED026498;
  }

  else
  {
    if (qword_1ECFFB488 != -1)
    {
      swift_once();
    }

    v1 = &qword_1ED0264A8;
  }

  return *v1;
}

unint64_t sub_1E59F82A8()
{
  result = qword_1ED000248;
  if (!qword_1ED000248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000218, &qword_1E5A40F28);
    sub_1E59F8360();
    sub_1E58CD164(&qword_1ECFFDB28, &qword_1ECFFDB30, &qword_1E5A36B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000248);
  }

  return result;
}

unint64_t sub_1E59F8360()
{
  result = qword_1ED000250;
  if (!qword_1ED000250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000230, &qword_1E5A40FB8);
    sub_1E59F83EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000250);
  }

  return result;
}

unint64_t sub_1E59F83EC()
{
  result = qword_1ED000258;
  if (!qword_1ED000258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000228, &qword_1E5A40F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF10, &unk_1E5A3C3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE930, &qword_1E5A3B268);
    sub_1E5A2ACA4();
    sub_1E58CD164(&qword_1ECFFE938, &qword_1ECFFE930, &qword_1E5A3B268);
    sub_1E59F922C(&qword_1ECFFE940, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFE948, &qword_1ECFFE950, &qword_1E5A3B270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000258);
  }

  return result;
}

unint64_t sub_1E59F85A0()
{
  result = qword_1ED000260;
  if (!qword_1ED000260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000238, &qword_1E5A40FF0);
    sub_1E59F82A8();
    sub_1E58CD164(&qword_1ECFFE960, &qword_1ECFFC788, &qword_1E5A319E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000260);
  }

  return result;
}

unint64_t sub_1E59F8658()
{
  result = qword_1ED000268;
  if (!qword_1ED000268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000240, &qword_1E5A40FF8);
    sub_1E59F82A8();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000268);
  }

  return result;
}

uint64_t sub_1E59F8710(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E594C9E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E59F8760(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E58B3C9C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E59F87B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E59F8818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E59F8890()
{
  result = qword_1ED0002A8;
  if (!qword_1ED0002A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000298, &qword_1E5A41058);
    sub_1E596F604();
    sub_1E58CD164(&qword_1ED0002B0, &qword_1ED0002B8, &qword_1E5A41068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0002A8);
  }

  return result;
}

unint64_t sub_1E59F8960()
{
  result = qword_1ED0002D0;
  if (!qword_1ED0002D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0002C8, &qword_1E5A41070);
    sub_1E59F89EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0002D0);
  }

  return result;
}

unint64_t sub_1E59F89EC()
{
  result = qword_1ED0002D8;
  if (!qword_1ED0002D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0002E0, &qword_1E5A41078);
    sub_1E58CD164(&qword_1ED0002E8, &qword_1ED0002F0, &unk_1E5A41080);
    sub_1E58CD164(&qword_1ECFFC6B8, &qword_1ECFFC6C0, &qword_1E5A31900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0002D8);
  }

  return result;
}

unint64_t sub_1E59F8AD0()
{
  result = qword_1ED0002F8;
  if (!qword_1ED0002F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000278, &qword_1E5A41038);
    sub_1E59F8960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0002F8);
  }

  return result;
}

unint64_t sub_1E59F8B98()
{
  result = qword_1ED000310;
  if (!qword_1ED000310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000308, &qword_1E5A41098);
    sub_1E59F8C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000310);
  }

  return result;
}

unint64_t sub_1E59F8C1C()
{
  result = qword_1ED000318;
  if (!qword_1ED000318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000320, &qword_1E5A410A0);
    sub_1E59F8CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000318);
  }

  return result;
}

unint64_t sub_1E59F8CA8()
{
  result = qword_1ED000328;
  if (!qword_1ED000328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000330, &qword_1E5A410A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000338, &qword_1E5A410B0);
    sub_1E5A2A714();
    sub_1E58CD164(&qword_1ED000340, &qword_1ED000338, &qword_1E5A410B0);
    sub_1E59F922C(&qword_1ECFFC220, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFDB28, &qword_1ECFFDB30, &qword_1E5A36B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000328);
  }

  return result;
}

double sub_1E59F8E20@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for WorkoutPlanCreationView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E59F080C(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_1E59F8EDC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for WorkoutPlanCreationView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E59F0F7C(v0 + v6, v7, v1, v2, v3, v4);
}

unint64_t sub_1E59F8FBC()
{
  result = qword_1ED0003C8;
  if (!qword_1ED0003C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000388, &qword_1E5A41178);
    sub_1E59F9074();
    sub_1E58CD164(&qword_1ED0003E0, &qword_1ED0003B8, &qword_1E5A41190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0003C8);
  }

  return result;
}

unint64_t sub_1E59F9074()
{
  result = qword_1ED0003D0;
  if (!qword_1ED0003D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000380, &qword_1E5A41170);
    sub_1E59F9100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0003D0);
  }

  return result;
}

unint64_t sub_1E59F9100()
{
  result = qword_1ED0003D8;
  if (!qword_1ED0003D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000378, &qword_1E5A41168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000368, &qword_1E5A41158);
    sub_1E58CD164(&qword_1ED000398, &qword_1ED000368, &qword_1E5A41158);
    swift_getOpaqueTypeConformance2();
    sub_1E59F922C(&qword_1ECFFD750, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0003D8);
  }

  return result;
}

uint64_t sub_1E59F922C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E59F9274()
{
  result = qword_1ED0003E8;
  if (!qword_1ED0003E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0003C0, &qword_1E5A41198);
    sub_1E59F932C();
    sub_1E58CD164(&qword_1ED000400, &qword_1ED000408, &qword_1E5A455F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0003E8);
  }

  return result;
}

unint64_t sub_1E59F932C()
{
  result = qword_1ED0003F0;
  if (!qword_1ED0003F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0003F8, &unk_1E5A411A0);
    sub_1E59F8FBC();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0003F0);
  }

  return result;
}

unint64_t sub_1E59F93F4()
{
  result = qword_1ED000468;
  if (!qword_1ED000468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000460, &qword_1E5A41200);
    sub_1E59F94AC();
    sub_1E58CD164(&qword_1ECFFC050, &qword_1ECFFC058, &unk_1E5A2FCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000468);
  }

  return result;
}

unint64_t sub_1E59F94AC()
{
  result = qword_1ED000470;
  if (!qword_1ED000470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000478, &qword_1E5A41208);
    sub_1E59F9538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000470);
  }

  return result;
}

unint64_t sub_1E59F9538()
{
  result = qword_1ED000480;
  if (!qword_1ED000480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000488, &qword_1E5A41210);
    sub_1E59F95C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000480);
  }

  return result;
}

unint64_t sub_1E59F95C4()
{
  result = qword_1ED000490;
  if (!qword_1ED000490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000498, &unk_1E5A41218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000490);
  }

  return result;
}

unint64_t sub_1E59F9684()
{
  result = qword_1ED0004D0;
  if (!qword_1ED0004D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0004C8, &unk_1E5A41250);
    sub_1E58CD164(&qword_1ED0004D8, &qword_1ED0004E0, &qword_1E5A41260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0004D0);
  }

  return result;
}

unint64_t sub_1E59F973C()
{
  result = qword_1ECFFF170;
  if (!qword_1ECFFF170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF168, &qword_1E5A3C7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF170);
  }

  return result;
}

uint64_t sub_1E59F97C4()
{
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v1 = *(*(type metadata accessor for WorkoutPlanCreationView() - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  return sub_1E59EFB14();
}

uint64_t objectdestroy_94Tm()
{
  v22 = *(v0 + 32);
  v23 = *(v0 + 48);
  v1 = type metadata accessor for WorkoutPlanCreationView();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E5A2A5E4();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E5A2A684();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = &v5[v1[14]];
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = v11[16];
  sub_1E58B369C();

  v15 = &v5[v1[16]];
  v16 = sub_1E5A2A644();
  (*(*(v16 - 8) + 8))(v15, v16);
  v17 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60) + 28)];

  v18 = *&v5[v1[17] + 16];

  v19 = *&v5[v1[18] + 8];

  v20 = *&v5[v1[19] + 8];

  return swift_deallocObject();
}

uint64_t sub_1E59F9ACC(uint64_t *a1, uint64_t a2)
{
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = *(type metadata accessor for WorkoutPlanCreationView() - 8);
  return sub_1E59EFB8C(a1, a2, v2[2], v2[3], v2 + ((*(v9 + 80) + 64) & ~*(v9 + 80)), v5, v6, v7, v8);
}

uint64_t sub_1E59F9BE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v6 = *(*(type metadata accessor for WorkoutPlanCreationView() - 8) + 80);

  return sub_1E59EFEB4(a1, a2);
}

uint64_t sub_1E59F9C9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for WorkoutPlanCreationView() - 8);
  v10 = *a1;
  v11 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v12 = type metadata accessor for WorkoutPlanCreationView();
  result = sub_1E59E970C(v10, v12, 5, 64, MEMORY[0x1E699F120]);
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t objectdestroy_8Tm()
{
  v21 = *(v0 + 16);
  v22 = *(v0 + 32);
  v1 = type metadata accessor for WorkoutPlanCreationView();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5A2A5E4();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E5A2A684();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = &v4[v1[14]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  sub_1E58B369C();

  v14 = &v4[v1[16]];
  v15 = sub_1E5A2A644();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60) + 28)];

  v17 = *&v4[v1[17] + 16];

  v18 = *&v4[v1[18] + 8];

  v19 = *&v4[v1[19] + 8];

  return swift_deallocObject();
}

uint64_t sub_1E59F9FC8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for WorkoutPlanCreationView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E59EE500(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_1E59FA084()
{
  result = qword_1ED0004F8;
  if (!qword_1ED0004F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0004F0, &qword_1E5A41378);
    sub_1E59FA13C();
    sub_1E58CD164(&qword_1ED000530, &qword_1ED000538, &qword_1E5A41398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0004F8);
  }

  return result;
}

unint64_t sub_1E59FA13C()
{
  result = qword_1ED000500;
  if (!qword_1ED000500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000508, &qword_1E5A41380);
    sub_1E59FA1F4();
    sub_1E58CD164(&qword_1ECFFC050, &qword_1ECFFC058, &unk_1E5A2FCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000500);
  }

  return result;
}

unint64_t sub_1E59FA1F4()
{
  result = qword_1ED000510;
  if (!qword_1ED000510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000518, &qword_1E5A41388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000520, &qword_1E5A41390);
    sub_1E5A2A714();
    sub_1E58CD164(&qword_1ED000528, &qword_1ED000520, &qword_1E5A41390);
    sub_1E59F922C(&qword_1ECFFC220, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000510);
  }

  return result;
}

uint64_t sub_1E59FA340()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for WorkoutPlanCreationView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = *v7;

  return sub_1E59EECA0(v0 + v6, v10, v8, v9, v1, v2, v3, v4);
}

unint64_t sub_1E59FA430()
{
  result = qword_1ED000550;
  if (!qword_1ED000550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000548, &qword_1E5A413A8);
    sub_1E59FA4E8();
    sub_1E58CD164(&qword_1ED000568, &qword_1ED000570, &qword_1E5A413B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000550);
  }

  return result;
}

unint64_t sub_1E59FA4E8()
{
  result = qword_1ED000558;
  if (!qword_1ED000558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000560, &qword_1E5A413B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA58, &unk_1E5A3B3E0);
    sub_1E596F604();
    swift_getOpaqueTypeConformance2();
    sub_1E59F922C(&qword_1ECFFD750, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000558);
  }

  return result;
}

double sub_1E59FA5E0(_OWORD *a1)
{
  result = 0.0;
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

void __swiftcall WorkoutPlanDuration.init(duration:identifier:lowerBuffer:upperBuffer:)(FitnessWorkoutPlan::WorkoutPlanDuration *__return_ptr retstr, Swift::Double duration, Swift::String identifier, Swift::Double lowerBuffer, Swift::Double upperBuffer)
{
  retstr->duration = duration;
  retstr->identifier = identifier;
  retstr->lowerBuffer = lowerBuffer;
  retstr->upperBuffer = upperBuffer;
}

uint64_t WorkoutPlanDuration.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E59FA674()
{
  v1 = 0x6E6F697461727564;
  v2 = 0x6675427265776F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x6675427265707075;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E59FA704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E59FB0F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E59FA72C(uint64_t a1)
{
  v2 = sub_1E59FAE94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59FA768(uint64_t a1)
{
  v2 = sub_1E59FAE94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanDuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000588, &qword_1E5A413F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[2];
  v15 = v1[1];
  v12 = v1[3];
  v11 = v1[4];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59FAE94();
  sub_1E5A2C224();
  v19 = 0;
  sub_1E5A2C084();
  if (!v2)
  {
    v18 = 1;
    sub_1E5A2C064();
    v17 = 2;
    sub_1E5A2C084();
    v16 = 3;
    sub_1E5A2C084();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t WorkoutPlanDuration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000598, &qword_1E5A413F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59FAE94();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22[15] = 0;
  sub_1E5A2BFB4();
  v12 = v11;
  v22[14] = 1;
  v13 = sub_1E5A2BF94();
  v15 = v14;
  v16 = v13;
  v22[13] = 2;
  sub_1E5A2BFB4();
  v18 = v17;
  v22[12] = 3;
  sub_1E5A2BFB4();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  *a2 = v12;
  a2[1] = v16;
  a2[2] = v15;
  a2[3] = v18;
  a2[4] = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanDuration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E6932E10](*&v1);
  sub_1E5A2BB74();
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x1E6932E10](*&v6);
  if (v5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  return MEMORY[0x1E6932E10](*&v7);
}

uint64_t WorkoutPlanDuration.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 3);
  sub_1E5A2C1B4();
  WorkoutPlanDuration.hash(into:)();
  return sub_1E5A2C204();
}

uint64_t sub_1E59FAD3C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 3);
  sub_1E5A2C1B4();
  WorkoutPlanDuration.hash(into:)();
  return sub_1E5A2C204();
}

uint64_t sub_1E59FAD9C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 3);
  sub_1E5A2C1B4();
  WorkoutPlanDuration.hash(into:)();
  return sub_1E5A2C204();
}

BOOL _s18FitnessWorkoutPlan0bC8DurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    if (v3 != v5)
    {
      return 0;
    }

    return v2 == v4;
  }

  v7 = sub_1E5A2C114();
  result = 0;
  if ((v7 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

unint64_t sub_1E59FAE94()
{
  result = qword_1ED000590;
  if (!qword_1ED000590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000590);
  }

  return result;
}

unint64_t sub_1E59FAEE8()
{
  result = qword_1ED0005A0;
  if (!qword_1ED0005A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005A0);
  }

  return result;
}

uint64_t sub_1E59FAF3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E59FAF84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E59FAFF0()
{
  result = qword_1ED0005A8;
  if (!qword_1ED0005A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005A8);
  }

  return result;
}

unint64_t sub_1E59FB048()
{
  result = qword_1ED0005B0;
  if (!qword_1ED0005B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005B0);
  }

  return result;
}

unint64_t sub_1E59FB0A0()
{
  result = qword_1ED0005B8;
  if (!qword_1ED0005B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005B8);
  }

  return result;
}

uint64_t sub_1E59FB0F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6675427265776F6CLL && a2 == 0xEB00000000726566 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6675427265707075 && a2 == 0xEB00000000726566)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t CreatePersonalizedWorkoutPlanButtonEnvironment.init(navigateToPersonalizedWorkoutPlanCreation:showPersonalizedWorkoutPlanCreationPrompt:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t sub_1E59FB2B8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s18FitnessWorkoutPlan0bC7WeekdayO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t _s18FitnessWorkoutPlan0bC7WeekdayO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_1E59FB3B4()
{
  result = qword_1ED0005C0;
  if (!qword_1ED0005C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005C0);
  }

  return result;
}

unint64_t sub_1E59FB40C()
{
  result = qword_1ED0005C8;
  if (!qword_1ED0005C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF5B8, &qword_1E5A3DC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005C8);
  }

  return result;
}

unint64_t sub_1E59FB480()
{
  result = qword_1ED0005D0;
  if (!qword_1ED0005D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005D0);
  }

  return result;
}

unint64_t sub_1E59FB4EC()
{
  v1 = 0xD000000000000022;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000031;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

uint64_t sub_1E59FB544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E59FC5DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E59FB56C(uint64_t a1)
{
  v2 = sub_1E59FBB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59FB5A8(uint64_t a1)
{
  v2 = sub_1E59FBB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59FB5E4(uint64_t a1)
{
  v2 = sub_1E59FBC28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59FB620(uint64_t a1)
{
  v2 = sub_1E59FBC28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59FB65C(uint64_t a1)
{
  v2 = sub_1E59FBBD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59FB698(uint64_t a1)
{
  v2 = sub_1E59FBBD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E59FB6D4(uint64_t a1)
{
  v2 = sub_1E59FBB80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59FB710(uint64_t a1)
{
  v2 = sub_1E59FBB80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationError.hashValue.getter()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  return sub_1E5A2C204();
}

uint64_t WorkoutPlanCreationError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0005D8, &qword_1E5A418A0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0005E0, &qword_1E5A418A8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0005E8, &qword_1E5A418B0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0005F0, &qword_1E5A418B8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59FBB2C();
  sub_1E5A2C224();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1E59FBBD4();
      v12 = v26;
      sub_1E5A2C024();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1E59FBB80();
      v12 = v29;
      sub_1E5A2C024();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1E59FBC28();
    sub_1E5A2C024();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1E59FBB2C()
{
  result = qword_1ED0005F8;
  if (!qword_1ED0005F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0005F8);
  }

  return result;
}

unint64_t sub_1E59FBB80()
{
  result = qword_1ED000600;
  if (!qword_1ED000600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000600);
  }

  return result;
}

unint64_t sub_1E59FBBD4()
{
  result = qword_1ED000608;
  if (!qword_1ED000608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000608);
  }

  return result;
}

unint64_t sub_1E59FBC28()
{
  result = qword_1ED000610;
  if (!qword_1ED000610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000610);
  }

  return result;
}

uint64_t WorkoutPlanCreationError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000618, &qword_1E5A418C0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000620, &qword_1E5A418C8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000628, &qword_1E5A418D0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000630, &unk_1E5A418D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E59FBB2C();
  v20 = v43;
  sub_1E5A2C214();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1E5A2C004();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1E58BC5A8();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1E5A2BE84();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
      *v30 = &type metadata for WorkoutPlanCreationError;
      sub_1E5A2BF54();
      sub_1E5A2BE74();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1E59FBBD4();
          sub_1E5A2BF44();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1E59FBB80();
          v33 = v22;
          sub_1E5A2BF44();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1E59FBC28();
        sub_1E5A2BF44();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_1E59FC1F0()
{
  result = qword_1ED000638;
  if (!qword_1ED000638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000638);
  }

  return result;
}

unint64_t sub_1E59FC2C8()
{
  result = qword_1ED000640;
  if (!qword_1ED000640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000640);
  }

  return result;
}

unint64_t sub_1E59FC320()
{
  result = qword_1ED000648;
  if (!qword_1ED000648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000648);
  }

  return result;
}

unint64_t sub_1E59FC378()
{
  result = qword_1ED000650;
  if (!qword_1ED000650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000650);
  }

  return result;
}

unint64_t sub_1E59FC3D0()
{
  result = qword_1ED000658;
  if (!qword_1ED000658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000658);
  }

  return result;
}

unint64_t sub_1E59FC428()
{
  result = qword_1ED000660;
  if (!qword_1ED000660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000660);
  }

  return result;
}

unint64_t sub_1E59FC480()
{
  result = qword_1ED000668;
  if (!qword_1ED000668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000668);
  }

  return result;
}

unint64_t sub_1E59FC4D8()
{
  result = qword_1ED000670;
  if (!qword_1ED000670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000670);
  }

  return result;
}

unint64_t sub_1E59FC530()
{
  result = qword_1ED000678;
  if (!qword_1ED000678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000678);
  }

  return result;
}

unint64_t sub_1E59FC588()
{
  result = qword_1ED000680;
  if (!qword_1ED000680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000680);
  }

  return result;
}

uint64_t sub_1E59FC5DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000023 && 0x80000001E5A47290 == a2;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000031 && 0x80000001E5A472C0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001E5A47300 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t DailyScheduleView.init(store:weekday:scheduledItems:dateComponentsFormatter:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t DailyScheduleView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000688, &qword_1E5A41DC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  v9 = *(v0 + 16);
  v14[0] = *v0;
  v14[1] = v9;
  v15 = *(v0 + 32);
  *v8 = sub_1E5A2AA34();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000690, &qword_1E5A41DC8);
  sub_1E59FCA48(v14, &v8[*(v10 + 44)]);
  v11 = *MEMORY[0x1E697E728];
  v12 = sub_1E5A2A684();
  (*(*(v12 - 8) + 104))(v4, v11, v12);
  sub_1E59FE9F8(&qword_1ECFFBF40, MEMORY[0x1E697E730]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E58CD164(&qword_1ED000698, &qword_1ED000688, &qword_1E5A41DC0);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E5A2B164();
    sub_1E58BAD14(v4, &qword_1ECFFCE80, &qword_1E5A35BC0);
    return sub_1E58BAD14(v8, &qword_1ED000688, &qword_1E5A41DC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E59FCA48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006A0, &qword_1E5A41E78);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v49 = (&v42 - v7);
  v46 = sub_1E5A2B6C4();
  v54 = *(v46 - 8);
  v8 = v54[8];
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v42 - v11;
  v12 = sub_1E5A2AC84();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006A8, &qword_1E5A41E80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006B0, &qword_1E5A41E88);
  v53 = *(v44 - 8);
  v21 = v53[8];
  MEMORY[0x1EEE9AC00](v44);
  v52 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v50 = &v42 - v24;
  *v20 = sub_1E5A2A934();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006B8, &qword_1E5A41E90);
  sub_1E59FD0DC(a1, &v20[*(v25 + 44)]);
  sub_1E5A2AC74();
  sub_1E58CD164(&qword_1ED0006C0, &qword_1ED0006A8, &qword_1E5A41E80);
  sub_1E5A2B224();
  (*(v13 + 8))(v16, v12);
  sub_1E58BAD14(v20, &qword_1ED0006A8, &qword_1E5A41E80);
  sub_1E5A2B6B4();
  v26 = sub_1E5A2AA34();
  v27 = v49;
  *v49 = v26;
  v27[1] = 0x4028000000000000;
  *(v27 + 16) = 0;
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006C8, &qword_1E5A41E98) + 44);
  v28 = *(a1 + 32);
  v29 = swift_allocObject();
  v30 = *(a1 + 16);
  *(v29 + 16) = *a1;
  *(v29 + 32) = v30;
  *(v29 + 48) = *(a1 + 32);

  sub_1E59FE7A4(a1, v55);
  sub_1E5A29E74();
  type metadata accessor for ActivityListItemView();
  type metadata accessor for WorkoutPlanScheduledItem();
  sub_1E59FE9F8(&qword_1ED0006D0, type metadata accessor for ActivityListItemView);
  sub_1E59FE9F8(&qword_1ED0006D8, type metadata accessor for WorkoutPlanScheduledItem);
  sub_1E59FE9F8(&qword_1ED0006E0, type metadata accessor for WorkoutPlanScheduledItem);
  sub_1E5A2B6D4();
  v31 = v52;
  v32 = v53[2];
  v33 = v44;
  v32(v52, v50, v44);
  v43 = v54[2];
  v34 = v45;
  v35 = v46;
  v43(v45, v51, v46);
  v36 = v47;
  sub_1E58BABA0(v27, v47, &qword_1ED0006A0, &qword_1E5A41E78);
  v37 = v48;
  v32(v48, v31, v33);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006E8, &unk_1E5A41EA0);
  v43(&v37[*(v38 + 48)], v34, v35);
  sub_1E58BABA0(v36, &v37[*(v38 + 64)], &qword_1ED0006A0, &qword_1E5A41E78);
  sub_1E58BAD14(v49, &qword_1ED0006A0, &qword_1E5A41E78);
  v39 = v54[1];
  v39(v51, v35);
  v40 = v53[1];
  v40(v50, v33);
  sub_1E58BAD14(v36, &qword_1ED0006A0, &qword_1E5A41E78);
  v39(v34, v35);
  return (v40)(v52, v33);
}

uint64_t sub_1E59FD0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5A2A714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0006F8, &qword_1E5A41EB0);
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000700, &qword_1E5A41EB8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000708, &qword_1E5A41EC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v45 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v46 = sub_1E5A2AA34();
  LOBYTE(v50[0]) = 1;
  sub_1E59FD684(a1, v57);
  *&v56[7] = v57[0];
  *&v56[23] = v57[1];
  *&v56[39] = v57[2];
  *&v56[55] = v57[3];
  v47 = LOBYTE(v50[0]);
  if (*(*(a1 + 32) + 16) > 9uLL)
  {
    (*(v12 + 56))(v21, 1, 1, v11);
  }

  else
  {
    v22 = swift_allocObject();
    v39 = v5;
    v38 = &v38;
    v23 = *(a1 + 16);
    *(v22 + 16) = *a1;
    *(v22 + 32) = v23;
    *(v22 + 48) = *(a1 + 32);
    MEMORY[0x1EEE9AC00](v22);
    v24 = v4;
    v40 = v11;
    *(&v38 - 2) = a1;
    sub_1E59FE7A4(a1, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000720, &qword_1E5A41ED8);
    sub_1E59FE888();
    v25 = v41;
    sub_1E5A2B574();
    v26 = v44;
    sub_1E5A2A704();
    sub_1E58CD164(&qword_1ED000750, &qword_1ED0006F8, &qword_1E5A41EB0);
    sub_1E59FE9F8(&qword_1ECFFC220, MEMORY[0x1E697C248]);
    v27 = v43;
    sub_1E5A2B0B4();
    (*(v39 + 8))(v26, v24);
    (*(v42 + 8))(v25, v27);
    v28 = v40;
    (*(v12 + 32))(v21, v15, v40);
    (*(v12 + 56))(v21, 0, 1, v28);
  }

  v29 = v45;
  sub_1E58A7424(v21, v45);
  v30 = v46;
  v48[0] = v46;
  v48[1] = 0;
  v31 = v47;
  v49[0] = v47;
  *&v49[1] = *v56;
  *&v49[17] = *&v56[16];
  *&v49[33] = *&v56[32];
  *&v49[49] = *&v56[48];
  *&v49[64] = *&v56[63];
  v32 = *&v56[63];
  v33 = *v49;
  *a2 = v46;
  *(a2 + 16) = v33;
  v34 = *&v49[16];
  v35 = *&v49[48];
  *(a2 + 48) = *&v49[32];
  *(a2 + 64) = v35;
  *(a2 + 32) = v34;
  *(a2 + 80) = v32;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000710, &qword_1E5A41EC8);
  sub_1E58A7424(v29, a2 + *(v36 + 64));
  sub_1E58BABA0(v48, v50, &qword_1ED000718, &qword_1E5A41ED0);
  sub_1E58BAD14(v21, &qword_1ED000708, &qword_1E5A41EC0);
  sub_1E58BAD14(v29, &qword_1ED000708, &qword_1E5A41EC0);
  v50[0] = v30;
  v50[1] = 0;
  v51 = v31;
  v53 = *&v56[16];
  v54 = *&v56[32];
  *v55 = *&v56[48];
  *&v55[15] = *&v56[63];
  v52 = *v56;
  return sub_1E58BAD14(v50, &qword_1ED000718, &qword_1E5A41ED0);
}

uint64_t sub_1E59FD684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v3 = type metadata accessor for WorkoutPlanScheduledItem();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1E5A2A004();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v60 - v11;
  v13 = sub_1E5A29EC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5A29FE4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x1E6969868], v13, v21);
  sub_1E5A29ED4();
  (*(v14 + 8))(v17, v13);
  v24 = v63;
  sub_1E5A29F04();
  sub_1E5A29E94();
  v25 = sub_1E5A29EB4();
  (*(*(v25 - 8) + 56))(v12, 0, 1, v25);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  v26 = sub_1E5A29F74();
  result = (*(v19 + 8))(v23, v18);
  v28 = *(v24 + 24);
  if (v28 == 6)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28 + 1;
  }

  if (v29 >= *(v26 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v30 = v26 + 16 * v29;
  v31 = *(v30 + 32);
  v32 = *(v30 + 40);

  v67 = v31;
  v68 = v32;
  sub_1E58D1C80();
  v33 = sub_1E5A2BDA4();
  v35 = v34;

  v65 = v33;
  v66 = v35;
  v36 = sub_1E5A2AFD4();
  v38 = v37;
  v61 = v39;
  v62 = v40;
  v41 = v24;
  v42 = *(v24 + 32);
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = 0;
    v45 = v42 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v46 = *(v60 + 72);
    while (1)
    {
      sub_1E59FEA40(v45, v6, type metadata accessor for WorkoutPlanScheduledItem);
      v47 = *v6;
      result = sub_1E59FEAA8(v6, type metadata accessor for WorkoutPlanScheduledItem);
      v48 = __OFADD__(v44, v47);
      v44 += v47;
      if (v48)
      {
        break;
      }

      v45 += v46;
      if (!--v43)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
  v49 = *(v41 + 16);
  [v49 setUnitsStyle_];
  [v49 setAllowedUnits_];
  sub_1E5A2BD04();
  v50 = [v49 stringFromTimeInterval_];
  if (v50)
  {
    v51 = v50;
    sub_1E5A2BB44();
  }

  LODWORD(v67) = sub_1E5A2ABA4();
  v52 = sub_1E5A2AF84();
  v54 = v53;
  v56 = v55;
  v58 = v57;

  v59 = v61 & 1;
  v64 = v61 & 1;
  LOBYTE(v67) = v61 & 1;
  LOBYTE(v65) = v56 & 1;
  *a2 = v36;
  *(a2 + 8) = v38;
  *(a2 + 16) = v59;
  *(a2 + 24) = v62;
  *(a2 + 32) = v52;
  *(a2 + 40) = v54;
  *(a2 + 48) = v56 & 1;
  *(a2 + 56) = v58;
  sub_1E594C9E8(v36, v38, v59);

  sub_1E594C9E8(v52, v54, v56 & 1);

  sub_1E58B3C9C(v52, v54, v56 & 1);

  sub_1E58B3C9C(v36, v38, v64);
}

uint64_t sub_1E59FDBFC(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
  v8 = *(v7 + 48);
  v9 = &v5[*(v7 + 64)];
  v10 = type metadata accessor for WorkoutPlanScheduledItem();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v5[v8] = *(a1 + 24);
  *v9 = 0;
  v9[8] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  sub_1E59FEAA8(v5, type metadata accessor for WorkoutPlanCreationAction);
  *v5 = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E59FEAA8(v5, type metadata accessor for WorkoutPlanCreationAction);
}

double sub_1E59FDD5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5A29EB4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E5A2BB14();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE2D33E0;
  v9 = *(a1 + 8);
  swift_getKeyPath();
  v10 = v8;
  sub_1E5A2B944();

  v11 = sub_1E5A2AF64();
  v13 = v12;
  v15 = v14;
  sub_1E5A2AF04();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v16 = sub_1E5A2AFA4();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_1E58B3C9C(v11, v13, v15 & 1);

  v23 = sub_1E5A2ADA4();
  v24 = v20 & 1;
  if (qword_1ECFFB478 != -1)
  {
    swift_once();
  }

  v25 = qword_1ED026498;

  v26 = sub_1E5A2B7E4();
  v28 = v27;
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000720, &qword_1E5A41ED8) + 36);
  sub_1E59FE01C(v29);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000748, &qword_1E5A41EE8) + 36));
  *v30 = v26;
  v30[1] = v28;
  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v24;
  *(a2 + 24) = v22;
  *(a2 + 32) = v23;
  result = 5.0;
  *(a2 + 40) = xmmword_1E5A3C080;
  *(a2 + 56) = xmmword_1E5A3C080;
  *(a2 + 72) = 0;
  *(a2 + 80) = v25;
  return result;
}

uint64_t sub_1E59FE01C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A2A9B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A2B6A4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000758, &qword_1E5A41F10);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v30 - v15;
  v17 = *(v3 + 104);
  v17(v10, *MEMORY[0x1E697F468], v2, v14);
  sub_1E5A2A514();
  sub_1E59FEA40(v10, v16, MEMORY[0x1E6981998]);
  (v17)(v6, *MEMORY[0x1E697F480], v2);
  v18 = sub_1E5A2A9A4();
  (*(v3 + 8))(v6, v2);
  v19 = v31;
  v20 = v33;
  v21 = COERCE_UNSIGNED_INT64(v31 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v18 & 1) == 0);
  v22 = v34;
  v23 = v35;
  v24 = sub_1E5A2B7E4();
  v26 = v25;
  sub_1E59FEAA8(v10, MEMORY[0x1E6981998]);
  v27 = &v16[*(v12 + 76)];
  *v27 = v21;
  v28 = v32;
  *(v27 + 1) = v19;
  *(v27 + 2) = v28;
  *(v27 + 3) = v20;
  *(v27 + 4) = v22;
  *(v27 + 5) = v23;
  *(v27 + 24) = 256;
  *(v27 + 7) = v24;
  *(v27 + 8) = v26;
  LODWORD(v24) = sub_1E5A2ABA4();
  sub_1E58A7494(v16, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000760, &qword_1E5A41F18);
  *(a1 + *(result + 36)) = v24;
  return result;
}

uint64_t sub_1E59FE2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E5A2AF24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v24 = *a3;
  v21 = *(&v24 + 1);
  v13 = type metadata accessor for ActivityListItemView();
  sub_1E59FEA40(a2, a4 + v13[7], type metadata accessor for WorkoutPlanScheduledItem);
  v14 = *(a3 + 2);
  v15 = *(a3 + 24);
  v16 = *(*(a3 + 4) + 16) - 1 != a1;
  v23 = 0x403C000000000000;
  (*(v9 + 104))(v12, *MEMORY[0x1E6980EE8], v8);
  sub_1E58BABA0(&v24, v22, &qword_1ECFFEFE0, &qword_1E5A3C590);
  sub_1E59FE7DC();
  v17 = v14;
  sub_1E5A2A544();
  v18 = (a4 + v13[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *v18 = result;
  v18[1] = v20;
  *(a4 + v13[8]) = a1;
  *(a4 + v13[9]) = v15;
  *(a4 + v13[6]) = v17;
  *(a4 + v13[10]) = v16;
  return result;
}

uint64_t sub_1E59FE504()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000688, &qword_1E5A41DC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  v9 = *(v0 + 16);
  v14[0] = *v0;
  v14[1] = v9;
  v15 = *(v0 + 32);
  *v8 = sub_1E5A2AA34();
  *(v8 + 1) = 0x4024000000000000;
  v8[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000690, &qword_1E5A41DC8);
  sub_1E59FCA48(v14, &v8[*(v10 + 44)]);
  v11 = *MEMORY[0x1E697E728];
  v12 = sub_1E5A2A684();
  (*(*(v12 - 8) + 104))(v4, v11, v12);
  sub_1E59FE9F8(&qword_1ECFFBF40, MEMORY[0x1E697E730]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E58CD164(&qword_1ED000698, &qword_1ED000688, &qword_1E5A41DC0);
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E5A2B164();
    sub_1E58BAD14(v4, &qword_1ECFFCE80, &qword_1E5A35BC0);
    return sub_1E58BAD14(v8, &qword_1ED000688, &qword_1E5A41DC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E59FE7DC()
{
  result = qword_1ED0006F0;
  if (!qword_1ED0006F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0006F0);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

unint64_t sub_1E59FE888()
{
  result = qword_1ED000728;
  if (!qword_1ED000728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000720, &qword_1E5A41ED8);
    sub_1E59FE940();
    sub_1E58CD164(&qword_1ED000740, &qword_1ED000748, &qword_1E5A41EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000728);
  }

  return result;
}

unint64_t sub_1E59FE940()
{
  result = qword_1ED000730;
  if (!qword_1ED000730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000738, &qword_1E5A41EE0);
    sub_1E596F604();
    sub_1E58CD164(&qword_1ECFFC050, &qword_1ECFFC058, &unk_1E5A2FCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000730);
  }

  return result;
}

uint64_t sub_1E59FE9F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E59FEA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E59FEAA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ArchivedWorkoutPlansState.init(densityFactor:layout:loadState:locale:sectionLayout:sectionMetrics:sectionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, uint64_t a9)
{
  v11 = sub_1E5A2A1F4();
  (*(*(v11 - 8) + 32))(a8, a1, v11);
  v12 = type metadata accessor for ArchivedWorkoutPlansState();
  v13 = v12[21];
  v14 = type metadata accessor for ArchivedWorkoutPlansLayout();
  (*(*(v14 - 8) + 32))(a8 + v13, a2, v14);
  *(a8 + v12[22]) = a3;
  v15 = v12[23];
  v16 = sub_1E5A29EB4();
  (*(*(v16 - 8) + 32))(a8 + v15, a4, v16);
  v17 = v12[24];
  v18 = sub_1E5A2A184();
  (*(*(v18 - 8) + 32))(a8 + v17, a5, v18);
  result = (*(*(a9 - 8) + 32))(a8 + v12[25], a6, a9);
  *(a8 + v12[26]) = a7 & 1;
  return result;
}

uint64_t ArchivedWorkoutPlansState.densityFactor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A2A1F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ArchivedWorkoutPlansState.layout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 84);
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = type metadata accessor for ArchivedWorkoutPlansLayout();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t (*ArchivedWorkoutPlansState.loadState.modify(uint64_t a1, uint64_t a2))(void, void, void, void, void, void, void, void, void, void, void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 88);
  return result;
}

uint64_t ArchivedWorkoutPlansState.locale.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 92);
  v5 = sub_1E5A29EB4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ArchivedWorkoutPlansState.sectionLayout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 96);
  v7 = *(a1 + 16);
  v8 = *(a1 + 40);
  v9 = *(a1 + 72);
  v5 = sub_1E5A2A184();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_1E59FEF7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C6E6F6974636573 && a2 == 0xED000074756F7961 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D6E6F6974636573 && a2 == 0xEE00736369727465 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E59FF1E0(unsigned __int8 a1)
{
  v1 = 0x46797469736E6564;
  v2 = 0x4D6E6F6974636573;
  if (a1 != 5)
  {
    v2 = 0x546E6F6974636573;
  }

  v3 = 0x656C61636F6CLL;
  if (a1 != 3)
  {
    v3 = 0x4C6E6F6974636573;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x74756F79616CLL;
  if (a1 != 1)
  {
    v4 = 0x7461745364616F6CLL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_1E59FF2E4(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v10 = a3[8];
  v11 = a3[9];
  return sub_1E5905A80(*a1, *a2);
}

uint64_t sub_1E59FF328(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_1E5905AB8(*v1);
}

uint64_t sub_1E59FF360(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  return sub_1E5905A90(a1, *v2);
}

uint64_t sub_1E59FF398(uint64_t a1, void *a2)
{
  sub_1E5A2C1B4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = a2[8];
  v12 = a2[9];
  sub_1E5905A90(v13, *v2);
  return sub_1E5A2C204();
}

uint64_t sub_1E59FF3F0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_1E59FF1E0(*v1);
}

uint64_t sub_1E59FF428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  v13 = a3[9];
  result = sub_1E59FEF7C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E59FF470@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  result = sub_1E59092B8();
  *a2 = result;
  return result;
}

uint64_t sub_1E59FF4AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E59FF500(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ArchivedWorkoutPlansState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v30 = *(a2 + 40);
  v31 = v4;
  v36 = v4;
  v37 = v5;
  v27[0] = v8;
  v27[1] = v5;
  v32 = v9;
  v33 = v6;
  v38 = v6;
  v39 = v30;
  v28 = v10;
  v29 = v7;
  v40 = v7;
  v41 = v8;
  v42 = v9;
  v43 = v10;
  type metadata accessor for ArchivedWorkoutPlansState.CodingKeys();
  swift_getWitnessTable();
  v11 = sub_1E5A2C0D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v11;
  v18 = v34;
  sub_1E5A2C224();
  LOBYTE(v36) = 0;
  sub_1E5A2A1F4();
  sub_1E5A003F4(&qword_1ED000768, MEMORY[0x1E699D880]);
  v19 = v35;
  sub_1E5A2C0B4();
  if (!v19)
  {
    v20 = v31;
    v21 = *(a2 + 84);
    LOBYTE(v36) = 1;
    type metadata accessor for ArchivedWorkoutPlansLayout();
    swift_getWitnessTable();
    sub_1E5A2C0B4();
    LOBYTE(v36) = *(v18 + *(a2 + 88));
    v44 = 2;
    sub_1E59D7794();
    sub_1E5A2C0B4();
    v22 = *(a2 + 92);
    LOBYTE(v36) = 3;
    sub_1E5A29EB4();
    sub_1E5A003F4(&qword_1ECFFCDF0, MEMORY[0x1E6969770]);
    sub_1E5A2C0B4();
    v23 = *(a2 + 96);
    v44 = 4;
    v36 = v20;
    v37 = v30;
    v38 = v29;
    v39 = v28;
    sub_1E5A2A184();
    swift_getWitnessTable();
    sub_1E5A2C0B4();
    v24 = *(a2 + 100);
    LOBYTE(v36) = 5;
    v25 = *(v27[0] + 16);
    sub_1E5A2C0B4();
    LOBYTE(v36) = *(v18 + *(a2 + 104));
    v44 = 6;
    sub_1E59FF958();
    sub_1E5A2C0B4();
  }

  return (*(v12 + 8))(v15, v17);
}

unint64_t sub_1E59FF958()
{
  result = qword_1ED000770;
  if (!qword_1ED000770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000770);
  }

  return result;
}

uint64_t ArchivedWorkoutPlansState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, int *a7@<X7>, uint64_t a8@<X8>, char *a9)
{
  v82 = a1;
  v60 = a8;
  v62 = *(a3 - 8);
  v15 = *(v62 + 64);
  v80 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v17;
  v84 = v18;
  v85 = v19;
  v86 = v20;
  v21 = v19;
  v66 = sub_1E5A2A184();
  v63 = *(v66 - 8);
  v22 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v75 = &v58 - v23;
  v67 = sub_1E5A29EB4();
  v65 = *(v67 - 8);
  v24 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v73 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a4;
  v79 = a7;
  v69 = type metadata accessor for ArchivedWorkoutPlansLayout();
  v68 = *(v69 - 8);
  v26 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v58 - v27;
  v76 = sub_1E5A2A1F4();
  v70 = *(v76 - 8);
  v28 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a2;
  v84 = a3;
  v85 = a4;
  v86 = a5;
  v30 = a5;
  v87 = v21;
  v88 = a6;
  v31 = a6;
  v32 = v80;
  v89 = a7;
  v90 = v80;
  type metadata accessor for ArchivedWorkoutPlansState.CodingKeys();
  swift_getWitnessTable();
  v77 = sub_1E5A2C014();
  v71 = *(v77 - 8);
  v33 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v35 = &v58 - v34;
  v83 = a2;
  v84 = a3;
  v64 = a3;
  v85 = v78;
  v86 = v30;
  v87 = v21;
  v88 = v31;
  v78 = v31;
  v89 = v79;
  v90 = v32;
  v36 = v82;
  v37 = type metadata accessor for ArchivedWorkoutPlansState();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v58 - v40;
  v42 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v80 = v35;
  v43 = v81;
  sub_1E5A2C214();
  if (v43)
  {
    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v44 = v72;
  v45 = v73;
  v59 = v38;
  v46 = v75;
  v47 = v71;
  v81 = v41;
  v79 = v37;
  LOBYTE(v83) = 0;
  sub_1E5A003F4(&qword_1ED000778, MEMORY[0x1E699D880]);
  sub_1E5A2BFE4();
  v48 = v81;
  (*(v70 + 32))();
  LOBYTE(v83) = 1;
  v49 = v69;
  swift_getWitnessTable();
  v50 = v44;
  sub_1E5A2BFE4();
  v51 = v79;
  (*(v68 + 32))(&v48[v79[21]], v50, v49);
  v91 = 2;
  sub_1E59D7944();
  v74 = 0;
  sub_1E5A2BFE4();
  v48[v51[22]] = v83;
  LOBYTE(v83) = 3;
  sub_1E5A003F4(&qword_1ECFFCE18, MEMORY[0x1E6969770]);
  v52 = v67;
  sub_1E5A2BFE4();
  (*(v65 + 32))(&v48[v51[23]], v45, v52);
  LOBYTE(v83) = 4;
  v53 = v66;
  swift_getWitnessTable();
  sub_1E5A2BFE4();
  (*(v63 + 32))(&v48[v51[24]], v46, v53);
  LOBYTE(v83) = 5;
  v54 = *(v78 + 8);
  v55 = v61;
  sub_1E5A2BFE4();
  (*(v62 + 32))(&v48[v51[25]], v55, v64);
  v91 = 6;
  sub_1E5A0043C();
  sub_1E5A2BFE4();
  (*(v47 + 8))(v80, v77);
  v48[v51[26]] = v83;
  v56 = v59;
  (*(v59 + 16))(v60, v48, v51);
  __swift_destroy_boxed_opaque_existential_1(v82);
  return (*(v56 + 8))(v48, v51);
}

uint64_t sub_1E5A003F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5A0043C()
{
  result = qword_1ED000780[0];
  if (!qword_1ED000780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED000780);
  }

  return result;
}

uint64_t static ArchivedWorkoutPlansState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (sub_1E5A2A1E4() & 1) != 0 && (v13 = type metadata accessor for ArchivedWorkoutPlansState(), (static ArchivedWorkoutPlansLayout.== infix(_:_:)(a1 + v13[21], a2 + v13[21], a5, a9)) && *(a1 + v13[22]) == *(a2 + v13[22]) && (MEMORY[0x1E6930AC0](a1 + v13[23], a2 + v13[23]) & 1) != 0 && (v14 = v13[24], (sub_1E5A2A174()) && (v15 = v13[25], v16 = *(*(a8 + 24) + 8), (sub_1E5A2BA74()))
  {
    v17 = *(a1 + v13[26]) ^ *(a2 + v13[26]) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1E5A00658(uint64_t a1)
{
  result = sub_1E5A2A1F4();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 64);
    result = type metadata accessor for ArchivedWorkoutPlansLayout();
    if (v6 <= 0x3F)
    {
      result = sub_1E5A29EB4();
      if (v7 <= 0x3F)
      {
        v11 = *(a1 + 16);
        v12 = *(a1 + 40);
        v13 = *(a1 + 72);
        result = sub_1E5A2A184();
        if (v8 <= 0x3F)
        {
          v9 = *(a1 + 24);
          result = swift_checkMetadataState();
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

FitnessWorkoutPlan::WorkoutPlanState_optional __swiftcall WorkoutPlanState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t sub_1E5A00800()
{
  result = qword_1ED000888;
  if (!qword_1ED000888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000890, &qword_1E5A42190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000888);
  }

  return result;
}

unint64_t sub_1E5A00928()
{
  result = qword_1ED000898;
  if (!qword_1ED000898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000898);
  }

  return result;
}

unint64_t sub_1E5A0098C()
{
  result = qword_1ED0008A0;
  if (!qword_1ED0008A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008A0);
  }

  return result;
}

uint64_t sub_1E5A009F0()
{
  if (*v0)
  {
    result = 0x4164694477656976;
  }

  else
  {
    result = 0x6E61436863746566;
  }

  *v0;
  return result;
}

uint64_t sub_1E5A00A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E61436863746566 && a2 == 0xEF73657461646964;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E5A00B30(uint64_t a1)
{
  v2 = sub_1E5A00F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A00B6C(uint64_t a1)
{
  v2 = sub_1E5A00F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A00BA8(uint64_t a1)
{
  v2 = sub_1E5A00FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A00BE4(uint64_t a1)
{
  v2 = sub_1E5A00FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A00C20(uint64_t a1)
{
  v2 = sub_1E5A00FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A00C5C(uint64_t a1)
{
  v2 = sub_1E5A00FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonalizedWorkoutPlansAction.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0008A8, &qword_1E5A42290);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0008B0, &qword_1E5A42298);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0008B8, &qword_1E5A422A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A00F54();
  sub_1E5A2C224();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1E5A00FA8();
    sub_1E5A2C024();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1E5A00FFC();
    sub_1E5A2C024();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_1E5A00F54()
{
  result = qword_1ED0008C0;
  if (!qword_1ED0008C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008C0);
  }

  return result;
}

unint64_t sub_1E5A00FA8()
{
  result = qword_1ED0008C8;
  if (!qword_1ED0008C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008C8);
  }

  return result;
}

unint64_t sub_1E5A00FFC()
{
  result = qword_1ED0008D0;
  if (!qword_1ED0008D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008D0);
  }

  return result;
}

uint64_t sub_1E5A0106C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5A01128(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t PersonalizedWorkoutPlansAction.hashValue.getter(char a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1 & 1);
  return sub_1E5A2C204();
}

uint64_t sub_1E5A01128(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000918, &qword_1E5A42620);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000920, &qword_1E5A42628);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000928, &unk_1E5A42630);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A00F54();
  v15 = v32;
  sub_1E5A2C214();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_1E5A2C004();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1E58BC5B4();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_1E5A2BE84();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v24 = &type metadata for PersonalizedWorkoutPlansAction;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_1E5A00FA8();
    sub_1E5A2BF44();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1E5A00FFC();
    sub_1E5A2BF44();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_1E5A015E8()
{
  result = qword_1ED0008D8;
  if (!qword_1ED0008D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008D8);
  }

  return result;
}

unint64_t sub_1E5A01680()
{
  result = qword_1ED0008E0;
  if (!qword_1ED0008E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008E0);
  }

  return result;
}

unint64_t sub_1E5A016D8()
{
  result = qword_1ED0008E8;
  if (!qword_1ED0008E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008E8);
  }

  return result;
}

unint64_t sub_1E5A01730()
{
  result = qword_1ED0008F0;
  if (!qword_1ED0008F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008F0);
  }

  return result;
}

unint64_t sub_1E5A01788()
{
  result = qword_1ED0008F8;
  if (!qword_1ED0008F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0008F8);
  }

  return result;
}

unint64_t sub_1E5A017E0()
{
  result = qword_1ED000900;
  if (!qword_1ED000900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000900);
  }

  return result;
}

unint64_t sub_1E5A01838()
{
  result = qword_1ED000908;
  if (!qword_1ED000908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000908);
  }

  return result;
}

unint64_t sub_1E5A01890()
{
  result = qword_1ED000910;
  if (!qword_1ED000910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000910);
  }

  return result;
}

__n128 PreviousPlanLockupFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_1E5A018F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5A2C1B4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 2;
LABEL_11:
      MEMORY[0x1E6932DE0](v3);
      return sub_1E5A2C204();
    }
  }

  MEMORY[0x1E6932DE0](0);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A019B0()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 3;
      return MEMORY[0x1E6932DE0](v2);
    }

    if (v1 == 3)
    {
      v2 = 4;
      return MEMORY[0x1E6932DE0](v2);
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 1;
      return MEMORY[0x1E6932DE0](v2);
    }

    if (v1 == 1)
    {
      v2 = 2;
      return MEMORY[0x1E6932DE0](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1E6932DE0](0);

  return sub_1E5A2BB74();
}

uint64_t sub_1E5A01A60()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5A2C1B4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 3;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 2;
LABEL_11:
      MEMORY[0x1E6932DE0](v3);
      return sub_1E5A2C204();
    }
  }

  MEMORY[0x1E6932DE0](0);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A01B14(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return v6 == 2;
    }

    if (v5 == 3)
    {
      return v6 == 3;
    }
  }

  else
  {
    if (!v5)
    {
      return v6 == 0;
    }

    if (v5 == 1)
    {
      return v6 == 1;
    }
  }

  if (v6 < 4)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == v6)
  {
    return 1;
  }

  return sub_1E5A2C114();
}

uint64_t PreviousPlanLockupFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v106 = a3;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC318, &unk_1E5A42640);
  v7 = *(v105 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v91 - v15;
  State = type metadata accessor for PreviousPlanLockupLoadState();
  v18 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State - 8);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PreviousPlanLockupAction();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4[1];
  v108 = *v4;
  v109 = v25;
  v110 = v4[2];
  sub_1E5A040C8(a4, v24, type metadata accessor for PreviousPlanLockupAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v28 = *(type metadata accessor for PreviousPlanLockupState() + 28);
      sub_1E5A04130(a2 + v28, type metadata accessor for PreviousPlanLockupLoadState);
      sub_1E59A1634(v24, a2 + v28);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
      return (*(*(v29 - 8) + 56))(a2 + v28, 0, 2, v29);
    }

    v72 = *v24;
    v73 = *(v24 + 1);
    v74 = v24[16];
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v76 = v75[12];
    v77 = v75[16];
    v78 = v75[20];
    v79 = &v10[v75[24]];
    sub_1E5A02550();
    v107[0] = 0uLL;
    sub_1E5A2BE14();
    v80 = swift_allocObject();
    v81 = v109;
    *(v80 + 16) = v108;
    *(v80 + 32) = v81;
    *(v80 + 48) = v110;
    *(v80 + 64) = v72;
    *(v80 + 72) = v73;
    *(v80 + 80) = v74;
    *v79 = &unk_1E5A42658;
    *(v79 + 1) = v80;
    sub_1E5A03C74(&v108, v107);
    sub_1E5A2BC94();
    v82 = *MEMORY[0x1E6999B58];
    v83 = sub_1E5A2B924();
    (*(*(v83 - 8) + 104))(&v10[v77], v82, v83);
    v84 = *MEMORY[0x1E6999B48];
    v85 = sub_1E5A2B914();
    (*(*(v85 - 8) + 104))(&v10[v78], v84, v85);
    v86 = v105;
    (*(v7 + 104))(v10, *MEMORY[0x1E6999AD8], v105);
    v87 = v106;
    v88 = *v106;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = sub_1E58E7510(0, v88[2] + 1, 1, v88);
    }

    v90 = v88[2];
    v89 = v88[3];
    if (v90 >= v89 >> 1)
    {
      v88 = sub_1E58E7510(v89 > 1, v90 + 1, 1, v88);
    }

    v88[2] = v90 + 1;
    (*(v7 + 32))(v88 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v90, v10, v86);
    *v87 = v88;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      result = type metadata accessor for PreviousPlanLockupState();
      *(a2 + *(result + 32)) = 1;
      return result;
    }

LABEL_20:
    result = type metadata accessor for PreviousPlanLockupState();
    *(a2 + *(result + 32)) = 0;
    return result;
  }

  v30 = type metadata accessor for PreviousPlanLockupState();
  v31 = *(v30 + 28);
  v32 = (a2 + *(v30 + 24));
  v33 = *v32;
  v34 = v32[1];
  sub_1E5A040C8(a2 + v31, v20, type metadata accessor for PreviousPlanLockupLoadState);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v20, 2, v35) != 1)
  {
    return sub_1E5A04130(v20, type metadata accessor for PreviousPlanLockupLoadState);
  }

  v104 = v34;
  v37 = v33;
  sub_1E5A04130(v20, type metadata accessor for PreviousPlanLockupLoadState);
  sub_1E5A04130(a2 + v31, type metadata accessor for PreviousPlanLockupLoadState);
  (*(v36 + 56))(a2 + v31, 2, 2, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v39 = v38[12];
  v40 = v38[16];
  v101 = v38[20];
  v41 = &v16[v38[24]];
  v42 = v104;
  *&v107[0] = v37;
  *(&v107[0] + 1) = v104;
  v43 = sub_1E5A02550();

  v102 = v43;
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v44 = swift_allocObject();
  v45 = v109;
  *(v44 + 16) = v108;
  *(v44 + 32) = v45;
  *(v44 + 48) = v110;
  v103 = v37;
  *(v44 + 64) = v37;
  *(v44 + 72) = v42;
  *v41 = &unk_1E5A42670;
  *(v41 + 1) = v44;
  v46 = *MEMORY[0x1E6999B58];
  v47 = sub_1E5A2B924();
  v48 = *(v47 - 8);
  v98 = *(v48 + 104);
  v97 = v48 + 104;
  v98(&v16[v40], v46, v47);
  v49 = *MEMORY[0x1E6999B48];
  v50 = sub_1E5A2B914();
  v51 = *(v50 - 8);
  v52 = *(v51 + 104);
  v96 = v50;
  v95 = v52;
  v94 = v51 + 104;
  (v52)(&v16[v101], v49);
  LODWORD(v43) = *MEMORY[0x1E6999AD8];
  v53 = *(v7 + 104);
  v53(v16, *MEMORY[0x1E6999AD8], v105);
  v54 = *v106;

  sub_1E5A03C74(&v108, v107);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  LODWORD(v101) = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v54 = sub_1E58E7510(0, *(v54 + 2) + 1, 1, v54);
  }

  v57 = *(v54 + 2);
  v56 = *(v54 + 3);
  v99 = v47;
  v100 = v53;
  if (v57 >= v56 >> 1)
  {
    v54 = sub_1E58E7510(v56 > 1, v57 + 1, 1, v54);
  }

  *(v54 + 2) = v57 + 1;
  v59 = *(v7 + 32);
  v58 = v7 + 32;
  v92 = (*(v58 + 48) + 32) & ~*(v58 + 48);
  v91 = *(v58 + 40);
  v60 = v16;
  v61 = v105;
  v93 = v59;
  v59(&v54[v92 + v91 * v57], v60, v105);
  v62 = v38[12];
  v63 = v38[16];
  v64 = v38[20];
  v65 = &v13[v38[24]];
  v107[0] = xmmword_1E5A36210;
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v98(&v13[v63], *MEMORY[0x1E6999B60], v99);
  v95(&v13[v64], *MEMORY[0x1E6999B40], v96);
  v66 = swift_allocObject();
  v67 = v109;
  *(v66 + 16) = v108;
  *(v66 + 32) = v67;
  *(v66 + 48) = v110;
  v68 = v104;
  *(v66 + 64) = v103;
  *(v66 + 72) = v68;
  *v65 = &unk_1E5A42680;
  *(v65 + 1) = v66;
  v100(v13, v101, v61);
  sub_1E5A03C74(&v108, v107);
  v70 = *(v54 + 2);
  v69 = *(v54 + 3);
  if (v70 >= v69 >> 1)
  {
    v54 = sub_1E58E7510(v69 > 1, v70 + 1, 1, v54);
  }

  v71 = v106;
  *(v54 + 2) = v70 + 1;
  result = v93(&v54[v92 + v70 * v91], v13, v61);
  *v71 = v54;
  return result;
}

unint64_t sub_1E5A02550()
{
  result = qword_1ED000930;
  if (!qword_1ED000930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000930);
  }

  return result;
}

uint64_t sub_1E5A025A4(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = type metadata accessor for PreviousPlanLockupAction();
  v4[3] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v10 = type metadata accessor for PreviousPlanDetail();
  v4[5] = v10;
  v11 = *(v10 - 8);
  v4[6] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v4[7] = v13;
  v4[8] = sub_1E5A2BC84();
  v4[9] = sub_1E5A2BC74();
  v14 = a2[1];
  v18 = (*a2 + **a2);
  v15 = (*a2)[1];
  v16 = swift_task_alloc();
  v4[10] = v16;
  *v16 = v4;
  v16[1] = sub_1E5A02764;

  return v18(v13, a3, a4);
}

uint64_t sub_1E5A02764()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v11 = *v1;
  v3[11] = v2;

  v8 = sub_1E5A2BC54();
  v3[12] = v8;
  v3[13] = v7;
  if (v2)
  {
    v9 = sub_1E5A02BC8;
  }

  else
  {
    v9 = sub_1E5A028C4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5A028C4()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_1E5A040C8(v0[7], v2, type metadata accessor for PreviousPlanDetail);
  (*(v1 + 56))(v2, 0, 1, v3);
  swift_storeEnumTagMultiPayload();
  v5 = *(MEMORY[0x1E6999AF0] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000958, &unk_1E5A427F8);
  *v6 = v0;
  v6[1] = sub_1E5A029D8;
  v8 = v0[4];
  v9 = v0[2];

  return MEMORY[0x1EEE01A40](v8, v7);
}

uint64_t sub_1E5A029D8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_1E5A04130(v3, type metadata accessor for PreviousPlanLockupAction);
  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E5A02B30, v5, v4);
}

uint64_t sub_1E5A02B30()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];

  sub_1E5A04130(v2, type metadata accessor for PreviousPlanDetail);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5A02BC8()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_1E5A02C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = a4;
  *(v4 + 96) = a1;
  v6 = type metadata accessor for PreviousPlanLockupAction();
  *(v4 + 120) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v8 = type metadata accessor for PreviousPlanDetail();
  *(v4 + 136) = v8;
  v9 = *(v8 - 8);
  *(v4 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = sub_1E5A2BC84();
  *(v4 + 168) = sub_1E5A2BC74();
  *(v4 + 176) = *a2;
  v11 = *(a2 + 40);
  v15 = (*(a2 + 32) + **(a2 + 32));
  v12 = *(*(a2 + 32) + 4);
  v13 = swift_task_alloc();
  *(v4 + 192) = v13;
  *v13 = v4;
  v13[1] = sub_1E5A02DF0;

  return v15(v4 + 56);
}

uint64_t sub_1E5A02DF0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 160);
  v11 = *v1;
  v3[25] = v2;

  v8 = sub_1E5A2BC54();
  v3[26] = v8;
  v3[27] = v7;
  if (v2)
  {
    v9 = sub_1E5A03844;
  }

  else
  {
    v9 = sub_1E5A02F50;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5A02F50()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[20];
  v7 = sub_1E5A2BC74();
  v0[28] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_1E5A03128;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 33, v7, v11);
}

uint64_t sub_1E5A03128()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[28];

    v6 = v2[26];
    v7 = v2[27];

    return MEMORY[0x1EEE6DFA0](sub_1E5A0323C, v6, v7);
  }

  return result;
}

uint64_t sub_1E5A0323C()
{
  if (*(v0 + 264) == 1)
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 152);
    v3 = *(v0 + 128);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v12 = (*(v0 + 176) + **(v0 + 176));
    v6 = *(*(v0 + 176) + 4);
    v7 = swift_task_alloc();
    *(v0 + 240) = v7;
    *v7 = v0;
    v7[1] = sub_1E5A033A4;
    v8 = *(v0 + 184);
    v9 = *(v0 + 152);
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);

    return v12(v9, v10, v11);
  }
}

uint64_t sub_1E5A033A4()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_1E5A038BC;
  }

  else
  {
    v7 = sub_1E5A034E0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E5A034E0()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  sub_1E5A040C8(v0[19], v2, type metadata accessor for PreviousPlanDetail);
  (*(v1 + 56))(v2, 0, 1, v3);
  swift_storeEnumTagMultiPayload();
  v5 = *(MEMORY[0x1E6999AF0] + 4);
  v6 = swift_task_alloc();
  v0[32] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000958, &unk_1E5A427F8);
  *v6 = v0;
  v6[1] = sub_1E5A035F4;
  v8 = v0[16];
  v9 = v0[12];

  return MEMORY[0x1EEE01A40](v8, v7);
}

uint64_t sub_1E5A035F4()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 128);
  v7 = *v0;

  sub_1E5A04130(v3, type metadata accessor for PreviousPlanLockupAction);
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1E5A0374C, v5, v4);
}

uint64_t sub_1E5A0374C()
{
  sub_1E5A04130(v0[19], type metadata accessor for PreviousPlanDetail);
  v1 = v0[20];
  v2 = sub_1E5A2BC74();
  v0[28] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_1E5A03128;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 33, v2, v6);
}

uint64_t sub_1E5A03844()
{
  v1 = v0[21];

  v2 = v0[25];
  v3 = v0[19];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5A038BC()
{
  v1 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[31];
  v3 = v0[19];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5A0393C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = sub_1E5A2BC84();
  *(v5 + 24) = sub_1E5A2BC74();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  *(v5 + 48) = a5 & 1;
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v5 + 32) = v13;
  *v13 = v5;
  v13[1] = sub_1E5A03A74;

  return v15(a3, a4, v5 + 48);
}

uint64_t sub_1E5A03A74()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v14 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    v6 = sub_1E5A2BC54();
    v8 = v7;
    v9 = sub_1E58E4A50;
  }

  else
  {
    v10 = *(v2 + 16);
    v11 = *(v2 + 24);
    v6 = sub_1E5A2BC54();
    v8 = v12;
    v9 = sub_1E58E49EC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1E5A03BB8(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E58CECB4;

  return sub_1E5A0393C(a1, v1 + 16, v4, v5, v6);
}

uint64_t sub_1E5A03CB4(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CECB4;

  return sub_1E5A025A4(a1, (v1 + 16), v4, v5);
}

uint64_t objectdestroyTm_8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1E5A03DBC(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CD5C8;

  return sub_1E5A02C44(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E5A03F40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_18FitnessWorkoutPlan08PreviousC13LockupFeatureV14TaskIdentifier33_AD499FED2B09072339DD561FF2F993BALLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5A03FB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5A04004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1E5A04074()
{
  result = qword_1ED000950;
  if (!qword_1ED000950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000950);
  }

  return result;
}

uint64_t sub_1E5A040C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5A04130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EditItem.init(currentItem:index:weekday:updatedDuration:updatedFilterProperties:updatedModalityIdentifier:updatedWeekday:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v15 = type metadata accessor for WorkoutPlanScheduledItem();
  (*(*(v15 - 8) + 56))(a9, 1, 1, v15);
  v16 = type metadata accessor for EditItem();
  v17 = v16[6];
  v18 = a9 + v16[5];
  v19 = v16[8];
  v20 = a9 + v16[7];
  v21 = v16[10];
  v22 = (a9 + v16[9]);
  result = sub_1E59320E4(a1, a9);
  *v18 = a2;
  *(v18 + 8) = a3 & 1;
  *(a9 + v17) = a4;
  *v20 = a5;
  *(v20 + 8) = a6 & 1;
  *(a9 + v19) = a7;
  *v22 = a8;
  v22[1] = a10;
  *(a9 + v21) = a11;
  return result;
}

uint64_t type metadata accessor for EditItem()
{
  result = qword_1ED000978;
  if (!qword_1ED000978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5A04334()
{
  v1 = *v0;
  v2 = 0x49746E6572727563;
  v3 = 0xD000000000000019;
  if (v1 != 5)
  {
    v3 = 0x5764657461647075;
  }

  v4 = 0x4464657461647075;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7865646E69;
  if (v1 != 1)
  {
    v5 = 0x7961646B656577;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E5A04438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A0557C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A04460(uint64_t a1)
{
  v2 = sub_1E5A05170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A0449C(uint64_t a1)
{
  v2 = sub_1E5A05170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EditItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000960, &qword_1E5A42808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A05170();
  sub_1E5A2C224();
  LOBYTE(v22) = 0;
  type metadata accessor for WorkoutPlanScheduledItem();
  sub_1E58C79BC(&qword_1ECFFB910);
  sub_1E5A2C054();
  if (!v2)
  {
    v11 = type metadata accessor for EditItem();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = *(v12 + 8);
    LOBYTE(v22) = 1;
    sub_1E5A2C044();
    LOBYTE(v22) = *(v3 + v11[6]);
    v23 = 2;
    sub_1E58C2944();
    sub_1E5A2C054();
    v15 = (v3 + v11[7]);
    v16 = *v15;
    v17 = *(v15 + 8);
    LOBYTE(v22) = 3;
    sub_1E5A2C044();
    v22 = *(v3 + v11[8]);
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7E0, &qword_1E5A42810);
    sub_1E58F2438(&qword_1ECFFC7E8, sub_1E58F1F88);
    sub_1E5A2C054();
    v18 = (v3 + v11[9]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v22) = 5;
    sub_1E5A2C034();
    LOBYTE(v22) = *(v3 + v11[10]);
    v23 = 6;
    sub_1E5A2C054();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t EditItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v33 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v32 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000970, &qword_1E5A42818);
  v36 = *(v39 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v32 - v6;
  v8 = type metadata accessor for EditItem();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutPlanScheduledItem();
  v14 = *(*(v13 - 8) + 56);
  v35 = v13;
  v14(v12, 1, 1);
  v15 = &v12[v9[7]];
  *v15 = 0;
  v15[8] = 1;
  v34 = v9[8];
  v12[v34] = 7;
  v16 = &v12[v9[9]];
  *v16 = 0;
  v16[8] = 1;
  v17 = v9[10];
  *&v12[v17] = 0;
  v18 = &v12[v9[11]];
  *v18 = 0;
  v18[1] = 0;
  v19 = v9[12];
  v41 = v12;
  v12[v19] = 7;
  v20 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  sub_1E5A05170();
  v37 = v7;
  v21 = v40;
  sub_1E5A2C214();
  if (v21)
  {
    v22 = v41;
  }

  else
  {
    v40 = v17;
    v23 = v36;
    LOBYTE(v43) = 0;
    sub_1E58C79BC(&qword_1ECFFBB28);
    v24 = v38;
    v25 = v37;
    sub_1E5A2BF84();
    v26 = v24;
    v22 = v41;
    sub_1E59320E4(v26, v41);
    LOBYTE(v43) = 1;
    *v15 = sub_1E5A2BF74();
    v15[8] = v27 & 1;
    v44 = 2;
    sub_1E58C7514();
    sub_1E5A2BF84();
    *(v22 + v34) = v43;
    LOBYTE(v43) = 3;
    *v16 = sub_1E5A2BF74();
    v16[8] = v28 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC7E0, &qword_1E5A42810);
    v44 = 4;
    sub_1E58F2438(&qword_1ECFFC808, sub_1E58F24B0);
    sub_1E5A2BF84();
    *(v22 + v40) = v43;
    LOBYTE(v43) = 5;
    *v18 = sub_1E5A2BF64();
    v18[1] = v30;
    v44 = 6;
    v31 = v39;
    sub_1E5A2BF84();
    (*(v23 + 8))(v25, v31);
    *(v22 + v19) = v43;
    sub_1E5A051C4(v22, v33);
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_1E5A057E0(v22, type metadata accessor for EditItem);
}

BOOL _s18FitnessWorkoutPlan8EditItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v59 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009C0, &unk_1E5A429C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v59 - v15;
  v18 = *(v17 + 56);
  sub_1E58EFFE4(a1, &v59 - v15);
  sub_1E58EFFE4(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  sub_1E58EFFE4(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1E5A057E0(v12, type metadata accessor for WorkoutPlanScheduledItem);
LABEL_8:
    v26 = &qword_1ED0009C0;
    v27 = &unk_1E5A429C0;
LABEL_19:
    sub_1E58BAD14(v16, v26, v27);
    return 0;
  }

  sub_1E5A05840(&v16[v18], v8);
  if (*v12 != *v8 || (sub_1E58B4B48(v12[1], v8[1]) & 1) == 0 || (v28 = *(v4 + 24), (sub_1E5A29E54() & 1) == 0) || ((v29 = *(v4 + 28), v30 = *(v12 + v29), v31 = *(v12 + v29 + 8), v32 = (v8 + v29), v30 == *v32) ? (v33 = v31 == v32[1]) : (v33 = 0), !v33 && (sub_1E5A2C114() & 1) == 0))
  {
    sub_1E5A057E0(v8, type metadata accessor for WorkoutPlanScheduledItem);
    sub_1E5A057E0(v12, type metadata accessor for WorkoutPlanScheduledItem);
    v26 = &qword_1ECFFB790;
    v27 = &qword_1E5A2D620;
    goto LABEL_19;
  }

  sub_1E5A057E0(v8, type metadata accessor for WorkoutPlanScheduledItem);
  sub_1E5A057E0(v12, type metadata accessor for WorkoutPlanScheduledItem);
LABEL_3:
  sub_1E58BAD14(v16, &qword_1ECFFB790, &qword_1E5A2D620);
  v20 = type metadata accessor for EditItem();
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v35 = v20[6];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (v36 == 7)
  {
    if (v37 != 7)
    {
      return 0;
    }
  }

  else if (v36 != v37)
  {
    return 0;
  }

  v38 = v20[7];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = v20[8];
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44)
  {
    if (!v45)
    {
      return 0;
    }

    v46 = v20;
    v47 = *(a2 + v43);

    v48 = sub_1E58B4B48(v44, v45);

    v20 = v46;
    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v49 = v20[9];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53)
    {
      return 0;
    }

    if (*v50 != *v52 || v51 != v53)
    {
      v54 = v20;
      v55 = sub_1E5A2C114();
      v20 = v54;
      if ((v55 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v53)
  {
    return 0;
  }

  v56 = v20[10];
  v57 = *(a1 + v56);
  v58 = *(a2 + v56);
  if (v57 == 7)
  {
    return v58 == 7;
  }

  return v57 == v58;
}

unint64_t sub_1E5A05170()
{
  result = qword_1ED000968;
  if (!qword_1ED000968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000968);
  }

  return result;
}

uint64_t sub_1E5A051C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E5A05250()
{
  sub_1E5A0535C();
  if (v0 <= 0x3F)
  {
    sub_1E5A05418(319, &qword_1ED000990);
    if (v1 <= 0x3F)
    {
      sub_1E5A05418(319, &qword_1ED000998);
      if (v2 <= 0x3F)
      {
        sub_1E5A053B4();
        if (v3 <= 0x3F)
        {
          sub_1E5A05418(319, &qword_1EE2CFA60);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5A0535C()
{
  if (!qword_1ED000988)
  {
    type metadata accessor for WorkoutPlanScheduledItem();
    v0 = sub_1E5A2BD84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED000988);
    }
  }
}

void sub_1E5A053B4()
{
  if (!qword_1ED0009A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC7E0, &qword_1E5A42810);
    v0 = sub_1E5A2BD84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED0009A0);
    }
  }
}

void sub_1E5A05418(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E5A2BD84();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1E5A05478()
{
  result = qword_1ED0009A8;
  if (!qword_1ED0009A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0009A8);
  }

  return result;
}

unint64_t sub_1E5A054D0()
{
  result = qword_1ED0009B0;
  if (!qword_1ED0009B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0009B0);
  }

  return result;
}

unint64_t sub_1E5A05528()
{
  result = qword_1ED0009B8;
  if (!qword_1ED0009B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0009B8);
  }

  return result;
}

uint64_t sub_1E5A0557C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E6572727563 && a2 == 0xEB000000006D6574;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961646B656577 && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4464657461647075 && a2 == 0xEF6E6F6974617275 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5A47330 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E5A47350 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5764657461647075 && a2 == 0xEE007961646B6565)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E5A057E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5A05840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5A058A4()
{
  v1 = *v0;
  v2 = 0x6570704177656976;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x72656C4165646968;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E5A05958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A079DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A05980(uint64_t a1)
{
  v2 = sub_1E5A064BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A059BC(uint64_t a1)
{
  v2 = sub_1E5A064BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A059F8(uint64_t a1)
{
  v2 = sub_1E5A06574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A05A34(uint64_t a1)
{
  v2 = sub_1E5A06574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A05A70(uint64_t a1)
{
  v2 = sub_1E5A066C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A05AAC(uint64_t a1)
{
  v2 = sub_1E5A066C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A05AE8(uint64_t a1)
{
  v2 = sub_1E5A065C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A05B24(uint64_t a1)
{
  v2 = sub_1E5A065C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A05B60()
{
  if (*v0)
  {
    result = 0x7954746165706572;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1E5A05BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7954746165706572 && a2 == 0xEA00000000006570)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E5A2C114();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1E5A05C84(uint64_t a1)
{
  v2 = sub_1E5A0661C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A05CC0(uint64_t a1)
{
  v2 = sub_1E5A0661C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A05CFC(uint64_t a1)
{
  v2 = sub_1E5A06780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A05D38(uint64_t a1)
{
  v2 = sub_1E5A06780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviousPlanLockupAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009C8, &qword_1E5A429D0);
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009D0, &qword_1E5A429D8);
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v50 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009D8, &qword_1E5A429E0);
  v53 = *(v63 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009E0, &unk_1E5A429E8);
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009E8, &qword_1E5A429F8);
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - v20;
  v22 = type metadata accessor for PreviousPlanLockupAction();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0009F0, &qword_1E5A42A00);
  v65 = *(v26 - 8);
  v66 = v26;
  v27 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v50 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A064BC();
  sub_1E5A2C224();
  sub_1E5A06510(v64, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v17;
    v37 = v13;
    v39 = v60;
    v38 = v61;
    v40 = v62;
    v41 = v63;
    if (EnumCaseMultiPayload)
    {
      v45 = *v25;
      v46 = *(v25 + 1);
      v47 = v25[16];
      v73 = 2;
      sub_1E5A0661C();
      v48 = v66;
      sub_1E5A2C024();
      v72 = 0;
      v49 = v67;
      sub_1E5A2C064();

      if (!v49)
      {
        v71 = v47;
        v70 = 1;
        sub_1E5A06670();
        sub_1E5A2C0B4();
      }

      (*(v53 + 8))(v40, v41);
      return (*(v65 + 8))(v29, v48);
    }

    else
    {
      v42 = v36;
      sub_1E59A1634(v25, v36);
      v69 = 1;
      sub_1E5A066C4();
      v43 = v66;
      sub_1E5A2C024();
      type metadata accessor for PreviousPlanDetail();
      sub_1E5A07308(&qword_1ECFFF468);
      sub_1E5A2C054();
      (*(v39 + 8))(v37, v38);
      sub_1E5A06718(v42);
      return (*(v65 + 8))(v29, v43);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v68 = 0;
      sub_1E5A06780();
      v33 = v66;
      sub_1E5A2C024();
      (*(v51 + 8))(v21, v52);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v74 = 3;
        sub_1E5A065C8();
        v32 = v54;
        v33 = v66;
        sub_1E5A2C024();
        v35 = v55;
        v34 = v56;
      }

      else
      {
        v75 = 4;
        sub_1E5A06574();
        v32 = v57;
        v33 = v66;
        sub_1E5A2C024();
        v35 = v58;
        v34 = v59;
      }

      (*(v35 + 8))(v32, v34);
    }

    return (*(v65 + 8))(v29, v33);
  }
}

uint64_t type metadata accessor for PreviousPlanLockupAction()
{
  result = qword_1ED000A68;
  if (!qword_1ED000A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5A064BC()
{
  result = qword_1ED0009F8;
  if (!qword_1ED0009F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0009F8);
  }

  return result;
}

uint64_t sub_1E5A06510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviousPlanLockupAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5A06574()
{
  result = qword_1ED000A00;
  if (!qword_1ED000A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A00);
  }

  return result;
}

unint64_t sub_1E5A065C8()
{
  result = qword_1ED000A08;
  if (!qword_1ED000A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A08);
  }

  return result;
}

unint64_t sub_1E5A0661C()
{
  result = qword_1ED000A10;
  if (!qword_1ED000A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A10);
  }

  return result;
}

unint64_t sub_1E5A06670()
{
  result = qword_1ED000A18;
  if (!qword_1ED000A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A18);
  }

  return result;
}

unint64_t sub_1E5A066C4()
{
  result = qword_1ED000A20;
  if (!qword_1ED000A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A20);
  }

  return result;
}

uint64_t sub_1E5A06718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E5A06780()
{
  result = qword_1ED000A28;
  if (!qword_1ED000A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A28);
  }

  return result;
}

uint64_t PreviousPlanLockupAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A30, &qword_1E5A42A08);
  v80 = *(v82 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A38, &qword_1E5A42A10);
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v70 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A40, &qword_1E5A42A18);
  v83 = *(v81 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v89 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A48, &qword_1E5A42A20);
  v11 = *(v10 - 8);
  v76 = v10;
  v77 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v70 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A50, &qword_1E5A42A28);
  v74 = *(v75 - 8);
  v14 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v87 = &v70 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000A58, &unk_1E5A42A30);
  v86 = *(v16 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v70 - v18;
  v20 = type metadata accessor for PreviousPlanLockupAction();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v70 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1E5A064BC();
  v32 = v92;
  sub_1E5A2C214();
  if (v32)
  {
    goto LABEL_9;
  }

  v33 = v87;
  v72 = v26;
  v71 = v23;
  v35 = v88;
  v34 = v89;
  v73 = v29;
  v92 = v20;
  v36 = v90;
  v37 = sub_1E5A2C004();
  v38 = (2 * *(v37 + 16)) | 1;
  v93 = v37;
  v94 = v37 + 32;
  v95 = 0;
  v96 = v38;
  v39 = sub_1E58BC5BC();
  if (v39 == 5 || v95 != v96 >> 1)
  {
    v43 = sub_1E5A2BE84();
    swift_allocError();
    v44 = v19;
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v46 = v92;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v43 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v86 + 8))(v44, v16);
    swift_unknownObjectRelease();
LABEL_9:
    v48 = v91;
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  if (v39 <= 1u)
  {
    if (v39)
    {
      v98 = 1;
      sub_1E5A066C4();
      sub_1E5A2BF44();
      v55 = v19;
      v56 = v86;
      type metadata accessor for PreviousPlanDetail();
      v59 = v35;
      sub_1E5A07308(&qword_1ECFFF4A0);
      v60 = v72;
      v61 = v76;
      sub_1E5A2BF84();
      (*(v77 + 8))(v59, v61);
      (*(v56 + 8))(v55, v16);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v58 = v73;
      sub_1E5A07250(v60, v73);
    }

    else
    {
      v98 = 0;
      sub_1E5A06780();
      sub_1E5A2BF44();
      v50 = v86;
      (*(v74 + 8))(v33, v75);
      (*(v50 + 8))(v19, v16);
      swift_unknownObjectRelease();
      v58 = v73;
      swift_storeEnumTagMultiPayload();
    }

    v57 = v91;
    v40 = v36;
  }

  else
  {
    if (v39 == 2)
    {
      v98 = 2;
      sub_1E5A0661C();
      v51 = v34;
      sub_1E5A2BF44();
      v40 = v36;
      v98 = 0;
      v52 = v81;
      v53 = sub_1E5A2BF94();
      v63 = v62;
      v64 = v51;
      v65 = v19;
      v66 = v53;
      v97 = 1;
      sub_1E5A072B4();
      sub_1E5A2BFE4();
      (*(v83 + 8))(v64, v52);
      (*(v86 + 8))(v65, v16);
      swift_unknownObjectRelease();
      v67 = v98;
      v68 = v71;
      *v71 = v66;
      v68[1] = v63;
      *(v68 + 16) = v67;
      swift_storeEnumTagMultiPayload();
      v69 = v68;
      v58 = v73;
      sub_1E5A07250(v69, v73);
    }

    else
    {
      v40 = v36;
      if (v39 == 3)
      {
        v98 = 3;
        sub_1E5A065C8();
        v41 = v84;
        sub_1E5A2BF44();
        v42 = v86;
        (*(v78 + 8))(v41, v79);
      }

      else
      {
        v98 = 4;
        sub_1E5A06574();
        v54 = v85;
        sub_1E5A2BF44();
        v42 = v86;
        (*(v80 + 8))(v54, v82);
      }

      (*(v42 + 8))(v19, v16);
      swift_unknownObjectRelease();
      v58 = v73;
      swift_storeEnumTagMultiPayload();
    }

    v57 = v91;
  }

  sub_1E5A07250(v58, v40);
  v48 = v57;
  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_1E5A07250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviousPlanLockupAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5A072B4()
{
  result = qword_1ED000A60;
  if (!qword_1ED000A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A60);
  }

  return result;
}

uint64_t sub_1E5A07308(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreviousPlanDetail();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E5A0737C()
{
  sub_1E5898FBC();
  if (v0 <= 0x3F)
  {
    sub_1E5A073F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5A073F0()
{
  if (!qword_1ED000A78)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED000A78);
    }
  }
}

unint64_t sub_1E5A074B8()
{
  result = qword_1ED000A80;
  if (!qword_1ED000A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A80);
  }

  return result;
}

unint64_t sub_1E5A07510()
{
  result = qword_1ED000A88;
  if (!qword_1ED000A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A88);
  }

  return result;
}

unint64_t sub_1E5A07568()
{
  result = qword_1ED000A90;
  if (!qword_1ED000A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A90);
  }

  return result;
}

unint64_t sub_1E5A075C0()
{
  result = qword_1ED000A98;
  if (!qword_1ED000A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000A98);
  }

  return result;
}

unint64_t sub_1E5A07618()
{
  result = qword_1ED000AA0;
  if (!qword_1ED000AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AA0);
  }

  return result;
}

unint64_t sub_1E5A07670()
{
  result = qword_1ED000AA8;
  if (!qword_1ED000AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AA8);
  }

  return result;
}

unint64_t sub_1E5A076C8()
{
  result = qword_1ED000AB0;
  if (!qword_1ED000AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AB0);
  }

  return result;
}

unint64_t sub_1E5A07720()
{
  result = qword_1ED000AB8;
  if (!qword_1ED000AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AB8);
  }

  return result;
}

unint64_t sub_1E5A07778()
{
  result = qword_1ED000AC0;
  if (!qword_1ED000AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AC0);
  }

  return result;
}

unint64_t sub_1E5A077D0()
{
  result = qword_1ED000AC8;
  if (!qword_1ED000AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AC8);
  }

  return result;
}

unint64_t sub_1E5A07828()
{
  result = qword_1ED000AD0;
  if (!qword_1ED000AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AD0);
  }

  return result;
}

unint64_t sub_1E5A07880()
{
  result = qword_1ED000AD8;
  if (!qword_1ED000AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AD8);
  }

  return result;
}

unint64_t sub_1E5A078D8()
{
  result = qword_1ED000AE0;
  if (!qword_1ED000AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AE0);
  }

  return result;
}

unint64_t sub_1E5A07930()
{
  result = qword_1ED000AE8;
  if (!qword_1ED000AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AE8);
  }

  return result;
}

unint64_t sub_1E5A07988()
{
  result = qword_1ED000AF0;
  if (!qword_1ED000AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000AF0);
  }

  return result;
}

uint64_t sub_1E5A079DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A47390 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A473B0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5A473D0 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72656C4165646968 && a2 == 0xE900000000000074)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

FitnessWorkoutPlan::WorkoutPlanMusicGenre __swiftcall WorkoutPlanMusicGenre.init(identifier:name:)(Swift::String identifier, Swift::String name)
{
  *v2 = identifier;
  v2[1] = name;
  result.name = name;
  result.identifier = identifier;
  return result;
}

uint64_t static WorkoutPlanMusicGenre.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanMusicGenre.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkoutPlanMusicGenre.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E5A07C44(uint64_t a1)
{
  v2 = sub_1E5A07EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A07C80(uint64_t a1)
{
  v2 = sub_1E5A07EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static WorkoutPlanMusicGenre.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E5A2C114(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E5A2C114();
    }
  }

  return result;
}

uint64_t WorkoutPlanMusicGenre.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000AF8, &qword_1E5A43060);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A07EF4();
  sub_1E5A2C224();
  v16 = 0;
  v12 = v14[3];
  sub_1E5A2C064();
  if (!v12)
  {
    v15 = 1;
    sub_1E5A2C064();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5A07EF4()
{
  result = qword_1ED000B00;
  if (!qword_1ED000B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B00);
  }

  return result;
}

uint64_t WorkoutPlanMusicGenre.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B08, &qword_1E5A43068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A07EF4();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1E5A2BF94();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1E5A2BF94();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WorkoutPlanMusicGenre.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2BB74();

  return sub_1E5A2BB74();
}

uint64_t WorkoutPlanMusicGenre.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

unint64_t sub_1E5A08230()
{
  result = qword_1ED000B10;
  if (!qword_1ED000B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B10);
  }

  return result;
}

unint64_t sub_1E5A082A8()
{
  result = qword_1ED000B18;
  if (!qword_1ED000B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B18);
  }

  return result;
}

unint64_t sub_1E5A08300()
{
  result = qword_1ED000B20;
  if (!qword_1ED000B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B20);
  }

  return result;
}

unint64_t sub_1E5A08358()
{
  result = qword_1ED000B28;
  if (!qword_1ED000B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B28);
  }

  return result;
}

uint64_t sub_1E5A083E0@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = sub_1E5A2ABC4();
  v2 = *(v1 - 8);
  v3 = v2;
  v28 = v1;
  v29 = v2;
  v4 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = sub_1E5A2ABE4();
  v30 = *(v10 - 8);
  v11 = v30;
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  sub_1E5A2ABF4();
  sub_1E5A2ABD4();
  v18 = *(v11 + 16);
  v18(v14, v17, v10);
  v19 = *(v3 + 16);
  v19(v6, v9, v1);
  v20 = v31;
  v18(v31, v14, v10);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B38, &qword_1E5A43390) + 48)];
  v22 = v28;
  v19(v21, v6, v28);
  v23 = *(v29 + 8);
  v24 = v9;
  v25 = v22;
  v23(v24, v22);
  v26 = *(v30 + 8);
  v26(v17, v10);
  v23(v6, v25);
  return (v26)(v14, v10);
}

uint64_t sub_1E5A08670@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1E5A2A914();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B30, &qword_1E5A43388);
  return sub_1E5A083E0((a1 + *(v4 + 44)));
}

unint64_t sub_1E5A086D0()
{
  result = qword_1ED000B40;
  if (!qword_1ED000B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000B48, &qword_1E5A43398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B40);
  }

  return result;
}

__n128 PlanCompletionFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

void PlanCompletionFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, _BYTE *a2, char **a3, unsigned __int8 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC308, &unk_1E5A433A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v72 - v20;
  v22 = *a4;
  v23 = v4[1];
  v89 = *v4;
  v90 = v23;
  v91 = v4[2];
  if (v22 == 1)
  {
    if (*a2)
    {
      return;
    }

    *a2 = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v25 = v24[12];
    v26 = v24[16];
    v87 = a3;
    v27 = v24[20];
    v28 = &v21[v24[24]];
    v88[0] = 3;
    v86 = sub_1E5A08F50();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v29 = *MEMORY[0x1E6999B60];
    v30 = sub_1E5A2B924();
    v31 = *(v30 - 8);
    v32 = *(v31 + 104);
    v85 = v29;
    v84 = v30;
    v80 = v31 + 104;
    v81 = v32;
    (v32)(&v21[v26], v29);
    v33 = *MEMORY[0x1E6999B40];
    v34 = sub_1E5A2B914();
    v35 = *(v34 - 8);
    v36 = *(v35 + 104);
    v79 = v33;
    v78 = v34;
    v77 = v36;
    v76 = v35 + 104;
    (v36)(&v21[v27], v33);
    *v28 = &unk_1E5A433C0;
    *(v28 + 1) = 0;
    v37 = *(v9 + 104);
    v83 = *MEMORY[0x1E6999AD8];
    v72 = v9 + 104;
    v82 = v37;
    v37(v21);
    v38 = *v87;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1E58E7534(0, *(v38 + 2) + 1, 1, v38);
    }

    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_1E58E7534(v39 > 1, v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    v42 = *(v9 + 32);
    v41 = v9 + 32;
    v74 = (*(v41 + 48) + 32) & ~*(v41 + 48);
    v73 = *(v41 + 40);
    v75 = v42;
    v42(&v38[v74 + v73 * v40], v21, v8);
    v43 = v24[12];
    v44 = v24[16];
    v45 = v24[20];
    v46 = &v18[v24[24]];
    v88[0] = 0;
    sub_1E5A2BE14();
    sub_1E5A2BCB4();
    v81(&v18[v44], v85, v84);
    v77(&v18[v45], v79, v78);
    v47 = swift_allocObject();
    v48 = v90;
    v47[1] = v89;
    v47[2] = v48;
    v47[3] = v91;
    *v46 = &unk_1E5A433D0;
    *(v46 + 1) = v47;
    v82(v18, v83, v8);
    sub_1E5A0A370(&v89, v88);
    v50 = *(v38 + 2);
    v49 = *(v38 + 3);
    if (v50 >= v49 >> 1)
    {
      v38 = sub_1E58E7534(v49 > 1, v50 + 1, 1, v38);
    }

    a3 = v87;
    *(v38 + 2) = v50 + 1;
    v75(&v38[v74 + v50 * v73], v18, v8);
    v51 = v24[12];
    v52 = v24[16];
    v53 = v24[20];
    v54 = &v15[v24[24]];
    v88[0] = 1;
    sub_1E5A2BE14();
    sub_1E5A2BCB4();
    v81(&v15[v52], v85, v84);
    v77(&v15[v53], v79, v78);
    v55 = swift_allocObject();
    v56 = v90;
    v55[1] = v89;
    v55[2] = v56;
    v55[3] = v91;
    *v54 = &unk_1E5A433E0;
    *(v54 + 1) = v55;
    v82(v15, v83, v8);
    sub_1E5A0A370(&v89, v88);
    v58 = *(v38 + 2);
    v57 = *(v38 + 3);
    if (v58 >= v57 >> 1)
    {
      v38 = sub_1E58E7534(v57 > 1, v58 + 1, 1, v38);
    }

    *(v38 + 2) = v58 + 1;
    v75(&v38[v74 + v58 * v73], v15, v8);
  }

  else
  {
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v60 = v59[12];
    v61 = v59[16];
    v62 = v59[20];
    v63 = &v12[v59[24]];
    v88[0] = 2;
    sub_1E5A08F50();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v64 = *MEMORY[0x1E6999B50];
    v65 = sub_1E5A2B924();
    (*(*(v65 - 8) + 104))(&v12[v61], v64, v65);
    v66 = *MEMORY[0x1E6999B40];
    v67 = sub_1E5A2B914();
    (*(*(v67 - 8) + 104))(&v12[v62], v66, v67);
    v68 = swift_allocObject();
    v69 = v90;
    v68[1] = v89;
    v68[2] = v69;
    v68[3] = v91;
    *v63 = &unk_1E5A433B8;
    *(v63 + 1) = v68;
    (*(v9 + 104))(v12, *MEMORY[0x1E6999AD8], v8);
    v38 = *a3;
    sub_1E5A0A370(&v89, v88);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1E58E7534(0, *(v38 + 2) + 1, 1, v38);
    }

    v71 = *(v38 + 2);
    v70 = *(v38 + 3);
    if (v71 >= v70 >> 1)
    {
      v38 = sub_1E58E7534(v70 > 1, v71 + 1, 1, v38);
    }

    *(v38 + 2) = v71 + 1;
    (*(v9 + 32))(&v38[((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v71], v12, v8);
  }

  *a3 = v38;
}

unint64_t sub_1E5A08F50()
{
  result = qword_1EE2CFCF8;
  if (!qword_1EE2CFCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFCF8);
  }

  return result;
}

uint64_t sub_1E5A08FA4()
{
  *(v0 + 16) = sub_1E5A2BC84();
  *(v0 + 24) = sub_1E5A2BC74();
  *(v0 + 40) = 0;
  v1 = *(MEMORY[0x1E6999AF0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B50, &unk_1E5A43510);
  *v2 = v0;
  v2[1] = sub_1E594D5A4;

  return MEMORY[0x1EEE01A40](v0 + 40, v3);
}

uint64_t sub_1E5A09084(uint64_t a1, int **a2)
{
  v2[12] = a1;
  v2[13] = sub_1E5A2BC84();
  v2[14] = sub_1E5A2BC74();
  v4 = a2[1];
  v8 = (*a2 + **a2);
  v5 = (*a2)[1];
  v6 = swift_task_alloc();
  v2[15] = v6;
  *v6 = v2;
  v6[1] = sub_1E5A09198;

  return v8(v2 + 7);
}

uint64_t sub_1E5A09198()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[16] = v2;

  v8 = sub_1E5A2BC54();
  v3[17] = v8;
  v3[18] = v7;
  if (v2)
  {
    v9 = sub_1E5A098F8;
  }

  else
  {
    v9 = sub_1E5A092F8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5A092F8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_1E5A2BC74();
  v0[19] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1E5A094D0;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 22, v7, v11);
}

uint64_t sub_1E5A094D0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[19];

    v6 = v2[17];
    v7 = v2[18];

    return MEMORY[0x1EEE6DFA0](sub_1E5A095E4, v6, v7);
  }

  return result;
}

uint64_t sub_1E5A095E4()
{
  if (*(v0 + 176) == 1)
  {
    v1 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 177) = 0;
    v4 = *(MEMORY[0x1E6999AF0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B50, &unk_1E5A43510);
    *v5 = v0;
    v5[1] = sub_1E5A096FC;
    v7 = *(v0 + 96);

    return MEMORY[0x1EEE01A40](v0 + 177, v6);
  }
}

uint64_t sub_1E5A096FC()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1E5A0981C, v4, v3);
}

uint64_t sub_1E5A0981C()
{
  v1 = v0[13];
  v2 = sub_1E5A2BC74();
  v0[19] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1E5A094D0;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 22, v2, v6);
}

uint64_t sub_1E5A098F8()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_1E5A0995C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = sub_1E5A2BC84();
  v2[14] = sub_1E5A2BC74();
  v4 = *(a2 + 24);
  v8 = (*(a2 + 16) + **(a2 + 16));
  v5 = *(*(a2 + 16) + 4);
  v6 = swift_task_alloc();
  v2[15] = v6;
  *v6 = v2;
  v6[1] = sub_1E5A09A70;

  return v8(v2 + 7);
}

uint64_t sub_1E5A09A70()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[16] = v2;

  v8 = sub_1E5A2BC54();
  v3[17] = v8;
  v3[18] = v7;
  if (v2)
  {
    v9 = sub_1E5A0A640;
  }

  else
  {
    v9 = sub_1E5A09BD0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5A09BD0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_1E5A2BC74();
  v0[19] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1E5A09DA8;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 22, v7, v11);
}

uint64_t sub_1E5A09DA8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[19];

    v6 = v2[17];
    v7 = v2[18];

    return MEMORY[0x1EEE6DFA0](sub_1E5A09EBC, v6, v7);
  }

  return result;
}

uint64_t sub_1E5A09EBC()
{
  if (*(v0 + 176) == 1)
  {
    v1 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 177) = 0;
    v4 = *(MEMORY[0x1E6999AF0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B50, &unk_1E5A43510);
    *v5 = v0;
    v5[1] = sub_1E5A09FD4;
    v7 = *(v0 + 96);

    return MEMORY[0x1EEE01A40](v0 + 177, v6);
  }
}

uint64_t sub_1E5A09FD4()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1E5A0A0F4, v4, v3);
}

uint64_t sub_1E5A0A0F4()
{
  v1 = v0[13];
  v2 = sub_1E5A2BC74();
  v0[19] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1E5A09DA8;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 22, v2, v6);
}

uint64_t sub_1E5A0A1D0(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5A2BC84();
  v2[3] = sub_1E5A2BC74();
  v4 = *(a2 + 40);
  v8 = (*(a2 + 32) + **(a2 + 32));
  v5 = *(*(a2 + 32) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1E58E4890;

  return v8();
}

uint64_t sub_1E5A0A2D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E5A0A1D0(a1, v1 + 16);
}

uint64_t sub_1E5A0A3B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CD5C8;

  return sub_1E5A09084(a1, (v1 + 16));
}

uint64_t objectdestroyTm_9()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1E5A0A490(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E5A0995C(a1, v1 + 16);
}

unint64_t sub_1E5A0A52C()
{
  result = qword_1EE2CFD00;
  if (!qword_1EE2CFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD00);
  }

  return result;
}

unint64_t sub_1E5A0A584()
{
  result = qword_1EE2CFD08;
  if (!qword_1EE2CFD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFD08);
  }

  return result;
}

unint64_t sub_1E5A0A5EC()
{
  result = qword_1EE2CFCF0;
  if (!qword_1EE2CFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFCF0);
  }

  return result;
}

__n128 ViewPlansBannerFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t ViewPlansBannerFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2F8, &unk_1E5A43520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v11 = *v3;
  v10 = v3[1];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v13 = v12[12];
  v14 = v12[16];
  v15 = v12[20];
  v16 = &v9[v12[24]];
  sub_1E5A0A8E4();
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v17 = *MEMORY[0x1E6999B50];
  v18 = sub_1E5A2B924();
  (*(*(v18 - 8) + 104))(&v9[v14], v17, v18);
  v19 = *MEMORY[0x1E6999B48];
  v20 = sub_1E5A2B914();
  (*(*(v20 - 8) + 104))(&v9[v15], v19, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  *(v21 + 24) = v10;
  *v16 = &unk_1E5A43538;
  *(v16 + 1) = v21;
  (*(v6 + 104))(v9, *MEMORY[0x1E6999AD8], v5);
  v22 = *a3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_1E58E7558(0, v22[2] + 1, 1, v22);
  }

  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1E58E7558(v23 > 1, v24 + 1, 1, v22);
  }

  v22[2] = v24 + 1;
  result = (*(v6 + 32))(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v9, v5);
  *a3 = v22;
  return result;
}

unint64_t sub_1E5A0A8E4()
{
  result = qword_1ED000B58;
  if (!qword_1ED000B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B58);
  }

  return result;
}

uint64_t sub_1E5A0A938(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CD5C8;

  return sub_1E597D7AC(a1, v5);
}

unint64_t sub_1E5A0A9EC()
{
  result = qword_1ED000B60;
  if (!qword_1ED000B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B60);
  }

  return result;
}

unint64_t sub_1E5A0AA44()
{
  result = qword_1ED000B68;
  if (!qword_1ED000B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B68);
  }

  return result;
}

unint64_t sub_1E5A0AA9C()
{
  result = qword_1ED000B70;
  if (!qword_1ED000B70)
  {
    type metadata accessor for ViewPlansBannerState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B70);
  }

  return result;
}

unint64_t sub_1E5A0AB18()
{
  result = qword_1ED000B78;
  if (!qword_1ED000B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B78);
  }

  return result;
}

uint64_t sub_1E5A0AB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5A473F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5A2C114();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E5A0AC24(uint64_t a1)
{
  v2 = sub_1E5A0AEEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A0AC60(uint64_t a1)
{
  v2 = sub_1E5A0AEEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5A0AC9C(uint64_t a1)
{
  v2 = sub_1E5A0AF40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A0ACD8(uint64_t a1)
{
  v2 = sub_1E5A0AF40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewPlansBannerAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B80, &qword_1E5A43660);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B88, &qword_1E5A43668);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0AEEC();
  sub_1E5A2C224();
  sub_1E5A0AF40();
  sub_1E5A2C024();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1E5A0AEEC()
{
  result = qword_1ED000B90;
  if (!qword_1ED000B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B90);
  }

  return result;
}

unint64_t sub_1E5A0AF40()
{
  result = qword_1ED000B98;
  if (!qword_1ED000B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000B98);
  }

  return result;
}

uint64_t ViewPlansBannerAction.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000BA0, &qword_1E5A43670);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000BA8, &unk_1E5A43678);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0AEEC();
  sub_1E5A2C214();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1E5A2C004();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_1E58BC5B0() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1E5A2BE84();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
    *v19 = &type metadata for ViewPlansBannerAction;
    sub_1E5A2BF54();
    sub_1E5A2BE74();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1E5A0AF40();
  sub_1E5A2BF44();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1E5A0B2F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B80, &qword_1E5A43660);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000B88, &qword_1E5A43668);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0AEEC();
  sub_1E5A2C224();
  sub_1E5A0AF40();
  sub_1E5A2C024();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t ViewPlansBannerAction.hashValue.getter()
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](0);
  return sub_1E5A2C204();
}

unint64_t sub_1E5A0B540()
{
  result = qword_1ED000BB0;
  if (!qword_1ED000BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BB0);
  }

  return result;
}

unint64_t sub_1E5A0B5C8()
{
  result = qword_1ED000BB8;
  if (!qword_1ED000BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BB8);
  }

  return result;
}

unint64_t sub_1E5A0B620()
{
  result = qword_1ED000BC0;
  if (!qword_1ED000BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BC0);
  }

  return result;
}

unint64_t sub_1E5A0B678()
{
  result = qword_1ED000BC8;
  if (!qword_1ED000BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BC8);
  }

  return result;
}

unint64_t sub_1E5A0B6D0()
{
  result = qword_1ED000BD0;
  if (!qword_1ED000BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BD0);
  }

  return result;
}

unint64_t sub_1E5A0B728()
{
  result = qword_1ED000BD8;
  if (!qword_1ED000BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BD8);
  }

  return result;
}

uint64_t ViewPlansBannerState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A29EB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ViewPlansBannerState.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for ViewPlansBannerState() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ViewPlansBannerState()
{
  result = qword_1ED000C00;
  if (!qword_1ED000C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ViewPlansBannerState.title.getter()
{
  v1 = (v0 + *(type metadata accessor for ViewPlansBannerState() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ViewPlansBannerState.init(activeStorefrontLocale:subtitle:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5A29EB4();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for ViewPlansBannerState();
  v14 = (a6 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

unint64_t sub_1E5A0B950()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1E5A0B9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A0C884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A0B9D4(uint64_t a1)
{
  v2 = sub_1E5A0BC3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A0BA10(uint64_t a1)
{
  v2 = sub_1E5A0BC3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewPlansBannerState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000BE0, &qword_1E5A43950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0BC3C();
  sub_1E5A2C224();
  v19[15] = 0;
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ECFFCDF0, MEMORY[0x1E6969770]);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v11 = type metadata accessor for ViewPlansBannerState();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v19[14] = 1;
    sub_1E5A2C064();
    v15 = (v3 + *(v11 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    sub_1E5A2C064();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5A0BC3C()
{
  result = qword_1ED000BE8;
  if (!qword_1ED000BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000BE8);
  }

  return result;
}

uint64_t ViewPlansBannerState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1E5A29EB4();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000BF0, &qword_1E5A43958);
  v32 = *(v35 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ViewPlansBannerState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0BC3C();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v32;
  v15 = v33;
  v29 = v10;
  v30 = v13;
  v38 = 0;
  sub_1E5A0C5CC(&qword_1ECFFCE18, MEMORY[0x1E6969770]);
  v18 = v34;
  v17 = v35;
  sub_1E5A2BFE4();
  (*(v15 + 32))(v30, v18, v4);
  v37 = 1;
  v19 = sub_1E5A2BF94();
  v20 = &v30[*(v29 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v36 = 2;
  v22 = sub_1E5A2BF94();
  v24 = v23;
  (*(v16 + 8))(v9, v17);
  v25 = v30;
  v26 = &v30[*(v29 + 24)];
  *v26 = v22;
  v26[1] = v24;
  sub_1E5A0C040(v25, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5A0C0A4(v25);
}

uint64_t sub_1E5A0C040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewPlansBannerState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5A0C0A4(uint64_t a1)
{
  v2 = type metadata accessor for ViewPlansBannerState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ViewPlansBannerState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1E6930AC0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ViewPlansBannerState();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  if (v11 == *v13 && v12 == v13[1])
  {
    return 1;
  }

  return sub_1E5A2C114();
}

uint64_t ViewPlansBannerState.hash(into:)()
{
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ED000BF8, MEMORY[0x1E6969770]);
  sub_1E5A2BA44();
  v1 = type metadata accessor for ViewPlansBannerState();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_1E5A2BB74();
  v5 = (v0 + *(v1 + 24));
  v6 = *v5;
  v7 = v5[1];

  return sub_1E5A2BB74();
}

uint64_t ViewPlansBannerState.hashValue.getter()
{
  sub_1E5A2C1B4();
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ED000BF8, MEMORY[0x1E6969770]);
  sub_1E5A2BA44();
  v1 = type metadata accessor for ViewPlansBannerState();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_1E5A2BB74();
  v5 = (v0 + *(v1 + 24));
  v6 = *v5;
  v7 = v5[1];
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A0C360(uint64_t a1)
{
  sub_1E5A2C1B4();
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ED000BF8, MEMORY[0x1E6969770]);
  sub_1E5A2BA44();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_1E5A2BB74();
  v6 = (v1 + *(a1 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A0C41C(uint64_t a1, uint64_t a2)
{
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ED000BF8, MEMORY[0x1E6969770]);
  sub_1E5A2BA44();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1E5A2BB74();
  v7 = (v2 + *(a2 + 24));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E5A2BB74();
}

uint64_t sub_1E5A0C4CC(uint64_t a1, uint64_t a2)
{
  sub_1E5A2C1B4();
  sub_1E5A29EB4();
  sub_1E5A0C5CC(&qword_1ED000BF8, MEMORY[0x1E6969770]);
  sub_1E5A2BA44();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1E5A2BB74();
  v7 = (v2 + *(a2 + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E5A0C5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5A0C614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x1E6930AC0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_1E5A2C114();
}

uint64_t sub_1E5A0C6F0()
{
  result = sub_1E5A29EB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E5A0C780()
{
  result = qword_1ED000C10;
  if (!qword_1ED000C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C10);
  }

  return result;
}

unint64_t sub_1E5A0C7D8()
{
  result = qword_1ED000C18;
  if (!qword_1ED000C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C18);
  }

  return result;
}

unint64_t sub_1E5A0C830()
{
  result = qword_1ED000C20;
  if (!qword_1ED000C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C20);
  }

  return result;
}

uint64_t sub_1E5A0C884(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001E5A47410 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t CompactViewPlansBannerView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E58D2CB8;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t CompactViewPlansBannerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = sub_1E5A2AA34();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C28, &qword_1E5A43B70);
  sub_1E5A0CCA8(v3, v4, v5, a1 + *(v6 + 44));
  LOBYTE(v5) = sub_1E5A2ADF4();
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C30, &unk_1E5A43B78) + 36);
  *v7 = v5;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1;
  v8 = sub_1E5A2B7E4();
  v10 = v9;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4D8 != -1)
  {
    swift_once();
  }

  *(v11 + 32) = sub_1E5A2B744();
  *(v11 + 40) = v12;
  if (qword_1ECFFB4E0 != -1)
  {
    swift_once();
  }

  *(v11 + 48) = sub_1E5A2B744();
  *(v11 + 56) = v13;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C38, &qword_1E5A43B88) + 36);
  *v14 = v22;
  *(v14 + 24) = v24;
  *(v14 + 8) = v23;
  *(v14 + 40) = v8;
  *(v14 + 48) = v10;
  sub_1E5A2A094();
  v16 = v15;
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C40, &unk_1E5A43B90) + 36));
  v18 = *(sub_1E5A2A754() + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1E5A2A9B4();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  *v17 = v16;
  *(v17 + 1) = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170);
  *&v17[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1E5A0CCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v41 = a1;
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C70, &qword_1E5A43CA0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_1E5A2B4B4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAD0, &qword_1E5A3F4A8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  type metadata accessor for WorkoutPlansBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  sub_1E5A2B4F4();
  (*(v13 + 104))(v16, *MEMORY[0x1E6981630], v12);
  v26 = sub_1E5A2B4E4();

  (*(v13 + 8))(v16, v12);
  v44 = v26;
  v45 = 0x3FFC71C71C71C71CLL;
  LOWORD(v46) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAD8, &qword_1E5A3F4B0);
  sub_1E59D2DF8();
  v35 = v23;
  sub_1E5A2B214();

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v38 = v46;
  v39 = v44;
  v36 = v49;
  v37 = v48;
  v52 = 1;
  v51 = v45;
  v50 = v47;
  sub_1E5A0D31C(v41, v42, v40 & 1, v11);
  v27 = sub_1E5A2AD94();
  v28 = &v11[*(v6 + 44)];
  *v28 = v27;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  sub_1E58BABA0(v23, v20, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
  LOBYTE(v6) = v52;
  LOBYTE(v16) = v51;
  LOBYTE(v12) = v50;
  v29 = v43;
  sub_1E58A7CFC(v11, v43);
  sub_1E58BABA0(v20, a4, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C78, &qword_1E5A43CA8);
  v31 = a4 + *(v30 + 48);
  *v31 = 0;
  *(v31 + 8) = v6;
  v32 = v38;
  *(v31 + 16) = v39;
  *(v31 + 24) = v16;
  *(v31 + 32) = v32;
  *(v31 + 40) = v12;
  v33 = v36;
  *(v31 + 48) = v37;
  *(v31 + 56) = v33;
  sub_1E58A7CFC(v29, a4 + *(v30 + 64));
  sub_1E58A7D6C(v11);
  sub_1E58BAD14(v35, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
  sub_1E58A7D6C(v29);
  return sub_1E58BAD14(v20, &qword_1ECFFFAD0, &qword_1E5A3F4A8);
}

unint64_t sub_1E5A0D0F4()
{
  result = qword_1ED000C48;
  if (!qword_1ED000C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000C40, &unk_1E5A43B90);
    sub_1E5A0D1AC();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C48);
  }

  return result;
}

unint64_t sub_1E5A0D1AC()
{
  result = qword_1ED000C50;
  if (!qword_1ED000C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000C38, &qword_1E5A43B88);
    sub_1E5A0D264();
    sub_1E58CD164(&qword_1ECFFFAB8, &qword_1ECFFFAC0, &qword_1E5A3F498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C50);
  }

  return result;
}

unint64_t sub_1E5A0D264()
{
  result = qword_1ED000C58;
  if (!qword_1ED000C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000C30, &unk_1E5A43B78);
    sub_1E58CD164(&qword_1ED000C60, &qword_1ED000C68, &unk_1E5A43C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C58);
  }

  return result;
}

uint64_t sub_1E5A0D31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v106 = a1;
  v107 = a2;
  v134 = a4;
  v5 = sub_1E5A2BA14();
  v132 = *(v5 - 8);
  v133 = v5;
  v6 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v131 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5A2B994();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v128 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5A29EB4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v124 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5A2BB14();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5A2B9C4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v127 = &v105 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF68, &unk_1E5A3C4E0);
  v118 = *(v139 - 8);
  v23 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v115 = &v105 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAF8, &unk_1E5A43CB0);
  v125 = *(v25 - 8);
  v126 = v25;
  v26 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v140 = &v105 - v27;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB00, &unk_1E5A3F4D0);
  v130 = *(v144 - 8);
  v28 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v129 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v143 = &v105 - v31;
  v137 = sub_1E5A2AEB4();
  v117 = *(v137 - 8);
  v32 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v116 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E5A2A9E4();
  v121 = *(v34 - 8);
  v122 = v34;
  v35 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB08, &unk_1E5A43CC0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v142 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v105 - v42;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB10, &qword_1E5A3F4E0);
  v44 = sub_1E58CD164(&qword_1ECFFFB18, &qword_1ECFFFB10, &qword_1E5A3F4E0);
  v135 = a3 & 1;
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2AE84();
  sub_1E5A2AE24();

  v45 = sub_1E5A2AFA4();
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v158 = v45;
  v159 = v47;
  LOBYTE(v160) = v49 & 1;
  v161 = v51;
  sub_1E5A2A9D4();
  v138 = v43;
  sub_1E5A2B264();
  (*(v121 + 8))(v37, v122);
  sub_1E58B3C9C(v45, v47, v49 & 1);

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v121 = v154;
  v122 = v152;
  v119 = v157;
  v120 = v156;
  v166 = 1;
  v165 = v153;
  v164 = v155;
  v53 = v106;
  v52 = v107;
  v113 = v44;
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E5A2AE04();
  v55 = v116;
  v54 = v117;
  v56 = v137;
  (*(v117 + 104))(v116, *MEMORY[0x1E6980EA8], v137);
  sub_1E5A2AEE4();

  (*(v54 + 8))(v55, v56);
  v57 = sub_1E5A2AFA4();
  v59 = v58;
  LOBYTE(v56) = v60;

  LODWORD(v158) = sub_1E5A2ABA4();
  v61 = sub_1E5A2AF84();
  v116 = v62;
  v117 = v61;
  v114 = v63;
  v137 = v64;
  sub_1E58B3C9C(v57, v59, v56 & 1);

  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v111 = v160;
  v112 = v158;
  v109 = v163;
  v110 = v162;
  v169 = 1;
  v168 = v159;
  v167 = v161;
  v65 = swift_allocObject();
  *(v65 + 16) = v53;
  *(v65 + 24) = v52;
  v66 = v135;
  *(v65 + 32) = v135;
  v145 = v53;
  v146 = v52;
  v147 = v66;
  sub_1E596AC08();
  v67 = v115;
  sub_1E5A2B574();
  v68 = sub_1E58CD164(&qword_1ECFFFB20, &qword_1ECFFEF68, &unk_1E5A3C4E0);
  v69 = sub_1E59D4040();
  v70 = v139;
  v108 = v68;
  sub_1E5A2B0B4();
  (*(v118 + 8))(v67, v70);
  sub_1E5A2B9A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A3C8E0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v72 = qword_1EE2D33E0;
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  v73 = sub_1E5A2BB64();
  v74 = MEMORY[0x1E69E6158];
  *(inited + 48) = v73;
  *(inited + 56) = v75;
  *(inited + 72) = v74;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x6E6F74747562;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v74;
  *(inited + 128) = 0x6973736572706D69;
  v76 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = 0;
  *(inited + 168) = v76;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v74;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v77 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v77);
  v78 = v127;
  sub_1E5A2B9D4();
  v79 = sub_1E5A2B9E4();
  (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
  v80 = v131;
  sub_1E5A2B9F4();
  v148 = v139;
  v149 = &type metadata for CustomPlanBannerButtonStyle;
  v150 = v108;
  v151 = v69;
  swift_getOpaqueTypeConformance2();
  v81 = v143;
  v82 = v126;
  v83 = v140;
  sub_1E5A2B014();
  (*(v132 + 8))(v80, v133);
  sub_1E58BAD14(v78, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v125 + 8))(v83, v82);
  v84 = v142;
  sub_1E58BABA0(v138, v142, &qword_1ECFFFB08, &unk_1E5A43CC0);
  LOBYTE(v82) = v166;
  v85 = v165;
  v86 = v164;
  LODWORD(v139) = v169;
  LODWORD(v140) = v168;
  LODWORD(v141) = v167;
  v88 = v129;
  v87 = v130;
  v89 = *(v130 + 16);
  v89(v129, v81, v144);
  v90 = v84;
  v91 = v134;
  sub_1E58BABA0(v90, v134, &qword_1ECFFFB08, &unk_1E5A43CC0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB30, &unk_1E5A43D40);
  v93 = v91 + v92[12];
  *v93 = 0;
  *(v93 + 8) = v82;
  v94 = v121;
  *(v93 + 16) = v122;
  *(v93 + 24) = v85;
  *(v93 + 32) = v94;
  *(v93 + 40) = v86;
  v95 = v119;
  *(v93 + 48) = v120;
  *(v93 + 56) = v95;
  v96 = v91 + v92[16];
  v98 = v116;
  v97 = v117;
  *v96 = v117;
  *(v96 + 8) = v98;
  LOBYTE(v82) = v114 & 1;
  *(v96 + 16) = v114 & 1;
  *(v96 + 24) = v137;
  v99 = v91 + v92[20];
  *v99 = 0;
  *(v99 + 8) = v139;
  *(v99 + 16) = v112;
  *(v99 + 24) = v140;
  *(v99 + 32) = v111;
  *(v99 + 40) = v141;
  v100 = v109;
  *(v99 + 48) = v110;
  *(v99 + 56) = v100;
  v101 = v91 + v92[24];
  v102 = v144;
  v89(v101, v88, v144);
  sub_1E594C9E8(v97, v98, v82);
  v103 = *(v87 + 8);

  v103(v143, v102);
  sub_1E58BAD14(v138, &qword_1ECFFFB08, &unk_1E5A43CC0);
  v103(v88, v102);
  sub_1E58B3C9C(v97, v98, v82);

  return sub_1E58BAD14(v142, &qword_1ECFFFB08, &unk_1E5A43CC0);
}

uint64_t sub_1E5A0E218@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5A2BB14();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2D33E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFB10, &qword_1E5A3F4E0);
  sub_1E58CD164(&qword_1ECFFFB18, &qword_1ECFFFB10, &qword_1E5A3F4E0);
  sub_1E5A2A4F4();
  swift_getKeyPath();
  sub_1E5A2B944();

  result = sub_1E5A2AF64();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5A0E414@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5A0E218(a1);
}

uint64_t ViewPlansBannerEnvironment.init(navigateToPlansTab:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ArchivedWorkoutPlansLayout.init(contentMargins:dynamicTypeSize:sizeClass:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1E5A2A2F4();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for ArchivedWorkoutPlansLayout();
  *(a5 + *(v11 + 36)) = a2;
  v12 = *(*(a4 - 8) + 32);
  v13 = a5 + *(v11 + 40);

  return v12(v13, a3, a4);
}

uint64_t static ArchivedWorkoutPlansLayout.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((MEMORY[0x1E6930EA0]() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for ArchivedWorkoutPlansLayout();
  v8 = *(v7 + 36);
  v9 = *(a2 + v8);
  v10 = *(a1 + v8);
  if ((sub_1E5A2A304() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v7 + 40);
  v12 = *(*(a4 + 24) + 8);
  return sub_1E5A2BA74() & 1;
}

uint64_t ArchivedWorkoutPlansLayout.contentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A2A2F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E5A0E66C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E5A0E79C(char a1)
{
  if (!a1)
  {
    return 0x4D746E65746E6F63;
  }

  if (a1 == 1)
  {
    return 0x5463696D616E7964;
  }

  return 0x73616C43657A6973;
}

BOOL sub_1E5A0E810(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1E5905A80(*a1, *a2);
}

uint64_t sub_1E5A0E824(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5905AB8(*v1);
}

uint64_t sub_1E5A0E830(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1E5905A90(a1, *v2);
}

uint64_t sub_1E5A0E83C(uint64_t a1, uint64_t a2)
{
  sub_1E5A2C1B4();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1E5905A90(v7, *v2);
  return sub_1E5A2C204();
}

uint64_t sub_1E5A0E884(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5A0E79C(*v1);
}

uint64_t sub_1E5A0E890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5A0E66C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5A0E8C0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5A0F7C0();
  *a2 = result;
  return result;
}

uint64_t sub_1E5A0E8EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5A0E940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ArchivedWorkoutPlansLayout.encode(to:)(void *a1, uint64_t a2)
{
  v19 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v18[0] = *(a2 + 24);
  v18[1] = v5;
  type metadata accessor for ArchivedWorkoutPlansLayout.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1E5A2C0D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A2C224();
  v24 = 0;
  sub_1E5A2A2F4();
  sub_1E590FB1C(&qword_1ECFFD5E0);
  v12 = v20;
  sub_1E5A2C0B4();
  if (!v12)
  {
    v13 = v18[0];
    v14 = v19;
    v23 = *(v3 + *(v19 + 36));
    v22 = 1;
    sub_1E5A0EBD4();
    sub_1E5A2C0B4();
    v15 = *(v14 + 40);
    v21 = 2;
    v16 = *(v13 + 16);
    sub_1E5A2C0B4();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1E5A0EBD4()
{
  result = qword_1ED000C80;
  if (!qword_1ED000C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000C80);
  }

  return result;
}

uint64_t ArchivedWorkoutPlansLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v35 = *(a2 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1E5A2A2F4();
  v39 = *(v42 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArchivedWorkoutPlansLayout.CodingKeys();
  swift_getWitnessTable();
  v43 = sub_1E5A2C014();
  v38 = *(v43 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v32 - v12;
  v41 = a3;
  v14 = type metadata accessor for ArchivedWorkoutPlansLayout();
  v34 = *(v14 - 8);
  v15 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v44 = v13;
  v19 = v45;
  sub_1E5A2C214();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v38;
  v20 = v39;
  v45 = v17;
  v33 = a2;
  v22 = v41;
  v49 = 0;
  sub_1E590FB1C(&qword_1ECFFD5F0);
  v23 = v40;
  sub_1E5A2BFE4();
  (*(v20 + 32))(v45, v23, v42);
  v47 = 1;
  sub_1E5A0F0DC();
  sub_1E5A2BFE4();
  v40 = v14;
  v24 = *(v14 + 36);
  v25 = v45;
  v45[v24] = v48;
  v46 = 2;
  v26 = *(v22 + 8);
  v27 = v37;
  v28 = v33;
  sub_1E5A2BFE4();
  (*(v21 + 8))(v44, v43);
  v29 = v40;
  (*(v35 + 32))(&v25[*(v40 + 10)], v27, v28);
  v30 = v34;
  (*(v34 + 16))(v36, v25, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v30 + 8))(v25, v29);
}

unint64_t sub_1E5A0F0DC()
{
  result = qword_1ED000C88[0];
  if (!qword_1ED000C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED000C88);
  }

  return result;
}

uint64_t sub_1E5A0F174(uint64_t a1)
{
  result = sub_1E5A2A2F4();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5A0F204(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1E5A2A2F4() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v7 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v6 + 84);
  }

  if (v12 <= 0xF4)
  {
    v13 = 244;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + v10 + 1) & ~v11) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1);
      }

      else
      {
        v23 = a1 + v10;
        if (v12 > 0xF4)
        {
          v25 = *(v8 + 48);

          return v25(&v23[v11 + 1] & ~v11, v9);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xC)
          {
            return v24 - 11;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + v10 + 1) & ~v11) + *(v8 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_1E5A0F474(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1E5A2A2F4() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v9 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0xF4)
  {
    v15 = 244;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + v12 + 1) & ~v13) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_51:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v15)
  {
    v23 = *(v8 + 56);

    v23(a1, a2);
  }

  else
  {
    v24 = &a1[v12];
    if (v14 > 0xF4)
    {
      v25 = *(v10 + 56);

      v25(&v24[v13 + 1] & ~v13, a2, v11);
    }

    else
    {
      *v24 = a2 + 11;
    }
  }
}

uint64_t ActiveWorkoutPlanWorkoutState.init(contentMargins:isCompact:loadState:locale:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1E5A2A2F4();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  active = type metadata accessor for ActiveWorkoutPlanWorkoutState();
  *(a5 + active[5]) = a2;
  *(a5 + active[6]) = a3;
  v12 = active[7];
  v13 = sub_1E5A29EB4();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

uint64_t type metadata accessor for ActiveWorkoutPlanWorkoutState()
{
  result = qword_1ED000DA8;
  if (!qword_1ED000DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActiveWorkoutPlanWorkoutState.contentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A2A2F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActiveWorkoutPlanWorkoutState.loadState.setter(char a1)
{
  result = type metadata accessor for ActiveWorkoutPlanWorkoutState();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ActiveWorkoutPlanWorkoutState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActiveWorkoutPlanWorkoutState() + 28);
  v4 = sub_1E5A29EB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E5A0FA98()
{
  v1 = 0x4D746E65746E6F63;
  v2 = 0x7461745364616F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x6361706D6F437369;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5A0FB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A106FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A0FB48(uint64_t a1)
{
  v2 = sub_1E5A0FE34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A0FB84(uint64_t a1)
{
  v2 = sub_1E5A0FE34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActiveWorkoutPlanWorkoutState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000D90, &qword_1E5A43F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0FE34();
  sub_1E5A2C224();
  v15[15] = 0;
  sub_1E5A2A2F4();
  sub_1E5A10358(&qword_1ECFFD5E0, MEMORY[0x1E699D930]);
  sub_1E5A2C0B4();
  if (!v2)
  {
    active = type metadata accessor for ActiveWorkoutPlanWorkoutState();
    v12 = *(v3 + active[5]);
    v15[14] = 1;
    sub_1E5A2C074();
    v15[13] = *(v3 + active[6]);
    v15[12] = 2;
    sub_1E59D7794();
    sub_1E5A2C0B4();
    v13 = active[7];
    v15[11] = 3;
    sub_1E5A29EB4();
    sub_1E5A10358(&qword_1ECFFCDF0, MEMORY[0x1E6969770]);
    sub_1E5A2C0B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5A0FE34()
{
  result = qword_1ED000D98;
  if (!qword_1ED000D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000D98);
  }

  return result;
}

uint64_t ActiveWorkoutPlanWorkoutState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v33 = sub_1E5A29EB4();
  v30 = *(v33 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5A2A2F4();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000DA0, &qword_1E5A43F88);
  v34 = *(v37 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v29 - v10;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutState();
  v13 = *(*(active - 8) + 64);
  MEMORY[0x1EEE9AC00](active);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A0FE34();
  v36 = v11;
  v17 = v38;
  sub_1E5A2C214();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v15;
  v38 = v5;
  v20 = v32;
  v19 = v33;
  v43 = 0;
  sub_1E5A10358(&qword_1ECFFD5F0, MEMORY[0x1E699D930]);
  sub_1E5A2BFE4();
  v21 = *(v20 + 32);
  v22 = v18;
  v21(v18, v35, v6);
  v42 = 1;
  v23 = sub_1E5A2BFA4();
  v35 = active;
  v18[*(active + 20)] = v23 & 1;
  v40 = 2;
  sub_1E59D7944();
  sub_1E5A2BFE4();
  v24 = a1;
  v25 = v34;
  *(v22 + *(v35 + 6)) = v41;
  v39 = 3;
  sub_1E5A10358(&qword_1ECFFCE18, MEMORY[0x1E6969770]);
  v26 = v22;
  v27 = v38;
  sub_1E5A2BFE4();
  (*(v25 + 8))(v36, v37);
  (*(v30 + 32))(v26 + *(v35 + 7), v27, v19);
  sub_1E5A103A0(v26, v31);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1E5A10404(v26);
}

uint64_t sub_1E5A10358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5A103A0(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutState();
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1E5A10404(uint64_t a1)
{
  active = type metadata accessor for ActiveWorkoutPlanWorkoutState();
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t _s18FitnessWorkoutPlan06ActivebcB5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E6930EA0]())
  {
    active = type metadata accessor for ActiveWorkoutPlanWorkoutState();
    if (*(a1 + active[5]) == *(a2 + active[5]) && *(a1 + active[6]) == *(a2 + active[6]))
    {
      v5 = active[7];

      JUMPOUT(0x1E6930AC0);
    }
  }

  return 0;
}

uint64_t sub_1E5A10548()
{
  result = sub_1E5A2A2F4();
  if (v1 <= 0x3F)
  {
    result = sub_1E5A29EB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E5A105F8()
{
  result = qword_1ED000DB8;
  if (!qword_1ED000DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DB8);
  }

  return result;
}

unint64_t sub_1E5A10650()
{
  result = qword_1ED000DC0;
  if (!qword_1ED000DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DC0);
  }

  return result;
}

unint64_t sub_1E5A106A8()
{
  result = qword_1ED000DC8;
  if (!qword_1ED000DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DC8);
  }

  return result;
}

uint64_t sub_1E5A106FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6361706D6F437369 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5A2C114();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void CreateWorkoutPlanButtonState.handoffAlertState.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *CreateWorkoutPlanButtonState.handoffAlertState.setter(_BYTE *result)
{
  v2 = result[1];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

uint64_t CreateWorkoutPlanButtonState.localizedTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CreateWorkoutPlanButtonState.init(handoffAlertState:storefrontLocale:supportsHandoffToCompanionDevice:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1E5A29EB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5A2BB14();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = *a1;
  v16 = a1[1];
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE2D33E0;
  (*(v9 + 16))(v12, a2, v8);
  v18 = v17;
  v19 = sub_1E5A2BB64();
  v21 = v20;
  result = (*(v9 + 8))(a2, v8);
  *a4 = v15;
  *(a4 + 1) = v16;
  *(a4 + 8) = v19;
  *(a4 + 16) = v21;
  *(a4 + 24) = a3 & 1;
  return result;
}

unint64_t sub_1E5A10AF8()
{
  v1 = 0x657A696C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E5A10B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A112F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A10B8C(uint64_t a1)
{
  v2 = sub_1E5A11058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A10BC8(uint64_t a1)
{
  v2 = sub_1E5A11058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreateWorkoutPlanButtonState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000DD0, &qword_1E5A44170);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v10;
  v14[1] = v1[24];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A11058();
  sub_1E5A2C224();
  v21 = v8;
  v22 = v9;
  v20 = 0;
  sub_1E593C394();
  v12 = v17;
  sub_1E5A2C0B4();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_1E5A2C064();
  v18 = 2;
  sub_1E5A2C074();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CreateWorkoutPlanButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000DE0, &qword_1E5A44178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A11058();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_1E593C3E8();
  sub_1E5A2BFE4();
  v11 = v27;
  v12 = v28;
  v25 = 1;
  v22 = sub_1E5A2BF94();
  v23 = v13;
  v20 = v11;
  v21 = v12;
  v24 = 2;
  v14 = sub_1E5A2BFA4();
  (*(v6 + 8))(v9, v5);
  v15 = v14 & 1;
  v16 = v21;
  *a2 = v20;
  *(a2 + 1) = v16;
  v17 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E5A11058()
{
  result = qword_1ED000DD8;
  if (!qword_1ED000DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DD8);
  }

  return result;
}

uint64_t _s18FitnessWorkoutPlan06CreatebC11ButtonStateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v4 = a1[24];
    v5 = a2[24];
    if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
    {
      return v4 ^ v5 ^ 1u;
    }

    v7 = *(a1 + 2);
    v8 = sub_1E5A2C114();
    result = 0;
    if (v8)
    {
      return v4 ^ v5 ^ 1u;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E5A11144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1E5A1118C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5A111F4()
{
  result = qword_1ED000DE8;
  if (!qword_1ED000DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DE8);
  }

  return result;
}

unint64_t sub_1E5A1124C()
{
  result = qword_1ED000DF0;
  if (!qword_1ED000DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DF0);
  }

  return result;
}

unint64_t sub_1E5A112A4()
{
  result = qword_1ED000DF8;
  if (!qword_1ED000DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000DF8);
  }

  return result;
}

uint64_t sub_1E5A112F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5A46760 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E5A46780 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t localizedWorkoutPlanString(_:locale:comment:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A29EB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1E5A2BB14();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  (*(v13 + 16))(&v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE2D33E0;
  (*(v5 + 16))(v8, a2, v4);
  v15 = v14;
  return sub_1E5A2BB64();
}

id sub_1E5A11604()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE2D33E0 = result;
  return result;
}

uint64_t WorkoutPlanCreationError.localizedError(selectModalitiesCount:locale:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A29EB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2BB14();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (*v2)
  {
    *v2;
  }

  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE2D33E0;
  (*(v5 + 16))(v8, a2, v4);
  v12 = v11;
  return sub_1E5A2BB64();
}

__n128 WorkoutPlanCreationConfiguration.init(filterOptions:modalities:workoutDayLengths:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a4 + 32) = result;
  *(a4 + 48) = v6;
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return result;
}

uint64_t WorkoutPlanCreationConfiguration.filterOptions.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1E5931DC4(v7, &v6);
}

uint64_t sub_1E5A118F8()
{
  v1 = 0x6974696C61646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x704F7265746C6966;
  }
}

uint64_t sub_1E5A11968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5A1236C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5A11990(uint64_t a1)
{
  v2 = sub_1E5A11D10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5A119CC(uint64_t a1)
{
  v2 = sub_1E5A11D10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000E00, &qword_1E5A44380);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = v1[1];
  v28 = *v1;
  v29 = v9;
  v10 = v1[3];
  v30 = v1[2];
  v31 = v10;
  v11 = *(v1 + 9);
  v32 = *(v1 + 8);
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5931DC4(&v28, &v24);
  sub_1E5A11D10();
  sub_1E5A2C224();
  v24 = v28;
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v23 = 0;
  sub_1E59D7740();
  sub_1E5A2C0B4();
  if (v2)
  {
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v22 = v27;
    sub_1E58F011C(&v19);
  }

  else
  {
    v13 = v16;
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v22 = v27;
    sub_1E58F011C(&v19);
    v18 = v32;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
    sub_1E59D79E0(&qword_1ECFFFB88, sub_1E58C31B8);
    sub_1E5A2C0B4();
    v18 = v13;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
    sub_1E59A4EFC(&qword_1ECFFF5B0);
    sub_1E5A2C0B4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E5A11D10()
{
  result = qword_1ED000E08;
  if (!qword_1ED000E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED000E08);
  }

  return result;
}

uint64_t WorkoutPlanCreationConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000E10, &qword_1E5A44388);
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v18 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5A11D10();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v35 = 0;
  sub_1E59D786C();
  v11 = v19;
  sub_1E5A2BFE4();
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE750, &unk_1E5A3ABF0);
  LOBYTE(v20[0]) = 1;
  sub_1E59D79E0(&qword_1ECFFFBB8, sub_1E58C7914);
  sub_1E5A2BFE4();
  v18 = *&v22[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF178, &qword_1E5A3C800);
  v34 = 2;
  sub_1E59A4EFC(&qword_1ECFFF5D0);
  sub_1E5A2BFE4();
  (*(v10 + 8))(v8, v11);
  v12 = v25;
  v13 = v30;
  v14 = v31;
  v20[0] = v30;
  v20[1] = v31;
  v15 = v33;
  v20[2] = v32;
  v20[3] = v33;
  v16 = v18;
  *&v21 = v18;
  *(&v21 + 1) = v25;
  a2[2] = v32;
  a2[3] = v15;
  *a2 = v13;
  a2[1] = v14;
  a2[4] = v21;
  sub_1E5A120D4(v20, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v22[0] = v30;
  v22[1] = v31;
  v22[2] = v32;
  v22[3] = v33;
  v23 = v16;
  v24 = v12;
  return sub_1E58C3068(v22);
}