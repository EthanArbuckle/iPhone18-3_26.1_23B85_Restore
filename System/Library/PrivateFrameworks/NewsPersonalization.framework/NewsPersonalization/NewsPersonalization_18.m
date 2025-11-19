uint64_t static Com_Apple_News_Personalization_SessionEventArticleSaved._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B58 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSaved.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6CC4DF0();
    }
  }

  return result;
}

uint64_t sub_1C6CC4DF0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6CC583C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSaved.traverse<A>(visitor:)()
{
  result = sub_1C6CC4EFC(v0);
  if (!v1)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CC4EFC(uint64_t a1)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved();
  sub_1C6B482A8(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B4833C(v5);
  }

  sub_1C6B483C8(v5, v10);
  sub_1C6CC583C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleSaved.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved();
  sub_1C6CC583C(&qword_1EC1D9290, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC51D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CC583C(&qword_1EC1D92A8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CC5254@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B58 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CC52FC(uint64_t a1)
{
  v2 = sub_1C6CC583C(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CC5368()
{
  sub_1C6CC583C(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventArticleSavedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  sub_1C6B49A50();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved() + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6CC583C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6CC583C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6CC5884()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CC58F0()
{
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC5964()
{
  sub_1C6D7A260();
  sub_1C6D79610();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC59B8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C6D79F50();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1C6CC5A48@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C6D79F50();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C6CC5AA0(uint64_t a1)
{
  v2 = sub_1C6CC5D18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6CC5ADC(uint64_t a1)
{
  v2 = sub_1C6CC5D18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6CC5B18(void *a1)
{
  v2 = v1;
  sub_1C6CC5CBC();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CC5D18();
  sub_1C6D7A300();
  v12[1] = sub_1C6CC5D6C(*(v2 + 16));
  sub_1C6CC62F0(0, &qword_1EDCDFC18, MEMORY[0x1E69E5E28]);
  sub_1C6CC61C0();
  sub_1C6D7A090();

  return (*(v6 + 8))(v9, v5);
}

void sub_1C6CC5CBC()
{
  if (!qword_1EDCDF5E8)
  {
    sub_1C6CC5D18();
    v0 = sub_1C6D7A0A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF5E8);
    }
  }
}

unint64_t sub_1C6CC5D18()
{
  result = qword_1EDCDFFD0;
  if (!qword_1EDCDFFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFFD0);
  }

  return result;
}

unint64_t sub_1C6CC5D6C(uint64_t a1)
{
  sub_1C6CC62F0(0, &qword_1EDCDF6D8, MEMORY[0x1E69E6EC8]);
  result = sub_1C6D79EF0();
  v3 = 0;
  v43 = result;
  v44 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v42 = result + 64;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v45 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v44 + 48) + 16 * v14);
      v46 = v15[1];
      v47 = *v15;
      v16 = *(*(v44 + 56) + 8 * v14);

      v17 = v16;
      [v17 clicks];
      v48 = v18;
      [v17 impressions];
      v49 = v19;
      v50 = [v17 eventCount];
      v51 = [v17 timestamp];
      sub_1C6C0C0AC(0, &qword_1EDCEA470, MEMORY[0x1E69E6EC8]);
      v20 = sub_1C6D79F20();

      result = sub_1C6B5DEA8(0x736B63696C63, 0xE600000000000000);
      if (v21)
      {
        break;
      }

      v22 = v20 + 8;
      *(v20 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v20[6] + 16 * result);
      *v23 = 0x736B63696C63;
      v23[1] = 0xE600000000000000;
      *(v20[7] + 8 * result) = v48;
      v24 = v20[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v20[2] = v26;

      result = sub_1C6B5DEA8(0x6973736572706D69, 0xEB00000000736E6FLL);
      if (v27)
      {
        break;
      }

      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v28 = (v20[6] + 16 * result);
      *v28 = 0x6973736572706D69;
      v28[1] = 0xEB00000000736E6FLL;
      *(v20[7] + 8 * result) = v49;
      v29 = v20[2];
      v25 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v20[2] = v30;

      result = sub_1C6B5DEA8(0x756F43746E657665, 0xEA0000000000746ELL);
      if (v31)
      {
        break;
      }

      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v32 = (v20[6] + 16 * result);
      *v32 = 0x756F43746E657665;
      v32[1] = 0xEA0000000000746ELL;
      *(v20[7] + 8 * result) = v50;
      v33 = v20[2];
      v25 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v20[2] = v34;

      result = sub_1C6B5DEA8(0x6D617473656D6974, 0xE900000000000070);
      if (v35)
      {
        break;
      }

      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v36 = (v20[6] + 16 * result);
      *v36 = 0x6D617473656D6974;
      v36[1] = 0xE900000000000070;
      *(v20[7] + 8 * result) = v51;
      v37 = v20[2];
      v25 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v20[2] = v38;

      sub_1C6B758EC();
      swift_arrayDestroy();

      result = v43;
      *(v42 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v39 = (v43[6] + 16 * v14);
      *v39 = v47;
      v39[1] = v46;
      *(v43[7] + 8 * v14) = v20;
      v40 = v43[2];
      v25 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v43[2] = v41;
      v9 = v45;
      if (!v45)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v45 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1C6CC61C0()
{
  result = qword_1EDCDFC10;
  if (!qword_1EDCDFC10)
  {
    sub_1C6CC62F0(255, &qword_1EDCDFC18, MEMORY[0x1E69E5E28]);
    sub_1C6CC625C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFC10);
  }

  return result;
}

unint64_t sub_1C6CC625C()
{
  result = qword_1EDCDFBE0;
  if (!qword_1EDCDFBE0)
  {
    sub_1C6C0C0AC(255, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFBE0);
  }

  return result;
}

void sub_1C6CC62F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_1C6C0C0AC(255, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C6CC6390()
{
  result = qword_1EC1D92B0;
  if (!qword_1EC1D92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D92B0);
  }

  return result;
}

unint64_t sub_1C6CC63E8()
{
  result = qword_1EDCDFFC0;
  if (!qword_1EDCDFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFFC0);
  }

  return result;
}

unint64_t sub_1C6CC6440()
{
  result = qword_1EDCDFFC8;
  if (!qword_1EDCDFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFFC8);
  }

  return result;
}

uint64_t NewsAppFeatureResolvers.resolveFeatures(inputKeys:configuration:nodeID:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v60 = a3;
  v61 = a4;
  v62 = a1;
  v48 = a5;
  sub_1C6CC6AE0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D78810();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + 16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *a2;
    v20 = v17 + 32;
    v57 = (v15 + 56);
    v58 = v19;
    v56 = (v15 + 48);
    v49 = v15;
    v55 = (v15 + 32);
    v54 = *(a2 + 1);
    v53 = a2[3];
    v21 = MEMORY[0x1E69E7CC0];
    v50 = xmmword_1C6D7EB10;
    v52 = v12;
    v51 = v13;
    do
    {
      sub_1C6B16F28(v20, v71);
      v22 = v71[4];
      __swift_project_boxed_opaque_existential_1(v71, v71[3]);
      v68 = v58;
      v69 = v54;
      v70 = v53;
      v23 = *(v22 + 8);
      sub_1C6D785F0();
      if (v7)
      {
        v65 = v18;
        v66 = v7;
        v67 = v21;
        if (qword_1EDCE2360 != -1)
        {
          swift_once();
        }

        v64 = qword_1EDCE2368;
        v63 = sub_1C6D79AA0();
        sub_1C6B1D314();
        v24 = swift_allocObject();
        *(v24 + 16) = v50;
        v68 = 0;
        *&v69 = 0xE000000000000000;
        sub_1C6B10A98(0, &qword_1EDCE7910);
        sub_1C6D79E60();
        v26 = v68;
        v25 = v69;
        v27 = MEMORY[0x1E69E6158];
        *(v24 + 56) = MEMORY[0x1E69E6158];
        v28 = sub_1C6B2064C();
        *(v24 + 64) = v28;
        *(v24 + 32) = v26;
        *(v24 + 40) = v25;
        v68 = 0;
        *&v69 = 0xE000000000000000;
        v29 = v66;
        v71[7] = v66;
        sub_1C6B10A98(0, &qword_1EDCEA410);
        sub_1C6D79E60();
        v30 = v68;
        v31 = v69;
        *(v24 + 96) = v27;
        *(v24 + 104) = v28;
        *(v24 + 72) = v30;
        *(v24 + 80) = v31;
        sub_1C6D78D30();

        v7 = 0;
        v32 = 1;
        v12 = v52;
        v13 = v51;
        v21 = v67;
        v18 = v65;
      }

      else
      {
        v32 = 0;
      }

      (*v57)(v12, v32, 1, v13);
      __swift_destroy_boxed_opaque_existential_1(v71);
      if ((*v56)(v12, 1, v13) == 1)
      {
        sub_1C6C292B8(v12);
      }

      else
      {
        v33 = *v55;
        (*v55)(v59, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1C6B66A28(0, v21[2] + 1, 1, v21);
        }

        v35 = v21[2];
        v34 = v21[3];
        v36 = v49;
        if (v35 >= v34 >> 1)
        {
          v37 = sub_1C6B66A28(v34 > 1, v35 + 1, 1, v21);
          v36 = v49;
          v21 = v37;
        }

        v21[2] = v35 + 1;
        v33(v21 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35, v59, v13);
      }

      v20 += 40;
      --v18;
    }

    while (v18);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1C6B96AD0(v21, 1, 0, v48);
  if (!v7)
  {

    v38 = sub_1C6D787E0();
    v39 = sub_1C6B68E34(v38);

    v40 = sub_1C6CC6EBC(v39, v62);

    if (v40)
    {
      return result;
    }

    if (qword_1EDCE2360 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1C6D7E630;
    v43 = sub_1C6D787E0();
    v44 = v62;

    sub_1C6CC7264(v43, v44);

    sub_1C6D783E0();
    sub_1C6CC7CE0(&qword_1EDCE7A68);
    v45 = sub_1C6D79970();
    v47 = v46;

    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1C6B2064C();
    *(v42 + 32) = v45;
    *(v42 + 40) = v47;
    sub_1C6D78D30();
  }
}

void sub_1C6CC6AE0()
{
  if (!qword_1EDCEA310)
  {
    sub_1C6D78810();
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA310);
    }
  }
}

uint64_t NewsAppFeatureResolvers.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t NewsAppFeatureResolvers.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CC6BB4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1C6D783E0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1C6C07864();
  result = sub_1C6D79D30();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1C6CC7CE0(&qword_1EDCE7A68);
    result = sub_1C6D79500();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C6CC6EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v16 = a2 + 56;
  v17 = 1 << *(a2 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a2 + 56);
  v41 = v5 + 32;
  v42 = (v17 + 63) >> 6;
  v45 = a1 + 56;
  v46 = v5 + 16;
  v47 = (v5 + 8);

  v21 = 0;
  v36 = a2 + 56;
  v37 = v14;
  v40 = a2;
  v38 = v5;
  v22 = v42;
  if (v19)
  {
    while (1)
    {
      v23 = v21;
LABEL_11:
      v24 = *(v5 + 72);
      v25 = *(a2 + 48) + v24 * (__clz(__rbit64(v19)) | (v23 << 6));
      v43 = *(v5 + 16);
      v44 = v24;
      v43(v14, v25, v4);
      (*(v5 + 32))(v11, v14, v4);
      v26 = *(a1 + 16);
      v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v27 = v11;
      if (!v26)
      {
        break;
      }

      v28 = *(a1 + 40);
      sub_1C6CC7CE0(&qword_1EDCE7A68);
      v29 = sub_1C6D79500();
      v30 = -1 << *(a1 + 32);
      v31 = v29 & ~v30;
      if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        break;
      }

      v32 = a1;
      v19 &= v19 - 1;
      v33 = ~v30;
      while (1)
      {
        v43(v8, *(v32 + 48) + v31 * v44, v4);
        sub_1C6CC7CE0(&qword_1EDCE5D20);
        v34 = sub_1C6D79560();
        v35 = *v47;
        (*v47)(v8, v4);
        if (v34)
        {
          break;
        }

        v31 = (v31 + 1) & v33;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          v35(v27, v4);
          goto LABEL_19;
        }
      }

      v11 = v27;
      result = (v35)(v27, v4);
      v21 = v23;
      a2 = v40;
      a1 = v32;
      v14 = v37;
      v5 = v38;
      v16 = v36;
      v22 = v42;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

    (*v47)(v27, v4);
LABEL_19:
    v15 = 0;
LABEL_21:

    return v15;
  }

LABEL_8:
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      v15 = 1;
      goto LABEL_21;
    }

    v19 = *(v16 + 8 * v23);
    ++v21;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6CC7264(uint64_t a1, uint64_t a2)
{
  v67[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1C6D783E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v61 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v53 - v9;
  MEMORY[0x1EEE9AC00](v11);
  i = v53 - v12;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_31;
  }

  v67[0] = a1;
  v13 = *(a1 + 16);

  v55 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v57 = a1;
  v58 = a1 + ((v17 + 32) & ~v17);
  v64 = *(v15 + 56);
  v65 = v16;
  v62 = (a2 + 56);
  v63 = a2;
  v66 = v15;
  v18 = (v15 - 8);
  v54 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v59 = v14 + 1;
    v67[1] = v14 + 1;
    v65(i, v58 + v64 * v14, v4);
    v19 = *(a2 + 40);
    v56 = sub_1C6CC7CE0(&qword_1EDCE7A68);
    v20 = sub_1C6D79500();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v62[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v59;
    if (v59 == v55)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v65(v10, *(v63 + 48) + v22 * v64, v4);
    sub_1C6CC7CE0(&qword_1EDCE5D20);
    v26 = sub_1C6D79560();
    v27 = *v18;
    (*v18)(v10, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v62[v22 >> 6]) == 0)
    {
      a2 = v63;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v63;
  v30 = *(v63 + 32);
  v53[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v53[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v53[1] = v53;
    MEMORY[0x1EEE9AC00](v28);
    v33 = v53 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v62, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v54 = v33;
    v55 = (v34 - 1);
    v35 = *(v57 + 16);
    v36 = v59;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_1C6CC6BB4(v54, v53[0], v55, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v57 + 16))
      {
        break;
      }

      v59 = v36;
      v65(v61, v58 + v36 * v64, v4);
      v38 = *(v29 + 40);
      v39 = sub_1C6D79500();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v62[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v65(v10, *(v63 + 48) + v22 * v64, v4);
      v41 = sub_1C6D79560();
      v27(v10, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v62[v22 >> 6]) == 0)
          {
            break;
          }

          v65(v10, *(v63 + 48) + v22 * v64, v4);
          v43 = sub_1C6D79560();
          v27(v10, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v61, v4);
        v29 = v63;
LABEL_16:
        v37 = v59;
        goto LABEL_17;
      }

LABEL_25:
      v27(v61, v4);
      v44 = v54[v24];
      v54[v24] = v44 & ~v23;
      v29 = v63;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v55 - 1;
      v37 = v59;
      if (__OFSUB__(v55, 1))
      {
        goto LABEL_33;
      }

      --v55;
      if (!v45)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v31;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v63;

      v29 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v49);
  sub_1C6CC78FC(v51, v53[0], v63, v22, v67);
  a2 = v52;

  MEMORY[0x1CCA57100](v51, -1, -1);
LABEL_30:

LABEL_31:
  v46 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1C6CC78FC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = sub_1C6D783E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v37 - v15;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    sub_1C6CC6BB4(v38, v37, v39, a3);
    return;
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9, v17);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_1C6CC7CE0(&qword_1EDCE7A68);
    v27 = sub_1C6D79500();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_5:
      v23(v50, v9);
      goto LABEL_6;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      (v46)(v13, *(v32 + 48) + v29 * v47, v9);
      sub_1C6CC7CE0(&qword_1EDCE5D20);
      v34 = sub_1C6D79560();
      v23 = *v49;
      (*v49)(v13, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_5;
      }
    }

    v23(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_6:
      v10 = v43;
      goto LABEL_7;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_20;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return;
    }

LABEL_7:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1C6CC7CE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C6D783E0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  sub_1C6B3E190(v1 + *(v7 + 28), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared()
{
  result = qword_1EDCE3448;
  if (!qword_1EDCE3448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  v3 = a1 + *(v2 + 24);
  sub_1C6D78A30();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared() + 28);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6CC8058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  sub_1C6B3E190(a1 + *(v8 + 28), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6CC81E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared() + 28);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared() + 28);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  sub_1C6B3E190(v0 + *(v5 + 28), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared() + 28);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared() + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared() + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6CC8838()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D92B8);
  __swift_project_value_buffer(v0, qword_1EC1D92B8);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D807C0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  v13 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v13 = "type";
  *(v13 + 8) = 4;
  *(v13 + 16) = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B60 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D92B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.decodeMessage<A>(decoder:)()
{
  result = sub_1C6D78AD0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1C6CC9658();
          sub_1C6D78B00();
          break;
        case 2:
          sub_1C6CC8BF8();
          break;
        case 1:
          sub_1C6D78B50();
          break;
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6CC8BF8()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared() + 28);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6CC98C0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6CC8D98(v0);
    if (!v1)
    {
      if (*(v0 + 8))
      {
        v4 = *(v0 + 8);
        v5 = *(v0 + 16);
        sub_1C6CC9658();
        sub_1C6D78C70();
      }

      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared() + 24);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CC8D98(uint64_t a1)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  sub_1C6B3E190(a1 + *(v11 + 28), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B3E224(v5);
  }

  sub_1C6B3E2B0(v5, v10);
  sub_1C6CC98C0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  sub_1C6CC98C0(&qword_1EC1D92D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC9028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = a2 + *(a1 + 24);
  sub_1C6D78A30();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1C6CC9104(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CC98C0(&qword_1EC1D92F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CC9180@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B60 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D92B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CC9228(uint64_t a1)
{
  v2 = sub_1C6CC98C0(&qword_1EC1D7638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CC9294()
{
  sub_1C6CC98C0(&qword_1EC1D7638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventArticleSharedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  sub_1C6B3FB88();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  v19 = *(v18 + 28);
  v20 = *(v14 + 48);
  sub_1C6B3E190(a1 + v19, v17);
  sub_1C6B3E190(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
LABEL_11:
    v25 = 0;
    return v25 & 1;
  }

  sub_1C6B3E2B0(&v17[v20], v8);
  v22 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v23 = *(a2 + 16);
  if (!sub_1C6B69164(*(a1 + 8), *(a1 + 16), *(a2 + 8)))
  {
    goto LABEL_11;
  }

  v24 = *(v18 + 24);
  sub_1C6D78A40();
  sub_1C6CC98C0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  v25 = sub_1C6D79560();
  return v25 & 1;
}

unint64_t sub_1C6CC9658()
{
  result = qword_1EC1D92D0;
  if (!qword_1EC1D92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D92D0);
  }

  return result;
}

void sub_1C6CC97F4()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6B3FCC8(319, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6CC98C0(unint64_t *a1, void (*a2)(uint64_t))
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

NewsPersonalization::AutoFavoritesServiceConfiguration::LocalNewsSearchOption_optional __swiftcall AutoFavoritesServiceConfiguration.LocalNewsSearchOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C6D79F50();

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

uint64_t AutoFavoritesServiceConfiguration.LocalNewsSearchOption.rawValue.getter()
{
  if (*v0)
  {
    result = 7105633;
  }

  else
  {
    result = 0x77654E656C707061;
  }

  *v0;
  return result;
}

uint64_t sub_1C6CC99B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7105633;
  }

  else
  {
    v4 = 0x77654E656C707061;
  }

  if (v3)
  {
    v5 = 0xEE006C61636F4C73;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7105633;
  }

  else
  {
    v6 = 0x77654E656C707061;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xEE006C61636F4C73;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();
  }

  return v9 & 1;
}

uint64_t sub_1C6CC9A60()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC9AE8()
{
  *v0;
  sub_1C6D79610();
}

uint64_t sub_1C6CC9B5C()
{
  v1 = *v0;
  sub_1C6D7A260();
  sub_1C6D79610();

  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CC9BE0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C6D79F50();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1C6CC9C40(uint64_t *a1@<X8>)
{
  v2 = 7105633;
  if (!*v1)
  {
    v2 = 0x77654E656C707061;
  }

  v3 = 0xEE006C61636F4C73;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C6CC9D78(uint64_t a1, char a2)
{
  v2 = a1;
  if ((a2 & 1) != 0 || a1 < 0)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C6D7EB10;
    sub_1C6C29158();
    v4 = sub_1C6D795F0();
    v6 = v5;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1C6B2064C();
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E65A8];
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 96) = v8;
    *(v3 + 104) = v9;
    v2 = 15;
    *(v3 + 64) = v7;
    *(v3 + 72) = 15;
    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

  return v2;
}

uint64_t sub_1C6CC9EA0(uint64_t a1, char a2)
{
  v2 = a1;
  if ((a2 & 1) != 0 || a1 < 0)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C6D7EB10;
    sub_1C6C29158();
    v4 = sub_1C6D795F0();
    v6 = v5;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1C6B2064C();
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E65A8];
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 96) = v8;
    *(v3 + 104) = v9;
    v2 = 500;
    *(v3 + 64) = v7;
    *(v3 + 72) = 500;
    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

  return v2;
}

uint64_t sub_1C6CC9FC8(uint64_t a1, char a2)
{
  v2 = a1;
  if ((a2 & 1) != 0 || a1 <= -2)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C6D7EB10;
    sub_1C6C29158();
    v4 = sub_1C6D795F0();
    v6 = v5;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1C6B2064C();
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E65A8];
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 96) = v8;
    *(v3 + 104) = v9;
    v2 = 100;
    *(v3 + 64) = v7;
    *(v3 + 72) = 100;
    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

  return v2;
}

uint64_t sub_1C6CCA0F4(uint64_t a1, char a2)
{
  v2 = a1;
  if ((a2 & 1) != 0 || a1 < 0)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C6D7EB10;
    sub_1C6C29158();
    v4 = sub_1C6D795F0();
    v6 = v5;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1C6B2064C();
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E65A8];
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 96) = v8;
    *(v3 + 104) = v9;
    v2 = 13;
    *(v3 + 64) = v7;
    *(v3 + 72) = 13;
    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

  return v2;
}

uint64_t sub_1C6CCA21C(uint64_t a1, char a2)
{
  v2 = a1;
  if ((a2 & 1) != 0 || a1 < 0)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C6D7EB10;
    sub_1C6C29158();
    v4 = sub_1C6D795F0();
    v6 = v5;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1C6B2064C();
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E65A8];
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 96) = v8;
    *(v3 + 104) = v9;
    v2 = 2;
    *(v3 + 64) = v7;
    *(v3 + 72) = 2;
    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

  return v2;
}

uint64_t sub_1C6CCA344(uint64_t a1, char a2)
{
  v2 = a1;
  if ((a2 & 1) != 0 || a1 < 0)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C6D7EB10;
    sub_1C6C29158();
    v4 = sub_1C6D795F0();
    v6 = v5;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1C6B2064C();
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E65A8];
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 96) = v8;
    *(v3 + 104) = v9;
    v2 = 5;
    *(v3 + 64) = v7;
    *(v3 + 72) = 5;
    sub_1C6D79AC0();
    sub_1C6D78D30();
  }

  return v2;
}

uint64_t AutoFavoritesServiceConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CCACB8(0, &qword_1EDCDF610, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v35 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CCA820();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v56 = 0;
    sub_1C6CCA874();
    sub_1C6D79F90();
    v12 = v57;
    v13 = v57 == 2;
    v55 = 1;
    v14 = sub_1C6D79F80();
    LODWORD(v47) = v15;
    v48 = v14;
    v54 = 2;
    v16 = sub_1C6D79F80();
    LODWORD(v45) = v17;
    v46 = v16;
    v53 = 3;
    v18 = sub_1C6D79F80();
    v43 = v19;
    v44 = v18;
    v52 = 4;
    v20 = sub_1C6D79F80();
    v41 = v21;
    v42 = v20;
    v51 = 5;
    v22 = sub_1C6D79F80();
    v39 = v23;
    v40 = v22;
    v50 = 6;
    v24 = sub_1C6D79F80();
    v37 = v25;
    v38 = v24;
    v49 = 7;
    v26 = sub_1C6D79F80();
    v36 = (v13 | v12) & 1;
    v29 = v28;
    v35 = v26;
    v48 = sub_1C6CC9D78(v48, v47 & 1);
    v47 = sub_1C6CC9EA0(v46, v45 & 1);
    v46 = sub_1C6CC9FC8(v44, v43 & 1);
    v45 = sub_1C6CCA0F4(v42, v41 & 1);
    v30 = sub_1C6CCA344(v40, v39 & 1);
    v31 = sub_1C6CCA21C(v38, v37 & 1);
    v32 = sub_1C6CCA344(v35, v29 & 1);
    (*(v7 + 8))(v10, v6);
    *a2 = v36;
    v33 = v47;
    *(a2 + 8) = v48;
    *(a2 + 16) = v33;
    v34 = v45;
    *(a2 + 24) = v46;
    *(a2 + 32) = v34;
    *(a2 + 40) = v30;
    *(a2 + 48) = v31;
    *(a2 + 56) = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C6CCA820()
{
  result = qword_1EDCE0548;
  if (!qword_1EDCE0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0548);
  }

  return result;
}

unint64_t sub_1C6CCA874()
{
  result = qword_1EDCE0550;
  if (!qword_1EDCE0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0550);
  }

  return result;
}

unint64_t sub_1C6CCA8C8()
{
  v1 = *v0;
  v2 = 0xD000000000000018;
  if (v1 == 6)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 5u)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000017;
  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  *v0;
  if (*v0 <= 1u)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 3u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C6CCA99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6CCBED0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6CCA9D0(uint64_t a1)
{
  v2 = sub_1C6CCA820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6CCAA0C(uint64_t a1)
{
  v2 = sub_1C6CCA820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoFavoritesServiceConfiguration.encode(to:)(void *a1)
{
  sub_1C6CCACB8(0, &qword_1EC1D92F8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v17[4] = *(v1 + 2);
  v17[5] = v10;
  v11 = *(v1 + 3);
  v17[2] = *(v1 + 4);
  v17[3] = v11;
  v12 = *(v1 + 5);
  v17[0] = *(v1 + 6);
  v17[1] = v12;
  v13 = *(v1 + 7);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CCA820();
  sub_1C6D7A300();
  v26 = v9;
  v25 = 0;
  sub_1C6CCAD1C();
  v15 = v17[6];
  sub_1C6D7A090();
  if (!v15)
  {
    v24 = 1;
    sub_1C6D7A080();
    v23 = 2;
    sub_1C6D7A080();
    v22 = 3;
    sub_1C6D7A080();
    v21 = 4;
    sub_1C6D7A080();
    v20 = 5;
    sub_1C6D7A080();
    v19 = 6;
    sub_1C6D7A080();
    v18 = 7;
    sub_1C6D7A080();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1C6CCACB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6CCA820();
    v7 = a3(a1, &type metadata for AutoFavoritesServiceConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C6CCAD1C()
{
  result = qword_1EC1D9300;
  if (!qword_1EC1D9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9300);
  }

  return result;
}

unint64_t sub_1C6CCAD74()
{
  result = qword_1EC1D9308;
  if (!qword_1EC1D9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9308);
  }

  return result;
}

uint64_t sub_1C6CCADF8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C6CCAE3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C6CCAEB0(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C6CCAED0, 0, 0);
}

uint64_t sub_1C6CCAED0()
{
  v1 = *(*(v0 + 192) + 16);
  ObjectType = swift_getObjectType();
  v3 = *(MEMORY[0x1E69B68C0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_1C6CCAF7C;

  return MEMORY[0x1EEE22AF0](0, ObjectType);
}

uint64_t sub_1C6CCAF7C(uint64_t a1)
{
  v3 = *(*v2 + 200);
  v4 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6CCB0B0, 0, 0);
  }
}

uint64_t sub_1C6CCB0B0()
{
  if (([*(v0 + 208) respondsToSelector_] & 1) != 0 && (v1 = objc_msgSend(*(v0 + 208), sel_autoFavoritesServiceConfigurationJSONData)) != 0)
  {
    v2 = *(v0 + 216);
    v3 = v1;
    v4 = sub_1C6D75E60();
    v6 = v5;

    v7 = sub_1C6D75B10();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6CCC164();
    sub_1C6D75AF0();
    if (v2)
    {
      v24 = v6;

      if (qword_1EDCE23B8 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 208);
      v11 = *(v0 + 184);
      sub_1C6D79AA0();
      sub_1C6B1D314();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1C6D7E630;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0xE000000000000000;
      *(v0 + 176) = v2;
      sub_1C6B10A98(0, &qword_1EDCEA410);
      sub_1C6D79E60();
      v14 = *(v0 + 144);
      v13 = *(v0 + 152);
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1C6B2064C();
      *(v12 + 32) = v14;
      *(v12 + 40) = v13;
      sub_1C6D78D30();
      sub_1C6B1C9F0(v4, v24);

      swift_unknownObjectRelease();

      *v11 = 1;
      *(v11 + 8) = xmmword_1C6D91C80;
      *(v11 + 24) = xmmword_1C6D91C90;
      *(v11 + 40) = 5;
      *(v11 + 48) = xmmword_1C6D91CA0;
    }

    else
    {

      v25 = *(v0 + 16);
      v26 = *(v0 + 32);
      v27 = *(v0 + 48);
      v28 = *(v0 + 64);
      if (qword_1EDCE23B8 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 208);
      v20 = *(v0 + 184);
      sub_1C6B1D314();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1C6D7E630;
      *(v0 + 160) = 0;
      *(v0 + 168) = 0xE000000000000000;
      *(v0 + 80) = v25;
      *(v0 + 96) = v26;
      *(v0 + 112) = v27;
      *(v0 + 128) = v28;
      sub_1C6D79E60();
      v22 = *(v0 + 160);
      v23 = *(v0 + 168);
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1C6B2064C();
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      sub_1C6D79AC0();
      sub_1C6D78D30();
      sub_1C6B1C9F0(v4, v6);
      swift_unknownObjectRelease();

      *v20 = v25;
      v20[1] = v26;
      v20[2] = v27;
      v20[3] = v28;
    }
  }

  else
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 208);
    v16 = *(v0 + 184);
    sub_1C6D79AC0();
    sub_1C6D78D30();
    swift_unknownObjectRelease();
    *v16 = 1;
    *(v16 + 8) = xmmword_1C6D91C80;
    *(v16 + 24) = xmmword_1C6D91C90;
    *(v16 + 40) = 5;
    *(v16 + 48) = xmmword_1C6D91CA0;
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1C6CCB4F8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BE1AB0;

  return sub_1C6CCAEB0(a1);
}

uint64_t sub_1C6CCB594(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C6CCB5B4, 0, 0);
}

uint64_t sub_1C6CCB5B4()
{
  v1 = *(*(v0 + 192) + 16);
  ObjectType = swift_getObjectType();
  v3 = *(MEMORY[0x1E69B68C0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_1C6CCB660;

  return MEMORY[0x1EEE22AF0](0, ObjectType);
}

uint64_t sub_1C6CCB660(uint64_t a1)
{
  v3 = *(*v2 + 200);
  v4 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6CCB794, 0, 0);
  }
}

uint64_t sub_1C6CCB794()
{
  if (([*(v0 + 208) respondsToSelector_] & 1) != 0 && (v1 = objc_msgSend(*(v0 + 208), sel_recipeAutoFavoritesServiceConfigurationJSONData)) != 0)
  {
    v2 = *(v0 + 216);
    v3 = v1;
    v4 = sub_1C6D75E60();
    v6 = v5;

    v7 = sub_1C6D75B10();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6CCC164();
    sub_1C6D75AF0();
    if (v2)
    {
      v24 = v6;

      if (qword_1EDCE23B8 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 208);
      v11 = *(v0 + 184);
      sub_1C6D79AA0();
      sub_1C6B1D314();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1C6D7E630;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0xE000000000000000;
      *(v0 + 176) = v2;
      sub_1C6B10A98(0, &qword_1EDCEA410);
      sub_1C6D79E60();
      v14 = *(v0 + 144);
      v13 = *(v0 + 152);
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1C6B2064C();
      *(v12 + 32) = v14;
      *(v12 + 40) = v13;
      sub_1C6D78D30();
      sub_1C6B1C9F0(v4, v24);

      swift_unknownObjectRelease();

      *v11 = 1;
      *(v11 + 8) = xmmword_1C6D91C80;
      *(v11 + 24) = xmmword_1C6D91C90;
      *(v11 + 40) = xmmword_1C6D91CB0;
      *(v11 + 56) = 5;
    }

    else
    {

      v25 = *(v0 + 16);
      v26 = *(v0 + 32);
      v27 = *(v0 + 48);
      v28 = *(v0 + 64);
      if (qword_1EDCE23B8 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 208);
      v20 = *(v0 + 184);
      sub_1C6B1D314();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1C6D7E630;
      *(v0 + 160) = 0;
      *(v0 + 168) = 0xE000000000000000;
      *(v0 + 80) = v25;
      *(v0 + 96) = v26;
      *(v0 + 112) = v27;
      *(v0 + 128) = v28;
      sub_1C6D79E60();
      v22 = *(v0 + 160);
      v23 = *(v0 + 168);
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1C6B2064C();
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      sub_1C6D79AC0();
      sub_1C6D78D30();
      sub_1C6B1C9F0(v4, v6);
      swift_unknownObjectRelease();

      *v20 = v25;
      v20[1] = v26;
      v20[2] = v27;
      v20[3] = v28;
    }
  }

  else
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 208);
    v16 = *(v0 + 184);
    sub_1C6D79AC0();
    sub_1C6D78D30();
    swift_unknownObjectRelease();
    *v16 = 1;
    *(v16 + 8) = xmmword_1C6D91C80;
    *(v16 + 24) = xmmword_1C6D91C90;
    *(v16 + 40) = xmmword_1C6D91CB0;
    *(v16 + 56) = 5;
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t getEnumTagSinglePayload for AutoFavoritesServiceConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AutoFavoritesServiceConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6CCBD30()
{
  result = qword_1EC1D9310;
  if (!qword_1EC1D9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9310);
  }

  return result;
}

uint64_t sub_1C6CCBD84(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BB6A40;

  return sub_1C6CCB594(a1);
}

unint64_t sub_1C6CCBE24()
{
  result = qword_1EDCE0538;
  if (!qword_1EDCE0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0538);
  }

  return result;
}

unint64_t sub_1C6CCBE7C()
{
  result = qword_1EDCE0540;
  if (!qword_1EDCE0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0540);
  }

  return result;
}

uint64_t sub_1C6CCBED0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C6DA58E0 == a2;
  if (v3 || (sub_1C6D7A130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C6DA5900 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C6DA5920 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C6DA5940 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C6DA5960 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C6DA5980 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C6DA59A0 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C6DA59C0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C6D7A130();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1C6CCC164()
{
  result = qword_1EDCE0528;
  if (!qword_1EDCE0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE0528);
  }

  return result;
}

unint64_t sub_1C6CCC1B8()
{
  result = qword_1EC1D9320;
  if (!qword_1EC1D9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9320);
  }

  return result;
}

uint64_t sub_1C6CCC230()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v0[5] = (*(v3 + 24))(v2, v3);
  v4 = *(MEMORY[0x1E69D6B08] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1C6CCC30C;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1C6CCC30C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1C6CCCBC8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1C6CCCBD4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C6CCC428()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6CCCBD0;

  return sub_1C6CCC210();
}

uint64_t sub_1C6CCC4D8()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v0[5] = (*(v3 + 32))(v2, v3);
  v4 = *(MEMORY[0x1E69D6B08] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1C6CCC5B4;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1C6CCC5B4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1C6CCC918;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1C6CCC6D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C6CCC6D0()
{
  v1 = v0[3];
  v29 = v0[2];
  v2 = *(v29 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v27 = v0[3];
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C6B397D4(0, v2, 0);
    v4 = 0;
    v5 = v30;
    v6 = *(v30 + 16);
    v7 = 24 * v6;
    do
    {
      v8 = *(v29 + v4 + 32);
      v9 = *(v29 + v4 + 40);
      v10 = *(v29 + v4 + 48);
      v11 = v6 + 1;
      v12 = *(v30 + 24);

      if (v6 >= v12 >> 1)
      {
        sub_1C6B397D4((v12 > 1), v11, 1);
      }

      *(v30 + 16) = v11;
      v13 = v30 + v7 + v4;
      *(v13 + 32) = v8;
      *(v13 + 40) = v9;
      *(v13 + 48) = v10;
      v4 += 24;
      ++v6;
      --v2;
    }

    while (v2);
    v1 = v27;
    v3 = MEMORY[0x1E69E7CC0];
    v14 = *(v27 + 16);
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_13:

    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v14 = *(v1 + 16);
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_7:
  v31 = v3;
  sub_1C6B397D4(0, v14, 0);
  v15 = 0;
  v16 = v31;
  v17 = *(v31 + 16);
  v28 = 24 * v17;
  do
  {
    v18 = v1;
    v19 = v1 + v15;
    v20 = *(v1 + v15 + 32);
    v21 = *(v19 + 40);
    v22 = *(v19 + 48);
    v23 = *(v31 + 24);

    if (v17 >= v23 >> 1)
    {
      sub_1C6B397D4((v23 > 1), v17 + 1, 1);
    }

    *(v31 + 16) = v17 + 1;
    v24 = v31 + v28 + v15;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 48) = v22;
    v15 += 24;
    ++v17;
    --v14;
    v1 = v18;
  }

  while (v14);

LABEL_14:
  v25 = v0[1];

  return v25(v5, v16);
}

uint64_t sub_1C6CCC918()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1C6CCC97C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6CCCA0C;

  return sub_1C6CCC4B8();
}

uint64_t sub_1C6CCCA0C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C6CCCB30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1C6CCCB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1C6CCCBD8(uint64_t a1, uint64_t a2, void *a3)
{
  v195 = a3;
  v188 = a2;
  v187 = a1;
  v175 = sub_1C6D76BE0();
  v174 = *(v175 - 8);
  v4 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CCF130(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v167 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CCF164(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v190 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1C6D770A0();
  v192 = *(v193 - 8);
  v12 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v169 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CCF198(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v181 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v178 = &v164 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v164 - v20;
  v21 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v196 = *(v21 - 8);
  v22 = *(v196 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v180 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v177 = &v164 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v185 = &v164 - v27;
  v28 = sub_1C6D77050();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v172 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v182 = &v164 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v179 = &v164 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v170 = &v164 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v171 = &v164 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v176 = &v164 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v165 = &v164 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v166 = &v164 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v183 = &v164 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v184 = &v164 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v164 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v164 - v54;
  v56 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v189 = v3;
  v57 = *(v3 + v56);
  swift_beginAccess();
  v58 = v57[3];
  v59 = v57[4];
  v197 = v57;

  sub_1C6D76FF0();

  v60 = sub_1C6B670DC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v62 = *(v60 + 2);
  v61 = *(v60 + 3);
  v191 = v21;
  if (v62 >= v61 >> 1)
  {
    v60 = sub_1C6B670DC(v61 > 1, v62 + 1, 1, v60);
  }

  *(v60 + 2) = v62 + 1;
  v168 = v29;
  v64 = *(v29 + 32);
  v63 = v29 + 32;
  v65 = (*(v63 + 48) + 32) & ~*(v63 + 48);
  v66 = *(v63 + 40);
  v199 = v64;
  v64(&v60[v65 + v66 * v62], v55, v28);
  v207 = v60;
  v67 = v197;
  swift_beginAccess();
  v68 = v67[2];
  v69 = *(v68 + 16);
  v70 = MEMORY[0x1E69E7CC0];
  v198 = v28;
  if (v69)
  {
    v204 = MEMORY[0x1E69E7CC0];

    sub_1C6B39974(0, v69, 0);
    v70 = v204;
    v194 = v68;
    v71 = (v68 + 40);
    do
    {
      v72 = *(v71 - 1);
      v73 = *v71;

      sub_1C6D76FF0();

      v204 = v70;
      v75 = *(v70 + 16);
      v74 = *(v70 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1C6B39974(v74 > 1, v75 + 1, 1);
        v70 = v204;
      }

      *(v70 + 16) = v75 + 1;
      v28 = v198;
      v199(v70 + v65 + v75 * v66, v53, v198);
      v71 += 2;
      --v69;
    }

    while (v69);
  }

  sub_1C6B39018(v70);
  v76 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  v77 = v197;
  swift_beginAccess();
  v78 = v77 + v76;
  v79 = v186;
  sub_1C6CCF1F0(v78, v186, sub_1C6CCF198);
  v80 = v196 + 48;
  v81 = *(v196 + 48);
  v82 = v191;
  if (v81(v79, 1, v191) == 1)
  {
    v83 = v185;
    *(v185 + 3) = 0;
    *v83 = 0;
    v84 = v83 + *(v82 + 44);
    sub_1C6D78A30();
    if (v81(v79, 1, v82) != 1)
    {
      sub_1C6CCF09C(v79, sub_1C6CCF198);
    }
  }

  else
  {
    v83 = v185;
    sub_1C6CCF258(v79, v185, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  v85 = *(v83 + 3);
  sub_1C6CCF09C(v83, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v196 = v80;
  v194 = v76;
  if (v85)
  {
    sub_1C6D77000();
    v86 = v207;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_1C6B670DC(0, *(v86 + 2) + 1, 1, v86);
    }

    v88 = *(v86 + 2);
    v87 = *(v86 + 3);
    v89 = v88 + 1;
    if (v88 >= v87 >> 1)
    {
      v86 = sub_1C6B670DC(v87 > 1, v88 + 1, 1, v86);
    }

    v90 = &v206;
  }

  else
  {
    sub_1C6D77040();
    v86 = v207;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_1C6B670DC(0, *(v86 + 2) + 1, 1, v86);
    }

    v88 = *(v86 + 2);
    v91 = *(v86 + 3);
    v89 = v88 + 1;
    if (v88 >= v91 >> 1)
    {
      v86 = sub_1C6B670DC(v91 > 1, v88 + 1, 1, v86);
    }

    v90 = &v205;
  }

  v92 = *(v90 - 32);
  *(v86 + 2) = v89;
  v93 = (v199)(&v86[v65 + v88 * v66], v92, v28);
  v207 = v86;
  v94 = v197;
  v95 = v197[2];
  MEMORY[0x1EEE9AC00](v93);
  v96 = v188;
  *(&v164 - 6) = v187;
  *(&v164 - 5) = v96;
  v97 = v195;
  *(&v164 - 4) = v189;
  *(&v164 - 3) = v97;
  *(&v164 - 2) = &v207;

  sub_1C6D42A1C(sub_1C6CCF1CC, (&v164 - 8), v95);

  v98 = &v94[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
  swift_beginAccess();
  v99 = v192;
  if (v98[8] != 1 || (v100 = *v98, (*v98 - 26) < 0x38) || ((1 << v100) & 0x1FFFFDF) != 0)
  {
    v101 = v190;
    (*(v192 + 56))(v190, 1, 1, v193);
    v102 = sub_1C6CCF164;
LABEL_28:
    sub_1C6CCF09C(v101, v102);
    goto LABEL_29;
  }

  v155 = v100 == 5;
  v156 = MEMORY[0x1E69E3970];
  if (v155)
  {
    v156 = MEMORY[0x1E69E39C8];
  }

  v157 = v190;
  v158 = v193;
  (*(v192 + 104))(v190, *v156, v193);
  (*(v99 + 56))(v157, 0, 1, v158);
  v159 = v169;
  (*(v99 + 32))(v169, v157, v158);
  v101 = v167;
  sub_1C6D77010();
  v94 = v168;
  if ((*(v168 + 48))(v101, 1, v28) == 1)
  {
    (*(v99 + 8))(v159, v193);
    v102 = sub_1C6CCF130;
    goto LABEL_28;
  }

  v160 = v166;
  v199(v166, v101, v28);
  v161 = *(v94 + 2);
  v94 = v165;
  v161(v165, v160, v28);
  v101 = v207;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v101 = sub_1C6B670DC(0, *(v101 + 2) + 1, 1, v101);
  }

  v163 = *(v101 + 2);
  v162 = *(v101 + 3);
  if (v163 >= v162 >> 1)
  {
    v101 = sub_1C6B670DC(v162 > 1, v163 + 1, 1, v101);
  }

  (*(v168 + 8))(v166, v28);
  (*(v192 + 8))(v169, v193);
  *(v101 + 2) = v163 + 1;
  v199(&v101[v65 + v163 * v66], v94, v28);
  v207 = v101;
LABEL_29:
  v103 = [v195 articleLengthMediumThreshold];
  if (!HIDWORD(v103))
  {
LABEL_33:
    v101 = v103;
    goto LABEL_34;
  }

  v103 = [objc_opt_self() defaultArticleLengthMediumThreshold];
  if ((v103 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_96;
  }

  v101 = v103;
  if (HIDWORD(v103))
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_34:
  v104 = [v195 articleLengthLongThreshold];
  if (!HIDWORD(v104))
  {
LABEL_38:
    v105 = v104;
    goto LABEL_39;
  }

  v104 = [objc_opt_self() defaultArticleLengthLongThreshold];
  if ((v104 & 0x8000000000000000) != 0)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v105 = v104;
  if (HIDWORD(v104))
  {
    __break(1u);
    goto LABEL_38;
  }

LABEL_39:
  v106 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  v107 = v197;
  swift_beginAccess();
  v108 = *(v107 + v106);
  if (v108 && v108 < v101)
  {
    v109 = v174;
    v110 = v173;
    v111 = v175;
    (*(v174 + 104))(v173, *MEMORY[0x1E69E3578], v175);
    sub_1C6D76FB0();
    (*(v109 + 8))(v110, v111);
    v112 = v207;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = sub_1C6B670DC(0, *(v112 + 2) + 1, 1, v112);
    }

    v94 = v194;
    v114 = *(v112 + 2);
    v113 = *(v112 + 3);
    if (v114 >= v113 >> 1)
    {
      v112 = sub_1C6B670DC(v113 > 1, v114 + 1, 1, v112);
    }

    *(v112 + 2) = v114 + 1;
    v115 = &v112[v65 + v114 * v66];
    v116 = &v203;
  }

  else if (v108 < v101 || v108 >= v105)
  {
    v94 = v194;
    if (v108 < v105)
    {
      goto LABEL_60;
    }

    v122 = v174;
    v123 = v173;
    v124 = v175;
    (*(v174 + 104))(v173, *MEMORY[0x1E69E3570], v175);
    sub_1C6D76FB0();
    (*(v122 + 8))(v123, v124);
    v112 = v207;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = sub_1C6B670DC(0, *(v112 + 2) + 1, 1, v112);
    }

    v126 = *(v112 + 2);
    v125 = *(v112 + 3);
    v94 = v194;
    if (v126 >= v125 >> 1)
    {
      v112 = sub_1C6B670DC(v125 > 1, v126 + 1, 1, v112);
    }

    *(v112 + 2) = v126 + 1;
    v115 = &v112[v65 + v126 * v66];
    v116 = &v201;
  }

  else
  {
    v117 = v174;
    v118 = v173;
    v119 = v175;
    (*(v174 + 104))(v173, *MEMORY[0x1E69E3580], v175);
    sub_1C6D76FB0();
    (*(v117 + 8))(v118, v119);
    v112 = v207;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = sub_1C6B670DC(0, *(v112 + 2) + 1, 1, v112);
    }

    v121 = *(v112 + 2);
    v120 = *(v112 + 3);
    v94 = v194;
    if (v121 >= v120 >> 1)
    {
      v112 = sub_1C6B670DC(v120 > 1, v121 + 1, 1, v112);
    }

    *(v112 + 2) = v121 + 1;
    v115 = &v112[v65 + v121 * v66];
    v116 = &v202;
  }

  v199(v115, *(v116 - 32), v28);
  v207 = v112;
LABEL_60:
  v127 = v178;
  sub_1C6CCF1F0(&v94[v197], v178, sub_1C6CCF198);
  v128 = v81(v127, 1, v82);
  v129 = v177;
  if (v128 == 1)
  {
    *(v177 + 3) = 0;
    *v129 = 0;
    v130 = v129 + *(v82 + 44);
    sub_1C6D78A30();
    if (v81(v127, 1, v82) != 1)
    {
      sub_1C6CCF09C(v127, sub_1C6CCF198);
    }
  }

  else
  {
    sub_1C6CCF258(v127, v177, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  v131 = *(v129 + 4);
  sub_1C6CCF09C(v129, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if (v131)
  {
    v132 = v197[3];
    v133 = v197[4];

    sub_1C6D76FD0();

    v101 = v207;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_66:
      v135 = *(v101 + 2);
      v134 = *(v101 + 3);
      if (v135 >= v134 >> 1)
      {
        v101 = sub_1C6B670DC(v134 > 1, v135 + 1, 1, v101);
      }

      *(v101 + 2) = v135 + 1;
      v199(&v101[v65 + v135 * v66], v179, v28);
      v207 = v101;
      goto LABEL_69;
    }

LABEL_97:
    v101 = sub_1C6B670DC(0, *(v101 + 2) + 1, 1, v101);
    goto LABEL_66;
  }

LABEL_69:
  v136 = v181;
  sub_1C6CCF1F0(&v94[v197], v181, sub_1C6CCF198);
  if (v81(v136, 1, v82) == 1)
  {
    v137 = v180;
    *(v180 + 3) = 0;
    *v137 = 0;
    v138 = v137 + *(v82 + 44);
    sub_1C6D78A30();
    if (v81(v136, 1, v82) != 1)
    {
      sub_1C6CCF09C(v136, sub_1C6CCF198);
    }
  }

  else
  {
    v137 = v180;
    sub_1C6CCF258(v136, v180, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  v139 = *(v137 + 5);
  sub_1C6CCF09C(v137, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if (v139)
  {
    sub_1C6D77020();
    v140 = v207;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v140 = sub_1C6B670DC(0, *(v140 + 2) + 1, 1, v140);
    }

    v142 = *(v140 + 2);
    v141 = *(v140 + 3);
    if (v142 >= v141 >> 1)
    {
      v140 = sub_1C6B670DC(v141 > 1, v142 + 1, 1, v140);
    }

    *(v140 + 2) = v142 + 1;
    v199(&v140[v65 + v142 * v66], v182, v28);
    v207 = v140;
  }

  v143 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  v144 = v197;
  swift_beginAccess();
  v145 = *(v144 + v143);
  v146 = v145[2];
  v147 = MEMORY[0x1E69E7CC0];
  if (v146)
  {
    v200 = MEMORY[0x1E69E7CC0];

    sub_1C6B39974(0, v146, 0);
    v147 = v200;
    v197 = v145;
    v148 = v145 + 5;
    v149 = v172;
    do
    {
      v150 = *(v148 - 1);
      v151 = *v148;

      sub_1C6D76FA0();

      v200 = v147;
      v153 = *(v147 + 16);
      v152 = *(v147 + 24);
      if (v153 >= v152 >> 1)
      {
        sub_1C6B39974(v152 > 1, v153 + 1, 1);
        v147 = v200;
      }

      *(v147 + 16) = v153 + 1;
      v199(v147 + v65 + v153 * v66, v149, v198);
      v148 += 2;
      --v146;
    }

    while (v146);
  }

  sub_1C6B39018(v147);
  return v207;
}

id sub_1C6CCE170(uint64_t *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, void *a5, void **a6)
{
  v34 = a6;
  v10 = sub_1C6D77050();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v17 = *a1;
  v36 = a1[1];
  v37 = v17;
  v18 = *(a4 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v20 = *(v18 + 24);
  v19 = *(v18 + 32);

  sub_1C6D76FF0();

  v21 = a2(v16);
  v35 = v11;
  v22 = *(v11 + 8);
  v22(v16, v10);
  result = [a5 publisherTopicPairPublisherEventCountThreshold];
  if (v21 >= result)
  {
    sub_1C6D76FF0();
    v24 = a2(v16);
    v22(v16, v10);
    result = [a5 publisherTopicPairTopicEventCountThreshold];
    if (v24 >= result)
    {
      v26 = *(v18 + 24);
      v25 = *(v18 + 32);

      v27 = v33;
      sub_1C6D76FC0();

      v28 = v34;
      v29 = *v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v28 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1C6B670DC(0, v29[2] + 1, 1, v29);
        *v28 = v29;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        v29 = sub_1C6B670DC(v31 > 1, v32 + 1, 1, v29);
        *v28 = v29;
      }

      v29[2] = v32 + 1;
      return (*(v35 + 32))(v29 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v32, v27, v10);
    }
  }

  return result;
}

char *sub_1C6CCE420(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CCF0FC(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - v21;
  v23 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6CCF1F0(v3 + *(v23 + 20), v14, sub_1C6CCF0FC);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1C6CCF09C(v14, sub_1C6CCF0FC);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C6CCF258(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6CCF1F0(v22, v20, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6CCF258(v20, v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v25 = sub_1C6CCCBD8(a1, a2, a3);
    sub_1C6CCF09C(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    sub_1C6CCF09C(v22, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    return v25;
  }
}

uint64_t sub_1C6CCE6B8()
{
  v1 = v0;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (&v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = (&v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CCF1F0(v1, v33, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 10)
  {
    if (EnumCaseMultiPayload > 17)
    {
      if (EnumCaseMultiPayload == 18)
      {
        sub_1C6CCF258(v33, v29, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
        v36 = *v29;
        v45 = v29[1];

        v37 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen;
        v38 = v29;
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload == 19)
      {
        sub_1C6CCF258(v33, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
        v36 = *v13;
        v40 = v13[1];

        v37 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore;
        v38 = v13;
LABEL_17:
        sub_1C6CCF09C(v38, v37);
        return v36;
      }
    }

    else if ((EnumCaseMultiPayload - 12) >= 6)
    {
      sub_1C6CCF258(v33, v5, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      v44 = *v5;
      v46 = v5[1];

      sub_1C6CCF09C(v5, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      return v44;
    }

LABEL_8:
    sub_1C6CCF09C(v33, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    return 0;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload <= 8)
  {
    if (EnumCaseMultiPayload == 7)
    {
      sub_1C6CCF258(v33, v25, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      v36 = *v25;
      v35 = v25[1];

      v37 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted;
      v38 = v25;
    }

    else
    {
      sub_1C6CCF258(v33, v21, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      v36 = *v21;
      v42 = v21[1];

      v37 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted;
      v38 = v21;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 9)
  {
    sub_1C6CCF258(v33, v17, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    v36 = *v17;
    v41 = v17[1];

    v37 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
    v38 = v17;
    goto LABEL_17;
  }

  sub_1C6CCF258(v33, v9, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  v44 = *v9;
  v43 = v9[1];

  sub_1C6CCF09C(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  return v44;
}

uint64_t sub_1C6CCEBD8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C6BED644();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v9);
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_1C6CCF09C(v9, sub_1C6BED644);
    v11 = 0;
  }

  else
  {
    v11 = sub_1C6CCE420(a1, a2, a3);
    sub_1C6CCF09C(v9, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  v42[4] = v11;
  sub_1C6CCE6B8();
  if (v12)
  {
    sub_1C6CCF038(0, &unk_1EDCDF5B8, MEMORY[0x1E69E36D8], MEMORY[0x1E69E6F90]);
    v13 = *(sub_1C6D77050() - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C6D7E630;
    sub_1C6D76FF0();
  }

  else
  {
    v16 = 0;
  }

  v17 = 0;
  v42[5] = v16;
  v18 = MEMORY[0x1E69E7CC0];
  while (v17 != 2)
  {
    v19 = &v42[v17];
    v20 = v19[4];
    ++v17;
    if (v20)
    {
      v21 = v19[4];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1C6B67110(0, v18[2] + 1, 1, v18);
      }

      v23 = v18[2];
      v22 = v18[3];
      if (v23 >= v22 >> 1)
      {
        v18 = sub_1C6B67110((v22 > 1), v23 + 1, 1, v18);
      }

      v18[2] = v23 + 1;
      v18[v23 + 4] = v20;
    }
  }

  sub_1C6CCF038(0, &unk_1EDCDFAA8, sub_1C6B68C74, MEMORY[0x1E69E6720]);
  result = swift_arrayDestroy();
  v25 = v18[2];
  if (!v25)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_34:

    return v27;
  }

  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (v26 < v18[2])
  {
    v28 = v18[v26 + 4];
    v29 = *(v28 + 16);
    v30 = v27[2];
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
      goto LABEL_36;
    }

    v32 = v18[v26 + 4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v31 <= v27[3] >> 1)
    {
      if (*(v28 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v30 <= v31)
      {
        v34 = v30 + v29;
      }

      else
      {
        v34 = v30;
      }

      v27 = sub_1C6B670DC(isUniquelyReferenced_nonNull_native, v34, 1, v27);
      if (*(v28 + 16))
      {
LABEL_29:
        v35 = (v27[3] >> 1) - v27[2];
        result = sub_1C6D77050();
        v36 = *(result - 8);
        if (v35 < v29)
        {
          goto LABEL_38;
        }

        v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v38 = *(v36 + 72);
        swift_arrayInitWithCopy();

        if (v29)
        {
          v39 = v27[2];
          v40 = __OFADD__(v39, v29);
          v41 = v39 + v29;
          if (v40)
          {
            goto LABEL_39;
          }

          v27[2] = v41;
        }

        goto LABEL_18;
      }
    }

    if (v29)
    {
      goto LABEL_37;
    }

LABEL_18:
    if (v25 == ++v26)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_1C6CCF038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6CCF09C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6CCF1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CCF258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t Com_Apple_News_Personalization_FeedType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x19;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6CCF31C@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_News_Personalization_FeedType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C6CCF344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C0FBE8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6CCF390()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE2A80);
  __swift_project_value_buffer(v0, qword_1EDCE2A80);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1C6D921D0;
  v5 = v56 + v4;
  v6 = v56 + v4 + *(v2 + 56);
  *(v56 + v4) = 0;
  *v6 = "FEED_TYPE_UNKNOWN";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v56 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "FEED_TYPE_FOR_YOU";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v56 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "FEED_TYPE_MAGAZINE";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v56 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "FEED_TYPE_MAGAZINE_CATALOG";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v56 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "FEED_TYPE_MAGAZINE_CATEGORY";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v56 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "FEED_TYPE_MAGAZINE_DOWNLOADS";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v9();
  v19 = (v56 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "FEED_TYPE_CHANNEL";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v56 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "FEED_TYPE_TOPIC";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v9();
  v23 = v56 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "FEED_TYPE_MY_MAGAZINES";
  *(v23 + 8) = 22;
  *(v23 + 16) = 2;
  v9();
  v24 = (v56 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "FEED_TYPE_EOA";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v9();
  v26 = (v56 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "FEED_TYPE_AUDIO";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v9();
  v28 = (v56 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "FEED_TYPE_AUDIO_HISTORY";
  *(v29 + 1) = 23;
  v29[16] = 2;
  v9();
  v30 = (v56 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "FEED_TYPE_AUDIO_PLAYLIST";
  *(v31 + 1) = 24;
  v31[16] = 2;
  v9();
  v32 = (v56 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "FEED_TYPE_SAVED";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v9();
  v34 = (v56 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "FEED_TYPE_HISTORY";
  *(v35 + 1) = 17;
  v35[16] = 2;
  v9();
  v36 = (v56 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "FEED_TYPE_SEARCH";
  *(v37 + 1) = 16;
  v37[16] = 2;
  v9();
  v38 = v56 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "FEED_TYPE_SEARCH_HOME";
  *(v38 + 8) = 21;
  *(v38 + 16) = 2;
  v9();
  v39 = (v56 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "FEED_TYPE_SHARED_WITH_YOU";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v9();
  v41 = (v56 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "FEED_TYPE_SPORTS";
  *(v42 + 1) = 16;
  v42[16] = 2;
  v9();
  v43 = (v56 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "FEED_TYPE_SPORTS_EVENT";
  *(v44 + 1) = 22;
  v44[16] = 2;
  v9();
  v45 = (v56 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "FEED_TYPE_PUZZLE_HUB";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v9();
  v47 = (v56 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "FEED_TYPE_PUZZLE_TYPE";
  *(v48 + 1) = 21;
  v48[16] = 2;
  v9();
  v49 = (v56 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "FEED_TYPE_RECIPE_BOX";
  *(v50 + 1) = 20;
  v50[16] = 2;
  v9();
  v51 = (v56 + v4 + 23 * v3);
  v52 = v51 + *(v2 + 56);
  *v51 = 23;
  *v52 = "FEED_TYPE_FOOD_HUB";
  *(v52 + 1) = 18;
  v52[16] = 2;
  v9();
  v53 = (v56 + v4 + 24 * v3);
  v54 = v53 + *(v2 + 56);
  *v53 = 24;
  *v54 = "FEED_TYPE_RECIPE_CATALOG";
  *(v54 + 1) = 24;
  v54[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_FeedType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE2A78 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE2A80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6CCFB54()
{
  result = qword_1EDCE2A60;
  if (!qword_1EDCE2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2A60);
  }

  return result;
}

unint64_t sub_1C6CCFBAC()
{
  result = qword_1EDCE2A50;
  if (!qword_1EDCE2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2A50);
  }

  return result;
}

unint64_t sub_1C6CCFC04()
{
  result = qword_1EC1D9328;
  if (!qword_1EC1D9328)
  {
    sub_1C6CCFC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D9328);
  }

  return result;
}

void sub_1C6CCFC5C()
{
  if (!qword_1EC1D9330)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D9330);
    }
  }
}

unint64_t sub_1C6CCFCB0()
{
  result = qword_1EDCE2A58;
  if (!qword_1EDCE2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2A58);
  }

  return result;
}

uint64_t sub_1C6CCFD04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE2A78 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE2A80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CCFDBC(uint64_t a1)
{
  v37 = sub_1C6D78F60();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = sub_1C6D79CC0();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 56) + *(v3 + 72) * v10, v37);
      v39 = sub_1C6D78F50();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1C6B39280((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1C6B360A8(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1C6B360A8(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6CD00C4()
{
  v1 = v0;
  v2 = sub_1C6D75F50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  sub_1C6CD037C();
  if (qword_1EDCE0560 != -1)
  {
    swift_once();
  }

  sub_1C6B1A5AC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6D7E630;
  sub_1C6CD21BC();
  v10 = sub_1C6D7A0E0();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1C6B2064C();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  sub_1C6B1B3FC(0, &qword_1EDCE7A70, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v3 + 32))(v14 + v13, v5, v2);

  v15 = sub_1C6D78290();
  (*(v3 + 8))(v8, v2);
  return v15;
}

uint64_t sub_1C6CD037C()
{
  v0 = NewsCoreUserDefaults();
  v1 = *MEMORY[0x1E69B5018];
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
    sub_1C6B62420(&v5, v6);
    sub_1C6CD24EC(v6, &qword_1EDCE7CC0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C6B1B3FC);
    v3 = NewsCoreUserDefaults();
    [v3 doubleForKey_];

    return sub_1C6D75E90();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    sub_1C6CD24EC(v6, &qword_1EDCE7CC0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C6B1B3FC);
    return sub_1C6D75EB0();
  }
}

uint64_t sub_1C6CD04E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v4 = sub_1C6D78F60();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6CD05B0, 0, 0);
}

uint64_t sub_1C6CD05B0()
{
  v1 = *(v0 + 56);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = *(MEMORY[0x1E69B4F50] + 4);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1C6CD0670;

  return MEMORY[0x1EEE20E48](v0 + 16, v2, v3);
}

uint64_t sub_1C6CD0670()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1C6CD0FA0;
  }

  else
  {
    v3 = sub_1C6CD0784;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6CD0784()
{
  isUniquelyReferenced_nonNull_native = v0;
  v2 = v0[14];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v6, v4);
  *(swift_task_alloc() + 16) = v3;
  v10 = *(v5 + 8);
  v11 = sub_1C6D79690();

  v58 = *(v11 + 16);
  if (v58)
  {
    v12 = 0;
    v13 = v0[10];
    v56 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v57 = v13;
    v55 = (v13 + 8);
    v52 = (v13 + 40);
    v53 = (v13 + 32);
    v14 = MEMORY[0x1E69E7CC8];
    v54 = v11;
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v17 = *(isUniquelyReferenced_nonNull_native + 88);
      v16 = *(isUniquelyReferenced_nonNull_native + 96);
      v18 = *(isUniquelyReferenced_nonNull_native + 72);
      v19 = *(v57 + 72);
      v20 = *(v57 + 16);
      v20(v16, v56 + v19 * v12, v18);
      v21 = sub_1C6D78F50();
      v23 = v22;
      v20(v17, v16, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v14;
      v24 = sub_1C6B5DEA8(v21, v23);
      v26 = v14[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_30;
      }

      v30 = v25;
      if (v14[3] >= v29)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v24;
          sub_1C6B74D04();
          v24 = v37;
        }
      }

      else
      {
        sub_1C6B72048(v29, isUniquelyReferenced_nonNull_native);
        v24 = sub_1C6B5DEA8(v21, v23);
        if ((v30 & 1) != (v31 & 1))
        {

          return sub_1C6D7A1C0();
        }
      }

      v33 = v0[11];
      v32 = v0[12];
      isUniquelyReferenced_nonNull_native = v0[9];
      if (v30)
      {
        v15 = v24;

        v14 = v59;
        (*v52)(v59[7] + v15 * v19, v33, isUniquelyReferenced_nonNull_native);
        (*v55)(v32, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v14 = v59;
        v59[(v24 >> 6) + 8] |= 1 << v24;
        v34 = (v59[6] + 16 * v24);
        *v34 = v21;
        v34[1] = v23;
        (*v53)(v59[7] + v24 * v19, v33, isUniquelyReferenced_nonNull_native);
        (*v55)(v32, isUniquelyReferenced_nonNull_native);
        v35 = v59[2];
        v28 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v28)
        {
          goto LABEL_31;
        }

        v59[2] = v36;
      }

      ++v12;
      isUniquelyReferenced_nonNull_native = v0;
      v11 = v54;
      if (v58 == v12)
      {
        goto LABEL_16;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC8];
LABEL_16:

  __swift_destroy_boxed_opaque_existential_1((isUniquelyReferenced_nonNull_native + 16));
  if (v14[2])
  {
    if (qword_1EDCE0560 != -1)
    {
LABEL_32:
      swift_once();
    }

    v38 = *(isUniquelyReferenced_nonNull_native + 56);
    sub_1C6B1A5AC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1C6D7E630;
    v40 = v14[2];
    v41 = MEMORY[0x1E69E65A8];
    *(v39 + 56) = MEMORY[0x1E69E6530];
    *(v39 + 64) = v41;
    *(v39 + 32) = v40;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v42 = v38[6];
    __swift_project_boxed_opaque_existential_1(v38 + 2, v38[5]);

    sub_1C6CCFDBC(v43);

    sub_1C6D79360();

    v44 = swift_allocObject();
    *(v44 + 16) = v14;
    *(v44 + 24) = v38;

    v45 = sub_1C6D78210();
    *(isUniquelyReferenced_nonNull_native + 120) = sub_1C6D782B0();

    v46 = *(MEMORY[0x1E69D6B08] + 4);
    v47 = swift_task_alloc();
    *(isUniquelyReferenced_nonNull_native + 128) = v47;
    *v47 = isUniquelyReferenced_nonNull_native;
    v47[1] = sub_1C6CD0E18;

    return MEMORY[0x1EEE44EE0](v47);
  }

  else
  {

    if (qword_1EDCE0560 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    sub_1C6D78D30();
    v49 = *(isUniquelyReferenced_nonNull_native + 88);
    v48 = *(isUniquelyReferenced_nonNull_native + 96);

    v50 = *(isUniquelyReferenced_nonNull_native + 8);

    return v50();
  }
}

uint64_t sub_1C6CD0E18()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1C6CD100C;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1C6CD0F34;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C6CD0F34()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C6CD0FA0()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C6CD100C()
{
  v1 = v0[15];

  v2 = v0[17];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C6CD1080()
{
  v0 = sub_1C6D75F50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C6D78F40())
  {
    sub_1C6D78F30();
    v5 = sub_1C6D75EE0();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C6CD117C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v111 = a3;
  sub_1C6B1A5AC(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v134 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v133 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v132 = &v111 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v111 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v116 = &v111 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v111 - v20;
  v114 = sub_1C6D75F50();
  v21 = *(v114 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v24 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v111 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v111 - v29;
  v124 = sub_1C6D78F60();
  v126 = *(v124 - 8);
  v31 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v124);
  *&v123 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v122 = &v111 - v34;
  sub_1C6B68B8C();
  v138 = v35;
  v125 = *(v35 - 8);
  v36 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v131 = (&v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v111 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v121 = (&v111 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v128 = (&v111 - v44);
  v45 = *a1;
  if (v45 >> 62)
  {
    goto LABEL_49;
  }

  v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v127 = v24;
  v112 = v30;
  v117 = v21;
  v115 = v4;
  v30 = MEMORY[0x1E69E6530];
  v21 = MEMORY[0x1E69E65A8];
  v143 = v16;
  v136 = v40;
  v140 = v27;
  if (v46)
  {
    v24 = 0;
    v141 = v45 & 0xC000000000000001;
    v139 = v45 & 0xFFFFFFFFFFFFFF8;
    v120 = v126 + 16;
    v119 = v126 + 32;
    v118 = v126 + 8;
    v135 = MEMORY[0x1E69E7CC0];
    v129 = xmmword_1C6D7EB10;
    v130 = v46;
    v137 = v45;
    while (1)
    {
      if (v141)
      {
        v27 = MEMORY[0x1CCA56240](v24, v45);
        v55 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v24 >= *(v139 + 16))
        {
          goto LABEL_48;
        }

        v27 = *(v45 + 8 * v24 + 32);
        swift_unknownObjectRetain();
        v55 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          v46 = sub_1C6D79E90();
          goto LABEL_3;
        }
      }

      v145 = v55;
      v56 = [v27 articleID];
      v57 = sub_1C6D795A0();
      v59 = v58;

      if (!*(a2 + 16))
      {
        break;
      }

      v60 = sub_1C6B5DEA8(v57, v59);
      v62 = v61;

      if ((v62 & 1) == 0)
      {
        goto LABEL_6;
      }

      v63 = v30;
      v64 = v126;
      v65 = v123;
      v66 = v124;
      (*(v126 + 16))(v123, *(a2 + 56) + *(v126 + 72) * v60, v124);
      v67 = v122;
      (*(v64 + 32))(v122, v65, v66);
      v68 = *(v138 + 48);
      v69 = v121;
      *v121 = v27;
      sub_1C6D78F30();
      (*(v64 + 8))(v67, v66);
      sub_1C6CD2334(v69, v128);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v135 = sub_1C6B6725C(0, v135[2] + 1, 1, v135);
      }

      v16 = v143;
      v27 = v140;
      v71 = v135[2];
      v70 = v135[3];
      v4 = v71 + 1;
      v30 = v63;
      if (v71 >= v70 >> 1)
      {
        v135 = sub_1C6B6725C(v70 > 1, v71 + 1, 1, v135);
      }

      v21 = MEMORY[0x1E69E65A8];
      v72 = v135;
      v135[2] = v4;
      sub_1C6CD2334(v128, v72 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v71);
LABEL_9:
      ++v24;
      v45 = v137;
      if (v145 == v130)
      {
        goto LABEL_24;
      }
    }

LABEL_6:
    if (qword_1EDCE0560 != -1)
    {
      swift_once();
    }

    v144 = qword_1EDCE0568;
    LODWORD(v142) = sub_1C6D79AA0();
    sub_1C6B1A5AC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = v129;
    v48 = *(a2 + 16);
    *(v47 + 56) = v30;
    *(v47 + 64) = v21;
    *(v47 + 32) = v48;
    v49 = v30;
    v50 = [v27 articleID];
    v4 = v21;
    v51 = a2;
    v52 = sub_1C6D795A0();
    v54 = v53;

    v30 = v49;
    *(v47 + 96) = MEMORY[0x1E69E6158];
    *(v47 + 104) = sub_1C6B2064C();
    *(v47 + 72) = v52;
    *(v47 + 80) = v54;
    a2 = v51;
    v21 = v4;
    sub_1C6D78D30();

    swift_unknownObjectRelease();
    v16 = v143;
    v27 = v140;
    v40 = v136;
    goto LABEL_9;
  }

  v135 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v73 = v21;
  if (qword_1EDCE0560 != -1)
  {
    swift_once();
  }

  v74 = qword_1EDCE0568;
  sub_1C6B1A5AC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v124 = v75;
  v76 = swift_allocObject();
  v123 = xmmword_1C6D7E630;
  *(v76 + 16) = xmmword_1C6D7E630;
  v77 = v135[2];
  *(v76 + 56) = v30;
  *(v76 + 64) = v73;
  *(v76 + 32) = v77;
  sub_1C6D79AC0();
  v126 = v74;
  sub_1C6D78D30();

  v78 = v117;
  if (*(a2 + 16) != v77)
  {
    LODWORD(v145) = sub_1C6D79AA0();
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1C6D7EB10;
    v80 = *(a2 + 16);
    *(v79 + 56) = v30;
    *(v79 + 64) = v73;
    *(v79 + 32) = v80;
    *(v79 + 96) = v30;
    *(v79 + 104) = v73;
    *(v79 + 72) = v77;
    sub_1C6D78D30();
  }

  v81 = (v78 + 56);
  v82 = *(v78 + 56);
  v83 = v116;
  v84 = v114;
  v145 = v81;
  v144 = v82;
  v82(v116, 1, 1, v114);
  sub_1C6CD2398(v83, v16);
  v85 = v134;
  v86 = v135[2];
  if (v86)
  {
    v87 = v135 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
    v130 = *(v125 + 72);
    v88 = (v117 + 32);
    v142 = (v117 + 48);
    v137 = (v117 + 8);
    v128 = (v117 + 16);
    v139 = v117 + 32;
    do
    {
      v141 = v86;
      sub_1C6CD242C(v87, v40);
      v90 = v131;
      sub_1C6CD242C(v40, v131);
      v91 = *v90;
      swift_unknownObjectRelease();
      v92 = *v88;
      (*v88)(v27, v90 + *(v138 + 48), v84);
      sub_1C6CD2398(v16, v85);
      v93 = *v142;
      if ((*v142)(v85, 1, v84) == 1)
      {
        v94 = v40;
        sub_1C6CD2490(v40);
        sub_1C6CD24EC(v16, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C6B1A5AC);
        v95 = 1;
        v96 = v133;
      }

      else
      {
        *&v129 = v93;
        v97 = v127;
        v92(v127, v85, v84);
        v98 = sub_1C6D75EE0();
        sub_1C6CD2490(v40);
        sub_1C6CD24EC(v16, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C6B1A5AC);
        if (v98)
        {
          v96 = v133;
          v92(v133, v97, v84);
          v95 = 0;
          v27 = v140;
        }

        else
        {
          (*v137)(v97, v84);
          v96 = v133;
          v27 = v140;
          (*v128)(v133, v140, v84);
          v95 = 0;
        }

        v94 = v136;
        v93 = v129;
      }

      v144(v96, v95, 1, v84);
      if (v93(v96, 1, v84) == 1)
      {
        v89 = v132;
        (*v128)(v132, v27, v84);
        if (v93(v96, 1, v84) != 1)
        {
          sub_1C6CD24EC(v96, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C6B1A5AC);
        }
      }

      else
      {
        v89 = v132;
        v92(v132, v96, v84);
      }

      v144(v89, 0, 1, v84);
      (*v137)(v27, v84);
      v16 = v143;
      sub_1C6C35894(v89, v143);
      v87 += v130;
      v86 = v141 - 1;
      v88 = v139;
      v40 = v94;
      v85 = v134;
    }

    while (v141 != 1);
  }

  sub_1C6CD24EC(v116, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C6B1A5AC);
  v99 = v113;
  sub_1C6C35894(v16, v113);
  v100 = v117;
  if ((*(v117 + 48))(v99, 1, v84) == 1)
  {

    return sub_1C6CD24EC(v99, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C6B1A5AC);
  }

  else
  {
    v102 = v112;
    (*(v100 + 32))(v112, v99, v84);
    v103 = *(v111 + 96);
    v104 = v84;
    v105 = sub_1C6CE4908(v135);

    if (v105)
    {
      v106 = swift_allocObject();
      *(v106 + 16) = v123;
      sub_1C6CD21BC();
      v107 = sub_1C6D7A0E0();
      v109 = v108;
      *(v106 + 56) = MEMORY[0x1E69E6158];
      *(v106 + 64) = sub_1C6B2064C();
      *(v106 + 32) = v107;
      *(v106 + 40) = v109;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      v110 = NewsCoreUserDefaults();
      sub_1C6D75EA0();
      [v110 setDouble:*MEMORY[0x1E69B5018] forKey:?];
    }

    else
    {
      sub_1C6D79AA0();
      sub_1C6D78D30();
    }

    return (*(v100 + 8))(v102, v104);
  }
}

uint64_t sub_1C6CD2150()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];

  return swift_deallocClassInstance();
}

unint64_t sub_1C6CD21BC()
{
  result = qword_1EDCE6380;
  if (!qword_1EDCE6380)
  {
    sub_1C6D75F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6380);
  }

  return result;
}

uint64_t sub_1C6CD2214(uint64_t a1)
{
  v4 = *(sub_1C6D75F50() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6BB6A40;

  return sub_1C6CD04E4(a1, v6, v1 + v5);
}

uint64_t sub_1C6CD2334(uint64_t a1, uint64_t a2)
{
  sub_1C6B68B8C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6CD2398(uint64_t a1, uint64_t a2)
{
  sub_1C6B1A5AC(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6CD242C(uint64_t a1, uint64_t a2)
{
  sub_1C6B68B8C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6CD2490(uint64_t a1)
{
  sub_1C6B68B8C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6CD24EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSession.expand()()
{
  type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6CDB2D8(&qword_1EDCE2AE0, type metadata accessor for Com_Apple_News_Personalization_Session);
  return sub_1C6D78C30();
}

uint64_t sub_1C6CD25F4(char *a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v55 - v9;
  v10 = MEMORY[0x1E69AA900];
  sub_1C6CDB320(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v21 = *a2;
  v22 = *(a2 + 8);
  v23 = *(a1 + 1);

  *a1 = v21;
  *(a1 + 1) = v22;
  v62 = a1;
  v59 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  v24 = *(v59 + 44);
  sub_1C6CD3B04(a2 + v24, v20, &qword_1EDCE66F0, v10);
  v63 = v5;
  v25 = *(v5 + 48);
  LODWORD(v5) = v25(v20, 1, v4);
  v26 = v10;
  v27 = v25;
  sub_1C6CD3B70(v20, &qword_1EDCE66F0, v26);
  if (v5 != 1)
  {
    v28 = v55;
    sub_1C6CD3B04(a2 + v24, v55, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v27(v28, 1, v4) == 1)
    {
      v29 = v56;
      sub_1C6D78990();
      if (v27(v28, 1, v4) != 1)
      {
        sub_1C6CD3B70(v28, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      }
    }

    else
    {
      v29 = v56;
      (*(v63 + 32))(v56, v28, v4);
    }

    v30 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 36);
    v31 = v62;
    sub_1C6CD3B70(&v62[v30], &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    v32 = v63;
    (*(v63 + 32))(&v31[v30], v29, v4);
    (*(v32 + 56))(&v31[v30], 0, 1, v4);
  }

  v33 = v60;
  v34 = *(v59 + 48);
  v35 = MEMORY[0x1E69AA900];
  sub_1C6CD3B04(a2 + v34, v60, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v36 = v27;
  v37 = v27(v33, 1, v4);
  sub_1C6CD3B70(v33, &qword_1EDCE66F0, v35);
  v38 = v37 == 1;
  v39 = v62;
  if (!v38)
  {
    v40 = v57;
    sub_1C6CD3B04(a2 + v34, v57, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v36(v40, 1, v4) == 1)
    {
      v41 = v58;
      sub_1C6D78990();
      if (v36(v40, 1, v4) != 1)
      {
        sub_1C6CD3B70(v40, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      }
    }

    else
    {
      v41 = v58;
      (*(v63 + 32))(v58, v40, v4);
    }

    v42 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 40);
    sub_1C6CD3B70(&v39[v42], &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    v43 = v63;
    (*(v63 + 32))(&v39[v42], v41, v4);
    (*(v43 + 56))(&v39[v42], 0, 1, v4);
  }

  v44 = *(a2 + 48);
  v45 = *(a2 + 64);
  *(v39 + 5) = *(a2 + 56);
  v39[48] = v45;
  v46 = *(a2 + 40);
  v47 = *(v39 + 4);

  *(v39 + 3) = v46;
  *(v39 + 4) = v44;
  v48 = v61;
  result = sub_1C6B88068();
  if (!v48)
  {
    v50 = *(a2 + 16);
    MEMORY[0x1EEE9AC00](result);
    *(&v55 - 2) = a2;
    *(&v55 - 1) = v51;
    v53 = sub_1C6D03CF8(sub_1C6CD35B8, (&v55 - 4), v52);

    v54 = *(v39 + 2);

    *(v39 + 2) = v53;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization010Com_Apple_a1_B25Storage_CompressedSessionV6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 8) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_1C6CD2BF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 9))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6CD2C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6CD2C84(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1C6CD2CAC@<X0>(unsigned int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v93 = a6;
  v90 = a5;
  v95 = a8;
  v91 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v13 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v85[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v85[-v16];
  sub_1C6CDB320(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v85[-v19];
  v21 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v22 = *(v21 - 8);
  v97 = v21;
  v98 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v85[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v96 = &v85[-v27];
  v99 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v28 = *(v99 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v31 = &v85[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v100 = &v85[-v33];
  if (*(a7 + 16) && (v87 = *a2, v34 = *(a2 + 8), v88 = *a3, v35 = *(a3 + 8), v89 = *a4, v36 = *(a4 + 8), v37 = sub_1C6B64DD0(a1), (v38 & 1) != 0))
  {
    sub_1C6CD57CC(*(a7 + 56) + *(v28 + 72) * v37, v31, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v39 = v100;
    sub_1C6CDB374(v31, v100, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6CD3B04(&v39[*(v99 + 20)], v20, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v41 = v97;
    v40 = v98;
    if ((*(v98 + 48))(v20, 1, v97) == 1)
    {
      sub_1C6CD3B70(v20, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6B688CC();
      swift_allocError();
      *v42 = 1;
      *(v42 + 8) = 7;
      swift_willThrow();
      return sub_1C6CD576C(v39, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    }

    else
    {
      v86 = v36;
      v47 = v96;
      sub_1C6CDB374(v20, v96, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6CD57CC(v47, v25, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      v48 = v25;
      v49 = v92;
      sub_1C6CDB374(v48, v92, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v50 = v94;
      sub_1C6CD57CC(v49, v94, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v51 = *(v91 + 20);
      v52 = *&v50[v51];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *&v50[v51];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        v56 = *(v55 + 48);
        v57 = *(v55 + 52);
        swift_allocObject();
        v54 = sub_1C6D2BEA8(v54);
        *&v50[v51] = v54;
      }

      v58 = &v54[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
      swift_beginAccess();
      *v58 = v87;
      v58[8] = v34;
      v59 = *&v50[v51];
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v61 = *&v50[v51];
      if ((v60 & 1) == 0)
      {
        v62 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        v63 = *(v62 + 48);
        v64 = *(v62 + 52);
        swift_allocObject();
        v61 = sub_1C6D2BEA8(v61);
        *&v50[v51] = v61;
      }

      v65 = &v61[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
      swift_beginAccess();
      *v65 = v88;
      v65[8] = v35;
      v66 = *&v50[v51];
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v68 = *&v50[v51];
      if ((v67 & 1) == 0)
      {
        v69 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        v70 = *(v69 + 48);
        v71 = *(v69 + 52);
        swift_allocObject();
        v68 = sub_1C6D2BEA8(v68);
        *&v50[v51] = v68;
      }

      v72 = v93;
      v73 = &v68[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
      swift_beginAccess();
      *v73 = v89;
      v73[8] = v86;
      if (v72)
      {

        v74 = *&v50[v51];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1C6CD576C(v49, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          sub_1C6CD576C(v96, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v75 = *&v50[v51];
        }

        else
        {
          v76 = *&v50[v51];
          v77 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
          v78 = *(v77 + 48);
          v79 = *(v77 + 52);
          swift_allocObject();

          v75 = sub_1C6D2BEA8(v80);
          sub_1C6CD576C(v49, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
          sub_1C6CD576C(v96, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
          v40 = v98;

          *&v50[v51] = v75;
        }

        v81 = &v75[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
        swift_beginAccess();
        v82 = *(v81 + 1);
        *v81 = v90;
        *(v81 + 1) = v72;
      }

      else
      {
        sub_1C6CD576C(v49, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
        sub_1C6CD576C(v96, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      }

      v83 = v95;
      sub_1C6CDB374(v100, v95, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v84 = *(v99 + 20);
      sub_1C6CD3B70(v83 + v84, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
      sub_1C6CDB374(v50, v83 + v84, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      return (*(v40 + 56))(v83 + v84, 0, 1, v41);
    }
  }

  else
  {
    sub_1C6C47864();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6D7E630;
    *(inited + 32) = a1;
    v45 = sub_1C6C078F8(inited);
    swift_setDeallocating();
    sub_1C6B688CC();
    swift_allocError();
    *v46 = v45;
    *(v46 + 8) = 5;
    return swift_willThrow();
  }
}

uint64_t sub_1C6CD34D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6CDB2D8(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
  result = sub_1C6D78C30();
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_1C6CD35F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v37 = a3;
  v38 = a4;
  v44 = a1;
  sub_1C6CDB320(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v36 - v8;
  sub_1C6CDB320(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - v11;
  v42 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v13 = *(v42 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v36 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69AA900];
  sub_1C6CDB320(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v36 - v19;
  v21 = sub_1C6D789A0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  v43 = a2;
  sub_1C6CD3B04(a2 + v26, v20, &qword_1EDCE66F0, v16);
  v27 = *(v22 + 48);
  if (v27(v20, 1, v21) == 1)
  {
    sub_1C6D78990();
    if (v27(v20, 1, v21) != 1)
    {
      sub_1C6CD3B70(v20, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
  }

  v28 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  v29 = v44;
  sub_1C6CD3B70(v44 + v28, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v22 + 32))(v29 + v28, v25, v21);
  (*(v22 + 56))(v29 + v28, 0, 1, v21);
  sub_1C6CD3B04(v43, v12, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  if ((*(v13 + 48))(v12, 1, v42) == 1)
  {
    sub_1C6CD3B70(v12, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6B688CC();
    swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 7;
    return swift_willThrow();
  }

  else
  {
    v32 = v36;
    sub_1C6CDB374(v12, v36, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v40;
    v33 = v41;
    sub_1C6CD3BCC(v32, v37, v38, v39, v41);
    result = sub_1C6CD576C(v32, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    if (!v34)
    {
      v35 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
      (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
      return sub_1C6C50A14(v33, v29);
    }
  }

  return result;
}

uint64_t sub_1C6CD3B04(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C6CDB320(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6CD3B70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6CDB320(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6CD3BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v171 = a1;
  v169 = a3;
  v170 = a4;
  v168 = a2;
  v173 = a5;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v167 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v166 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v165 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v164 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v163 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v162 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v161 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v160 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v159 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v158 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v157 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v156 = &v153 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v155 = &v153 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v154 = &v153 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v50 = &v153 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v54 = &v153 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v58 = &v153 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v62 = &v153 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v66 = &v153 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited();
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v70 = &v153 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen();
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v74 = &v153 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v153 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CD57CC(v171, v78, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C6CDB374(v78, v70, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v120 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
      MEMORY[0x1EEE9AC00](v120);
      v121 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v121;
      v122 = v170;
      *(&v153 - 2) = v70;
      *(&v153 - 1) = v122;
      sub_1C6CDB2D8(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      v123 = v172;
      sub_1C6D78C30();
      if (!v123)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited;
      v84 = v70;
      return sub_1C6CD576C(v84, v83);
    case 2u:
      sub_1C6CDB374(v78, v66, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v106 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
      MEMORY[0x1EEE9AC00](v106);
      v107 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v107;
      v108 = v170;
      *(&v153 - 2) = v66;
      *(&v153 - 1) = v108;
      sub_1C6CDB2D8(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      v109 = v172;
      sub_1C6D78C30();
      if (!v109)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead;
      v84 = v66;
      return sub_1C6CD576C(v84, v83);
    case 3u:
      sub_1C6CDB374(v78, v62, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v114 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
      MEMORY[0x1EEE9AC00](v114);
      v115 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v115;
      v116 = v170;
      *(&v153 - 2) = v62;
      *(&v153 - 1) = v116;
      sub_1C6CDB2D8(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
      v117 = v172;
      sub_1C6D78C30();
      if (!v117)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared;
      v84 = v62;
      return sub_1C6CD576C(v84, v83);
    case 4u:
      sub_1C6CDB374(v78, v58, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v96 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
      MEMORY[0x1EEE9AC00](v96);
      v97 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v97;
      v98 = v170;
      *(&v153 - 2) = v58;
      *(&v153 - 1) = v98;
      sub_1C6CDB2D8(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      v99 = v172;
      sub_1C6D78C30();
      if (!v99)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked;
      v84 = v58;
      return sub_1C6CD576C(v84, v83);
    case 5u:
      sub_1C6CDB374(v78, v50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v132 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
      MEMORY[0x1EEE9AC00](v132);
      v133 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v133;
      v134 = v170;
      *(&v153 - 2) = v50;
      *(&v153 - 1) = v134;
      sub_1C6CDB2D8(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      v135 = v172;
      sub_1C6D78C30();
      if (!v135)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked;
      goto LABEL_65;
    case 6u:
      v50 = v155;
      sub_1C6CDB374(v78, v155, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v140 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved();
      MEMORY[0x1EEE9AC00](v140);
      v141 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v141;
      v142 = v170;
      *(&v153 - 2) = v50;
      *(&v153 - 1) = v142;
      sub_1C6CDB2D8(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      v143 = v172;
      sub_1C6D78C30();
      if (!v143)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved;
      goto LABEL_65;
    case 7u:
      v50 = v158;
      sub_1C6CDB374(v78, v158, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      v118 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted();
      MEMORY[0x1EEE9AC00](v118);
      *(&v153 - 2) = v170;
      *(&v153 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      v119 = v172;
      sub_1C6D78C30();
      if (!v119)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted;
      goto LABEL_65;
    case 8u:
      v50 = v159;
      sub_1C6CDB374(v78, v159, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      v148 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted();
      MEMORY[0x1EEE9AC00](v148);
      *(&v153 - 2) = v170;
      *(&v153 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      v149 = v172;
      sub_1C6D78C30();
      if (!v149)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted;
      goto LABEL_65;
    case 9u:
      v50 = v160;
      sub_1C6CDB374(v78, v160, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      v104 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
      MEMORY[0x1EEE9AC00](v104);
      *(&v153 - 2) = v170;
      *(&v153 - 1) = v50;
      sub_1C6CDB2D8(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      v105 = v172;
      sub_1C6D78C30();
      if (!v105)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed;
      goto LABEL_65;
    case 0xAu:
      v50 = v162;
      sub_1C6CDB374(v78, v162, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      v146 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed();
      MEMORY[0x1EEE9AC00](v146);
      *(&v153 - 2) = v170;
      *(&v153 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      v147 = v172;
      sub_1C6D78C30();
      if (!v147)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed;
      goto LABEL_65;
    case 0xBu:
      v50 = v163;
      sub_1C6CDB374(v78, v163, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
      v94 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
      MEMORY[0x1EEE9AC00](v94);
      *(&v153 - 2) = v170;
      *(&v153 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      v95 = v172;
      sub_1C6D78C30();
      if (!v95)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView;
      goto LABEL_65;
    case 0xCu:
      v50 = v164;
      sub_1C6CDB374(v78, v164, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v100 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
      MEMORY[0x1EEE9AC00](v100);
      v101 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v101;
      v102 = v170;
      *(&v153 - 2) = v50;
      *(&v153 - 1) = v102;
      sub_1C6CDB2D8(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      v103 = v172;
      sub_1C6D78C30();
      if (!v103)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited;
      goto LABEL_65;
    case 0xDu:
      v50 = v165;
      sub_1C6CDB374(v78, v165, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v136 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
      MEMORY[0x1EEE9AC00](v136);
      v137 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v137;
      v138 = v170;
      *(&v153 - 2) = v50;
      *(&v153 - 1) = v138;
      sub_1C6CDB2D8(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
      v139 = v172;
      sub_1C6D78C30();
      if (!v139)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened;
      goto LABEL_65;
    case 0xEu:
      v50 = v166;
      sub_1C6CDB374(v78, v166, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
      MEMORY[0x1EEE9AC00](v90);
      v91 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v91;
      v92 = v170;
      *(&v153 - 2) = v50;
      *(&v153 - 1) = v92;
      sub_1C6CDB2D8(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      v93 = v172;
      sub_1C6D78C30();
      if (!v93)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished;
      goto LABEL_65;
    case 0xFu:
      sub_1C6CDB374(v78, v54, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v110 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
      MEMORY[0x1EEE9AC00](v110);
      v111 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v111;
      v112 = v170;
      *(&v153 - 2) = v54;
      *(&v153 - 1) = v112;
      sub_1C6CDB2D8(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      v113 = v172;
      sub_1C6D78C30();
      if (!v113)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked;
      v84 = v54;
      return sub_1C6CD576C(v84, v83);
    case 0x10u:
      v50 = v154;
      sub_1C6CDB374(v78, v154, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v85 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
      MEMORY[0x1EEE9AC00](v85);
      v86 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v86;
      v87 = v170;
      *(&v153 - 2) = v50;
      *(&v153 - 1) = v87;
      sub_1C6CDB2D8(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      v88 = v172;
      sub_1C6D78C30();
      if (!v88)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked;
      goto LABEL_65;
    case 0x11u:
      v50 = v156;
      sub_1C6CDB374(v78, v156, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v124 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
      MEMORY[0x1EEE9AC00](v124);
      v125 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v125;
      v126 = v170;
      *(&v153 - 2) = v50;
      *(&v153 - 1) = v126;
      sub_1C6CDB2D8(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      v127 = v172;
      sub_1C6D78C30();
      if (!v127)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved;
      goto LABEL_65;
    case 0x12u:
      v50 = v157;
      sub_1C6CDB374(v78, v157, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
      v144 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
      MEMORY[0x1EEE9AC00](v144);
      *(&v153 - 2) = v170;
      *(&v153 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
      v145 = v172;
      sub_1C6D78C30();
      if (!v145)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen;
      goto LABEL_65;
    case 0x13u:
      v50 = v161;
      sub_1C6CDB374(v78, v161, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      v150 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore();
      MEMORY[0x1EEE9AC00](v150);
      *(&v153 - 2) = v170;
      *(&v153 - 1) = v50;
      sub_1C6CDB2D8(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      v151 = v172;
      sub_1C6D78C30();
      if (!v151)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore;
      goto LABEL_65;
    case 0x14u:
      v50 = v167;
      sub_1C6CDB374(v78, v167, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      v128 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
      MEMORY[0x1EEE9AC00](v128);
      v130 = v168;
      v129 = v169;
      *(&v153 - 4) = v50;
      *(&v153 - 3) = v130;
      *(&v153 - 2) = v129;
      sub_1C6CDB2D8(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      v131 = v172;
      sub_1C6D78C30();
      if (!v131)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v89 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended;
LABEL_65:
      v83 = v89;
      v84 = v50;
      break;
    default:
      sub_1C6CDB374(v78, v74, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      v79 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
      MEMORY[0x1EEE9AC00](v79);
      v80 = v169;
      *(&v153 - 4) = v168;
      *(&v153 - 3) = v80;
      v81 = v170;
      *(&v153 - 2) = v74;
      *(&v153 - 1) = v81;
      sub_1C6CDB2D8(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
      v82 = v172;
      sub_1C6D78C30();
      if (!v82)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
        swift_storeEnumTagMultiPayload();
      }

      v83 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen;
      v84 = v74;
      break;
  }

  return sub_1C6CD576C(v84, v83);
}

uint64_t sub_1C6CD576C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6CD57CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CD5834(uint64_t a1, void (*a2)(void, uint64_t *, uint64_t *, uint64_t *, uint64_t, uint64_t), uint64_t a3, unsigned int *a4, uint64_t a5, unsigned int *a6, uint64_t (*a7)(void))
{
  v157 = a7;
  v188 = a6;
  v173 = a5;
  v162 = a3;
  v163 = a2;
  v159 = a1;
  v158 = sub_1C6D78A00();
  v160 = *(v158 - 8);
  v8 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v152 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CDB320(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v151 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v156 = &v150 - v14;
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v174 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v18 = *(*(v167 - 8) + 64);
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v186 = &v150 - v21;
  sub_1C6CDB320(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v172 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v179 = &v150 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v183 = &v150 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v150 - v30;
  v32 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v195 = *(v32 - 8);
  v33 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v166 = &v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v169 = &v150 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v170 = &v150 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v176 = &v150 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v185 = &v150 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v181 = (&v150 - v44);
  sub_1C6CDB320(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v171 = &v150 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v177 = &v150 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v150 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v150 - v54;
  v56 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v175 = &v150 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v178 = &v150 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v182 = &v150 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v150 - v65;
  v155 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v154 = *(v155 - 8);
  v67 = *(v154 + 64);
  v68 = MEMORY[0x1EEE9AC00](v155);
  v165 = &v150 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = *a4;
  v153 = (v188)(0, v68);
  v187 = *(v153 + 24);
  v188 = a4;
  sub_1C6CD3B04(a4 + v187, v55, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v70 = *(v57 + 48);
  v71 = v70(v55, 1, v56);
  v184 = v56;
  if (v71 == 1)
  {
    v72 = v195;
    (*(v195 + 56))(v66, 1, 1, v32);
    v73 = &v66[*(v56 + 20)];
    sub_1C6D78A30();
    if (v70(v55, 1, v56) != 1)
    {
      sub_1C6CD3B70(v55, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    sub_1C6CDB374(v55, v66, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v72 = v195;
  }

  sub_1C6CD3B04(v66, v31, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v74 = *(v72 + 48);
  if (v74(v31, 1, v32) == 1)
  {
    sub_1C6CD3B70(v31, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v75 = 1;
    *(v75 + 8) = 7;
    swift_willThrow();
    v76 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v77 = v66;
    return sub_1C6CD576C(v77, v76);
  }

  v180 = v74;
  sub_1C6CD576C(v66, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v78 = v31;
  v79 = v181;
  sub_1C6CDB374(v78, v181, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v80 = v185;
  sub_1C6CDB374(v79, v185, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v81 = v70;
  v82 = v186;
  sub_1C6CDB374(v80, v186, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v83 = *v82;
  LOBYTE(v79) = *(v82 + 8);
  sub_1C6CD576C(v82, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v193 = v83;
  v194 = v79;
  sub_1C6CD3B04(v188 + v187, v52, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v84 = v184;
  v85 = v81(v52, 1, v184);
  v181 = v81;
  if (v85 == 1)
  {
    v86 = v182;
    (*(v195 + 56))(v182, 1, 1, v32);
    v87 = v86 + *(v84 + 20);
    sub_1C6D78A30();
    v88 = v81(v52, 1, v84);
    v89 = v86;
    v90 = v183;
    if (v88 != 1)
    {
      sub_1C6CD3B70(v52, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    v89 = v182;
    sub_1C6CDB374(v52, v182, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v90 = v183;
  }

  sub_1C6CD3B04(v89, v90, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if (v180(v90, 1, v32) == 1)
  {
    sub_1C6CD3B70(v90, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v91 = 1;
    *(v91 + 8) = 7;
    swift_willThrow();
    v76 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v77 = v89;
    return sub_1C6CD576C(v77, v76);
  }

  sub_1C6CD576C(v89, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v92 = v84;
  v93 = v90;
  v94 = v176;
  sub_1C6CDB374(v93, v176, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v94, v80, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v80, v82, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v95 = *(v82 + 16);
  LOBYTE(v94) = *(v82 + 24);
  sub_1C6CD576C(v82, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v191 = v95;
  v192 = v94;
  v96 = v177;
  sub_1C6CD3B04(v188 + v187, v177, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v97 = v181;
  if (v181(v96, 1, v92) == 1)
  {
    v98 = v178;
    (*(v195 + 56))(v178, 1, 1, v32);
    v99 = v98 + *(v92 + 20);
    sub_1C6D78A30();
    v100 = v97(v96, 1, v92);
    v101 = v179;
    if (v100 != 1)
    {
      sub_1C6CD3B70(v96, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    v98 = v178;
    sub_1C6CDB374(v96, v178, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v101 = v179;
  }

  sub_1C6CD3B04(v98, v101, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v102 = v180;
  if (v180(v101, 1, v32) == 1)
  {
    sub_1C6CD3B70(v101, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v103 = 1;
    *(v103 + 8) = 7;
    swift_willThrow();
    v76 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v77 = v98;
    return sub_1C6CD576C(v77, v76);
  }

  sub_1C6CD576C(v98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v104 = v101;
  v105 = v170;
  sub_1C6CDB374(v104, v170, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v105, v80, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v80, v82, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v106 = *(v82 + 32);
  LOBYTE(v105) = *(v82 + 40);
  sub_1C6CD576C(v82, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v189 = v106;
  v190 = v105;
  v107 = v171;
  sub_1C6CD3B04(v188 + v187, v171, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v108 = v181;
  if (v181(v107, 1, v92) == 1)
  {
    v109 = v175;
    v110 = v108;
    v111 = v32;
    (*(v195 + 56))(v175, 1, 1, v32);
    v112 = v109 + *(v92 + 20);
    sub_1C6D78A30();
    v113 = v110(v107, 1, v92);
    v102 = v180;
    v114 = v113 == 1;
    v115 = v107;
    v116 = v172;
    if (!v114)
    {
      sub_1C6CD3B70(v115, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    v111 = v32;
    v109 = v175;
    sub_1C6CDB374(v107, v175, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v116 = v172;
  }

  v117 = v174;
  sub_1C6CD57CC(v173, v174, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6CD3B04(v109, v116, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if (v102(v116, 1, v111) == 1)
  {
    sub_1C6CD3B70(v116, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v118 = 1;
    *(v118 + 8) = 7;
    swift_willThrow();
LABEL_25:
    sub_1C6CD576C(v109, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v76 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession;
    v77 = v117;
    return sub_1C6CD576C(v77, v76);
  }

  v120 = v116;
  v121 = v169;
  sub_1C6CDB374(v120, v169, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v122 = v121;
  v123 = v166;
  sub_1C6CD57CC(v122, v166, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v124 = v168;
  result = sub_1C6CDB374(v123, v168, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v125 = (v124 + *(v167 + 32));
  if (v125[1])
  {
    v126 = 0;
    v127 = 0;
    v128 = v165;
  }

  else
  {
    v129 = *v125;
    v130 = *(v117 + 32);
    v128 = v165;
    if (*(v130 + 16) <= v129)
    {
      v143 = v124;
      v144 = v129;
      sub_1C6B688CC();
      swift_allocError();
      *v145 = v144;
      *(v145 + 8) = 0;
      swift_willThrow();
      v146 = v143;
      v109 = v175;
      sub_1C6CD576C(v146, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
      sub_1C6CD576C(v169, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
      goto LABEL_25;
    }

    if ((v129 & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    v131 = v130 + 16 * v129;
    v126 = *(v131 + 32);
    v127 = *(v131 + 40);
  }

  sub_1C6CD576C(v124, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6CD576C(v169, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CD576C(v175, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6CD576C(v117, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  v132 = v164;
  v163(v161, &v193, &v191, &v189, v126, v127);
  if (v132)
  {
  }

  v195 = v157(0);
  v133 = *(v195 + 20);
  v134 = v159;
  sub_1C6CD3B70(v159 + v133, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6CDB374(v128, v134 + v133, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  (*(v154 + 56))(v134 + v133, 0, 1, v155);
  v135 = *(v153 + 28);
  v136 = MEMORY[0x1E69AAB70];
  v137 = v156;
  sub_1C6CD3B04(v188 + v135, v156, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v138 = *(v160 + 48);
  v139 = v158;
  v140 = v138(v137, 1, v158);
  result = sub_1C6CD3B70(v137, &qword_1EDCDFD00, v136);
  if (v140 != 1)
  {
    v141 = v151;
    sub_1C6CD3B04(v188 + v135, v151, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    if (v138(v141, 1, v139) == 1)
    {
      v142 = v152;
      sub_1C6D789F0();
      if (v138(v141, 1, v139) != 1)
      {
        sub_1C6CD3B70(v141, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      }
    }

    else
    {
      v142 = v152;
      (*(v160 + 32))(v152, v141, v139);
    }

    v147 = *(v195 + 24);
    v148 = v159;
    sub_1C6CD3B70(v159 + v147, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    v149 = v160;
    (*(v160 + 32))(v148 + v147, v142, v139);
    return (*(v149 + 56))(v148 + v147, 0, 1, v139);
  }

  return result;
}

uint64_t sub_1C6CD6CFC(char *a1, void (*a2)(void, uint64_t *, uint64_t *, uint64_t *, uint64_t, uint64_t), uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v173 = a5;
  v163 = a3;
  v164 = a2;
  v159 = a1;
  v158 = sub_1C6D78A00();
  v160 = *(v158 - 8);
  v6 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v153 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CDB320(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v152 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v157 = &v152 - v12;
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v174 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v16 = *(*(v168 - 8) + 64);
  MEMORY[0x1EEE9AC00](v168);
  v169 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v189 = &v152 - v19;
  sub_1C6CDB320(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v172 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v178 = &v152 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v183 = &v152 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v152 - v28;
  v30 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v190 = *(v30 - 8);
  v31 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v166 = &v152 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v167 = &v152 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v170 = &v152 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v175 = &v152 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v188 = &v152 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v181 = &v152 - v42;
  sub_1C6CDB320(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v171 = &v152 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v176 = &v152 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v152 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v152 - v52;
  v54 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v179 = &v152 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v177 = &v152 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v182 = &v152 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v152 - v63;
  v156 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v155 = *(v156 - 8);
  v65 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v162 = &v152 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = *a4;
  v154 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  v67 = *(v154 + 28);
  v185 = a4;
  v186 = v67;
  sub_1C6CD3B04(a4 + v67, v53, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v68 = *(v55 + 48);
  v69 = v68(v53, 1, v54);
  v187 = v68;
  v184 = v54;
  v197 = v30;
  if (v69 == 1)
  {
    v70 = v50;
    v71 = v190;
    (*(v190 + 56))(v64, 1, 1, v30);
    v72 = &v64[*(v54 + 20)];
    sub_1C6D78A30();
    v73 = v68(v53, 1, v54);
    v74 = v71;
    v50 = v70;
    if (v73 != 1)
    {
      sub_1C6CD3B70(v53, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    sub_1C6CDB374(v53, v64, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v74 = v190;
  }

  sub_1C6CD3B04(v64, v29, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v75 = *(v74 + 48);
  if (v75(v29, 1, v197) == 1)
  {
    sub_1C6CD3B70(v29, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v76 = 1;
    *(v76 + 8) = 7;
    swift_willThrow();
    v77 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v78 = v64;
    return sub_1C6CD576C(v78, v77);
  }

  v180 = v75;
  sub_1C6CD576C(v64, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v79 = v181;
  sub_1C6CDB374(v29, v181, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v80 = v79;
  v81 = v188;
  sub_1C6CDB374(v80, v188, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v82 = v189;
  sub_1C6CDB374(v81, v189, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v83 = *v82;
  v84 = *(v82 + 8);
  sub_1C6CD576C(v82, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v195 = v83;
  v196 = v84;
  v85 = v185;
  sub_1C6CD3B04(v185 + v186, v50, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v86 = v184;
  v87 = v187;
  if (v187(v50, 1, v184) == 1)
  {
    v88 = v182;
    v89 = v197;
    (*(v190 + 56))(v182, 1, 1, v197);
    v90 = v88 + *(v86 + 20);
    sub_1C6D78A30();
    v91 = v87(v50, 1, v86);
    v92 = v183;
    if (v91 != 1)
    {
      sub_1C6CD3B70(v50, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    v88 = v182;
    sub_1C6CDB374(v50, v182, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v89 = v197;
    v92 = v183;
  }

  sub_1C6CD3B04(v88, v92, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if (v180(v92, 1, v89) == 1)
  {
    goto LABEL_17;
  }

  sub_1C6CD576C(v88, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v93 = v92;
  v94 = v175;
  sub_1C6CDB374(v93, v175, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v95 = v94;
  v96 = v188;
  sub_1C6CDB374(v95, v188, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v97 = v189;
  sub_1C6CDB374(v96, v189, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v98 = *(v97 + 16);
  LOBYTE(v96) = *(v97 + 24);
  sub_1C6CD576C(v97, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v193 = v98;
  v194 = v96;
  v99 = v187;
  v100 = v85 + v186;
  v101 = v176;
  sub_1C6CD3B04(v100, v176, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  if (v99(v101, 1, v86) == 1)
  {
    v88 = v177;
    (*(v190 + 56))(v177, 1, 1, v89);
    v102 = v88 + *(v86 + 20);
    sub_1C6D78A30();
    v103 = v86;
    v104 = v99(v101, 1, v86);
    v92 = v178;
    v105 = v179;
    if (v104 != 1)
    {
      sub_1C6CD3B70(v101, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    v103 = v86;
    v88 = v177;
    sub_1C6CDB374(v101, v177, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v92 = v178;
    v105 = v179;
  }

  sub_1C6CD3B04(v88, v92, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if (v180(v92, 1, v89) == 1)
  {
LABEL_17:
    sub_1C6CD3B70(v92, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v106 = 1;
    *(v106 + 8) = 7;
    swift_willThrow();
    v77 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v78 = v88;
    return sub_1C6CD576C(v78, v77);
  }

  sub_1C6CD576C(v88, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v108 = v92;
  v109 = v170;
  sub_1C6CDB374(v108, v170, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v110 = v109;
  v111 = v188;
  sub_1C6CDB374(v110, v188, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v112 = v189;
  sub_1C6CDB374(v111, v189, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v113 = *(v112 + 32);
  LOBYTE(v111) = *(v112 + 40);
  sub_1C6CD576C(v112, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v191 = v113;
  v192 = v111;
  v114 = v185;
  v115 = v171;
  sub_1C6CD3B04(v185 + v186, v171, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v116 = v187;
  if (v187(v115, 1, v103) == 1)
  {
    (*(v190 + 56))(v105, 1, 1, v89);
    v117 = v105 + *(v103 + 20);
    sub_1C6D78A30();
    v118 = v116(v115, 1, v103);
    v119 = v174;
    v120 = v172;
    if (v118 != 1)
    {
      sub_1C6CD3B70(v115, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    sub_1C6CDB374(v115, v105, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v119 = v174;
    v120 = v172;
  }

  sub_1C6CD57CC(v173, v119, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6CD3B04(v105, v120, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if (v180(v120, 1, v89) == 1)
  {
    sub_1C6CD3B70(v120, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v121 = 1;
    *(v121 + 8) = 7;
    swift_willThrow();
LABEL_25:
    sub_1C6CD576C(v105, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v77 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession;
    v78 = v119;
    return sub_1C6CD576C(v78, v77);
  }

  v122 = v167;
  sub_1C6CDB374(v120, v167, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v123 = v166;
  sub_1C6CD57CC(v122, v166, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v124 = v169;
  result = sub_1C6CDB374(v123, v169, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v125 = (v124 + *(v168 + 32));
  if (v125[1])
  {
    v126 = 0;
    v127 = 0;
  }

  else
  {
    v128 = *v125;
    v129 = *(v119 + 32);
    if (*(v129 + 16) <= v128)
    {
      v146 = v128;
      sub_1C6B688CC();
      swift_allocError();
      *v147 = v146;
      v119 = v174;
      *(v147 + 8) = 0;
      swift_willThrow();
      sub_1C6CD576C(v124, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
      sub_1C6CD576C(v122, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
      goto LABEL_25;
    }

    if ((v128 & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    v130 = v129 + 16 * v128;
    v126 = *(v130 + 32);
    v127 = *(v130 + 40);
  }

  sub_1C6CD576C(v124, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6CD576C(v122, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CD576C(v105, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6CD576C(v119, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  v131 = v162;
  v132 = v165;
  v164(v161, &v195, &v193, &v191, v126, v127);
  if (v132)
  {
  }

  v197 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v133 = *(v197 + 24);
  v134 = v159;
  sub_1C6CD3B70(&v159[v133], &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6CDB374(v131, &v134[v133], type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  (*(v155 + 56))(&v134[v133], 0, 1, v156);
  v135 = *(v154 + 32);
  v136 = MEMORY[0x1E69AAB70];
  v137 = v157;
  sub_1C6CD3B04(v114 + v135, v157, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v138 = v114;
  v139 = v158;
  v190 = *(v160 + 48);
  v140 = (v190)(v137, 1, v158);
  sub_1C6CD3B70(v137, &qword_1EDCDFD00, v136);
  if (v140 != 1)
  {
    v141 = v138 + v135;
    v142 = v152;
    sub_1C6CD3B04(v141, v152, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    v143 = v190;
    v144 = v139;
    if ((v190)(v142, 1, v139) == 1)
    {
      v145 = v153;
      sub_1C6D789F0();
      if (v143(v142, 1, v139) != 1)
      {
        sub_1C6CD3B70(v142, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      }
    }

    else
    {
      v145 = v153;
      (*(v160 + 32))(v153, v142, v139);
    }

    v148 = *(v197 + 28);
    sub_1C6CD3B70(&v134[v148], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    v149 = v160;
    (*(v160 + 32))(&v134[v148], v145, v144);
    (*(v149 + 56))(&v134[v148], 0, 1, v144);
    v138 = v185;
  }

  v150 = *(v138 + 1);
  v151 = *v134;

  *v134 = v150;
  return result;
}

uint64_t sub_1C6CD8154(uint64_t a1, void (*a2)(void, uint64_t *, uint64_t *, uint64_t *, uint64_t, uint64_t), uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v141 = a5;
  v131 = a3;
  v132 = a2;
  v128 = a1;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v142 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v9 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v137 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v153 = &v125 - v12;
  sub_1C6CDB320(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v140 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v147 = &v125 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v151 = &v125 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v125 - v21;
  v23 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v166 = *(v23 - 8);
  v24 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v134 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v135 = &v125 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v138 = &v125 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v144 = &v125 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v152 = &v125 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v148 = &v125 - v35;
  sub_1C6CDB320(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v139 = &v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v145 = &v125 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v125 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v125 - v45;
  v47 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v143 = &v125 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v146 = &v125 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v150 = &v125 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v125 - v56;
  v127 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v126 = *(v127 - 8);
  v58 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v130 = &v125 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = *a4;
  v60 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared() + 28);
  v155 = a4;
  v156 = v60;
  sub_1C6CD3B04(a4 + v60, v46, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v61 = *(v48 + 48);
  v62 = v61(v46, 1, v47);
  v158 = v61;
  v159 = v47;
  v154 = v48 + 48;
  if (v62 == 1)
  {
    v63 = v166;
    (*(v166 + 56))(v57, 1, 1, v23);
    v64 = &v57[*(v47 + 20)];
    sub_1C6D78A30();
    v65 = v61(v46, 1, v47);
    v66 = v63;
    if (v65 != 1)
    {
      sub_1C6CD3B70(v46, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    sub_1C6CDB374(v46, v57, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v66 = v166;
  }

  sub_1C6CD3B04(v57, v22, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v157 = *(v66 + 48);
  if (v157(v22, 1, v23) == 1)
  {
    sub_1C6CD3B70(v22, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
LABEL_7:
    *v67 = 1;
    *(v67 + 8) = 7;
    swift_willThrow();
    v68 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v69 = v57;
    return sub_1C6CD576C(v69, v68);
  }

  v149 = v23;
  sub_1C6CD576C(v57, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v70 = v148;
  sub_1C6CDB374(v22, v148, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v71 = v152;
  sub_1C6CDB374(v70, v152, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v72 = v153;
  sub_1C6CDB374(v71, v153, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v73 = *v72;
  LOBYTE(v70) = *(v72 + 8);
  sub_1C6CD576C(v72, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v164 = v73;
  v165 = v70;
  v74 = v155;
  sub_1C6CD3B04(v155 + v156, v43, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v76 = v158;
  v75 = v159;
  if (v158(v43, 1, v159) == 1)
  {
    v77 = v150;
    (*(v166 + 56))(v150, 1, 1, v149);
    v78 = v77 + *(v75 + 20);
    sub_1C6D78A30();
    if (v76(v43, 1, v75) != 1)
    {
      sub_1C6CD3B70(v43, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    v77 = v150;
    sub_1C6CDB374(v43, v150, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  v79 = v151;
  sub_1C6CD3B04(v77, v151, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if (v157(v79, 1, v149) == 1)
  {
    sub_1C6CD3B70(v79, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v80 = 1;
    *(v80 + 8) = 7;
    swift_willThrow();
    v68 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v69 = v77;
    return sub_1C6CD576C(v69, v68);
  }

  sub_1C6CD576C(v77, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v81 = v79;
  v82 = v144;
  sub_1C6CDB374(v81, v144, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v82, v71, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v71, v72, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v83 = *(v72 + 16);
  LOBYTE(v82) = *(v72 + 24);
  sub_1C6CD576C(v72, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v162 = v83;
  v84 = v159;
  v163 = v82;
  v85 = v145;
  sub_1C6CD3B04(v74 + v156, v145, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v86 = v158;
  if (v158(v85, 1, v84) == 1)
  {
    v87 = v146;
    v88 = v149;
    (*(v166 + 56))(v146, 1, 1, v149);
    v89 = v87 + *(v84 + 20);
    sub_1C6D78A30();
    v90 = v84;
    v91 = v87;
    v92 = v86(v85, 1, v90);
    v93 = v147;
    if (v92 != 1)
    {
      sub_1C6CD3B70(v85, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    v91 = v146;
    sub_1C6CDB374(v85, v146, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v93 = v147;
    v88 = v149;
  }

  sub_1C6CD3B04(v91, v93, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v94 = v157(v93, 1, v88);
  v95 = v155;
  if (v94 == 1)
  {
    sub_1C6CD3B70(v93, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    v57 = v91;
    goto LABEL_7;
  }

  sub_1C6CD576C(v91, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v96 = v93;
  v97 = v138;
  sub_1C6CDB374(v96, v138, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v97, v71, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v71, v72, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v98 = *(v72 + 32);
  LOBYTE(v97) = *(v72 + 40);
  sub_1C6CD576C(v72, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v160 = v98;
  v99 = v159;
  v161 = v97;
  v100 = v139;
  sub_1C6CD3B04(v95 + v156, v139, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v101 = v158;
  if (v158(v100, 1, v99) == 1)
  {
    v102 = v143;
    (*(v166 + 56))(v143, 1, 1, v88);
    v103 = v102 + *(v99 + 20);
    sub_1C6D78A30();
    v104 = v101(v100, 1, v99);
    v105 = v140;
    if (v104 != 1)
    {
      sub_1C6CD3B70(v100, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    v102 = v143;
    sub_1C6CDB374(v100, v143, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v105 = v140;
  }

  v106 = v142;
  sub_1C6CD57CC(v141, v142, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6CD3B04(v102, v105, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if (v157(v105, 1, v88) == 1)
  {
    sub_1C6CD3B70(v105, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v107 = 1;
    *(v107 + 8) = 7;
    swift_willThrow();
LABEL_26:
    sub_1C6CD576C(v102, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v68 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession;
    v69 = v106;
    return sub_1C6CD576C(v69, v68);
  }

  v109 = v135;
  sub_1C6CDB374(v105, v135, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v110 = v134;
  sub_1C6CD57CC(v109, v134, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v111 = v137;
  result = sub_1C6CDB374(v110, v137, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v112 = (v111 + *(v136 + 32));
  if (v112[1])
  {
    v113 = 0;
    v114 = 0;
  }

  else
  {
    v115 = *v112;
    v116 = *(v106 + 32);
    if (*(v116 + 16) <= v115)
    {
      v123 = v115;
      sub_1C6B688CC();
      swift_allocError();
      *v124 = v123;
      v102 = v143;
      *(v124 + 8) = 0;
      swift_willThrow();
      sub_1C6CD576C(v111, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
      sub_1C6CD576C(v109, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
      goto LABEL_26;
    }

    if ((v115 & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    v117 = v116 + 16 * v115;
    v113 = *(v117 + 32);
    v114 = *(v117 + 40);
  }

  sub_1C6CD576C(v111, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6CD576C(v109, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CD576C(v102, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6CD576C(v106, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  v118 = v130;
  v119 = v133;
  v132(v129, &v164, &v162, &v160, v113, v114);
  if (v119)
  {
  }

  v120 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared() + 24);
  v121 = v128;
  sub_1C6CD3B70(v128 + v120, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6CDB374(v118, v121 + v120, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  result = (*(v126 + 56))(v121 + v120, 0, 1, v127);
  v122 = *(v95 + 16);
  *v121 = *(v95 + 1);
  *(v121 + 8) = v122;
  return result;
}

void sub_1C6CD92CC(char *a1, uint64_t a2, int *a3)
{
  sub_1C6CDB320(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v26 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v16 = *(a2 + 32);
  if (*(v16 + 16) <= v15)
  {
    v23 = v15;
    sub_1C6B688CC();
    swift_allocError();
    *v24 = v23;
    *(v24 + 8) = 0;
    swift_willThrow();
  }

  else if ((v15 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v17 = v16 + 16 * v15;
    v19 = *(v17 + 32);
    v18 = *(v17 + 40);
    v20 = *(a1 + 1);

    *a1 = v19;
    *(a1 + 1) = v18;
    v21 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen();
    sub_1C6CD3B04(a3 + *(v21 + 24), v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    v22 = *(v11 + 48);
    if (v22(v9, 1, v10) == 1)
    {
      sub_1C6D789F0();
      if (v22(v9, 1, v10) != 1)
      {
        sub_1C6CD3B70(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      }
    }

    else
    {
      (*(v11 + 32))(v14, v9, v10);
    }

    v25 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen() + 24);
    sub_1C6CD3B70(&a1[v25], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v11 + 32))(&a1[v25], v14, v10);
    (*(v11 + 56))(&a1[v25], 0, 1, v10);
  }
}

uint64_t sub_1C6CD95A4(uint64_t result, uint64_t a2, int *a3)
{
  v3 = *a3;
  v4 = *(a2 + 32);
  if (*(v4 + 16) <= v3)
  {
    v10 = v3;
    sub_1C6B688CC();
    swift_allocError();
    *v11 = v10;
    *(v11 + 8) = 0;
    return swift_willThrow();
  }

  else if ((v3 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 + 16 * v3;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v8 = *(result + 8);
    v9 = result;

    *v9 = v7;
    v9[1] = v6;
  }

  return result;
}

void sub_1C6CD9648(char *a1, uint64_t a2, int *a3)
{
  v7 = sub_1C6D78A00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CDB320(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v19 = *a3;
  v20 = *(a2 + 32);
  if (*(v20 + 16) <= v19)
  {
    v30 = v19;
    sub_1C6B688CC();
    swift_allocError();
    *v31 = v30;
    *(v31 + 8) = 0;
    swift_willThrow();
  }

  else if ((v19 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v38 = v11;
    v41 = v3;
    v21 = v20 + 16 * v19;
    v22 = *(v21 + 32);
    v23 = *(v21 + 40);
    v24 = *(a1 + 1);

    *a1 = v22;
    *(a1 + 1) = v23;
    v40 = a1;
    v25 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView() + 24);
    v26 = v7;
    v27 = v8;
    v28 = MEMORY[0x1E69AAB70];
    sub_1C6CD3B04(a3 + v25, v18, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    v39 = v27;
    v29 = *(v27 + 48);
    LODWORD(v22) = v29(v18, 1, v26);
    sub_1C6CD3B70(v18, &qword_1EDCDFD00, v28);
    if (v22 != 1)
    {
      sub_1C6CD3B04(a3 + v25, v15, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      if (v29(v15, 1, v26) == 1)
      {
        v32 = v38;
        sub_1C6D789F0();
        v33 = v29(v15, 1, v26);
        v34 = v39;
        if (v33 != 1)
        {
          sub_1C6CD3B70(v15, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        }
      }

      else
      {
        v32 = v38;
        v34 = v39;
        (*(v39 + 32))(v38, v15, v26);
      }

      v35 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView() + 24);
      v36 = v40;
      sub_1C6CD3B70(&v40[v35], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      (*(v34 + 32))(&v36[v35], v32, v26);
      (*(v34 + 56))(&v36[v35], 0, 1, v26);
    }
  }
}

uint64_t sub_1C6CD99E0(uint64_t a1, void (*a2)(void, uint64_t *, uint64_t *, uint64_t *, uint64_t, uint64_t), uint64_t a3, unsigned int *a4, uint64_t a5, unsigned int *a6, uint64_t (*a7)(void))
{
  v129 = a7;
  v166 = a6;
  v143 = a5;
  v133 = a3;
  v134 = a2;
  v130 = a1;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v144 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata();
  v11 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v153 = &v127 - v14;
  sub_1C6CDB320(0, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v142 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v149 = &v127 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v127 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v127 - v23;
  v25 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  v159 = *(v25 - 8);
  v26 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v136 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v137 = &v127 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v140 = &v127 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v146 = &v127 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v158 = &v127 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v150 = &v127 - v37;
  sub_1C6CDB320(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v141 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v147 = &v127 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v127 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v127 - v47;
  v49 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v145 = &v127 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v148 = &v127 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v151 = &v127 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v127 - v58;
  v128 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v127 = *(v128 - 8);
  v60 = *(v127 + 64);
  v61 = MEMORY[0x1EEE9AC00](v128);
  v132 = &v127 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = *a4;
  v63 = *((v166)(0, v61) + 24);
  v166 = a4;
  v154 = v63;
  sub_1C6CD3B04(a4 + v63, v48, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v64 = *(v50 + 48);
  v65 = v64(v48, 1, v49);
  v156 = v64;
  v157 = v50 + 48;
  v155 = v49;
  if (v65 == 1)
  {
    v66 = v159;
    (*(v159 + 56))(v59, 1, 1, v25);
    v67 = &v59[*(v49 + 20)];
    sub_1C6D78A30();
    v68 = v64(v48, 1, v49);
    v69 = v66;
    if (v68 != 1)
    {
      sub_1C6CD3B70(v48, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    sub_1C6CDB374(v48, v59, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v69 = v159;
  }

  sub_1C6CD3B04(v59, v24, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v159 = *(v69 + 48);
  if ((v159)(v24, 1, v25) == 1)
  {
    sub_1C6CD3B70(v24, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v70 = 1;
    *(v70 + 8) = 7;
    swift_willThrow();
    v71 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v72 = v59;
    return sub_1C6CD576C(v72, v71);
  }

  sub_1C6CD576C(v59, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v73 = v150;
  sub_1C6CDB374(v24, v150, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v74 = v73;
  v75 = v158;
  sub_1C6CDB374(v74, v158, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v76 = v153;
  sub_1C6CDB374(v75, v153, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v77 = *v76;
  LOBYTE(v75) = *(v76 + 8);
  sub_1C6CD576C(v76, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v164 = v77;
  v165 = v75;
  sub_1C6CD3B04(v166 + v154, v45, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v78 = v155;
  v79 = v156;
  if (v156(v45, 1, v155) == 1)
  {
    v80 = v151;
    (*(v69 + 56))(v151, 1, 1, v25);
    v81 = v80 + *(v78 + 20);
    sub_1C6D78A30();
    if (v79(v45, 1, v78) != 1)
    {
      sub_1C6CD3B70(v45, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    v80 = v151;
    sub_1C6CDB374(v45, v151, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  v82 = v152;
  sub_1C6CD3B04(v80, v152, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if ((v159)(v82, 1, v25) == 1)
  {
    sub_1C6CD3B70(v82, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v83 = 1;
    *(v83 + 8) = 7;
    swift_willThrow();
    v71 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v72 = v80;
    return sub_1C6CD576C(v72, v71);
  }

  sub_1C6CD576C(v80, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v84 = v82;
  v85 = v146;
  sub_1C6CDB374(v84, v146, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v86 = v85;
  v87 = v158;
  sub_1C6CDB374(v86, v158, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v87, v76, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v88 = *(v76 + 16);
  LOBYTE(v87) = *(v76 + 24);
  sub_1C6CD576C(v76, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v162 = v88;
  v89 = v155;
  v163 = v87;
  v90 = v147;
  sub_1C6CD3B04(v166 + v154, v147, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v91 = v156;
  if (v156(v90, 1, v89) == 1)
  {
    v92 = v148;
    (*(v69 + 56))(v148, 1, 1, v25);
    v93 = v92 + *(v89 + 20);
    sub_1C6D78A30();
    v94 = v91(v90, 1, v89);
    v95 = v149;
    if (v94 != 1)
    {
      sub_1C6CD3B70(v90, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    v92 = v148;
    sub_1C6CDB374(v90, v148, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v95 = v149;
  }

  sub_1C6CD3B04(v92, v95, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if ((v159)(v95, 1, v25) == 1)
  {
    sub_1C6CD3B70(v95, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v96 = 1;
    *(v96 + 8) = 7;
    swift_willThrow();
    v71 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
    v72 = v92;
    return sub_1C6CD576C(v72, v71);
  }

  sub_1C6CD576C(v92, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v97 = v95;
  v98 = v140;
  sub_1C6CDB374(v97, v140, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v99 = v98;
  v100 = v158;
  sub_1C6CDB374(v99, v158, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CDB374(v100, v76, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v101 = *(v76 + 32);
  LOBYTE(v100) = *(v76 + 40);
  sub_1C6CD576C(v76, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v160 = v101;
  v102 = v155;
  v161 = v100;
  v103 = v141;
  sub_1C6CD3B04(v166 + v154, v141, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v104 = v156;
  if (v156(v103, 1, v102) == 1)
  {
    v105 = v145;
    (*(v69 + 56))(v145, 1, 1, v25);
    v106 = v105 + *(v102 + 20);
    sub_1C6D78A30();
    v107 = v104(v103, 1, v102);
    v108 = v142;
    if (v107 != 1)
    {
      sub_1C6CD3B70(v103, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    v105 = v145;
    sub_1C6CDB374(v103, v145, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v108 = v142;
  }

  v109 = v144;
  sub_1C6CD57CC(v143, v144, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  sub_1C6CD3B04(v105, v108, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  if ((v159)(v108, 1, v25) == 1)
  {
    sub_1C6CD3B70(v108, &qword_1EDCE2EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
    sub_1C6B688CC();
    swift_allocError();
    *v110 = 1;
    *(v110 + 8) = 7;
    swift_willThrow();
LABEL_25:
    sub_1C6CD576C(v105, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    v71 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession;
    v72 = v109;
    return sub_1C6CD576C(v72, v71);
  }

  v112 = v137;
  sub_1C6CDB374(v108, v137, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v113 = v136;
  sub_1C6CD57CC(v112, v136, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  v114 = v139;
  result = sub_1C6CDB374(v113, v139, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  v115 = (v114 + *(v138 + 32));
  if (v115[1])
  {
    v116 = 0;
    v117 = 0;
  }

  else
  {
    v118 = *v115;
    v119 = *(v109 + 32);
    if (*(v119 + 16) <= v118)
    {
      v125 = v118;
      sub_1C6B688CC();
      swift_allocError();
      *v126 = v125;
      v105 = v145;
      *(v126 + 8) = 0;
      swift_willThrow();
      sub_1C6CD576C(v114, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
      sub_1C6CD576C(v112, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
      goto LABEL_25;
    }

    if ((v118 & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    v120 = v119 + 16 * v118;
    v116 = *(v120 + 32);
    v117 = *(v120 + 40);
  }

  sub_1C6CD576C(v114, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLegacyMetadata);
  sub_1C6CD576C(v112, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata);
  sub_1C6CD576C(v105, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6CD576C(v109, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  v121 = v132;
  v122 = v135;
  v134(v131, &v164, &v162, &v160, v116, v117);
  if (v122)
  {
  }

  v123 = *(v129(0) + 20);
  v124 = v130;
  sub_1C6CD3B70(v130 + v123, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6CDB374(v121, v124 + v123, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v127 + 56))(v124 + v123, 0, 1, v128);
}

uint64_t sub_1C6CDAB80(uint64_t a1, unsigned int *a2, uint64_t (*a3)(uint64_t, uint64_t *, uint64_t *, uint64_t *, void, void), uint64_t a4)
{
  v30 = a4;
  v31 = a3;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69AA900];
  sub_1C6CDB320(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v28 - v13;
  v15 = sub_1C6D789A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended();
  sub_1C6CD3B04(a2 + *(v20 + 24), v14, &qword_1EDCE66F0, v10);
  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) == 1)
  {
    sub_1C6D78990();
    if (v21(v14, 1, v15) != 1)
    {
      sub_1C6CD3B70(v14, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
  }

  v22 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v23 = *(v22 + 20);
  sub_1C6CD3B70(a1 + v23, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v16 + 32))(a1 + v23, v19, v15);
  (*(v16 + 56))(a1 + v23, 0, 1, v15);
  v24 = *a2;
  v36 = 0;
  v37 = 1;
  v34 = 0;
  v35 = 1;
  v32 = 0;
  v33 = 1;
  v25 = v38;
  result = v31(v24, &v36, &v34, &v32, 0, 0);
  if (!v25)
  {
    v27 = *(v22 + 24);
    sub_1C6CD3B70(a1 + v27, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    sub_1C6CDB374(v9, a1 + v27, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    return (*(v28 + 56))(a1 + v27, 0, 1, v29);
  }

  return result;
}

uint64_t sub_1C6CDB2D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6CDB320(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6CDB374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6CDB408(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6CDB490()
{
  type metadata accessor for FCPersonalizationAction(319);
  if (v0 <= 0x3F)
  {
    sub_1C6CDB408(319, &qword_1EDCE5FD8, MEMORY[0x1E69B4588]);
    if (v1 <= 0x3F)
    {
      sub_1C6CDB408(319, &qword_1EDCE5E68, MEMORY[0x1E69B4AA0]);
      if (v2 <= 0x3F)
      {
        sub_1C6CDB408(319, &qword_1EDCE5FC8, MEMORY[0x1E69B45B0]);
        if (v3 <= 0x3F)
        {
          sub_1C6CDB650(319, &qword_1EDCDF3D8);
          if (v4 <= 0x3F)
          {
            sub_1C6CDB650(319, &qword_1EDCE65B0);
            if (v5 <= 0x3F)
            {
              sub_1C6CDB408(319, &qword_1EDCE5E28, MEMORY[0x1E69B4EF0]);
              if (v6 <= 0x3F)
              {
                sub_1C6CDB408(319, &qword_1EDCE5E58, MEMORY[0x1E69B4B10]);
                if (v7 <= 0x3F)
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
}

void sub_1C6CDB650(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6D79C00();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1C6CDB6BC()
{
  result = type metadata accessor for PersonalizationAction(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished()
{
  result = qword_1EDCE45B8;
  if (!qword_1EDCE45B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished() + 20);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished() + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6CDBA14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6CDBBAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished() + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventTrackFinished.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished() + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventTrackFinished.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventTrackFinished.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished() + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6CDC174()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9348);
  __swift_project_value_buffer(v0, qword_1EC1D9348);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "article";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTrackFinished._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B70 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6CDC414();
    }
  }

  return result;
}

uint64_t sub_1C6CDC414()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6CDCE60(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.traverse<A>(visitor:)()
{
  result = sub_1C6CDC520(v0);
  if (!v1)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CDC520(uint64_t a1)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
  sub_1C6B482A8(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B4833C(v5);
  }

  sub_1C6B483C8(v5, v10);
  sub_1C6CDCE60(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackFinished.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
  sub_1C6CDCE60(&qword_1EC1D9360, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CDC7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CDCE60(&qword_1EC1D9378, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CDC878@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B70 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CDC920(uint64_t a1)
{
  v2 = sub_1C6CDCE60(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CDC98C()
{
  sub_1C6CDCE60(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventTrackFinishedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  sub_1C6B49A50();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished() + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6CDCE60(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6CDCE60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t Com_Apple_News_Personalization_FeedType.string.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  result = *v0;
  switch(*v0)
  {
    case 1:
      result = 0x756F59726F66;
      break;
    case 2:
    case 3:
      result = 0x656E697A6167616DLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6C656E6E616863;
      break;
    case 7:
      result = 0x6369706F74;
      break;
    case 8:
      result = 0x697A6167614D796DLL;
      break;
    case 9:
      result = 6385509;
      break;
    case 0xALL:
      result = 0x6F69647561;
      break;
    case 0xBLL:
      result = 0x7369486F69647561;
      break;
    case 0xCLL:
      result = 0x616C506F69647561;
      break;
    case 0xDLL:
      result = 0x6465766173;
      break;
    case 0xELL:
      result = 0x79726F74736968;
      break;
    case 0xFLL:
      result = 0x686372616573;
      break;
    case 0x10:
      result = 0x6F48686372616573;
      break;
    case 0x11:
      result = 0x6957646572616873;
      break;
    case 0x12:
      result = 0x7374726F7073;
      break;
    case 0x13:
      result = 0x76457374726F7073;
      break;
    case 0x14:
      result = 0x7548656C7A7A7570;
      break;
    case 0x15:
      result = 0x7954656C7A7A7570;
      break;
    case 0x16:
      result = 0x6F42657069636572;
      break;
    case 0x17:
      result = 0x627548646F6F66;
      break;
    case 0x18:
      result = 0x6143657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SessionDataProviderType.visitSessions(eventLimit:reversed:stoppableVisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  v14 = *(a6 + 8);

  v14(sub_1C6CDD34C, v13, a2, a3, a4, a5, a6);
}

uint64_t sub_1C6CDD2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = *(*(a1 + 16) + 16);
  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
  }

  else
  {
    if (v9 < a3)
    {
      swift_beginAccess();
      *(a2 + 16) = v9;
    }

    return v9 >= a3;
  }

  return result;
}

uint64_t SessionDataProviderType.visitSessions(reversed:visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a2;
  v6[3] = a3;
  return (*(a5 + 8))(0, 0, a1, sub_1C6BF5054, v6, a4, a5);
}

uint64_t GenericSessionDataProviderType.visitSessions(reversed:visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a2;
  v6[5] = a3;
  return (*(a5 + 24))(0, 0, a1, sub_1C6CDD420, v6, a4, a5);
}

uint64_t sub_1C6CDD420()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t GenericSessionDataProviderType.visitSessions(eventLimit:reversed:stoppableVisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = v12;
  v13[5] = a1;
  v14 = *(a6 + 24);

  v14(sub_1C6CDD678, v13, a2, a3, a4, a5, a6);
}

uint64_t sub_1C6CDD53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 24);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  v10 = v5 + result;
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a3)
    {
      return v10 >= a3;
    }

    v11 = v7(v8, AssociatedConformanceWitness);
    result = swift_beginAccess();
    v12 = *(a2 + 16);
    v13 = __OFADD__(v12, v11);
    v14 = v12 + v11;
    if (!v13)
    {
      *(a2 + 16) = v14;
      return v10 >= a3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6CDD678(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1C6CDD53C(a1, v1[4], v1[5]);
}

id sub_1C6CDD6E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    v29 = a1;
    sub_1C6D79DF0();
    v4 = v29 + 64;
    v5 = -1 << *(v29 + 32);
    result = sub_1C6D79CC0();
    v6 = v29;
    v7 = result;
    v8 = 0;
    v9 = *(v29 + 36);
    v30 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v12 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_23;
      }

      v31 = v8;
      v13 = v4;
      v14 = (*(v6 + 48) + 16 * v7);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(v6 + 56) + 8 * v7);
      v18 = objc_allocWithZone(MEMORY[0x1E69B6DF8]);

      result = [v18 init];
      if (!result)
      {
        goto LABEL_27;
      }

      v19 = result;
      v20 = sub_1C6D79570();
      [v19 setTagID_];

      [v19 setScore_];

      sub_1C6D79DC0();
      v21 = *(v32 + 16);
      sub_1C6D79E00();
      sub_1C6D79E10();
      result = sub_1C6D79DD0();
      v10 = 1 << *(v6 + 32);
      if (v7 >= v10)
      {
        goto LABEL_24;
      }

      v22 = *(v13 + 8 * v12);
      if ((v22 & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_26;
      }

      v4 = v13;
      v23 = v22 & (-2 << (v7 & 0x3F));
      if (v23)
      {
        v10 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v11 = v30;
      }

      else
      {
        v24 = v12 << 6;
        v25 = v12 + 1;
        v26 = (v29 + 72 + 8 * v12);
        v11 = v30;
        while (v25 < (v10 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1C6B360A8(v7, v9, 0);
            v6 = v29;
            v10 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1C6B360A8(v7, v9, 0);
        v6 = v29;
      }

LABEL_4:
      v8 = v31 + 1;
      v7 = v10;
      if (v31 + 1 == v11)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C6CDD9A4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_1C6CDE7E8();
    v2 = sub_1C6D79F20();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v15);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v17 = v16 | (v15 << 6);
        v18 = (*(v1 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v27 = *(*(v1 + 56) + 8 * v17);
        sub_1C6CDE850();

        swift_dynamicCast();
        result = sub_1C6B5DEA8(v20, v19);
        if (v21)
        {
          v10 = v1;
          v11 = 16 * result;
          v12 = (v2[6] + 16 * result);
          v13 = v12[1];
          *v12 = v20;
          v12[1] = v19;

          v14 = v2[7] + v11;
          v1 = v10;
          *v14 = v28;
          *(v14 + 8) = v29;
          v9 = v15;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v2[6] + 16 * result);
          *v22 = v20;
          v22[1] = v19;
          v23 = v2[7] + 16 * result;
          *v23 = v28;
          *(v23 + 8) = v29;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v9 = v15;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v15 = v9;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1C6CDDBCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C6CDE770();
    v2 = sub_1C6D79F20();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = sub_1C6D798B0();
        v21 = sub_1C6B5DEA8(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

id sub_1C6CDDDAC()
{
  v0 = sub_1C6D763C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  sub_1C6D76D00();
  [v5 setSubscribedChannelCtr_];
  sub_1C6D76CD0();
  [v5 setPaidNonpaidSubscriptionCtr_];
  sub_1C6D76CA0();
  [v5 setAutoSubscribeCtr_];
  sub_1C6D76D50();
  [v5 setComputedGlobalScoreCoefficient_];
  sub_1C6D76D40();
  [v5 setUserFeedbackScore_];
  sub_1C6D76D70();
  [v5 setRawUserFeedbackScore_];
  sub_1C6D76C90();
  [v5 setPersonalizationScore_];
  sub_1C6D76CC0();
  [v5 setRawPersonalizationScore_];
  sub_1C6D76C80();
  [v5 setAgedPersonalizationScore_];
  sub_1C6D76EA0();
  [v5 setConversionMultiplier_];
  sub_1C6D76F10();
  [v5 setDampenedStaticMultiplier_];
  sub_1C6D76DE0();
  [v5 setStaticMultiplier_];
  sub_1C6D76ED0();
  [v5 setQualitativeMultiplier_];
  sub_1C6D76E10();
  [v5 setPublisherDampener_];
  sub_1C6D76EC0();
  [v5 setPublisherFavorability_];
  v6 = sub_1C6D76EE0();
  sub_1C6CDD6E8(v6);

  sub_1C6B0C69C(0, &qword_1EDCEA508, 0x1E69B6DF8);
  v7 = sub_1C6D79760();

  [v5 setCohortMemberships_];

  sub_1C6D76D80();
  [v5 setMultiplier_];
  sub_1C6D76D60();
  [v5 setServerScoreDemocratizationFactor_];
  sub_1C6D76F00();
  [v5 setNicheContentMultiplier_];
  sub_1C6D76EF0();
  [v5 setContentTriggerDampener_];
  v8 = sub_1C6CDE5F8();
  [v5 setCoefficients_];

  v9 = sub_1C6D76DB0();
  if (*(v9 + 16) && (v10 = sub_1C6B5DEA8(42, 0xE100000000000000), (v11 & 1) != 0))
  {
    (*(v1 + 16))(v4, *(v9 + 56) + *(v1 + 72) * v10, v0);

    result = [objc_allocWithZone(MEMORY[0x1E69B6FC8]) init];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    v14 = sub_1C6D79570();
    [v13 setIdentifier_];

    sub_1C6D763B0();
    [v13 setRawClicks_];
    sub_1C6D76390();
    [v13 setClicks_];
    sub_1C6D76380();
    [v13 setImpressions_];
    (*(v1 + 8))(v4, v0);
    [v5 setGlobalCohort_];
  }

  else
  {
  }

  v15 = sub_1C6D76D20();
  if ((v16 & 1) == 0)
  {
    [v5 setTabiScore_];
  }

  v17 = COERCE_DOUBLE(sub_1C6D76CF0());
  v19 = v18;
  if ((v18 & 1) == 0)
  {
    HIDWORD(v20) = HIDWORD(v17);
    *&v20 = v17;
    [v5 setShadowAgedPersonalizationScore_];
    v21 = COERCE_DOUBLE(sub_1C6D76C70());
    HIDWORD(v22) = HIDWORD(v21);
    *&v22 = v21;
    if (v23)
    {
      *&v22 = 0.0;
    }

    [v5 setShadowTabiScore_];
  }

  [v5 setHasShadowScores_];
  if (qword_1EDCEA7D8 != -1)
  {
    swift_once();
  }

  if (byte_1EDCEA7E0 == 1)
  {
    v24 = [v5 debugFields];
    sub_1C6D76C60();
    [v24 setUserConversionScore_];

    v25 = [v5 debugFields];
    sub_1C6D76E90();
    [v25 setBundlePaidMultiplier_];

    v26 = [v5 debugFields];
    sub_1C6D76E80();
    [v26 setBundleFreeMultiplier_];

    v27 = [v5 debugFields];
    sub_1C6D76E30();
    [v27 setFeaturedMultiplier_];

    v28 = [v5 debugFields];
    sub_1C6D76DC0();
    [v28 setAudioMultiplier_];

    v29 = [v5 debugFields];
    sub_1C6D76E60();
    [v29 setEvergreenMultiplier_];

    v30 = [v5 debugFields];
    sub_1C6D76DA0();
    [v30 setSeenPenalty_];

    v31 = [v5 debugFields];
    sub_1C6D76D90();
    [v31 setReadPenalty_];

    v32 = [v5 debugFields];
    sub_1C6D76DD0();
    [v32 setListenedPenalty_];

    v33 = [v5 debugFields];
    sub_1C6D76E20();
    [v33 setSparseTagsPenalty_];

    v34 = [v5 debugFields];
    sub_1C6D76DF0();
    [v34 setTimeDecayPenalty_];

    v35 = [v5 debugFields];
    sub_1C6D76E40();
    [v35 setMultiplierDampener_];

    v36 = [v5 debugFields];
    sub_1C6D76E00();
    [v36 setMutedVoteDampener_];

    v37 = [v5 debugFields];
    v38 = sub_1C6D76E50();
    sub_1C6CDDBCC(v38);

    sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
    v39 = sub_1C6D79480();

    [v37 setNicheContentScores_];

    v40 = [v5 debugFields];
    v41 = sub_1C6D76F20();
    sub_1C6CDDBCC(v41);

    v42 = sub_1C6D79480();

    [v40 setContentTriggerScores_];
  }

  return v5;
}