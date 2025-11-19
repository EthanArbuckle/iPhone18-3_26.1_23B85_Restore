unint64_t sub_20C5EBB2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5D0, &qword_20C650FB8);
    v2 = sub_20C64E300();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_20C5E01B4(*(a1 + 48) + 40 * v14, v29);
        sub_20C5DFF60(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_20C5E01B4(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_20C5DFF60(v27 + 8, v22);
        sub_20C5DBFC4(v26, &qword_27C7CE5D8, &qword_20C650FC0);
        v23 = v20;
        sub_20C5EC6F4(v22, v24);
        v15 = v23;
        sub_20C5EC6F4(v24, v25);
        sub_20C5EC6F4(v25, &v23);
        result = sub_20C5DFFBC(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_20C5EC6F4(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_20C5EC6F4(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_20C5DBFC4(v26, &qword_27C7CE5D8, &qword_20C650FC0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_20C5EBE08()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_20C64DFF0();

    v4 = sub_20C5EBB2C(v3);

    if (v4)
    {
      if (*(v4 + 16))
      {
        v5 = sub_20C5DFFBC(0x6E6974656B72616DLL, 0xE900000000000067);
        if (v6)
        {
          sub_20C5DFF60(*(v4 + 56) + 32 * v5, v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEF50, &qword_20C650FC8);
          if (swift_dynamicCast())
          {
            if (*(v11 + 16) && (v7 = sub_20C5DFFBC(0x496567617373656DLL, 0xE900000000000064), (v8 & 1) != 0))
            {
              sub_20C5DFF60(*(v11 + 56) + 32 * v7, v12);

              if (swift_dynamicCast())
              {

                return v11;
              }
            }

            else
            {
            }
          }
        }
      }

      if (*(v4 + 16))
      {
        v9 = sub_20C5DFFBC(0xD000000000000012, 0x800000020C659960);
        if (v10)
        {
          sub_20C5DFF60(*(v4 + 56) + 32 * v9, v12);

          if (swift_dynamicCast())
          {
            return v11;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_20C5EC004(id a1, uint64_t a2)
{
  v5 = [v2 clickstreamMetricsEvent];
  if (v5 && (v6 = v5, v7 = sub_20C64DFF0(), v6, v8 = sub_20C5EBB2C(v7), , v8))
  {
    v9 = sub_20C5EB930();
    if (v10)
    {
LABEL_4:
      a1 = v9;
      a2 = v10;
      goto LABEL_7;
    }
  }

  else
  {
    v8 = sub_20C5F26C8(MEMORY[0x277D84F90]);

    v9 = sub_20C5EB930();
    if (v10)
    {
      goto LABEL_4;
    }
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C0, &unk_20C651AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C650FA0;
  *(inited + 32) = 0x6E656D6563616C70;
  v12 = inited + 32;
  v13 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000074;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v14 = sub_20C5F26C8(inited);
  swift_setDeallocating();
  sub_20C5DBFC4(v12, &qword_27C7CE5C8, &qword_20C650FB0);
  v15 = sub_20C5EBE08();
  if (v16)
  {
    v22 = v13;
    *&v21 = v15;
    *(&v21 + 1) = v16;
    sub_20C5EC6F4(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20C5EC228(v20, 0xD000000000000012, 0x800000020C659960, isUniquelyReferenced_nonNull_native);
  }

  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v21 = v14;
  sub_20C5EC3E4(v8, sub_20C5F20C0, 0, v18, &v21);

  return v21;
}

_OWORD *sub_20C5EC228(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20C5DFFBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20C5F23C4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20C5F210C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_20C5DFFBC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_20C64E440();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_20C5EC6F4(a1, v23);
  }

  else
  {
    sub_20C5EC378(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_20C5EC378(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20C5EC6F4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_20C5EC3E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_20C5F2568(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_20C5EC6F4(v46, v44);
  v14 = *a5;
  result = sub_20C5DFFBC(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_20C5F210C(v20, a4 & 1);
    v22 = *a5;
    result = sub_20C5DFFBC(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_20C64E440();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_20C5F23C4();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_20C5EC6F4(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_20C5EC6F4(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_20C5F2568(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_20C5EC6F4(v46, v44);
        v33 = *a5;
        result = sub_20C5DFFBC(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_20C5F210C(v37, 1);
          v38 = *a5;
          result = sub_20C5DFFBC(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1(v32);
          sub_20C5EC6F4(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_20C5EC6F4(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_20C5F2568(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_20C5EC704();
  }

LABEL_27:
  __break(1u);
  return result;
}

_OWORD *sub_20C5EC6F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_20C5EC718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AudioLanguageEngagementSheet.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioLanguageEngagementSheet() + 20);

  return sub_20C5EC718(v3, a1);
}

uint64_t AudioLanguageEngagementSheet.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioLanguageEngagementSheet() + 24);

  return sub_20C5EC718(v3, a1);
}

uint64_t AudioLanguageEngagementSheet.init(callToAction:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_20C5EC880(a1, a4);
  v7 = type metadata accessor for AudioLanguageEngagementSheet();
  sub_20C5EC880(a2, a4 + *(v7 + 20));
  v8 = a4 + *(v7 + 24);

  return sub_20C5EC880(a3, v8);
}

uint64_t sub_20C5EC880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5EC8F0()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63416F546C6C6163;
  }
}

uint64_t sub_20C5EC950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C5EE014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C5EC984(uint64_t a1)
{
  v2 = sub_20C5ECBFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EC9C0(uint64_t a1)
{
  v2 = sub_20C5ECBFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioLanguageEngagementSheet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5E0, &qword_20C650FD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5ECBFC();
  sub_20C64E500();
  v16 = 0;
  sub_20C64CE50();
  sub_20C5EE12C(&qword_27C7CE5F0, MEMORY[0x277CC8C40]);
  sub_20C64E3D0();
  if (!v1)
  {
    v9 = type metadata accessor for AudioLanguageEngagementSheet();
    v10 = *(v9 + 20);
    v15 = 1;
    sub_20C64E3D0();
    v11 = *(v9 + 24);
    v14 = 2;
    sub_20C64E3D0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_20C5ECBFC()
{
  result = qword_27C7CE5E8;
  if (!qword_27C7CE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE5E8);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheet.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v36 = &v32 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5F8, &qword_20C650FE0);
  v37 = *(v13 - 8);
  v38 = v13;
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = type metadata accessor for AudioLanguageEngagementSheet();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_20C5ECBFC();
  sub_20C64E4F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v33 = v8;
  v34 = v17;
  v23 = v20;
  sub_20C64CE50();
  v42 = 0;
  sub_20C5EE12C(&qword_27C7CE600, MEMORY[0x277CC8C40]);
  v24 = v36;
  v25 = v38;
  sub_20C64E350();
  v26 = v24;
  v27 = v23;
  sub_20C5EC880(v26, v23);
  v41 = 1;
  sub_20C64E350();
  v28 = v34;
  sub_20C5EC880(v11, &v27[*(v34 + 20)]);
  v40 = 2;
  v36 = v27;
  v29 = v33;
  sub_20C64E350();
  (*(v37 + 8))(v16, v25);
  v30 = v36;
  sub_20C5EC880(v29, &v36[*(v28 + 24)]);
  sub_20C5ED068(v30, v35);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_20C5ED0CC(v30);
}

uint64_t sub_20C5ED068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5ED0CC(uint64_t a1)
{
  v2 = type metadata accessor for AudioLanguageEngagementSheet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AudioLanguageEngagementSheet.hash(into:)()
{
  v1 = v0;
  v2 = sub_20C64CE50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  v21 = v1;
  sub_20C5EC718(v1, &v20 - v15);
  v17 = *(v3 + 48);
  if (v17(v16, 1, v2) == 1)
  {
    sub_20C64E4C0();
  }

  else
  {
    (*(v3 + 32))(v6, v16, v2);
    sub_20C64E4C0();
    sub_20C5EE12C(&qword_27C7CE608, MEMORY[0x277CC8C40]);
    sub_20C64E000();
    (*(v3 + 8))(v6, v2);
  }

  v18 = type metadata accessor for AudioLanguageEngagementSheet();
  sub_20C5EC718(v21 + *(v18 + 20), v14);
  if (v17(v14, 1, v2) == 1)
  {
    sub_20C64E4C0();
  }

  else
  {
    (*(v3 + 32))(v6, v14, v2);
    sub_20C64E4C0();
    sub_20C5EE12C(&qword_27C7CE608, MEMORY[0x277CC8C40]);
    sub_20C64E000();
    (*(v3 + 8))(v6, v2);
  }

  sub_20C5EC718(v21 + *(v18 + 24), v11);
  if (v17(v11, 1, v2) == 1)
  {
    return sub_20C64E4C0();
  }

  (*(v3 + 32))(v6, v11, v2);
  sub_20C64E4C0();
  sub_20C5EE12C(&qword_27C7CE608, MEMORY[0x277CC8C40]);
  sub_20C64E000();
  return (*(v3 + 8))(v6, v2);
}

uint64_t AudioLanguageEngagementSheet.hashValue.getter()
{
  sub_20C64E4A0();
  AudioLanguageEngagementSheet.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C5ED578()
{
  sub_20C64E4A0();
  AudioLanguageEngagementSheet.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C5ED5BC()
{
  sub_20C64E4A0();
  AudioLanguageEngagementSheet.hash(into:)();
  return sub_20C64E4E0();
}

BOOL _s16FitnessMarketing28AudioLanguageEngagementSheetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64CE50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v54 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE628, &unk_20C6511F0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v55 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v51 - v25;
  v27 = *(v24 + 48);
  v58 = a1;
  sub_20C5EC718(a1, &v51 - v25);
  v57 = a2;
  sub_20C5EC718(a2, &v26[v27]);
  v28 = *(v5 + 48);
  if (v28(v26, 1, v4) == 1)
  {
    if (v28(&v26[v27], 1, v4) == 1)
    {
      v52 = v8;
      v53 = v5;
      sub_20C5DBFC4(v26, &qword_27C7CE2E0, &qword_20C650FD0);
      goto LABEL_8;
    }

LABEL_6:
    v29 = v26;
LABEL_21:
    sub_20C5DBFC4(v29, &qword_27C7CE628, &unk_20C6511F0);
    return 0;
  }

  sub_20C5EC718(v26, v16);
  if (v28(&v26[v27], 1, v4) == 1)
  {
    (*(v5 + 8))(v16, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v8, &v26[v27], v4);
  sub_20C5EE12C(&qword_27C7CE630, MEMORY[0x277CC8C40]);
  v30 = sub_20C64E010();
  v53 = v5;
  v31 = *(v5 + 8);
  v52 = v8;
  v31();
  (v31)(v16, v4);
  sub_20C5DBFC4(v26, &qword_27C7CE2E0, &qword_20C650FD0);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v32 = type metadata accessor for AudioLanguageEngagementSheet();
  v33 = *(v32 + 20);
  v34 = *(v17 + 48);
  sub_20C5EC718(v58 + v33, v23);
  v35 = v57;
  sub_20C5EC718(v57 + v33, &v23[v34]);
  if (v28(v23, 1, v4) != 1)
  {
    v51 = v32;
    v36 = v56;
    sub_20C5EC718(v23, v56);
    v37 = v28(&v23[v34], 1, v4);
    v39 = v52;
    v38 = v53;
    if (v37 != 1)
    {
      (*(v53 + 32))(v52, &v23[v34], v4);
      sub_20C5EE12C(&qword_27C7CE630, MEMORY[0x277CC8C40]);
      v40 = sub_20C64E010();
      v41 = *(v38 + 8);
      v41(v39, v4);
      v41(v36, v4);
      sub_20C5DBFC4(v23, &qword_27C7CE2E0, &qword_20C650FD0);
      v32 = v51;
      if ((v40 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v53 + 8))(v36, v4);
    goto LABEL_13;
  }

  if (v28(&v23[v34], 1, v4) != 1)
  {
LABEL_13:
    v29 = v23;
    goto LABEL_21;
  }

  sub_20C5DBFC4(v23, &qword_27C7CE2E0, &qword_20C650FD0);
LABEL_15:
  v42 = *(v32 + 24);
  v43 = *(v17 + 48);
  v44 = v55;
  sub_20C5EC718(v58 + v42, v55);
  sub_20C5EC718(v35 + v42, v44 + v43);
  if (v28(v44, 1, v4) == 1)
  {
    if (v28((v44 + v43), 1, v4) == 1)
    {
      sub_20C5DBFC4(v44, &qword_27C7CE2E0, &qword_20C650FD0);
      return 1;
    }

    goto LABEL_20;
  }

  v45 = v54;
  sub_20C5EC718(v44, v54);
  if (v28((v44 + v43), 1, v4) == 1)
  {
    (*(v53 + 8))(v45, v4);
LABEL_20:
    v29 = v44;
    goto LABEL_21;
  }

  v48 = v52;
  v47 = v53;
  (*(v53 + 32))(v52, v44 + v43, v4);
  sub_20C5EE12C(&qword_27C7CE630, MEMORY[0x277CC8C40]);
  v49 = sub_20C64E010();
  v50 = *(v47 + 8);
  v50(v48, v4);
  v50(v45, v4);
  sub_20C5DBFC4(v44, &qword_27C7CE2E0, &qword_20C650FD0);
  return (v49 & 1) != 0;
}

void sub_20C5EDD64()
{
  if (!qword_281106858)
  {
    sub_20C64CE50();
    v0 = sub_20C64E1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_281106858);
    }
  }
}

uint64_t getEnumTagSinglePayload for AudioLanguageEngagementSheet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioLanguageEngagementSheet.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C5EDF10()
{
  result = qword_27C7CE610;
  if (!qword_27C7CE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE610);
  }

  return result;
}

unint64_t sub_20C5EDF68()
{
  result = qword_27C7CE618;
  if (!qword_27C7CE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE618);
  }

  return result;
}

unint64_t sub_20C5EDFC0()
{
  result = qword_27C7CE620;
  if (!qword_27C7CE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE620);
  }

  return result;
}

uint64_t sub_20C5EE014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63416F546C6C6163 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t sub_20C5EE12C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 MarketingButtonEnvironment.init(presentMarketingLink:performPurchase:requestRemoteBrowsingConnection:resolveAppleAccountState:resolveMarketingOffer:resolveSupportedDeviceState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  a9->n128_u64[0] = &unk_20C651208;
  a9->n128_u64[1] = v20;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t sub_20C5EE230(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE638, &unk_20C651280) - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v4[2] = v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE640, &qword_20C657390) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v4[3] = v12;
  sub_20C5EE874(a2, v12, type metadata accessor for MarketingOffer);
  v13 = type metadata accessor for MarketingOffer();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_20C5EE874(a3, v10, type metadata accessor for MarketingActionItem);
  v14 = type metadata accessor for MarketingActionItem();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  v18 = (a4 + *a4);
  v15 = a4[1];
  v16 = swift_task_alloc();
  v4[4] = v16;
  *v16 = v4;
  v16[1] = sub_20C5EE484;

  return v18(a1, v12, v10);
}

uint64_t sub_20C5EE484()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  sub_20C5DBFC4(v3, &qword_27C7CE638, &unk_20C651280);
  sub_20C5DBFC4(v2, &qword_27C7CE640, &qword_20C657390);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20C5EE5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_20C5EE6B4;

  return sub_20C5EE230(a1, a2, a3, v9);
}

uint64_t sub_20C5EE6B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_20C5EE7C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_20C5EE80C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C5EE874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C5EE8F4()
{
  if (*v0)
  {
    result = 0x7469617274726F70;
  }

  else
  {
    result = 0x70616373646E616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_20C5EE934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70616373646E616CLL && a2 == 0xE900000000000065;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7469617274726F70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

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

uint64_t sub_20C5EEA18(uint64_t a1)
{
  v2 = sub_20C5EEE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EEA54(uint64_t a1)
{
  v2 = sub_20C5EEE30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5EEA90(uint64_t a1)
{
  v2 = sub_20C5EEED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EEACC(uint64_t a1)
{
  v2 = sub_20C5EEED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5EEB08(uint64_t a1)
{
  v2 = sub_20C5EEE84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EEB44(uint64_t a1)
{
  v2 = sub_20C5EEE84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingInlineLayoutStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE648, &qword_20C651290);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE650, &qword_20C651298);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE658, &qword_20C6512A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EEE30();
  sub_20C64E500();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_20C5EEE84();
    v18 = v22;
    sub_20C64E3B0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_20C5EEED8();
    sub_20C64E3B0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_20C5EEE30()
{
  result = qword_27C7CE660;
  if (!qword_27C7CE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE660);
  }

  return result;
}

unint64_t sub_20C5EEE84()
{
  result = qword_27C7CE668;
  if (!qword_27C7CE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE668);
  }

  return result;
}

unint64_t sub_20C5EEED8()
{
  result = qword_27C7CE670;
  if (!qword_27C7CE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE670);
  }

  return result;
}

uint64_t MarketingInlineLayoutStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE678, &qword_20C6512A8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE680, &qword_20C6512B0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE688, &unk_20C6512B8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EEE30();
  v16 = v36;
  sub_20C64E4F0();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_20C64E3A0();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_20C5DDAF0();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_20C64E290();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
      *v26 = &type metadata for MarketingInlineLayoutStyle;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_20C5EEE84();
        sub_20C64E320();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_20C5EEED8();
        sub_20C64E320();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t MarketingInlineLayoutStyle.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

unint64_t sub_20C5EF490()
{
  result = qword_27C7CE690;
  if (!qword_27C7CE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE690);
  }

  return result;
}

unint64_t sub_20C5EF528()
{
  result = qword_27C7CE698;
  if (!qword_27C7CE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE698);
  }

  return result;
}

unint64_t sub_20C5EF580()
{
  result = qword_27C7CE6A0;
  if (!qword_27C7CE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6A0);
  }

  return result;
}

unint64_t sub_20C5EF5D8()
{
  result = qword_27C7CE6A8;
  if (!qword_27C7CE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6A8);
  }

  return result;
}

unint64_t sub_20C5EF630()
{
  result = qword_27C7CE6B0;
  if (!qword_27C7CE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6B0);
  }

  return result;
}

unint64_t sub_20C5EF688()
{
  result = qword_27C7CE6B8;
  if (!qword_27C7CE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6B8);
  }

  return result;
}

unint64_t sub_20C5EF6E0()
{
  result = qword_27C7CE6C0;
  if (!qword_27C7CE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6C0);
  }

  return result;
}

unint64_t sub_20C5EF738()
{
  result = qword_27C7CE6C8;
  if (!qword_27C7CE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6C8);
  }

  return result;
}

unint64_t sub_20C5EF79C()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6570704177656976;
  }

  *v0;
  return result;
}

uint64_t sub_20C5EF7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C659980 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

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

uint64_t sub_20C5EF8CC(uint64_t a1)
{
  v2 = sub_20C5EFD60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EF908(uint64_t a1)
{
  v2 = sub_20C5EFD60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5EF944(uint64_t a1)
{
  v2 = sub_20C5EFDB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EF980(uint64_t a1)
{
  v2 = sub_20C5EFDB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5EF9BC(uint64_t a1)
{
  v2 = sub_20C5EFE08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EF9F8(uint64_t a1)
{
  v2 = sub_20C5EFE08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingInlineAction.hashValue.getter(char a1)
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](a1 & 1);
  return sub_20C64E4E0();
}

uint64_t MarketingInlineAction.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE6D0, &qword_20C651640);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE6D8, &qword_20C651648);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE6E0, &qword_20C651650);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EFD60();
  sub_20C64E500();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_20C5EFDB4();
    sub_20C64E3B0();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_20C5EFE08();
    sub_20C64E3B0();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_20C5EFD60()
{
  result = qword_281106398[0];
  if (!qword_281106398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281106398);
  }

  return result;
}

unint64_t sub_20C5EFDB4()
{
  result = qword_27C7CE6E8;
  if (!qword_27C7CE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6E8);
  }

  return result;
}

unint64_t sub_20C5EFE08()
{
  result = qword_281106380;
  if (!qword_281106380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106380);
  }

  return result;
}

uint64_t sub_20C5EFE78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20C5EFEC4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_20C5EFEC4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE700, &qword_20C6519D8);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE708, &qword_20C6519E0);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE710, &qword_20C6519E8);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EFD60();
  v15 = v32;
  sub_20C64E4F0();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_20C64E3A0();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_20C5DDAF0();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_20C64E290();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
    *v24 = &type metadata for MarketingInlineAction;
    sub_20C64E330();
    sub_20C64E280();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
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
    sub_20C5EFDB4();
    sub_20C64E320();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_20C5EFE08();
    sub_20C64E320();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_20C5F0384()
{
  result = qword_27C7CE6F0;
  if (!qword_27C7CE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6F0);
  }

  return result;
}

unint64_t sub_20C5F041C()
{
  result = qword_27C7CE6F8;
  if (!qword_27C7CE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6F8);
  }

  return result;
}

unint64_t sub_20C5F0474()
{
  result = qword_281106370;
  if (!qword_281106370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106370);
  }

  return result;
}

unint64_t sub_20C5F04CC()
{
  result = qword_281106378;
  if (!qword_281106378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106378);
  }

  return result;
}

unint64_t sub_20C5F0524()
{
  result = qword_281106360;
  if (!qword_281106360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106360);
  }

  return result;
}

unint64_t sub_20C5F057C()
{
  result = qword_281106368;
  if (!qword_281106368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106368);
  }

  return result;
}

unint64_t sub_20C5F05D4()
{
  result = qword_281106388;
  if (!qword_281106388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106388);
  }

  return result;
}

unint64_t sub_20C5F062C()
{
  result = qword_281106390;
  if (!qword_281106390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106390);
  }

  return result;
}

uint64_t BubbleTipView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE718, &qword_20C651A00);
  sub_20C64DD00();
  *(a3 + 24) = v7;
  sub_20C64DD00();
  *(a3 + 40) = v7;
  *(a3 + 48) = *(&v7 + 1);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_20C5E0270;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t BubbleTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v145 = a1;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE720, &unk_20C651A08);
  v2 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v136 = &v104 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v132 = &v104 - v6;
  v7 = sub_20C64DFD0();
  v130 = *(v7 - 8);
  v131 = v7;
  v8 = *(v130 + 64);
  MEMORY[0x28223BE20](v7);
  v129 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C64DF90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v121 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  *&v139 = &v104 - v15;
  v122 = sub_20C64DF70();
  v119 = *(v122 - 8);
  v16 = *(v119 + 64);
  v17 = MEMORY[0x28223BE20](v122);
  v117 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v137 = &v104 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE728, &qword_20C651A18);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v123 = &v104 - v22;
  *&v138 = sub_20C64D0F0();
  v116 = *(v138 - 8);
  v23 = *(v116 + 64);
  MEMORY[0x28223BE20](v138);
  v25 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE730, &qword_20C651A20);
  v118 = *(v120 - 8);
  v26 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  *&v140 = &v104 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE738, &qword_20C651A28);
  v126 = *(v28 - 8);
  v127 = v28;
  v29 = *(v126 + 64);
  MEMORY[0x28223BE20](v28);
  v125 = &v104 - v30;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE740, &qword_20C651A30);
  v31 = *(*(v134 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v134);
  v124 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v128 = &v104 - v34;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE748, &qword_20C651A38);
  v35 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v133 = &v104 - v36;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE750, &qword_20C651A40);
  v37 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v142 = (&v104 - v38);
  v39 = v1[1];
  v156 = *v1;
  v157 = v39;
  v158 = v1[2];
  v159 = *(v1 + 6);
  v40 = v156;
  v41 = v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
  v43 = sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48);
  *&v141 = *(&v40 + 1);
  v44 = v41;
  v45 = v43;
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF20();

  v46 = v155;
  if (v155)
  {
    if (v155 == 1)
    {
      v148 = 0;
      v146 = 0u;
      v147 = 0u;
      v149 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE768, &qword_20C656F50);
      sub_20C5F1F70();
      sub_20C64D550();
      v47 = v152;
      v48 = v153;
      v49 = v151;
      v50 = v142;
      *v142 = v150;
      v50[1] = v49;
      *(v50 + 4) = v47;
      *(v50 + 40) = v48;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE760, &unk_20C651A90);
      sub_20C5F1FF4(&qword_281105978, &qword_27C7CE760, &unk_20C651A90, sub_20C5F1F70);
      sub_20C5F1FF4(&qword_281105980, &qword_27C7CE748, &qword_20C651A38, sub_20C5F1E18);
      return sub_20C64D550();
    }

    else
    {
      v111 = v11;
      v112 = v10;
      v114 = v154;
      if (v154)
      {
        v59 = *(v154 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel);
      }

      else
      {
        v59 = 0;
      }

      v115 = v46;
      v60 = *(v46 + OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_request);
      sub_20C64D220();
      swift_getKeyPath();
      sub_20C64DF20();

      v61 = *(&v150 + 1);
      v113 = v60;
      if (v59)
      {
        v106 = v45;
        v109 = v40;
        v104 = v150;
        swift_retain_n();
        sub_20C64D0E0();
        v62 = swift_allocObject();
        v63 = v157;
        *(v62 + 16) = v156;
        *(v62 + 32) = v63;
        *(v62 + 48) = v158;
        *(v62 + 64) = v159;
        *(v62 + 72) = v59;
        sub_20C5F2084(&v156, &v150);
        v64 = sub_20C5F1F18();
        v110 = v59;

        v65 = v138;
        v105 = v64;
        sub_20C64DB30();

        (*(v116 + 8))(v25, v65);
        v66 = [v60 title];
        v108 = v44;
        v107 = v42;
        if (v66)
        {
          v67 = v66;
          v68 = sub_20C64E050();
          v116 = v69;
        }

        else
        {
          v68 = 0;
          v116 = 0xE000000000000000;
        }

        v71 = v111;
        v72 = sub_20C5EC004(v104, v61);

        v73 = v137;
        sub_20C64DF60();
        v74 = v139;
        sub_20C64DF80();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C0, &unk_20C651AA0);
        inited = swift_initStackObject();
        *(inited + 32) = 1701667182;
        *(inited + 16) = xmmword_20C6519F0;
        v76 = MEMORY[0x277D837D0];
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = v68;
        *(inited + 56) = v116;
        *(inited + 72) = v76;
        strcpy((inited + 80), "impressionType");
        *(inited + 95) = -18;
        *(inited + 96) = 0x6954656C62627562;
        *(inited + 104) = 0xE900000000000070;
        *(inited + 120) = v76;
        *(inited + 128) = 0x6973736572706D69;
        v77 = MEMORY[0x277D83B88];
        *(inited + 136) = 0xEF7865646E496E6FLL;
        *(inited + 144) = -1;
        *(inited + 168) = v77;
        *(inited + 176) = 0x657079546469;
        *(inited + 216) = v76;
        *(inited + 184) = 0xE600000000000000;
        *(inited + 192) = 0x64695F737469;
        *(inited + 200) = 0xE600000000000000;
        v78 = sub_20C5F26C8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C8, &qword_20C650FB0);
        swift_arrayDestroy();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v150 = v78;
        sub_20C5EC3E4(v72, sub_20C5F20C0, 0, isUniquelyReferenced_nonNull_native, &v150);

        v116 = v150;
        v80 = v112;
        (*(v71 + 16))(v121, v74, v112);
        v81 = v119;
        v82 = v73;
        v83 = v122;
        (*(v119 + 16))(v117, v82, v122);
        v84 = MEMORY[0x277D84F90];
        sub_20C5F26C8(MEMORY[0x277D84F90]);
        sub_20C5F26C8(v84);
        v85 = v123;
        sub_20C64DFA0();
        (*(v71 + 8))(v139, v80);
        (*(v81 + 8))(v137, v83);
        v86 = sub_20C64DFB0();
        (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
        v87 = v129;
        sub_20C64DFC0();
        *&v150 = v138;
        *(&v150 + 1) = v105;
        swift_getOpaqueTypeConformance2();
        v88 = v125;
        v89 = v120;
        v90 = v140;
        sub_20C64D9B0();
        (*(v130 + 8))(v87, v131);
        sub_20C5DBFC4(v85, &qword_27C7CE728, &qword_20C651A18);
        (*(v118 + 8))(v90, v89);
        sub_20C64D220();
        swift_getKeyPath();
        v91 = v132;
        sub_20C64DF30();

        v92 = sub_20C64D070();
        v93 = *(v92 - 8);
        if ((*(v93 + 48))(v91, 1, v92) == 1)
        {
          sub_20C5DBFC4(v91, &qword_27C7CDFE0, &qword_20C64F410);
          v140 = 0u;
          v141 = 0u;
        }

        else
        {
          sub_20C64D050();
          v140 = v95;
          v141 = v94;
          v138 = v97;
          v139 = v96;
          (*(v93 + 8))(v91, v92);
          *&v98 = v140;
          *(&v98 + 1) = v138;
          v140 = v98;
          *&v98 = v141;
          *(&v98 + 1) = v139;
          v141 = v98;
        }

        v70 = v133;
        v99 = sub_20C64D7A0();
        v100 = v124;
        (*(v126 + 32))(v124, v88, v127);
        v101 = v100 + *(v134 + 36);
        *v101 = v99;
        v102 = v141;
        *(v101 + 24) = v140;
        *(v101 + 8) = v102;
        *(v101 + 40) = 0;
        v103 = v128;
        sub_20C5D5330(v100, v128);
        sub_20C5E574C(v103, v136, &qword_27C7CE740, &qword_20C651A30);
        swift_storeEnumTagMultiPayload();
        sub_20C5F1E18();
        sub_20C64D550();

        sub_20C5DBFC4(v103, &qword_27C7CE740, &qword_20C651A30);
      }

      else
      {

        swift_storeEnumTagMultiPayload();
        sub_20C5F1E18();
        v70 = v133;
        sub_20C64D550();
      }

      sub_20C5E574C(v70, v142, &qword_27C7CE748, &qword_20C651A38);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE760, &unk_20C651A90);
      sub_20C5F1FF4(&qword_281105978, &qword_27C7CE760, &unk_20C651A90, sub_20C5F1F70);
      sub_20C5F1FF4(&qword_281105980, &qword_27C7CE748, &qword_20C651A38, sub_20C5F1E18);
      sub_20C64D550();

      return sub_20C5DBFC4(v70, &qword_27C7CE748, &qword_20C651A38);
    }
  }

  else
  {
    v52 = sub_20C64DC00();
    v53 = swift_allocObject();
    v54 = v157;
    *(v53 + 16) = v156;
    *(v53 + 32) = v54;
    *(v53 + 48) = v158;
    *(v53 + 64) = v159;
    *&v146 = v52;
    *(&v146 + 1) = sub_20C5F27F8;
    v147 = v53;
    v148 = 0;
    v149 = 0;
    sub_20C5F2084(&v156, &v150);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE768, &qword_20C656F50);
    sub_20C5F1F70();
    sub_20C64D550();
    v55 = v152;
    v56 = v153;
    v57 = v151;
    v58 = v142;
    *v142 = v150;
    v58[1] = v57;
    *(v58 + 4) = v55;
    *(v58 + 40) = v56;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE760, &unk_20C651A90);
    sub_20C5F1FF4(&qword_281105978, &qword_27C7CE760, &unk_20C651A90, sub_20C5F1F70);
    sub_20C5F1FF4(&qword_281105980, &qword_27C7CE748, &qword_20C651A38, sub_20C5F1E18);
    sub_20C64D550();
  }
}

uint64_t sub_20C5F1884(uint64_t *a1)
{
  v2 = type metadata accessor for BubbleTipAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
  sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48);
  sub_20C64D220();
  swift_storeEnumTagMultiPayload();
  sub_20C64DF40();

  return sub_20C5F29F4(v5);
}

uint64_t sub_20C5F19A4(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE780, &qword_20C651BD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  if (a1)
  {
    v16 = *(a2 + 40);
    v15[0] = *(a2 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE788, &qword_20C651BE0);
    result = sub_20C64DD10();
    if ((v14 & 1) == 0)
    {
      v15[0] = v16;
      LOBYTE(v14) = 1;
      sub_20C64DD20();
      sub_20C64D120();
      v10 = swift_allocObject();
      v11 = *(a2 + 16);
      *(v10 + 16) = *a2;
      *(v10 + 32) = v11;
      *(v10 + 48) = *(a2 + 32);
      *(v10 + 64) = *(a2 + 48);
      sub_20C5F2084(a2, v15);
      sub_20C5E5558(&qword_27C7CE790, &qword_27C7CE780, &qword_20C651BD8);
      v12 = sub_20C64D170();

      (*(v5 + 8))(v9, v4);
      v15[0] = *(a2 + 24);
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE798, &qword_20C651BE8);
      return sub_20C64DD20();
    }
  }

  return result;
}

uint64_t sub_20C5F1BBC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for BubbleTipAction();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 8);
  if (v9 != 255)
  {
    v10 = *a1;
    v11 = *a2;
    v12 = a2[1];
    v13 = *(a2 + 16);
    sub_20C5F2AAC(*a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
    sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48);
    sub_20C64D220();
    if ((v9 & 1) == 0)
    {
      sub_20C5F2ADC();
      v14 = v10;
      sub_20C64D0D0();
    }

    swift_storeEnumTagMultiPayload();
    sub_20C64DF40();

    sub_20C5F29F4(v8);
    v16 = *(a2 + 5);
    v17 = v16;
    v15[15] = 0;
    v18 = *(&v16 + 1);
    sub_20C5E574C(&v18, v15, &qword_27C7CE7A0, &qword_20C651BF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE788, &qword_20C651BE0);
    sub_20C64DD20();
    sub_20C5F2AB8(v10, v9);
    return sub_20C5DBFC4(&v17, &qword_27C7CE788, &qword_20C651BE0);
  }

  return result;
}

unint64_t sub_20C5F1E18()
{
  result = qword_281105AE8;
  if (!qword_281105AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE740, &qword_20C651A30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE730, &qword_20C651A20);
    sub_20C64D0F0();
    sub_20C5F1F18();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AE8);
  }

  return result;
}

unint64_t sub_20C5F1F18()
{
  result = qword_281105B38;
  if (!qword_281105B38)
  {
    sub_20C64D0F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105B38);
  }

  return result;
}

unint64_t sub_20C5F1F70()
{
  result = qword_281105AA0;
  if (!qword_281105AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE768, &qword_20C656F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AA0);
  }

  return result;
}

uint64_t sub_20C5F1FF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C5F20C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_20C5DFF60((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_20C5F210C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5D0, &qword_20C650FB8);
  v36 = a2;
  result = sub_20C64E2F0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_20C5EC6F4(v25, v37);
      }

      else
      {
        sub_20C5DFF60(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_20C64E4A0();
      sub_20C64E090();
      result = sub_20C64E4E0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_20C5EC6F4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_20C5F23C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5D0, &qword_20C650FB8);
  v2 = *v0;
  v3 = sub_20C64E2E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_20C5DFF60(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20C5EC6F4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_20C5F2568@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20C5DFF60(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_20C5EC6F4(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_20C5DBFC4(v22, &qword_27C7CE778, &qword_20C651BD0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_20C5F26C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5D0, &qword_20C650FB8);
    v3 = sub_20C64E300();
    v4 = a1 + 32;

    while (1)
    {
      sub_20C5E574C(v4, &v13, &qword_27C7CE5C8, &qword_20C650FB0);
      v5 = v13;
      v6 = v14;
      result = sub_20C5DFFBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20C5EC6F4(&v15, (v3[7] + 32 * result));
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_20C5F2844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_20C5F28A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_20C5F2910()
{
  result = qword_281105948;
  if (!qword_281105948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE770, &unk_20C651BC0);
    sub_20C5F1FF4(&qword_281105978, &qword_27C7CE760, &unk_20C651A90, sub_20C5F1F70);
    sub_20C5F1FF4(&qword_281105980, &qword_27C7CE748, &qword_20C651A38, sub_20C5F1E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105948);
  }

  return result;
}

uint64_t sub_20C5F29F4(uint64_t a1)
{
  v2 = type metadata accessor for BubbleTipAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_20C5E3044();
  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 64);

  return swift_deallocObject();
}

void sub_20C5F2AB8(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_20C5F2AD0(a1);
  }
}

unint64_t sub_20C5F2ADC()
{
  result = qword_281105780;
  if (!qword_281105780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281105780);
  }

  return result;
}

uint64_t ImpressionMetrics.init(parentId:elementId:name:impressionType:index:idType:additionalFields:custom:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v40 = a4;
  v39 = a3;
  v38 = a2;
  v37 = a1;
  v47 = a5;
  v46 = a10;
  v41 = a7;
  v45 = sub_20C64DF70();
  v43 = *(v45 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C64DF90();
  v36 = *(v42 - 8);
  v12 = v36;
  v13 = *(v36 + 64);
  v14 = MEMORY[0x28223BE20](v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  sub_20C64DF80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C0, &unk_20C651AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C6519F0;
  *(inited + 32) = 1701667182;
  v20 = MEMORY[0x277D837D0];
  v21 = v37;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v21;
  *(inited + 56) = v38;
  *(inited + 72) = v20;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  v22 = v40;
  *(inited + 96) = v39;
  *(inited + 104) = v22;
  *(inited + 120) = v20;
  *(inited + 128) = 0x6973736572706D69;
  v23 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = a6;
  *(inited + 168) = v23;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v20;
  v24 = v41;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = v24;
  *(inited + 200) = a8;
  v25 = sub_20C5F26C8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C8, &qword_20C650FB0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v25;
  sub_20C5EC3E4(a9, sub_20C5F20C0, 0, isUniquelyReferenced_nonNull_native, &v48);

  v27 = *(v12 + 16);
  v28 = v18;
  v29 = v42;
  v27(v16, v18, v42);
  v30 = v43;
  v31 = v46;
  v32 = v45;
  (*(v43 + 16))(v44, v46, v45);
  v33 = MEMORY[0x277D84F90];
  sub_20C5F26C8(MEMORY[0x277D84F90]);
  sub_20C5F26C8(v33);
  sub_20C64DFA0();
  (*(v30 + 8))(v31, v32);
  return (*(v36 + 8))(v28, v29);
}

uint64_t sub_20C5F2F50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C64CE10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7A8, &qword_20C651BF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  sub_20C64CEC0();
  sub_20C64CE00();

  v11 = *(v3 + 48);
  if (!v11(v10, 1, v2))
  {
    sub_20C64CDF0();
  }

  if (v11(v10, 1, v2))
  {
    v12 = sub_20C64CF10();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_20C64CDE0();
    (*(v3 + 8))(v6, v2);
  }

  return sub_20C5F3150(v10);
}

uint64_t sub_20C5F3150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7A8, &qword_20C651BF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MarketingArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_20C5E5658(a1, a3, &qword_27C7CE7B0, &unk_20C651C00);
  v5 = type metadata accessor for MarketingArtwork();
  return sub_20C5E5658(a2, a3 + *(v5 + 20), &qword_27C7CF080, &qword_20C654360);
}

uint64_t sub_20C5F3294()
{
  if (*v0)
  {
    result = 0x6574616C706D6574;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

uint64_t sub_20C5F32E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

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

uint64_t sub_20C5F33CC(uint64_t a1)
{
  v2 = sub_20C5F3644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F3408(uint64_t a1)
{
  v2 = sub_20C5F3644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B8, &qword_20C651C10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5F3644();
  sub_20C64E500();
  v11[15] = 0;
  sub_20C64D030();
  sub_20C5F4760(&qword_27C7CE7C8, MEMORY[0x277D09D68]);
  sub_20C64E3D0();
  if (!v1)
  {
    v9 = *(type metadata accessor for MarketingArtwork() + 20);
    v11[14] = 1;
    sub_20C64CF10();
    sub_20C5F4760(&qword_27C7CE7D0, MEMORY[0x277CC9260]);
    sub_20C64E3D0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_20C5F3644()
{
  result = qword_27C7CE7C0;
  if (!qword_27C7CE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE7C0);
  }

  return result;
}

uint64_t MarketingArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B0, &unk_20C651C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7D8, &qword_20C651C18);
  v27 = *(v29 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v24 - v12;
  v14 = type metadata accessor for MarketingArtwork();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5F3644();
  sub_20C64E4F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v19 = v17;
  v20 = v27;
  sub_20C64D030();
  v31 = 0;
  sub_20C5F4760(&qword_27C7CE7E0, MEMORY[0x277D09D68]);
  v21 = v28;
  v22 = v29;
  sub_20C64E350();
  sub_20C5E5658(v21, v19, &qword_27C7CE7B0, &unk_20C651C00);
  sub_20C64CF10();
  v30 = 1;
  sub_20C5F4760(&qword_27C7CE7E8, MEMORY[0x277CC9260]);
  sub_20C64E350();
  (*(v20 + 8))(v13, v22);
  sub_20C5E5658(v7, v19 + *(v25 + 20), &qword_27C7CF080, &qword_20C654360);
  sub_20C5F3A48(v19, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C5F3AAC(v19);
}

uint64_t sub_20C5F3A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingArtwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5F3AAC(uint64_t a1)
{
  v2 = type metadata accessor for MarketingArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MarketingArtwork.hash(into:)()
{
  v1 = v0;
  v2 = sub_20C64CF10();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_20C64D030();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B0, &unk_20C651C00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - v16;
  sub_20C5E574C(v1, &v23 - v16, &qword_27C7CE7B0, &unk_20C651C00);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_20C64E4C0();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_20C64E4C0();
    sub_20C5F4760(&qword_281106828, MEMORY[0x277D09D68]);
    sub_20C64E000();
    (*(v10 + 8))(v13, v9);
  }

  v18 = type metadata accessor for MarketingArtwork();
  sub_20C5E574C(v1 + *(v18 + 20), v8, &qword_27C7CF080, &qword_20C654360);
  v20 = v25;
  v19 = v26;
  if ((*(v25 + 48))(v8, 1, v26) == 1)
  {
    return sub_20C64E4C0();
  }

  v22 = v24;
  (*(v20 + 32))(v24, v8, v19);
  sub_20C64E4C0();
  sub_20C5F4760(&qword_281106850, MEMORY[0x277CC9260]);
  sub_20C64E000();
  return (*(v20 + 8))(v22, v19);
}

uint64_t MarketingArtwork.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingArtwork.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C5F3F24()
{
  sub_20C64E4A0();
  MarketingArtwork.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C5F3F68()
{
  sub_20C64E4A0();
  MarketingArtwork.hash(into:)();
  return sub_20C64E4E0();
}

BOOL _s16FitnessMarketing0B7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64CF10();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v44 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE810, &qword_20C651E18);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v44 - v11;
  v12 = sub_20C64D030();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B0, &unk_20C651C00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE818, &unk_20C651E20);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v44 - v24;
  v26 = *(v23 + 56);
  v48 = a1;
  sub_20C5E574C(a1, &v44 - v24, &qword_27C7CE7B0, &unk_20C651C00);
  v49 = a2;
  sub_20C5E574C(a2, &v25[v26], &qword_27C7CE7B0, &unk_20C651C00);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20C5E574C(v25, v20, &qword_27C7CE7B0, &unk_20C651C00);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      (*(v13 + 32))(v16, &v25[v26], v12);
      sub_20C5F4760(&qword_281106820, MEMORY[0x277D09D68]);
      v31 = sub_20C64E010();
      v32 = *(v13 + 8);
      v32(v16, v12);
      v32(v20, v12);
      sub_20C5DBFC4(v25, &qword_27C7CE7B0, &unk_20C651C00);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v13 + 8))(v20, v12);
LABEL_6:
    v28 = &qword_27C7CE818;
    v29 = &unk_20C651E20;
    v30 = v25;
LABEL_14:
    sub_20C5DBFC4(v30, v28, v29);
    return 0;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20C5DBFC4(v25, &qword_27C7CE7B0, &unk_20C651C00);
LABEL_8:
  v33 = *(type metadata accessor for MarketingArtwork() + 20);
  v34 = v47;
  v35 = *(v46 + 48);
  sub_20C5E574C(v48 + v33, v47, &qword_27C7CF080, &qword_20C654360);
  sub_20C5E574C(v49 + v33, v34 + v35, &qword_27C7CF080, &qword_20C654360);
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 48);
  if (v38(v34, 1, v51) == 1)
  {
    if (v38(v34 + v35, 1, v36) == 1)
    {
      sub_20C5DBFC4(v34, &qword_27C7CF080, &qword_20C654360);
      return 1;
    }

    goto LABEL_13;
  }

  v39 = v45;
  sub_20C5E574C(v34, v45, &qword_27C7CF080, &qword_20C654360);
  if (v38(v34 + v35, 1, v36) == 1)
  {
    (*(v37 + 8))(v39, v36);
LABEL_13:
    v28 = &qword_27C7CE810;
    v29 = &qword_20C651E18;
    v30 = v34;
    goto LABEL_14;
  }

  v41 = v44;
  (*(v37 + 32))(v44, v34 + v35, v36);
  sub_20C5F4760(&qword_281106848, MEMORY[0x277CC9260]);
  v42 = sub_20C64E010();
  v43 = *(v37 + 8);
  v43(v41, v36);
  v43(v39, v36);
  sub_20C5DBFC4(v34, &qword_27C7CF080, &qword_20C654360);
  return (v42 & 1) != 0;
}

unint64_t sub_20C5F465C()
{
  result = qword_27C7CE7F8;
  if (!qword_27C7CE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE7F8);
  }

  return result;
}

unint64_t sub_20C5F46B4()
{
  result = qword_27C7CE800;
  if (!qword_27C7CE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE800);
  }

  return result;
}

unint64_t sub_20C5F470C()
{
  result = qword_27C7CE808;
  if (!qword_27C7CE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE808);
  }

  return result;
}

uint64_t sub_20C5F4760(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C5F47BC(uint64_t a1)
{
  v2 = sub_20C5F52EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F47F8(uint64_t a1)
{
  v2 = sub_20C5F52EC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20C5F4834()
{
  v1 = *v0;
  v2 = 0x6D6574496F6ELL;
  v3 = 0xD000000000000012;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0x6C6572726F436F6ELL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_20C5F4908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C5F6294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C5F4930(uint64_t a1)
{
  v2 = sub_20C5F51F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F496C(uint64_t a1)
{
  v2 = sub_20C5F51F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F49A8(uint64_t a1)
{
  v2 = sub_20C5F5298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F49E4(uint64_t a1)
{
  v2 = sub_20C5F5298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F4A20(uint64_t a1)
{
  v2 = sub_20C5F5244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F4A5C(uint64_t a1)
{
  v2 = sub_20C5F5244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F4A98(uint64_t a1)
{
  v2 = sub_20C5F5340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F4AD4(uint64_t a1)
{
  v2 = sub_20C5F5340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F4B10(uint64_t a1)
{
  v2 = sub_20C5F53E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F4B4C(uint64_t a1)
{
  v2 = sub_20C5F53E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F4B88(uint64_t a1)
{
  v2 = sub_20C5F5394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F4BC4(uint64_t a1)
{
  v2 = sub_20C5F5394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingItemError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE820, &qword_20C651E30);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE828, &qword_20C651E38);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE830, &qword_20C651E40);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE838, &qword_20C651E48);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v12);
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE840, &qword_20C651E50);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x28223BE20](v15);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE848, &qword_20C651E58);
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE850, &qword_20C651E60);
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v50);
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5F51F0();
  sub_20C64E500();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_20C5F52EC();
      v29 = v41;
      v30 = v50;
      sub_20C64E3B0();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_20C5F5298();
      v29 = v44;
      v30 = v50;
      sub_20C64E3B0();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_20C5F5244();
      v29 = v47;
      v30 = v50;
      sub_20C64E3B0();
      v32 = v48;
      v31 = v49;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v52 = 1;
      sub_20C5F5394();
      v29 = v35;
      v30 = v50;
      sub_20C64E3B0();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_20C5F5340();
      v29 = v38;
      v30 = v50;
      sub_20C64E3B0();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_20C5F53E8();
  v30 = v50;
  sub_20C64E3B0();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
}

unint64_t sub_20C5F51F0()
{
  result = qword_27C7CE858;
  if (!qword_27C7CE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE858);
  }

  return result;
}

unint64_t sub_20C5F5244()
{
  result = qword_27C7CE860;
  if (!qword_27C7CE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE860);
  }

  return result;
}

unint64_t sub_20C5F5298()
{
  result = qword_27C7CE868;
  if (!qword_27C7CE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE868);
  }

  return result;
}

unint64_t sub_20C5F52EC()
{
  result = qword_27C7CE870;
  if (!qword_27C7CE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE870);
  }

  return result;
}

unint64_t sub_20C5F5340()
{
  result = qword_27C7CE878;
  if (!qword_27C7CE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE878);
  }

  return result;
}

unint64_t sub_20C5F5394()
{
  result = qword_27C7CE880;
  if (!qword_27C7CE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE880);
  }

  return result;
}

unint64_t sub_20C5F53E8()
{
  result = qword_27C7CE888;
  if (!qword_27C7CE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE888);
  }

  return result;
}

uint64_t MarketingItemError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE890, &qword_20C651E68);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE898, &qword_20C651E70);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = &v48 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE8A0, &qword_20C651E78);
  v55 = *(v50 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v50);
  v62 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE8A8, &qword_20C651E80);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v60 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE8B0, &qword_20C651E88);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE8B8, &qword_20C651E90);
  v49 = *(v19 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE8C0, &unk_20C651E98);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_20C5F51F0();
  v30 = v65;
  sub_20C64E4F0();
  if (!v30)
  {
    v31 = v22;
    v48 = v19;
    v65 = v18;
    v33 = v62;
    v32 = v63;
    v34 = v64;
    v35 = sub_20C64E3A0();
    v36 = (2 * *(v35 + 16)) | 1;
    v67 = v35;
    v68 = v35 + 32;
    v69 = 0;
    v70 = v36;
    v37 = sub_20C5DDAF8();
    v38 = v27;
    if (v37 == 6 || v69 != v70 >> 1)
    {
      v42 = sub_20C64E290();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
      *v44 = &type metadata for MarketingItemError;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
      swift_willThrow();
      (*(v24 + 8))(v27, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = v37;
      if (v37 > 2u)
      {
        v47 = v61;
        if (v37 == 3)
        {
          v72 = 3;
          sub_20C5F52EC();
          sub_20C64E320();
          (*(v55 + 8))(v33, v50);
        }

        else if (v37 == 4)
        {
          v72 = 4;
          sub_20C5F5298();
          sub_20C64E320();
          (*(v57 + 8))(v32, v56);
        }

        else
        {
          v72 = 5;
          sub_20C5F5244();
          sub_20C64E320();
          (*(v58 + 8))(v34, v59);
        }

        (*(v24 + 8))(v38, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v37)
        {
          if (v37 == 1)
          {
            v72 = 1;
            sub_20C5F5394();
            v39 = v65;
            sub_20C64E320();
            v41 = v51;
            v40 = v52;
          }

          else
          {
            v72 = 2;
            sub_20C5F5340();
            v39 = v60;
            sub_20C64E320();
            v41 = v53;
            v40 = v54;
          }

          (*(v41 + 8))(v39, v40);
        }

        else
        {
          v72 = 0;
          sub_20C5F53E8();
          sub_20C64E320();
          (*(v49 + 8))(v31, v48);
        }

        (*(v24 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v47 = v61;
      }

      *v47 = v71;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t MarketingItemError.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

unint64_t sub_20C5F5C98()
{
  result = qword_27C7CE8C8;
  if (!qword_27C7CE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8C8);
  }

  return result;
}

unint64_t sub_20C5F5D70()
{
  result = qword_27C7CE8D0;
  if (!qword_27C7CE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8D0);
  }

  return result;
}

unint64_t sub_20C5F5DC8()
{
  result = qword_27C7CE8D8;
  if (!qword_27C7CE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8D8);
  }

  return result;
}

unint64_t sub_20C5F5E20()
{
  result = qword_27C7CE8E0;
  if (!qword_27C7CE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8E0);
  }

  return result;
}

unint64_t sub_20C5F5E78()
{
  result = qword_27C7CE8E8;
  if (!qword_27C7CE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8E8);
  }

  return result;
}

unint64_t sub_20C5F5ED0()
{
  result = qword_27C7CE8F0;
  if (!qword_27C7CE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8F0);
  }

  return result;
}

unint64_t sub_20C5F5F28()
{
  result = qword_27C7CE8F8;
  if (!qword_27C7CE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8F8);
  }

  return result;
}

unint64_t sub_20C5F5F80()
{
  result = qword_27C7CE900;
  if (!qword_27C7CE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE900);
  }

  return result;
}

unint64_t sub_20C5F5FD8()
{
  result = qword_27C7CE908;
  if (!qword_27C7CE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE908);
  }

  return result;
}

unint64_t sub_20C5F6030()
{
  result = qword_27C7CE910;
  if (!qword_27C7CE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE910);
  }

  return result;
}

unint64_t sub_20C5F6088()
{
  result = qword_27C7CE918;
  if (!qword_27C7CE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE918);
  }

  return result;
}

unint64_t sub_20C5F60E0()
{
  result = qword_27C7CE920;
  if (!qword_27C7CE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE920);
  }

  return result;
}

unint64_t sub_20C5F6138()
{
  result = qword_27C7CE928;
  if (!qword_27C7CE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE928);
  }

  return result;
}

unint64_t sub_20C5F6190()
{
  result = qword_27C7CE930;
  if (!qword_27C7CE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE930);
  }

  return result;
}

unint64_t sub_20C5F61E8()
{
  result = qword_27C7CE938;
  if (!qword_27C7CE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE938);
  }

  return result;
}

unint64_t sub_20C5F6240()
{
  result = qword_27C7CE940;
  if (!qword_27C7CE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE940);
  }

  return result;
}

uint64_t sub_20C5F6294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6574496F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C6599A0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6572726F436F6ELL && a2 == 0xEF44496E6F697461 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C6599C0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C6599E0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C659A00 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t sub_20C5F64A4()
{
  v0 = sub_20C64D160();
  __swift_allocate_value_buffer(v0, qword_27C7DD450);
  __swift_project_value_buffer(v0, qword_27C7DD450);
  return sub_20C64D150();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_20C5F65BC(uint64_t a1, uint64_t a2)
{
  v88 = sub_20C64CF10();
  v4 = *(v88 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v88);
  v84 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v74 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v9 = *(v86 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = &v74 - v11;
  v92 = type metadata accessor for MarketingAction();
  v12 = *(*(v92 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v92);
  v85 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v74 - v16;
  MEMORY[0x28223BE20](v15);
  v90 = &v74 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA88, &unk_20C652AF0);
  v18 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v20 = &v74 - v19;
  v89 = type metadata accessor for MarketingActionItem();
  v21 = *(*(v89 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v89);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v27 = &v74 - v26;
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
    return 0;
  }

  if (!v28 || a1 == a2)
  {
    return 1;
  }

  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = a2 + v29;
  v31 = a1 + v29;
  v79 = (v4 + 32);
  v80 = (v4 + 8);
  v74 = (v9 + 32);
  v75 = (v9 + 8);
  v81 = *(v25 + 72);
  v78 = v24;
  while (1)
  {
    sub_20C5F93A4(v31, v27, type metadata accessor for MarketingActionItem);
    sub_20C5F93A4(v30, v24, type metadata accessor for MarketingActionItem);
    v34 = *(v91 + 48);
    sub_20C5F93A4(v27, v20, type metadata accessor for MarketingAction);
    sub_20C5F93A4(v24, &v20[v34], type metadata accessor for MarketingAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v42 = v90;
      sub_20C5F93A4(v20, v90, type metadata accessor for MarketingAction);
      if (swift_getEnumCaseMultiPayload())
      {
        (*v75)(v42, v86);
        goto LABEL_43;
      }

      v43 = v83;
      v44 = v86;
      (*v74)(v83, &v20[v34], v86);
      sub_20C5F94D4(0, &qword_281105788, 0x277CEE438);
      LODWORD(v77) = sub_20C64D0A0();
      v45 = *v75;
      v24 = v78;
      (*v75)(v43, v44);
      v45(v90, v44);
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_20C5F93A4(v20, v87, type metadata accessor for MarketingAction);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*v80)(v87, v88);
        goto LABEL_43;
      }

      v36 = v87;
      v37 = v88;
      v38 = v82;
      (*v79)(v82, &v20[v34], v88);
      LODWORD(v77) = sub_20C64CEE0();
      v39 = *v80;
      v40 = v38;
      v41 = v36;
      v24 = v78;
      (*v80)(v40, v37);
      v39(v41, v37);
LABEL_13:
      sub_20C5F9474(v20, type metadata accessor for MarketingAction);
      v46 = v89;
      if ((v77 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_17;
    }

    v47 = v85;
    sub_20C5F93A4(v20, v85, type metadata accessor for MarketingAction);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      break;
    }

    v48 = *v79;
    v49 = v30;
    v50 = v84;
    v77 = v31;
    v51 = v47;
    v52 = v88;
    v48(v84, &v20[v34], v88);
    v76 = sub_20C64CEE0();
    v53 = *v80;
    v54 = v50;
    v30 = v49;
    (*v80)(v54, v52);
    v55 = v51;
    v31 = v77;
    v53(v55, v52);
    sub_20C5F9474(v20, type metadata accessor for MarketingAction);
    v46 = v89;
    if ((v76 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_17:
    v56 = v46[5];
    v57 = &v27[v56];
    v58 = *&v27[v56 + 8];
    v59 = &v24[v56];
    v60 = *(v59 + 1);
    if (v58)
    {
      if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_20C64E430() & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (v60)
    {
      goto LABEL_44;
    }

    v61 = v46[6];
    v62 = &v27[v61];
    v63 = *&v27[v61 + 8];
    v64 = &v24[v61];
    v65 = *(v64 + 1);
    if (v63)
    {
      if (!v65 || (*v62 != *v64 || v63 != v65) && (sub_20C64E430() & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (v65)
    {
      goto LABEL_44;
    }

    v66 = v46[7];
    v67 = v27[v66];
    v68 = v27[v66];
    v69 = v24[v66];
    if (v67 < 0)
    {
      if ((v69 & 0x80) == 0 || ((v69 ^ v68) & 0x7F) != 0)
      {
        goto LABEL_44;
      }
    }

    else if (v68 != v69)
    {
      goto LABEL_44;
    }

    v70 = v46[8];
    v71 = *&v27[v70];
    v72 = *&v27[v70 + 8];
    v73 = &v24[v70];
    if (v71 == *v73 && v72 == *(v73 + 1))
    {
      sub_20C5F9474(v24, type metadata accessor for MarketingActionItem);
      sub_20C5F9474(v27, type metadata accessor for MarketingActionItem);
    }

    else
    {
      v32 = sub_20C64E430();
      sub_20C5F9474(v24, type metadata accessor for MarketingActionItem);
      sub_20C5F9474(v27, type metadata accessor for MarketingActionItem);
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }

    v30 += v81;
    v31 += v81;
    result = 1;
    if (!--v28)
    {
      return result;
    }
  }

  (*v80)(v47, v88);
LABEL_43:
  sub_20C5F940C(v20);
LABEL_44:
  sub_20C5F9474(v24, type metadata accessor for MarketingActionItem);
  sub_20C5F9474(v27, type metadata accessor for MarketingActionItem);
  return 0;
}

uint64_t sub_20C5F6E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *i;
      v6 = *v3;
      if (v5 < 0)
      {
        if ((v6 & 0x80000000) == 0)
        {
          return 0;
        }
      }

      else if (v6 < 0)
      {
        return 0;
      }

      if (*(v3 - 2) != *(i - 2))
      {
        break;
      }

      if (v5)
      {
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if ((v6 & 1) != 0 || *(i - 1) != *(v3 - 1))
        {
          return result;
        }
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20C5F6EA8()
{
  if (*v0)
  {
    result = 0x726564616568;
  }

  else
  {
    result = 0x4163696D616E7964;
  }

  *v0;
  return result;
}

uint64_t sub_20C5F6EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4163696D616E7964 && a2 == 0xED00006E6F697463;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

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

uint64_t sub_20C5F6FCC(uint64_t a1)
{
  v2 = sub_20C5F8A38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F7008(uint64_t a1)
{
  v2 = sub_20C5F8A38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F705C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C5F70E4(uint64_t a1)
{
  v2 = sub_20C5F8B34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F7120(uint64_t a1)
{
  v2 = sub_20C5F8B34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F7170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C5F71F4(uint64_t a1)
{
  v2 = sub_20C5F8A8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F7230(uint64_t a1)
{
  v2 = sub_20C5F8A8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static MarketingOfferTemplate.makeHeaderUpsellTemplate(from:platform:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1;
  LODWORD(v5) = 2 * (a2 == 3);
  v6 = [a1 rawValues];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE948, &unk_20C655040);
  v7 = sub_20C64DFF0();

  if (!*(v7 + 16))
  {
    goto LABEL_16;
  }

  v8 = sub_20C5DFFBC(0x7475626972747461, 0xEA00000000007365);
  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_unknownObjectRetain();

  v56[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEF50, &qword_20C650FC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!*(v54 + 16))
  {
    goto LABEL_16;
  }

  v11 = sub_20C5DFFBC(0x79616C70736964, 0xE700000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_20C5DFF60(*(v54 + 56) + 32 * v11, v56);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!*(v54 + 16))
  {
    goto LABEL_16;
  }

  v13 = sub_20C5DFFBC(0xD000000000000012, 0x800000020C659A40);
  if ((v14 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_20C5DFF60(*(v54 + 56) + 32 * v13, v56);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(v54 + 16) && (v15 = sub_20C5DFFBC(0xD000000000000010, 0x800000020C659A60), (v16 & 1) != 0))
  {
    sub_20C5DFF60(*(v54 + 56) + 32 * v15, v56);

    if (swift_dynamicCast())
    {
      if (v54 != 0x65736C6166 || v55 != 0xE500000000000000)
      {
        goto LABEL_53;
      }

      LODWORD(v5) = 1;
    }
  }

  else
  {
LABEL_16:
  }

  while (1)
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE950, &unk_20C652590);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C650FA0;
    v53 = v5;
    *(v17 + 32) = v5;
    *(v17 + 40) = 1;
    *(v17 + 48) = 0x80;
    v18 = [v3 itemActions];
    v52 = a3;
    if (!v18)
    {
      result = sub_20C5F7834(MEMORY[0x277D84F90]);
      v26 = v25;
      v21 = v27;
      v29 = v28;
      goto LABEL_30;
    }

    v19 = v18;
    v3 = sub_20C5F94D4(0, &qword_281105768, 0x277CEE530);
    v20 = sub_20C64E110();

    if (!(v20 >> 62))
    {
      v5 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v5 != 0;
      if (v5 >= v21)
      {
        goto LABEL_20;
      }

      goto LABEL_52;
    }

    result = sub_20C64E2C0();
    if (result < 0)
    {
      goto LABEL_56;
    }

    v5 = result;
    v21 = result != 0;
    if (sub_20C64E2C0() >= v21)
    {
      break;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    v51 = sub_20C64E430();

    if (v51)
    {
      LODWORD(v5) = 1;
    }
  }

  if (sub_20C64E2C0() < v5)
  {
    __break(1u);
    goto LABEL_52;
  }

LABEL_20:
  if ((v20 & 0xC000000000000001) != 0)
  {

    if (v5 >= 2)
    {
      v22 = v21;
      do
      {
        v23 = v22 + 1;
        sub_20C64E260();
        v22 = v23;
      }

      while (v5 != v23);
    }
  }

  else
  {
  }

  if (v20 >> 62)
  {
    sub_20C64E2D0();
    v26 = v30;
    v21 = v31;
    v29 = v32;
  }

  else
  {
    v26 = (v20 & 0xFFFFFFFFFFFFFF8) + 32;
    v29 = 2 * v5;
  }

LABEL_30:
  v33 = (v29 >> 1) - v21;
  if (v29 >> 1 == v21)
  {
LABEL_31:
    result = swift_unknownObjectRelease();
    *v52 = v17;
    *(v52 + 8) = 1;
    return result;
  }

  if ((v29 >> 1) > v21)
  {
    v34 = *MEMORY[0x277CEE1F8];
    v35 = (v26 + 8 * v21);
    while (1)
    {
      v42 = *v35;
      v43 = [v42 type];
      if (!v43)
      {
        break;
      }

      v44 = v43;
      v45 = sub_20C64E050();
      v47 = v46;
      if (v45 == sub_20C64E050() && v47 == v48)
      {
      }

      else
      {
        v50 = sub_20C64E430();

        if ((v50 & 1) == 0)
        {
          break;
        }
      }

      v39 = *(v17 + 16);
      v38 = *(v17 + 24);
      v40 = v39 + 1;
      v36 = 0x80;
      if (v39 >= v38 >> 1)
      {
        v37 = v53;
LABEL_47:
        v17 = sub_20C5F8450((v38 > 1), v40, 1, v17);
        goto LABEL_35;
      }

      v37 = v53;
LABEL_35:

      *(v17 + 16) = v40;
      v41 = v17 + 24 * v39;
      *(v41 + 32) = v37;
      *(v41 + 40) = 1;
      *(v41 + 48) = v36;
      ++v35;
      if (!--v33)
      {
        goto LABEL_31;
      }
    }

    v36 = 0;
    v37 = 0;
    v39 = *(v17 + 16);
    v38 = *(v17 + 24);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      goto LABEL_47;
    }

    goto LABEL_35;
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_20C5F7834(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_20C64E2C0();
    if (v4)
    {
      v5 = v4;
      v6 = sub_20C5F89B0(v4, 0);
      sub_20C5F8CFC((v6 + 4), v5, a1);
      v8 = v7;

      result = v6;
      if (v8 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    result = MEMORY[0x277D84F90];
    goto LABEL_3;
  }

  result = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_3:
  v2 = (2 * *(result + 16)) | 1;
  return result;
}

uint64_t MarketingOfferTemplate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE958, &qword_20C6525A0);
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE960, &qword_20C6525A8);
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE968, &qword_20C6525B0);
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v25);
  v13 = &v20 - v12;
  v24 = *v1;
  v14 = *(v1 + 8);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5F8A38();
  sub_20C64E500();
  if (v14)
  {
    v29 = 1;
    sub_20C5F8A8C();
    v16 = v21;
    v17 = v25;
    sub_20C64E3B0();
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE980, &qword_20C6525B8);
    sub_20C5F8BDC(&qword_27C7CE988, sub_20C5F8AE0);
    v18 = v23;
    sub_20C64E410();
    (*(v22 + 8))(v16, v18);
  }

  else
  {
    v28 = 0;
    sub_20C5F8B34();
    v17 = v25;
    sub_20C64E3B0();
    v27 = v24;
    sub_20C5F8B88();
    sub_20C64E410();
    (*(v20 + 8))(v9, v6);
  }

  return (*(v10 + 8))(v13, v17);
}

uint64_t MarketingOfferTemplate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE9A8, &qword_20C6525C0);
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE9B0, &qword_20C6525C8);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE9B8, &unk_20C6525D0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35[-v15];
  v18 = a1[3];
  v17 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_20C5F8A38();
  v19 = v41;
  sub_20C64E4F0();
  if (!v19)
  {
    v20 = v40;
    v41 = v13;
    v21 = sub_20C64E3A0();
    v22 = (2 * *(v21 + 16)) | 1;
    v43 = v21;
    v44 = v21 + 32;
    v45 = 0;
    v46 = v22;
    v23 = sub_20C5DDAF0();
    if (v23 == 2 || v45 != v46 >> 1)
    {
      v26 = sub_20C64E290();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
      *v28 = &type metadata for MarketingOfferTemplate;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v41 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v23;
      if (v23)
      {
        LOBYTE(v47) = 1;
        sub_20C5F8A8C();
        v24 = v7;
        sub_20C64E320();
        v25 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE980, &qword_20C6525B8);
        sub_20C5F8BDC(&qword_27C7CE9C0, sub_20C5F8C54);
        v33 = v38;
        sub_20C64E390();
        (*(v39 + 8))(v24, v33);
        (*(v25 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v34 = v47;
      }

      else
      {
        LOBYTE(v47) = 0;
        sub_20C5F8B34();
        v31 = v11;
        sub_20C64E320();
        v32 = v41;
        sub_20C5F8CA8();
        sub_20C64E390();
        (*(v37 + 8))(v31, v8);
        (*(v32 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v34 = v47;
      }

      *v20 = v34;
      *(v20 + 8) = v36 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t MarketingOfferTemplate.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x20F301800](1);

    return sub_20C5E8328(a1, v3);
  }

  else
  {
    MEMORY[0x20F301800](0);
    return MEMORY[0x20F301800](v3);
  }
}

uint64_t MarketingOfferTemplate.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C64E4A0();
  if (v2)
  {
    MEMORY[0x20F301800](1);
    sub_20C5E8328(v4, v1);
  }

  else
  {
    MEMORY[0x20F301800](0);
    MEMORY[0x20F301800](v1);
  }

  return sub_20C64E4E0();
}

uint64_t sub_20C5F82E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C64E4A0();
  if (v2)
  {
    MEMORY[0x20F301800](1);
    sub_20C5E8328(v4, v1);
  }

  else
  {
    MEMORY[0x20F301800](0);
    MEMORY[0x20F301800](v1);
  }

  return sub_20C64E4E0();
}

uint64_t sub_20C5F835C(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x20F301800](1);

    return sub_20C5E8328(a1, v3);
  }

  else
  {
    MEMORY[0x20F301800](0);
    return MEMORY[0x20F301800](v3);
  }
}

uint64_t sub_20C5F83D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C64E4A0();
  if (v2)
  {
    MEMORY[0x20F301800](1);
    sub_20C5E8328(v4, v1);
  }

  else
  {
    MEMORY[0x20F301800](0);
    MEMORY[0x20F301800](v1);
  }

  return sub_20C64E4E0();
}

char *sub_20C5F8450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE950, &unk_20C652590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

size_t sub_20C5F8560(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA28, &qword_20C652A90);
  v10 = *(type metadata accessor for MarketingActionItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MarketingActionItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_20C5F87C8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_20C5F89B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA80, &unk_20C652AE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_20C5F8A38()
{
  result = qword_27C7CE970;
  if (!qword_27C7CE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE970);
  }

  return result;
}

unint64_t sub_20C5F8A8C()
{
  result = qword_27C7CE978;
  if (!qword_27C7CE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE978);
  }

  return result;
}

unint64_t sub_20C5F8AE0()
{
  result = qword_27C7CE990;
  if (!qword_27C7CE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE990);
  }

  return result;
}

unint64_t sub_20C5F8B34()
{
  result = qword_27C7CE998;
  if (!qword_27C7CE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE998);
  }

  return result;
}

unint64_t sub_20C5F8B88()
{
  result = qword_27C7CE9A0;
  if (!qword_27C7CE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9A0);
  }

  return result;
}

uint64_t sub_20C5F8BDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE980, &qword_20C6525B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C5F8C54()
{
  result = qword_27C7CE9C8;
  if (!qword_27C7CE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9C8);
  }

  return result;
}

unint64_t sub_20C5F8CA8()
{
  result = qword_27C7CE9D0;
  if (!qword_27C7CE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9D0);
  }

  return result;
}

uint64_t sub_20C5F8CFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C64E2C0();
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
      result = sub_20C64E2C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20C5F9340();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA70, &qword_20C652AD8);
            v9 = sub_20C6188E0(v13, i, a3);
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
        sub_20C5F94D4(0, &qword_281105768, 0x277CEE530);
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

BOOL _s16FitnessMarketing0B13OfferTemplateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3)
  {
    v6 = *a1;
    if (*(a2 + 8))
    {
      v7 = sub_20C5F6E10(v6, *a2);
      sub_20C5F9328(v4, 1);
      sub_20C5F9328(v2, 1);
      sub_20C5F9334(v2, 1);
      sub_20C5F9334(v4, 1);
      return v7 & 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    sub_20C5F9334(*a1, 0);
    sub_20C5F9334(v4, 0);
    return v4 == v2;
  }

  sub_20C5F9328(v4, v5);
  sub_20C5F9334(v2, v3);
  sub_20C5F9334(v4, v5);
  return 0;
}

unint64_t sub_20C5F8F6C()
{
  result = qword_27C7CE9D8;
  if (!qword_27C7CE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9D8);
  }

  return result;
}

unint64_t sub_20C5F9010()
{
  result = qword_27C7CE9E0;
  if (!qword_27C7CE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9E0);
  }

  return result;
}

unint64_t sub_20C5F9068()
{
  result = qword_27C7CE9E8;
  if (!qword_27C7CE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9E8);
  }

  return result;
}

unint64_t sub_20C5F90C0()
{
  result = qword_27C7CE9F0;
  if (!qword_27C7CE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9F0);
  }

  return result;
}

unint64_t sub_20C5F9118()
{
  result = qword_27C7CE9F8;
  if (!qword_27C7CE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9F8);
  }

  return result;
}

unint64_t sub_20C5F9170()
{
  result = qword_27C7CEA00;
  if (!qword_27C7CEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA00);
  }

  return result;
}

unint64_t sub_20C5F91C8()
{
  result = qword_27C7CEA08;
  if (!qword_27C7CEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA08);
  }

  return result;
}

unint64_t sub_20C5F9220()
{
  result = qword_27C7CEA10;
  if (!qword_27C7CEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA10);
  }

  return result;
}

unint64_t sub_20C5F9278()
{
  result = qword_27C7CEA18;
  if (!qword_27C7CEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA18);
  }

  return result;
}

unint64_t sub_20C5F92D0()
{
  result = qword_27C7CEA20;
  if (!qword_27C7CEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA20);
  }

  return result;
}

uint64_t sub_20C5F9328(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_20C5F9334(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_20C5F9340()
{
  result = qword_27C7CEA78;
  if (!qword_27C7CEA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEA70, &qword_20C652AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA78);
  }

  return result;
}

uint64_t sub_20C5F93A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C5F940C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA88, &unk_20C652AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5F9474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C5F94D4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t MarketingOfferTemplateParserType.makeParser(template:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for MarketingOfferTemplateDefaultParser();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_20C5F9328(v1, v2);
  return v3;
}

uint64_t TVAudioLanguageEngagementSheetView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_20C5E0270;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t TVAudioLanguageEngagementSheetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA90, &qword_20C652B00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA98, &qword_20C652B08);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEAA0, &qword_20C652B10);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *v1;
  v17 = *(v1 + 8);
  v18 = *(v1 + 16);
  sub_20C5F984C(*v1, v17, v18, v5);
  sub_20C64DE00();
  sub_20C64D330();
  sub_20C5E5658(v5, v10, &qword_27C7CEA90, &qword_20C652B00);
  v19 = &v10[*(v7 + 44)];
  v20 = v33;
  *(v19 + 4) = v32;
  *(v19 + 5) = v20;
  *(v19 + 6) = v34;
  v21 = v29;
  *v19 = v28;
  *(v19 + 1) = v21;
  v22 = v31;
  *(v19 + 2) = v30;
  *(v19 + 3) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  *(v23 + 24) = v17;
  *(v23 + 32) = v18;
  sub_20C5E5658(v10, v15, &qword_27C7CEA98, &qword_20C652B08);
  v24 = &v15[*(v12 + 44)];
  *v24 = sub_20C5FC5D8;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;
  sub_20C5E5658(v15, v27, &qword_27C7CEAA0, &qword_20C652B10);
  return sub_20C5E3070();
}

uint64_t sub_20C5F984C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB10, &unk_20C652C40);
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE210, &qword_20C64FF40);
  v51 = *(v55 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v55);
  v50 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v15 = type metadata accessor for AudioLanguageEngagementSheet();
  v45 = *(v15 - 8);
  v16 = *(v45 + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v46 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v52 = &v44 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  v47 = a3;
  v48 = a1;
  v49 = a2;
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    v21 = v52;
    sub_20C5E5138(v14, v52);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v14, &qword_27C7CE0F8, &qword_20C64FC10);
LABEL_10:
    v41 = v50;
    sub_20C64D240();
    v42 = v51;
    v43 = v55;
    (*(v51 + 16))(v53, v41, v55);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEAD8, &qword_20C652C18);
    sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40);
    sub_20C5FC880();
    sub_20C64D550();
    return (*(v42 + 8))(v41, v43);
  }

  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE248, &qword_20C64FF90) + 48);
  v21 = v52;
  sub_20C5E5138(v14, v52);
  v22 = sub_20C64CF30();
  (*(*(v22 - 8) + 8))(&v14[v20], v22);
LABEL_6:
  v23 = v53;
  v24 = v46;
  sub_20C5ED068(v21, v46);
  v25 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v26 = swift_allocObject();
  sub_20C5E5138(v24, v26 + v25);
  v27 = v26 + ((v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8);
  v28 = v49;
  *v27 = v48;
  *(v27 + 8) = v28;
  *(v27 + 16) = v47 & 1;
  sub_20C5E3070();
  v29 = sub_20C64DDE0();
  v31 = v30;
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v32 = qword_281109B60;
  v33 = sub_20C64DCE0();
  sub_20C64DBF0();
  v34 = sub_20C64DC20();

  v35 = sub_20C64D7A0();
  v36 = sub_20C64D2F0();
  v37 = sub_20C64D7A0();
  *&v58 = v33;
  *(&v58 + 1) = v34;
  LOBYTE(v59) = v35;
  v60 = 0;
  LOWORD(v61) = 257;
  *(&v61 + 1) = v36;
  LOBYTE(v62) = v37;
  *(&v62 + 1) = v29;
  v63 = v31;
  v76 = v31;
  v74 = v61;
  v75 = v62;
  v72 = v58;
  v73 = v59;
  v64[0] = v33;
  v64[1] = v34;
  v65 = v35;
  v66 = 0;
  v67 = 257;
  v68 = v36;
  v69 = v37;
  v70 = v29;
  v71 = v31;
  sub_20C5E574C(&v58, &v57, &qword_27C7CEB08, &unk_20C652C30);
  sub_20C5DBFC4(v64, &qword_27C7CEB08, &unk_20C652C30);
  *v23 = sub_20C5FC9E8;
  *(v23 + 1) = v26;
  v38 = v75;
  *(v23 + 3) = v74;
  *(v23 + 4) = v38;
  *(v23 + 10) = v76;
  v39 = v73;
  *(v23 + 1) = v72;
  *(v23 + 2) = v39;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEAD8, &qword_20C652C18);
  sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40);
  sub_20C5FC880();
  sub_20C64D550();
  return sub_20C5FCA9C(v52, type metadata accessor for AudioLanguageEngagementSheet);
}

__n128 sub_20C5F9EE0@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(void, void, void)@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB18, &qword_20C652C78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v19 - v12;
  *v13 = sub_20C64D4D0();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB20, &qword_20C652C80);
  sub_20C5FA060(a1, a2, a3, a4 & 1, &v13[*(v14 + 44)]);
  sub_20C64DE00();
  sub_20C64D330();
  sub_20C5E5658(v13, a5, &qword_27C7CEB18, &qword_20C652C78);
  v15 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB28, &qword_20C652C88) + 36);
  v16 = v19[5];
  *(v15 + 64) = v19[4];
  *(v15 + 80) = v16;
  *(v15 + 96) = v19[6];
  v17 = v19[1];
  *v15 = v19[0];
  *(v15 + 16) = v17;
  result = v19[3];
  *(v15 + 32) = v19[2];
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_20C5FA060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v260 = a4;
  v261 = a3;
  v259 = a1;
  v235 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB30, &qword_20C652C90);
  v236 = *(v6 - 8);
  v237 = v6;
  v7 = *(v236 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v257 = &v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v256 = &v208 - v10;
  v11 = sub_20C64D5E0();
  v248 = *(v11 - 8);
  v249 = v11;
  v12 = *(v248 + 64);
  MEMORY[0x28223BE20](v11);
  v247 = &v208 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C64DBE0();
  v215 = *(v14 - 8);
  v216 = v14;
  v15 = *(v215 + 64);
  MEMORY[0x28223BE20](v14);
  v214 = &v208 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_20C64DC80();
  v246 = *(v255 - 8);
  v17 = *(v246 + 64);
  v18 = MEMORY[0x28223BE20](v255);
  v213 = &v208 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v245 = &v208 - v20;
  v253 = sub_20C64D490();
  v242 = *(v253 - 8);
  v21 = *(v242 + 64);
  MEMORY[0x28223BE20](v253);
  v240 = &v208 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB38, &qword_20C652C98);
  v239 = *(v241 - 8);
  v23 = *(v239 + 64);
  MEMORY[0x28223BE20](v241);
  v238 = &v208 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB40, &qword_20C652CA0);
  v243 = *(v25 - 8);
  v244 = v25;
  v26 = *(v243 + 64);
  MEMORY[0x28223BE20](v25);
  v252 = &v208 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB48, &qword_20C652CA8);
  v232 = *(v28 - 8);
  v233 = v28;
  v29 = *(v232 + 64);
  MEMORY[0x28223BE20](v28);
  v212 = &v208 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB50, &qword_20C652CB0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v234 = &v208 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v262 = &v208 - v35;
  v36 = sub_20C64D880();
  v227 = *(v36 - 8);
  v228 = v36;
  v37 = *(v227 + 64);
  MEMORY[0x28223BE20](v36);
  v225 = &v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C64CFB0();
  v223 = *(v39 - 8);
  v224 = v39;
  v40 = *(v223 + 64);
  MEMORY[0x28223BE20](v39);
  v222 = &v208 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C64CFE0();
  v220 = *(v42 - 8);
  v221 = v42;
  v43 = *(v220 + 64);
  MEMORY[0x28223BE20](v42);
  v219 = &v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v230 = &v208 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v218 = &v208 - v50;
  MEMORY[0x28223BE20](v49);
  v52 = &v208 - v51;
  v53 = sub_20C64CE50();
  v54 = *(v53 - 8);
  v55 = v54[8];
  v56 = MEMORY[0x28223BE20](v53);
  v231 = &v208 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v226 = &v208 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v62 = &v208 - v61;
  MEMORY[0x28223BE20](v60);
  v64 = &v208 - v63;
  v217 = type metadata accessor for AudioLanguageEngagementSheet();
  sub_20C5E574C(v259 + *(v217 + 20), v52, &qword_27C7CE2E0, &qword_20C650FD0);
  v250 = v54[6];
  v65 = v250(v52, 1, v53);
  v254 = a2;
  v251 = v54;
  v258 = v53;
  v229 = v54 + 6;
  v211 = v62;
  if (v65 == 1)
  {
    v66 = v54;
    sub_20C5DBFC4(v52, &qword_27C7CE2E0, &qword_20C650FD0);
    sub_20C5D57D8(&v311);
  }

  else
  {
    v67 = v54[4];
    v210 = v64;
    v67(v64, v52, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
    sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
    sub_20C64D220();
    swift_getKeyPath();
    v68 = v219;
    sub_20C64DF30();

    sub_20C64D220();
    swift_getKeyPath();
    v69 = v222;
    sub_20C64DF30();

    sub_20C644E78(v69, v62);
    (*(v223 + 8))(v69, v224);
    (*(v220 + 8))(v68, v221);
    v70 = sub_20C64D960();
    v72 = v71;
    v74 = v73;
    sub_20C64D820();
    sub_20C64D810();

    v76 = v227;
    v75 = v228;
    v77 = v225;
    (*(v227 + 104))(v225, *MEMORY[0x277CE0A10], v228);
    sub_20C64D8A0();

    (*(v76 + 8))(v77, v75);
    v78 = sub_20C64D950();
    v80 = v79;
    LOBYTE(v77) = v81;

    sub_20C5E56C0(v70, v72, v74 & 1);

    *&v311 = sub_20C64DC10();
    v209 = sub_20C64D940();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = v77 & 1;
    v89 = v251;
    sub_20C5E56C0(v78, v80, v88);

    KeyPath = swift_getKeyPath();
    sub_20C64DE00();
    sub_20C64D330();
    *(&v263[3] + 7) = v310[5];
    *(&v263[4] + 7) = v310[6];
    *(&v263[5] + 7) = v310[7];
    *(&v263[6] + 7) = v310[8];
    *(v263 + 7) = v310[2];
    *(&v263[1] + 7) = v310[3];
    LOBYTE(v80) = v85 & 1;
    LOBYTE(v292[0]) = v85 & 1;
    *(&v263[2] + 7) = v310[4];
    v91 = sub_20C64D7C0();
    sub_20C64D1A0();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v66 = v89;
    (v89[1])(v210, v258);
    *(&v308[4] + 9) = v263[4];
    *(&v308[5] + 9) = v263[5];
    *(&v308[6] + 9) = v263[6];
    *(v308 + 9) = v263[0];
    *(&v308[1] + 9) = v263[1];
    *(&v308[2] + 9) = v263[2];
    LOBYTE(v294) = 0;
    *&v306 = v209;
    *(&v306 + 1) = v83;
    LOBYTE(v307) = v80;
    *(&v307 + 1) = v87;
    *&v308[0] = KeyPath;
    BYTE8(v308[0]) = 1;
    *(&v308[7] + 1) = *(&v263[6] + 15);
    *(&v308[3] + 9) = v263[3];
    LOBYTE(v309) = v91;
    v53 = v258;
    *(&v309 + 1) = v93;
    *&v310[0] = v95;
    *(&v310[0] + 1) = v97;
    *&v310[1] = v99;
    BYTE8(v310[1]) = 0;
    nullsub_1(&v306);
    v320 = v308[7];
    v321 = v309;
    v322[0] = v310[0];
    *(v322 + 9) = *(v310 + 9);
    v317 = v308[4];
    v318 = v308[5];
    v319 = v308[6];
    v313 = v308[0];
    v314 = v308[1];
    v315 = v308[2];
    v316 = v308[3];
    v311 = v306;
    v312 = v307;
  }

  v100 = v218;
  sub_20C5E574C(v259 + *(v217 + 24), v218, &qword_27C7CE2E0, &qword_20C650FD0);
  if (v250(v100, 1, v53) == 1)
  {
    sub_20C5DBFC4(v100, &qword_27C7CE2E0, &qword_20C650FD0);
    sub_20C5D57D8(&v306);
  }

  else
  {
    (v66[4])(v226, v100, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
    sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
    sub_20C64D220();
    swift_getKeyPath();
    v101 = v219;
    sub_20C64DF30();

    sub_20C64D220();
    swift_getKeyPath();
    v102 = v222;
    sub_20C64DF30();

    sub_20C644E78(v102, v211);
    (*(v223 + 8))(v102, v224);
    (*(v220 + 8))(v101, v221);
    v103 = sub_20C64D960();
    v105 = v104;
    v107 = v106;
    sub_20C64D800();
    v109 = v227;
    v108 = v228;
    v110 = v225;
    (*(v227 + 104))(v225, *MEMORY[0x277CE0A10], v228);
    sub_20C64D8A0();

    (*(v109 + 8))(v110, v108);
    v111 = sub_20C64D950();
    v113 = v112;
    LOBYTE(v109) = v114;

    sub_20C5E56C0(v103, v105, v107 & 1);

    LODWORD(v306) = sub_20C64D5C0();
    v115 = sub_20C64D940();
    v117 = v116;
    v119 = v118;
    v121 = v120;
    sub_20C5E56C0(v111, v113, v109 & 1);

    v122 = swift_getKeyPath();
    v123 = sub_20C64D5C0();
    sub_20C64DE00();
    sub_20C64D330();
    LOBYTE(v113) = v119 & 1;
    LOBYTE(v290[0]) = v119 & 1;
    v124 = sub_20C64D7C0();
    sub_20C64D1A0();
    v126 = v125;
    v128 = v127;
    v130 = v129;
    v132 = v131;
    (v251[1])(v226, v258);
    LOBYTE(v292[0]) = 0;
    *&v294 = v115;
    *(&v294 + 1) = v117;
    LOBYTE(v295) = v113;
    *(&v295 + 1) = v121;
    *&v296 = v122;
    BYTE8(v296) = 1;
    HIDWORD(v296) = v123;
    v301 = *(&v263[11] + 8);
    v302 = *(&v263[12] + 8);
    v303 = *(&v263[13] + 8);
    v297 = *(&v263[7] + 8);
    v298 = *(&v263[8] + 8);
    v299 = *(&v263[9] + 8);
    v300 = *(&v263[10] + 8);
    LOBYTE(v304) = v124;
    *(&v304 + 1) = v126;
    *&v305[0] = v128;
    *(&v305[0] + 1) = v130;
    *&v305[1] = v132;
    BYTE8(v305[1]) = 0;
    nullsub_1(&v294);
    v309 = v304;
    v310[0] = v305[0];
    *(v310 + 9) = *(v305 + 9);
    v308[4] = v300;
    v308[5] = v301;
    v308[6] = v302;
    v308[7] = v303;
    v308[0] = v296;
    v308[1] = v297;
    v308[2] = v298;
    v308[3] = v299;
    v53 = v258;
    v306 = v294;
    v307 = v295;
  }

  v133 = v262;
  v134 = v253;
  v135 = v230;
  sub_20C5E574C(v259, v230, &qword_27C7CE2E0, &qword_20C650FD0);
  if (v250(v135, 1, v53) == 1)
  {
    sub_20C5DBFC4(v135, &qword_27C7CE2E0, &qword_20C650FD0);
    (*(v232 + 56))(v133, 1, 1, v233);
    v136 = v261;
    v137 = v254;
    v138 = v260;
    v139 = v238;
  }

  else
  {
    (v251[4])();
    v140 = swift_allocObject();
    v141 = v254;
    v142 = v261;
    *(v140 + 16) = v254;
    *(v140 + 24) = v142;
    *(v140 + 32) = v260 & 1;
    MEMORY[0x28223BE20](v141);
    sub_20C5E3070();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE308, &qword_20C650040);
    sub_20C5E541C();
    v143 = v238;
    sub_20C64DD40();
    v144 = v240;
    sub_20C64D480();
    v259 = sub_20C5E5558(&qword_27C7CEB58, &qword_27C7CEB38, &qword_20C652C98);
    v145 = sub_20C5FCB2C(&qword_281105998, MEMORY[0x277CDDE40]);
    v146 = v241;
    sub_20C64DA40();
    (*(v242 + 8))(v144, v134);
    (*(v239 + 8))(v143, v146);
    v147 = v213;
    sub_20C64DC60();
    (*(v215 + 104))(v214, *MEMORY[0x277CE0EE0], v216);
    sub_20C64DC30();
    v148 = v245;
    sub_20C64DC50();

    v149 = v134;
    v250 = *(v246 + 8);
    (v250)(v147, v255);
    v150 = v247;
    sub_20C64D5D0();
    *&v294 = v146;
    *(&v294 + 1) = v149;
    *&v295 = v259;
    *(&v295 + 1) = v145;
    v136 = v261;
    swift_getOpaqueTypeConformance2();
    sub_20C5FCB2C(&qword_27C7CE320, MEMORY[0x277CE0638]);
    v151 = v212;
    v152 = v244;
    v153 = v249;
    v154 = v252;
    sub_20C64DA60();
    v155 = v153;
    v137 = v254;
    (*(v248 + 8))(v150, v155);
    v156 = v148;
    v138 = v260;
    (v250)(v156, v255);
    (*(v243 + 8))(v154, v152);
    LOBYTE(v154) = sub_20C64D7C0();
    sub_20C64D1A0();
    v157 = v233;
    v158 = &v151[*(v233 + 36)];
    *v158 = v154;
    *(v158 + 1) = v159;
    *(v158 + 2) = v160;
    *(v158 + 3) = v161;
    *(v158 + 4) = v162;
    v158[40] = 0;
    v163 = v151;
    v139 = v238;
    v164 = v262;
    sub_20C5E5658(v163, v262, &qword_27C7CEB48, &qword_20C652CA8);
    (*(v232 + 56))(v164, 0, 1, v157);
    (v251[1])(v231, v258);
  }

  v165 = swift_allocObject();
  *(v165 + 16) = v137;
  *(v165 + 24) = v136;
  *(v165 + 32) = v138 & 1;
  MEMORY[0x28223BE20](v165);
  sub_20C5E3070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE308, &qword_20C650040);
  sub_20C5E541C();
  sub_20C64DD40();
  v166 = v240;
  sub_20C64D480();
  v167 = sub_20C5E5558(&qword_27C7CEB58, &qword_27C7CEB38, &qword_20C652C98);
  v168 = sub_20C5FCB2C(&qword_281105998, MEMORY[0x277CDDE40]);
  v169 = v252;
  v170 = v253;
  v171 = v241;
  sub_20C64DA40();
  (*(v242 + 8))(v166, v170);
  (*(v239 + 8))(v139, v171);
  v172 = v245;
  sub_20C64DC60();
  v173 = v247;
  sub_20C64D5D0();
  *&v294 = v171;
  *(&v294 + 1) = v170;
  *&v295 = v167;
  *(&v295 + 1) = v168;
  swift_getOpaqueTypeConformance2();
  sub_20C5FCB2C(&qword_27C7CE320, MEMORY[0x277CE0638]);
  v174 = v256;
  v175 = v244;
  v176 = v249;
  sub_20C64DA60();
  (*(v248 + 8))(v173, v176);
  (*(v246 + 8))(v172, v255);
  (*(v243 + 8))(v169, v175);
  v285 = v320;
  v286 = v321;
  v287[0] = v322[0];
  *(v287 + 9) = *(v322 + 9);
  v282 = v317;
  v283 = v318;
  v284 = v319;
  v278 = v313;
  v279 = v314;
  v280 = v315;
  v281 = v316;
  v276 = v311;
  v277 = v312;
  v273 = v308[7];
  v274 = v309;
  v275[0] = v310[0];
  *(v275 + 9) = *(v310 + 9);
  v270 = v308[4];
  v271 = v308[5];
  v272 = v308[6];
  v266 = v308[0];
  v267 = v308[1];
  v268 = v308[2];
  v269 = v308[3];
  v264 = v306;
  v265 = v307;
  v177 = v234;
  sub_20C5D57FC(v262, v234);
  v178 = v236;
  v179 = v237;
  v261 = *(v236 + 16);
  v261(v257, v174, v237);
  v180 = v285;
  v181 = v284;
  v288[9] = v285;
  v288[10] = v286;
  v289[0] = v287[0];
  *(v289 + 9) = *(v287 + 9);
  v182 = v281;
  v288[6] = v282;
  v183 = v282;
  v288[7] = v283;
  v184 = v283;
  v288[8] = v284;
  v185 = v277;
  v288[2] = v278;
  v186 = v278;
  v288[3] = v279;
  v187 = v279;
  v288[4] = v280;
  v188 = v280;
  v288[5] = v281;
  v288[0] = v276;
  v189 = v276;
  v288[1] = v277;
  v190 = v287[0];
  v191 = v235;
  v235[10] = v286;
  v191[11] = v190;
  *(v191 + 185) = *(v287 + 9);
  v191[6] = v183;
  v191[7] = v184;
  v191[8] = v181;
  v191[9] = v180;
  v191[2] = v186;
  v191[3] = v187;
  v191[4] = v188;
  v191[5] = v182;
  *v191 = v189;
  v191[1] = v185;
  v193 = v272;
  v290[9] = v273;
  v192 = v273;
  v290[10] = v274;
  v291[0] = v275[0];
  *(v291 + 9) = *(v275 + 9);
  v194 = v269;
  v290[6] = v270;
  v195 = v270;
  v290[7] = v271;
  v196 = v271;
  v290[8] = v272;
  v197 = v265;
  v290[2] = v266;
  v198 = v266;
  v290[3] = v267;
  v199 = v267;
  v290[4] = v268;
  v200 = v268;
  v290[5] = v269;
  v290[0] = v264;
  v201 = v264;
  v290[1] = v265;
  v202 = v275[0];
  v191[23] = v274;
  v191[24] = v202;
  *(v191 + 393) = *(v275 + 9);
  v191[19] = v195;
  v191[20] = v196;
  v191[21] = v193;
  v191[22] = v192;
  v191[15] = v198;
  v191[16] = v199;
  v191[17] = v200;
  v191[18] = v194;
  v191[13] = v201;
  v191[14] = v197;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB60, &qword_20C652CB8);
  sub_20C5D57FC(v177, v191 + *(v203 + 64));
  v204 = v191 + *(v203 + 80);
  v205 = v257;
  v261(v204, v257, v179);
  sub_20C5E574C(v288, &v294, &qword_27C7CEB68, &qword_20C652CC0);
  sub_20C5E574C(v290, &v294, &qword_27C7CEB70, &qword_20C652CC8);
  v206 = *(v178 + 8);
  v206(v256, v179);
  sub_20C5D586C(v262);
  v206(v205, v179);
  sub_20C5D586C(v177);
  v292[9] = v273;
  v292[10] = v274;
  v293[0] = v275[0];
  *(v293 + 9) = *(v275 + 9);
  v292[6] = v270;
  v292[7] = v271;
  v292[8] = v272;
  v292[2] = v266;
  v292[3] = v267;
  v292[4] = v268;
  v292[5] = v269;
  v292[0] = v264;
  v292[1] = v265;
  sub_20C5DBFC4(v292, &qword_27C7CEB70, &qword_20C652CC8);
  v304 = v286;
  v305[0] = v287[0];
  *(v305 + 9) = *(v287 + 9);
  v300 = v282;
  v301 = v283;
  v302 = v284;
  v303 = v285;
  v296 = v278;
  v297 = v279;
  v298 = v280;
  v299 = v281;
  v294 = v276;
  v295 = v277;
  return sub_20C5DBFC4(&v294, &qword_27C7CEB68, &qword_20C652CC0);
}

__n128 sub_20C5FBC3C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a2;
  v40 = a1;
  v4 = sub_20C64D880();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C64CFB0();
  v38 = *(v39 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20C64CFE0();
  v36 = *(v37 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v37);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C64CE50();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C644E78(v9, v34);
  (*(v38 + 8))(v9, v39);
  (*(v36 + 8))(v12, v37);
  v16 = sub_20C64D960();
  v18 = v17;
  v20 = v19;
  sub_20C64D800();
  v22 = v41;
  v21 = v42;
  v23 = v43;
  (*(v42 + 104))(v41, *MEMORY[0x277CE0A10], v43);
  sub_20C64D8A0();

  (*(v21 + 8))(v22, v23);
  v24 = sub_20C64D950();
  v26 = v25;
  LOBYTE(v21) = v27;
  v29 = v28;

  sub_20C5E56C0(v16, v18, v20 & 1);

  sub_20C64DE00();
  sub_20C64D330();
  *a3 = v24;
  *(a3 + 8) = v26;
  *(a3 + 16) = v21 & 1;
  *(a3 + 24) = v29;
  v30 = v49;
  *(a3 + 96) = v48;
  *(a3 + 112) = v30;
  *(a3 + 128) = v50;
  v31 = v45;
  *(a3 + 32) = v44;
  *(a3 + 48) = v31;
  result = v47;
  *(a3 + 64) = v46;
  *(a3 + 80) = result;
  return result;
}

uint64_t sub_20C5FC0F0()
{
  v0 = type metadata accessor for AudioLanguageEngagementSheetAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  sub_20C64D220();
  swift_storeEnumTagMultiPayload();
  sub_20C64DF40();

  return sub_20C5FCA9C(v3, type metadata accessor for AudioLanguageEngagementSheetAction);
}

__n128 sub_20C5FC22C@<Q0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v29[1] = a2;
  v30 = a1;
  v31 = sub_20C64D880();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v31);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C64CFE0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_20C64E030();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v12 = qword_281109B60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50);
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  v13 = sub_20C64D8D0();
  v15 = v14;
  v17 = v16;
  sub_20C64D800();
  v18 = v31;
  (*(v4 + 104))(v7, *MEMORY[0x277CE0A10], v31);
  sub_20C64D8A0();

  (*(v4 + 8))(v7, v18);
  v19 = sub_20C64D950();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_20C5E56C0(v13, v15, v17 & 1);

  sub_20C64DE00();
  sub_20C64D330();
  *a3 = v19;
  *(a3 + 8) = v21;
  *(a3 + 16) = v23 & 1;
  *(a3 + 24) = v25;
  v26 = v37;
  *(a3 + 96) = v36;
  *(a3 + 112) = v26;
  *(a3 + 128) = v38;
  v27 = v33;
  *(a3 + 32) = v32;
  *(a3 + 48) = v27;
  result = v35;
  *(a3 + 64) = v34;
  *(a3 + 80) = result;
  return result;
}

uint64_t sub_20C5FC5D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_20C5FC0F0();
}

unint64_t sub_20C5FC62C()
{
  result = qword_27C7CEAA8;
  if (!qword_27C7CEAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEAA0, &qword_20C652B10);
    sub_20C5FC6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAA8);
  }

  return result;
}

unint64_t sub_20C5FC6B8()
{
  result = qword_27C7CEAB0;
  if (!qword_27C7CEAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEA98, &qword_20C652B08);
    sub_20C5FC744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAB0);
  }

  return result;
}

unint64_t sub_20C5FC744()
{
  result = qword_27C7CEAB8;
  if (!qword_27C7CEAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEA90, &qword_20C652B00);
    sub_20C5FC7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAB8);
  }

  return result;
}

unint64_t sub_20C5FC7C8()
{
  result = qword_27C7CEAC0;
  if (!qword_27C7CEAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEAC8, &unk_20C652C08);
    sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40);
    sub_20C5FC880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAC0);
  }

  return result;
}

unint64_t sub_20C5FC880()
{
  result = qword_27C7CEAD0;
  if (!qword_27C7CEAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEAD8, &qword_20C652C18);
    sub_20C5FC938();
    sub_20C5E5558(&qword_27C7CEB00, &qword_27C7CEB08, &unk_20C652C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAD0);
  }

  return result;
}

unint64_t sub_20C5FC938()
{
  result = qword_27C7CEAE0;
  if (!qword_27C7CEAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEAE8, &qword_20C652C20);
    sub_20C5E5558(&qword_27C7CEAF0, &qword_27C7CEAF8, &qword_20C652C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAE0);
  }

  return result;
}

double sub_20C5FC9E8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioLanguageEngagementSheet() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  *&result = sub_20C5F9EE0(v1 + v4, v6, v7, v8, a1).n128_u64[0];
  return result;
}

uint64_t sub_20C5FCA9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C5FCAFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_20C5FC0F0();
}

double sub_20C5FCB20@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_20C5FC22C(*(v1 + 24), *(v1 + 32), a1).n128_u64[0];
  return result;
}

uint64_t sub_20C5FCB2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C5FCB74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_20C5FC0F0();
}

double sub_20C5FCB98@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  *&result = sub_20C5FBC3C(*(v1 + 16), *(v1 + 32), a1).n128_u64[0];
  return result;
}

uint64_t sub_20C5FCBA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20C64D3F0();
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16FitnessMarketing0B5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_20C5FCC34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C5FCC9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *sub_20C5FCCF0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_20C5FCD30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C64CF10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v58 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = type metadata accessor for MarketingAction();
  v60 = *(v17 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 type];
  if (v21)
  {
    v22 = v21;
    v57 = v5;
    v59 = a2;
    v23 = *MEMORY[0x277CEE1F8];
    v24 = sub_20C64E050();
    v26 = v25;
    if (v24 == sub_20C64E050() && v26 == v27)
    {
    }

    else
    {
      v56 = v4;
      v29 = sub_20C64E430();

      if ((v29 & 1) == 0)
      {
        v30 = *MEMORY[0x277CEE200];
        v31 = sub_20C64E050();
        v33 = v32;
        if (v31 == sub_20C64E050() && v33 == v34)
        {

          goto LABEL_15;
        }

        v37 = sub_20C64E430();

        if (v37)
        {
LABEL_15:
          v38 = [a1 url];
          if (v38)
          {
            v39 = v38;
            sub_20C64CEF0();

            v40 = v56;
            v41 = *(v57 + 32);
            v41(v16, v14, v56);
            v41(v20, v16, v40);
            goto LABEL_13;
          }

          goto LABEL_24;
        }

        v42 = *MEMORY[0x277CEE208];
        v43 = sub_20C64E050();
        v45 = v44;
        if (v43 == sub_20C64E050() && v45 == v46)
        {

          goto LABEL_21;
        }

        v47 = sub_20C64E430();

        if (v47)
        {
LABEL_21:
          v48 = [a1 url];
          if (v48)
          {
            v49 = v58;
            v50 = v48;
            sub_20C64CEF0();

            v51 = v56;
            v52 = *(v57 + 32);
            v52(v11, v49, v56);
            v52(v20, v11, v51);
            goto LABEL_13;
          }

LABEL_24:
          v53 = a1;
          a1 = v22;
          goto LABEL_25;
        }

LABEL_23:
        v53 = v22;
LABEL_25:

        a2 = v59;
        goto LABEL_26;
      }
    }

    if ([a1 buyParams])
    {
      sub_20C5D42EC();
      sub_20C64D0D0();

LABEL_13:
      swift_storeEnumTagMultiPayload();
      v35 = v59;
      sub_20C5D95DC(v20, v59);
      return (*(v60 + 56))(v35, 0, 1, v17);
    }

    goto LABEL_23;
  }

LABEL_26:

  v54 = *(v60 + 56);

  return v54(a2, 1, 1, v17);
}

uint64_t sub_20C5FD250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D61726170 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C5FD2D4(uint64_t a1)
{
  v2 = sub_20C5FEDD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5FD310(uint64_t a1)
{
  v2 = sub_20C5FEDD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5FD358(uint64_t a1)
{
  v2 = sub_20C5FED84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5FD394(uint64_t a1)
{
  v2 = sub_20C5FED84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5FD3D0()
{
  v1 = 0x4C72656972726163;
  if (*v0 != 1)
  {
    v1 = 1802398060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7959906;
  }
}

uint64_t sub_20C5FD424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C5FF3BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C5FD44C(uint64_t a1)
{
  v2 = sub_20C5FECDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5FD488(uint64_t a1)
{
  v2 = sub_20C5FECDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5FD4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C5FD544(uint64_t a1)
{
  v2 = sub_20C5FED30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5FD580(uint64_t a1)
{
  v2 = sub_20C5FED30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB78, &qword_20C652DE0);
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v51 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB80, &qword_20C652DE8);
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v42 - v7;
  v8 = sub_20C64CF10();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB88, &unk_20C652DF0);
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v43 = *(v17 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v21 = type metadata accessor for MarketingAction();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB90, &qword_20C652E00);
  v57 = *(v25 - 8);
  v58 = v25;
  v26 = *(v57 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5FECDC();
  sub_20C64E500();
  sub_20C5DFB04(v56, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v32 = v54;
    v31 = v55;
    if (EnumCaseMultiPayload == 1)
    {
      v33 = v47;
      (*(v54 + 32))(v47, v24, v55);
      v60 = 1;
      sub_20C5FED84();
      v34 = v48;
      v35 = v58;
      sub_20C64E3B0();
      sub_20C5FEEC4(&qword_27C7CE7D0, MEMORY[0x277CC9260]);
      v36 = v50;
      sub_20C64E410();
      v37 = v49;
    }

    else
    {
      v33 = v46;
      (*(v54 + 32))(v46, v24, v55);
      v61 = 2;
      sub_20C5FED30();
      v34 = v51;
      v35 = v58;
      sub_20C64E3B0();
      sub_20C5FEEC4(&qword_27C7CE7D0, MEMORY[0x277CC9260]);
      v36 = v53;
      sub_20C64E410();
      v37 = v52;
    }

    (*(v37 + 8))(v34, v36);
    (*(v32 + 8))(v33, v31);
    return (*(v57 + 8))(v28, v35);
  }

  else
  {
    v38 = v43;
    (*(v43 + 32))(v20, v24, v17);
    v59 = 0;
    sub_20C5FEDD8();
    v39 = v58;
    sub_20C64E3B0();
    sub_20C5FEE2C(&qword_27C7CEBB8);
    v40 = v45;
    sub_20C64E410();
    (*(v44 + 8))(v16, v40);
    (*(v38 + 8))(v20, v17);
    return (*(v57 + 8))(v28, v39);
  }
}

uint64_t MarketingAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEBC0, &qword_20C652E08);
  v69 = *(v66 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  v70 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEBC8, &qword_20C652E10);
  v6 = *(v5 - 8);
  v67 = v5;
  v68 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v72 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEBD0, &qword_20C652E18);
  v10 = *(v9 - 8);
  v64 = v9;
  v65 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v71 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEBD8, &unk_20C652E20);
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = *(v74 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - v15;
  v17 = type metadata accessor for MarketingAction();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v61 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v61 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v61 - v28;
  v31 = a1[3];
  v30 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_20C5FECDC();
  v32 = v76;
  sub_20C64E4F0();
  if (!v32)
  {
    v62 = v24;
    v63 = v21;
    v33 = v27;
    v34 = v71;
    v35 = v72;
    v76 = v29;
    v36 = v73;
    v37 = v75;
    v38 = sub_20C64E3A0();
    v39 = (2 * *(v38 + 16)) | 1;
    v78 = v38;
    v79 = v38 + 32;
    v80 = 0;
    v81 = v39;
    v40 = sub_20C5DDAF4();
    if (v40 == 3 || v80 != v81 >> 1)
    {
      v44 = sub_20C64E290();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
      *v46 = v17;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
      swift_willThrow();
      (*(v74 + 8))(v16, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v40)
      {
        v41 = v17;
        if (v40 == 1)
        {
          v82 = 1;
          sub_20C5FED84();
          v42 = v35;
          sub_20C64E320();
          v43 = v76;
          v56 = v36;
          v71 = v41;
          sub_20C64CF10();
          sub_20C5FEEC4(&qword_27C7CE7E8, MEMORY[0x277CC9260]);
          v57 = v62;
          v58 = v67;
          sub_20C64E390();
          v59 = v74;
          (*(v68 + 8))(v42, v58);
          (*(v59 + 8))(v16, v75);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v60 = v57;
        }

        else
        {
          v82 = 2;
          sub_20C5FED30();
          v52 = v37;
          sub_20C64E320();
          v43 = v76;
          v56 = v36;
          sub_20C64CF10();
          sub_20C5FEEC4(&qword_27C7CE7E8, MEMORY[0x277CC9260]);
          v53 = v63;
          v54 = v66;
          v55 = v70;
          sub_20C64E390();
          v71 = v41;
          (*(v69 + 8))(v55, v54);
          (*(v74 + 8))(v16, v52);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v60 = v53;
        }
      }

      else
      {
        v82 = 0;
        sub_20C5FEDD8();
        v49 = v37;
        sub_20C64E320();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
        sub_20C5FEE2C(&qword_27C7CEBE0);
        v72 = v33;
        v50 = v64;
        sub_20C64E390();
        (*(v65 + 8))(v34, v50);
        (*(v74 + 8))(v16, v49);
        swift_unknownObjectRelease();
        v51 = v72;
        swift_storeEnumTagMultiPayload();
        v56 = v36;
        v43 = v76;
        v60 = v51;
      }

      sub_20C5D95DC(v60, v43);
      sub_20C5D95DC(v43, v56);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t MarketingAction.hash(into:)()
{
  v1 = sub_20C64CF10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for MarketingAction();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C5DFB04(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v5, v14, v1);
      v16 = 1;
    }

    else
    {
      (*(v2 + 32))(v5, v14, v1);
      v16 = 2;
    }

    MEMORY[0x20F301800](v16);
    sub_20C5FEEC4(&qword_281106850, MEMORY[0x277CC9260]);
    sub_20C64E000();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    MEMORY[0x20F301800](0);
    sub_20C5FEE2C(&qword_281105B68);
    sub_20C64E000();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t MarketingAction.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingAction.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C5FE814()
{
  sub_20C64E4A0();
  MarketingAction.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C5FE858()
{
  sub_20C64E4A0();
  MarketingAction.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t _s16FitnessMarketing0B6ActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v43 = sub_20C64CF10();
  v2 = *(v43 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v43);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for MarketingAction();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA88, &unk_20C652AF0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v40 - v25;
  v27 = *(v24 + 56);
  sub_20C5DFB04(v44, &v40 - v25);
  sub_20C5DFB04(v45, &v26[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20C5DFB04(v26, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v43;
        (*(v2 + 32))(v7, &v26[v27], v43);
        v30 = sub_20C64CEE0();
        v31 = *(v2 + 8);
        v31(v7, v29);
        v31(v19, v29);
LABEL_15:
        sub_20C5DFB68(v26);
        return v30 & 1;
      }

      v36 = *(v2 + 8);
      v37 = v19;
    }

    else
    {
      sub_20C5DFB04(v26, v16);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v33 = v41;
        v34 = v43;
        (*(v2 + 32))(v41, &v26[v27], v43);
        v30 = sub_20C64CEE0();
        v35 = *(v2 + 8);
        v35(v33, v34);
        v35(v16, v34);
        goto LABEL_15;
      }

      v36 = *(v2 + 8);
      v37 = v16;
    }

    v36(v37, v43);
  }

  else
  {
    v32 = v42;
    sub_20C5DFB04(v26, v21);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v32 + 32))(v11, &v26[v27], v8);
      sub_20C5D42EC();
      v30 = sub_20C64D0A0();
      v38 = *(v32 + 8);
      v38(v11, v8);
      v38(v21, v8);
      goto LABEL_15;
    }

    (*(v32 + 8))(v21, v8);
  }

  sub_20C5F940C(v26);
  v30 = 0;
  return v30 & 1;
}

unint64_t sub_20C5FECDC()
{
  result = qword_27C7CEB98;
  if (!qword_27C7CEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEB98);
  }

  return result;
}

unint64_t sub_20C5FED30()
{
  result = qword_27C7CEBA0;
  if (!qword_27C7CEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEBA0);
  }

  return result;
}

unint64_t sub_20C5FED84()
{
  result = qword_27C7CEBA8;
  if (!qword_27C7CEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEBA8);
  }

  return result;
}

unint64_t sub_20C5FEDD8()
{
  result = qword_27C7CEBB0;
  if (!qword_27C7CEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEBB0);
  }

  return result;
}

uint64_t sub_20C5FEE2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE1A0, " 7");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C5FEEC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C5FEFA0()
{
  result = qword_27C7CEBF0;
  if (!qword_27C7CEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEBF0);
  }

  return result;
}

unint64_t sub_20C5FEFF8()
{
  result = qword_27C7CEBF8;
  if (!qword_27C7CEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEBF8);
  }

  return result;
}

unint64_t sub_20C5FF050()
{
  result = qword_27C7CEC00;
  if (!qword_27C7CEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC00);
  }

  return result;
}

unint64_t sub_20C5FF0A8()
{
  result = qword_27C7CEC08;
  if (!qword_27C7CEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC08);
  }

  return result;
}

unint64_t sub_20C5FF100()
{
  result = qword_27C7CEC10;
  if (!qword_27C7CEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC10);
  }

  return result;
}

unint64_t sub_20C5FF158()
{
  result = qword_27C7CEC18;
  if (!qword_27C7CEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC18);
  }

  return result;
}

unint64_t sub_20C5FF1B0()
{
  result = qword_27C7CEC20;
  if (!qword_27C7CEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC20);
  }

  return result;
}

unint64_t sub_20C5FF208()
{
  result = qword_27C7CEC28;
  if (!qword_27C7CEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC28);
  }

  return result;
}

unint64_t sub_20C5FF260()
{
  result = qword_27C7CEC30;
  if (!qword_27C7CEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC30);
  }

  return result;
}

unint64_t sub_20C5FF2B8()
{
  result = qword_27C7CEC38;
  if (!qword_27C7CEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC38);
  }

  return result;
}

unint64_t sub_20C5FF310()
{
  result = qword_27C7CEC40;
  if (!qword_27C7CEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC40);
  }

  return result;
}

unint64_t sub_20C5FF368()
{
  result = qword_27C7CEC48;
  if (!qword_27C7CEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC48);
  }

  return result;
}

uint64_t sub_20C5FF3BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7959906 && a2 == 0xE300000000000000;
  if (v3 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C72656972726163 && a2 == 0xEB000000006B6E69 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t sub_20C5FF514()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECB8, qword_20C653458);
  sub_20C5E5558(&qword_2811057D0, &qword_27C7CECB8, qword_20C653458);

  return sub_20C64D220();
}

uint64_t sub_20C5FF5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
  swift_getFunctionTypeMetadata1();
  return sub_20C64CFF0();
}

uint64_t (*sub_20C5FF678(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
  swift_getFunctionTypeMetadata1();
  sub_20C64D010();
  sub_20C64D000();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = v6;
  return sub_20C605F30;
}

uint64_t sub_20C5FF738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  type metadata accessor for MarketingActionItem();
  type metadata accessor for MarketingOffer();
  swift_getFunctionTypeMetadata();
  return sub_20C64CFF0();
}

uint64_t (*sub_20C5FF820(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v2 = *(a1 + 60);
  v3 = *(a1 + 24);
  *&v6 = type metadata accessor for MarketingActionItem();
  *(&v6 + 1) = type metadata accessor for MarketingOffer();
  swift_getFunctionTypeMetadata();
  sub_20C64D010();
  sub_20C64D000();
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v3;
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = v6;
  return sub_20C605E08;
}

double sub_20C5FF8FC()
{
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  return dbl_20C653620[v1];
}

uint64_t MarketingButton.init(store:style:handoffViewBuilder:marketingActionItemViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *a3;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *a9 = sub_20C5E0270;
  *(a9 + 8) = v19;
  *(a9 + 16) = 0;
  *(a9 + 17) = v18;
  v20 = type metadata accessor for MarketingButton();
  v21 = *(v20 + 56);

  sub_20C5FF5B4(a4, a5, a8, a10, a11, a12);
  v22 = a9 + *(v20 + 60);
  sub_20C5FF738(a6, a7, a8, a10, a11, a12);
}

uint64_t sub_20C5FFA94(uint64_t a1)
{
  v3 = sub_20C64D310();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC60, &qword_20C653390);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15[-v11];
  v13 = *(a1 + 32);
  v16 = *(a1 + 16);
  v17 = v13;
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECE0, &qword_20C653520);
  sub_20C5E5558(&qword_281105850, &qword_27C7CECE0, &qword_20C653520);
  sub_20C64DD40();
  sub_20C64D300();
  sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390);
  sub_20C64DBB0();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_20C5FFCEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v38 = *(a1 - 8);
  v53 = *(v38 + 64);
  MEMORY[0x28223BE20](a1);
  v51 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC60, &qword_20C653390);
  v45 = v4;
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v35 - v6;
  *&v50 = a1 + 24;
  *&v49 = a1 + 40;
  v36 = *(a1 + 16);
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  v7 = sub_20C64D2E0();
  v8 = sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390);
  v43 = v8;
  v63 = *(a1 + 32);
  v9 = v63;
  v64 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v11 = sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398);
  v61 = WitnessTable;
  v62 = v11;
  v40 = v7;
  v41 = swift_getWitnessTable();
  v57 = v4;
  v58 = v7;
  v59 = v8;
  v60 = v41;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  v12 = *(v44 + 64);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v35 - v15;
  v16 = v38;
  v35 = *(v38 + 16);
  v17 = v51;
  v18 = v39;
  v35(v51, v39, a1);
  v19 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *&v21 = v36;
  *(&v21 + 1) = *v50;
  v50 = v21;
  *&v22 = v9;
  *(&v22 + 1) = *v49;
  v49 = v22;
  *(v20 + 16) = v21;
  *(v20 + 32) = v22;
  v38 = *(v16 + 32);
  (v38)(v20 + v19, v17, a1);
  v54 = v50;
  v55 = v49;
  v56 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECE0, &qword_20C653520);
  sub_20C5E5558(&qword_281105850, &qword_27C7CECE0, &qword_20C653520);
  sub_20C64DD40();
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF50();

  v23 = v51;
  v35(v51, v18, a1);
  v24 = swift_allocObject();
  v25 = v49;
  *(v24 + 16) = v50;
  *(v24 + 32) = v25;
  (v38)(v24 + v19, v23, a1);
  swift_checkMetadataState();
  v26 = v37;
  v27 = v45;
  v28 = v52;
  sub_20C64DAC0();

  (*(v47 + 8))(v28, v27);
  v29 = v44;
  v30 = *(v44 + 16);
  v31 = v42;
  v32 = OpaqueTypeMetadata2;
  v30(v42, v26, OpaqueTypeMetadata2);
  v33 = *(v29 + 8);
  v33(v26, v32);
  v30(v48, v31, v32);
  return (v33)(v31, v32);
}

uint64_t sub_20C60037C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v48 = a3;
  v49 = a5;
  v47 = a4;
  v56 = a6;
  v61 = a2;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v8 = type metadata accessor for MarketingButton();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v52 = *(a2 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_20C64D2E0();
  v55 = *(v51 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v51);
  v46 = &v46 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  v19 = sub_20C64D2E0();
  v54 = *(v19 - 8);
  v20 = *(v54 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v50 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v53 = &v46 - v23;
  sub_20C5FF678(v8);
  v25 = v24;
  (*(v9 + 16))(v13, a1, v8);
  v26 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v27 = swift_allocObject();
  v29 = v47;
  v28 = v48;
  *(v27 + 2) = a2;
  *(v27 + 3) = v28;
  v30 = v49;
  *(v27 + 4) = v29;
  *(v27 + 5) = v30;
  (*(v9 + 32))(&v27[v26], v13, v8);
  v31 = *(v25 + 16);
  v32 = *(v25 + 24);
  v33 = *(v25 + 32);
  v34 = *(v25 + 40);
  v35 = *(v25 + 56);
  sub_20C605B68(sub_20C605F28, v27, *(v25 + 48));

  sub_20C64DE00();
  v36 = v46;
  sub_20C64DB50();
  (*(v52 + 8))(v16, a2);
  v61 = sub_20C64DBF0();
  sub_20C64D7A0();
  v59 = v29;
  v60 = MEMORY[0x277CDFC60];
  v37 = v51;
  WitnessTable = swift_getWitnessTable();
  v39 = v50;
  sub_20C64DA10();

  (*(v55 + 8))(v36, v37);
  v40 = sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398);
  v57 = WitnessTable;
  v58 = v40;
  swift_getWitnessTable();
  v42 = v53;
  v41 = v54;
  v43 = *(v54 + 16);
  v43(v53, v39, v19);
  v44 = *(v41 + 8);
  v44(v39, v19);
  v43(v56, v42, v19);
  return (v44)(v42, v19);
}

uint64_t sub_20C600888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MarketingButtonAction();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  type metadata accessor for MarketingButton();
  sub_20C5FF514();
  v15 = type metadata accessor for MarketingActionItem();
  (*(*(v15 - 8) + 56))(v14, a6, 6, v15);
  sub_20C64DF40();

  return sub_20C605568(v14, type metadata accessor for MarketingButtonAction);
}

uint64_t sub_20C6009AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECE8, &qword_20C653570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = v36 - v6;
  v7 = sub_20C64CFE0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C64E030();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC60, &qword_20C653390);
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v36 - v18;
  (*(v14 + 16))(v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v20 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v21 = swift_allocObject();
  v23 = a1[2];
  v22 = a1[3];
  *(v21 + 2) = v23;
  *(v21 + 3) = v22;
  v24 = a1[4];
  v25 = a1[5];
  *(v21 + 4) = v24;
  *(v21 + 5) = v25;
  (*(v14 + 32))(&v21[v20], v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v39 = v23;
  v45 = v23;
  v46 = v22;
  v47 = v24;
  v48 = v25;
  v49 = v36[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECE0, &qword_20C653520);
  sub_20C5E5558(&qword_281105850, &qword_27C7CECE0, &qword_20C653520);
  v40 = v19;
  sub_20C64DD40();
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v26 = qword_281109B60;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  v27 = sub_20C64E080();
  v38 = v28;
  v53 = v27;
  v54 = v28;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF50();

  v36[3] = v50;
  v36[2] = v51;
  LODWORD(v37) = v52;
  sub_20C5FF514();
  swift_getKeyPath();
  v29 = v41;
  sub_20C64DF30();

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  v31 = (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v36[1] = v36;
  v32 = MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC78, &qword_20C6533A8);
  sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390);
  sub_20C602C18();
  sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8);
  v33 = v43;
  v34 = v40;
  sub_20C64DB40();

  sub_20C5DBFC4(v29, &qword_27C7CECE8, &qword_20C653570);

  return (*(v42 + 8))(v34, v33);
}

uint64_t sub_20C601074@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C64CFE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20C64E030();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v6 = qword_281109B60;
  type metadata accessor for MarketingButton();
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C64E080();
  sub_20C602C18();
  result = sub_20C64D970();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_20C601248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v94 = a5;
  v95 = a6;
  v87 = a1;
  v93 = a7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  v12 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECF0, &qword_20C6535B8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v92 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v91 = &v71 - v18;
  v102 = a3;
  v103 = a4;
  v104 = a5;
  v105 = a6;
  v19 = type metadata accessor for MarketingButton();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECF8, &qword_20C6535C0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v71 - v26;
  v84 = &v71 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC60, &qword_20C653390);
  v89 = *(v28 - 8);
  v90 = v28;
  v29 = *(v89 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v88 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v96 = &v71 - v32;
  sub_20C64D180();
  v33 = sub_20C64D190();
  (*(*(v33 - 8) + 56))(v27, 0, 1, v33);
  v34 = *(v20 + 16);
  v75 = v20 + 16;
  v74 = v34;
  v34(v23, a2, v19);
  v35 = *(v20 + 80);
  v36 = (v35 + 48) & ~v35;
  v78 = v21;
  v73 = v35;
  v37 = swift_allocObject();
  v37[2] = a3;
  v37[3] = a4;
  v38 = a4;
  v40 = v94;
  v39 = v95;
  v37[4] = v94;
  v37[5] = v39;
  v41 = *(v20 + 32);
  v76 = v36;
  v77 = v23;
  v80 = v19;
  v79 = v20 + 32;
  v72 = v41;
  v41(v37 + v36, v23, v19);
  v81 = a3;
  v97 = a3;
  v98 = v38;
  v42 = v85;
  v82 = v38;
  v99 = v40;
  v100 = v39;
  v83 = a2;
  v101 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECE0, &qword_20C653520);
  v44 = sub_20C5E5558(&qword_281105850, &qword_27C7CECE0, &qword_20C653520);
  sub_20C64DD30();
  sub_20C5E574C(v87, v42, &qword_27C7CEC80, &unk_20C6533B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    if (*v42)
    {
      goto LABEL_7;
    }

LABEL_9:
    v54 = v77;
    v55 = v83;
    v56 = v80;
    v74(v77, v83, v80);
    v57 = v76;
    v58 = swift_allocObject();
    v87 = v44;
    v59 = v81;
    v60 = v82;
    *(v58 + 2) = v81;
    *(v58 + 3) = v60;
    v61 = v94;
    v86 = v43;
    v62 = v95;
    *(v58 + 4) = v94;
    *(v58 + 5) = v62;
    v63 = v72(&v58[v57], v54, v56);
    MEMORY[0x28223BE20](v63);
    *(&v71 - 6) = v59;
    *(&v71 - 5) = v60;
    *(&v71 - 4) = v61;
    *(&v71 - 3) = v62;
    *(&v71 - 2) = v55;
    v53 = v88;
    sub_20C64DD40();
    v52 = v89;
    v50 = v90;
    v51 = v91;
    (*(v89 + 32))(v91, v53, v90);
    v49 = 0;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v42, &qword_27C7CEC80, &unk_20C6533B0);
    goto LABEL_9;
  }

  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED08, &qword_20C6535D0) + 48);
  v47 = *v42;
  v48 = sub_20C64CF30();
  (*(*(v48 - 8) + 8))(&v42[v46], v48);
  if ((v47 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v49 = 1;
  v50 = v90;
  v51 = v91;
  v53 = v88;
  v52 = v89;
LABEL_10:
  (*(v52 + 56))(v51, v49, 1, v50);
  v64 = *(v52 + 16);
  v65 = v96;
  v64(v53, v96, v50);
  v66 = v92;
  sub_20C5E574C(v51, v92, &qword_27C7CECF0, &qword_20C6535B8);
  v67 = v93;
  v64(v93, v53, v50);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED00, &qword_20C6535C8);
  sub_20C5E574C(v66, &v67[*(v68 + 48)], &qword_27C7CECF0, &qword_20C6535B8);
  sub_20C5DBFC4(v51, &qword_27C7CECF0, &qword_20C6535B8);
  v69 = *(v52 + 8);
  v69(v65, v50);
  sub_20C5DBFC4(v66, &qword_27C7CECF0, &qword_20C6535B8);
  return (v69)(v53, v50);
}

uint64_t sub_20C6019F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C64CFE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20C64E030();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v6 = qword_281109B60;
  type metadata accessor for MarketingButton();
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  result = sub_20C64D8D0();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_20C601B9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C64CFE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20C64E030();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v6 = qword_281109B60;
  type metadata accessor for MarketingButton();
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  result = sub_20C64E080();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20C601D60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C64CFE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20C64E030();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v6 = qword_281109B60;
  type metadata accessor for MarketingButton();
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  result = sub_20C64E080();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

BOOL sub_20C601F20()
{
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  return v1 > 2u;
}

uint64_t sub_20C601F80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C6063A8(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v4;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED08, &qword_20C6535D0) + 48);
      v9 = *v4;
      v10 = sub_20C64CF30();
      (*(*(v10 - 8) + 8))(&v4[v8], v10);
      return v9;
    }

    sub_20C5DBFC4(v4, &qword_27C7CEC80, &unk_20C6533B0);
  }

  return 0;
}

BOOL sub_20C60210C()
{
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  return v2 == 1 && (sub_20C601F80() & 1) != 0 || !sub_20C601F20();
}

uint64_t MarketingButton.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v88 = a2;
  v86 = *(a1 - 1);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](a1);
  v85 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC50, &qword_20C653380);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC58, &qword_20C653388);
  v5 = sub_20C5E5558(&qword_281105790, &qword_27C7CEC58, &qword_20C653388);
  v107 = v4;
  v108 = MEMORY[0x277D837D0];
  v110 = v5;
  v111 = MEMORY[0x277D837E0];
  *&v83 = a1[3];
  v109 = v83;
  sub_20C64DD90();
  *&v82 = a1[5];
  v120 = v82;
  swift_getWitnessTable();
  v77 = sub_20C64DD60();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
  v80 = a1[2];
  v81 = a1;
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  v7 = sub_20C64D2E0();
  v8 = sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390);
  v79 = a1[4];
  v118 = v79;
  v119 = MEMORY[0x277CDFC60];
  v89 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398);
  v116 = WitnessTable;
  v117 = v10;
  v11 = swift_getWitnessTable();
  v107 = v6;
  v108 = v7;
  v109 = v8;
  v110 = v11;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC70, &qword_20C6533A0);
  v12 = sub_20C64D560();
  v107 = v6;
  v108 = v7;
  v109 = v8;
  v110 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
  v16 = sub_20C602C18();
  v17 = sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8);
  v107 = v6;
  v108 = MEMORY[0x277D837D0];
  v109 = v14;
  v110 = MEMORY[0x277CE0BD8];
  v111 = v15;
  v112 = v8;
  v113 = v16;
  v114 = v17;
  v115 = MEMORY[0x277CE0BC8];
  v18 = swift_getOpaqueTypeConformance2();
  v105 = OpaqueTypeConformance2;
  v106 = v18;
  v74 = MEMORY[0x277CE0340];
  v19 = swift_getWitnessTable();
  v20 = sub_20C602C6C();
  v107 = v12;
  v108 = &type metadata for MarketingPlainButtonStyle;
  v109 = v19;
  v110 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  v21 = sub_20C64DCA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC88, &qword_20C653700);
  v22 = sub_20C64D2E0();
  v107 = v12;
  v108 = &type metadata for MarketingPlainButtonStyle;
  v109 = v19;
  v110 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v103 = v19;
  v104 = v23;
  v102 = swift_getWitnessTable();
  v75 = MEMORY[0x277CE0FB0];
  v24 = swift_getWitnessTable();
  v25 = sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700);
  v100 = v24;
  v101 = v25;
  OpaqueTypeMetadata2 = v22;
  v71 = swift_getWitnessTable();
  v26 = MEMORY[0x277CE1350];
  v107 = v21;
  v108 = MEMORY[0x277CE1350];
  v109 = v22;
  v110 = v24;
  v111 = MEMORY[0x277CE1340];
  v112 = v71;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  v70 = sub_20C64D560();
  v72 = sub_20C64DCA0();
  v78 = *(v72 - 8);
  v27 = *(v78 + 64);
  MEMORY[0x28223BE20](v72);
  v76 = &v68 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC90, &qword_20C6533C0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC98, &qword_20C6533C8);
  v31 = sub_20C602CC0();
  v32 = sub_20C602E88();
  v107 = v29;
  v108 = v26;
  v109 = v30;
  v110 = v31;
  v33 = MEMORY[0x277CE1340];
  v111 = MEMORY[0x277CE1340];
  v112 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = swift_getWitnessTable();
  v107 = v21;
  v108 = v26;
  v109 = OpaqueTypeMetadata2;
  v110 = v24;
  v111 = v33;
  v112 = v71;
  v36 = swift_getOpaqueTypeConformance2();
  v98 = v35;
  v99 = v36;
  v37 = swift_getWitnessTable();
  v96 = v34;
  v97 = v37;
  v95 = swift_getWitnessTable();
  v38 = v72;
  v39 = swift_getWitnessTable();
  v107 = v38;
  v108 = v39;
  v40 = v38;
  v69 = v39;
  v75 = MEMORY[0x277D09E70];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  v41 = *(v77 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v43 = &v68 - v42;
  v44 = sub_20C64D2E0();
  v45 = *(v44 - 8);
  v46 = v45[8];
  v47 = MEMORY[0x28223BE20](v44);
  v71 = &v68 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v74 = &v68 - v49;
  *&v51 = v79;
  *&v50 = v80;
  *(&v50 + 1) = v83;
  *(&v51 + 1) = v82;
  v82 = v51;
  v83 = v50;
  v90 = v50;
  v91 = v51;
  v52 = v84;
  v92 = v84;
  v53 = v76;
  sub_20C64DC90();
  sub_20C64D9A0();
  v54 = v40;
  (*(v78 + 8))(v53, v40);
  v56 = v85;
  v55 = v86;
  v57 = v81;
  (*(v86 + 16))(v85, v52, v81);
  v58 = (*(v55 + 80) + 48) & ~*(v55 + 80);
  v59 = swift_allocObject();
  v60 = v82;
  *(v59 + 16) = v83;
  *(v59 + 32) = v60;
  (*(v55 + 32))(v59 + v58, v56, v57);
  v107 = v54;
  v108 = v69;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v71;
  v63 = OpaqueTypeMetadata2;
  sub_20C64DBA0();

  (*(v77 + 8))(v43, v63);
  v93 = v61;
  v94 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v64 = v45[2];
  v65 = v74;
  v64(v74, v62, v44);
  v66 = v45[1];
  v66(v62, v44);
  v64(v88, v65, v44);
  return (v66)(v65, v44);
}

unint64_t sub_20C602C18()
{
  result = qword_2811057B8;
  if (!qword_2811057B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811057B8);
  }

  return result;
}

unint64_t sub_20C602C6C()
{
  result = qword_281106278;
  if (!qword_281106278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106278);
  }

  return result;
}

unint64_t sub_20C602CC0()
{
  result = qword_281105878;
  if (!qword_281105878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC90, &qword_20C6533C0);
    sub_20C602D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105878);
  }

  return result;
}

unint64_t sub_20C602D44()
{
  result = qword_281105970;
  if (!qword_281105970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECA0, &qword_20C6533D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
    sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECA8, &qword_20C6533D8);
    sub_20C602C6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105970);
  }

  return result;
}

unint64_t sub_20C602E88()
{
  result = qword_281105A98;
  if (!qword_281105A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC98, &qword_20C6533C8);
    sub_20C602CC0();
    sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A98);
  }

  return result;
}

uint64_t sub_20C602F40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v167 = a5;
  v166 = a4;
  v165 = a3;
  v164 = a2;
  v155 = a1;
  v161 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  sub_20C64D2E0();
  sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390);
  v199 = a4;
  v200 = MEMORY[0x277CDFC60];
  v168 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v198 = sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC70, &qword_20C6533A0);
  v7 = sub_20C64D560();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
  v194 = sub_20C602C18();
  v195 = sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8);
  v196 = MEMORY[0x277CE0BC8];
  v186 = OpaqueTypeConformance2;
  v187 = swift_getOpaqueTypeConformance2();
  v9 = swift_getWitnessTable();
  sub_20C602C6C();
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  v10 = sub_20C64DCA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC88, &qword_20C653700);
  v11 = sub_20C64D2E0();
  v149 = v7;
  v148 = v9;
  v184 = v9;
  v185 = swift_getOpaqueTypeConformance2();
  v183 = swift_getWitnessTable();
  v181 = swift_getWitnessTable();
  v182 = sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700);
  v12 = swift_getWitnessTable();
  v170 = v10;
  v188 = v10;
  v189 = MEMORY[0x277CE1350];
  v163 = v11;
  v190 = v11;
  v191 = v181;
  v169 = v181;
  v192 = MEMORY[0x277CE1340];
  v193 = v12;
  v162 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v147 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v147 + 64);
  v15 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v146 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v145 = &v136 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC58, &qword_20C653388);
  v19 = sub_20C5E5558(&qword_281105790, &qword_27C7CEC58, &qword_20C653388);
  v188 = v18;
  v20 = v165;
  v189 = MEMORY[0x277D837D0];
  v190 = v165;
  v191 = v19;
  v192 = MEMORY[0x277D837E0];
  v21 = sub_20C64DD90();
  v22 = v167;
  v180 = v167;
  v23 = swift_getWitnessTable();
  v142 = v21;
  v141 = v23;
  v24 = sub_20C64DD60();
  v143 = *(v24 - 8);
  v25 = *(v143 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v144 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v139 = &v136 - v29;
  MEMORY[0x28223BE20](v28);
  v140 = &v136 - v30;
  v168 = v31;
  v152 = OpaqueTypeMetadata2;
  v32 = sub_20C64D560();
  v151 = *(v32 - 8);
  v33 = *(v151 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v150 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v154 = (&v136 - v36);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC90, &qword_20C6533C0);
  v37 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v39 = &v136 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC50, &qword_20C653380);
  v41 = *(v40 - 8);
  v42 = *(v41 + 8);
  MEMORY[0x28223BE20](v40);
  v153 = &v136 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v136 - v46;
  v48 = type metadata accessor for MarketingOffer();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = &v136 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v40;
  v160 = sub_20C64D560();
  v159 = *(v160 - 8);
  v52 = *(v159 + 64);
  MEMORY[0x28223BE20](v160);
  v158 = &v136 - v53;
  v188 = v164;
  v189 = v20;
  v190 = v166;
  v191 = v22;
  type metadata accessor for MarketingButton();
  v54 = v155;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v57 = v51;
    sub_20C6054D4(v47, v51);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v47, &qword_27C7CECC0, &qword_20C653470);
LABEL_13:
    v82 = *(v54 + 17);
    sub_20C5FF514();
    swift_getKeyPath();
    sub_20C64DF30();

    v84 = MEMORY[0x277CE1340];
    v154 = v41;
    v152 = &v136;
    MEMORY[0x28223BE20](v83);
    v85 = v165;
    *(&v136 - 6) = v164;
    *(&v136 - 5) = v85;
    v86 = v167;
    *(&v136 - 4) = v166;
    *(&v136 - 3) = v86;
    sub_20C60562C(v82, sub_20C6055D8, v87, v39);
    sub_20C64DDC0();
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC98, &qword_20C6533C8);
    v89 = sub_20C602CC0();
    v90 = sub_20C602E88();
    v134 = v90;
    v91 = v153;
    v92 = v156;
    v81 = MEMORY[0x277CE1350];
    sub_20C64DBC0();
    sub_20C5D6348(v39);
    v188 = v92;
    v189 = v81;
    v190 = v88;
    v191 = v89;
    v192 = v84;
    v193 = v90;
    v93 = v84;
    swift_getOpaqueTypeConformance2();
    v94 = swift_getWitnessTable();
    v188 = v170;
    v189 = v81;
    v95 = v163;
    v190 = v163;
    v191 = v169;
    v96 = v162;
    v192 = v93;
    v193 = v162;
    v97 = swift_getOpaqueTypeConformance2();
    v171 = v94;
    v172 = v97;
    swift_getWitnessTable();
    v98 = v158;
    v99 = v157;
    sub_20C62E798(v91, v157);
    v154[1](v91, v99);
    goto LABEL_17;
  }

  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC8, &qword_20C6534D8) + 48);
  v57 = v51;
  sub_20C6054D4(v47, v51);
  v58 = sub_20C64CF30();
  (*(*(v58 - 8) + 8))(&v47[v56], v58);
LABEL_6:
  v59 = v163;
  v60 = sub_20C60210C();
  v61 = v169;
  v62 = v162;
  v63 = MEMORY[0x277CE1350];
  v138 = v32;
  v137 = v57;
  if (v60)
  {
    sub_20C5FF514();
    swift_getKeyPath();
    sub_20C64DF30();

    if (v188)
    {
      v64 = v170;
      if (v188 == 1)
      {
        sub_20C64D4D0();
      }

      else
      {
        sub_20C64D4F0();
      }
    }

    else
    {
      sub_20C64D4E0();
      v64 = v170;
    }

    sub_20C5FF8FC();
    MEMORY[0x28223BE20](v100);
    v101 = v165;
    *(&v136 - 6) = v164;
    *(&v136 - 5) = v101;
    v102 = v167;
    *(&v136 - 4) = v166;
    *(&v136 - 3) = v102;
    v134 = v57;
    v135 = v54;
    v103 = v139;
    sub_20C64DD50();
    v104 = v168;
    v167 = swift_getWitnessTable();
    v105 = v143;
    v106 = *(v143 + 16);
    v107 = v140;
    v106(v140, v103, v104);
    v108 = *(v105 + 8);
    v108(v103, v104);
    v109 = v144;
    v106(v144, v107, v104);
    v188 = v64;
    v81 = MEMORY[0x277CE1350];
    v74 = v163;
    v189 = MEMORY[0x277CE1350];
    v190 = v163;
    v110 = v169;
    v191 = v169;
    v192 = MEMORY[0x277CE1340];
    v193 = v62;
    swift_getOpaqueTypeConformance2();
    v79 = v154;
    sub_20C62E798(v109, v104);
    v111 = v109;
    v61 = v110;
    v108(v111, v104);
    v108(v107, v104);
  }

  else
  {
    LOBYTE(v188) = *(v54 + 17);
    sub_20C5FF514();
    swift_getKeyPath();
    sub_20C64DF30();

    v66 = v179;
    MEMORY[0x28223BE20](v65);
    v67 = v165;
    *(&v136 - 6) = v164;
    *(&v136 - 5) = v67;
    v68 = v167;
    *(&v136 - 4) = v166;
    *(&v136 - 3) = v68;
    v134 = v54;
    v69 = swift_checkMetadataState();
    v70 = v63;
    v71 = v146;
    sub_20C61CD08(v66, sub_20C605538, (&v136 - 8), v69, v148, v146);
    v188 = v170;
    v189 = v70;
    v190 = v59;
    v191 = v61;
    v192 = MEMORY[0x277CE1340];
    v193 = v62;
    v167 = swift_getOpaqueTypeConformance2();
    v72 = v147;
    v73 = *(v147 + 16);
    v74 = v59;
    v75 = v145;
    v76 = v152;
    v73(v145, v71, v152);
    v77 = *(v72 + 8);
    v77(v71, v76);
    v73(v71, v75, v76);
    v78 = v168;
    swift_getWitnessTable();
    v79 = v154;
    sub_20C62E890(v71, v78, v76);
    v77(v71, v76);
    v80 = v76;
    v62 = v162;
    v77(v75, v80);
    v81 = MEMORY[0x277CE1350];
  }

  v112 = swift_getWitnessTable();
  v188 = v170;
  v189 = v81;
  v190 = v74;
  v191 = v61;
  v113 = MEMORY[0x277CE1340];
  v192 = MEMORY[0x277CE1340];
  v193 = v62;
  v114 = swift_getOpaqueTypeConformance2();
  v177 = v112;
  v178 = v114;
  v115 = v138;
  swift_getWitnessTable();
  v116 = v151;
  v117 = v150;
  (*(v151 + 16))(v150, v79, v115);
  v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC98, &qword_20C6533C8);
  v119 = sub_20C602CC0();
  v120 = sub_20C602E88();
  v92 = v156;
  v188 = v156;
  v189 = v81;
  v190 = v118;
  v191 = v119;
  v192 = v113;
  v193 = v120;
  swift_getOpaqueTypeConformance2();
  v98 = v158;
  sub_20C62E890(v117, v157, v115);
  v121 = *(v116 + 8);
  v121(v117, v115);
  v95 = v163;
  v121(v154, v115);
  v96 = v162;
  sub_20C605568(v137, type metadata accessor for MarketingOffer);
LABEL_17:
  v122 = v161;
  v123 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC98, &qword_20C6533C8);
  v124 = sub_20C602CC0();
  v125 = sub_20C602E88();
  v188 = v92;
  v189 = v81;
  v190 = v123;
  v191 = v124;
  v126 = MEMORY[0x277CE1340];
  v192 = MEMORY[0x277CE1340];
  v193 = v125;
  v127 = swift_getOpaqueTypeConformance2();
  v128 = swift_getWitnessTable();
  v188 = v170;
  v189 = v81;
  v190 = v95;
  v191 = v169;
  v192 = v126;
  v193 = v96;
  v129 = swift_getOpaqueTypeConformance2();
  v175 = v128;
  v176 = v129;
  v130 = swift_getWitnessTable();
  v173 = v127;
  v174 = v130;
  v131 = v160;
  swift_getWitnessTable();
  v132 = v159;
  (*(v159 + 16))(v122, v98, v131);
  return (*(v132 + 8))(v98, v131);
}

uint64_t sub_20C604418@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v47 = a6;
  v49 = a3;
  v50 = a5;
  v51 = a2;
  v52 = a7;
  v12 = type metadata accessor for MarketingOffer();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v45 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v57 = a6;
  v14 = type metadata accessor for MarketingButton();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC58, &qword_20C653388);
  v20 = sub_20C5E5558(&qword_281105790, &qword_27C7CEC58, &qword_20C653388);
  v54 = v19;
  v55 = MEMORY[0x277D837D0];
  v56 = a4;
  v57 = v20;
  v21 = a4;
  v43[1] = a4;
  v58 = MEMORY[0x277D837E0];
  v22 = sub_20C64DD90();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](v22);
  v44 = v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v46 = v43 - v27;
  v28 = a1;
  v43[2] = *a1;
  v29 = v18;
  v30 = v18;
  v31 = v14;
  (*(v15 + 16))(v29, v51, v14);
  v32 = v45;
  sub_20C605C38(v28, v45);
  v33 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v34 = (v16 + *(v48 + 80) + v33) & ~*(v48 + 80);
  v35 = swift_allocObject();
  v36 = v50;
  *(v35 + 2) = v49;
  *(v35 + 3) = v21;
  v37 = v47;
  *(v35 + 4) = v36;
  *(v35 + 5) = v37;
  (*(v15 + 32))(&v35[v33], v30, v31);
  sub_20C6054D4(v32, &v35[v34]);
  type metadata accessor for MarketingActionItem();
  sub_20C605DC4(&qword_2811067F0);
  sub_20C605DC4(&qword_2811067E0);

  v38 = v44;
  sub_20C64DD80();
  v53 = v37;
  swift_getWitnessTable();
  v39 = v23[2];
  v40 = v46;
  v39(v46, v38, v22);
  v41 = v23[1];
  v41(v38, v22);
  v39(v52, v40, v22);
  return (v41)(v40, v22);
}

uint64_t sub_20C604868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, char *a5@<X8>)
{
  v27 = a2;
  v28 = a3;
  v29 = a5;
  v7 = *(a4 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v18 = type metadata accessor for MarketingButton();
  sub_20C5FF820(v18);
  v20 = v19;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  v31[0] = v36;
  v32 = v37;
  v33 = v38;
  v34 = v39;
  v35 = v40;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  v21 = *(v20 + 48);
  v22 = *(v20 + 56);
  v42 = a1;
  v41 = v30;
  v21(v27, v28, &v42, v31, &v41);

  v23 = v7[2];
  v23(v13, v11, a4);
  v24 = v7[1];
  v24(v11, a4);
  v23(v29, v13, a4);
  return (v24)(v13, a4);
}

uint64_t sub_20C604A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  OpaqueTypeConformance2 = a3;
  v58 = a2;
  v59 = a1;
  v67 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC70, &qword_20C6533A0);
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  v11 = sub_20C64D2E0();
  v12 = v10;
  v13 = sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390);
  v83 = a4;
  v84 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v15 = sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398);
  v81 = WitnessTable;
  v82 = v15;
  v16 = swift_getWitnessTable();
  v72 = v12;
  v73 = v11;
  v68 = v11;
  v69 = v13;
  v74 = v13;
  v75 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v56 - v23;
  v66 = v7;
  v25 = sub_20C64D560();
  v64 = *(v25 - 8);
  v65 = v25;
  v26 = *(v64 + 64);
  MEMORY[0x28223BE20](v25);
  v63 = &v56 - v27;
  v72 = v58;
  v73 = OpaqueTypeConformance2;
  v74 = a4;
  v75 = v61;
  v28 = type metadata accessor for MarketingButton();
  v29 = sub_20C601F80();
  v62 = v16;
  if (v29)
  {
    sub_20C5FFCEC(v28, v22);
    v30 = v69;
    v72 = v12;
    v73 = v68;
    v74 = v69;
    v75 = v16;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = v18[2];
    v31(v24, v22, OpaqueTypeMetadata2);
    v61 = v12;
    v32 = v18[1];
    v32(v22, OpaqueTypeMetadata2);
    v31(v22, v24, OpaqueTypeMetadata2);
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
    v35 = sub_20C602C18();
    v36 = sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8);
    v72 = v61;
    v73 = MEMORY[0x277D837D0];
    v74 = v33;
    v75 = MEMORY[0x277CE0BD8];
    v76 = v34;
    v77 = v30;
    v78 = v35;
    v79 = v36;
    v80 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v37 = v63;
    sub_20C62E798(v22, OpaqueTypeMetadata2);
    v32(v22, OpaqueTypeMetadata2);
    v32(v24, OpaqueTypeMetadata2);
    v12 = v61;
  }

  else
  {
    v38 = v56;
    sub_20C6009AC(v28, v56);
    v39 = v69;
    v72 = v12;
    v73 = v68;
    v74 = v69;
    v75 = v16;
    swift_getOpaqueTypeConformance2();
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
    v42 = sub_20C602C18();
    v43 = sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8);
    v72 = v12;
    v73 = MEMORY[0x277D837D0];
    v74 = v40;
    v75 = MEMORY[0x277CE0BD8];
    v76 = v41;
    v77 = v39;
    v78 = v42;
    v79 = v43;
    v80 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v37 = v63;
    v44 = OpaqueTypeMetadata2;
    v45 = v66;
    sub_20C62E890(v38, v44, v66);
    (*(v57 + 8))(v38, v45);
  }

  v46 = v69;
  v72 = v12;
  v73 = v68;
  v74 = v69;
  v75 = v62;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
  v50 = sub_20C602C18();
  v51 = sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8);
  v72 = v12;
  v73 = MEMORY[0x277D837D0];
  v74 = v48;
  v75 = MEMORY[0x277CE0BD8];
  v76 = v49;
  v77 = v46;
  v78 = v50;
  v79 = v51;
  v80 = MEMORY[0x277CE0BC8];
  v52 = swift_getOpaqueTypeConformance2();
  v70 = v47;
  v71 = v52;
  v53 = v65;
  swift_getWitnessTable();
  v54 = v64;
  (*(v64 + 16))(v67, v37, v53);
  return (*(v54 + 8))(v37, v53);
}