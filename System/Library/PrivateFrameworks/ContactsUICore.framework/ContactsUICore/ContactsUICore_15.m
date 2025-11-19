uint64_t sub_1A33DA6E0@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = sub_1A34CB530();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA898);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA8A0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v36 - v14;
  if (a2 == 0.0)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA838);
    (*(*(v16 - 8) + 16))(v15, v2, v16);
    swift_storeEnumTagMultiPayload();
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA830);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA828);
    v19 = sub_1A34CAC90();
    v20 = sub_1A3284D0C(&unk_1EB0C0658, &qword_1EB0CA828);
    v21 = sub_1A33E1CA8(&qword_1EB0C09A0, MEMORY[0x1E697C1F0]);
    v43 = v18;
    v44 = v19;
    v45 = v20;
    v46 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = v17;
    v44 = OpaqueTypeConformance2;
    v23 = swift_getOpaqueTypeConformance2();
    v43 = v16;
    v44 = v23;
    swift_getOpaqueTypeConformance2();
    return sub_1A34CB3E0();
  }

  else
  {
    v41 = sub_1A34CBA80();
    v40 = a2;
    sub_1A34CB520();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA838);
    v36[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA830);
    v39 = v9;
    v37 = v5;
    v25 = v6;
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA828);
    v36[1] = v2;
    v27 = v26;
    v28 = sub_1A34CAC90();
    v42 = a1;
    v29 = v28;
    v30 = sub_1A3284D0C(&unk_1EB0C0658, &qword_1EB0CA828);
    v31 = sub_1A33E1CA8(&qword_1EB0C09A0, MEMORY[0x1E697C1F0]);
    v43 = v27;
    v44 = v29;
    v45 = v30;
    v46 = v31;
    v32 = swift_getOpaqueTypeConformance2();
    v43 = v36[0];
    v44 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = v38;
    MEMORY[0x1A58ED7D0](v41, *&v40, 0, v8, v38, v33);
    (*(v25 + 8))(v8, v37);
    v35 = v39;
    (*(v10 + 16))(v15, v12, v39);
    swift_storeEnumTagMultiPayload();
    v43 = v34;
    v44 = v33;
    swift_getOpaqueTypeConformance2();
    sub_1A34CB3E0();
    return (*(v10 + 8))(v12, v35);
  }
}

uint64_t ClearBackgroundSection.body(content:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA620);
  sub_1A33E1A80(&qword_1EB0C0AD8, &qword_1EB0CA620, &unk_1A34F0830, sub_1A33DEEA0);
  swift_getOpaqueTypeConformance2();
  return sub_1A34CCA00();
}

uint64_t sub_1A33DAD0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA638);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA628);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA620);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  sub_1A34CCC80();
  sub_1A34CADA0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA648);
  (*(*(v12 - 8) + 16))(v5, a1, v12);
  v13 = &v5[*(v3 + 44)];
  v14 = v39;
  *(v13 + 4) = v38;
  *(v13 + 5) = v14;
  *(v13 + 6) = v40;
  v15 = v35;
  *v13 = v34;
  *(v13 + 1) = v15;
  v16 = v37;
  *(v13 + 2) = v36;
  *(v13 + 3) = v16;
  v17 = [objc_opt_self() standardPreferences];
  v18 = sub_1A34CD0E0();
  v19 = [v17 userHasOptedInToPreference_];

  if (v19)
  {
    sub_1A34CC510();
    v20 = sub_1A34CC540();
  }

  else
  {
    v20 = sub_1A34CC4E0();
  }

  v33[1] = v20;
  v21 = sub_1A34CC8F0();
  sub_1A329D98C(v5, v8, &unk_1EB0CA638);
  *&v8[*(v6 + 36)] = v21;
  v22 = sub_1A34CBAF0();
  sub_1A34CA460();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1A329D98C(v8, v11, &unk_1EB0CA628);
  v31 = &v11[*(v9 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_1A34CA6D0();
  sub_1A33E1A80(&qword_1EB0C0AD8, &qword_1EB0CA620, &unk_1A34F0830, sub_1A33DEEA0);
  sub_1A34CC070();
  return sub_1A3288FDC(v11, &qword_1EB0CA620);
}

uint64_t sub_1A33DB0B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA620);
  sub_1A33E1A80(&qword_1EB0C0AD8, &qword_1EB0CA620, &unk_1A34F0830, sub_1A33DEEA0);
  swift_getOpaqueTypeConformance2();
  return sub_1A34CCA00();
}

unint64_t sub_1A33DB1D8(double *a1)
{
  sub_1A34CDF20();
  sub_1A32A92B8();
  v2 = sub_1A34CDF70();

  return sub_1A33DB844(a1, v2);
}

unint64_t sub_1A33DB254(unsigned __int8 a1, double a2, double a3)
{
  sub_1A34CDF20();
  sub_1A32A9254();
  v6 = sub_1A34CDF70();

  return sub_1A33DB93C(a1, v6, a2, a3);
}

unint64_t sub_1A33DB2E0(uint64_t a1)
{
  sub_1A34CD110();
  sub_1A34CDF20();
  sub_1A34CD1C0();
  v2 = sub_1A34CDF70();

  return sub_1A33DC234(a1, v2);
}

unint64_t sub_1A33DB370(double a1)
{
  v2 = sub_1A34CDF10();

  return sub_1A33DB9CC(v2, a1);
}

unint64_t sub_1A33DB3BC(uint64_t a1)
{
  v2 = sub_1A34CDA00();

  return sub_1A33DBA34(a1, v2);
}

unint64_t sub_1A33DB400(uint64_t a1)
{
  sub_1A34CDF20();
  sub_1A34C9780();
  sub_1A33E1CA8(&qword_1EB0C2A40, MEMORY[0x1E69695A8]);
  sub_1A34CCFE0();
  v2 = type metadata accessor for ProminentColorCache.CacheKey();
  MEMORY[0x1A58EF750](*(a1 + *(v2 + 20)));
  v3 = sub_1A34CDF70();

  return sub_1A33DBAFC(a1, v3);
}

unint64_t sub_1A33DB4CC(unsigned __int8 a1)
{
  v2 = sub_1A349486C();

  return sub_1A33DBCA0(a1, v2);
}

unint64_t sub_1A33DB510(unsigned __int8 a1)
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  v2 = sub_1A34CDF70();

  return sub_1A33DBF58(a1, v2);
}

unint64_t sub_1A33DB620(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
  v2 = sub_1A34CCFD0();
  return sub_1A33DC14C(a1, v2);
}

unint64_t sub_1A33DB69C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](a1);
  sub_1A34CD1C0();
  v6 = sub_1A34CDF70();

  return sub_1A33DC338(a1, a2, a3, v6);
}

unint64_t sub_1A33DB730(uint64_t a1)
{
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](a1);
  v2 = sub_1A34CDF70();
  return sub_1A31ED4E4(a1, v2);
}

unint64_t sub_1A33DB798(char a1)
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  v2 = sub_1A34CDF70();

  return sub_1A33DC410(a1 & 1, v2);
}

unint64_t sub_1A33DB844(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    v8 = a1[3];
    v9 = a1[4];
    v11 = *a1;
    v10 = *(a1 + 1);
    v12 = *(v2 + 48);
    do
    {
      v13 = v12 + 40 * v5;
      v14 = *(v13 + 16);
      v16 = *(v13 + 24);
      v15 = *(v13 + 32);
      v17 = *v13 == *&v11 && *(v13 + 8) == v10;
      if (v17 || (sub_1A34CDE30() & 1) != 0)
      {
        v18 = v14 == v7 && v16 == v8;
        if (v18 && v15 == v9)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1A33DB93C(unsigned __int8 a1, uint64_t a2, double a3, double a4)
{
  v6 = -1 << *(v4 + 32);
  result = a2 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      v10 = *v9;
      v11 = v9[2];
      v12 = v9[1] == a3;
      if (v11 != a4)
      {
        v12 = 0;
      }

      if (v10 == a1 && v12)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A33DB9CC(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A33DBA34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A33CAF7C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1A58EF230](v9, a1);
      sub_1A32F7584(v9);
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

unint64_t sub_1A33DBAFC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ProminentColorCache.CacheKey();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1A33E1434(*(v2 + 48) + v12 * v10, v8, type metadata accessor for ProminentColorCache.CacheKey);
      if (sub_1A34C9750())
      {
        v13 = v8[*(v5 + 20)];
        sub_1A33E0988(v8, type metadata accessor for ProminentColorCache.CacheKey);
        if (v13 == *(a1 + *(v5 + 20)))
        {
          return v10;
        }
      }

      else
      {
        sub_1A33E0988(v8, type metadata accessor for ProminentColorCache.CacheKey);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1A33DBCA0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6464416C69616D65;
          }

          else
          {
            v8 = 0x64416C6174736F70;
          }

          if (v7 == 1)
          {
            v9 = 0xEC00000073736572;
          }

          else
          {
            v9 = 0xED00007373657264;
          }
        }

        else
        {
          v8 = 0x6D754E656E6F6870;
          v9 = 0xEB00000000726562;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE400000000000000;
          v8 = 1702129518;
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x6D6F74737563;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x7961646874726962;
        }

        else
        {
          v8 = 0x52746361746E6F63;
        }

        if (v7 == 3)
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xEF6E6F6974616C65;
        }
      }

      v10 = 0x6D6F74737563;
      if (v6 == 5)
      {
        v10 = 1702129518;
      }

      v11 = 0xE400000000000000;
      if (v6 != 5)
      {
        v11 = 0xE600000000000000;
      }

      v12 = 0x7961646874726962;
      if (v6 != 3)
      {
        v12 = 0x52746361746E6F63;
      }

      v13 = 0xEF6E6F6974616C65;
      if (v6 == 3)
      {
        v13 = 0xE800000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6464416C69616D65;
      if (v6 != 1)
      {
        v14 = 0x64416C6174736F70;
      }

      v15 = 0xED00007373657264;
      if (v6 == 1)
      {
        v15 = 0xEC00000073736572;
      }

      if (!v6)
      {
        v14 = 0x6D754E656E6F6870;
        v15 = 0xEB00000000726562;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_1A34CDE30();

      if ((v18 & 1) == 0)
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

unint64_t sub_1A33DBF58(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xEA00000000006574;
    v6 = a1;
    v7 = 0xE600000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4);
      if (v8 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v9 = 0x6D6172676F6E6F6DLL;
        }

        else
        {
          v9 = 0x7465756F686C6973;
        }

        if (*(*(v2 + 48) + v4))
        {
          v10 = 0xE800000000000000;
        }

        else
        {
          v10 = 0xEA00000000006574;
        }
      }

      else if (v8 == 2)
      {
        v9 = 0x6D49726174617661;
        v10 = 0xEB00000000656761;
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x657069636572;
        }

        else
        {
          v9 = 0x726574736F70;
        }

        v10 = 0xE600000000000000;
      }

      if (v6 == 3)
      {
        v11 = 0x657069636572;
      }

      else
      {
        v11 = 0x726574736F70;
      }

      if (v6 == 2)
      {
        v11 = 0x6D49726174617661;
        v7 = 0xEB00000000656761;
      }

      if (v6)
      {
        v12 = 0x6D6172676F6E6F6DLL;
      }

      else
      {
        v12 = 0x7465756F686C6973;
      }

      if (v6)
      {
        v5 = 0xE800000000000000;
      }

      v13 = v6 <= 1 ? v12 : v11;
      v14 = v6 <= 1 ? v5 : v7;
      if (v9 == v13 && v10 == v14)
      {
        break;
      }

      v15 = sub_1A34CDE30();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xEA00000000006574;
        v7 = 0xE600000000000000;
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

unint64_t sub_1A33DC14C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
      if (sub_1A34CD040())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A33DC234(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1A34CD110();
      v8 = v7;
      if (v6 == sub_1A34CD110() && v8 == v9)
      {
        break;
      }

      v11 = sub_1A34CDE30();

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

unint64_t sub_1A33DC338(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = a1;
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == v10)
      {
        v14 = *(v13 + 1) == a2 && *(v13 + 2) == a3;
        if (v14 || (sub_1A34CDE30() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1A33DC410(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x617A696E6167726FLL;
    }

    else
    {
      v6 = 0x6E6F73726570;
    }

    if (a1)
    {
      v7 = 0xEC0000006E6F6974;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x617A696E6167726FLL : 0x6E6F73726570;
      v9 = *(*(v2 + 48) + v4) ? 0xEC0000006E6F6974 : 0xE600000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1A34CDE30();

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

uint64_t sub_1A33DC55C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7F0);
  v36 = a2;
  result = sub_1A34CDC50();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 24 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      sub_1A34CDF20();
      MEMORY[0x1A58EF750](v22);
      if (v23 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v23;
      }

      MEMORY[0x1A58EF770](*&v26);
      if (v24 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v24;
      }

      MEMORY[0x1A58EF770](*&v27);
      result = sub_1A34CDF70();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_1A33DC840(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7F8);
  result = sub_1A34CDC50();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_1A34CDF10();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A33DCAB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7E8);
  v44 = a2;
  result = sub_1A34CDC50();
  v7 = result;
  if (*(v5 + 16))
  {
    v42 = v2;
    v43 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = *(v5 + 56);
      v23 = 40 * (v19 | (v8 << 6));
      v24 = *(v5 + 48) + v23;
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v27 = *(v24 + 24);
      v28 = *(v24 + 32);
      v29 = v22 + v23;
      v30 = *v29;
      v31 = *(v29 + 8);
      v47 = *(v29 + 16);
      v48 = *v24;
      v46 = *(v29 + 24);
      v45 = *(v29 + 32);
      if ((v44 & 1) == 0)
      {

        sub_1A31FBC5C(v30, v31, v47, v46, v45);
      }

      sub_1A34CDF20();
      sub_1A34CD1C0();
      MEMORY[0x1A58EF750](v26);
      if (v27 == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v27;
      }

      MEMORY[0x1A58EF770](*&v32);
      if (v28 == 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v28;
      }

      MEMORY[0x1A58EF770](*&v33);
      result = sub_1A34CDF70();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 40 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v48;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v27;
      *(v17 + 32) = v28;
      v18 = *(v7 + 56) + v16;
      *v18 = v30;
      *(v18 + 8) = v31;
      *(v18 + 16) = v47;
      *(v18 + 24) = v46;
      *(v18 + 32) = v45;
      ++*(v7 + 16);
      v5 = v43;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v44)
    {
      v41 = 1 << *(v5 + 32);
      if (v41 >= 64)
      {
        bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v41;
      }

      *(v5 + 16) = 0;
    }

    v3 = v42;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A33DCE08(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ProminentColorCache.CacheKey();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA7B0);
  v43 = a2;
  result = sub_1A34CDC50();
  v10 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v41 + 72);
      v25 = *(v8 + 48) + v24 * v23;
      v26 = 16 * v23;
      if (v43)
      {
        sub_1A33E1530(v25, v7, type metadata accessor for ProminentColorCache.CacheKey);
        v27 = *(v8 + 56) + v26;
        v45 = *v27;
        v44 = *(v27 + 8);
      }

      else
      {
        sub_1A33E1434(v25, v7, type metadata accessor for ProminentColorCache.CacheKey);
        v28 = *(v8 + 56) + v26;
        v29 = *(v28 + 8);
        v45 = *v28;
        v44 = v29;
        sub_1A33C5F90(v45, v29);
      }

      sub_1A34CDF20();
      sub_1A34C9780();
      sub_1A33E1CA8(&qword_1EB0C2A40, MEMORY[0x1E69695A8]);
      sub_1A34CCFE0();
      MEMORY[0x1A58EF750](v7[*(v42 + 20)]);
      result = sub_1A34CDF70();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v8 = v40;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v8 = v40;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1A33E1530(v7, *(v10 + 48) + v24 * v18, type metadata accessor for ProminentColorCache.CacheKey);
      v19 = *(v10 + 56) + 16 * v18;
      *v19 = v45;
      *(v19 + 8) = v44;
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1A33DD208(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA820);
  result = sub_1A34CDC50();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        sub_1A34C9010();
      }

      result = sub_1A34CDF10();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A33DD478(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA7A0);
  result = sub_1A34CDC50();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1A31FA144((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1A33CAF7C(v23, &v36);
        sub_1A31EE354(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1A34CDA00();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1A31FA144(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A33DD730(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ContactLikeness(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7C0);
  v41 = a2;
  result = sub_1A34CDC50();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 24 * v22);
      v25 = *v24;
      v27 = *(v24 + 1);
      v26 = *(v24 + 2);
      v28 = v23 + *(v40 + 72) * v22;
      v42 = *(v40 + 72);
      if (v41)
      {
        sub_1A33E1530(v28, v43, type metadata accessor for ContactLikeness);
      }

      else
      {
        sub_1A33E1434(v28, v43, type metadata accessor for ContactLikeness);
      }

      sub_1A34CDF20();
      MEMORY[0x1A58EF750](v25);
      sub_1A34CD1C0();
      result = sub_1A34CDF70();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 24 * v17;
      *v18 = v25;
      *(v18 + 8) = v27;
      *(v18 + 16) = v26;
      result = sub_1A33E1530(v43, *(v9 + 56) + v42 * v17, type metadata accessor for ContactLikeness);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1A33DDAD8(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v32 = a2;
  result = sub_1A34CDC50();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((v32 & 1) == 0)
      {
        v23 = v22;
      }

      sub_1A34CDF20();
      MEMORY[0x1A58EF750](v21);
      result = sub_1A34CDF70();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v3;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

void *sub_1A33DDD5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7F0);
  v2 = *v0;
  v3 = sub_1A34CDC40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = *(v4 + 48) + 24 * v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        *(*(v4 + 56) + 8 * v17) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1A33DDED0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7F8);
  v2 = *v0;
  v3 = sub_1A34CDC40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1A33DE02C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7E8);
  v27 = v0;
  v1 = *v0;
  v28 = sub_1A34CDC40();
  if (*(v1 + 16))
  {
    result = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = 40 * (v11 | (v5 << 6));
        v15 = *(v1 + 48) + v14;
        v16 = *(v15 + 8);
        v17 = *(v15 + 16);
        v18 = *(v1 + 56) + v14;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v28 + 48) + v14;
        v24 = *(v15 + 24);
        v25 = *(v18 + 32);
        *v23 = *v15;
        *(v23 + 8) = v16;
        *(v23 + 16) = v17;
        *(v23 + 24) = v24;
        v26 = *(v28 + 56) + v14;
        *v26 = v19;
        *(v26 + 8) = v20;
        *(v26 + 16) = v21;
        *(v26 + 24) = v22;
        *(v26 + 32) = v25;

        result = sub_1A31FBC5C(v19, v20, v21, v22, v25);
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }

  return result;
}

void *sub_1A33DE1FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA818);
  v2 = *v0;
  v3 = sub_1A34CDC40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1A33DE358()
{
  v1 = v0;
  v2 = type metadata accessor for ProminentColorCache.CacheKey();
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA7B0);
  v4 = *v0;
  v5 = sub_1A34CDC40();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v33 + 72) * v19;
        sub_1A33E1434(*(v4 + 48) + v21, v32, type metadata accessor for ProminentColorCache.CacheKey);
        v22 = *(v4 + 56);
        v23 = v4;
        v24 = 16 * v19;
        v25 = v22 + 16 * v19;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = v34;
        sub_1A33E1530(v20, *(v34 + 48) + v21, type metadata accessor for ProminentColorCache.CacheKey);
        v29 = *(v28 + 56) + v24;
        v4 = v23;
        *v29 = v26;
        *(v29 + 8) = v27;
        result = sub_1A33C5F90(v26, v27);
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1A33DE5D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA820);
  v2 = *v0;
  v3 = sub_1A34CDC40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_1A34C9010();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1A33DE730()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA7A0);
  v2 = *v0;
  v3 = sub_1A34CDC40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1A33CAF7C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1A31EE354(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1A31FA144(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1A33DE8D4()
{
  v1 = v0;
  v2 = type metadata accessor for ContactLikeness(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7C0);
  v4 = *v0;
  v5 = sub_1A34CDC40();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v34 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 24 * v19;
        v21 = *(v4 + 48) + 24 * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = v31;
        v26 = *(v32 + 72) * v19;
        sub_1A33E1434(*(v4 + 56) + v26, v31, type metadata accessor for ContactLikeness);
        v27 = v33;
        v28 = *(v33 + 48) + v20;
        *v28 = v22;
        *(v28 + 8) = v23;
        *(v28 + 16) = v24;
        sub_1A33E1530(v25, *(v27 + 56) + v26, type metadata accessor for ContactLikeness);

        v14 = v34;
      }

      while (v34);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1A33DEB58(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1A34CDC40();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = v19;
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

      v17 = *(v3 + 64 + 8 * v9);
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

uint64_t sub_1A33DECC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA8C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1A328D790(a1, &v6 - v3, &unk_1EB0CA8C8);
  return MEMORY[0x1A58EC740](v4);
}

uint64_t sub_1A33DEDD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A33DEEA0()
{
  result = qword_1EB0C0BF0;
  if (!qword_1EB0C0BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA628);
    sub_1A33DEF58();
    sub_1A3284D0C(&qword_1EB0C0780, &qword_1EB0CA658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0BF0);
  }

  return result;
}

unint64_t sub_1A33DEF58()
{
  result = qword_1EB0C0EB0;
  if (!qword_1EB0C0EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA638);
    sub_1A3284D0C(&qword_1EB0C0740, &unk_1EB0CA648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0EB0);
  }

  return result;
}

void sub_1A33DF070()
{
  sub_1A33E0504(319, &qword_1EB0C2C10, &qword_1EB0C80D8);
  if (v0 <= 0x3F)
  {
    sub_1A33DF9D8(319, &unk_1EB0C2C20, type metadata accessor for ContactCardSwiftUIViewModel, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      sub_1A33DF9D8(319, &qword_1EB0C2B48, MEMORY[0x1E697E4D8], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1A33DFA3C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A33DF1B8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1A34CB5F0() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA5F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(sub_1A34CAA80() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v11 <= v14)
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = v11;
  }

  v16 = *(a3 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = *(v17 + 80);
  if (v15 <= v18)
  {
    v22 = *(v17 + 84);
  }

  else
  {
    v22 = v15;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  if (v7)
  {
    v24 = v8;
  }

  else
  {
    v24 = v8 + 1;
  }

  v25 = 8;
  if (v24 > 8)
  {
    v25 = v24;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = *(v10 + 80) & 0xF8 | 7;
  v27 = v25 + v26 + 1;
  v28 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v29 = v19 & 0xF8 | 7;
  v30 = ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + v21 + 8;
  v31 = *(v17 + 64) + 7;
  if (v23 >= a2)
  {
    goto LABEL_38;
  }

  v32 = ((v31 + ((v30 + ((v28 + v29 + (v27 & ~v26)) & ~v29)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v33 = v32 & 0xFFFFFFF8;
  if ((v32 & 0xFFFFFFF8) != 0)
  {
    v34 = 2;
  }

  else
  {
    v34 = a2 - v23 + 1;
  }

  if (v34 >= 0x10000)
  {
    v35 = 4;
  }

  else
  {
    v35 = 2;
  }

  if (v34 < 0x100)
  {
    v35 = 1;
  }

  if (v34 >= 2)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  if (v36 <= 1)
  {
    if (!v36)
    {
      goto LABEL_38;
    }

    v37 = *(a1 + v32);
    if (!v37)
    {
      goto LABEL_38;
    }

LABEL_35:
    v39 = v37 - 1;
    if (v33)
    {
      v39 = 0;
      v40 = *a1;
    }

    else
    {
      v40 = 0;
    }

    return v23 + (v40 | v39) + 1;
  }

  if (v36 == 2)
  {
    v37 = *(a1 + v32);
    if (v37)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v37 = *(a1 + v32);
    if (v37)
    {
      goto LABEL_35;
    }
  }

LABEL_38:
  v41 = (a1 + v27) & ~v26;
  if (v11 == v23)
  {
    v42 = *(v10 + 48);
    v43 = v41;
    v44 = v11;
    v16 = v9;
LABEL_40:

    return v42(v43, v44, v16);
  }

  v45 = (v41 + v28 + v29) & ~v29;
  if (v14 == v23)
  {
    v46 = *(v13 + 48);

    return v46(v45);
  }

  else
  {
    v43 = (v30 + v45) & ~v21;
    if (v18 == v23)
    {
      v42 = *(v17 + 48);
      v44 = *(v17 + 84);
      goto LABEL_40;
    }

    v47 = *((v31 + v43) & 0xFFFFFFFFFFFFFFF8);
    if (v47 >= 0xFFFFFFFF)
    {
      LODWORD(v47) = -1;
    }

    return (v47 + 1);
  }
}

void sub_1A33DF57C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(sub_1A34CB5F0() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA5F0);
  v10 = *(v48 - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(sub_1A34CAA80() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v16 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(a4 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  v21 = *(v13 + 80);
  v22 = *(v13 + 64);
  v23 = *(v19 + 80);
  v24 = *(v19 + 64);
  if (v20 <= v17)
  {
    v25 = v17;
  }

  else
  {
    v25 = *(v19 + 84);
  }

  if (v25 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  if (v8)
  {
    v26 = v9;
  }

  else
  {
    v26 = v9 + 1;
  }

  if (v26 <= 8)
  {
    v26 = 8;
  }

  v27 = *(v10 + 80) & 0xF8 | 7;
  v28 = v26 + v27 + 1;
  v29 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v30 = v21 & 0xF8 | 7;
  v31 = ((v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v32 = v24 + 7;
  v33 = ((v24 + 7 + ((v31 + v23 + ((v29 + v30 + (v28 & ~v27)) & ~v30)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v25 >= a3)
  {
    v36 = 0;
  }

  else
  {
    if (((v24 + 7 + ((v31 + v23 + ((v29 + v30 + (v28 & ~v27)) & ~v30)) & ~v23)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v34 = a3 - v25 + 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }
  }

  if (a2 > v25)
  {
    if (v33)
    {
      v37 = 1;
    }

    else
    {
      v37 = a2 - v25;
    }

    if (v33)
    {
      v38 = ~v25 + a2;
      bzero(a1, v33);
      *a1 = v38;
    }

    if (v36 > 1)
    {
      if (v36 == 2)
      {
        *(a1 + v33) = v37;
      }

      else
      {
        *(a1 + v33) = v37;
      }
    }

    else if (v36)
    {
      *(a1 + v33) = v37;
    }

    return;
  }

  if (v36 <= 1)
  {
    if (v36)
    {
      *(a1 + v33) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }

LABEL_50:
    if (!a2)
    {
      return;
    }

    goto LABEL_51;
  }

  if (v36 == 2)
  {
    *(a1 + v33) = 0;
    goto LABEL_50;
  }

  *(a1 + v33) = 0;
  if (!a2)
  {
    return;
  }

LABEL_51:
  v39 = ((a1 + v28) & ~v27);
  if (v11 == v25)
  {
    if (v12 < a2)
    {
      if (!v29)
      {
        return;
      }

      v40 = ~v12 + a2;
      v41 = ((a1 + v28) & ~v27);
LABEL_59:
      bzero(v41, v29);
      *v39 = v40;
      return;
    }

    v42 = *(v10 + 56);
    v43 = (a1 + v28) & ~v27;
    v44 = a2;
    v45 = v11;
    v18 = v48;
LABEL_66:

    v42(v43, v44, v45, v18);
    return;
  }

  v39 = ((v39 + v29 + v30) & ~v30);
  if (v15 != v25)
  {
    v43 = (v39 + v31 + v23) & ~v23;
    if (v20 != v25)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v47 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v47 = (a2 - 1);
      }

      *((v32 + v43) & 0xFFFFFFFFFFFFFFF8) = v47;
      return;
    }

    v42 = *(v19 + 56);
    v44 = a2;
    v45 = v20;
    goto LABEL_66;
  }

  if (v16 < a2)
  {
    if (!v31)
    {
      return;
    }

    v40 = ~v16 + a2;
    v41 = v39;
    v29 = v31;
    goto LABEL_59;
  }

  v46 = *(v14 + 56);

  v46(v39, a2);
}

void sub_1A33DF9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A33DFA3C()
{
  if (!qword_1EB0C2B40)
  {
    type metadata accessor for CNUIContactCardActionPlacement(255);
    type metadata accessor for ContactCardActionsViewModel(255);
    sub_1A33E1CA8(&qword_1EB0C2AC8, type metadata accessor for CNUIContactCardActionPlacement);
    v0 = sub_1A34CCFC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C2B40);
    }
  }
}

void sub_1A33DFB10()
{
  sub_1A34C93B0();
  if (v0 <= 0x3F)
  {
    sub_1A31F3A44(319, &qword_1EB0C2B30, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A3386514(319, &qword_1EB0C2A90, &qword_1ED853440);
      if (v2 <= 0x3F)
      {
        sub_1A33DF9D8(319, &unk_1EB0C2E70, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A31F3A44(319, &qword_1EB0C2B28, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A33DFCA8()
{
  sub_1A31EC194(319, &qword_1ED854E70);
  if (v0 <= 0x3F)
  {
    sub_1A3386514(319, &unk_1EB0C2AF0, &qword_1EB0C2B00);
    if (v1 <= 0x3F)
    {
      sub_1A31EC194(319, &qword_1ED854A50);
      if (v2 <= 0x3F)
      {
        sub_1A31EC194(319, &qword_1EB0C2AD8);
        if (v3 <= 0x3F)
        {
          sub_1A33DF9D8(319, &qword_1EB0C2C70, type metadata accessor for ContactCardCustomViewConfiguration, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A3386514(319, &qword_1EB0C2A98, &unk_1EB0C2AA0);
            if (v5 <= 0x3F)
            {
              sub_1A3386514(319, &qword_1EB0C2B08, &unk_1EB0C2B10);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A33DFE80()
{
  result = qword_1EB0C21D0;
  if (!qword_1EB0C21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C21D0);
  }

  return result;
}

unint64_t sub_1A33DFED4()
{
  result = qword_1EB0C03D8;
  if (!qword_1EB0C03D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA620);
    sub_1A33E1A80(&qword_1EB0C0AD8, &qword_1EB0CA620, &unk_1A34F0830, sub_1A33DEEA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C03D8);
  }

  return result;
}

void sub_1A33DFFD4()
{
  sub_1A33E0504(319, &qword_1EB0C1188, &qword_1EB0C6090);
  if (v0 <= 0x3F)
  {
    sub_1A33DF9D8(319, &qword_1EB0C1198, type metadata accessor for ContactCardSwiftUIViewModel, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A31F3A44(319, &qword_1EB0C0540, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A33DFA3C();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A33E0110(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 80) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((((a1 + 41) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A33E02A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 80) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((((a1 + 41) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

void sub_1A33E0504(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1A34CA5F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A33E05C8(uint64_t a1, uint64_t (*a2)(void, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(a2(0, v5, v6) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a3(a1, v8, v5, v6);
}

unint64_t sub_1A33E0680()
{
  result = qword_1EB0C2358;
  if (!qword_1EB0C2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2358);
  }

  return result;
}

unint64_t sub_1A33E06D4()
{
  result = qword_1EB0CA6A8;
  if (!qword_1EB0CA6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C20);
    sub_1A33E1CA8(&qword_1EB0CA6B0, type metadata accessor for CGRect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA6A8);
  }

  return result;
}

uint64_t sub_1A33E07C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContactCard.InnerFormView();
  sub_1A34CA7F0();

  return sub_1A33D76F4(a1, a2);
}

unint64_t sub_1A33E08CC()
{
  result = qword_1EB0C0F88;
  if (!qword_1EB0C0F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA710);
    sub_1A33E1CA8(&qword_1EB0C2A10, type metadata accessor for HeaderView);
    sub_1A33DFE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F88);
  }

  return result;
}

uint64_t sub_1A33E0988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A33E09F4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1A33E1CA8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A33E0AA8()
{
  result = qword_1EB0C23B0;
  if (!qword_1EB0C23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C23B0);
  }

  return result;
}

unint64_t sub_1A33E0AFC()
{
  result = qword_1EB0CA748;
  if (!qword_1EB0CA748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA668);
    sub_1A33E0B88();
    sub_1A33DFE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA748);
  }

  return result;
}

unint64_t sub_1A33E0B88()
{
  result = qword_1EB0CA750;
  if (!qword_1EB0CA750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA750);
  }

  return result;
}

unint64_t sub_1A33E0C0C()
{
  result = qword_1EB0C0C70;
  if (!qword_1EB0C0C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA670);
    sub_1A33E09F4(&unk_1EB0C0C78, &qword_1EB0CA728, &unk_1A34F0B80, sub_1A33E0CBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C70);
  }

  return result;
}

unint64_t sub_1A33E0CBC()
{
  result = qword_1EB0C0FB0;
  if (!qword_1EB0C0FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA720);
    sub_1A33E1CA8(&unk_1EB0C1A18, type metadata accessor for SensitiveContentActionsView);
    sub_1A33DFE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0FB0);
  }

  return result;
}

unint64_t sub_1A33E0D78()
{
  result = qword_1EB0C0DF0;
  if (!qword_1EB0C0DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA710);
    sub_1A33E08CC();
    swift_getOpaqueTypeConformance2();
    sub_1A33E1CA8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0DF0);
  }

  return result;
}

unint64_t sub_1A33E0E70()
{
  result = qword_1EB0C0308;
  if (!qword_1EB0C0308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA680);
    sub_1A3284D0C(&unk_1EB0C0310, &qword_1EB0CA6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0308);
  }

  return result;
}

uint64_t sub_1A33E0F20(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1A33E0F9C()
{
  result = qword_1EB0C0F40;
  if (!qword_1EB0C0F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA6D8);
    sub_1A33E1CA8(&qword_1EB0C2658, type metadata accessor for ContactCardActions);
    sub_1A33E1CA8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F40);
  }

  return result;
}

unint64_t sub_1A33E1088()
{
  result = qword_1EB0C0F30;
  if (!qword_1EB0C0F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA690);
    sub_1A33E1CA8(&qword_1EB0C2638, type metadata accessor for ContactCardDetails);
    sub_1A33E1CA8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F30);
  }

  return result;
}

unint64_t sub_1A33E1174()
{
  result = qword_1EB0C0378;
  if (!qword_1EB0C0378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA698);
    sub_1A3284D0C(&qword_1EB0C0380, &qword_1EB0CA6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0378);
  }

  return result;
}

unint64_t sub_1A33E1224()
{
  result = qword_1EB0C03D0;
  if (!qword_1EB0C03D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA6C8);
    sub_1A33E09F4(&qword_1EB0C0F18, &qword_1EB0CA740, &unk_1A34F0B90, sub_1A33E0AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C03D0);
  }

  return result;
}

unint64_t sub_1A33E12E0()
{
  result = qword_1EB0C1E90;
  if (!qword_1EB0C1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1E90);
  }

  return result;
}

unint64_t sub_1A33E1348()
{
  result = qword_1EB0CA788;
  if (!qword_1EB0CA788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA780);
    sub_1A33E1CA8(&unk_1EB0CA790, type metadata accessor for ContactCardCustomView);
    sub_1A33E1CA8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA788);
  }

  return result;
}

uint64_t sub_1A33E1434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_64Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A33E1530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A33E15A4(uint64_t a1)
{
  v3 = *(sub_1A34CAC70() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A33D8CDC(a1, v4);
}

uint64_t sub_1A33E1614()
{
  sub_1A34CA640();
  sub_1A34CAC70();
  return sub_1A34CA610();
}

uint64_t sub_1A33E16E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 288))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 264);
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

uint64_t sub_1A33E172C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 264) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A33E17F0()
{
  result = qword_1EB0C0B98;
  if (!qword_1EB0C0B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA840);
    sub_1A33E18A8();
    sub_1A3284D0C(&qword_1EB0C0698, &qword_1EB0CA890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B98);
  }

  return result;
}

unint64_t sub_1A33E18A8()
{
  result = qword_1EB0C0DC0;
  if (!qword_1EB0C0DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA850);
    sub_1A33E199C();
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1EB0C0778, &unk_1EB0CA880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0DC0);
  }

  return result;
}

unint64_t sub_1A33E199C()
{
  result = qword_1EB0C0C18;
  if (!qword_1EB0C0C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA850);
    sub_1A33E1A80(&qword_1EB0C0EE0, &unk_1EB0CA858, &unk_1A34F0DE0, sub_1A33E1B04);
    sub_1A3284D0C(&qword_1EB0C0780, &qword_1EB0CA658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C18);
  }

  return result;
}

uint64_t sub_1A33E1A80(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1A33E1B04()
{
  result = qword_1EB0C08E0;
  if (!qword_1EB0C08E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA868);
    sub_1A33E1BC0();
    sub_1A33E1CA8(&unk_1EB0C0730, MEMORY[0x1E697C7F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C08E0);
  }

  return result;
}

unint64_t sub_1A33E1BC0()
{
  result = qword_1EB0C0E60;
  if (!qword_1EB0C0E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA878);
    sub_1A33E1CA8(&unk_1EB0C0730, MEMORY[0x1E697C7F0]);
    sub_1A3284D0C(&qword_1ED853F30, &qword_1EB0CA6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E60);
  }

  return result;
}

uint64_t sub_1A33E1CA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A33E1CF0()
{
  result = qword_1EB0C0E90;
  if (!qword_1EB0C0E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA8B8);
    sub_1A3284D0C(&qword_1EB0C11B8, &qword_1EB0CA8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E90);
  }

  return result;
}

unint64_t sub_1A33E1DA8()
{
  result = qword_1EB0C0850;
  if (!qword_1EB0C0850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA8D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA828);
    sub_1A34CAC90();
    sub_1A3284D0C(&unk_1EB0C0658, &qword_1EB0CA828);
    sub_1A33E1CA8(&qword_1EB0C09A0, MEMORY[0x1E697C1F0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0850);
  }

  return result;
}

uint64_t sub_1A33E1F7C()
{
  v0 = sub_1A34CD740();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A34CD710();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A34CCED0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A328B6E0();
  sub_1A34CCEB0();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1A33E2FAC(&unk_1ED854B60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B30);
  sub_1A33E2FF4();
  sub_1A34CD960();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1A34CD780();
  qword_1EB0C1AB0 = result;
  return result;
}

uint64_t sub_1A33E21B4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_stateHandle) = 0;
  sub_1A34C99D0();
  sub_1A3388CEC(a1, v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration);
  v3 = [objc_opt_self() standardPreferences];
  v4 = sub_1A34CD0E0();
  v5 = [v3 userHasOptedInToPreference_];

  v6 = (v5 & 1) != 0 || sub_1A33AE18C();
  *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_hasSensitiveContent) = v6;
  v7 = [objc_opt_self() currentEnvironment];
  v8 = [v7 isInternalBuild];

  if (v8)
  {
    if (qword_1EB0C1AA8 != -1)
    {
      swift_once();
    }

    v9 = swift_allocObject();
    swift_weakInit();
    v13[4] = sub_1A33E2AC0;
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1A3403938;
    v13[3] = &block_descriptor_18;
    v10 = _Block_copy(v13);

    v11 = os_state_add_handler();
    _Block_release(v10);
    sub_1A32A313C(a1);
    *(v1 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_stateHandle) = v11;
  }

  else
  {
    sub_1A32A313C(a1);
  }

  return v1;
}

_OWORD *sub_1A33E23EC()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v0 = sub_1A33E2454();

  return v0;
}

_OWORD *sub_1A33E2454()
{
  v1 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DE7A0;
  *(inited + 32) = 0x746361746E6F43;
  *(inited + 40) = 0xE700000000000000;
  v5 = v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration;
  v6 = *(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration);
  v7 = [v6 description];
  v8 = sub_1A34CD110();
  v10 = v9;

  v11 = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  *(inited + 72) = v11;
  strcpy((inited + 80), "Contact store");
  *(inited + 94) = -4864;
  v12 = [*(v5 + 16) description];
  v13 = sub_1A34CD110();
  v15 = v14;

  *(inited + 96) = v13;
  *(inited + 104) = v15;
  *(inited + 120) = v11;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x80000001A3510F00;
  sub_1A3388CEC(v5, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1A32A313C(v3);
  if (Strong)
  {
    swift_unknownObjectRelease();
    v17 = 0xE400000000000000;
    v18 = 1702195828;
  }

  else
  {
    v17 = 0xE500000000000000;
    v18 = 0x65736C6166;
  }

  *(inited + 144) = v18;
  *(inited + 152) = v17;
  *(inited + 168) = v11;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x80000001A3510F20;
  v19 = [*(v5 + 32) description];
  v20 = sub_1A34CD110();
  v22 = v21;

  *(inited + 216) = v11;
  *(inited + 192) = v20;
  *(inited + 200) = v22;
  sub_1A33E9E68(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9EA0);
  swift_arrayDestroy();
  v23 = sub_1A33E2AD0(0x43746361746E6F43, 0xEB00000000647261);

  return v23;
}

uint64_t sub_1A33E28CC()
{
  os_state_remove_handler();
  sub_1A32A313C(v0 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration);
  v1 = OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel___observationRegistrar;
  v2 = sub_1A34C99E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContactCardSwiftUIViewModel()
{
  result = qword_1EB0C2C88;
  if (!qword_1EB0C2C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A33E29DC()
{
  result = type metadata accessor for ContactCardConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = sub_1A34C99E0();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_OWORD *sub_1A33E2AD0(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = sub_1A34C9080();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = objc_opt_self();
  v9 = sub_1A34CCF70();
  *v42 = 0;
  v10 = [v8 dataWithPropertyList:v9 format:200 options:0 error:v42];

  v11 = *v42;
  if (!v10)
  {
    v18 = v11;
    sub_1A34C9580();

    swift_willThrow();
    return v10;
  }

  v12 = a2;
  v13 = sub_1A34C9690();
  v15 = v14;

  v41 = v15;
  v16 = v15 >> 62;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    v21 = __OFSUB__(v19, v20);
    v17 = v19 - v20;
    if (!v21)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v17) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v17 = v17;
    goto LABEL_13;
  }

  if (v16)
  {
    goto LABEL_10;
  }

  v17 = BYTE6(v41);
LABEL_13:
  if (__OFADD__(v17, 200))
  {
    __break(1u);
    goto LABEL_37;
  }

  v22 = malloc(v17 + 200);
  if (v22)
  {
    v10 = v22;
    *v42 = 1;
    memset(&v42[4], 0, 196);
    sub_1A3332074(a1, v12, &v42[136], &v43);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
LABEL_31:
        *(v10 + 24) = *&v42[192];
        *&v42[4] = 0;
        v33 = *&v42[176];
        v10[10] = *&v42[160];
        v10[11] = v33;
        goto LABEL_32;
      }

      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      v21 = __OFSUB__(v24, v25);
      v26 = v24 - v25;
      if (!v21)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v16)
    {
      *&v42[4] = BYTE6(v41);
      v23 = *&v42[176];
      v10[10] = *&v42[160];
      v10[11] = v23;
      *(v10 + 24) = *&v42[192];
LABEL_32:
      v34 = *&v42[112];
      v10[6] = *&v42[96];
      v10[7] = v34;
      v35 = *&v42[144];
      v10[8] = *&v42[128];
      v10[9] = v35;
      v36 = *&v42[48];
      v10[2] = *&v42[32];
      v10[3] = v36;
      v37 = *&v42[80];
      v10[4] = *&v42[64];
      v10[5] = v37;
      v38 = *&v42[16];
      *v10 = *v42;
      v10[1] = v38;
LABEL_34:
      v39 = v41;
      sub_1A34C96B0();
      sub_1A31EC234(v13, v39);
      return v10;
    }

    LODWORD(v26) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = v26;
LABEL_25:
    if ((v26 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v26))
      {
        *&v42[4] = v26;
        v27 = *&v42[176];
        v10[10] = *&v42[160];
        v10[11] = v27;
        *(v10 + 24) = *&v42[192];
        v28 = *&v42[112];
        v10[6] = *&v42[96];
        v10[7] = v28;
        v29 = *&v42[144];
        v10[8] = *&v42[128];
        v10[9] = v29;
        v30 = *&v42[48];
        v10[2] = *&v42[32];
        v10[3] = v30;
        v31 = *&v42[80];
        v10[4] = *&v42[64];
        v10[5] = v31;
        v32 = *&v42[16];
        *v10 = *v42;
        v10[1] = v32;
        if (v16 == 2)
        {
          if (!__OFSUB__(*(v13 + 24), *(v13 + 16)))
          {
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_31;
        }

        if (!__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_34;
        }

LABEL_41:
        __break(1u);
      }

      goto LABEL_38;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *v42 = 12;
  sub_1A3332240(MEMORY[0x1E69E7CC0]);
  sub_1A33E2FAC(&qword_1EB0C7CA0, MEMORY[0x1E6967EB8]);
  sub_1A34C9560();
  v10 = v7;
  sub_1A34C9070();
  (*(v5 + 8))(v7, v4);
  swift_willThrow();
  sub_1A31EC234(v13, v41);
  return v10;
}

uint64_t sub_1A33E2FAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A33E2FF4()
{
  result = qword_1ED854B80;
  if (!qword_1ED854B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C5B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854B80);
  }

  return result;
}

ContactsUICore::AvatarPosterConfiguration::UserInfoKey_optional __swiftcall AvatarPosterConfiguration.UserInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A34CDC80();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t AvatarPosterConfiguration.UserInfoKey.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1A33E30F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = "CIPhotoEffect3DNoir";
  }

  else
  {
    v4 = "backgroundColorDescription";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "backgroundColorDescription";
  }

  else
  {
    v7 = "CIPhotoEffect3DNoir";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A34CDE30();
  }

  return v9 & 1;
}

uint64_t sub_1A33E31A4()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A33E3224()
{
  sub_1A34CD1C0();
}

uint64_t sub_1A33E3290()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A33E330C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A34CDC80();

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

void sub_1A33E336C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "backgroundColorDescription";
  }

  else
  {
    v3 = "CIPhotoEffect3DNoir";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

ContactsUICore::AvatarPosterConfiguration::ColorDescriptionKey_optional __swiftcall AvatarPosterConfiguration.ColorDescriptionKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A34CDC80();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AvatarPosterConfiguration.ColorDescriptionKey.rawValue.getter()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_1A33E3474()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

uint64_t sub_1A33E351C()
{
  sub_1A34CD1C0();
}

uint64_t sub_1A33E35B0()
{
  sub_1A34CDF20();
  sub_1A34CD1C0();

  return sub_1A34CDF70();
}

void sub_1A33E3660(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579570;
  v4 = 0xE400000000000000;
  v5 = 1702194274;
  if (*v1 != 2)
  {
    v5 = 0x6168706C61;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65657267;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

ContactsUICore::AvatarPosterConfiguration::BoundingShape_optional __swiftcall AvatarPosterConfiguration.BoundingShape.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if ((rawValue + 1) < 4)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1A33E36E8()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1 - 1);
  return sub_1A34CDF70();
}

uint64_t sub_1A33E3760()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1 - 1);
  return sub_1A34CDF70();
}

uint64_t AvatarPosterConfiguration.backgroundColorDescription.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AvatarPosterConfiguration.avatarRecordData.getter()
{
  v1 = *(v0 + 8);
  sub_1A32F74C0(v1, *(v0 + 16));
  return v1;
}

uint64_t AvatarPosterConfiguration.avatarRecordData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A31EEE60(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AvatarPosterConfiguration.avatarPoseData.getter()
{
  v1 = *(v0 + 24);
  sub_1A32F74C0(v1, *(v0 + 32));
  return v1;
}

uint64_t AvatarPosterConfiguration.avatarPoseData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A31EEE60(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t AvatarPosterConfiguration.avatarImageData.getter()
{
  v1 = *(v0 + 48);
  sub_1A32F74C0(v1, *(v0 + 56));
  return v1;
}

uint64_t AvatarPosterConfiguration.avatarImageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A31EEE60(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

id AvatarPosterConfiguration.backgroundColor.getter()
{
  sub_1A31EC930();

  return sub_1A33E3A1C(v0);
}

id sub_1A33E3A1C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = 1.0;
    v4 = 1.0;
LABEL_14:
    v7 = 1.0;
LABEL_15:
    v10 = 1.0;
    goto LABEL_16;
  }

  v2 = sub_1A3332110(6579570, 0xE300000000000000);
  v3 = 1.0;
  v4 = 1.0;
  if (v5)
  {
    v4 = *(*(a1 + 56) + 8 * v2);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v6 = sub_1A3332110(0x6E65657267, 0xE500000000000000);
  v7 = 1.0;
  if (v8)
  {
    v7 = *(*(a1 + 56) + 8 * v6);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v9 = sub_1A3332110(1702194274, 0xE400000000000000);
  v10 = 1.0;
  if (v11)
  {
    v3 = *(*(a1 + 56) + 8 * v9);
  }

  if (*(a1 + 16))
  {
    v12 = sub_1A3332110(0x6168706C61, 0xE500000000000000);
    if (v13)
    {
      v10 = *(*(a1 + 56) + 8 * v12);
    }
  }

LABEL_16:

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v14 initWithRed:v4 green:v7 blue:v3 alpha:v10];
}

uint64_t AvatarPosterConfiguration.init(backgroundColor:avatarRecordData:avatarPoseData:hasBody:avatarImageData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 8) = xmmword_1A34ED380;
  *(a9 + 24) = xmmword_1A34ED380;
  *(a9 + 48) = xmmword_1A34ED380;
  v18 = sub_1A33E3C00();

  *a9 = v18;
  sub_1A31EEE60(0, 0xF000000000000000);
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_1A31EEE60(0, 0xF000000000000000);
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  result = sub_1A31EEE60(0, 0xF000000000000000);
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

unint64_t sub_1A33E3C00()
{
  v9[17] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9[0] = 0;
  v6 = 0;
  v7 = 0;
  [v0 getRed:v9 green:&v8 blue:&v7 alpha:&v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DE7A0;
  *(inited + 32) = 6579570;
  *(inited + 40) = 0xE300000000000000;
  v2 = v8;
  *(inited + 48) = v9[0];
  *(inited + 56) = 0x6E65657267;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v2;
  *(inited + 80) = 1702194274;
  *(inited + 88) = 0xE400000000000000;
  v3 = v6;
  *(inited + 96) = v7;
  *(inited + 104) = 0x6168706C61;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = v3;
  v4 = sub_1A33EA1A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA928);
  swift_arrayDestroy();
  return v4;
}

uint64_t AvatarPosterConfiguration.RenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

void AvatarPosterConfiguration.renderingMode.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 16) >> 60 == 15)
  {
    *a1 = 2 * (*(v1 + 56) >> 60 == 15);
  }

  else
  {
    *a1 = 1;
  }
}

double static AvatarPosterConfiguration.stickerWaistLineHeightFraction(forBoundingShape:)(_BYTE *a1)
{
  result = 0.45;
  if (*a1 == 3)
  {
    return 0.7;
  }

  return result;
}

unint64_t sub_1A33E3E30()
{
  v1 = *v0;
  v2 = 0x6F50726174617661;
  v3 = 0x79646F42736168;
  if (v1 != 3)
  {
    v3 = 0x6D49726174617661;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  if (*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A33E3EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A33E4EF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A33E3F14(uint64_t a1)
{
  v2 = sub_1A33E4A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A33E3F50(uint64_t a1)
{
  v2 = sub_1A33E4A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AvatarPosterConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA8E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v8;
  v11 = *(v1 + 32);
  v29 = *(v1 + 40);
  v12 = *(v1 + 56);
  v22 = *(v1 + 48);
  v23 = v12;
  v24 = v11;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1A33E4A40();

  sub_1A34CDFA0();
  v27 = v9;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA8E8);
  sub_1A33E4AE8(&qword_1EB0C02E8, sub_1A33E4A94);
  sub_1A34CDDC0();
  if (v2)
  {

    return (*(v5 + 8))(v7, v16);
  }

  else
  {
    v18 = v24;
    v19 = v25;
    v21 = v5;

    v27 = v26;
    v28 = v10;
    v30 = 1;
    sub_1A32F74C0(v26, v10);
    sub_1A32ABF84();
    sub_1A34CDD70();
    sub_1A31EEE60(v27, v28);
    v27 = v19;
    v28 = v18;
    v30 = 2;
    sub_1A32F74C0(v19, v18);
    sub_1A34CDD70();
    sub_1A31EEE60(v27, v28);
    v20 = v21;
    LOBYTE(v27) = 3;
    sub_1A34CDD90();
    v27 = v22;
    v28 = v23;
    v30 = 4;
    sub_1A32F74C0(v22, v23);
    sub_1A34CDD70();
    sub_1A31EEE60(v27, v28);
    return (*(v20 + 8))(v7, v16);
  }
}

uint64_t AvatarPosterConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA8F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A33E4A40();
  sub_1A34CDF90();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1A31EEE60(0, 0xF000000000000000);
    sub_1A31EEE60(0, 0xF000000000000000);
    return sub_1A31EEE60(0, 0xF000000000000000);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA8E8);
    LOBYTE(v25) = 0;
    sub_1A33E4AE8(&qword_1EB0C02E0, sub_1A33E4B6C);
    sub_1A34CDD30();
    v24 = v29;
    LOBYTE(v25) = 1;
    sub_1A32ABE6C();
    sub_1A34CDCE0();
    v22 = v30;
    v23 = v29;
    sub_1A31EEE60(0, 0xF000000000000000);
    LOBYTE(v25) = 2;
    sub_1A34CDCE0();
    v21 = a2;
    v9 = v29;
    v10 = v30;
    sub_1A31EEE60(0, 0xF000000000000000);
    LOBYTE(v29) = 3;
    v39 = sub_1A34CDD00();
    v40 = 4;
    sub_1A34CDCE0();
    v39 &= 1u;
    (*(v6 + 8))(v8, v5);
    v12 = v37;
    v11 = v38;
    sub_1A31EEE60(0, 0xF000000000000000);
    v13 = v23;
    *&v25 = v24;
    *(&v25 + 1) = v23;
    v14 = v22;
    *&v26 = v22;
    *(&v26 + 1) = v9;
    *&v27 = v10;
    v15 = v39;
    BYTE8(v27) = v39;
    *&v28 = v12;
    *(&v28 + 1) = v11;
    v16 = v26;
    v17 = v21;
    *v21 = v25;
    v17[1] = v16;
    v18 = v28;
    v17[2] = v27;
    v17[3] = v18;
    sub_1A33E4BC0(&v25, &v29);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v29 = v24;
    v30 = v13;
    v31 = v14;
    v32 = v9;
    v33 = v10;
    v34 = v15;
    v35 = v12;
    v36 = v11;
    return sub_1A33E4BF8(&v29);
  }
}

BOOL _s14ContactsUICore25AvatarPosterConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v23 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a1 + 48);
  if ((sub_1A347F0C8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v4 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      v19 = v6;
      sub_1A32F74C0(v2, v4);
      sub_1A32F74C0(v7, v8);
      sub_1A31EEE60(v2, v4);
      goto LABEL_8;
    }

LABEL_6:
    sub_1A32F74C0(v2, v4);
    sub_1A32F74C0(v7, v8);
    sub_1A31EEE60(v2, v4);
    v12 = v7;
    v13 = v8;
LABEL_14:
    sub_1A31EEE60(v12, v13);
    return 0;
  }

  if (v8 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v19 = v6;
  sub_1A32F74C0(v2, v4);
  sub_1A32F74C0(v7, v8);
  v14 = sub_1A3352AE4(v2, v4, v7, v8);
  sub_1A31EEE60(v7, v8);
  sub_1A31EEE60(v2, v4);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (v5 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_1A32F74C0(v3, v5);
      sub_1A32F74C0(v9, v10);
      sub_1A31EEE60(v3, v5);
      if (v23 == v11)
      {
LABEL_19:
        if (v19 >> 60 == 15)
        {
          v17 = v21;
          if (v21 >> 60 == 15)
          {
            sub_1A32F74C0(v22, v19);
            sub_1A32F74C0(v20, v21);
            sub_1A31EEE60(v22, v19);
            return 1;
          }
        }

        else
        {
          v17 = v21;
          if (v21 >> 60 != 15)
          {
            sub_1A32F74C0(v22, v19);
            sub_1A32F74C0(v20, v21);
            v18 = sub_1A3352AE4(v22, v19, v20, v21);
            sub_1A31EEE60(v20, v21);
            sub_1A31EEE60(v22, v19);
            return (v18 & 1) != 0;
          }
        }

        sub_1A32F74C0(v22, v19);
        sub_1A32F74C0(v20, v17);
        sub_1A31EEE60(v22, v19);
        v12 = v20;
        v13 = v17;
        goto LABEL_14;
      }

      return 0;
    }

    goto LABEL_13;
  }

  if (v10 >> 60 == 15)
  {
LABEL_13:
    sub_1A32F74C0(v3, v5);
    sub_1A32F74C0(v9, v10);
    sub_1A31EEE60(v3, v5);
    v12 = v9;
    v13 = v10;
    goto LABEL_14;
  }

  sub_1A32F74C0(v3, v5);
  sub_1A32F74C0(v9, v10);
  v16 = sub_1A3352AE4(v3, v5, v9, v10);
  sub_1A31EEE60(v9, v10);
  sub_1A31EEE60(v3, v5);
  result = 0;
  if ((v16 & 1) != 0 && ((v23 ^ v11) & 1) == 0)
  {
    goto LABEL_19;
  }

  return result;
}

unint64_t sub_1A33E4A40()
{
  result = qword_1EB0C1D78;
  if (!qword_1EB0C1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1D78);
  }

  return result;
}

unint64_t sub_1A33E4A94()
{
  result = qword_1EB0C2A30;
  if (!qword_1EB0C2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2A30);
  }

  return result;
}

uint64_t sub_1A33E4AE8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA8E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A33E4B6C()
{
  result = qword_1EB0C2A20;
  if (!qword_1EB0C2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2A20);
  }

  return result;
}

unint64_t sub_1A33E4C2C()
{
  result = qword_1EB0CA8F8;
  if (!qword_1EB0CA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA8F8);
  }

  return result;
}

unint64_t sub_1A33E4C84()
{
  result = qword_1EB0CA900;
  if (!qword_1EB0CA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA900);
  }

  return result;
}

unint64_t sub_1A33E4CDC()
{
  result = qword_1EB0CA908;
  if (!qword_1EB0CA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA908);
  }

  return result;
}

unint64_t sub_1A33E4D34()
{
  result = qword_1EB0CA910;
  if (!qword_1EB0CA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA910);
  }

  return result;
}

unint64_t sub_1A33E4DEC()
{
  result = qword_1EB0CA918;
  if (!qword_1EB0CA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA918);
  }

  return result;
}

unint64_t sub_1A33E4E44()
{
  result = qword_1EB0C1D68;
  if (!qword_1EB0C1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1D68);
  }

  return result;
}

unint64_t sub_1A33E4E9C()
{
  result = qword_1EB0C1D70;
  if (!qword_1EB0C1D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1D70);
  }

  return result;
}

uint64_t sub_1A33E4EF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001A350AEE0 == a2 || (sub_1A34CDE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A3510F80 == a2 || (sub_1A34CDE30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F50726174617661 && a2 == 0xEE00617461446573 || (sub_1A34CDE30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79646F42736168 && a2 == 0xE700000000000000 || (sub_1A34CDE30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D49726174617661 && a2 == 0xEF61746144656761)
  {

    return 4;
  }

  else
  {
    v5 = sub_1A34CDE30();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

ContactsUICore::MonogramFont __swiftcall MonogramFont.weight(scaledBy:)(Swift::Double scaledBy)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = v3 * scaledBy;
  *v1 = *v2;
  *(v1 + 8) = v5;
  *(v1 + 16) = v4;
  result.width = *&v3;
  result.weight = *&v5;
  return result;
}

ContactsUICore::MonogramFont __swiftcall MonogramFont.width(_:)(ContactsUICore::MonogramFont::Width a1)
{
  v4 = *v1;
  v5 = *(v3 + 8);
  *v2 = *v3;
  *(v2 + 8) = v5;
  *(v2 + 16) = v4;
  result.width = *&v5;
  result.weight = *&v4;
  result.name = v1;
  return result;
}

uint64_t sub_1A33E510C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = *(result + 8);
    v11 = MEMORY[0x1E69E7CC0];
    sub_1A32EBC34(0, v2, 0);
    v5 = (a2 + 32);
    v6 = *(v11 + 16);
    do
    {
      v7 = *v5;
      v8 = *(v11 + 24);
      if (v6 >= v8 >> 1)
      {
        v10 = *v5;
        sub_1A32EBC34((v8 > 1), v6 + 1, 1);
        v7 = v10;
      }

      *(v11 + 16) = v6 + 1;
      *(v11 + 16 * v6 + 32) = v7;
      ++v5;
      ++v6;
      --v2;
    }

    while (v2);
    v9 = sub_1A331DA20(v11);

    sub_1A33E52F0(v9, v4);
  }

  return result;
}

uint64_t sub_1A33E5260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    result = sub_1A33EB050(a1);
    *a2 = v3;
    *(a2 + 8) = v5;
    *(a2 + 16) = v4;
  }

  else
  {
    sub_1A33EAFFC();
    swift_allocError();
    swift_willThrow();
    return sub_1A33EB050(a1);
  }

  return result;
}

uint64_t sub_1A33E52F0(uint64_t result, double a2)
{
  v2 = *(result + 16);
  if (v2 >= 2)
  {
    v3 = *(result + 32);
    if (v3 < a2 && *(result + 32 + 16 * v2 - 16) > a2)
    {
      v4 = result + 56;
      v5 = 1 - v2;
      while (v5)
      {
        if (v5 == 1)
        {
          goto LABEL_14;
        }

        v7 = *(v4 - 8);
        if (v3 > v7)
        {
          goto LABEL_15;
        }

        if (v3 > a2 || v7 < a2)
        {
          v4 += 16;
          v3 = v7;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        return result;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  return result;
}

ContactsUICore::MonogramFont __swiftcall MonogramFont.weight(_:)(ContactsUICore::MonogramFont::Weight a1)
{
  v4 = *v1;
  v5 = *(v3 + 16);
  *v2 = *v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  result.width = *&v5;
  result.weight = *&v4;
  result.name = v1;
  return result;
}

unint64_t MonogramFont.Name.description.getter()
{
  v1 = *v0;
  v2 = 0x6F72506673;
  v3 = 0xD000000000000013;
  v4 = 0x756F526F72506673;
  if (v1 != 4)
  {
    v4 = 0x6B726F5977656ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F436F72506673;
  if (v1 != 1)
  {
    v5 = 0x7078456F72506673;
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

unint64_t sub_1A33E54B0()
{
  v1 = *v0;
  v2 = 0x6F72506673;
  v3 = 0xD000000000000013;
  v4 = 0x756F526F72506673;
  if (v1 != 4)
  {
    v4 = 0x6B726F5977656ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F436F72506673;
  if (v1 != 1)
  {
    v5 = 0x7078456F72506673;
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

uint64_t sub_1A33E558C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A33EAC30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A33E55C0(uint64_t a1)
{
  v2 = sub_1A33E8638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A33E55FC(uint64_t a1)
{
  v2 = sub_1A33E8638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A33E5638(uint64_t a1)
{
  v2 = sub_1A33E868C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A33E5674(uint64_t a1)
{
  v2 = sub_1A33E868C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A33E56B0(uint64_t a1)
{
  v2 = sub_1A33E8830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A33E56EC(uint64_t a1)
{
  v2 = sub_1A33E8830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A33E5728(uint64_t a1)
{
  v2 = sub_1A33E8734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A33E5764(uint64_t a1)
{
  v2 = sub_1A33E8734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A33E57A0(uint64_t a1)
{
  v2 = sub_1A33E87DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A33E57DC(uint64_t a1)
{
  v2 = sub_1A33E87DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A33E5818(uint64_t a1)
{
  v2 = sub_1A33E8788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A33E5854(uint64_t a1)
{
  v2 = sub_1A33E8788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A33E5890(uint64_t a1)
{
  v2 = sub_1A33E86E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A33E58CC(uint64_t a1)
{
  v2 = sub_1A33E86E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MonogramFont.Name.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA960);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA968);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA970);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA978);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA980);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA988);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA990);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A33E8638();
  sub_1A34CDFA0();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1A33E8734();
      v21 = v33;
      v22 = v42;
      sub_1A34CDD50();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1A33E86E0();
      v21 = v36;
      v22 = v42;
      sub_1A34CDD50();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1A33E868C();
      v21 = v39;
      v22 = v42;
      sub_1A34CDD50();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1A33E87DC();
      v21 = v27;
      v22 = v42;
      sub_1A34CDD50();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1A33E8788();
      v21 = v30;
      v22 = v42;
      sub_1A34CDD50();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1A33E8830();
  v22 = v42;
  sub_1A34CDD50();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

uint64_t MonogramFont.Name.hashValue.getter()
{
  v1 = *v0;
  sub_1A34CDF20();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t MonogramFont.Name.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA9D0);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA9D8);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA9E0);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA9E8);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA9F0);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA9F8);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAA00);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1A33E8638();
  v22 = v56;
  sub_1A34CDF90();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1A34CDD40();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1A32D9FB0();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1A34CDB20();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C67E0);
      *v36 = &type metadata for MonogramFont.Name;
      sub_1A34CDCB0();
      sub_1A34CDB10();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1A33E8734();
          sub_1A34CDCA0();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1A33E86E0();
          sub_1A34CDCA0();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1A33E868C();
          sub_1A34CDCA0();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1A33E87DC();
            v31 = v56;
            sub_1A34CDCA0();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1A33E8788();
            v31 = v51;
            sub_1A34CDCA0();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1A33E8830();
          sub_1A34CDCA0();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v57);
}

uint64_t sub_1A33E6900()
{
  v1 = *v0;
  sub_1A34CDF20();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1A58EF770](*&v2);
  return sub_1A34CDF70();
}

uint64_t sub_1A33E695C()
{
  v1 = *v0;
  sub_1A34CDF20();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1A58EF770](*&v2);
  return sub_1A34CDF70();
}

double MonogramFont.weight.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double MonogramFont.weight.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double MonogramFont.width.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double MonogramFont.width.setter(double *a1)
{
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

ContactsUICore::MonogramFont __swiftcall MonogramFont.init(name:weight:width:)(ContactsUICore::MonogramFont::Name name, ContactsUICore::MonogramFont::Weight weight, ContactsUICore::MonogramFont::Width width)
{
  v6 = *v3;
  v7 = *v4;
  *v5 = *name;
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  result.width = *&v7;
  result.weight = *&v6;
  result.name = name;
  return result;
}

double sub_1A33E6B4C()
{
  byte_1EB0C28B0 = 1;
  result = 650.0;
  *&algn_1EB0C28B1[7] = xmmword_1A34F1570;
  return result;
}

double sub_1A33E6B94()
{
  byte_1EB0C28D8 = 2;
  result = 650.0;
  unk_1EB0C28E0 = xmmword_1A34F1580;
  return result;
}

double sub_1A33E6BDC()
{
  byte_1EB0CA930 = 3;
  result = 556.0;
  unk_1EB0CA938 = xmmword_1A34F1590;
  return result;
}

double sub_1A33E6C24()
{
  byte_1EB0C28F8 = 4;
  result = 700.0;
  unk_1EB0C2900 = xmmword_1A34F1560;
  return result;
}

double sub_1A33E6C6C()
{
  byte_1EB0C2890 = 5;
  result = 496.0;
  *&algn_1EB0C2891[7] = xmmword_1A34F15A0;
  return result;
}

__n128 sub_1A33E6CB4@<Q0>(void *a1@<X0>, _BYTE *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    v7 = a4;
    swift_once();
    a2 = v5;
    a4 = v7;
    a3 = v6;
  }

  *a4 = *a2;
  result = *a3;
  *(a4 + 8) = *a3;
  return result;
}

uint64_t sub_1A33E6D1C()
{
  v1 = 0x746867696577;
  if (*v0 != 1)
  {
    v1 = 0x6874646977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1A33E6D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A33EAE44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A33E6D90(uint64_t a1)
{
  v2 = sub_1A33E8884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A33E6DCC(uint64_t a1)
{
  v2 = sub_1A33E8884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MonogramFont.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAA08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v10 = *(v1 + 1);
  v9 = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A33E8884();
  sub_1A34CDFA0();
  LOBYTE(v13) = v8;
  v14 = 0;
  sub_1A33E88D8();
  sub_1A34CDDC0();
  if (!v2)
  {
    v13 = v10;
    v14 = 1;
    sub_1A33E892C();
    sub_1A34CDDC0();
    v13 = v9;
    v14 = 2;
    sub_1A33E8980();
    sub_1A34CDDC0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MonogramFont.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1A58EF750](*v0);
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1A58EF770](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  return MEMORY[0x1A58EF770](*&v4);
}

uint64_t MonogramFont.hashValue.getter()
{
  sub_1A34CDF20();
  MonogramFont.hash(into:)();
  return sub_1A34CDF70();
}

uint64_t MonogramFont.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAA30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A33E8884();
  sub_1A34CDF90();
  if (!v2)
  {
    v14 = 0;
    sub_1A33E89D4();
    sub_1A34CDD30();
    v9 = v13;
    v14 = 1;
    sub_1A33E8A28();
    sub_1A34CDD30();
    v11 = v13;
    v14 = 2;
    sub_1A33E8A7C();
    sub_1A34CDD30();
    (*(v6 + 8))(v8, v5);
    v12 = v13;
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A33E72BC()
{
  sub_1A34CDF20();
  MonogramFont.hash(into:)();
  return sub_1A34CDF70();
}

uint64_t sub_1A33E7314()
{
  sub_1A34CDF20();
  MonogramFont.hash(into:)();
  return sub_1A34CDF70();
}

ContactsUICore::MonogramFont __swiftcall MonogramFont.init(platformFont:)(CTFontRef platformFont)
{
  v3 = v1;
  v4 = CTFontCopyTraits(platformFont);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v16 = 0;
    sub_1A34CCF80();
  }

  v5 = CTFontCopyPostScriptName(platformFont);
  v6 = sub_1A34CD110();
  v8 = v7;

  v18 = 0u;
  v19 = 0u;
  sub_1A3288FDC(&v18, &qword_1EB0C7690);
  v18 = 0u;
  v19 = 0u;
  sub_1A3288FDC(&v18, &qword_1EB0C7690);
  sub_1A33E7E50(&v16);
  v9 = v16;
  if (*MEMORY[0x1E69658B8])
  {
    if (*MEMORY[0x1E69658A8])
    {
      if (*MEMORY[0x1E69658C8])
      {
        if (!*MEMORY[0x1E69658D0])
        {

          v12 = 5;
          goto LABEL_19;
        }

        if (v6 == 0x65522D495546532ELL && v8 == 0xED000072616C7567 || (sub_1A34CDE30() & 1) != 0 || v6 == 0x654D2D495546532ELL && v8 == 0xEC0000006D756964 || (sub_1A34CDE30() & 1) != 0)
        {

          v12 = 0;
          goto LABEL_19;
        }

        v16 = v6;
        v17 = v8;
        *&v18 = 0x65736E65646E6F43;
        *(&v18 + 1) = 0xE900000000000064;
        sub_1A328A95C();
        if (sub_1A34CD910())
        {

          v12 = 0;
          v13 = 0x404E000000000000;
          goto LABEL_20;
        }

        v16 = v6;
        v17 = v8;
        *&v18 = 0x6465646E61707845;
        *(&v18 + 1) = 0xE800000000000000;
        if (sub_1A34CD910())
        {

          v12 = 0;
          v13 = 0x4060800000000000;
          goto LABEL_20;
        }

        v16 = v6;
        v17 = v8;
        strcpy(&v18, "CompactRounded");
        HIBYTE(v18) = -18;
        if (sub_1A34CD910())
        {

          v12 = 3;
          goto LABEL_19;
        }

        v16 = v6;
        v17 = v8;
        *&v18 = 0x6465646E756F52;
        *(&v18 + 1) = 0xE700000000000000;
        if ((sub_1A34CD910() & 1) == 0)
        {
          v16 = v6;
          v17 = v8;
          *&v18 = 0x6B726F5977654ELL;
          *(&v18 + 1) = 0xE700000000000000;

          v15 = sub_1A34CD910();
          swift_bridgeObjectRelease_n();

          if (v15)
          {
            v12 = 5;
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_19;
        }
      }

      else
      {
      }

      v12 = 4;
      goto LABEL_19;
    }

    v12 = 3;
  }

  else
  {

    v12 = 0;
  }

LABEL_19:
  v13 = 0x4059000000000000;
LABEL_20:
  v14 = *&v13;
  *v3 = v12;
  *(v3 + 8) = v9;
  *(v3 + 16) = v13;
  result.width = *&v11;
  result.weight = *&v14;
  result.name = v10;
  return result;
}

void sub_1A33E7E50(uint64_t *a1@<X8>)
{
  v3 = CTFontCopyVariation(v1);
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = 0;
      sub_1A34CCF80();
    }
  }

  memset(v6, 0, sizeof(v6));
  sub_1A3288FDC(v6, &qword_1EB0C7690);
  sub_1A33E7FC4(a1);
}

void sub_1A33E7FC4(uint64_t *a1@<X8>)
{
  v2 = CTFontCopyVariationAxesInternal();
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v5 = *(v3 + 16);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }

    v17[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6DA0);
    sub_1A34CD360();
  }

  v5 = *(v3 + 16);
  if (v5)
  {
LABEL_5:
    v6 = 0;
    v7 = *MEMORY[0x1E6965910];
    v8 = *MEMORY[0x1E6965908];
    while (1)
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *(v3 + 8 * v6 + 32);
      type metadata accessor for CFString(0);
      sub_1A31F9F18(&qword_1ED854618);

      v10 = v7;
      sub_1A34CDA40();
      if (*(v9 + 16))
      {
        v11 = sub_1A33DB3BC(v17);
        if (v12)
        {
          sub_1A31EE354(*(v9 + 56) + 32 * v11, v18);
          sub_1A32F7584(v17);
          if ((swift_dynamicCast() & 1) == 0 || v7 != 2003265652)
          {

            goto LABEL_7;
          }

          v13 = v8;
          sub_1A34CDA40();
          if (*(v9 + 16))
          {
            v14 = sub_1A33DB3BC(v17);
            if (v15)
            {
              sub_1A31EE354(*(v9 + 56) + 32 * v14, v18);
              sub_1A32F7584(v17);

              if (swift_dynamicCast())
              {

                v16 = v8;
                goto LABEL_21;
              }

              goto LABEL_7;
            }
          }
        }
      }

      sub_1A32F7584(v17);
LABEL_7:
      if (v5 == ++v6)
      {

        v16 = 0x4079000000000000;
        goto LABEL_21;
      }
    }
  }

LABEL_20:

  v16 = 0x4079000000000000;
LABEL_21:
  *a1 = v16;
}

uint64_t sub_1A33E8268(uint64_t result, unsigned __int8 a2, double a3, double a4)
{
  *result = a2;
  *(result + 8) = 1;
  *(result + 16) = a3;
  *(result + 24) = a4;
  return result;
}

void *sub_1A33E8280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7F0);
  v3 = sub_1A34CDC60();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_1A33DB254(v4, v5, v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = v3[6] + 24 * v10;
    *v13 = v4;
    *(v13 + 8) = v5;
    *(v13 + 16) = v6;
    *(v3[7] + 8 * v10) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 24);
    v5 = *(v12 - 2);
    v6 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_1A33DB254(v4, v5, v6);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A33E83BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7E8);
    v3 = sub_1A34CDC60();
    sub_1A34C9010();
    for (i = (a1 + 104); ; i += 80)
    {
      v5 = *(i - 8);
      v6 = *(i - 56);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      *&v20 = *(i - 9);
      *(&v20 + 1) = v5;
      v21[0] = v6;
      *&v21[8] = *(i - 3);

      sub_1A31FBC5C(v7, v8, v9, v10, v11);
      result = sub_1A33DB1D8(&v20);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 40 * result;
      v15 = *v21;
      *v14 = v20;
      *(v14 + 16) = v15;
      *(v14 + 32) = *&v21[16];
      v16 = v3[7] + 40 * result;
      *v16 = v7;
      *(v16 + 8) = v8;
      *(v16 + 16) = v9;
      *(v16 + 24) = v10;
      *(v16 + 32) = v11;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33E8518(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7F8);
  v3 = sub_1A34CDC60();
  v4 = a1[4];
  v5 = *(a1 + 5);
  result = sub_1A33DB370(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = a1 + 7;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_1A33DB370(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A33E8638()
{
  result = qword_1EB0CA998;
  if (!qword_1EB0CA998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA998);
  }

  return result;
}

unint64_t sub_1A33E868C()
{
  result = qword_1EB0CA9A0;
  if (!qword_1EB0CA9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA9A0);
  }

  return result;
}

unint64_t sub_1A33E86E0()
{
  result = qword_1EB0CA9A8;
  if (!qword_1EB0CA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA9A8);
  }

  return result;
}

unint64_t sub_1A33E8734()
{
  result = qword_1EB0CA9B0;
  if (!qword_1EB0CA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA9B0);
  }

  return result;
}

unint64_t sub_1A33E8788()
{
  result = qword_1EB0CA9B8;
  if (!qword_1EB0CA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA9B8);
  }

  return result;
}

unint64_t sub_1A33E87DC()
{
  result = qword_1EB0CA9C0;
  if (!qword_1EB0CA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA9C0);
  }

  return result;
}

unint64_t sub_1A33E8830()
{
  result = qword_1EB0CA9C8;
  if (!qword_1EB0CA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA9C8);
  }

  return result;
}

unint64_t sub_1A33E8884()
{
  result = qword_1EB0CAA10;
  if (!qword_1EB0CAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA10);
  }

  return result;
}

unint64_t sub_1A33E88D8()
{
  result = qword_1EB0CAA18;
  if (!qword_1EB0CAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA18);
  }

  return result;
}

unint64_t sub_1A33E892C()
{
  result = qword_1EB0CAA20;
  if (!qword_1EB0CAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA20);
  }

  return result;
}

unint64_t sub_1A33E8980()
{
  result = qword_1EB0CAA28;
  if (!qword_1EB0CAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA28);
  }

  return result;
}

unint64_t sub_1A33E89D4()
{
  result = qword_1EB0CAA38;
  if (!qword_1EB0CAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA38);
  }

  return result;
}

unint64_t sub_1A33E8A28()
{
  result = qword_1EB0CAA40;
  if (!qword_1EB0CAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA40);
  }

  return result;
}

unint64_t sub_1A33E8A7C()
{
  result = qword_1EB0CAA48;
  if (!qword_1EB0CAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA48);
  }

  return result;
}

unint64_t sub_1A33E8AD0()
{
  result = qword_1EB0C0220;
  if (!qword_1EB0C0220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CAA50);
    sub_1A31F9F18(&qword_1ED854618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0220);
  }

  return result;
}

unint64_t sub_1A33E8B74()
{
  result = qword_1EB0CAA58;
  if (!qword_1EB0CAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA58);
  }

  return result;
}

unint64_t sub_1A33E8BCC()
{
  result = qword_1EB0CAA60;
  if (!qword_1EB0CAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA60);
  }

  return result;
}

unint64_t sub_1A33E8C24()
{
  result = qword_1EB0CAA68;
  if (!qword_1EB0CAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GradientDefinition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GradientDefinition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A33E8E3C()
{
  result = qword_1EB0CAA70;
  if (!qword_1EB0CAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA70);
  }

  return result;
}

unint64_t sub_1A33E8E94()
{
  result = qword_1EB0CAA78;
  if (!qword_1EB0CAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA78);
  }

  return result;
}

unint64_t sub_1A33E8EEC()
{
  result = qword_1EB0CAA80;
  if (!qword_1EB0CAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA80);
  }

  return result;
}

unint64_t sub_1A33E8F44()
{
  result = qword_1EB0CAA88;
  if (!qword_1EB0CAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA88);
  }

  return result;
}

unint64_t sub_1A33E8F9C()
{
  result = qword_1EB0CAA90;
  if (!qword_1EB0CAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA90);
  }

  return result;
}

unint64_t sub_1A33E8FF4()
{
  result = qword_1EB0CAA98;
  if (!qword_1EB0CAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAA98);
  }

  return result;
}

unint64_t sub_1A33E904C()
{
  result = qword_1EB0CAAA0;
  if (!qword_1EB0CAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAA0);
  }

  return result;
}

unint64_t sub_1A33E90A4()
{
  result = qword_1EB0CAAA8;
  if (!qword_1EB0CAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAA8);
  }

  return result;
}

unint64_t sub_1A33E90FC()
{
  result = qword_1EB0CAAB0;
  if (!qword_1EB0CAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAB0);
  }

  return result;
}

unint64_t sub_1A33E9154()
{
  result = qword_1EB0CAAB8;
  if (!qword_1EB0CAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAB8);
  }

  return result;
}

unint64_t sub_1A33E91AC()
{
  result = qword_1EB0CAAC0;
  if (!qword_1EB0CAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAC0);
  }

  return result;
}

unint64_t sub_1A33E9204()
{
  result = qword_1EB0CAAC8;
  if (!qword_1EB0CAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAC8);
  }

  return result;
}

unint64_t sub_1A33E925C()
{
  result = qword_1EB0CAAD0;
  if (!qword_1EB0CAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAD0);
  }

  return result;
}

unint64_t sub_1A33E92B4()
{
  result = qword_1EB0CAAD8;
  if (!qword_1EB0CAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAD8);
  }

  return result;
}

unint64_t sub_1A33E930C()
{
  result = qword_1EB0CAAE0;
  if (!qword_1EB0CAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAE0);
  }

  return result;
}

unint64_t sub_1A33E9364()
{
  result = qword_1EB0CAAE8;
  if (!qword_1EB0CAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAE8);
  }

  return result;
}

unint64_t sub_1A33E93BC()
{
  result = qword_1EB0CAAF0;
  if (!qword_1EB0CAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAF0);
  }

  return result;
}

unint64_t sub_1A33E9414()
{
  result = qword_1EB0CAAF8;
  if (!qword_1EB0CAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAAF8);
  }

  return result;
}

unint64_t sub_1A33E9468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB38);
    v3 = sub_1A34CDC60();
    sub_1A34C9010();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1A31F9E64(v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33E9554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB48);
    v3 = sub_1A34CDC60();
    v4 = a1 + 32;
    sub_1A34C9010();
    while (1)
    {
      sub_1A328D790(v4, &v11, &qword_1EB0CAB50);
      v5 = v11;
      result = sub_1A31FA5B8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A31FA144(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33E967C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CABD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA7B0);
    v7 = sub_1A34CDC60();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1A34C9010();
    while (1)
    {
      sub_1A328D790(v9, v5, &qword_1EB0CABD0);
      result = sub_1A33DB400(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ProminentColorCache.CacheKey();
      result = sub_1A31F5B24(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ProminentColorCache.CacheKey);
      v16 = v7[7] + 16 * v13;
      v17 = v8[8];
      *v16 = *v8;
      *(v16 + 8) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33E9870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB08);
    v3 = sub_1A34CDC60();
    v4 = a1 + 32;
    sub_1A34C9010();
    while (1)
    {
      sub_1A328D790(v4, &v11, &qword_1EB0C6D98);
      v5 = v11;
      result = sub_1A31FA5B8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A31FA144(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33E9998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB00);
    v3 = sub_1A34CDC60();
    sub_1A34C9010();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1A31FA5B8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33E9A90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB98);
    v3 = sub_1A34CDC60();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7168);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  if (!v2)
  {
    return v3;
  }

  v9 = *(v5 + 48);
  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  sub_1A34C9010();
  while (1)
  {
    sub_1A328D790(v10, v8, &qword_1EB0C7168);
    result = sub_1A33DB4CC(*v8);
    if (v13)
    {
      break;
    }

    v14 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = *v8;
    v15 = v3[7];
    v16 = sub_1A34C8F30();
    result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v8[v9], v16);
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_12;
    }

    v3[2] = v19;
    v10 += v11;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1A33E9C7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB90);
    v3 = sub_1A34CDC60();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C79D0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  if (!v2)
  {
    return v3;
  }

  v9 = *(v5 + 48);
  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  sub_1A34C9010();
  while (1)
  {
    sub_1A328D790(v10, v8, &qword_1EB0C79D0);
    result = sub_1A33DB510(*v8);
    if (v13)
    {
      break;
    }

    v14 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = *v8;
    v15 = v3[7];
    v16 = sub_1A34C8F30();
    result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v8[v9], v16);
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_12;
    }

    v3[2] = v19;
    v10 += v11;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1A33E9E68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7CA8);
    v3 = sub_1A34CDC60();
    v4 = a1 + 32;
    sub_1A34C9010();
    while (1)
    {
      sub_1A328D790(v4, &v13, &qword_1EB0C9EA0);
      v5 = v13;
      v6 = v14;
      result = sub_1A3332110(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A31FA144(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33E9F98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB80);
    v3 = sub_1A34CDC60();
    sub_1A34C9010();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1A34C9010();

      result = sub_1A33DB620(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33EA098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA820);
  v3 = sub_1A34CDC60();
  v13 = *(a1 + 32);
  result = sub_1A31ED4A8(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1A34C9010();
    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;
    sub_1A34C9010();
    result = sub_1A31ED4A8(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A33EA1A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB78);
    v3 = sub_1A34CDC60();
    sub_1A34C9010();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A3332110(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33EA2AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA7A0);
    v3 = sub_1A34CDC60();
    v4 = a1 + 32;
    sub_1A34C9010();
    while (1)
    {
      sub_1A328D790(v4, v13, &qword_1EB0CAB10);
      result = sub_1A33DB3BC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A31FA144(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33EA3E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB18);
    v3 = sub_1A34CDC60();
    v4 = a1 + 32;
    sub_1A34C9010();
    while (1)
    {
      sub_1A328D790(v4, &v11, &qword_1EB0CAB20);
      v5 = v11;
      result = sub_1A31FA5B8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A31FA144(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33EA510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB30);
    v3 = sub_1A34CDC60();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1A31ED4A8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33EA5F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA7C0);
    v7 = sub_1A34CDC60();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_1A34C9010();
    while (1)
    {
      sub_1A328D790(v9, v5, &qword_1EB0CAB88);
      result = sub_1A33DB69C(*v5, *(v5 + 1), *(v5 + 2));
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 24 * result;
      v15 = *(v5 + 1);
      v16 = *(v5 + 2);
      *v14 = *v5;
      *(v14 + 8) = v15;
      *(v14 + 16) = v16;
      v17 = v7[7];
      v18 = type metadata accessor for ContactLikeness(0);
      result = sub_1A31F5B24(&v5[v8], v17 + *(*(v18 - 8) + 72) * v13, type metadata accessor for ContactLikeness);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33EA838(void *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = sub_1A34CDC60();
  v8 = a1[4];
  v9 = a1[5];
  result = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v20 = v9;
    return v7;
  }

  v12 = (a1 + 7);
  while (1)
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + 8 * result) = v8;
    *(v7[7] + 8 * result) = v9;
    v13 = v7[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v7[2] = v15;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v8 = *(v12 - 1);
    v17 = *v12;
    v18 = v9;
    result = a4(v8);
    v12 = v16;
    v9 = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A33EA940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB40);
    v3 = sub_1A34CDC60();
    sub_1A34C9010();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A3332110(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A33EAA44(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB68);
    v3 = sub_1A34CDC60();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CAB70);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  if (!v2)
  {
    return v3;
  }

  v9 = *(v5 + 48);
  v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11 = *(v6 + 72);
  sub_1A34C9010();
  while (1)
  {
    sub_1A328D790(v10, v8, &qword_1EB0CAB70);
    result = sub_1A33DB798(*v8);
    if (v13)
    {
      break;
    }

    v14 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = *v8;
    v15 = v3[7];
    v16 = sub_1A34C8F30();
    result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v8[v9], v16);
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_12;
    }

    v3[2] = v19;
    v10 += v11;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1A33EAC30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72506673 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A34CDE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F436F72506673 && a2 == 0xEE006465736E6564 || (sub_1A34CDE30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7078456F72506673 && a2 == 0xED00006465646E61 || (sub_1A34CDE30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A3510FA0 == a2 || (sub_1A34CDE30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F526F72506673 && a2 == 0xEC0000006465646ELL || (sub_1A34CDE30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B726F5977656ELL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A34CDE30();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A33EAE44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A34CDE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_1A34CDE30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A34CDE30();

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

unint64_t sub_1A33EAF54()
{
  result = qword_1EB0CAB58;
  if (!qword_1EB0CAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAB58);
  }

  return result;
}

unint64_t sub_1A33EAFA8()
{
  result = qword_1EB0CAB60;
  if (!qword_1EB0CAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CAB60);
  }

  return result;
}

unint64_t sub_1A33EAFFC()
{
  result = qword_1EB0CABA0;
  if (!qword_1EB0CABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CABA0);
  }

  return result;
}

uint64_t sub_1A33EB050(uint64_t a1)
{
  v2 = type metadata accessor for MonogramRecipe_Font(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A33EB0C0()
{
  result = qword_1EB0CABD8;
  if (!qword_1EB0CABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CABD8);
  }

  return result;
}

uint64_t sub_1A33EB15C(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v27 = result + 32;
    v21 = *MEMORY[0x1E695C170];
    v24 = *MEMORY[0x1E695C178];
    v22 = *MEMORY[0x1E695C1B8];
    v23 = *MEMORY[0x1E695C150];
    v4 = MEMORY[0x1E69E7CC0];
    v25 = *(result + 16);
    while (v3 < v2)
    {
      v5 = v3;
      if (__OFADD__(v3++, 1))
      {
        goto LABEL_33;
      }

      v7 = *(v27 + v5);
      if (v7 <= 1)
      {
        v8 = v23;
        if (v7)
        {
          v8 = v22;
        }

LABEL_14:
        v9 = v8;
        v10 = *a2;
        v11 = *(*a2 + 16);

        v12 = 0;
        while (1)
        {
          if (v11 == v12)
          {

            goto LABEL_4;
          }

          if (v12 >= *(v10 + 16))
          {
            break;
          }

          v13 = sub_1A34CD110();
          v15 = v14;
          if (v13 == sub_1A34CD110() && v15 == v16)
          {

LABEL_24:

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1A3299408(0, v4[2] + 1, 1, v4);
              v4 = result;
            }

            v20 = v4[2];
            v19 = v4[3];
            if (v20 >= v19 >> 1)
            {
              result = sub_1A3299408((v19 > 1), v20 + 1, 1, v4);
              v4 = result;
            }

            v4[2] = v20 + 1;
            v4[v20 + 4] = v9;
LABEL_4:
            v2 = v25;
            goto LABEL_5;
          }

          ++v12;
          v18 = sub_1A34CDE30();

          if (v18)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        break;
      }

      v8 = v24;
      if (v7 == 2)
      {
        goto LABEL_14;
      }

      if (v7 == 3)
      {
        v8 = v21;
        goto LABEL_14;
      }

LABEL_5:
      if (v3 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1A33EB3B0(uint64_t a1)
{
  v324 = type metadata accessor for ContactCardActionRow();
  MEMORY[0x1EEE9AC00](v324);
  v322 = (v304 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v321 = (v304 - v5);
  MEMORY[0x1EEE9AC00](v6);
  v315 = v304 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v314 = v304 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v304 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v304 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v313 = v304 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v312 = v304 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v318 = v304 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v323 = v304 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v311 = v304 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v309 = v304 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v317 = v304 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v316 = v304 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v304 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v304 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v304 - v39;
  if (qword_1EB0C12B0 != -1)
  {
    swift_once();
  }

  v41 = sub_1A34CA250();
  v42 = __swift_project_value_buffer(v41, qword_1EB0ED050);
  sub_1A31F6A5C(a1, v40, type metadata accessor for ContactCardActionRow);
  sub_1A31F6A5C(a1, v37, type metadata accessor for ContactCardActionRow);
  sub_1A31F6A5C(a1, v34, type metadata accessor for ContactCardActionRow);
  v43 = v1;
  v44 = sub_1A34CA230();
  v45 = sub_1A34CD660();

  v46 = os_log_type_enabled(v44, v45);
  v310 = v12;
  v308 = v15;
  if (v46)
  {
    v47 = v43;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v306 = v49;
    v307 = swift_slowAlloc();
    v327[0] = v307;
    *v48 = 138413314;
    *(v48 + 4) = v47;
    *v49 = v47;
    *(v48 + 12) = 2080;
    swift_getKeyPath();
    v320 = v42;
    v305 = v45;
    v325 = v47;
    sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
    v319 = a1;
    v50 = v47;
    sub_1A34C99A0();

    v51 = *(&v50[1].isa + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
    v325 = *(&v50->isa + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
    v326 = v51;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A80);
    v52 = sub_1A34CD160();
    v54 = sub_1A31EE23C(v52, v53, v327);

    *(v48 + 14) = v54;
    *(v48 + 22) = 2080;
    v55 = *(v40 + 2);
    v56 = *(v40 + 3);

    sub_1A32D3FF8(v40);
    v57 = sub_1A31EE23C(v55, v56, v327);
    a1 = v319;

    *(v48 + 24) = v57;
    *(v48 + 32) = 2080;
    v58 = v37[8];
    v325 = *v37;
    LOBYTE(v326) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAC40);
    v59 = sub_1A34CD160();
    v61 = v60;
    sub_1A32D3FF8(v37);
    v62 = sub_1A31EE23C(v59, v61, v327);

    *(v48 + 34) = v62;
    *(v48 + 42) = 2080;
    v63 = v324;
    v64 = &v34[v324[17]];
    v65 = *(v64 + 1);
    v325 = *v64;
    v326 = v65;

    v66 = sub_1A34CD160();
    v68 = v67;
    sub_1A32D3FF8(v34);
    v69 = sub_1A31EE23C(v66, v68, v327);
    v42 = v320;

    *(v48 + 44) = v69;
    _os_log_impl(&dword_1A31E6000, v44, v305, "%@: didSelectActionRow called for contact identifier %s with row properties: row.title: %s, row.actionType: %s, row.actionTargetContactIdentifier: %s", v48, 0x34u);
    v70 = v306;
    sub_1A32D376C(v306);
    MEMORY[0x1A58F1010](v70, -1, -1);
    v71 = v307;
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v71, -1, -1);
    v72 = v48;
    v43 = v47;
    MEMORY[0x1A58F1010](v72, -1, -1);
  }

  else
  {

    sub_1A32D3FF8(v34);
    sub_1A32D3FF8(v37);
    sub_1A32D3FF8(v40);
    v63 = v324;
  }

  v73 = v323;
  if ((*(a1 + 8) & 1) == 0 && *(a1 + v63[14]) == 1)
  {
    v74 = *a1;
    swift_getKeyPath();
    v325 = v43;
    v307 = sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
    sub_1A34C99A0();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v76 = Strong;
      v77 = *(a1 + v63[16]);
      if (v77)
      {
        ObjectType = swift_getObjectType();
        if (ObjectType == sub_1A31EC194(0, &qword_1EB0C01A8))
        {
          sub_1A31F6A5C(a1, v73, type metadata accessor for ContactCardActionRow);
          v170 = v318;
          sub_1A31F6A5C(a1, v318, type metadata accessor for ContactCardActionRow);
          v171 = v43;
          v169 = v77;
          v172 = sub_1A34CA230();
          v173 = sub_1A34CD650();

          if (os_log_type_enabled(v172, v173))
          {
            v174 = swift_slowAlloc();
            v175 = swift_slowAlloc();
            v322 = swift_slowAlloc();
            v327[0] = v322;
            *v174 = 138413314;
            *(v174 + 4) = v171;
            *v175 = v171;
            v324 = v76;
            *(v174 + 12) = 2080;
            v176 = v171;
            [v169 classForCoder];
            swift_getObjCClassMetadata();
            v177 = sub_1A34CE050();
            v179 = sub_1A31EE23C(v177, v178, v327);

            *(v174 + 14) = v179;
            *(v174 + 22) = 2080;
            v325 = v169;
            v180 = sub_1A34CD160();
            v182 = sub_1A31EE23C(v180, v181, v327);

            *(v174 + 24) = v182;
            *(v174 + 32) = 2080;
            v183 = *(v73 + 16);
            v184 = *(v73 + 24);

            sub_1A32D3FF8(v73);
            v185 = sub_1A31EE23C(v183, v184, v327);

            *(v174 + 34) = v185;
            *(v174 + 42) = 2080;
            v186 = *(v170 + 8);
            v325 = *v170;
            LOBYTE(v326) = v186;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAC40);
            v187 = sub_1A34CD160();
            v189 = v188;
            sub_1A32D3FF8(v170);
            v190 = sub_1A31EE23C(v187, v189, v327);

            *(v174 + 44) = v190;
            _os_log_impl(&dword_1A31E6000, v172, v173, "%@: Unexpected CNUIUserActionItem encountered - actionItem %s(%s), row.title: %s, row.actionType: %s", v174, 0x34u);
            sub_1A32D376C(v175);
            MEMORY[0x1A58F1010](v175, -1, -1);
            v191 = v322;
            swift_arrayDestroy();
            MEMORY[0x1A58F1010](v191, -1, -1);
            MEMORY[0x1A58F1010](v174, -1, -1);
            swift_unknownObjectRelease();

            return;
          }

          swift_unknownObjectRelease();

          v238 = v170;
        }

        else
        {
          v323 = v74;
          v320 = v42;
          v79 = v77;
          v80 = [v79 contactProperty];
          v81 = [v80 contact];

          v82 = [v81 identifier];
          v83 = sub_1A34CD110();
          v85 = v84;

          v86 = HIBYTE(v85) & 0xF;
          if ((v85 & 0x2000000000000000) == 0)
          {
            v86 = v83 & 0xFFFFFFFFFFFFLL;
          }

          if (v86)
          {
            v87 = a1;
            v324 = v76;
            swift_getKeyPath();
            v325 = v43;
            sub_1A34C99A0();

            v88 = (v43 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
            v89 = *(&v43[1].isa + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
            if (!v89 || (v90 = *v88, v83 == *v88) && v89 == v85 || (sub_1A34CDE30() & 1) != 0)
            {

              v91 = v43;
              v92 = v79;
              v93 = sub_1A34CA230();
              v94 = sub_1A34CD660();

              if (os_log_type_enabled(v93, v94))
              {
                v95 = swift_slowAlloc();
                v96 = swift_slowAlloc();
                v321 = v96;
                v322 = swift_slowAlloc();
                v327[0] = v322;
                *v95 = 138414082;
                *(v95 + 4) = v91;
                *v96 = v91;
                *(v95 + 12) = 2080;
                swift_getKeyPath();
                v325 = v91;
                v97 = v91;
                LODWORD(v320) = v94;
                sub_1A34C99A0();

                v98 = v88[1];
                v325 = *v88;
                v326 = v98;

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A80);
                v99 = sub_1A34CD160();
                v101 = sub_1A31EE23C(v99, v100, v327);

                *(v95 + 14) = v101;
                *(v95 + 22) = 2080;
                [v92 classForCoder];
                swift_getObjCClassMetadata();
                v102 = sub_1A34CE050();
                v104 = sub_1A31EE23C(v102, v103, v327);

                *(v95 + 24) = v104;
                *(v95 + 32) = 2080;
                v325 = v92;
                v105 = sub_1A34CD160();
                v107 = sub_1A31EE23C(v105, v106, v327);

                *(v95 + 34) = v107;
                *(v95 + 42) = 2080;
                v108 = [v92 type];
                v109 = sub_1A34CD110();
                v111 = v110;

                v112 = sub_1A31EE23C(v109, v111, v327);

                *(v95 + 44) = v112;
                *(v95 + 52) = 2080;
                v113 = [v92 label];
                v114 = sub_1A34CD110();
                v116 = v115;

                v117 = sub_1A31EE23C(v114, v116, v327);

                *(v95 + 54) = v117;
                *(v95 + 62) = 2080;
                v118 = [v92 bundleIdentifier];
                v119 = sub_1A34CD110();
                v121 = v120;

                v122 = sub_1A31EE23C(v119, v121, v327);

                *(v95 + 64) = v122;
                *(v95 + 72) = 2080;
                v123 = [v92 contactProperty];
                v124 = [v123 contact];

                v125 = [v124 identifier];
                v126 = sub_1A34CD110();
                v128 = v127;

                v129 = sub_1A31EE23C(v126, v128, v327);

                *(v95 + 74) = v129;
                _os_log_impl(&dword_1A31E6000, v93, v320, "%@: Calling action actionsProvider's didSelect  for contact identifier %s with action %s(%s) type: %s, label: %s, bundleIdentifier: %s, contactProperty.contact: %s", v95, 0x52u);
                v130 = v321;
                sub_1A32D376C(v321);
                MEMORY[0x1A58F1010](v130, -1, -1);
                v131 = v322;
                swift_arrayDestroy();
                MEMORY[0x1A58F1010](v131, -1, -1);
                MEMORY[0x1A58F1010](v95, -1, -1);
              }

              [v324 didSelectActionItem:v92 actionType:v323];
              swift_unknownObjectRelease();
              return;
            }

            v323 = v90;
            v252 = v87;
            v253 = v87;
            v254 = v309;
            sub_1A31F6A5C(v253, v309, type metadata accessor for ContactCardActionRow);
            v255 = v252;
            v256 = v311;
            sub_1A31F6A5C(v255, v311, type metadata accessor for ContactCardActionRow);
            v257 = v43;
            v169 = v79;

            v195 = sub_1A34CA230();
            v258 = sub_1A34CD650();

            if (os_log_type_enabled(v195, v258))
            {
              v197 = swift_slowAlloc();
              v259 = swift_slowAlloc();
              v321 = v259;
              v322 = swift_slowAlloc();
              v327[0] = v322;
              *v197 = 138413826;
              *(v197 + 4) = v257;
              *v259 = v257;
              *(v197 + 12) = 2080;
              v260 = v257;
              v261 = sub_1A31EE23C(v83, v85, v327);

              *(v197 + 14) = v261;
              *(v197 + 22) = 2080;
              v262 = sub_1A31EE23C(v323, v89, v327);

              *(v197 + 24) = v262;
              *(v197 + 32) = 2080;
              v263 = [v169 type];
              v264 = sub_1A34CD110();
              v265 = v258;
              v267 = v266;

              v268 = sub_1A31EE23C(v264, v267, v327);

              *(v197 + 34) = v268;
              *(v197 + 42) = 2080;
              v269 = [v169 label];
              v270 = sub_1A34CD110();
              v272 = v271;

              v273 = sub_1A31EE23C(v270, v272, v327);

              *(v197 + 44) = v273;
              *(v197 + 52) = 2080;
              v274 = *(v254 + 16);
              v275 = *(v254 + 24);

              sub_1A32D3FF8(v254);
              v276 = sub_1A31EE23C(v274, v275, v327);

              *(v197 + 54) = v276;
              *(v197 + 62) = 2080;
              v277 = v311;
              v278 = *(v311 + 8);
              v325 = *v311;
              LOBYTE(v326) = v278;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAC40);
              v279 = sub_1A34CD160();
              v281 = v280;
              sub_1A32D3FF8(v277);
              v282 = sub_1A31EE23C(v279, v281, v327);

              *(v197 + 64) = v282;
              _os_log_impl(&dword_1A31E6000, v195, v265, "%@: Contact identifier mismatch! Action contact ID: '%s', Model contact ID: '%s' - actionItem.type: %s, actionItem.label: %s, row.title: %s, row.actionType: %s", v197, 0x48u);
              v283 = v321;
              sub_1A32D376C(v321);
              MEMORY[0x1A58F1010](v283, -1, -1);
              v220 = v322;
              goto LABEL_54;
            }

            swift_unknownObjectRelease();
            sub_1A32D3FF8(v256);
            v251 = v254;
LABEL_51:
            sub_1A32D3FF8(v251);

            return;
          }

          v73 = v316;
          sub_1A31F6A5C(a1, v316, type metadata accessor for ContactCardActionRow);
          v192 = a1;
          v193 = v317;
          sub_1A31F6A5C(v192, v317, type metadata accessor for ContactCardActionRow);
          v194 = v43;
          v169 = v79;
          v195 = sub_1A34CA230();
          v196 = sub_1A34CD650();

          if (os_log_type_enabled(v195, v196))
          {
            v197 = swift_slowAlloc();
            v198 = swift_slowAlloc();
            v322 = v198;
            v323 = swift_slowAlloc();
            v327[0] = v323;
            *v197 = 138413570;
            *(v197 + 4) = v194;
            *v198 = v194;
            *(v197 + 12) = 2080;
            v199 = v194;
            [v169 classForCoder];
            swift_getObjCClassMetadata();
            v200 = sub_1A34CE050();
            v202 = sub_1A31EE23C(v200, v201, v327);

            *(v197 + 14) = v202;
            *(v197 + 22) = 2080;
            v325 = v169;
            v203 = sub_1A34CD160();
            v205 = sub_1A31EE23C(v203, v204, v327);

            *(v197 + 24) = v205;
            *(v197 + 32) = 2080;
            v206 = [v169 type];
            v207 = sub_1A34CD110();
            v324 = v76;
            v209 = v208;

            v210 = sub_1A31EE23C(v207, v209, v327);

            *(v197 + 34) = v210;
            *(v197 + 42) = 2080;
            v211 = *(v73 + 16);
            v212 = *(v73 + 24);

            sub_1A32D3FF8(v73);
            v213 = sub_1A31EE23C(v211, v212, v327);

            *(v197 + 44) = v213;
            *(v197 + 52) = 2080;
            v214 = *(v193 + 8);
            v325 = *v193;
            LOBYTE(v326) = v214;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAC40);
            v215 = sub_1A34CD160();
            v217 = v216;
            sub_1A32D3FF8(v193);
            v218 = sub_1A31EE23C(v215, v217, v327);

            *(v197 + 54) = v218;
            _os_log_impl(&dword_1A31E6000, v195, v196, "%@: Action contact identifier is empty - action %s(%s) actionItem.type: %s, row.title: %s, row.actionType: %s", v197, 0x3Eu);
            v219 = v322;
            sub_1A32D376C(v322);
            MEMORY[0x1A58F1010](v219, -1, -1);
            v220 = v323;
LABEL_54:
            swift_arrayDestroy();
            MEMORY[0x1A58F1010](v220, -1, -1);
            MEMORY[0x1A58F1010](v197, -1, -1);

            goto LABEL_55;
          }

          swift_unknownObjectRelease();
          v238 = v193;
        }

        sub_1A32D3FF8(v238);
        v251 = v73;
        goto LABEL_51;
      }

      v144 = (a1 + v63[17]);
      v145 = v144[1];
      if (v145)
      {
        v319 = a1;
        v146 = *v144;
        v147 = v43;

        v148 = sub_1A34CA230();
        v149 = v43;
        v150 = sub_1A34CD660();

        v151 = os_log_type_enabled(v148, v150);
        v304[1] = v149;
        if (v151)
        {
          v152 = swift_slowAlloc();
          v323 = v74;
          v153 = v152;
          v154 = swift_slowAlloc();
          v324 = v76;
          v155 = v154;
          v320 = v154;
          v321 = swift_slowAlloc();
          v327[0] = v321;
          *v153 = 138412802;
          *(v153 + 4) = v147;
          *v155 = v147;
          v322 = v146;
          *(v153 + 12) = 2080;
          v156 = v147;
          *(v153 + 14) = sub_1A31EE23C(v322, v145, v327);
          *(v153 + 22) = 2080;
          swift_getKeyPath();
          v325 = v156;
          sub_1A34C99A0();

          v157 = *(&v156[1].isa + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
          v325 = *(&v156->isa + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
          v326 = v157;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5A80);
          v158 = sub_1A34CD160();
          v160 = sub_1A31EE23C(v158, v159, v327);
          v146 = v322;

          *(v153 + 24) = v160;
          _os_log_impl(&dword_1A31E6000, v148, v150, "%@: Target contact ID: %s, Model contact ID: %s", v153, 0x20u);
          v161 = v320;
          sub_1A32D376C(v320);
          v76 = v324;
          MEMORY[0x1A58F1010](v161, -1, -1);
          v162 = v321;
          swift_arrayDestroy();
          MEMORY[0x1A58F1010](v162, -1, -1);
          v163 = v153;
          v74 = v323;
          MEMORY[0x1A58F1010](v163, -1, -1);
        }

        v164 = HIBYTE(v145) & 0xF;
        if ((v145 & 0x2000000000000000) == 0)
        {
          v164 = v146 & 0xFFFFFFFFFFFFLL;
        }

        if (v164)
        {
          swift_getKeyPath();
          v165 = v146;
          v325 = v147;
          sub_1A34C99A0();

          v166 = (v147 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
          v167 = *(&v147[1].isa + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__contactIdentifier);
          if (!v167 || (v168 = *v166, v146 == *v166) && v145 == v167 || (sub_1A34CDE30() & 1) != 0)
          {
            v169 = sub_1A34CD0E0();
            [v76 performAction:v74 forContactIdentifier:v169 sourceView:0];
LABEL_55:
            swift_unknownObjectRelease();

            return;
          }

          v284 = v319;
          v221 = v308;
          sub_1A31F6A5C(v319, v308, type metadata accessor for ContactCardActionRow);
          sub_1A31F6A5C(v284, v310, type metadata accessor for ContactCardActionRow);
          v285 = v147;

          v286 = sub_1A34CA230();
          v287 = sub_1A34CD650();

          if (os_log_type_enabled(v286, v287))
          {
            v288 = swift_slowAlloc();
            v289 = swift_slowAlloc();
            v324 = v76;
            v290 = v289;
            v322 = v289;
            v323 = swift_slowAlloc();
            v327[0] = v323;
            *v288 = 138413314;
            *(v288 + 4) = v285;
            *v290 = v285;
            *(v288 + 12) = 2080;
            v291 = v285;
            *(v288 + 14) = sub_1A31EE23C(v165, v145, v327);
            *(v288 + 22) = 2080;
            v292 = sub_1A31EE23C(v168, v167, v327);

            *(v288 + 24) = v292;
            *(v288 + 32) = 2080;
            v293 = *(v221 + 16);
            v294 = *(v221 + 24);

            sub_1A32D3FF8(v221);
            v295 = sub_1A31EE23C(v293, v294, v327);

            *(v288 + 34) = v295;
            *(v288 + 42) = 2080;
            v296 = v310;
            v297 = v310[8];
            v325 = *v310;
            LOBYTE(v326) = v297;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAC40);
            v298 = sub_1A34CD160();
            v300 = v299;
            sub_1A32D3FF8(v296);
            v301 = sub_1A31EE23C(v298, v300, v327);

            *(v288 + 44) = v301;
            _os_log_impl(&dword_1A31E6000, v286, v287, "%@: Target contact identifier mismatch! Target contact ID: '%s', Model contact ID: '%s' - row.title: %s, row.actionType: %s", v288, 0x34u);
            v302 = v322;
            sub_1A32D376C(v322);
            MEMORY[0x1A58F1010](v302, -1, -1);
            v303 = v323;
            swift_arrayDestroy();
            MEMORY[0x1A58F1010](v303, -1, -1);
            MEMORY[0x1A58F1010](v288, -1, -1);
            swift_unknownObjectRelease();

            return;
          }

          swift_unknownObjectRelease();

          v250 = v310;
LABEL_48:
          sub_1A32D3FF8(v250);
          sub_1A32D3FF8(v221);
          return;
        }

        v239 = v319;
        v221 = v312;
        sub_1A31F6A5C(v319, v312, type metadata accessor for ContactCardActionRow);
        v222 = v313;
        sub_1A31F6A5C(v239, v313, type metadata accessor for ContactCardActionRow);
        v240 = v147;
        v169 = sub_1A34CA230();
        v224 = sub_1A34CD650();

        if (os_log_type_enabled(v169, v224))
        {
          v225 = swift_slowAlloc();
          v226 = swift_slowAlloc();
          v227 = swift_slowAlloc();
          v327[0] = v227;
          *v225 = 138412802;
          *(v225 + 4) = v240;
          *v226 = v240;
          v324 = v76;
          *(v225 + 12) = 2080;
          v242 = *(v221 + 16);
          v241 = *(v221 + 24);
          v243 = v240;

          sub_1A32D3FF8(v221);
          v244 = sub_1A31EE23C(v242, v241, v327);

          *(v225 + 14) = v244;
          *(v225 + 22) = 2080;
          v245 = *(v222 + 8);
          v325 = *v222;
          LOBYTE(v326) = v245;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAC40);
          v246 = sub_1A34CD160();
          v248 = v247;
          sub_1A32D3FF8(v222);
          v249 = sub_1A31EE23C(v246, v248, v327);

          *(v225 + 24) = v249;
          v237 = "%@: Target contact identifier is empty - row.title: %s, row.actionType: %s";
          goto LABEL_46;
        }
      }

      else
      {
        v221 = v314;
        sub_1A31F6A5C(a1, v314, type metadata accessor for ContactCardActionRow);
        v222 = v315;
        sub_1A31F6A5C(a1, v315, type metadata accessor for ContactCardActionRow);
        v223 = v43;
        v169 = sub_1A34CA230();
        v224 = sub_1A34CD650();

        if (os_log_type_enabled(v169, v224))
        {
          v225 = swift_slowAlloc();
          v226 = swift_slowAlloc();
          v227 = swift_slowAlloc();
          v327[0] = v227;
          *v225 = 138412802;
          *(v225 + 4) = v223;
          *v226 = v223;
          v324 = v76;
          *(v225 + 12) = 2080;
          v229 = *(v221 + 16);
          v228 = *(v221 + 24);
          v230 = v223;

          sub_1A32D3FF8(v221);
          v231 = sub_1A31EE23C(v229, v228, v327);

          *(v225 + 14) = v231;
          *(v225 + 22) = 2080;
          v232 = *(v222 + 8);
          v325 = *v222;
          LOBYTE(v326) = v232;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CAC40);
          v233 = sub_1A34CD160();
          v235 = v234;
          sub_1A32D3FF8(v222);
          v236 = sub_1A31EE23C(v233, v235, v327);

          *(v225 + 24) = v236;
          v237 = "%@: Both actionItem and actionTargetContactIdentifier are nil - row.title: %s, row.actionType: %s";
LABEL_46:
          _os_log_impl(&dword_1A31E6000, v169, v224, v237, v225, 0x20u);
          sub_1A32D376C(v226);
          MEMORY[0x1A58F1010](v226, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x1A58F1010](v227, -1, -1);
          MEMORY[0x1A58F1010](v225, -1, -1);
          goto LABEL_55;
        }
      }

      swift_unknownObjectRelease();

      v250 = v222;
      goto LABEL_48;
    }
  }

  v132 = v321;
  sub_1A31F6A5C(a1, v321, type metadata accessor for ContactCardActionRow);
  v133 = v322;
  sub_1A31F6A5C(a1, v322, type metadata accessor for ContactCardActionRow);
  v134 = v43;
  v135 = sub_1A34CA230();
  v136 = sub_1A34CD660();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *v137 = 138413058;
    *(v137 + 4) = v134;
    *v138 = v134;
    *(v137 + 12) = 1024;
    v139 = *(v132 + 8);
    v140 = v134;
    sub_1A32D3FF8(v132);
    *(v137 + 14) = v139;
    *(v137 + 18) = 1024;
    v141 = 1;
    v142 = (*(v133 + v324[14]) & 1) == 0;
    sub_1A32D3FF8(v133);
    *(v137 + 20) = v142;
    *(v137 + 24) = 1024;
    swift_getKeyPath();
    v325 = v140;
    sub_1A33F1B14(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
    sub_1A34C99A0();

    v143 = swift_unknownObjectWeakLoadStrong();

    if (v143)
    {
      swift_unknownObjectRelease();
      v141 = 0;
    }

    *(v137 + 26) = v141;

    _os_log_impl(&dword_1A31E6000, v135, v136, "%@: didSelectActionRow Early return from. Missing: actionType=%{BOOL}d, handlesTaps=%{BOOL}d, actionsProvider=%{BOOL}d", v137, 0x1Eu);
    sub_1A32D376C(v138);
    MEMORY[0x1A58F1010](v138, -1, -1);
    MEMORY[0x1A58F1010](v137, -1, -1);
  }

  else
  {

    sub_1A32D3FF8(v133);
    sub_1A32D3FF8(v132);
  }
}