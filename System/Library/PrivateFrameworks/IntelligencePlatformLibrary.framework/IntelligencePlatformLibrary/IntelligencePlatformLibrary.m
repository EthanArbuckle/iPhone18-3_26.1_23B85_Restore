uint64_t OUTLINED_FUNCTION_84()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

char *OUTLINED_FUNCTION_84_2(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t *a6)
{

  return sub_1934B0FCC(a1, v6, 1, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_89()
{
}

uint64_t OUTLINED_FUNCTION_156()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_84_3()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_84_4()
{

  return sub_19393CA30();
}

char *OUTLINED_FUNCTION_69()
{
  v4 = (v3 + 2 * v1);
  result = v4 + *(v0 + 56);
  *v4 = v2;
  return result;
}

void OUTLINED_FUNCTION_84_6(uint64_t a1@<X8>)
{
  v5 = v2 + a1;
  *v5 = v1;
  *(v5 + 8) = v3;
  *(v5 + 9) = v4;
}

uint64_t OUTLINED_FUNCTION_84_11()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_84_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_84_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  return sub_19344865C(a1, &a37, v37, v38);
}

char *sub_193433AE4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 16);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || &v15[16 * v10] <= v14)
    {
      memmove(v14, v15, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v10);
  }

  return v12;
}

char *static Library.databaseResources.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_193433AE4(v0, v1, v2, v3, v4, v5);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_52_6();
    v6 = sub_193433AE4(v25, v26, v27, v6, v28, v29);
  }

  v9 = sub_193434A38();
  *(v6 + 2) = v8 + 1;
  OUTLINED_FUNCTION_89_4(v9, &type metadata for Library.Databases.ApplePay.Security.Features);
  if ((v8 + 2) > (v10 >> 1))
  {
    v30 = OUTLINED_FUNCTION_39(v10);
    v6 = OUTLINED_FUNCTION_101_1(v30, v31, v32, v33, &qword_1EAE3AAC8, &unk_19394FAB0);
  }

  v11 = sub_193484E38();
  *(v6 + 2) = v8 + 2;
  OUTLINED_FUNCTION_89_4(v11, &type metadata for Library.Databases.Games.RecentlyPlayed);
  if ((v8 + 3) > (v12 >> 1))
  {
    OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_52_6();
    v6 = sub_193433AE4(v34, v35, v36, v6, v37, v38);
  }

  v13 = sub_193434358();
  *(v6 + 2) = v8 + 3;
  OUTLINED_FUNCTION_89_4(v13, &type metadata for Library.Databases.IntelligenceFlow.Telemetry.Indexes);
  if ((v8 + 4) > (v14 >> 1))
  {
    v39 = OUTLINED_FUNCTION_39(v14);
    v6 = OUTLINED_FUNCTION_101_1(v39, v40, v41, v42, &qword_1EAE3AAC8, &unk_19394FAB0);
  }

  v15 = sub_193434304();
  *(v6 + 2) = v8 + 4;
  OUTLINED_FUNCTION_89_4(v15, &type metadata for Library.Databases.IntelligenceFlow.Transcript.Datastream.Indexes);
  if ((v8 + 5) > (v16 >> 1))
  {
    OUTLINED_FUNCTION_39(v16);
    OUTLINED_FUNCTION_52_6();
    v6 = sub_193433AE4(v43, v44, v45, v6, v46, v47);
  }

  v17 = sub_193434A8C();
  *(v6 + 2) = v8 + 5;
  OUTLINED_FUNCTION_89_4(v17, &type metadata for Library.Databases.IntelligencePlatform.Entity);
  v19 = v8 + 6;
  if ((v8 + 6) > (v18 >> 1))
  {
    v48 = OUTLINED_FUNCTION_39(v18);
    v6 = OUTLINED_FUNCTION_101_1(v48, v49, v50, v51, &qword_1EAE3AAC8, &unk_19394FAB0);
  }

  v20 = sub_193434AE0();
  *(v6 + 2) = v19;
  OUTLINED_FUNCTION_89_4(v20, &type metadata for Library.Databases.Siri.PostSiriEngagement.Indexes);
  if ((v8 + 7) > (v21 >> 1))
  {
    OUTLINED_FUNCTION_39(v21);
    OUTLINED_FUNCTION_52_6();
    v6 = sub_193433AE4(v52, v53, v54, v6, v55, v56);
  }

  v22 = sub_1934359AC();
  *(v6 + 2) = v8 + 7;
  v23 = &v6[16 * v19];
  *(v23 + 4) = &type metadata for Library.Databases.WalletPaymentsCommerce.Internal;
  *(v23 + 5) = v22;
  return v6;
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return sub_19393BF20();
}

uint64_t OUTLINED_FUNCTION_91_2()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v6 = a4 + 16 * v5;
  *(v6 + 32) = 2;
  *(v6 + 40) = 1;
  v7 = *(a4 + 24);
}

uint64_t OUTLINED_FUNCTION_15@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = v2;
  *(result + 8) = a2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_91_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{

  return sub_19356C6FC(&a46, &a33);
}

void OUTLINED_FUNCTION_91_10(uint64_t a1, unint64_t *a2)
{

  sub_1935A6470(319, a2, v2);
}

uint64_t OUTLINED_FUNCTION_139()
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_91_14()
{
  *(v3 - 216) = v0 + 2 * v1;
  result = v2;
  v5 = *(v3 - 172);
  v6 = *(v3 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_25@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_48@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_181()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_275()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t OUTLINED_FUNCTION_87_4()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_87_6()
{
  v2 = *(v0 + 80);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_87_9()
{

  return sub_19393CAD0();
}

void OUTLINED_FUNCTION_87_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  *(v14 - 32) = v11;
  *(v14 - 24) = a11 & 1;
  *(v14 - 16) = *(v15 - 72);
  *(v14 - 8) = v12;
  *(v14 + 4) = BYTE4(v13);
  *v14 = v13;
}

void OUTLINED_FUNCTION_87_12(__n128 a1)
{
  *(v6 - 80) = v1;
  *(v6 - 72) = v2;
  *(v6 - 71) = v3;
  *(v6 - 64) = a1;
  *(v6 - 48) = v4;
  *(v6 - 40) = v5;
}

uint64_t OUTLINED_FUNCTION_87_14()
{
}

uint64_t OUTLINED_FUNCTION_87_15@<X0>(unsigned int *a1@<X8>)
{
  v2 = *a1;

  return sub_19393CAD0();
}

unint64_t sub_193434304()
{
  result = qword_1ED502BC0;
  if (!qword_1ED502BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BC0);
  }

  return result;
}

unint64_t sub_193434358()
{
  result = qword_1ED502BA8;
  if (!qword_1ED502BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_59_0()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_4(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  v4 = *(a1 + 24);
}

uint64_t OUTLINED_FUNCTION_5@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t result)
{
  *(result + 44) = *(v1 + 28);
  *(result + 41) = *(v1 + 25);
  return result;
}

double OUTLINED_FUNCTION_104()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

char *OUTLINED_FUNCTION_13@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 4;
  return result;
}

__n128 *OUTLINED_FUNCTION_34_5(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v3 + *(v2 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

void OUTLINED_FUNCTION_69_0(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  *(v2 + 16) = 2;
}

void OUTLINED_FUNCTION_190()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
}

void OUTLINED_FUNCTION_17()
{
  v2 = *(v0 - 72);

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_12_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_34_9@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(result + 2) = v2;
  *result = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_19344542C(v3, v4 + a3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_67()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_34_12()
{
  result = v2 + v1 + *(v0 + 56);
  *(v2 + v1) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_53()
{

  return sub_19393C550();
}

id OUTLINED_FUNCTION_34_17(void *a1)
{

  return sub_1934E6000(a1, v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_34_18()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);

  return sub_19393CA30();
}

char *OUTLINED_FUNCTION_9_0@<X0>(uint64_t a1@<X8>)
{
  v4 = (v3 + v2 * a1);
  result = v4 + *(v1 + 56);
  *v4 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_165()
{

  return __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v1);
}

void OUTLINED_FUNCTION_34_24(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 11;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_34_25()
{

  return sub_193630AEC(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 72);
  v5 = *(v2 - 88);

  return sub_193451F04(a1, a2, 2020175477, 0xE400000000000000);
}

void OUTLINED_FUNCTION_34_28()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_34_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v19 + 16) = a1;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v16;
  *(a1 + 40) = v14;
  *(a1 + 48) = a14;
  *(a1 + 56) = v15;
  *(v19 + 48) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_34_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_1936A3CA8(a1, a2, a3, type metadata accessor for OasisAnalyticsPinchEvent, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_34_31()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_34_35()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  return sub_19393CA30();
}

unint64_t sub_193434A38()
{
  result = qword_1ED502B90;
  if (!qword_1ED502B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B90);
  }

  return result;
}

unint64_t sub_193434A8C()
{
  result = qword_1ED502BE0;
  if (!qword_1ED502BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502BE0);
  }

  return result;
}

unint64_t sub_193434AE0()
{
  result = qword_1ED502B38;
  if (!qword_1ED502B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502B38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_92()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_92_0()
{

  return sub_19393BF20();
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_92_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v6 = a4 + 16 * v4;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
}

double OUTLINED_FUNCTION_92_3@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_46@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_193448804(v4 + a3, v3, a1, a2);
}

uint64_t *OUTLINED_FUNCTION_126(uint64_t a1)
{
  *(v1 + 40) = a1;

  return __swift_allocate_boxed_opaque_existential_1Tm((v1 + 16));
}

uint64_t OUTLINED_FUNCTION_92_6(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v5 & 1;
  *(result + 32) = v2;
  *(result + 40) = v4;
  *(result + 52) = BYTE4(v3);
  *(result + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_92_8()
{

  return sub_193448850();
}

uint64_t *OUTLINED_FUNCTION_92_10(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  return result;
}

uint64_t sub_193434D8C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_98_1(a1);
  if (!v5)
  {
    swift_once();
  }

  result = *a2;
  v7 = *a3;
  return result;
}

unint64_t sub_193434DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a1 == 0xD000000000000016 && 0x800000019394FBD0 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v8 = OUTLINED_FUNCTION_26_3();
    result = sub_193490CC8(v8);
  }

  else
  {
    OUTLINED_FUNCTION_81_0();
    v11 = v6 && v10 == a2;
    if (v11 || (OUTLINED_FUNCTION_90_1(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
    {
      v12 = OUTLINED_FUNCTION_26_3();
      result = sub_193436568(v12);
    }

    else
    {
      v13 = a1 == 0xD000000000000015 && 0x800000019394FC10 == a2;
      if (v13 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v14 = OUTLINED_FUNCTION_26_3();
        result = sub_193435D0C(v14);
      }

      else
      {
        v15 = a1 == 0xD000000000000011 && 0x800000019394FC30 == a2;
        if (v15 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v16 = OUTLINED_FUNCTION_26_3();
          result = sub_193450A08(v16);
        }

        else
        {
          v17 = a1 == 0xD000000000000010 && 0x800000019394FC50 == a2;
          if (v17 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
          {
            v18 = OUTLINED_FUNCTION_26_3();
            result = sub_193439818(v18);
          }

          else
          {
            v19 = a1 == 0xD000000000000013 && 0x800000019394FC70 == a2;
            if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
            {
              v20 = OUTLINED_FUNCTION_26_3();
              result = sub_193439794(v20);
            }

            else
            {
              OUTLINED_FUNCTION_81_0();
              v22 = v6 && v21 == a2;
              if (v22 || (OUTLINED_FUNCTION_90_1(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
              {
                v23 = OUTLINED_FUNCTION_26_3();
                result = sub_193439760(v23);
              }

              else
              {
                OUTLINED_FUNCTION_84_0();
                v25 = a1 == OUTLINED_FUNCTION_85_1() && a2 == v24;
                if (v25 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                {
                  v26 = OUTLINED_FUNCTION_26_3();
                  result = sub_193490CFC(v26);
                }

                else
                {
                  OUTLINED_FUNCTION_82_1();
                  v28 = a1 == OUTLINED_FUNCTION_83_3() && a2 == v27;
                  if (v28 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                  {
                    v29 = OUTLINED_FUNCTION_26_3();
                    result = sub_193438158(v29);
                  }

                  else
                  {
                    v30 = a1 == 0xD000000000000016 && 0x800000019394FCB0 == a2;
                    if (v30 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                    {
                      v31 = OUTLINED_FUNCTION_26_3();
                      result = sub_193490D34(v31);
                    }

                    else
                    {
                      v32 = a1 == 0xD000000000000020 && 0x800000019394FCD0 == a2;
                      if (v32 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                      {
                        v33 = OUTLINED_FUNCTION_26_3();
                        result = sub_193490D68(v33);
                      }

                      else
                      {
                        v34 = a1 == 0xD000000000000011 && 0x800000019394FD00 == a2;
                        if (v34 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                        {
                          v35 = OUTLINED_FUNCTION_26_3();
                          result = sub_193490D9C(v35);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_86_2();
                          v37 = a1 == OUTLINED_FUNCTION_87_0() && a2 == v36;
                          if (v37 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                          {
                            v38 = OUTLINED_FUNCTION_26_3();
                            result = sub_193490DD0(v38);
                          }

                          else
                          {
                            v39 = a1 == 0xD000000000000010 && 0x800000019394FD20 == a2;
                            if (v39 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
                            {
                              v40 = OUTLINED_FUNCTION_26_3();
                              result = sub_193490E08(v40);
                            }

                            else
                            {
                              OUTLINED_FUNCTION_81_0();
                              if (!v6 || v41 != a2)
                              {
                                OUTLINED_FUNCTION_90_1();
                                if ((OUTLINED_FUNCTION_59_0() & 1) == 0)
                                {
                                  return a3();
                                }
                              }

                              v43 = OUTLINED_FUNCTION_26_3();
                              result = sub_193490E3C(v43);
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
      }
    }
  }

  if (!v3)
  {
  }

  return result;
}

double OUTLINED_FUNCTION_29()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_53_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v6 = a4 + 16 * v5;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_124()
{

  return sub_19393C0E0();
}

uint64_t OUTLINED_FUNCTION_53_5(uint64_t result, __n128 a2)
{
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_1@<X0>(uint64_t a1@<X8>)
{

  return sub_1934486F8(v3 + a1, v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_53_9(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 25) = v3;
  return result;
}

void OUTLINED_FUNCTION_263(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = v1;
  *(v3 + 4) = BYTE4(v1) & 1;
}

uint64_t OUTLINED_FUNCTION_53_13()
{
  result = sub_1934354B4(*(v1 + v2));
  *(v1 + v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_94()
{

  return sub_19393CAD0();
}

uint64_t *OUTLINED_FUNCTION_53_18(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(result + 8);
  v5 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_1(uint64_t result, __n128 a2)
{
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_21()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_53_22()
{
  *v0 = 0;
  *(v0 + 8) = v1 & 1;
  *(v0 + 9) = 0;
}

uint64_t OUTLINED_FUNCTION_294(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

__n128 OUTLINED_FUNCTION_53_24()
{
  result = *v0;
  *(v1 + 40) = *(v0 + 16);
  *(v1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_28()
{

  return sub_19393C540();
}

uint64_t sub_1934354B4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t static Library.Databases.ApplePay.Security.Features.views.getter()
{
  if (qword_1ED50F980 != -1)
  {
    OUTLINED_FUNCTION_68_0();
  }
}

double OUTLINED_FUNCTION_35()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t result)
{
  v1 = *(result + 24) >> 1;
  v2 = *(result + 16) + 1;
  return result;
}

void OUTLINED_FUNCTION_46_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v6 = a4 + 16 * v4;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
}

char *OUTLINED_FUNCTION_85(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t *a6)
{

  return sub_1934B0FCC(a1, v6, 1, a4, a5, a6);
}

char *OUTLINED_FUNCTION_30_0@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 7;
  return result;
}

void OUTLINED_FUNCTION_63(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  *(v2 + 16) = 2;
}

void OUTLINED_FUNCTION_83_0(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  *(v2 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_46_6@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 136) = a1;
  *(v3 - 128) = v2;
  *(v3 - 72) = v1;
  return 0;
}

void OUTLINED_FUNCTION_46_11()
{
  v2 = *(*v0 + 16);

  JUMPOUT(0x193B18030);
}

uint64_t OUTLINED_FUNCTION_108()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_46_15()
{

  return sub_19393C830();
}

void OUTLINED_FUNCTION_46_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *v11 = v13;
  v11[1] = v12;
  v11[2] = a10;
  v11[3] = a11;
  v11[4] = *(v14 - 72);
}

uint64_t OUTLINED_FUNCTION_46_21()
{
  result = 0x766974696D697270;
  v2 = *v0;
  return result;
}

unint64_t sub_1934359AC()
{
  result = qword_1ED502A60;
  if (!qword_1ED502A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502A60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_95_1()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_95_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v6 = a4 + 16 * v5;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
}

void OUTLINED_FUNCTION_102(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  *(v2 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_23_0()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_95_5()
{

  return sub_19351E5D8();
}

uint64_t OUTLINED_FUNCTION_77_0(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_95_8()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_95_9()
{

  return sub_1934948FC();
}

uint64_t OUTLINED_FUNCTION_95_10()
{

  return sub_193448850();
}

uint64_t OUTLINED_FUNCTION_95_11()
{

  return sub_1935C56D4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_95_12(uint64_t *a1)
{
  v2 = *a1;

  return type metadata accessor for IntelligenceFlowPlanGenerationTelemetry(0);
}

char *OUTLINED_FUNCTION_95_13@<X0>(uint64_t a1@<X8>)
{
  v4 = (v3 + v2 * a1);
  result = v4 + *(v1 + 56);
  *v4 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_95_14()
{
  sub_193437C90(v0);
  sub_193437C90(v1);

  return sub_193437C90(v0);
}

double OUTLINED_FUNCTION_95_16@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_95_17()
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return sub_19393C640();
}

uint64_t OUTLINED_FUNCTION_0_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

__n128 *OUTLINED_FUNCTION_27_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v2 + *(v3 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_47_2()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_188()
{
  v2 = *v0;
}

uint64_t *OUTLINED_FUNCTION_1_1(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_61_3(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_104_0()
{

  return sub_19393CAD0();
}

void OUTLINED_FUNCTION_61_8()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_61_11()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_61_12()
{

  return sub_1935B87AC();
}

uint64_t OUTLINED_FUNCTION_61_13(uint64_t a1)
{

  return sub_1934486F8(a1, v4 + v3, v1, v2);
}

void OUTLINED_FUNCTION_61_17()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
}

__n128 OUTLINED_FUNCTION_61_18(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_193456418(*v1, *(v1 + 8));
  result = v7;
  *v1 = v7;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

void static Library.lookupDatabaseResource(identifier:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = static Library.databaseResources.getter();
  v5 = v4 + 40;
  v6 = -*(v4 + 2);
  v7 = -1;
  while (1)
  {
    if (v6 + v7 == -1)
    {
      goto LABEL_12;
    }

    if (++v7 >= *(v4 + 2))
    {
      break;
    }

    v8 = *(v5 - 1);
    v9 = *(*v5 + 8);
    if (sub_19393BE80() == v3 && v10 == v1)
    {

LABEL_12:

      OUTLINED_FUNCTION_116();
      return;
    }

    v5 += 16;
    v12 = sub_19393CA30();

    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_94_1()
{

  return sub_19393BF30();
}

void OUTLINED_FUNCTION_5_2(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t OUTLINED_FUNCTION_94_9(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_193448758(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_94_11()
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_94_14(uint64_t a1)
{
  sub_193437C90(a1);
  sub_193437C90(v1);
}

uint64_t OUTLINED_FUNCTION_93()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_93_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_93_5()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_93_6(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);

  return type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
}

uint64_t OUTLINED_FUNCTION_96(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

id OUTLINED_FUNCTION_93_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_193494798(a2, a3, v3);
}

void OUTLINED_FUNCTION_93_11(uint64_t a1@<X8>)
{
  *(v3 - 48) = a1;
  *(v3 - 40) = v1;
  *(v3 - 32) = v2;
}

uint64_t OUTLINED_FUNCTION_28_2(uint64_t a1)
{
  *(v1 - 104) = a1;

  return sub_19393C860();
}

void OUTLINED_FUNCTION_12_1(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = v2 & 1;
  *(v1 + 9) = 0;
}

char *OUTLINED_FUNCTION_39_2(char *a1, uint64_t a2, uint64_t a3, char *a4)
{

  return sub_1934B0FCC(a1, v6, 1, a4, v5, v4);
}

__n128 *OUTLINED_FUNCTION_20(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v2 + *(v3 + 56);
  *(result->n128_u64 + v2) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = v2;
  *(result + 8) = a2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_160_0()
{

  return sub_19393C410();
}

uint64_t OUTLINED_FUNCTION_73()
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_24_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = 5;
  *(result + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return type metadata accessor for AIML.UUID();
}

uint64_t OUTLINED_FUNCTION_19_0(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_32_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3)
{
  v7 = *(a1 + 56);

  return sub_193448804(v3, &a3 - a2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_28_18()
{

  return sub_1934976E4();
}

void OUTLINED_FUNCTION_28_24(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v2 = a1[1] & 0x1FF;
  v3 = a1[2] & 1;
}

uint64_t OUTLINED_FUNCTION_28_25(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = v2;
  *(a2 + 48) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_28_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 23;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_81_1@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 88) = a2;
  *(result + 89) = *(v2 + 73);
  *(result + 92) = *(v2 + 76);
  return result;
}

void OUTLINED_FUNCTION_45_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v6;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v4;
  v8 = *(a4 + 24);
}

uint64_t OUTLINED_FUNCTION_165_0()
{

  return sub_19393C0E0();
}

uint64_t OUTLINED_FUNCTION_81_4()
{

  return sub_1934D16DC(0, 1);
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_81_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_81_7(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2 & 1;
  *(result + 32) = v3;
  *(result + 40) = v4;
  *(result + 52) = BYTE4(v5);
  *(result + 48) = v5;
  **(v6 - 72) = result | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_8(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_81_9()
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return sub_19393C020();
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return sub_19393CA30();
}

__n128 *OUTLINED_FUNCTION_4_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = (result->n128_u64 + v3);
  v5 = result + v3 + *(v2 + 56);
  *v4 = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_20@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_23()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_24(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_1934E05F8(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_0_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return swift_once();
}

void OUTLINED_FUNCTION_29_0(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_0_32()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_37_0(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 9);
  *v1 = v4;
  *(v1 + 8) = v5;
  *(v1 + 9) = v3;
}

uint64_t OUTLINED_FUNCTION_0_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_42()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_0_61(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1 + 8);
  *(v3 - 96) = *(v1 + a1);
  *(v3 - 88) = v4;
  v5 = (v2 + a1);
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  *(v3 - 112) = v6;
  *(v3 - 104) = v5;
}

uint64_t OUTLINED_FUNCTION_0_62()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_63()
{

  return type metadata accessor for GenerativeExperiencesFailureTracking();
}

void OUTLINED_FUNCTION_0_65(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_19365DCD8(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_0_66()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_0_67()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_68()
{

  return type metadata accessor for TextUnderstandingContact();
}

void OUTLINED_FUNCTION_0_70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_19366E7B4(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_0_71@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_72()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_73()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_74()
{

  return type metadata accessor for TextUnderstandingTopic();
}

uint64_t OUTLINED_FUNCTION_0_75()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_76()
{

  return type metadata accessor for DeviceWiFi();
}

uint64_t OUTLINED_FUNCTION_0_77()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_78()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_79()
{

  return type metadata accessor for ModelCatalogSubscriptionDecisions();
}

void OUTLINED_FUNCTION_0_81(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_193687794(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_0_84()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_87()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_88()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_89()
{
  v3 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = v0 & 0x3FFFFFFFFFFFFFFFLL;
  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  v6 = *(v4 + 16);
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
}

uint64_t OUTLINED_FUNCTION_0_90()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_91()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  return *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_0_93()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_95()
{
  result = v1;
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_96@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1935F2318(v2, v3, v4);
}

void OUTLINED_FUNCTION_0_100(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_193779658(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_0_101()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_102(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  *(v1 + 424) = *a1;
  *(v1 + 432) = v2 & 1;
}

char *OUTLINED_FUNCTION_0_103()
{
  v3 = (v2 + 7 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 7;
  return result;
}

char *OUTLINED_FUNCTION_1_6()
{
  v3 = (v2 + 3 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 3;
  return result;
}

void OUTLINED_FUNCTION_2_6()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v0;
  v5 = *(v0 + 8);
}

void OUTLINED_FUNCTION_0_108(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_1937FB100(319, a2, a3, v4);
}

uint64_t sub_193437C90(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_83_5()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

BOOL OUTLINED_FUNCTION_83_7@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_193532C48(a3, v3, a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_83_11()
{

  return sub_193591244(v1, v0);
}

void OUTLINED_FUNCTION_83_13(char a1@<W8>)
{
  *(v4 - 112) = v2;
  *(v4 - 104) = a1 & 1;
  *(v4 - 144) = v3;
  *(v4 - 136) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_83_14(uint64_t result)
{
  *(result + 31) = *(v1 + 15);
  *(result + 29) = *(v1 + 13);
  return result;
}

uint64_t OUTLINED_FUNCTION_83_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_83_21()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_82_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

char *OUTLINED_FUNCTION_39_3@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 8;
  return result;
}

uint64_t OUTLINED_FUNCTION_82_4()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

void OUTLINED_FUNCTION_41_1()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
}

uint64_t OUTLINED_FUNCTION_82_8()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 80);
  v4 = *(v0 - 72) | (*(v0 - 68) << 32);

  return sub_193456418(v2, v3);
}

void OUTLINED_FUNCTION_82_10(char a1@<W8>)
{
  *(v4 - 144) = v2;
  *(v4 - 136) = a1 & 1;
  *(v4 - 200) = v3;
  *(v4 - 192) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_82_11()
{

  return sub_1936943C8(v1, v0);
}

__n128 OUTLINED_FUNCTION_82_12()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  result = *(v0 + 64);
  v5 = *(v0 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_56_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + 16 * v3;
  *(v4 + 32) = a2;
  *(v4 + 40) = result;
  v5 = *(v2 + 24);
  return result;
}

char *OUTLINED_FUNCTION_88_0(char *a1, int64_t a2, char a3, char *a4)
{

  return sub_1934B0FCC(a1, a2, a3, a4, v5, v4);
}

uint64_t OUTLINED_FUNCTION_85_4()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_85_5()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_85_7(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4->n128_u64[0] = v3;
  v4->n128_u64[1] = a1;
  v4[1] = a2;
  v4[2].n128_u8[0] = v2;
}

uint64_t OUTLINED_FUNCTION_85_8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  return 0;
}

id OUTLINED_FUNCTION_85_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_193494798(a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_85_11()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_85_13(uint64_t result)
{
  *(result + 23) = *(v1 + 7);
  *(result + 21) = *(v1 + 5);
  return result;
}

void OUTLINED_FUNCTION_85_15()
{
  v1 = *(v0 - 96);
  v2 = *(v0 - 200);
  v3 = *(v0 - 240);
}

uint64_t OUTLINED_FUNCTION_85_16()
{
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0;
  *(v0 - 104) = 1;
  return v0 - 144;
}

uint64_t OUTLINED_FUNCTION_85_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  return sub_19344865C(a1, &a37, v37, v38);
}

uint64_t sub_193438388(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return sub_19393BE10();
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return sub_19393CA30();
}

id OUTLINED_FUNCTION_3_5(uint64_t a1, uint64_t a2)
{

  return sub_19343D150(a1, a2, 2, 0, v2, 13, 0);
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_1@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_4_4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return sub_19393C3C0();
}

void OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v6 = a4 + 16 * v5;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
}

char *OUTLINED_FUNCTION_51(char *a1, int64_t a2, uint64_t a3, char *a4)
{

  return sub_1934B0FCC(a1, a2, 1, a4, v5, v4);
}

char *OUTLINED_FUNCTION_9_4@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_1()
{
  result = v2 + v1 + *(v0 + 56);
  *(v2 + v1) = v3;
  return result;
}

void OUTLINED_FUNCTION_116_0()
{
  v2 = *(v0 - 72);
  v3 = *(v0 - 88);

  sub_19344652C();
}

uint64_t OUTLINED_FUNCTION_118()
{

  return sub_19393BE60();
}

void OUTLINED_FUNCTION_2_8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t OUTLINED_FUNCTION_201@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_10_3@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_193445340(v3, v4 + a3, a1, a2);
}

id OUTLINED_FUNCTION_18_2(uint64_t a1)
{
  *(v1 + 32) = a1;
  v4 = *(v2 + 744);

  return objc_allocWithZone(v4);
}

uint64_t OUTLINED_FUNCTION_13_7()
{

  return sub_19393BE00();
}

id OUTLINED_FUNCTION_13_8()
{
  v2 = *v0;

  return objc_allocWithZone(v2);
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return swift_allocError();
}

char *OUTLINED_FUNCTION_13_12()
{
  v3 = (v2 + 2 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 3;
  return result;
}

void OUTLINED_FUNCTION_13_13(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69695A8];

  sub_19350BD10(319, a2, v3);
}

void OUTLINED_FUNCTION_43_1(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  *(v1 - 80) = *a1;
  *(v1 - 72) = v2 & 1;
}

__n128 *OUTLINED_FUNCTION_13_15(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[3].n128_u64[1] = v2;
  result[2].n128_u64[0] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_21()
{
  v2 = *(v0 - 120);

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_13_22(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 1784, v2, v3);
}

id OUTLINED_FUNCTION_13_24(uint64_t a1)
{
  *(v1 + 32) = a1;
  v4 = *(v2 + 744);

  return objc_allocWithZone(v4);
}

uint64_t OUTLINED_FUNCTION_10_4@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_31(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 352, v2, v3);
}

void OUTLINED_FUNCTION_13_34(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v1;
  *(v4 + 8) = v3;
}

void *OUTLINED_FUNCTION_13_36()
{

  return memcpy((v0 + 1848), (v1 + 248), 0xF8uLL);
}

void OUTLINED_FUNCTION_13_37()
{

  JUMPOUT(0x193B18060);
}

id OUTLINED_FUNCTION_13_38(uint64_t a1, uint64_t a2)
{

  return sub_19343D150(a1, a2, 0, 0, v2, 2, 0);
}

uint64_t OUTLINED_FUNCTION_13_39()
{

  return type metadata accessor for AppleIntelligenceAvailability();
}

uint64_t OUTLINED_FUNCTION_13_50()
{

  return AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status.rawValue.getter();
}

__n128 OUTLINED_FUNCTION_13_51()
{
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 40) = *(v0 + 40);
  result = *(v0 + 56);
  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_52@<X0>(void *a1@<X8>)
{
  result = sub_193456F74(0, 0, 1);
  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_54(uint64_t a1)
{

  return sub_1937809E0(a1, &STACK[0x7D0], v1, v2);
}

void OUTLINED_FUNCTION_13_56(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = 10;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

id OUTLINED_FUNCTION_40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{

  return sub_19343D150(a1, a2, a3, a4, a5, 4, 0);
}

uint64_t OUTLINED_FUNCTION_13_59(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);

  return type metadata accessor for AppleIntelligenceSafetyGuardrails();
}

BOOL OUTLINED_FUNCTION_13_60@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1937F2218(a3, v3, a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_13_61()
{

  return type metadata accessor for SensitiveContentAnalysisUIInteraction();
}

uint64_t sub_193438D88(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_12_4()
{
  v1 = *(v0 - 152) | 0x8000000000000000;
  v2 = *(v0 - 112);
  v3 = *(v0 - 120) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return sub_19393BF10();
}

char *OUTLINED_FUNCTION_36_2@<X0>(unint64_t a1@<X8>)
{

  return sub_193490E70((a1 > 1), v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_19343D230(v1);
}

uint64_t OUTLINED_FUNCTION_19_1@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 40) = a2;
  *(a1 + 16) = v2;
  *(a1 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_26_0()
{
  *(v0 + 48) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_9_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v6;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v4;
  v8 = *(a4 + 24);
}

uint64_t OUTLINED_FUNCTION_15_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

char *OUTLINED_FUNCTION_14_4@<X0>(uint64_t a1@<X8>)
{
  v4 = (v3 + v2 * a1);
  result = v4 + *(v1 + 56);
  *v4 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_103_0()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_119()
{

  return sub_19393CAB0();
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v1);
}

void OUTLINED_FUNCTION_12_12()
{
  v2 = *(v0 - 72);

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_12_13()
{

  return type metadata accessor for SageTranscript();
}

uint64_t OUTLINED_FUNCTION_12_16()
{

  return type metadata accessor for SiriPostSiriEngagement();
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_17()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return CacheManagerError.ErrorType.rawValue.getter();
}

__n128 *OUTLINED_FUNCTION_43_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v2 + *(v3 + 56);
  *(result->n128_u64 + v2) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1, uint64_t a2)
{

  return sub_1934486F8(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_15_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v6 = a4 + 16 * v5;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_12_24(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_19343D230(v1);
}

uint64_t OUTLINED_FUNCTION_12_27(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);

  return type metadata accessor for WalletPaymentsCommerceTransaction(0);
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_12_31()
{
  *(v0 - 192) = 2;

  return sub_19393C0F0();
}

char *OUTLINED_FUNCTION_12_33@<X0>(char *a1@<X3>, unint64_t a2@<X8>)
{

  return sub_1936855C4((a2 > 1), v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_12_44()
{

  return AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_12_45()
{

  return sub_19344E6DC(v0 + 1392, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_46@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_193641A34(v2, v3);
}

__n128 OUTLINED_FUNCTION_12_47()
{
  v1 = *(v0 - 120);
  *(v0 - 192) = *(v0 - 136);
  *(v0 - 176) = v1;
  result = *(v0 - 104);
  *(v0 - 160) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_49@<X0>(uint64_t a1@<X8>)
{

  return sub_1934486F8(v3 + a1, v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_12_51(uint64_t a1)
{

  return sub_1937809E0(a1, &STACK[0x7D0], v1, v2);
}

void OUTLINED_FUNCTION_12_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 13;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

uint64_t OUTLINED_FUNCTION_12_61()
{

  return type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
}

uint64_t OUTLINED_FUNCTION_70_3()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_20_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return sub_1934D1694(a1, a2);
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_70_7@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_193448804(v2, &a2 - a1, v3, v4);
}

__n128 *OUTLINED_FUNCTION_9_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v2 + *(v3 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_69_3(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_19343D230(v1);
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_20_8@<X0>(uint64_t a1@<X8>)
{

  return sub_193448758(v3 + a1, v2, v4, v1);
}

id OUTLINED_FUNCTION_9_9(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, a2, v9, v10, v11);
}

id OUTLINED_FUNCTION_80_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_193494798(v4, a3, v3);
}

uint64_t OUTLINED_FUNCTION_20_13@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = 6;
  *(result + 16) = v2;
  return result;
}

char *OUTLINED_FUNCTION_42_2(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t *a6)
{

  return sub_1934B0FCC(0, 1, 1, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_20_17()
{
  *(v0 + 848) = v1;
  sub_193438388(v2);
  sub_193438388(v1);

  return sub_193438388(v2);
}

uint64_t OUTLINED_FUNCTION_20_21()
{
  result = 0x737473697865;
  v2 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_1(uint64_t a1, uint64_t a2)
{

  return sub_1934487B4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_20_24()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_20_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = v6;
}

void OUTLINED_FUNCTION_20_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 3;
  *(v7 + 40) = v6;
}

uint64_t OUTLINED_FUNCTION_20_30(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);

  return type metadata accessor for AdAttributionKitPurchase();
}

BOOL OUTLINED_FUNCTION_20_32@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_193645360(a3, v3, a1, a2, v4);
}

void *OUTLINED_FUNCTION_20_33(void *a1)
{

  return memcpy(a1, (v1 + 1936), 0x108uLL);
}

id OUTLINED_FUNCTION_20_36(uint64_t a1, uint64_t a2)
{

  return sub_19343D150(a1, a2, 3, 0, v2, 0, 2);
}

void *OUTLINED_FUNCTION_20_37(void *a1)
{

  return memcpy(a1, (v2 + v1), 0xF8uLL);
}

uint64_t OUTLINED_FUNCTION_25_5()
{

  return __swift_project_value_buffer(v0, v1);
}

uint64_t OUTLINED_FUNCTION_20_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_193447324(a1, a2, v7, a4, v6, a6);
}

uint64_t OUTLINED_FUNCTION_20_41()
{

  return sub_1934948FC();
}

void OUTLINED_FUNCTION_20_42(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E62F8];

  sub_19375E3B0(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_20_43()
{

  return sub_19393C550();
}

void OUTLINED_FUNCTION_20_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 17;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_193447324(a1, a2, v7, a4, v6, a6);
}

uint64_t OUTLINED_FUNCTION_20_52()
{

  return type metadata accessor for SensitiveContentAnalysisUIInteraction();
}

double OUTLINED_FUNCTION_36_4()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

void OUTLINED_FUNCTION_8_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v6 = a4 + 16 * v4;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return sub_19393CA30();
}

char *OUTLINED_FUNCTION_32_10()
{
  v4 = (v3 + v2 * v0);
  result = v4 + *(v1 + 56);
  *v4 = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_11()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_6(uint64_t a1, uint64_t a2)
{

  return sub_1934486F8(a1, a2, v2, v3);
}

uint64_t *OUTLINED_FUNCTION_32_13(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  a2[5] = v4;

  return __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
}

uint64_t OUTLINED_FUNCTION_32_14()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 33);
  v6 = *(v0 + 32);
  return result;
}

id OUTLINED_FUNCTION_32_17()
{
  v1 = MEMORY[0x1E698F298];

  return objc_allocWithZone(v1);
}

void *OUTLINED_FUNCTION_32_21(void *a1)
{

  return memcpy(a1, (v1 + 3368), 0x108uLL);
}

__n128 OUTLINED_FUNCTION_44_1()
{
  v2 = *(v0 + 32);
  result = *v0;
  v4 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v4;
  *(v1 - 32) = v2;
  return result;
}

void OUTLINED_FUNCTION_32_24(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
}

void OUTLINED_FUNCTION_119_1()
{

  sub_193498018();
}

void OUTLINED_FUNCTION_32_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  sub_1936A3CA8(a1, a2, a3, type metadata accessor for OasisAnalyticsHandUserViewEvent, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_32_28()
{
  v5 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v4 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
}

uint64_t OUTLINED_FUNCTION_32_32()
{

  return sub_19393C550();
}

void OUTLINED_FUNCTION_32_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = 24;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

uint64_t OUTLINED_FUNCTION_32_35()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_3_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v6 = a4 + 16 * v5;
  *(v6 + 32) = 2;
  *(v6 + 40) = 1;
  v7 = *(a4 + 24);
}

uint64_t OUTLINED_FUNCTION_22_12()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_122(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

id OUTLINED_FUNCTION_22_13(uint64_t a1)
{
  *(v1 + 32) = a1;
  v4 = *(v2 + 744);

  return objc_allocWithZone(v4);
}

uint64_t OUTLINED_FUNCTION_22_15(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return sub_19393CA30();
}

id OUTLINED_FUNCTION_22_20()
{

  return sub_1934E5F70(0xD000000000000017, v0 | 0x8000000000000000, v1 + 31, v2 | 0x8000000000000000, 2);
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return sub_19393CA30();
}

void *OUTLINED_FUNCTION_22_24()
{

  return memcpy((v0 + 2576), (v1 + 264), 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_22_26()
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_22_30(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 360, v2, v3);
}

uint64_t OUTLINED_FUNCTION_22_32()
{

  return sub_19368E328();
}

void OUTLINED_FUNCTION_22_33()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
}

__n128 OUTLINED_FUNCTION_22_36()
{
  result = *v1;
  v0[87] = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_37(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];

  return sub_193640C90(v5, v6);
}

void OUTLINED_FUNCTION_22_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 19;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

void static Library.biomeStream(for:)()
{
  OUTLINED_FUNCTION_115();
  v1 = v0;
  OUTLINED_FUNCTION_38();
  v4 = v2 == 0xD000000000000017 && v3 == v1;
  if (v4 || (v5 = v2, (OUTLINED_FUNCTION_37_2() & 1) != 0))
  {
    v6 = sub_193485A50();
    v7 = &type metadata for Library.Streams.App.LanguageConsumption;
LABEL_7:
    sub_19343CF40(v7, v6);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_34();
  v9 = v4 && v8 == v1;
  if (v9 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
  {
    v6 = sub_193485AA4();
    v7 = &type metadata for Library.Streams.AppleIntelligence.Availability;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_78_2();
  v11 = v4 && v1 == v10;
  if (v11 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485AF8();
    v7 = &type metadata for Library.Streams.Device.Metadata;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v13 = v5 == 0xD00000000000001CLL && v12 == v1;
  if (v13 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485B4C();
    v7 = &type metadata for Library.Streams.DeviceExpert.Troubleshooting;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v15 = v5 == 0xD000000000000025 && v14 == v1;
  if (v15 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485BA0();
    v7 = &type metadata for Library.Streams.GenerativeExperiences.FailureTracking;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_30_5();
  v17 = v4 && v16 == v1;
  if (v17 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485BF4();
    v7 = &type metadata for Library.Streams.GenerativeExperiences.GuardrailResult;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_30_5();
  v19 = v4 && v18 == v1;
  if (v19 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485C48();
    v7 = &type metadata for Library.Streams.GenerativeExperiences.PromptAnalytics;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v21 = v5 == 0xD000000000000020 && v20 == v1;
  if (v21 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485C9C();
    v7 = &type metadata for Library.Streams.GenerativeExperiences.PromptTags;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_30_5();
  v23 = v4 && v22 == v1;
  if (v23 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485CF0();
    v7 = &type metadata for Library.Streams.GenerativeExperiences.TransparencyLog;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v25 = v5 == 0xD000000000000022 && v24 == v1;
  if (v25 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934426D4();
    v7 = &type metadata for Library.Streams.IntelligenceFlow.ExecutorTelemetry;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_14_12();
  v27 = v4 && v26 == v1;
  if (v27 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_19343FD54();
    v7 = &type metadata for Library.Streams.IntelligenceFlow.Experimentation;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v29 = v5 == 0xD000000000000023 && v28 == v1;
  if (v29 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193441388();
    v7 = &type metadata for Library.Streams.IntelligenceFlow.IFRequestTelemetry;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v31 = v5 == 0xD000000000000027 && v30 == v1;
  if (v31 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_19343FEAC();
    v7 = &type metadata for Library.Streams.IntelligenceFlow.JointResolverTelemetry;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v33 = v5 == 0xD000000000000028 && v32 == v1;
  if (v33 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193442904();
    v7 = &type metadata for Library.Streams.IntelligenceFlow.PlanGenerationTelemetry;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_30_5();
  v35 = v4 && v34 == v1;
  if (v35 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934417C0();
    v7 = &type metadata for Library.Streams.IntelligenceFlow.PlanResolutionTelemetry;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v37 = v5 == 0xD000000000000029 && v36 == v1;
  if (v37 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934419F0();
    v7 = &type metadata for Library.Streams.IntelligenceFlow.QueryDecorationTelemetry;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_33_1();
  v39 = v4 && v38 == v1;
  if (v39 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193441590();
    v7 = &type metadata for Library.Streams.IntelligenceFlow.ResponseGeneration;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v41 = v5 == 0xD000000000000024 && v40 == v1;
  if (v41 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485D44();
    v7 = &type metadata for Library.Streams.IntelligenceFlow.SearchToolTelemetry;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v43 = v5 == 0xD00000000000001ALL && v42 == v1;
  if (v43 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    sub_19343CD4C();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_34();
  v45 = v4 && v44 == v1;
  if (v45 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
  {
    v6 = sub_193485DEC();
    v7 = &type metadata for Library.Streams.LLMCache.CacheManagerTelemetry;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34();
  v47 = v4 && v46 == v1;
  if (v47 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
  {
    v6 = sub_193485E40();
    v7 = &type metadata for Library.Streams.PrivateCloudCompute.RequestLog;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_77_4();
  v49 = v4 && v1 == v48;
  if (v49 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485E94();
    v7 = &type metadata for Library.Streams.Sage.Transcript;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v51 = v5 == 0xD00000000000002FLL && v50 == v1;
  if (v51 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485EE8();
    v7 = &type metadata for Library.Streams.SensitiveContentAnalysis.ContentInteractionFlow;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v53 = v5 == 0xD000000000000026 && v52 == v1;
  if (v53 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485F3C();
    v7 = &type metadata for Library.Streams.SensitiveContentAnalysis.MediaAnalysis;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v55 = v5 == 0xD00000000000002DLL && v54 == v1;
  if (v55 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485F90();
    v7 = &type metadata for Library.Streams.SensitiveContentAnalysis.ResourcesInteraction;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v57 = v5 == 0xD000000000000026 && v56 == v1;
  if (v57 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193485FE4();
    v7 = &type metadata for Library.Streams.SensitiveContentAnalysis.UIInteraction;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v59 = v5 == 0xD000000000000017 && v58 == v1;
  if (v59 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    sub_1934E6C64();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v61 = v5 == 0xD000000000000012 && v60 == v1;
  if (v61 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_19348608C();
    v7 = &type metadata for Library.Streams.ToolKit.Transcript;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_35_5();
  v63 = v4 && v62 == v1;
  if (v63 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934860E0();
    v7 = &type metadata for Library.Streams.AdAttributionKit.AggregatedReporting.Conversion;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v65 = v5 == 0xD00000000000003ELL && v64 == v1;
  if (v65 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486134();
    v7 = &type metadata for Library.Streams.AdAttributionKit.AggregatedReporting.DeveloperReportedPurchase;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_36_6();
  v67 = v4 && v66 == v1;
  if (v67 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486188();
    v7 = &type metadata for Library.Streams.AdAttributionKit.AggregatedReporting.Purchase;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v69 = v5 == 0xD00000000000003BLL && v68 == v1;
  if (v69 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934861DC();
    v7 = &type metadata for Library.Streams.AdAttributionKit.AggregatedReporting.SystemReportedPurchase;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v71 = v5 == 0xD00000000000002CLL && v70 == v1;
  if (v71 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486230();
    v7 = &type metadata for Library.Streams.AppleIntelligence.Reporting.SafetyGuardrails;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v73 = v5 == 0xD00000000000002BLL && v72 == v1;
  if (v73 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486284();
    v7 = &type metadata for Library.Streams.AppleIntelligence.Reporting.SafetyOverrides;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v75 = v5 == 0xD000000000000014 && v74 == v1;
  if (v75 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934862D8();
    v7 = &type metadata for Library.Streams.Device.Wireless.WiFi;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v77 = v5 == 0xD00000000000003ALL && v76 == v1;
  if (v77 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_19348632C();
    v7 = &type metadata for Library.Streams.GenerativeExperiences.GeneratedImageFeatures.FailureReason;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v79 = v5 == 0xD00000000000003CLL && v78 == v1;
  if (v79 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486380();
    v7 = &type metadata for Library.Streams.GenerativeExperiences.GeneratedImageFeatures.UserInteraction;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_35_5();
  v81 = v4 && v80 == v1;
  if (v81 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934863D4();
    v7 = &type metadata for Library.Streams.GenerativeExperiences.WritingToolsFeatures.ComposeAndAdjust;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v83 = v5 == 0xD000000000000034 && v82 == v1;
  if (v83 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193442194();
    v7 = &type metadata for Library.Streams.GenerativeModels.GenerativeFunctions.Instrumentation;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v85 = v5 == 0xD00000000000003ALL && v84 == v1;
  if (v85 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193451118();
    v7 = &type metadata for Library.Streams.GenerativeModels.GenerativeFunctions.SystemInstrumentation;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v87 = v5 == 0xD000000000000026 && v86 == v1;
  if (v87 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    sub_19358810C();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v89 = v5 == 0xD00000000000002ALL && v88 == v1;
  if (v89 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_19348647C();
    v7 = &type metadata for Library.Streams.MobileAsset.LifeCycle.InstrumentationEvent;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_33_1();
  v91 = v4 && v90 == v1;
  if (v91 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934864D0();
    v7 = &type metadata for Library.Streams.ModelCatalog.Subscriptions.Decisions;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_8();
  v93 = v4 && v92 == v1;
  if (v93 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486524();
    v7 = &type metadata for Library.Streams.ModelCatalog.Subscriptions.ExplicitRequests;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v95 = v5 == 0xD00000000000001CLL && v94 == v1;
  if (v95 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486578();
    v7 = &type metadata for Library.Streams.Moments.Events.Notifications;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v97 = v5 == 0xD000000000000019 && v96 == v1;
  if (v97 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934865CC();
    v7 = &type metadata for Library.Streams.Shortcuts.UseModel.Safety;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_33_1();
  v99 = v4 && v98 == v1;
  if (v99 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486620();
    v7 = &type metadata for Library.Streams.TextUnderstanding.Deletions.Document;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_14_12();
  v101 = v4 && v100 == v1;
  if (v101 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486674();
    v7 = &type metadata for Library.Streams.TextUnderstanding.Output.Contact;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v103 = v5 == 0xD000000000000021 && v102 == v1;
  if (v103 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934866C8();
    v7 = &type metadata for Library.Streams.TextUnderstanding.Output.Document;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34();
  v105 = v4 && v104 == v1;
  if (v105 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
  {
    v6 = sub_19348671C();
    v7 = &type metadata for Library.Streams.TextUnderstanding.Output.Event;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v107 = v5 == 0xD00000000000001DLL && v106 == v1;
  if (v107 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486770();
    v7 = &type metadata for Library.Streams.TextUnderstanding.Output.Link;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v109 = v5 == 0xD000000000000021 && v108 == v1;
  if (v109 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934867C4();
    v7 = &type metadata for Library.Streams.TextUnderstanding.Output.Location;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_33_1();
  v111 = v4 && v110 == v1;
  if (v111 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486818();
    v7 = &type metadata for Library.Streams.TextUnderstanding.Output.NamedEntity;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34();
  v113 = v4 && v112 == v1;
  if (v113 || (OUTLINED_FUNCTION_26_2() & 1) != 0)
  {
    v6 = sub_19348686C();
    v7 = &type metadata for Library.Streams.TextUnderstanding.Output.Topic;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_33_1();
  v115 = v4 && v114 == v1;
  if (v115 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934868C0();
    v7 = &type metadata for Library.Streams.TrustKit.Decisioning.TKModelMessages;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_8();
  v117 = v4 && v116 == v1;
  if (v117 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486914();
    v7 = &type metadata for Library.Streams.WalletPaymentsCommerce.FoundIn.ClassicOrder;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_36_6();
  v119 = v4 && v118 == v1;
  if (v119 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486968();
    v7 = &type metadata for Library.Streams.WalletPaymentsCommerce.FoundIn.ExtractedOrder;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_30_5();
  v121 = v4 && v120 == v1;
  if (v121 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_1934869BC();
    v7 = &type metadata for Library.Streams.WalletPaymentsCommerce.FoundIn.OrderEmail;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_8();
  v123 = v4 && v122 == v1;
  if (v123 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486A10();
    v7 = &type metadata for Library.Streams.WalletPaymentsCommerce.FoundIn.TrackedOrder;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v125 = v5 == 0xD00000000000002ALL && v124 == v1;
  if (v125 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486A64();
    v7 = &type metadata for Library.Streams.WalletPaymentsCommerce.FoundIn.Transaction;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v127 = v5 == 0xD000000000000018 && v126 == v1;
  if (v127 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486AB8();
    v7 = &type metadata for Library.Streams.Zeolite.Ledger.Embedding;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v129 = v5 == 0xD000000000000039 && v128 == v1;
  if (v129 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486B0C();
    v7 = &type metadata for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.Availability;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v131 = v5 == 0xD000000000000038 && v130 == v1;
  if (v131 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486B60();
    v7 = &type metadata for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.MobileAsset;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v133 = v5 == 0xD000000000000039 && v132 == v1;
  if (v133 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486BB4();
    v7 = &type metadata for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.ModelCatalog;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v135 = v5 == 0xD000000000000042 && v134 == v1;
  if (v135 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486C08();
    v7 = &type metadata for Library.Streams.AppleIntelligence.Reporting.AssetDeliveryLog.UnifiedAssetFramework;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_8();
  v137 = v4 && v136 == v1;
  if (v137 || (OUTLINED_FUNCTION_37_2() & 1) != 0)
  {
    v6 = sub_193486C5C();
    v7 = &type metadata for Library.Streams.AppleIntelligence.Reporting.Invocation.Step;
    goto LABEL_7;
  }

LABEL_8:
  OUTLINED_FUNCTION_114();
}

void OUTLINED_FUNCTION_10_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_4_6(uint64_t a1@<X8>)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 25);
}

uint64_t OUTLINED_FUNCTION_24_5()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 OUTLINED_FUNCTION_3_9(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

id OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2)
{

  return sub_19343D150(a1, a2, 6, 0, v2, 14, 3);
}

uint64_t OUTLINED_FUNCTION_9_11@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_19344865C(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return sub_19393C3C0();
}

void OUTLINED_FUNCTION_10_15(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E62F8];

  sub_1934ED494(319, a2, a3, v4);
}

id OUTLINED_FUNCTION_10_16()
{

  return sub_1934E5F70(0xD000000000000017, v0 | 0x8000000000000000, v1 + 48, v2 | 0x8000000000000000, 2);
}

uint64_t OUTLINED_FUNCTION_10_17()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_10_19()
{

  return sub_1934FAE28(v0, type metadata accessor for AIML.UUID);
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_10_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_28()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_10_32(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 1008, v2, v3);
}

uint64_t OUTLINED_FUNCTION_10_33()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_10_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v6 = a4 + 16 * v4;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
}

uint64_t OUTLINED_FUNCTION_10_37()
{

  return type metadata accessor for AdAttributionKitConversion();
}

id OUTLINED_FUNCTION_15_12(uint64_t a1, uint64_t a2)
{

  return sub_19343D150(a1, a2, 2, 0, v2, 13, 0);
}

uint64_t OUTLINED_FUNCTION_10_41@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_10_44()
{

  return type metadata accessor for TextUnderstandingDocument();
}

uint64_t OUTLINED_FUNCTION_10_45()
{

  return sub_19365F3E0(v0, 0);
}

uint64_t OUTLINED_FUNCTION_10_46@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_10_47()
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_10_50()
{

  return sub_1936A1680(v0, type metadata accessor for OasisAnalyticsMetadata);
}

uint64_t OUTLINED_FUNCTION_10_51()
{

  return swift_projectBox();
}

void OUTLINED_FUNCTION_10_57(uint64_t a1@<X8>)
{
  v2 = (*(v1 - 72) + a1);
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *(v1 - 96) = v3;
  *(v1 - 88) = v2;
}

uint64_t OUTLINED_FUNCTION_10_61()
{

  return type metadata accessor for AppleIntelligenceReportingInvocationStep();
}

void *OUTLINED_FUNCTION_10_63()
{

  return memcpy(&STACK[0x578], (v0 + v1), 0x48uLL);
}

void OUTLINED_FUNCTION_10_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 11;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

void OUTLINED_FUNCTION_10_65(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E62F8];

  sub_1937D4290(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_10_66()
{

  return type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
}

uint64_t OUTLINED_FUNCTION_10_67()
{

  return type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_33_2()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

char *OUTLINED_FUNCTION_33_5(char *a1, uint64_t a2, uint64_t a3, char *a4)
{

  return sub_1934B0FCC(a1, v6, 1, a4, v5, v4);
}

__n128 *OUTLINED_FUNCTION_11_3(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v2 + *(v3 + 56);
  *(result->n128_u64 + v2) = 1;
  return result;
}

char *OUTLINED_FUNCTION_19_2@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 5;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_6(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  *(v1 + 41) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

unint64_t OUTLINED_FUNCTION_197@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 4);
  *(v2 - 4) = v3;
  return v4 | (v3 << 32);
}

uint64_t OUTLINED_FUNCTION_33_12()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33_15()
{

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_33_17()
{

  return sub_19344A738(v1, v0);
}

uint64_t OUTLINED_FUNCTION_33_21()
{

  return sub_1934486F8(v3 + v2, v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_33_22@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 24);
  return sub_19350CB08(v2, v3);
}

void OUTLINED_FUNCTION_33_23()
{

  sub_1936A3B98();
}

uint64_t OUTLINED_FUNCTION_33_24()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_33_28()
{

  return sub_19393C2E0();
}

uint64_t OUTLINED_FUNCTION_78_3()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_78_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{

  return sub_193456418(a22, a23);
}

uint64_t OUTLINED_FUNCTION_78_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21)
{
  a19 = a11;
  a20 = a12;
  a21 = a13;

  return sub_193564E20(&a19);
}

__n128 OUTLINED_FUNCTION_78_14@<Q0>(__n128 *a1@<X8>)
{
  v2 = a1[2].n128_u64[0];
  v3 = a1[2].n128_u8[8];
  result = a1[1];
  *(v1 - 112) = result;
  *(v1 - 96) = v2;
  *(v1 - 88) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_15()
{
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v7 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v4 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
}

id static Library.Streams.IntelligenceFlow.Telemetry.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_9 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510238);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BB78, &qword_193958C60);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static IntelligenceFlowTelemetry.columns.getter()
{
  v12 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_22_15(inited, xmmword_193950B10);
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v3 = OUTLINED_FUNCTION_17_12();
  result = sub_19343D150(v3, 0xE900000000000064, 6, 0, v1, 14, 3);
  if (result)
  {
    inited[2].n128_u64[0] = result;
    sub_19343D230(inited);
    v5 = swift_initStackObject();
    v6 = OUTLINED_FUNCTION_22_15(v5, xmmword_193950B10);
    *(v6 + 16) = xmmword_193950B10;
    *(v6 + 32) = sub_19393C850();
    v7 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
    OUTLINED_FUNCTION_11();
    result = sub_19343D150(v8, v9, v10, v11, v6, 4, 0);
    if (result)
    {
      v5[2].n128_u64[0] = result;
      sub_19343D230(v5);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return sub_19393CA30();
}

char *OUTLINED_FUNCTION_17_8@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return sub_1934486F8(v5 + v3, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_17_13@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1934487B4(v4 + a3, v3, a1, a2);
}

void OUTLINED_FUNCTION_17_15()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 10);
  *(v1 - 32) = *v0;
  *(v1 - 22) = v3;
  *(v1 - 24) = v2;
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_19393BE60();
}

unint64_t *OUTLINED_FUNCTION_17_23(unint64_t *result, int a2)
{
  v2 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
  *result = (v2 | (v2 << 57)) & 0xF000000000000007;
  return result;
}

void OUTLINED_FUNCTION_17_24()
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v0 + 8);
  *(v2 + 3368) = *v0;
  *(v2 + 3376) = v5;
}

void *OUTLINED_FUNCTION_17_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, v66, 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_17_27(uint64_t result)
{
  v1 = *(result + 24) >> 1;
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_28(uint64_t a1)
{

  return sub_1934486F8(a1, v4 + v3, v1, v2);
}

void OUTLINED_FUNCTION_17_29(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 96) = v4;
  *(v2 - 88) = v3;
}

BOOL OUTLINED_FUNCTION_17_30@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_193656044(a3, v3, a1, a2, v4);
}

void *OUTLINED_FUNCTION_17_32(void *a1)
{

  return memcpy(a1, (v1 + 2592), 0xF8uLL);
}

uint64_t OUTLINED_FUNCTION_17_36()
{
  sub_193450268(v1, v0);
  sub_193450268(v3, v2);
  return v1;
}

void OUTLINED_FUNCTION_17_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 15;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

__n128 *OUTLINED_FUNCTION_60_0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = (result->n128_u64 + v3);
  v5 = result + v3 + *(v2 + 56);
  *v4 = 0;
  return result;
}

id sub_19343CD4C()
{
  v0 = static Library.Streams.IntelligenceFlow.Telemetry.configuration.getter();
  v1 = [v0 streamIdentifier];

  v2 = static Library.Streams.IntelligenceFlow.Telemetry.configuration.getter();
  v3 = [v2 streamIdentifier];

  v4 = sub_19393C580();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_193950B10;
  result = BMEventTimestampSQLColumn();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v7 + 32) = result;
  v9 = static IntelligenceFlowTelemetry.columns.getter();
  sub_19343D230(v9);
  v10 = v7;
  result = BMEventBookmarkSQLColumns();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  sub_193441130();
  v12 = sub_19393C6D0();

  sub_19343D230(v12);
  v13 = *sub_19344129C();

  sub_19343D230(v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2F0]);
  result = sub_1934412DC(v4, v6, v10);
  if (result)
  {
    v16 = result;
    v17 = static Library.Streams.IntelligenceFlow.Telemetry.configuration.getter();
    v18 = [objc_allocWithZone(MEMORY[0x1E698F320]) initWithIdentifier:v1 schema:v16 configuration:v17];

    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_19343CF00(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_19343CF40(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = dynamic_cast_existential_1_unconditional(AssociatedTypeWitness);
  v6 = v5;
  v7 = *(a2 + 32);
  v8 = OUTLINED_FUNCTION_17_6();
  v9 = v7(v8);
  v22 = [v9 streamIdentifier];

  v10 = OUTLINED_FUNCTION_17_6();
  v11 = v7(v10);
  v12 = [v11 streamIdentifier];

  v23 = sub_19393C580();
  v14 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_193950B10;
  result = BMEventTimestampSQLColumn();
  if (result)
  {
    *(v15 + 32) = result;
    v17 = (*(v6 + 64))(v4, v6);
    sub_19343D230(v17);
    v18 = objc_allocWithZone(MEMORY[0x1E698F2F0]);
    result = sub_1934412DC(v23, v14, v15);
    if (result)
    {
      v19 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB38, &qword_193950B58);
      v20 = OUTLINED_FUNCTION_17_6();
      v21 = v7(v20);
      swift_getAssociatedConformanceWitness();
      type metadata accessor for EventWrapper();
      return sub_193440644(v22, v19, v21);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19343D150(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (!a2)
  {
    v14 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_19393C570();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v15 = sub_19393C6C0();

LABEL_6:
  v16 = [v8 initWithName:v14 dataType:a3 requestOnly:a4 & 1 fieldPath:v15 protoDataType:a6 convertedType:a7];

  return v16;
}

uint64_t sub_19343D230(unint64_t a1)
{
  v3 = sub_19343D2DC(a1);
  v4 = sub_19343D2DC(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_193440F1C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_193440FBC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_19343D2DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_19393C9A0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL OUTLINED_FUNCTION_25_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_122_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_12(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_20()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_135(uint64_t result, __n128 a2)
{
  *(result + 168) = a2;
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_22@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v7;
}

__n128 OUTLINED_FUNCTION_31_4@<Q0>(__n128 *a1@<X8>)
{
  v1 = a1[2].n128_u64[0];
  v2 = a1[2].n128_u8[8];
  return a1[1];
}

void OUTLINED_FUNCTION_25_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = 18;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

char *OUTLINED_FUNCTION_25_37()
{
  v3 = (v2 + 4 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 4;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_39@<X0>(uint64_t a1@<X8>)
{

  return sub_1934487B4(v3 + a1, v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_25_40()
{

  return sub_19393C550();
}

char *OUTLINED_FUNCTION_60_1@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_116_3()
{

  return sub_19393C640();
}

uint64_t OUTLINED_FUNCTION_55_1()
{
  result = *v0;
  v2 = *(*v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_217()
{
  v2 = *v0;
}

void OUTLINED_FUNCTION_116_8(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  v1 = *(a1 + 20);
  v4 = *(a1 + 24);
  v2 = *(a1 + 28);
}

uint64_t OUTLINED_FUNCTION_116_10()
{
  result = v3 + v2 + *(v1 + 56);
  *(v3 + v2) = v0;
  return result;
}

void *GenerativeFunctionsInstrumentationEvent.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  v5 = sub_19343E508(v4);
  v6 = a1 + v2[9];
  v7 = j_j__OUTLINED_FUNCTION_131(v5);
  v8 = v2[13];
  sub_19343E518(v7);
  v9 = v2[14];
  sub_19343E51C((a1 + v9));
  *a1 = *sub_193443894();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v11 = a1 + v2[7];
  GenerativeFunctionsInstrumentationEvent.Identifiers.init()();
  v12 = (a1 + v2[8]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *v6 = 0;
  *(v6 + 4) = 256;
  MonotonicTimestamp.init()(a1 + v2[10]);
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = 0;
  sub_193444048(*(a1 + v8));
  *(a1 + v8) = 0xF000000000000007;
  sub_193444060(*(a1 + v9));
  *(a1 + v9) = 0xF000000000000007;
  *(a1 + v2[15]) = MEMORY[0x1E69E7CC0];
  GenerativeFunctionsInstrumentationEvent.IdentifierSet.init()(__src);
  return memcpy(a1 + v2[16], __src, 0x68uLL);
}

uint64_t sub_19343DAA0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19343DAD8()
{
  OUTLINED_FUNCTION_8_4();
  sub_19393BE00();
  v0 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t static GenerativeFunctionsInstrumentationEvent.withPresetsAnd(_:)@<X0>(uint64_t (*a1)(_DWORD *)@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_19393BE00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MonotonicTimestamp();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeFunctionsInstrumentationEvent.init()(a2);
  static MonotonicTimestamp.nowForSuspendingClock()(v13);
  v14 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  sub_193445278(v13, a2 + v14[10]);
  sub_19393BDF0();
  sub_19393BDD0();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *(a2 + v14[12]) = v16;
  v17 = [objc_opt_self() currentThread];
  v18 = [v17 qualityOfService];

  *(a2 + v14[11]) = v18;
  result = a1(a2);
  if (v2)
  {
    return sub_193475504(a2);
  }

  return result;
}

uint64_t type metadata accessor for MonotonicTimestamp()
{
  result = qword_1ED50F6B0;
  if (!qword_1ED50F6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return type metadata accessor for EventWrapper();
}

uint64_t OUTLINED_FUNCTION_8_16(unint64_t *a1)
{

  return sub_19349DAF4(a1, v1, v2);
}

void OUTLINED_FUNCTION_7_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = 4;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

void OUTLINED_FUNCTION_19_5(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  *(v2 + 9) = 0;
}

__n128 *OUTLINED_FUNCTION_8_18(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v2 + *(v3 + 56);
  *(result->n128_u64 + v2) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_19(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 - 96);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_20()
{

  return type metadata accessor for IntelligenceFlowIdentifiers();
}

__n128 OUTLINED_FUNCTION_5_10(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return sub_19393C570();
}

id OUTLINED_FUNCTION_8_24(void *a1)
{

  return sub_1934E6000(a1, v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_8_34@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  v5 = v3[1];
  return v1;
}

char *OUTLINED_FUNCTION_14_6()
{
  v3 = (v2 + 3 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 4;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_37(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_19343D230(v1);
}

uint64_t OUTLINED_FUNCTION_8_38@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_8_39()
{

  return type metadata accessor for AdAttributionKitPurchase();
}

uint64_t OUTLINED_FUNCTION_8_45()
{
  result = type metadata accessor for OasisAnalyticsMetadata(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_47()
{

  return type metadata accessor for DeviceExpertTroubleshooting();
}

uint64_t OUTLINED_FUNCTION_8_49()
{

  return type metadata accessor for WritingToolsComposeAndAdjust();
}

uint64_t OUTLINED_FUNCTION_8_51@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v3 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_53()
{

  return type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
}

uint64_t OUTLINED_FUNCTION_8_54(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 208, v2, v3);
}

char *OUTLINED_FUNCTION_8_59()
{
  v3 = (v2 + 9 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 9;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_60()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_10@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1] & 1;

  return sub_19393CAD0();
}

BOOL OUTLINED_FUNCTION_8_62@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1937E6FC8(a3, v3, a1, a2, v4);
}

BOOL OUTLINED_FUNCTION_8_63@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_193805DF0(a3, v3, a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_126_2(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_126_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = v6;
}

__n128 *OUTLINED_FUNCTION_126_10(__n128 *result, __n128 a2)
{
  *(v3 - 160) = result;
  result[1] = a2;
  *(v3 - 104) = result + v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_126_13@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_19393CAD0();
}

id static Library.Streams.IntelligenceFlow.Experimentation.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:15552000.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1939583F0;
    sub_19343CF00(0, &qword_1ED506688, 0x1E696AE18);
    v6 = OUTLINED_FUNCTION_3_27();
    v7 = objc_allocWithZone(MEMORY[0x1E698F330]);
    *(v5 + 32) = sub_19343FE48(0xD00000000000001DLL, 0x8000000193A18010, v6);
    v8 = OUTLINED_FUNCTION_3_27();
    v9 = objc_allocWithZone(MEMORY[0x1E698F330]);
    *(v5 + 40) = sub_19343FE48(0x2D656C6261736964, 0xEC00000069726973, v8);
    v10 = objc_opt_self();
    if (_MergedGlobals_11 != -1)
    {
      swift_once();
    }

    v11 = sub_19393BE60();
    __swift_project_value_buffer(v11, qword_1ED5102F8);
    v12 = sub_19393BE30();
    v13 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC88, &qword_1939593F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = sub_19393C6C0();
    sub_19343CF00(0, &qword_1ED506680, 0x1E698F330);
    v16 = sub_19393C6C0();

    v17 = sub_19343E840(v12, v13, ObjCClassFromMetadata, v4, 0, v15, 0, 1, 0, 1, 0, v16, 0xD00000000000001BLL, 0x8000000193A18DB0, v10);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19343E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = sub_19393C570();

  BYTE2(v21) = a10;
  BYTE1(v21) = a9;
  LOBYTE(v21) = a8;
  v19 = [a15 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

  return v19;
}

uint64_t OUTLINED_FUNCTION_3_12@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
}

id OUTLINED_FUNCTION_3_15()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;

  return v0;
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return sub_19393C290();
}

uint64_t OUTLINED_FUNCTION_3_18()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_20@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return MonotonicTimestampValue.hash(into:)();
}

void OUTLINED_FUNCTION_5_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 3;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

uint64_t OUTLINED_FUNCTION_3_23(unint64_t *a1)
{

  return sub_1934DF3E8(a1);
}

uint64_t OUTLINED_FUNCTION_3_24(uint64_t a1, uint64_t a2)
{

  return sub_193451F04(a1, a2, 2020175477, 0xE400000000000000);
}

uint64_t OUTLINED_FUNCTION_3_25()
{

  return type metadata accessor for ZeoliteEmbedding();
}

__n128 OUTLINED_FUNCTION_3_26(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  return result;
}

id OUTLINED_FUNCTION_3_27()
{

  return sub_19343FDAC(v0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_3_28()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_3_38()
{
  v1 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v3 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x19);
  v4 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v5 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
  return *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
}

__n128 OUTLINED_FUNCTION_3_39@<Q0>(__n128 *a1@<X8>)
{
  result = a1[2];
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  v5 = a1[3].n128_u64[0];
  v6 = a1[3].n128_u8[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_40()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_43@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_44()
{

  return type metadata accessor for AdAttributionKitConversion();
}

uint64_t OUTLINED_FUNCTION_3_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  *(v1 - 128) = *a1;
  *(v1 - 120) = v3 & 1;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_3_50@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v4 = *(*(v2 + 24) + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_52@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_19393C640();
}

uint64_t OUTLINED_FUNCTION_3_55()
{

  return type metadata accessor for ModelCatalogExplicitRequests();
}

void OUTLINED_FUNCTION_3_58()
{
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v1 + 16);
  v7 = *(v1 + 8);
  *(v3 - 104) = v2;
  *(v3 - 96) = v7;
  *(v3 - 88) = v6;
}

uint64_t OUTLINED_FUNCTION_3_63()
{

  return type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
}

uint64_t OUTLINED_FUNCTION_3_64()
{

  return type metadata accessor for AdAttributionKitSystemReportedPurchase();
}

uint64_t OUTLINED_FUNCTION_3_66()
{

  return type metadata accessor for TextUnderstandingLink();
}

uint64_t OUTLINED_FUNCTION_3_69@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);

  return sub_1934D11C8(v2, v4);
}

void OUTLINED_FUNCTION_3_70(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
}

uint64_t OUTLINED_FUNCTION_3_72(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 1920, v2, v3);
}

char *OUTLINED_FUNCTION_3_74()
{
  v3 = (v2 + 5 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 5;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_75(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);

  return type metadata accessor for SensitiveContentAnalysisResourcesInteraction();
}

uint64_t OUTLINED_FUNCTION_24_8()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_24_9()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
}

uint64_t OUTLINED_FUNCTION_15_14()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_24_21(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E6969530];

  sub_193610AA0(319, a2, v3);
}

__n128 *OUTLINED_FUNCTION_24_22(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = result + v2 + *(v3 + 56);
  return result;
}

void OUTLINED_FUNCTION_24_24(uint64_t a1, unint64_t *a2)
{

  sub_1936336EC(319, a2, v2);
}

uint64_t OUTLINED_FUNCTION_24_30()
{

  return sub_19393C3C0();
}

double OUTLINED_FUNCTION_24_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18)
{
  result = a17;
  if (a18)
  {
    return v10;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_24_36@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1936A6958(a3, v3, a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_24_37()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_24_39@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return sub_1936161E4(a1, a2, a3, a4, a5);
}

void OUTLINED_FUNCTION_24_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = 20;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

uint64_t OUTLINED_FUNCTION_24_48()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_6_5()
{

  JUMPOUT(0x193B18A90);
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_15()
{
  v2 = *(v0 - 280);
  v3 = *(v0 - 296);

  return sub_19345012C(v2, v3);
}

__n128 OUTLINED_FUNCTION_2_13(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_16()
{

  return type metadata accessor for DeviceMetadata();
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return sub_19393C230();
}

void OUTLINED_FUNCTION_4_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 5;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

uint64_t OUTLINED_FUNCTION_16_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return type metadata accessor for ZeoliteEmbedding();
}

uint64_t OUTLINED_FUNCTION_5_21()
{

  return type metadata accessor for GenerativeExperiencesTransparencyLog();
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_23()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  *(v1 - 64) = *v0;
  *(v1 - 56) = v2;
  *(v1 - 48) = v3;
  *(v1 - 40) = v4;
  *(v1 - 32) = v5;
  *(v1 - 24) = v6;
}

uint64_t OUTLINED_FUNCTION_5_24()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return sub_19393C830();
}

uint64_t OUTLINED_FUNCTION_5_31@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 32);
  return sub_19350CB08(v2, v3);
}

void OUTLINED_FUNCTION_48_2(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *v1;
  v6 = *(v1 + 8);
  *(v2 - 96) = v3;
  *(v2 - 88) = v4 & 1;
  *(v2 - 112) = v5;
  *(v2 - 104) = v6 & 1;
}

uint64_t OUTLINED_FUNCTION_5_33()
{

  return type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent();
}

void OUTLINED_FUNCTION_5_37(uint64_t a1, unint64_t *a2)
{

  sub_1935F3820(319, a2, type metadata accessor for AIML.UUID);
}

uint64_t OUTLINED_FUNCTION_5_38(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 160, v2, v3);
}

id OUTLINED_FUNCTION_5_40(uint64_t a1, uint64_t a2)
{

  return sub_19343D150(a1, a2, 2, 0, v2, 13, 0);
}

uint64_t OUTLINED_FUNCTION_5_41()
{

  return type metadata accessor for AdAttributionKitPurchase();
}

uint64_t OUTLINED_FUNCTION_5_43()
{

  return type metadata accessor for GenerativeExperiencesPromptAnalytics();
}

void OUTLINED_FUNCTION_5_45(uint64_t a1, unint64_t *a2)
{

  sub_19363ECB0(319, a2, type metadata accessor for AIML.UUID);
}

void OUTLINED_FUNCTION_5_46(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  *(v1 - 128) = *a1;
  *(v1 - 120) = v2 & 1;
}

void OUTLINED_FUNCTION_5_49(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = *(v2 + 8);
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_51()
{

  return type metadata accessor for TextUnderstandingDocument();
}

void *OUTLINED_FUNCTION_5_52(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_5_53()
{

  return type metadata accessor for TextUnderstandingLocation();
}

uint64_t OUTLINED_FUNCTION_5_54(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_19343D230(v1);
}

void OUTLINED_FUNCTION_5_55(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_19367A478(319, a2, a3, v4);
}

unint64_t OUTLINED_FUNCTION_5_57@<X0>(__int16 a1@<W8>)
{
  *(v3 - 128) = a1;
  *(v3 - 120) = v2;
  *(v3 - 112) = v1;
  *(v3 - 111) = HIBYTE(v1) & 1;

  return sub_19368541C();
}

uint64_t OUTLINED_FUNCTION_5_58()
{

  return type metadata accessor for AppleIntelligenceAvailability();
}

__n128 OUTLINED_FUNCTION_5_60()
{
  result = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v3 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  return result;
}

void OUTLINED_FUNCTION_5_62()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  v5 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_5_63(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 864, v2, v3);
}

uint64_t OUTLINED_FUNCTION_5_66()
{

  return type metadata accessor for AppleIntelligenceReportingInvocationStep();
}

uint64_t OUTLINED_FUNCTION_5_67()
{

  return type metadata accessor for AppleIntelligenceReportingInvocationStep();
}

uint64_t OUTLINED_FUNCTION_5_68()
{

  return type metadata accessor for GeneratedImageFailureReason();
}

uint64_t OUTLINED_FUNCTION_5_70@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_193641A34(v2, v3);
}

uint64_t OUTLINED_FUNCTION_5_71()
{

  return swift_once();
}

id OUTLINED_FUNCTION_5_75(uint64_t a1, uint64_t a2)
{

  return sub_19343D150(a1, a2, 0, 0, v2, 4, 0);
}

uint64_t OUTLINED_FUNCTION_5_77(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);

  return type metadata accessor for SensitiveContentAnalysisContentInteractionFlow();
}

uint64_t GenerativeFunctionsInstrumentationEvent.subtype.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for GenerativeFunctionsInstrumentationEvent(v2);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.eventType.getter()
{
  v0 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

unint64_t sub_19343FD54()
{
  result = qword_1ED507B28;
  if (!qword_1ED507B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507B28);
  }

  return result;
}

id sub_19343FDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_19393C570();

  if (a3)
  {
    v5 = sub_19393C6C0();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() predicateWithFormat:v4 argumentArray:v5];

  return v6;
}

id sub_19343FE48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_19393C570();

  v6 = [v3 initWithIdentifier:v5 predicate:a3];

  return v6;
}

unint64_t sub_19343FEAC()
{
  result = qword_1ED507B08;
  if (!qword_1ED507B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507B08);
  }

  return result;
}

id static Library.Streams.IntelligenceFlow.JointResolverTelemetry.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_13 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5103B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CEA0, &qword_193960ED0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

size_t OUTLINED_FUNCTION_16_7@<X0>(unint64_t a1@<X8>)
{

  return sub_193484E8C(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_16_8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 40) = a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 25) = v4;
  *(a1 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_9()
{
  result = v2 + v1 + *(v0 + 56);
  *(v2 + v1) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_9()
{
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_36_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

void OUTLINED_FUNCTION_16_13(uint64_t a1, unint64_t *a2)
{

  sub_1934F702C(319, a2, v2);
}

void OUTLINED_FUNCTION_16_15(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 1;
}

uint64_t OUTLINED_FUNCTION_16_17()
{

  return sub_1934948FC();
}

uint64_t OUTLINED_FUNCTION_65_1()
{
  *(v0 + 48) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_16_18()
{
  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  v7 = v0 & 0x3FFFFFFFFFFFFFFFLL;
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = *(v7 + 48);
  v11 = *(v7 + 52);
}

id OUTLINED_FUNCTION_16_19()
{

  return sub_19343D150(0xD00000000000001BLL, v1 | 0x8000000000000000, 2, 1, v0, 13, 0);
}

uint64_t OUTLINED_FUNCTION_16_24()
{

  return sub_19393C640();
}

uint64_t OUTLINED_FUNCTION_16_29()
{
  sub_193450268(v2, v1);
  sub_193450268(v3, v0);
  return v2;
}

uint64_t OUTLINED_FUNCTION_16_34()
{
  sub_193450268(v1, v0);
  sub_193450268(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_16_37@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_16_39()
{

  return type metadata accessor for MobileAssetInstrumentationEvent();
}

uint64_t OUTLINED_FUNCTION_16_40()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_16_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v4;
  v7 = a4 + 16 * v5;
  *(v7 + 32) = 14;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

BOOL OUTLINED_FUNCTION_16_44@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1937E0F14(a3, v3, a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_16_45(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);

  return type metadata accessor for AppleIntelligenceSafetyOverrides();
}

id sub_1934406A4(void *a1, void *a2, void *a3)
{
  v7 = [v3 initWithIdentifier:a1 schema:a2 configuration:a3];

  return v7;
}

id static Library.Streams.IntelligenceFlow.IFRequestTelemetry.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_32 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511118);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F698, &qword_1939757F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static Library.Streams.GenerativeModels.GenerativeFunctions.Instrumentation.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_2 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED50FFF8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD98, &qword_193960E40);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static GenerativeFunctionsInstrumentationEvent.columns.getter()
{
  v80 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_96_6();
  OUTLINED_FUNCTION_59_1();
  result = sub_19343D150(v10, v11, 2, 0, v0, 13, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(inited, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v22[2].n128_u64[0] = sub_19393C850();
  v31 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v32, v33, v34, v35, v22, 4, 0);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v36 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v36, v37, v38, v39, v40, v41, v42, v43, v44);
  v45 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v45[2].n128_u64[0] = sub_19393C850();
  v54 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v55, v56, v57, v58, v45, 3, 0);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v59 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v59, v60, v61, v62, v63, v64, v65, v66, v67);
  v68 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v68, v69, v70, v71, v72, v73, v74, v75, v76);
  v68[2].n128_u64[0] = sub_19393C850();
  v77 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_111_3();
  OUTLINED_FUNCTION_84_1();
  result = sub_19343D150(v78, v79, 1, 0, v68, 0, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v80;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *OUTLINED_FUNCTION_56_3(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  a2[5] = v4;

  return __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
}

uint64_t OUTLINED_FUNCTION_56_9@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 40) = v2;
  *(result + 44) = a2;
  *(result + 45) = *(v3 + 29);
  *(result + 47) = *(v3 + 31);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_56_12()
{

  sub_193498018();
}

void *OUTLINED_FUNCTION_56_14(void *a1)
{

  return memcpy(a1, (v1 + 192), 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_56_15(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_193689208(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_56_17()
{
  result = type metadata accessor for IntelligenceFlowPlanGenerationTelemetry.PGModelInferenceStarted(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_56_18(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 4;
  *(v1 + 16) = 2;
}

char *OUTLINED_FUNCTION_131_1@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 17;
  return result;
}

uint64_t sub_193440F1C(uint64_t a1)
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
    sub_19393C9A0();
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
  result = sub_19393C910();
  *v1 = result;
  return result;
}

uint64_t sub_193440FBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_19393C9A0();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_19343D2DC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_19343CF00(0, &qword_1ED5082B0, 0x1E698F2D8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_193441200();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AC38, &qword_193950F78);
          v9 = sub_193441174(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_193441130()
{
  result = qword_1ED5082B0;
  if (!qword_1ED5082B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5082B0);
  }

  return result;
}

void (*sub_193441174(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_193441264(a3);
  sub_193441270(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x193B17E70](a2, a3);
  }

  *a1 = v7;
  return sub_193441294;
}

unint64_t sub_193441200()
{
  result = qword_1ED5078A0;
  if (!qword_1ED5078A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3AC38, &qword_193950F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5078A0);
  }

  return result;
}

unint64_t sub_193441270(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t *sub_19344129C()
{
  if (qword_1ED50F020 != -1)
  {
    OUTLINED_FUNCTION_6_18();
  }

  return &qword_1ED5127C0;
}

id sub_1934412DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = sub_19393C570();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_19343CF00(0, &qword_1ED5082B0, 0x1E698F2D8);
  v6 = sub_19393C6C0();

LABEL_6:
  v7 = [v3 initWithTableName:v5 columns:v6];

  return v7;
}

unint64_t sub_193441388()
{
  result = qword_1ED5068C8;
  if (!qword_1ED5068C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5068C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_105_1(uint64_t result)
{
  v1 = *(result + 24) >> 1;
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_121()
{
}

uint64_t OUTLINED_FUNCTION_155@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  v3 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_10()
{
}

char *OUTLINED_FUNCTION_98_14@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 16;
  return result;
}

unint64_t sub_193441590()
{
  result = qword_1ED507B18;
  if (!qword_1ED507B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507B18);
  }

  return result;
}

id static Library.Streams.IntelligenceFlow.ResponseGeneration.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_14 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510418);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3A8, &qword_1939637B0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1934417C0()
{
  result = qword_1ED506898;
  if (!qword_1ED506898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506898);
  }

  return result;
}

id static Library.Streams.IntelligenceFlow.PlanResolutionTelemetry.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_30 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511058);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F468, &qword_193974780);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1934419F0()
{
  result = qword_1ED507AF8;
  if (!qword_1ED507AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507AF8);
  }

  return result;
}

id static Library.Streams.IntelligenceFlow.QueryDecorationTelemetry.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_17 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510518);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA90, &qword_1939669F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_38_1@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a2 + 32) = v2;
  *(a2 + 40) = 1;
  return a1;
}

char *OUTLINED_FUNCTION_54_1@<X0>(uint64_t a1@<X8>)
{
  result = v1 + *(v2 + 56);
  *v1 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_272()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_26_12()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_26_13(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

void OUTLINED_FUNCTION_26_16(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 16;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_26_18()
{

  return type metadata accessor for AIML.UUID();
}

uint64_t OUTLINED_FUNCTION_26_19()
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_26_23()
{

  return sub_19393C540();
}

void OUTLINED_FUNCTION_26_24()
{

  sub_19368FCE4();
}

uint64_t OUTLINED_FUNCTION_26_27()
{

  return sub_1934948FC();
}

uint64_t OUTLINED_FUNCTION_26_32(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 272, v2, v3);
}

uint64_t OUTLINED_FUNCTION_26_36()
{

  return sub_19393C640();
}

uint64_t OUTLINED_FUNCTION_26_37()
{

  return sub_19393C2E0();
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_69_9()
{

  return sub_19357B2B4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_69_11()
{
  v2 = *(v0 - 104) & 0x3FFFFFFFFFFFFFFFLL;
}

uint64_t OUTLINED_FUNCTION_109_0()
{
}

uint64_t OUTLINED_FUNCTION_69_15@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1934453DC(v3, v4 + a3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_69_18()
{

  return sub_19393CA30();
}

unint64_t sub_193442194()
{
  result = qword_1ED508280;
  if (!qword_1ED508280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED508280);
  }

  return result;
}

id static Library.Streams.IntelligenceFlow.PlanGenerationTelemetry.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_48 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511718);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FE68, &qword_1939798F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001BLL, 0x8000000193A18DB0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_244@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_114_9()
{

  return sub_19393BF20();
}

uint64_t OUTLINED_FUNCTION_114_13@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 216) = a1 - 32;
  *(v3 - 208) = v1;
  return v2;
}

void OUTLINED_FUNCTION_114_15()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v1 - 48) = *v0;
  *(v1 - 40) = v2;
  *(v1 - 39) = v3;
  *(v1 - 32) = v4;
  *(v1 - 24) = v5;
}

void OUTLINED_FUNCTION_112_4(__n128 a1)
{
  *&STACK[0xB20] = a1;
  *&STACK[0xB10] = a1;
  *&STACK[0xB00] = a1;
}

uint64_t OUTLINED_FUNCTION_112_5()
{

  return sub_1934486A4();
}

uint64_t OUTLINED_FUNCTION_112_11()
{

  return sub_193456418(0, 1);
}

unint64_t sub_1934426D4()
{
  result = qword_1ED5068D8;
  if (!qword_1ED5068D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5068D8);
  }

  return result;
}

id static Library.Streams.IntelligenceFlow.ExecutorTelemetry.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_24 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510E18);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3E8E0, &qword_19396ED90);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_193442904()
{
  result = qword_1ED5068A8;
  if (!qword_1ED5068A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5068A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceMetadata.DevicePlatform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_193442998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_1934429D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x73 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 114);
    }

    v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
    if (v3 >= 0x72)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193442A18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 121);
    }

    OUTLINED_FUNCTION_149_3(a1);
    if (v3 >= 0x79)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_143_5()
{
  v3 = *(v1 + 16);
  v4 = *(v0 + 16);
}

uint64_t sub_193442B60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void GenerativeFunctionsInstrumentationEvent.IdentifierSet.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
  a1[6] = v1;
  a1[7] = v1;
  a1[8] = v1;
  a1[9] = v1;
  a1[10] = v1;
  a1[11] = v1;
  a1[12] = v1;
}

uint64_t sub_193442C40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t static Buildable.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(a3 + 8))(a2, a3);
  result = a1(a4);
  if (v4)
  {
    return (*(*(a2 - 8) + 8))(a4, a2);
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_4_12(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  result[2].n128_u64[1] = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_4_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11, uint64_t a12)
{
  *v12 = a1;
  result = a10;
  *(a1 + 16) = a10;
  *(a1 + 32) = a11;
  *(a1 + 48) = a12;
  return result;
}

void OUTLINED_FUNCTION_4_15()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x193B18A90);
}

uint64_t OUTLINED_FUNCTION_1_9@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_23_7@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_17()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_4_22()
{
  v2 = *(v0 + 24);
  *(v1 - 48) = *v0;
  result = *(v0 + 8);
  *(v1 - 40) = result;
  *(v1 - 24) = v2;
  return result;
}

void OUTLINED_FUNCTION_182_1()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  v5 = *(v0 + 24);
  v6 = *(v0 + 25);
}

uint64_t OUTLINED_FUNCTION_4_28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 40) = a2;
  *(a1 + 16) = v2;
  *(a1 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_29()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_4_32(uint64_t a1, unint64_t *a2)
{

  sub_1935A6470(319, a2, type metadata accessor for AIML.UUID);
}

uint64_t OUTLINED_FUNCTION_4_33()
{

  return type metadata accessor for PrivateCloudComputeRequestLog();
}

__n128 OUTLINED_FUNCTION_4_35@<Q0>(__n128 *a1@<X8>)
{
  v1 = a1[1].n128_u64[0];
  v2 = a1[1].n128_u8[8];
  v3 = a1[1].n128_u8[9];
  v4 = a1[3].n128_u64[0];
  v5 = a1[3].n128_u8[8];
  return a1[2];
}

uint64_t OUTLINED_FUNCTION_4_38()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_43()
{
  result = v1;
  v3 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_4_45(uint64_t a1, unint64_t *a2)
{

  sub_1936336EC(319, a2, type metadata accessor for AIML.UUID);
}

uint64_t OUTLINED_FUNCTION_4_47()
{

  return type metadata accessor for GeneratedImageUserInteraction();
}

uint64_t OUTLINED_FUNCTION_4_50()
{

  return sub_19393C200();
}

uint64_t OUTLINED_FUNCTION_4_52@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_4_53()
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_4_54()
{

  return type metadata accessor for TextUnderstandingNamedEntity();
}

uint64_t OUTLINED_FUNCTION_4_57()
{

  return type metadata accessor for TextUnderstandingDocumentDeletion();
}

uint64_t OUTLINED_FUNCTION_4_59()
{

  return type metadata accessor for AppLanguageConsumption();
}

__n128 OUTLINED_FUNCTION_4_62()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  result = *(v0 + 48);
  v4 = *(v0 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_63()
{

  return type metadata accessor for GenerativeExperiencesGuardrailResult();
}

uint64_t OUTLINED_FUNCTION_4_64@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v5 = *(v1 + a1);

  return sub_19344FC94(v4, v5);
}

uint64_t OUTLINED_FUNCTION_4_65()
{

  return sub_19393C380();
}

uint64_t OUTLINED_FUNCTION_4_66()
{

  return type metadata accessor for TrustKitTKModelMessages();
}

uint64_t OUTLINED_FUNCTION_4_68(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 1392, v2, v3);
}

void OUTLINED_FUNCTION_4_70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E62F8];

  sub_193779658(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_4_71()
{

  return type metadata accessor for GeneratedImageFailureReason();
}

uint64_t OUTLINED_FUNCTION_4_72()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_75(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);

  return type metadata accessor for ShortcutsSafety();
}

uint64_t OUTLINED_FUNCTION_4_76()
{

  return type metadata accessor for AppleIntelligenceSafetyOverrides();
}

uint64_t OUTLINED_FUNCTION_4_77(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);

  return type metadata accessor for SensitiveContentAnalysisUIInteraction();
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.useCaseIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  result = OUTLINED_FUNCTION_201(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v0) + 64);
  OUTLINED_FUNCTION_100_0();
  return sub_193445388();
}

uint64_t OUTLINED_FUNCTION_50_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + 16 * v3;
  *(v4 + 32) = a2;
  *(v4 + 40) = result;
  v5 = *(v2 + 24);
  return result;
}

uint64_t *OUTLINED_FUNCTION_9_16(uint64_t *result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_152(uint64_t a1)
{
  *(v1 + 40) = a1;

  return __swift_allocate_boxed_opaque_existential_1Tm((v1 + 16));
}

id OUTLINED_FUNCTION_50_9(void *a1)
{

  return [a1 init];
}

uint64_t OUTLINED_FUNCTION_50_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_193448804(a1, &a65, v65, v66);
}

void OUTLINED_FUNCTION_50_17()
{

  sub_193447600();
}

uint64_t OUTLINED_FUNCTION_50_18(uint64_t a1, uint64_t a2)
{

  return sub_193448804(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_63_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_23()
{

  return sub_1934487B4(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_199()
{

  return sub_19344C630(v0, 0);
}

void OUTLINED_FUNCTION_199_0(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 9;
  *(v1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_199_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_199_2()
{
  sub_193437C90(v1);
  sub_193437C90(v0);

  return sub_193437C90(v1);
}

void GenerativeFunctionsInstrumentationEvent.Identifiers.init()()
{
  OUTLINED_FUNCTION_108_0();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(v1);
  v3 = v2[9];
  sub_19393BE60();
  OUTLINED_FUNCTION_74_4(v0 + v3);
  v15 = v0 + v2[10];
  v16 = (v0 + v2[11]);
  v4 = v2[13];
  v5 = (v0 + v2[12]);
  OUTLINED_FUNCTION_74_4(v0 + v4);
  v6 = v0 + v2[14];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = v2[15];
  OUTLINED_FUNCTION_74_4(v0 + v7);
  v8 = v2[16];
  OUTLINED_FUNCTION_74_4(v0 + v8);
  v14 = v2[17];
  OUTLINED_FUNCTION_74_4(v0 + v14);
  v17 = (v0 + v2[18]);
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  *v0 = 0u;
  sub_193442B60(v0 + v3, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_74_4(v0 + v3);
  *v15 = 0;
  v15[8] = 1;
  *v16 = 0;
  v16[1] = 0;
  *v5 = 0;
  v5[1] = 0;
  sub_193442B60(v0 + v4, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_74_4(v0 + v4);
  v9 = *(v6 + 2);
  v10 = *(v6 + 3);
  sub_193442C40(*v6, *(v6 + 1));
  *v6 = 0u;
  *(v6 + 1) = 0u;
  sub_193442B60(v0 + v7, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_74_4(v0 + v7);
  sub_193442B60(v0 + v8, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_74_4(v0 + v8);
  OUTLINED_FUNCTION_175();
  sub_193442B60(v11, v12, v13);
  OUTLINED_FUNCTION_74_4(v0 + v14);
  *v17 = 0;
  v17[1] = 0;
  OUTLINED_FUNCTION_107();
}

uint64_t OUTLINED_FUNCTION_106_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_193485470(a1, a2, 0xD00000000000001ELL, a4);
}

uint64_t OUTLINED_FUNCTION_106_3()
{

  return sub_19393BF20();
}

uint64_t OUTLINED_FUNCTION_106_10()
{
  v2 = *v0;
}

void OUTLINED_FUNCTION_106_12(uint64_t a1@<X8>)
{
  *(v4 - 96) = a1;
  *(v4 - 88) = v1 & 1;
  *(v4 - 112) = v2;
  *(v4 - 104) = v3 & 1;
}

uint64_t OUTLINED_FUNCTION_106_15()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 224);
  v4 = *(v0 - 240);

  return sub_19393BF20();
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_19393BEC0();
}

char *OUTLINED_FUNCTION_55_2@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 9;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_74_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69AACC0];

  return sub_193558334(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_74_10()
{
  *(v0 + 48) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_74_12()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 4);
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  *(v1 - 28) = *v0;
  *(v1 - 26) = v2;
  *(v1 - 24) = v3;
  *(v1 - 20) = v4;
  *(v1 - 19) = v5;
}

uint64_t OUTLINED_FUNCTION_74_13()
{

  return type metadata accessor for IntelligenceFlowExecutorTelemetry(0);
}

uint64_t OUTLINED_FUNCTION_74_15(uint64_t a1)
{

  return sub_193456418(a1, 1);
}

void OUTLINED_FUNCTION_105_2()
{
}

uint64_t OUTLINED_FUNCTION_105_3()
{

  return sub_19393BF20();
}

uint64_t OUTLINED_FUNCTION_108_2()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_105_13(void *a1)
{

  return memcpy(a1, (v1 + 4464), 0x278uLL);
}

char *OUTLINED_FUNCTION_105_14@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = 15;
  return result;
}

uint64_t MonotonicTimestamp.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v4 = &v8 - v3;
  sub_19393BE10();
  v5 = sub_19393BE60();
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v5 - 8) + 32))(a1, v4, v5);
    sub_193443FFC(&v9);
    v7 = v9;
    result = type metadata accessor for MonotonicTimestamp();
    *(a1 + *(result + 20)) = v7;
  }

  return result;
}

uint64_t sub_193443FFC@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_193444048(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_193444060(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_19(uint64_t a1)
{
  *(v1 + 24) = a1;

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_2_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

char *OUTLINED_FUNCTION_2_21@<X0>(char *a1@<X3>, unint64_t a2@<X8>)
{

  return sub_19349BCD4((a2 > 1), v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return type metadata accessor for DeviceMetadata();
}

void OUTLINED_FUNCTION_2_24(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
}

uint64_t OUTLINED_FUNCTION_2_25()
{

  return type metadata accessor for GenerativeExperiencesTransparencyLog();
}

__n128 OUTLINED_FUNCTION_2_26(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  return result;
}

char *OUTLINED_FUNCTION_2_27@<X0>(char *a1@<X3>, unint64_t a2@<X8>)
{

  return sub_1934F0E4C((a2 > 1), v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_2_33()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_2_34(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_193568124(319, a2, a3, v4);
}

__n128 OUTLINED_FUNCTION_2_35()
{
  v1 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v3 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v4 = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
  return *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
}

__n128 OUTLINED_FUNCTION_2_36@<Q0>(__n128 *a1@<X8>)
{
  result = a1[2];
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v5 = a1[3].n128_u8[4];
  v4 = a1[3].n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_2_37(uint64_t a1, unint64_t *a2)
{

  sub_193583148(319, a2, type metadata accessor for AIML.UUID);
}

void OUTLINED_FUNCTION_2_39(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_1935A7078(319, a2, a3, v4);
}

void OUTLINED_FUNCTION_2_42(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_193601568(319, a2, a3, v4);
}

__n128 OUTLINED_FUNCTION_2_47(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_49()
{

  return type metadata accessor for GenerativeExperiencesPromptAnalytics();
}

void OUTLINED_FUNCTION_2_52(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v1 = v4;
  *(v1 + 8) = v3;
}

void *OUTLINED_FUNCTION_2_58(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x90uLL);
}

uint64_t OUTLINED_FUNCTION_2_59()
{

  return type metadata accessor for GenerativeExperiencesPromptTags();
}

uint64_t OUTLINED_FUNCTION_2_60@<X0>(__int16 a1@<W8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 8);
  *(v2 - 104) = a1;
  *(v2 - 96) = v5;
  *(v2 - 88) = v4;
  *(v2 - 87) = HIBYTE(v4) & 1;

  return sub_19393CAD0();
}

void OUTLINED_FUNCTION_2_61()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  *(v1 - 40) = *v0;
  *(v1 - 32) = v2;
  *(v1 - 24) = v3;
  *(v1 - 23) = v4;
}

void OUTLINED_FUNCTION_2_62(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_19369F3F4(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_2_63()
{

  return type metadata accessor for AppLanguageConsumption();
}

uint64_t OUTLINED_FUNCTION_2_65(unint64_t *a1)
{

  return sub_193678F88(a1);
}

uint64_t OUTLINED_FUNCTION_2_66()
{

  return type metadata accessor for GenerativeExperiencesGuardrailResult();
}

uint64_t OUTLINED_FUNCTION_2_67()
{

  return sub_19393C640();
}

uint64_t OUTLINED_FUNCTION_2_68()
{

  return type metadata accessor for TrustKitTKModelMessages();
}

uint64_t OUTLINED_FUNCTION_2_72(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 1920, v2, v3);
}

uint64_t OUTLINED_FUNCTION_2_75()
{

  return sub_19393CA30();
}

char *OUTLINED_FUNCTION_2_78()
{
  v3 = (v2 + 3 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_79()
{

  return type metadata accessor for AppleIntelligenceSafetyGuardrails();
}

void OUTLINED_FUNCTION_1_13()
{
  v1 = *(v0 - 128) | 0x8000000000000000;
  v2 = *(v0 - 112);
  v3 = *(v0 - 120) | 0x8000000000000000;
}

void OUTLINED_FUNCTION_1_14()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
}

uint64_t OUTLINED_FUNCTION_1_15(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);

  return sub_193458FEC(v1);
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return sub_19393C990();
}

char *OUTLINED_FUNCTION_1_18@<X0>(char *a1@<X3>, unint64_t a2@<X8>)
{

  return sub_19349BCD4((a2 > 1), v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_1_21()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0;

  return sub_19393C200();
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return type metadata accessor for SageTranscript();
}

uint64_t OUTLINED_FUNCTION_1_25(unint64_t *a1)
{

  return sub_1934DF3E8(a1);
}

uint64_t OUTLINED_FUNCTION_1_27()
{

  return swift_once();
}

char *OUTLINED_FUNCTION_1_28@<X0>(char *a1@<X3>, unint64_t a2@<X8>)
{

  return sub_1934F0E4C((a2 > 1), v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_1_31()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_41_2(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  *(v1 - 96) = *a1;
  *(v1 - 88) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_1_42()
{

  return sub_1935AED74(v0, type metadata accessor for AIML.UUID);
}

uint64_t OUTLINED_FUNCTION_1_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;

  return swift_allocObject();
}

void OUTLINED_FUNCTION_1_53()
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v0 + 8);
  *(v2 - 136) = *v0;
  *(v2 - 128) = v5;
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return sub_19393C200();
}

uint64_t OUTLINED_FUNCTION_1_57@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_19393C640();
}

uint64_t OUTLINED_FUNCTION_1_58()
{

  return type metadata accessor for TextUnderstandingNamedEntity();
}

uint64_t OUTLINED_FUNCTION_1_59()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_62(uint64_t a1, unint64_t *a2)
{

  sub_19369ABC8(319, a2, type metadata accessor for AIML.UUID);
}

char *OUTLINED_FUNCTION_1_65@<X0>(char *a1@<X3>, unint64_t a2@<X8>)
{

  return sub_1936AD868((a2 > 1), v2, 1, a1);
}

__n128 OUTLINED_FUNCTION_1_66@<Q0>(uint64_t a1@<X8>)
{
  v1 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  result = v1[1];
  v3 = v1[2].n128_u64[0];
  v4 = v1[2].n128_u64[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_19_10(void *a1)
{
  *(v2 + 16) = a1;
  a1[2] = v4;
  a1[3] = v1;
  a1[4] = v5;
  a1[5] = v3;
  *(v2 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_1_67(unint64_t *a1)
{

  return sub_193678F88(a1);
}

void OUTLINED_FUNCTION_1_69(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_19375E3B0(319, a2, a3, v4);
}

__n128 OUTLINED_FUNCTION_1_72(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_193456F74(*v1, v1[1], v1[2]);
  result = v4;
  *v1 = v4;
  v1[2] = v2;
  return result;
}

void OUTLINED_FUNCTION_1_76(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_1937D4290(319, a2, a3, v4);
}

void OUTLINED_FUNCTION_1_77()
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v0 + 8);
  *(v2 - 104) = *v0;
  *(v2 - 96) = v5;
}

uint64_t OUTLINED_FUNCTION_1_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;

  return swift_allocObject();
}

unint64_t static MonotonicTimestamp.nanoseconds(fromTicks:)(unint64_t result)
{
  v1 = result;
  if (result == -1)
  {
    return v1;
  }

  if (qword_1ED50F7E0 != -1)
  {
    result = swift_once();
  }

  if (_MergedGlobals == HIDWORD(_MergedGlobals))
  {
    return v1;
  }

  if (!is_mul_ok(v1, _MergedGlobals))
  {
    return -1;
  }

  if (HIDWORD(_MergedGlobals))
  {
    return v1 * _MergedGlobals / HIDWORD(_MergedGlobals);
  }

  __break(1u);
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.eventType.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeFunctionsInstrumentationEvent.subtype.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  v6 = v1 + *(result + 36);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t static MonotonicTimestamp.nowForSuspendingClock()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393BE60();
  v4 = OUTLINED_FUNCTION_2_17(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = mach_absolute_time();
  v8 = static MonotonicTimestamp.nanoseconds(fromTicks:)(v7);
  MonotonicTimestamp.init()(a1);
  if (qword_1ED50F7D8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  __swift_project_value_buffer(v1, qword_1ED50F7E8);
  OUTLINED_FUNCTION_5_13();
  v9 = OUTLINED_FUNCTION_3_13();
  v10(v9);
  v11 = OUTLINED_FUNCTION_4_13();
  v12(v11);
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v14 = *(type metadata accessor for MonotonicTimestamp() + 20);
  v15 = *(a1 + v14);

  *(a1 + v14) = v13;
  return result;
}

uint64_t sub_193445278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimestamp();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1934452F0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for DeviceMetadata.DevicePlatform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_193445340(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_9(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_13_0();
  v9(v8);
  return v4;
}

uint64_t sub_193445388()
{
  OUTLINED_FUNCTION_91_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7_0(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_13_0();
  v7(v6);
  return v0;
}

uint64_t sub_1934453DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_9(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_19344542C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_9(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_13_0();
  v9(v8);
  return v4;
}

uint64_t sub_193445478(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_9(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_0(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_80_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_80_7(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3->n128_u64[0] = *v4;
  v3->n128_u64[1] = a1;
  v3[1] = a2;
  v3[2].n128_u8[0] = v2;
}

uint64_t OUTLINED_FUNCTION_80_8()
{

  return sub_193559254(v0, v1);
}

uint64_t OUTLINED_FUNCTION_80_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_193451CFC(a1, a2, v7, a4, v6, a6);
}

uint64_t OUTLINED_FUNCTION_80_12(uint64_t result)
{
  *(result + 39) = *(v1 + 23);
  *(result + 37) = *(v1 + 21);
  return result;
}

uint64_t OUTLINED_FUNCTION_80_13()
{

  return sub_193448850();
}

void OUTLINED_FUNCTION_141_1(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  *(v2 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_80_14()
{

  return sub_19393BED0();
}

uint64_t OUTLINED_FUNCTION_80_15@<X0>(uint64_t a1@<X8>)
{

  return sub_1934486F8(v3 + a1, v2, v4, v1);
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_8(float a1)
{
  *v1 = a1;

  return sub_19393CB80();
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  v3 = *v0;
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return sub_19393BE10();
}

void OUTLINED_FUNCTION_11_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v7 = a4 + 16 * v4;
  *(v7 + 32) = 7;
  *(v7 + 40) = v6;
  v8 = *(a4 + 24);
}

void OUTLINED_FUNCTION_7_13(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
}

uint64_t OUTLINED_FUNCTION_7_14()
{
  sub_193450268(v1, v0);
  sub_193450268(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_15(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_7_17()
{

  return type metadata accessor for ZeoliteEmbedding();
}

uint64_t OUTLINED_FUNCTION_7_18()
{

  return swift_once();
}

id OUTLINED_FUNCTION_7_19()
{
  v2 = *v0;

  return objc_allocWithZone(v2);
}

uint64_t OUTLINED_FUNCTION_7_27(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = v2;
  *(a2 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_21_3()
{
  *(v2 - 104) = v1;
  sub_193438388(v0);
  sub_193438388(v1);

  return sub_193438388(v0);
}

void OUTLINED_FUNCTION_7_29()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
}

uint64_t OUTLINED_FUNCTION_7_30()
{

  return type metadata accessor for AdAttributionKitConversion();
}

void OUTLINED_FUNCTION_7_33(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E62F8];

  sub_19365DCD8(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_7_36()
{

  return type metadata accessor for GenerativeExperiencesPromptTags();
}

__n128 OUTLINED_FUNCTION_7_37@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = v3[1].n128_u16[0];
  result = *v3;
  *v1 = *v3;
  v1[1].n128_u16[0] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_41()
{

  return type metadata accessor for AdAttributionKitSystemReportedPurchase();
}

char *OUTLINED_FUNCTION_7_44@<X0>(char *a1@<X3>, unint64_t a2@<X8>)
{

  return sub_1937444D0((a2 > 1), v2, 1, a1);
}

void OUTLINED_FUNCTION_7_46()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
}

uint64_t OUTLINED_FUNCTION_7_48()
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_7_49(uint64_t a1, uint64_t a2)
{

  return sub_1937809E0(a1, a2, v2, v3);
}

id OUTLINED_FUNCTION_7_52(uint64_t a1)
{

  return sub_19343D150(a1, v2 | 0x8000000000000000, 2, 0, v1, 13, 0);
}

uint64_t OUTLINED_FUNCTION_7_53@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  *(v1 - 104) = *a1;
  *(v1 - 96) = v3 & 1;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_7_54(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);

  return type metadata accessor for SensitiveContentAnalysisMediaAnalysis();
}

void OUTLINED_FUNCTION_99_0(uint64_t a1@<X8>)
{
  *(v1 + 32) = v3;
  *(v1 + 40) = a1;
  v4 = *(v2 + 24);
}

uint64_t OUTLINED_FUNCTION_63_2(uint64_t result)
{
  v1 = *(result + 24) >> 1;
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_99_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_99_7@<X0>(char a1@<W8>)
{
  *(v2 - 81) = a1;
  *(v2 - 82) = v1;
  return v2 - 81;
}

uint64_t OUTLINED_FUNCTION_99_10()
{
  v2 = *(v0 + 336) & 0x3FFFFFFFFFFFFFFFLL;
}

__n128 OUTLINED_FUNCTION_99_12@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  v3 = v2[1].n128_u8[8];
  v4 = v2[1].n128_u8[9];
  v5 = v2[3].n128_u64[0];
  v6 = v2[3].n128_u8[8];
  result = v2[2];
  *(v1 - 112) = v2[1].n128_u64[0];
  *(v1 - 104) = v3;
  *(v1 - 103) = v4;
  *(v1 - 96) = result;
  *(v1 - 80) = v5;
  *(v1 - 72) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_99_13()
{

  return sub_19393BF20();
}

uint64_t OUTLINED_FUNCTION_117_2()
{

  return sub_19393CA30();
}

char *OUTLINED_FUNCTION_59_2@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = v2;
  return result;
}

double OUTLINED_FUNCTION_27_13()
{
  result = 0.0;
  v2 = *(v0 - 104);
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_14()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 44);
  v7 = *(v0 + 40);
  *(v1 - 104) = *(v0 + 8);
  *(v1 - 96) = v3;
  *(v1 - 88) = v4;
  *(v1 - 80) = v5;
  *(v1 - 68) = v6;
  *(v1 - 72) = v7;

  return sub_19350CB08(v4, v5);
}

uint64_t OUTLINED_FUNCTION_75_2(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_27_16(uint64_t a1, unint64_t *a2)
{

  return sub_19343CF00(0, a2, v2);
}

uint64_t OUTLINED_FUNCTION_27_17(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_27_18()
{

  return sub_19393CA30();
}

void *OUTLINED_FUNCTION_27_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, v66, 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_27_21()
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_27_22(uint64_t a1, uint64_t a2)
{

  return sub_193641A34(a1, a2);
}

void *OUTLINED_FUNCTION_27_25(void *a1)
{

  return memcpy(a1, (v2 + v1), 0xF8uLL);
}

uint64_t OUTLINED_FUNCTION_27_26()
{

  return sub_1934486F8(v5 + v3, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_27_28()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_27_31()
{
  v1 = *(v0[25] + 32);
  result = v0[24];
  v3 = v0[26];
  return result;
}

uint64_t OUTLINED_FUNCTION_27_33@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_19393CAD0();
}

uint64_t GenerativeFunctionsInstrumentationEvent.identifiers.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for GenerativeFunctionsInstrumentationEvent(v0) + 28);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_100_0();
  return sub_1934461D4();
}

uint64_t sub_1934461D4()
{
  OUTLINED_FUNCTION_91_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_7_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return v0;
}

char *OUTLINED_FUNCTION_67_1@<X0>(void *a1@<X8>)
{
  result = a1 + *(v1 + 56);
  *a1 = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_5()
{
  result = v1 - 208;
  v3 = *(v0 + 72);
  v4 = *(v1 - 72);
  return result;
}

void OUTLINED_FUNCTION_29_4()
{

  sub_193447600();
}

void OUTLINED_FUNCTION_117_10()
{
  v1 = *(v0 - 96);
  v2 = *(v0 - 104);
  v4 = *(v0 - 128);
  v3 = *(v0 - 120);
  *(v0 - 184) = *(v0 - 136);
  *(v0 - 176) = v4;
  *(v0 - 175) = BYTE1(v4) & 1;
  *(v0 - 168) = v3;
}

uint64_t OUTLINED_FUNCTION_117_11()
{

  return sub_19393BF20();
}

void OUTLINED_FUNCTION_117_14(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

uint64_t OUTLINED_FUNCTION_117_17()
{

  return sub_19393C640();
}

uint64_t GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent.supportedAssetBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_154_0()
{

  return sub_19393C540();
}

void OUTLINED_FUNCTION_122_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x193B18030);
}

__n128 OUTLINED_FUNCTION_6_7@<Q0>(__n128 *a1@<X8>)
{
  v1 = a1[1].n128_u64[0];
  v2 = a1[1].n128_u8[8];
  v3 = a1[3].n128_u32[0];
  v4 = a1[3].n128_u8[4];
  return a1[2];
}

uint64_t OUTLINED_FUNCTION_122_7(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 84) = BYTE4(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_122_11@<X0>(uint64_t a1@<X8>)
{
  result = *(*(v1 - 184) + a1);
  v3 = *(*(v1 - 136) + a1);
  return result;
}

void sub_19344652C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v15 = *MEMORY[0x1E69E9840];
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8, v1, v2);
  v11 = MEMORY[0x193B172D0](v10, 16);
  v13 = v12;
  sub_19393C330();
  (*(v5 + 8))(v10, v2);
  sub_193446A6C(v11, v13);
  v14 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_27();
}

void sub_193446678(uint64_t a1, void *a2)
{
  v14 = sub_19393C450();
  v3 = OUTLINED_FUNCTION_0(v14);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v6 = OUTLINED_FUNCTION_11_11();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_8_14();
  v10 = OUTLINED_FUNCTION_6_10();
  v11(v10);
  sub_1934468E4();
  v13 = v12;
  [a2 sendEvent_];
}

uint64_t GenerativeFunctionsInstrumentationEvent.serialize()()
{
  v1 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ADA0, &qword_193951890);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  OUTLINED_FUNCTION_10_9();
  sub_19344A4A0(v0, v7, v14);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v15, &qword_1EAE3ADA0, &qword_193951890);
  v16 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE3ADA0, &qword_193951890);
  return v16;
}

uint64_t sub_193446A6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_193446B20()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v4 = v3;
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_12();
  v9 = *((v8 & v7) + 0x50);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v0[qword_1EAE3AB50];
  *&v0[qword_1EAE3AB50] = xmmword_193950B20;
  (*(v11 + 16))(v28 - v16, v4, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB58, &qword_193950B68);
  swift_dynamicCast();
  v17 = v30;
  v18 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v19 = (*(v18 + 56))(v17, v18);
  if (v1)
  {
    (*(v11 + 8))(v4, v9);
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_19345012C(*v15, *(v15 + 1));
    OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_31_8();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v19;
    v22 = v20;
    OUTLINED_FUNCTION_20_4();
    swift_beginAccess();
    v23 = *v15;
    v24 = *(v15 + 1);
    *v15 = v21;
    *(v15 + 1) = v22;
    sub_19345012C(v23, v24);
    v25 = v30;
    v26 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    *&v2[qword_1EAE3AB48] = (*(v26 + 40))(v25, v26);
    v27 = OUTLINED_FUNCTION_39_8();
    v28[0].receiver = v2;
    v28[0].super_class = v27;
    [(objc_super *)v28 init];
    (*(v11 + 8))(v4, v9);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  OUTLINED_FUNCTION_27();
}

void sub_193446D88()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_284();
  sub_19344A500();
  if (!v1)
  {
    v2 = type metadata accessor for GenerativeFunctionsInstrumentationEvent(0);
    v3 = (v0 + v2[8]);
    if (*v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3[1] == 0xE000000000000000;
    }

    if (!v4 && (OUTLINED_FUNCTION_272() & 1) == 0)
    {
      sub_19393C3C0();
    }

    v5 = v0 + v2[9];
    if ((*(v5 + 9) & 1) == 0)
    {
      v6 = *(v5 + 8);
      v26[0] = *v5;
      LOBYTE(v26[1]) = v6 & 1;
      OUTLINED_FUNCTION_87_3();
      sub_193447324(v7, v8, v9, v10, v11, v12);
    }

    OUTLINED_FUNCTION_284();
    sub_19344E5A8();
    if (*(v0 + v2[11]))
    {
      OUTLINED_FUNCTION_284();
      sub_19393C360();
    }

    if (*(v0 + v2[12]) != 0.0)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C3B0();
    }

    if ((~*(v0 + v2[13]) & 0xF000000000000007) != 0)
    {
      v26[0] = *(v0 + v2[13]);
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
    }

    if ((~*(v0 + v2[14]) & 0xF000000000000007) != 0)
    {
      v26[0] = *(v0 + v2[14]);
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
    }

    if (*(*(v0 + v2[15]) + 16))
    {
      OUTLINED_FUNCTION_87_3();
      sub_193451CFC(v13, v14, v15, v16, v17, v18);
    }

    v19 = v2[16];
    OUTLINED_FUNCTION_298(v24);
    OUTLINED_FUNCTION_298(v23);
    sub_19344FABC(v24, __src);
    GenerativeFunctionsInstrumentationEvent.IdentifierSet.init()(__src);
    sub_19344EEF4();
    v20 = sub_19393C550();
    memcpy(__dst, __src, sizeof(__dst));
    sub_1934500D8(__dst);
    memcpy(v26, v23, sizeof(v26));
    sub_1934500D8(v26);
    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_298(v23);
      OUTLINED_FUNCTION_298(__src);
      sub_19344FABC(v23, v21);
      OUTLINED_FUNCTION_87_3();
      sub_193447600();
      memcpy(v21, __src, sizeof(v21));
      sub_1934500D8(v21);
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193447118()
{
  v2 = v1;
  OUTLINED_FUNCTION_103();
  if (v0[1])
  {
    v3 = *v0;
    OUTLINED_FUNCTION_2_7();
    v2 = v1;
  }

  if (!v2)
  {
    if (!v0[3] || (v4 = v0[2], OUTLINED_FUNCTION_2_7(), !v1))
    {
      if (!v0[5] || (v5 = v0[4], OUTLINED_FUNCTION_2_7(), !v1))
      {
        if (!v0[7] || (v6 = v0[6], OUTLINED_FUNCTION_2_7(), !v1))
        {
          if (!v0[9] || (v7 = v0[8], OUTLINED_FUNCTION_2_7(), !v1))
          {
            OUTLINED_FUNCTION_79();
            sub_19344DFE8();
            if (!v1)
            {
              v8 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
              v9 = v0 + v8[10];
              if ((v9[8] & 1) == 0)
              {
                v10 = *v9;
                OUTLINED_FUNCTION_130();
                sub_19393C3E0();
              }

              v11 = (v0 + v8[11]);
              if (v11[1])
              {
                v12 = *v11;
                OUTLINED_FUNCTION_2_7();
              }

              v13 = (v0 + v8[12]);
              if (v13[1])
              {
                v14 = *v13;
                OUTLINED_FUNCTION_2_7();
              }

              OUTLINED_FUNCTION_79();
              sub_19344F1DC();
              v15 = (v0 + v8[14]);
              if (v15[1])
              {
                v18 = *v15;
                v19 = v15[2];
                v20 = v15[3];
                OUTLINED_FUNCTION_179();
              }

              OUTLINED_FUNCTION_79();
              sub_19344F2FC();
              OUTLINED_FUNCTION_79();
              sub_19344E7AC();
              OUTLINED_FUNCTION_79();
              sub_19344F43C();
              v16 = (v0 + v8[18]);
              if (v16[1])
              {
                v17 = *v16;
                OUTLINED_FUNCTION_2_7();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_193447324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_0();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  sub_19344CC50(v13, a4, a6);
  type metadata accessor for ProtobufEnumSerializer();
  OUTLINED_FUNCTION_7_7();
  swift_getWitnessTable();
  return sub_19393C2F0();
}

void sub_193447484()
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_75_3();
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0 + 32);
  v5 = v0[5];
  v6 = v0[6];
  v20 = v0[9];
  v21 = v0[7];
  v22 = v0[10];
  v27 = *(v0 + 64);
  v28 = *(v0 + 88);
  v19 = *(v0 + 105);
  if ((*(v0 + 9) & 1) == 0)
  {
    v23 = *v0;
    v25 = *(v0 + 8);
    OUTLINED_FUNCTION_106();
    sub_193447324(v7, v8, v9, v10, v11, v12);
  }

  if (!v1)
  {
    if (*(v3 + 16))
    {
      OUTLINED_FUNCTION_90_4();
      sub_19393C380();
    }

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if (v6)
    {
      OUTLINED_FUNCTION_181();
    }

    if ((v27 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C360();
    }

    if (v22)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v28 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if ((v19 & 1) == 0)
    {
      v24 = v0[12];
      v26 = *(v0 + 104);
      OUTLINED_FUNCTION_106();
      sub_193447324(v13, v14, v15, v16, v17, v18);
    }
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_193447600()
{
  OUTLINED_FUNCTION_26();
  v22[3] = v0;
  v2 = v1;
  v22[1] = v3;
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for ProtobufMessageSerializer();
  OUTLINED_FUNCTION_0(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v22 - v20;
  (*(v7 + 16))(v13, v5, v2);
  sub_1934470C8(v13, v2, v21);
  OUTLINED_FUNCTION_8_13();
  swift_getWitnessTable();
  sub_19393C3F0();
  (*(v16 + 8))(v21, v14);
  OUTLINED_FUNCTION_27();
}

void static GenerativeFunctionsInstrumentationEvent.Identifiers.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_50_0();
  v3 = sub_19393BE60();
  v4 = OUTLINED_FUNCTION_0(v3);
  v209 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v208 = &v194[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_6();
  v207 = (v11 - v12);
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_173_1();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v194[-v16];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v194[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v210 = &v194[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v194[-v26];
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v194[-v29];
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v194[-v32];
  MEMORY[0x1EEE9AC00](v31);
  v36 = &v194[-v35];
  v37 = v1[1];
  v38 = v0[1];
  if (v37)
  {
    if (!v38)
    {
      goto LABEL_56;
    }

    v39 = *v1 == *v0 && v37 == v38;
    if (!v39)
    {
      OUTLINED_FUNCTION_16_9();
      OUTLINED_FUNCTION_11_12();
      if ((v40 & 1) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else if (v38)
  {
    goto LABEL_56;
  }

  v41 = v1[3];
  v42 = v0[3];
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_56;
    }

    if (v1[2] != v0[2] || v41 != v42)
    {
      OUTLINED_FUNCTION_16_9();
      OUTLINED_FUNCTION_11_12();
      if ((v44 & 1) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else if (v42)
  {
    goto LABEL_56;
  }

  v45 = v1[5];
  v46 = v0[5];
  if (v45)
  {
    if (!v46)
    {
      goto LABEL_56;
    }

    if (v1[4] != v0[4] || v45 != v46)
    {
      OUTLINED_FUNCTION_16_9();
      OUTLINED_FUNCTION_11_12();
      if ((v48 & 1) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else if (v46)
  {
    goto LABEL_56;
  }

  v49 = v1[7];
  v50 = v0[7];
  if (v49)
  {
    if (!v50)
    {
      goto LABEL_56;
    }

    if (v1[6] != v0[6] || v49 != v50)
    {
      OUTLINED_FUNCTION_16_9();
      OUTLINED_FUNCTION_11_12();
      if ((v52 & 1) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else if (v50)
  {
    goto LABEL_56;
  }

  v53 = v1[9];
  v54 = v0[9];
  if (v53)
  {
    if (!v54)
    {
      goto LABEL_56;
    }

    v204 = v36;
    v202 = v34;
    v55 = v1[8] == v0[8] && v53 == v54;
    if (!v55 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v204 = v36;
    v202 = v34;
    if (v54)
    {
      goto LABEL_56;
    }
  }

  v200 = v17;
  v201 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers(0);
  v203 = v201[9];
  v205 = *(v22 + 48);
  v56 = v204;
  sub_1934486A4();
  sub_1934486A4();
  OUTLINED_FUNCTION_31(v56);
  if (v39)
  {
    OUTLINED_FUNCTION_31(v56 + v205);
    if (v39)
    {
      sub_193442B60(v56, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_58;
    }

LABEL_54:
    v58 = v56;
    goto LABEL_55;
  }

  sub_1934486A4();
  OUTLINED_FUNCTION_31(v56 + v205);
  if (v57)
  {
    (*(v209 + 8))(v210, v3);
    goto LABEL_54;
  }

  (*(v209 + 32))(v208, v56 + v205, v3);
  OUTLINED_FUNCTION_0_17();
  sub_1934C4560(v59, v60);
  LODWORD(v199) = sub_19393C550();
  v61 = *(v209 + 8);
  v203 = v209 + 8;
  v205 = v61;
  v61(v208, v3);
  (v205)(v210, v3);
  sub_193442B60(v56, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v199 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_58:
  v62 = v201[10];
  v63 = (v1 + v62);
  v64 = *(v1 + v62 + 8);
  v65 = (v0 + v62);
  v66 = *(v0 + v62 + 8);
  if (v64)
  {
    if (!v66)
    {
      goto LABEL_56;
    }

LABEL_64:
    v67 = v201[11];
    OUTLINED_FUNCTION_3();
    if (v70)
    {
      if (!v68)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_5(v69);
      v73 = v39 && v71 == v72;
      if (!v73 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v68)
    {
      goto LABEL_56;
    }

    v74 = v201[12];
    OUTLINED_FUNCTION_3();
    if (v77)
    {
      if (!v75)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_5(v76);
      v80 = v39 && v78 == v79;
      if (!v80 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (v75)
    {
      goto LABEL_56;
    }

    v206 = v20;
    v81 = v33;
    v82 = v201[13];
    v83 = *(v22 + 48);
    sub_1934486A4();
    v84 = v81;
    v85 = v83;
    sub_1934486A4();
    OUTLINED_FUNCTION_31(v84);
    if (v39)
    {
      OUTLINED_FUNCTION_31(v84 + v83);
      if (v39)
      {
        v204 = v30;
        sub_193442B60(v84, &qword_1EAE3AA88, &qword_19394F9C0);
        goto LABEL_92;
      }
    }

    else
    {
      v86 = v84;
      v87 = v206;
      sub_1934486A4();
      OUTLINED_FUNCTION_31(v86 + v85);
      if (!v88)
      {
        v204 = v30;
        v90 = v85;
        v91 = v208;
        v92 = v209;
        (*(v209 + 32))(v208, v86 + v90, v3);
        OUTLINED_FUNCTION_0_17();
        sub_1934C4560(v93, v94);
        LODWORD(v210) = sub_19393C550();
        v95 = *(v92 + 8);
        v95(v91, v3);
        v95(v206, v3);
        sub_193442B60(v86, &qword_1EAE3AA88, &qword_19394F9C0);
        if ((v210 & 1) == 0)
        {
          goto LABEL_56;
        }

LABEL_92:
        v96 = v201[14];
        v97 = *(v1 + v96);
        v98 = *(v1 + v96 + 8);
        v99 = *(v1 + v96 + 24);
        v210 = *(v1 + v96 + 16);
        v205 = v97;
        v206 = v99;
        v100 = (v0 + v96);
        v102 = *v100;
        v101 = v100[1];
        v104 = v100[2];
        v103 = v100[3];
        if (v98)
        {
          if (v101)
          {
            v199 = v1;
            v203 = v0;
            v196 = v27;
            v197 = v2;
            v105 = v205 == v102 && v98 == v101;
            if (v105 || (OUTLINED_FUNCTION_106_5(), (sub_19393CA30() & 1) != 0))
            {
              if (v210 != v104 || v206 != v103)
              {
                OUTLINED_FUNCTION_284();
                v195 = sub_19393CA30();
                v107 = OUTLINED_FUNCTION_90_5();
                sub_19344C630(v107, v108);
                OUTLINED_FUNCTION_182();
                OUTLINED_FUNCTION_284();
                sub_19344C630(v109, v110);
                v111 = OUTLINED_FUNCTION_90_5();
                sub_19344C630(v111, v112);
                OUTLINED_FUNCTION_182();
                OUTLINED_FUNCTION_284();
                sub_193442C40(v113, v114);

                v115 = OUTLINED_FUNCTION_90_5();
                sub_193442C40(v115, v116);
                if ((v195 & 1) == 0)
                {
                  goto LABEL_56;
                }

LABEL_113:
                v140 = v201[15];
                v141 = *(v22 + 48);
                v142 = v204;
                OUTLINED_FUNCTION_2_0();
                sub_1934486A4();
                sub_1934486A4();
                OUTLINED_FUNCTION_31(v142);
                v198 = v3;
                if (v39)
                {
                  v143 = v142;
                  OUTLINED_FUNCTION_31(v142 + v141);
                  if (v39)
                  {
                    sub_193442B60(v142, &qword_1EAE3AA88, &qword_19394F9C0);
                    goto LABEL_124;
                  }
                }

                else
                {
                  sub_1934486A4();
                  v143 = v142;
                  OUTLINED_FUNCTION_31(v142 + v141);
                  if (!v144)
                  {
                    v155 = v208;
                    v154 = v209;
                    v156 = v198;
                    (*(v209 + 32))(v208, v142 + v141, v198);
                    OUTLINED_FUNCTION_0_17();
                    sub_1934C4560(v157, v158);
                    v159 = v200;
                    OUTLINED_FUNCTION_106_5();
                    v160 = sub_19393C550();
                    v161 = *(v154 + 8);
                    v161(v155, v156);
                    v161(v159, v156);
                    sub_193442B60(v143, &qword_1EAE3AA88, &qword_19394F9C0);
                    if ((v160 & 1) == 0)
                    {
                      goto LABEL_56;
                    }

LABEL_124:
                    v162 = v201[16];
                    v163 = *(v22 + 48);
                    v164 = v196;
                    OUTLINED_FUNCTION_105_5();
                    sub_1934486A4();
                    OUTLINED_FUNCTION_105_5();
                    sub_1934486A4();
                    OUTLINED_FUNCTION_68_3(v164);
                    if (v39)
                    {
                      OUTLINED_FUNCTION_68_3(v164 + v163);
                      if (v39)
                      {
                        sub_193442B60(v164, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_134:
                        v175 = v202;
                        v176 = v201[17];
                        v177 = *(v22 + 48);
                        OUTLINED_FUNCTION_105_5();
                        sub_1934486A4();
                        OUTLINED_FUNCTION_105_5();
                        sub_1934486A4();
                        v178 = v175;
                        OUTLINED_FUNCTION_68_3(v175);
                        if (v39)
                        {
                          OUTLINED_FUNCTION_68_3(v175 + v177);
                          if (v39)
                          {
                            sub_193442B60(v175, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_144:
                            v190 = v201[18];
                            if (*(v199 + v190 + 8) && *(v203 + v190 + 8))
                            {
                              OUTLINED_FUNCTION_5((v199 + v190));
                              if (!v39 || v191 != v192)
                              {
                                sub_19393CA30();
                              }
                            }

                            goto LABEL_56;
                          }
                        }

                        else
                        {
                          sub_1934486A4();
                          OUTLINED_FUNCTION_68_3(v175 + v177);
                          if (!v179)
                          {
                            v181 = v209;
                            v182 = v175 + v177;
                            v183 = v208;
                            v184 = v198;
                            (*(v209 + 32))(v208, v182, v198);
                            OUTLINED_FUNCTION_0_17();
                            sub_1934C4560(v185, v186);
                            v187 = v207;
                            v188 = sub_19393C550();
                            v189 = *(v181 + 8);
                            v189(v183, v184);
                            v189(v187, v184);
                            sub_193442B60(v178, &qword_1EAE3AA88, &qword_19394F9C0);
                            if ((v188 & 1) == 0)
                            {
                              goto LABEL_56;
                            }

                            goto LABEL_144;
                          }

                          OUTLINED_FUNCTION_181_1();
                          v180(v207, v198);
                        }

                        v58 = v175;
LABEL_55:
                        sub_193442B60(v58, &qword_1EAE3B4E8, &unk_193952CF0);
                        goto LABEL_56;
                      }
                    }

                    else
                    {
                      sub_1934486A4();
                      OUTLINED_FUNCTION_68_3(v164 + v163);
                      if (!v165)
                      {
                        v168 = v208;
                        v167 = v209;
                        v169 = v198;
                        (*(v209 + 32))(v208, v164 + v163, v198);
                        OUTLINED_FUNCTION_0_17();
                        sub_1934C4560(v170, v171);
                        v172 = v197;
                        v173 = sub_19393C550();
                        v174 = *(v167 + 8);
                        v174(v168, v169);
                        v174(v172, v169);
                        sub_193442B60(v164, &qword_1EAE3AA88, &qword_19394F9C0);
                        if ((v173 & 1) == 0)
                        {
                          goto LABEL_56;
                        }

                        goto LABEL_134;
                      }

                      OUTLINED_FUNCTION_181_1();
                      v166(v197, v198);
                    }

                    v58 = v164;
                    goto LABEL_55;
                  }

                  OUTLINED_FUNCTION_181_1();
                  v145(v200, v198);
                }

                v58 = v143;
                goto LABEL_55;
              }

              OUTLINED_FUNCTION_105_5();
              sub_19344C630(v130, v131);
              OUTLINED_FUNCTION_182();
              OUTLINED_FUNCTION_105_5();
              sub_19344C630(v132, v133);
              OUTLINED_FUNCTION_105_5();
              sub_19344C630(v134, v135);
              OUTLINED_FUNCTION_182();
              OUTLINED_FUNCTION_105_5();
              sub_193442C40(v136, v137);

LABEL_112:
              sub_193442C40(v205, v98);
              goto LABEL_113;
            }

            v146 = OUTLINED_FUNCTION_106_5();
            sub_19344C630(v146, v147);
            OUTLINED_FUNCTION_284();
            sub_19344C630(v148, v149);
            OUTLINED_FUNCTION_106_5();
            OUTLINED_FUNCTION_70_4();
            sub_19344C630(v150, v151);
            OUTLINED_FUNCTION_284();
            sub_193442C40(v152, v153);

            OUTLINED_FUNCTION_106_5();
            OUTLINED_FUNCTION_70_4();
LABEL_109:
            sub_193442C40(v128, v129);
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_106_5();
          OUTLINED_FUNCTION_75_0();
          sub_19344C630(v120, v121);
          OUTLINED_FUNCTION_284();
          sub_19344C630(v122, v123);
          OUTLINED_FUNCTION_106_5();
          OUTLINED_FUNCTION_75_0();
          sub_19344C630(v124, v125);
        }

        else
        {
          v199 = v1;
          v203 = v0;
          v196 = v27;
          v197 = v2;
          v117 = v101;
          sub_19344C630(v205, 0);
          if (!v117)
          {
            OUTLINED_FUNCTION_284();
            sub_19344C630(v138, v139);
            v98 = 0;
            goto LABEL_112;
          }

          OUTLINED_FUNCTION_284();
          sub_19344C630(v118, v119);
        }

        v126 = OUTLINED_FUNCTION_106_5();
        sub_193442C40(v126, v127);
        OUTLINED_FUNCTION_284();
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_181_1();
      v89(v87, v3);
      v84 = v86;
    }

    v58 = v84;
    goto LABEL_55;
  }

  if (*v63 != *v65)
  {
    LOBYTE(v66) = 1;
  }

  if ((v66 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_56:
  OUTLINED_FUNCTION_116();
}