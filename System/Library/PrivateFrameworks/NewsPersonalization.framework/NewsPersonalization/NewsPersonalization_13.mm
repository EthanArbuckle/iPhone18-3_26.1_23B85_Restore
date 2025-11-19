void sub_1C6C46A6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v63 = a2;
  v6 = sub_1C6D773B0();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77430();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1C6D77800();
  v62 = *(v64 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C47418();
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C6D77290();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  (*(v25 + 16))(&v53 - v24, a1, v21, v23);
  if (swift_dynamicCast())
  {
    v56 = a3;
    v26 = v66[7];
    (*(v17 + 8))(v20, v16);
    v27 = sub_1C6D77270();
    v28 = sub_1C6D77330();
    v30 = v29;

    if (!v3)
    {
      sub_1C6C47540(&qword_1EDCE5F50, MEMORY[0x1E69B4778]);
      v31 = v64;
      sub_1C6D75AF0();
      v63 = 0;
      v54 = v28;
      v55 = v30;
      swift_beginAccess();
      v33 = *(v26 + 16);

      sub_1C6D77790();
      v34 = sub_1C6D77420();
      v36 = v35;
      v37 = v61;
      v38 = *(v60 + 8);
      v38(v12, v61);
      LOBYTE(v34) = sub_1C6B1E978(v34, v36, v33);

      if (v34)
      {
        (*(v62 + 8))(v65, v31);
        sub_1C6B1C9F0(v54, v55);
        v39 = sub_1C6D76F90();
        (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
      }

      else
      {
        sub_1C6D77790();
        v40 = sub_1C6D77420();
        v42 = v41;
        v38(v12, v37);
        swift_beginAccess();
        sub_1C6B1E6A8(v66, v40, v42);
        swift_endAccess();

        v43 = v56;
        v56[3] = v31;
        v44 = MEMORY[0x1E69B4778];
        v43[4] = sub_1C6C47540(&qword_1EDCE5F68, MEMORY[0x1E69B4778]);
        v43[5] = sub_1C6C47540(&qword_1EDCE5F60, v44);
        boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v43);
        v46 = v62;
        v47 = v65;
        (*(v62 + 16))(boxed_opaque_existential_2, v65, v31);
        v48 = v57;
        sub_1C6D777F0();
        v49 = sub_1C6D773A0();
        sub_1C6B1C9F0(v54, v55);
        (*(v58 + 8))(v48, v59);
        (*(v46 + 8))(v47, v31);
        v43[6] = v49;
        v50 = *MEMORY[0x1E69E35F8];
        v51 = sub_1C6D76F90();
        v52 = *(v51 - 8);
        (*(v52 + 104))(v43, v50, v51);
        (*(v52 + 56))(v43, 0, 1, v51);
      }
    }
  }

  else
  {
    v32 = sub_1C6D76F90();
    (*(*(v32 - 8) + 56))(a3, 1, 1, v32);
  }
}

void sub_1C6C47138(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1C6C47364();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6C463A0(a1, a2, v10);
  if (!v3)
  {
    v18 = a3;
    v19 = 0;
    v11 = sub_1C6D76F90();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    v16[1] = v12 + 48;
    v17 = v13;
    if (v13(v10, 1, v11) == 1)
    {
      v14 = v19;
      sub_1C6C46A6C(a1, a2, v18);
      v19 = v14;
      if (v17(v10, 1, v11) != 1)
      {
        sub_1C6C473BC(v10);
      }
    }

    else
    {
      v15 = v18;
      (*(v12 + 32))(v18, v10, v11);
      (*(v12 + 56))(v15, 0, 1, v11);
    }
  }
}

void sub_1C6C47364()
{
  if (!qword_1EDCE6210)
  {
    sub_1C6D76F90();
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6210);
    }
  }
}

uint64_t sub_1C6C473BC(uint64_t a1)
{
  sub_1C6C47364();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6C47418()
{
  if (!qword_1EDCE60A0)
  {
    sub_1C6D77810();
    sub_1C6C47540(&qword_1EDCE5F48, MEMORY[0x1E69B4790]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE60A0);
    }
  }
}

void sub_1C6C474AC()
{
  if (!qword_1EDCE6040)
  {
    sub_1C6D77D70();
    sub_1C6C47540(&qword_1EDCE5E70, MEMORY[0x1E69B4A70]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6040);
    }
  }
}

uint64_t sub_1C6C47540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CurrentTimestampFeatureResolver.resolveFeatures(inputKeys:configuration:nodeID:)()
{
  v0 = sub_1C6D75F50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C4780C();
  sub_1C6B9F304();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 72);
  v8 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v9 = swift_allocObject();
  v20 = xmmword_1C6D7E630;
  *(v9 + 16) = xmmword_1C6D7E630;
  v10 = v9 + v8;
  v11 = *(v6 + 56);
  sub_1C6D783C0();
  sub_1C6C47864();
  v12 = swift_allocObject();
  *(v12 + 16) = v20;
  sub_1C6D75F40();
  sub_1C6D75F10();
  v14 = v13;
  v15 = v13;
  result = (*(v1 + 8))(v4, v0);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 2147483650.0)
  {
    *(v12 + 32) = v14;
    *(v10 + v11) = v12;
    v17 = *MEMORY[0x1E6996140];
    v18 = sub_1C6D78760();
    (*(*(v18 - 8) + 104))(v10 + v11, v17, v18);
    return sub_1C6D787D0();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C6C4780C()
{
  if (!qword_1EDCE7D20)
  {
    sub_1C6B9F304();
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7D20);
    }
  }
}

void sub_1C6C47864()
{
  if (!qword_1EDCE7CD0)
  {
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7CD0);
    }
  }
}

uint64_t sub_1C6C47918()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

size_t sub_1C6C47950@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v52 = a2;
  sub_1C6B986D0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D783E0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1C6D78810();
  v15 = *(v51 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {
    v20 = MEMORY[0x1E69E7CC0];
    v55 = i;
    if (!i)
    {
      break;
    }

    v58 = MEMORY[0x1E69E7CC0];
    result = sub_1C6B39674(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v46 = v14;
    v47 = v10;
    v14 = 0;
    v20 = v58;
    v10 = (v54 & 0xC000000000000001);
    v48 = a3;
    v49 = v54 & 0xFFFFFFFFFFFFFF8;
    v50 = v15 + 32;
    while (1)
    {
      a3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10)
      {
        v22 = MEMORY[0x1CCA56240](v14, v54);
      }

      else
      {
        if (v14 >= *(v49 + 16))
        {
          goto LABEL_34;
        }

        v22 = *(v54 + 8 * v14 + 32);
        swift_unknownObjectRetain();
      }

      v57 = v22;
      sub_1C6C47E78(&v57, v53, v52, &v56, v18);
      if (v4)
      {

        return swift_unknownObjectRelease();
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v58 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C6B39674(v23 > 1, v24 + 1, 1);
        v20 = v58;
      }

      *(v20 + 16) = v24 + 1;
      (*(v15 + 32))(v20 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v24, v18, v51);
      ++v14;
      i = v55;
      if (a3 == v55)
      {
        v10 = v47;
        a3 = v48;
        v14 = v46;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_17:
  sub_1C6B96AD0(v20, 2, 2u, a3);
  if (v4)
  {
  }

  sub_1C6D783C0();
  if (!i)
  {
LABEL_32:
    sub_1C6D78740();
    v45 = sub_1C6D78760();
    (*(*(v45 - 8) + 56))(v10, 0, 1, v45);
    return sub_1C6D78830();
  }

  v58 = MEMORY[0x1E69E7CC0];
  result = sub_1C6B39280(0, i & ~(i >> 63), 0);
  if ((i & 0x8000000000000000) == 0)
  {
    v53 = 0;
    v46 = v14;
    v47 = v10;
    v48 = a3;
    v25 = v58;
    v26 = v54;
    if ((v54 & 0xC000000000000001) != 0)
    {
      v27 = 0;
      do
      {
        MEMORY[0x1CCA56240](v27, v26);
        v28 = [swift_unknownObjectRetain() identifier];
        v29 = sub_1C6D795A0();
        v31 = v30;
        swift_unknownObjectRelease_n();

        v58 = v25;
        v33 = *(v25 + 16);
        v32 = *(v25 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1C6B39280((v32 > 1), v33 + 1, 1);
          v25 = v58;
        }

        ++v27;
        *(v25 + 16) = v33 + 1;
        v34 = v25 + 16 * v33;
        *(v34 + 32) = v29;
        *(v34 + 40) = v31;
      }

      while (v55 != v27);
    }

    else
    {
      v35 = (v54 + 32);
      do
      {
        v36 = i;
        v37 = *v35;
        v38 = [swift_unknownObjectRetain_n() identifier];
        v39 = sub_1C6D795A0();
        v41 = v40;
        swift_unknownObjectRelease_n();

        v58 = v25;
        v43 = *(v25 + 16);
        v42 = *(v25 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1C6B39280((v42 > 1), v43 + 1, 1);
          v25 = v58;
        }

        *(v25 + 16) = v43 + 1;
        v44 = v25 + 16 * v43;
        *(v44 + 32) = v39;
        *(v44 + 40) = v41;
        ++v35;
        i = v36 - 1;
      }

      while (v36 != 1);
    }

    v10 = v47;
    goto LABEL_32;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1C6C47E78@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a5;
  v66 = a3;
  v64 = a2;
  v80 = sub_1C6D78810();
  v74 = *(v80 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v68 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = v62 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v71 = v62 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v62 - v15;
  v17 = sub_1C6D78A80();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v69 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v62 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v24 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v72 = (v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v73 = (v62 - v28);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = (v62 - v31);
  v33 = *a1;
  v34 = [*a1 personalizationData];
  if (v34)
  {
    v35 = v34;
    v63 = v33;
    v70 = a4;
    v36 = sub_1C6D75E60();
    v38 = v37;

    v78 = v36;
    v79 = v38;
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    sub_1C6B1CD10(v36, v38);
    sub_1C6D78A70();
    sub_1C6BFE05C();
    sub_1C6D78C00();
    if (v5)
    {
      result = sub_1C6B1C9F0(v36, v38);
      a4 = v70;
      goto LABEL_27;
    }

    v62[1] = v22;
    static Features.fromProtoFeatureMap(_:)(*v32, v16);
    v41 = sub_1C6B66A28(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v43 = v41[2];
    v42 = v41[3];
    v40 = v41;
    if (v43 >= v42 >> 1)
    {
      v40 = sub_1C6B66A28(v42 > 1, v43 + 1, 1, v41);
    }

    sub_1C6B1C9F0(v36, v38);
    v40[2] = v43 + 1;
    (*(v74 + 32))(v40 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v43, v16, v80);
    sub_1C6BC496C(v32);
    a4 = v70;
    v33 = v63;
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  v44 = [v33 rapidUpdatePersonalizationData];
  if (v44)
  {
    v45 = v33;
    v46 = v44;
    v47 = sub_1C6D75E60();
    v49 = v48;

    v78 = v47;
    v79 = v49;
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    sub_1C6B1CD10(v47, v49);
    sub_1C6D78A70();
    sub_1C6BFE05C();
    v50 = v73;
    sub_1C6D78C00();
    if (v5)
    {

      result = sub_1C6B1C9F0(v47, v49);
      goto LABEL_27;
    }

    static Features.fromProtoFeatureMap(_:)(*v50, v71);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1C6B66A28(0, v40[2] + 1, 1, v40);
    }

    v52 = v40[2];
    v51 = v40[3];
    if (v52 >= v51 >> 1)
    {
      v40 = sub_1C6B66A28(v51 > 1, v52 + 1, 1, v40);
    }

    sub_1C6B1C9F0(v47, v49);
    v40[2] = v52 + 1;
    (*(v74 + 32))(v40 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v52, v71, v80);
    sub_1C6BC496C(v73);
    v33 = v45;
  }

  v53 = [v33 eventAggregationPersonalizationData];
  v54 = v72;
  if (v53)
  {
    v55 = v53;
    v56 = sub_1C6D75E60();
    v58 = v57;

    v78 = v56;
    v79 = v58;
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    sub_1C6B1CD10(v56, v58);
    sub_1C6D78A70();
    sub_1C6BFE05C();
    sub_1C6D78C00();
    if (v5)
    {

      result = sub_1C6B1C9F0(v56, v58);
      goto LABEL_27;
    }

    static Features.fromProtoFeatureMap(_:)(*v54, v67);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1C6B66A28(0, v40[2] + 1, 1, v40);
    }

    v60 = v40[2];
    v59 = v40[3];
    if (v60 >= v59 >> 1)
    {
      v40 = sub_1C6B66A28(v59 > 1, v60 + 1, 1, v40);
    }

    sub_1C6B1C9F0(v56, v58);
    v40[2] = v60 + 1;
    (*(v74 + 32))(v40 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v60, v67, v80);
    sub_1C6BC496C(v54);
  }

  v61 = v68;
  sub_1C6B96AD0(v40, 1, 3u, v68);
  if (!v5)
  {

    sub_1C6C6D288(*(v64 + 16), v61, v66, v65);
    return (*(v74 + 8))(v61, v80);
  }

LABEL_27:
  *a4 = v5;
  return result;
}

uint64_t ComputeServiceRefreshBackgroundWorker.backgroundFetchTriggers.getter()
{
  sub_1C6B25120(0, &qword_1EDCDF5A0, MEMORY[0x1E69D68C8], MEMORY[0x1E69E6F90]);
  v0 = sub_1C6D78120();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  (*(v1 + 104))(v4 + v3, *MEMORY[0x1E69D68C0], v0);
  v5 = sub_1C6B252D0(v4);
  swift_setDeallocating();
  (*(v1 + 8))(v4 + v3, v0);
  swift_deallocClassInstance();
  return v5;
}

uint64_t ComputeServiceRefreshBackgroundWorker.backgroundFetchPreconditions(for:)()
{
  v0 = MEMORY[0x1E69D6908];
  sub_1C6B25120(0, &qword_1EC1D82A8, MEMORY[0x1E69D6908], MEMORY[0x1E69E6F90]);
  v1 = *(sub_1C6D78180() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1C6D7EB10;
  sub_1C6D78160();
  sub_1C6D78170();
  sub_1C6C491C0();
  sub_1C6B25120(0, &qword_1EC1D82B8, v0, MEMORY[0x1E69E62F8]);
  sub_1C6C49218();
  return sub_1C6D79CB0();
}

uint64_t ComputeServiceRefreshBackgroundWorker.performBackgroundFetch()()
{
  v1 = sub_1C6D780E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
  if ([v7 respondsToSelector_])
  {
    v8 = [v7 tabiBackgroundRefreshEnabled];
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *(v0 + 32);
      return sub_1C6D78030();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v2 + 104))(v6, *MEMORY[0x1E69D6828], v1);
  sub_1C6B25120(0, &qword_1EC1D82C8, MEMORY[0x1E69D6838], MEMORY[0x1E69D6B18]);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return sub_1C6D78300();
}

uint64_t sub_1C6C48A00()
{
  sub_1C6B25120(0, &qword_1EC1D82C8, MEMORY[0x1E69D6838], MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6C48A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C6B25120(0, qword_1EDCE65F0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - v12;
  v14 = sub_1C6D79880();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;

  sub_1C6BE0BF8(0, 0, v13, &unk_1C6D885A8, v15);
}

uint64_t sub_1C6C48BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1C6D780E0();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6C48CB4, 0, 0);
}

uint64_t sub_1C6C48CB4()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = *(MEMORY[0x1E69960B0] + 4);
  v5 = (*MEMORY[0x1E69960B0] + MEMORY[0x1E69960B0]);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1C6C48D5C;

  return v5();
}

uint64_t sub_1C6C48D5C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1C6C48F38;
  }

  else
  {
    v3 = sub_1C6C48E70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6C48E70()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];
  (*(v2 + 104))(v1, *MEMORY[0x1E69D6830], v3);
  v5(v1);
  (*(v2 + 8))(v1, v3);
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1C6C48F38()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  (*(v0 + 40))(v1);

  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

void *ComputeServiceRefreshBackgroundWorker.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t ComputeServiceRefreshBackgroundWorker.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C4902C()
{
  v0 = MEMORY[0x1E69D6908];
  sub_1C6B25120(0, &qword_1EC1D82A8, MEMORY[0x1E69D6908], MEMORY[0x1E69E6F90]);
  v1 = *(sub_1C6D78180() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1C6D7EB10;
  sub_1C6D78160();
  sub_1C6D78170();
  sub_1C6C491C0();
  sub_1C6B25120(0, &qword_1EC1D82B8, v0, MEMORY[0x1E69E62F8]);
  sub_1C6C49218();
  return sub_1C6D79CB0();
}

unint64_t sub_1C6C491C0()
{
  result = qword_1EC1D82B0;
  if (!qword_1EC1D82B0)
  {
    sub_1C6D78180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D82B0);
  }

  return result;
}

unint64_t sub_1C6C49218()
{
  result = qword_1EC1D82C0;
  if (!qword_1EC1D82C0)
  {
    sub_1C6B25120(255, &qword_1EC1D82B8, MEMORY[0x1E69D6908], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D82C0);
  }

  return result;
}

uint64_t sub_1C6C492C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C6BB6A40;

  return sub_1C6C48BEC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t SessionDataProvider.__allocating_init(storage:unarchiver:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  SessionDataProvider.init(storage:unarchiver:)(a1, a2);
  return v7;
}

uint64_t sub_1C6C49450(char a1)
{
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](a1 & 1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C494E4@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) earliestSessionDate];
  if (v3)
  {
    v4 = v3;
    sub_1C6D75F20();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C6D75F50();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1C6C495A8()
{
  sub_1C6D7A260();
  sub_1C6C49428(v2, *v0);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C4964C()
{
  v1 = *v0;
  v2 = [v0[2] sessions];
  if (v2)
  {
    v3 = v2;
    sub_1C6D78FC0();
    v4 = sub_1C6D79780();

    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C6D7E630;
    if (v4 >> 62)
    {
      sub_1C6D79E90();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = sub_1C6D7A0E0();
    v9 = v8;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1C6B2064C();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    sub_1C6C4A98C(0, qword_1EC1D82D0, sub_1C6C4A958, MEMORY[0x1E69D6B18]);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    return sub_1C6D78300();
  }

  else
  {
    v14 = *(v1 + 80);
    v15 = *(v1 + 88);
    type metadata accessor for SessionDataProvider.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v16 = 1;
    sub_1C6C4A98C(0, qword_1EC1D82D0, sub_1C6C4A958, MEMORY[0x1E69D6B18]);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    return sub_1C6D782F0();
  }
}

uint64_t sub_1C6C498C4(uint64_t a1)
{
  v2 = *(*(*v1 + 88) + 24);
  v3 = *(*v1 + 80);
  v4 = v1 + *(*v1 + 104);
  return v2(a1, v3);
}

uint64_t sub_1C6C49938()
{
  v1 = *(v0 + *(*v0 + 14));
  [v0[2] size];
  v2 = sub_1C6D79C20();
  v3 = [v1 stringForObjectValue_];

  if (!v3)
  {
    return 0x4E574F4E4B4E55;
  }

  v4 = sub_1C6D795A0();

  return v4;
}

uint64_t sub_1C6C499E8(unsigned __int8 (*a1)(char *), uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v6 = v5;
  v10 = [*(v5 + 16) sessions];
  if (v10)
  {
    v11 = v10;
    sub_1C6D78FC0();
    v12 = sub_1C6D79780();

    v13 = sub_1C6C49D84(a1, a2, v12, v5);

    v24 = 0;
    if (a3)
    {
      v13 = sub_1C6C4A348(v13);
    }

    if (v13 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6D79E90())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1CCA56240](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v19 = MEMORY[0x1CCA568F0]();
        sub_1C6C4A558(a4, a5, v6, v17, &v24, &v23);
        objc_autoreleasePoolPop(v19);

        if (v24 != 1)
        {
          ++v15;
          if (v18 != i)
          {
            continue;
          }
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }
  }

  else
  {
    if (qword_1EDCE9828 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();

    return sub_1C6D78D30();
  }
}

unint64_t sub_1C6C49D84(unsigned __int8 (*a1)(char *), uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (!a1)
  {

    return a3;
  }

  v7 = qword_1EDCE9828;

  if (v7 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    sub_1C6D79AC0();
    v8 = MEMORY[0x1E69E7CC0];
    sub_1C6D78D30();
    v22 = v8;
    v21 = 0;
    if (a3 >> 62)
    {
      break;
    }

    v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_20;
    }

LABEL_5:
    v10 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1CCA56240](v10, a3);
      }

      else
      {
        if (v10 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v10 + 32);
      }

      v15 = v11;
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v21)
      {
        sub_1C6B16898(a1);

        return v22;
      }

      v17 = MEMORY[0x1CCA568F0](v11, v12, v13, v14);
      sub_1C6C4A064(a1, a2, a4, v15, &v22, &v21, &v20);
      objc_autoreleasePoolPop(v17);

      ++v10;
      if (v16 == v9)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v9 = sub_1C6D79E90();
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_20:
  sub_1C6B16898(a1);
  return v22;
}

uint64_t sub_1C6C4A064(unsigned __int8 (*a1)(char *), uint64_t a2, uint64_t *a3, void *a4, void *a5, _BYTE *a6, void *a7)
{
  v34 = a7;
  v30 = a5;
  v31 = a6;
  v32 = a2;
  v33 = a1;
  v10 = *a3;
  v11 = *(*a3 + 88);
  v12 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v30 - v17;
  v19 = a3 + *(v10 + 104);
  result = (*(v11 + 24))(a4, v12, v11, v16);
  if (v7)
  {
    *v34 = v7;
  }

  else
  {
    v22 = v30;
    v21 = v31;
    v23 = v33(v18);
    (*(v14 + 8))(v18, AssociatedTypeWitness);
    if (v23)
    {
      if (qword_1EDCE9828 != -1)
      {
        swift_once();
      }

      sub_1C6B1D314();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C6D7E630;
      if (*v22 >> 62)
      {
        v28 = v24;
        v25 = sub_1C6D79E90();
        v24 = v28;
      }

      else
      {
        v25 = *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = MEMORY[0x1E69E65A8];
      *(v24 + 56) = MEMORY[0x1E69E6530];
      *(v24 + 64) = v26;
      *(v24 + 32) = v25;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      *v21 = 1;
    }

    else
    {
      v27 = a4;
      MEMORY[0x1CCA55C20]();
      if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C6D797C0();
      }

      return sub_1C6D79800();
    }
  }

  return result;
}

unint64_t sub_1C6C4A348(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_1C6D79E90();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1C6B6916C(v19, 0);
      sub_1C6BF4614(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1C6D79E90();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1CCA56240]();
          v11 = MEMORY[0x1CCA56240](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1C6C4A9F0(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1C6C4A9F0(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_1C6C4A558(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = a6;
  v21 = a1;
  v22 = a5;
  v20[1] = a2;
  v9 = *a3;
  v10 = *(*a3 + 88);
  v11 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v20 - v16;
  v18 = a3 + *(v9 + 104);
  result = (*(v10 + 24))(a4, v11, v10, v15);
  if (v6)
  {
    *v23 = v6;
  }

  else
  {
    v21(v17, v22);
    return (*(v13 + 8))(v17, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1C6C4A718@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 16) earliestSessionDate];
  if (v3)
  {
    v4 = v3;
    sub_1C6D75F20();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C6D75F50();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

char *SessionDataProvider.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 104)]);

  return v0;
}

uint64_t SessionDataProvider.__deallocating_deinit()
{
  SessionDataProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1C6C4A98C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C4A9F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C6D79E90();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1C6D79D80();
}

void (*sub_1C6C4AA54(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCA56240](a2, a3);
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
    return sub_1C6C4AAD4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C4AADC(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 80;
  v3 = *(a2 + 80);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t (*sub_1C6C4AC2C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1CCA56240](a2, a3);
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
    return sub_1C6C4ACAC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C6C4ACB4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1CCA56240](a2, a3);
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
    return sub_1C6C4ADB4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C6C4AD34(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCA56240](a2, a3);
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
    return sub_1C6C4ADB8;
  }

  __break(1u);
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = sub_1C6D78A00();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView()
{
  result = qword_1EDCE3740;
  if (!qword_1EDCE3740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.duration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  sub_1C6B764C8(v1 + *(v7 + 24), v6);
  v8 = sub_1C6D78A00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D789F0();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B7655C(v6);
  }

  return result;
}

uint64_t sub_1C6C4B030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  sub_1C6B764C8(a1 + *(v8 + 24), v7);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B7655C(v7);
  }

  return result;
}

uint64_t sub_1C6C4B19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView() + 24);
  sub_1C6B7655C(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView() + 24);
  sub_1C6B7655C(v1 + v3);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.duration.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
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
  v10 = sub_1C6D78A00();
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView() + 24);
  *(v5 + 12) = v16;
  sub_1C6B764C8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B7655C(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B76B50;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.hasDuration.getter()
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  sub_1C6B764C8(v0 + *(v5 + 24), v4);
  v6 = sub_1C6D78A00();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B7655C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView() + 24);
  sub_1C6B7655C(v0 + v1);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C4B868()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8360);
  __swift_project_value_buffer(v0, qword_1EC1D8360);
  sub_1C6B780C4(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "tag_id";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A48 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.decodeMessage<A>(decoder:)()
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
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6C4BB88();
    }
  }

  return result;
}

uint64_t sub_1C6C4BB88()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView() + 24);
  sub_1C6D78A00();
  sub_1C6C4C7D0(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6C4BCD8(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C4BCD8(uint64_t a1)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1C6D78A00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  sub_1C6B764C8(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B7655C(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C6C4C7D0(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  sub_1C6C4C7D0(&qword_1EC1D8378, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C4BF7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  sub_1C6D78A30();
  v5 = *(a1 + 24);
  v6 = sub_1C6D78A00();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6C4C04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C4C7D0(&unk_1EC1D8388, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C4C0C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A48 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C4C170(uint64_t a1)
{
  v2 = sub_1C6C4C7D0(qword_1EDCE3758, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C4C1DC()
{
  sub_1C6C4C7D0(qword_1EDCE3758, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventTagFeedViewV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B77F8C();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v27 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView();
  v18 = *(v27 + 24);
  v19 = *(v14 + 48);
  sub_1C6B764C8(a1 + v18, v17);
  sub_1C6B764C8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B7655C(v17);
LABEL_11:
      v25 = *(v27 + 20);
      sub_1C6D78A40();
      sub_1C6C4C7D0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B764C8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1C6B78020(v17);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1C6C4C7D0(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
  v23 = sub_1C6D79560();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  sub_1C6B7655C(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6C4C70C()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6B780C4(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6C4C7D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C4C840()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  v3 = *(v0 + 120);

  return swift_deallocClassInstance();
}

unint64_t sub_1C6C4C8A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v112 = a3;
  v10 = sub_1C6D78F10();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v110 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v111 = v96 - v14;
  v104 = sub_1C6D783E0();
  v103 = *(v104 - 8);
  v15 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v107 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v108 = *(v17 - 8);
  v109 = v17;
  v18 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v114 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a4;
  *&v119 = a1;
  swift_getKeyPath();
  v113 = a4;
  isUniquelyReferenced_nonNull_native = sub_1C6D79820();
  swift_getWitnessTable();
  v21 = sub_1C6D79680();
  v22 = v5;

  *&v119 = v21;
  WitnessTable = swift_getWitnessTable();
  if (sub_1C6D79A30())
  {

    return sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);
  }

  v100 = WitnessTable;
  v25 = [*(v4 + 16) cachedSubscription];
  v26 = objc_getAssociatedObject(v25, v25 + 1);
  v101 = a2;
  if (v26)
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v117 = 0u;
    v118 = 0u;
  }

  v119 = v117;
  v120 = v118;
  v102 = v6;
  if (!*(&v118 + 1))
  {
    sub_1C6B79FDC(&v119);
    goto LABEL_11;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v27 = 0;
    v28 = 0;
    goto LABEL_12;
  }

  v27 = v116;
  v28 = [v116 integerValue];
  if (v28 == -1)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (objc_getAssociatedObject(v25, ~v28))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v117 = 0u;
    v118 = 0u;
  }

  v119 = v117;
  v120 = v118;
  if (!*(&v118 + 1))
  {
    sub_1C6B79FDC(&v119);
    goto LABEL_19;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    v32 = -78;
    goto LABEL_20;
  }

  v29 = v116;
  v30 = [v29 integerValue];

  v32 = v30 - 78;
LABEL_20:
  v33 = (v32 ^ v28) & 1;
  v34 = v102;
  v35 = *(v102 + 3);
  MEMORY[0x1EEE9AC00](v31);
  v36 = v112;
  v96[-6] = v113;
  v96[-5] = v21;
  LOBYTE(v96[-4]) = v33;
  v96[-3] = v34;
  v94 = a1;
  v95 = v36;
  v37 = v114;
  sub_1C6D784F0();
  if (v5)
  {
  }

  v38 = v109;
  sub_1C6D78500();
  v39 = *(&v120 + 1);

  v40 = [v39 recipeScoringConfiguration];

  if (!v40)
  {

    sub_1C6C4E6E0();
    swift_allocError();
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = 2;
    swift_willThrow();
    return (*(v108 + 8))(v37, v38);
  }

  v41 = &selRef_nonBundleOutputConfiguration;
  if (v33)
  {
    v41 = &selRef_bundleOutputConfiguration;
  }

  v42 = v40;
  v43 = [v40 *v41];
  v44 = [v43 recipeScoresOutputName];

  sub_1C6D795A0();
  sub_1C6D783C0();
  sub_1C6BB320C();
  v45 = sub_1C6D786D0();
  v99 = v42;
  v47 = *(v45 + 16);
  if (v47)
  {
    *&v119 = MEMORY[0x1E69E7CC0];
    v112 = v45;
    sub_1C6B39260(0, v47, 0);
    v48 = v112;
    v49 = v119;
    v50 = *(v119 + 16);
    v51 = 32;
    do
    {
      v52 = *(v48 + v51);
      *&v119 = v49;
      v53 = *(v49 + 24);
      if (v50 >= v53 >> 1)
      {
        sub_1C6B39260((v53 > 1), v50 + 1, 1);
        v48 = v112;
        v49 = v119;
      }

      *(v49 + 16) = v50 + 1;
      *(v49 + 8 * v50 + 32) = v52;
      v51 += 4;
      ++v50;
      --v47;
    }

    while (v47);

    v38 = v109;
    v34 = v102;
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
  }

  v54 = *(v49 + 16);
  v55 = sub_1C6D79810();
  if (v54 != v55)
  {
    v86 = v55;

    *&v119 = 0;
    *(&v119 + 1) = 0xE000000000000000;
    sub_1C6D79D50();

    *&v119 = 0x20646E756F46;
    *(&v119 + 1) = 0xE600000000000000;
    *&v117 = v54;
    v87 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v87);

    MEMORY[0x1CCA55B00](0xD000000000000015, 0x80000001C6D9F880);
    *&v117 = v86;
    v88 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v88);

    v89 = v119;
    sub_1C6C4E6E0();
    swift_allocError();
    *v90 = v89;
    *(v90 + 16) = 1;
    swift_willThrow();

    (*(v103 + 8))(v107, v104);
    return (*(v108 + 8))(v114, v38);
  }

  if (qword_1EDCE23A8 != -1)
  {
    goto LABEL_59;
  }

LABEL_36:
  sub_1C6B1A548(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v56 = swift_allocObject();
  v57 = MEMORY[0x1E69E6530];
  *(v56 + 16) = xmmword_1C6D7E630;
  v58 = MEMORY[0x1E69E65A8];
  *(v56 + 56) = v57;
  *(v56 + 64) = v58;
  *(v56 + 32) = v54;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  *&v119 = v21;
  MEMORY[0x1EEE9AC00](v59);
  v94 = v113;
  KeyPath = swift_getKeyPath();
  v62 = sub_1C6D04140(sub_1C6C4E734, KeyPath, isUniquelyReferenced_nonNull_native, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v100, MEMORY[0x1E69E7410], v61);
  v96[1] = v22;

  v112 = sub_1C6C2BFB0(v62, v49);

  v63 = *(v34 + 9);
  v96[0] = sub_1C6D79130();

  v54 = *(v34 + 14);
  __swift_project_boxed_opaque_existential_1(v34 + 10, *(v34 + 13));
  v64 = sub_1C6D78F20();
  v65 = v64;
  v102 = *(v64 + 16);
  if (v102)
  {
    v49 = 0;
    v21 = v105;
    v101 = v64 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v113 = v105 + 16;
    v100 = (v105 + 8);
    v98 = (v105 + 32);
    v97 = (v105 + 40);
    v66 = MEMORY[0x1E69E7CC8];
    v22 = v106;
    isUniquelyReferenced_nonNull_native = v111;
    do
    {
      if (v49 >= *(v65 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        swift_once();
        goto LABEL_36;
      }

      v54 = *(v21 + 72);
      v34 = *(v21 + 16);
      v34(isUniquelyReferenced_nonNull_native, v101 + v54 * v49, v22);
      v67 = sub_1C6D78EE0();
      if (!*(v112 + 16))
      {

        (*v100)(isUniquelyReferenced_nonNull_native, v22);
        goto LABEL_39;
      }

      sub_1C6B5DEA8(v67, v68);
      v70 = v69;

      if ((v70 & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = v111;
        (*v100)(v111, v22);
        goto LABEL_39;
      }

      v71 = v111;
      v21 = sub_1C6D78EE0();
      v72 = v22;
      v22 = v73;
      v34(v110, v71, v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v119 = v66;
      v74 = sub_1C6B5DEA8(v21, v22);
      v76 = v66[2];
      v77 = (v75 & 1) == 0;
      v78 = __OFADD__(v76, v77);
      v79 = v76 + v77;
      if (v78)
      {
        goto LABEL_57;
      }

      v34 = v75;
      if (v66[3] >= v79)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v82 = v74;
          sub_1C6B73ECC();
          v74 = v82;
          if (v34)
          {
LABEL_50:
            v81 = v74;

            v66 = v119;
            v22 = v106;
            (*v97)(*(v119 + 56) + v81 * v54, v110, v106);
            isUniquelyReferenced_nonNull_native = v111;
            (*v100)(v111, v22);
            v21 = v105;
            goto LABEL_39;
          }

          goto LABEL_52;
        }
      }

      else
      {
        sub_1C6B709E0(v79, isUniquelyReferenced_nonNull_native);
        v74 = sub_1C6B5DEA8(v21, v22);
        if ((v34 & 1) != (v80 & 1))
        {
          result = sub_1C6D7A1C0();
          __break(1u);
          return result;
        }
      }

      if (v34)
      {
        goto LABEL_50;
      }

LABEL_52:
      v66 = v119;
      *(v119 + 8 * (v74 >> 6) + 64) |= 1 << v74;
      v83 = (v66[6] + 16 * v74);
      *v83 = v21;
      v83[1] = v22;
      v22 = v106;
      (*v98)(v66[7] + v74 * v54, v110, v106);
      isUniquelyReferenced_nonNull_native = v111;
      (*v100)(v111, v22);
      v84 = v66[2];
      v78 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v78)
      {
        goto LABEL_58;
      }

      v66[2] = v85;
      v21 = v105;
LABEL_39:
      ++v49;
    }

    while (v102 != v49);
  }

  MEMORY[0x1EEE9AC00](v91);
  v92 = v96[0];
  v95 = v96[0];
  v94 = MEMORY[0x1E69E6168];
  v93 = sub_1C6D794B0();

  (*(v103 + 8))(v107, v104);
  (*(v108 + 8))(v114, v109);
  return v93;
}

void sub_1C6C4D710(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_1C6D795A0();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1C6C4D768(uint64_t *a1)
{
  v2 = *a1;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C6C4D7C4@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, void (*a4)(char *, uint64_t, uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v102 = a5;
  v114 = a4;
  v111 = a3;
  v109 = a2;
  v103 = a7;
  v9 = sub_1C6D783E0();
  v117 = *(v9 - 8);
  v118 = v9;
  v10 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v95 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v95 - v16;
  v18 = sub_1C6D78810();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v95 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v106 = &v95 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v110 = &v95 - v27;
  v28 = *(a1 + 24);
  if (qword_1EDCE23A8 != -1)
  {
    swift_once();
  }

  sub_1C6B1A548(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  v101 = xmmword_1C6D7E630;
  *(v29 + 16) = xmmword_1C6D7E630;
  v115 = a6;
  v30 = sub_1C6D79810();
  v31 = MEMORY[0x1E69E65A8];
  *(v29 + 56) = MEMORY[0x1E69E6530];
  *(v29 + 64) = v31;
  *(v29 + 32) = v30;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v32 = [v28 recipeScoringConfiguration];
  if (v32)
  {
    v96 = v12;
    v100 = v19;
    v99 = v18;
    v33 = &selRef_bundleInputConfiguration;
    if ((v109 & 1) == 0)
    {
      v33 = &selRef_nonBundleInputConfiguration;
    }

    v34 = *v33;
    v107 = v32;
    v35 = [v32 v34];
    v36 = [v35 inputNames];

    v37 = sub_1C6D79780();
    v38 = *(v37 + 16);
    v39 = MEMORY[0x1E69E7CC0];
    if (v38)
    {
      *&v119 = MEMORY[0x1E69E7CC0];
      sub_1C6B394C4(0, v38, 0);
      v40 = v119;
      v41 = (v37 + 40);
      do
      {
        v43 = *(v41 - 1);
        v42 = *v41;

        sub_1C6D783C0();
        *&v119 = v40;
        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1C6B394C4(v44 > 1, v45 + 1, 1);
          v40 = v119;
        }

        *(v40 + 16) = v45 + 1;
        (*(v117 + 32))(v40 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v45, v17, v118);
        v41 += 2;
        --v38;
      }

      while (v38);

      v39 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6B16F28(v111 + 32, &v119);
    v48 = __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
    sub_1C6B16800();
    v49 = sub_1C6D79E50();
    v50 = v49;
    v51 = *(v40 + 16);
    if (v51)
    {
      v97 = v48;
      v98 = v49;
      v127 = v39;
      sub_1C6B39280(0, v51, 0);
      v52 = v127;
      v53 = *(v117 + 16);
      v54 = v40 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
      v113 = *(v117 + 72);
      v114 = v53;
      v115 = v117 + 16;
      v112 = (v117 + 8);
      do
      {
        v55 = v116;
        v56 = v118;
        v114(v116, v54, v118);
        v57 = sub_1C6D783D0();
        v59 = v58;
        (*v112)(v55, v56);
        v127 = v52;
        v61 = *(v52 + 16);
        v60 = *(v52 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1C6B39280((v60 > 1), v61 + 1, 1);
          v52 = v127;
        }

        *(v52 + 16) = v61 + 1;
        v62 = v52 + 16 * v61;
        *(v62 + 32) = v57;
        *(v62 + 40) = v59;
        v54 += v113;
        --v51;
      }

      while (v51);

      v50 = v98;
      v48 = v97;
    }

    else
    {

      v52 = MEMORY[0x1E69E7CC0];
    }

    v63 = *v48;
    v64 = v110;
    v65 = v108;
    sub_1C6C47950(v50, v52, v110);
    if (v65)
    {

      return __swift_destroy_boxed_opaque_existential_1(&v119);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v119);
      v66 = [v107 eventAggregationConfiguration];
      v67 = [v66 maxSessionEvents];
      sub_1C6BFEC6C([v66 eventConditions], &v119);
      v68 = [v66 inputNames];
      v69 = sub_1C6D79780();

      v122 = v67;
      v123 = v119;
      v124 = v120;
      v125 = v121;
      v126 = v69;
      v70 = *(*(v111 + 120) + 32);
      MEMORY[0x1EEE9AC00](v71);
      *(&v95 - 2) = &v122;
      *(&v95 - 1) = v72;
      os_unfair_lock_lock((v70 + 24));
      v73 = v106;
      sub_1C6C1A93C((v70 + 16), v106);
      os_unfair_lock_unlock((v70 + 24));
      sub_1C6BC624C(&v122);
      sub_1C6B1A548(0, &qword_1EDCDF580, MEMORY[0x1E6996170], MEMORY[0x1E69E6F90]);
      v74 = v100;
      v75 = *(v100 + 72);
      v76 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1C6D7EB10;
      v78 = v77 + v76;
      v79 = *(v74 + 16);
      v80 = v99;
      v79(v78, v64, v99);
      v79(v78 + v75, v73, v80);
      v81 = v105;
      sub_1C6B96AD0(v77, 0, 3u, v105);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v82 = &selRef_bundleOutputConfiguration;
      if ((v109 & 1) == 0)
      {
        v82 = &selRef_nonBundleOutputConfiguration;
      }

      v83 = [v107 *v82];
      v84 = [v83 recipeScoresOutputName];

      sub_1C6D795A0();
      sub_1C6D783C0();
      v79(v104, v81, v80);
      v85 = sub_1C6D75F60();
      v115 = v86;
      v116 = v85;
      sub_1C6B1A548(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], MEMORY[0x1E69E6F90]);
      v87 = v117;
      v88 = *(v117 + 72);
      v89 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v90 = swift_allocObject();
      *(v90 + 16) = v101;
      v91 = v96;
      v92 = v118;
      (*(v87 + 16))(v90 + v89, v96, v118);
      sub_1C6B68E34(v90);
      swift_setDeallocating();
      v93 = *(v87 + 8);
      v93(v90 + v89, v92);
      swift_deallocClassInstance();
      sub_1C6D78790();

      v93(v91, v92);
      v94 = *(v100 + 8);
      v94(v105, v80);
      v94(v106, v80);
      return (v94)(v110, v80);
    }
  }

  else
  {
    sub_1C6C4E6E0();
    swift_allocError();
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_1C6C4E354(uint64_t *a1, double *a2, uint64_t *a3, double *a4, uint64_t a5, void *a6)
{
  v42 = a6;
  v44 = a1;
  v45 = a2;
  sub_1C6B1A548(0, &qword_1EDCEA960, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = sub_1C6D78F10();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v24 = *a3;
  v23 = a3[1];
  v25 = *a4;
  if (*(a5 + 16))
  {
    v26 = sub_1C6B5DEA8(v24, v23);
    if (v27)
    {
      (*(v16 + 16))(v19, *(a5 + 56) + *(v16 + 72) * v26, v15);
      (*(v16 + 32))(v22, v19, v15);
      v28 = v42;
      [v42 recipeSeenPenalty];
      v30 = v29;
      [v28 recipeViewedPenalty];
      v32 = v31;
      sub_1C6D78EF0();
      v33 = sub_1C6D75F50();
      v34 = *(v33 - 8);
      v41 = *(v34 + 48);
      v42 = (v34 + 48);
      LODWORD(v28) = v41(v14, 1, v33);
      sub_1C6C358F8(v14);
      if (v28 != 1)
      {
        v25 = v25 * (1.0 - v30);
      }

      v35 = v43;
      sub_1C6D78F00();
      (*(v16 + 8))(v22, v15);
      v36 = v41(v35, 1, v33);
      sub_1C6C358F8(v35);
      if (v36 != 1)
      {
        v25 = (1.0 - v32) * v25;
      }
    }
  }

  v38 = v44;
  v37 = v45;
  *v44 = v24;
  v38[1] = v23;
  *v37 = v25;
}

unint64_t sub_1C6C4E6E0()
{
  result = qword_1EDCE2910;
  if (!qword_1EDCE2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2910);
  }

  return result;
}

uint64_t sub_1C6C4E734(uint64_t *a1)
{
  v2 = *a1;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization027ComputeServiceRecipeScoringD0C6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C6C4E7C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6C4E80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6C4E850(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C6C4E88C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return swift_deallocClassInstance();
}

unint64_t sub_1C6C4E8D4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v74 = sub_1C6D783E0();
  v73 = *(v74 - 8);
  v6 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCE18F0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDCE18F8;
  sub_1C6D79AC0();
  sub_1C6B1D314();
  v80 = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C6D7EB10;
  v14 = a1[2];
  v15 = MEMORY[0x1E69E65A8];
  *(v13 + 56) = MEMORY[0x1E69E6530];
  *(v13 + 64) = v15;
  *(v13 + 32) = v14;
  v16 = sub_1C6D75F60();
  v18 = v17;
  *(v13 + 96) = MEMORY[0x1E69E6158];
  v19 = sub_1C6B2064C();
  *(v13 + 104) = v19;
  *(v13 + 72) = v16;
  *(v13 + 80) = v18;
  v79 = v11;
  sub_1C6D78D30();

  if (v14)
  {
    v20 = [*(v3 + 16) cachedSubscription];
    v21 = objc_getAssociatedObject(v20, v20 + 1);
    v76 = v19;
    if (v21)
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v83 = 0u;
      v84 = 0u;
    }

    v85 = v83;
    v86 = v84;
    if (*(&v84 + 1))
    {
      sub_1C6B18500();
      if (swift_dynamicCast())
      {
        v24 = v82;
        v25 = [v82 integerValue];
        if (v25 == -1)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_1C6B79FDC(&v85);
    }

    v24 = 0;
    v25 = 0;
LABEL_16:
    if (objc_getAssociatedObject(v20, ~v25))
    {
      sub_1C6D79C50();
      swift_unknownObjectRelease();
    }

    else
    {
      v83 = 0u;
      v84 = 0u;
    }

    v85 = v83;
    v86 = v84;
    if (*(&v84 + 1))
    {
      sub_1C6B18500();
      if (swift_dynamicCast())
      {
        v26 = v82;
        v27 = [v26 integerValue];

        v29 = v27 - 64;
        goto LABEL_24;
      }
    }

    else
    {
      sub_1C6B79FDC(&v85);
    }

LABEL_23:

    v29 = -64;
LABEL_24:
    v30 = (v29 ^ v25) & 1;
    v31 = *(v3 + 24);
    MEMORY[0x1EEE9AC00](v28);
    *(&v72 - 32) = v30;
    *(&v72 - 3) = v3;
    *(&v72 - 2) = a1;
    *(&v72 - 1) = a2;
    v32 = v81;
    sub_1C6D784F0();
    v33 = v78;
    sub_1C6D78500();
    v34 = *(&v86 + 1);

    v35 = [v34 recipeDiversificationConfiguration];

    if (v35)
    {
      v36 = &selRef_nonBundleOutputConfiguration;
      if (v30)
      {
        v36 = &selRef_bundleOutputConfiguration;
      }

      v37 = [v35 *v36];
      v38 = [v37 recipeScoresOutputName];

      sub_1C6D795A0();
      v39 = v75;
      sub_1C6D783C0();
      sub_1C6BB320C();
      v40 = sub_1C6D786D0();
      v43 = MEMORY[0x1E69E7CC0];
      v44 = *(v40 + 16);
      v72 = v35;
      if (v44)
      {
        *&v85 = MEMORY[0x1E69E7CC0];
        v45 = v40;
        sub_1C6B39260(0, v44, 0);
        v46 = v45;
        v47 = v85;
        v48 = *(v85 + 16);
        v49 = 32;
        do
        {
          v50 = *(v46 + v49);
          *&v85 = v47;
          v51 = v47[3];
          if (v48 >= v51 >> 1)
          {
            sub_1C6B39260((v51 > 1), v48 + 1, 1);
            v46 = v45;
            v47 = v85;
          }

          v47[2] = v48 + 1;
          *&v47[v48 + 4] = v50;
          v49 += 4;
          ++v48;
          --v44;
        }

        while (v44);

        v32 = v81;
        v39 = v75;
        v33 = v78;
        v35 = v72;
        v43 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v47 = MEMORY[0x1E69E7CC0];
      }

      v52 = v47[2];
      if (v52 == v14)
      {
        if (qword_1EDCE23A8 != -1)
        {
          swift_once();
        }

        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1C6D7E630;
        *(v53 + 56) = MEMORY[0x1E69E6530];
        *(v53 + 64) = MEMORY[0x1E69E65A8];
        *(v53 + 32) = v14;
        sub_1C6D79AC0();
        sub_1C6D78D30();

        *&v85 = v43;
        sub_1C6B39280(0, v14, 0);
        v54 = v85;
        v55 = a1 + 4;
        do
        {
          v56 = *v55;
          v57 = [swift_unknownObjectRetain_n() identifier];
          v58 = sub_1C6D795A0();
          v60 = v59;
          swift_unknownObjectRelease_n();

          *&v85 = v54;
          v62 = v54[2];
          v61 = v54[3];
          if (v62 >= v61 >> 1)
          {
            sub_1C6B39280((v61 > 1), v62 + 1, 1);
            v54 = v85;
          }

          v54[2] = v62 + 1;
          v63 = &v54[2 * v62];
          v63[4] = v58;
          v63[5] = v60;
          v55 += 2;
          --v14;
        }

        while (v14);
        v71 = sub_1C6C2BFB0(v54, v47);

        (*(v73 + 8))(v75, v74);
        (*(v77 + 8))(v81, v78);
        return v71;
      }

      *&v85 = 0;
      *(&v85 + 1) = 0xE000000000000000;
      sub_1C6D79D50();

      *&v85 = 0x20646E756F46;
      *(&v85 + 1) = 0xE600000000000000;
      *&v83 = v52;
      v64 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v64);

      MEMORY[0x1CCA55B00](0xD000000000000015, 0x80000001C6D9F880);
      *&v83 = v14;
      v65 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v65);

      v66 = v85;
      sub_1C6C4FD80();
      v41 = swift_allocError();
      *v67 = v66;
      *(v67 + 16) = 1;
      swift_willThrow();

      (*(v73 + 8))(v39, v74);
    }

    else
    {
      sub_1C6C4FD80();
      v41 = swift_allocError();
      *v42 = 0;
      *(v42 + 8) = 0;
      *(v42 + 16) = 2;
      swift_willThrow();
    }

    (*(v77 + 8))(v32, v33);
    sub_1C6D79AA0();
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1C6D7E630;
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    *&v83 = v41;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v69 = v85;
    v70 = v76;
    *(v68 + 56) = MEMORY[0x1E69E6158];
    *(v68 + 64) = v70;
    *(v68 + 32) = v69;
    sub_1C6D78D30();

    v71 = sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);

    return v71;
  }

  v22 = MEMORY[0x1E69E7CC0];

  return sub_1C6B5F1EC(v22);
}

uint64_t sub_1C6C4F2F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v118 = a4;
  v122 = a3;
  LODWORD(v123) = a2;
  sub_1C6C4FDD4(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v112 = (&v105 - v11);
  v12 = sub_1C6D78810();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v105 - v18;
  v125 = sub_1C6D783E0();
  v120 = *(v125 - 8);
  v20 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v105 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v105 - v27;
  v29 = [*(a1 + 24) recipeDiversificationConfiguration];
  if (!v29)
  {
    sub_1C6C4FD80();
    swift_allocError();
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = 2;
    return swift_willThrow();
  }

  v107 = a5;
  v110 = v16;
  v114 = v19;
  v108 = v13;
  v111 = v12;
  v109 = a6;
  v30 = &selRef_bundleInputConfiguration;
  v31 = v123;
  if ((v123 & 1) == 0)
  {
    v30 = &selRef_nonBundleInputConfiguration;
  }

  v32 = *v30;
  v119 = v29;
  v33 = [v29 v32];
  v34 = [v33 inputNames];

  v35 = sub_1C6D79780();
  v36 = *(v35 + 16);
  v115 = v28;
  if (v36)
  {
    v127[0] = MEMORY[0x1E69E7CC0];
    sub_1C6B394C4(0, v36, 0);
    v37 = v127[0];
    v38 = v120;
    v39 = (v35 + 40);
    do
    {
      v41 = *(v39 - 1);
      v40 = *v39;

      sub_1C6D783C0();
      v127[0] = v37;
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      v44 = v37;
      if (v43 >= v42 >> 1)
      {
        sub_1C6B394C4(v42 > 1, v43 + 1, 1);
        v44 = v127[0];
      }

      *(v44 + 16) = v43 + 1;
      (*(v38 + 32))(v44 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v43, v24, v125);
      v39 += 2;
      --v36;
      v37 = v44;
    }

    while (v36);
    v117 = v44;

    v28 = v115;
    v31 = v123;
  }

  else
  {

    v117 = MEMORY[0x1E69E7CC0];
    v38 = v120;
  }

  v47 = &selRef_bundleOutputConfiguration;
  if ((v31 & 1) == 0)
  {
    v47 = &selRef_nonBundleOutputConfiguration;
  }

  v48 = [v119 *v47];
  v49 = [v48 recipeScoresOutputName];

  sub_1C6D795A0();
  sub_1C6D783C0();
  sub_1C6B16F28((v122 + 32), v127);
  v113 = __swift_project_boxed_opaque_existential_1(v127, v127[3]);
  v50 = v118;
  v51 = *(v118 + 16);
  v52 = MEMORY[0x1E69E7CC0];
  v106 = v51;
  if (v51)
  {
    v126 = MEMORY[0x1E69E7CC0];
    v53 = v51;
    sub_1C6D79DF0();
    v54 = (v50 + 32);
    do
    {
      v55 = *v54;
      v54 += 2;
      swift_unknownObjectRetain();
      sub_1C6D79DC0();
      v56 = *(v126 + 16);
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
      --v53;
    }

    while (v53);
    v57 = v126;
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  v58 = v117;
  v59 = *(v117 + 16);
  if (v59)
  {
    v105 = v57;
    v126 = v52;
    sub_1C6B39280(0, v59, 0);
    v60 = v126;
    v62 = *(v38 + 16);
    v61 = v38 + 16;
    v63 = v58 + ((*(v61 + 64) + 32) & ~*(v61 + 64));
    v121 = *(v61 + 56);
    v122 = v62;
    v123 = v61;
    v64 = (v61 - 8);
    do
    {
      v65 = v124;
      v66 = v125;
      (v122)(v124, v63, v125);
      v67 = sub_1C6D783D0();
      v69 = v68;
      (*v64)(v65, v66);
      v126 = v60;
      v71 = *(v60 + 16);
      v70 = *(v60 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1C6B39280((v70 > 1), v71 + 1, 1);
        v60 = v126;
      }

      *(v60 + 16) = v71 + 1;
      v72 = v60 + 16 * v71;
      *(v72 + 32) = v67;
      *(v72 + 40) = v69;
      v63 += v121;
      --v59;
    }

    while (v59);

    v38 = v120;
    v28 = v115;
    v57 = v105;
  }

  else
  {

    v60 = MEMORY[0x1E69E7CC0];
  }

  v73 = v114;
  v74 = *v113;
  v75 = v116;
  sub_1C6C47950(v57, v60, v114);
  if (v75)
  {
    (*(v38 + 8))(v28, v125);

    return __swift_destroy_boxed_opaque_existential_1(v127);
  }

  __swift_destroy_boxed_opaque_existential_1(v127);
  v76 = v106;
  if (v106)
  {
    v77 = MEMORY[0x1E69E7CC0];
    v127[0] = MEMORY[0x1E69E7CC0];
    sub_1C6B39260(0, v106, 0);
    v78 = v76;
    v79 = v127[0];
    v80 = *(v127[0] + 16);
    v81 = (v118 + 40);
    do
    {
      v82 = *v81;
      v127[0] = v79;
      v83 = *(v79 + 24);
      v84 = v80 + 1;
      if (v80 >= v83 >> 1)
      {
        v85 = v78;
        sub_1C6B39260((v83 > 1), v80 + 1, 1);
        v78 = v85;
        v79 = v127[0];
      }

      *(v79 + 16) = v84;
      *(v79 + 8 * v80 + 32) = v82;
      v81 += 2;
      ++v80;
      --v78;
    }

    while (v78);
    goto LABEL_36;
  }

  v77 = MEMORY[0x1E69E7CC0];
  v84 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v84)
  {
    v79 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v127[0] = v77;
    sub_1C6B3922C(0, v84, 0);
    v86 = v127[0];
    v87 = *(v127[0] + 16);
    v88 = 32;
    do
    {
      v89 = *(v79 + v88);
      v127[0] = v86;
      v90 = *(v86 + 24);
      if (v87 >= v90 >> 1)
      {
        sub_1C6B3922C((v90 > 1), v87 + 1, 1);
        v86 = v127[0];
      }

      v91 = v89;
      *(v86 + 16) = v87 + 1;
      *(v86 + 4 * v87 + 32) = v91;
      v88 += 8;
      ++v87;
      --v84;
    }

    while (v84);

    v28 = v115;
    goto LABEL_41;
  }

  v86 = MEMORY[0x1E69E7CC0];

LABEL_41:
  sub_1C6D783C0();
  v92 = v112;
  *v112 = v86;
  v93 = *MEMORY[0x1E6996138];
  v94 = sub_1C6D78760();
  v95 = *(v94 - 8);
  (*(v95 + 104))(v92, v93, v94);
  (*(v95 + 56))(v92, 0, 1, v94);
  sub_1C6D78830();
  v96 = v108;
  (*(v108 + 16))(v110, v73, v111);
  v97 = sub_1C6D75F60();
  v123 = v98;
  v124 = v97;
  v122 = "recipeDiversification.score";
  sub_1C6C4FDD4(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], MEMORY[0x1E69E6F90]);
  v99 = v120;
  v100 = *(v120 + 72);
  v101 = (*(v120 + 80) + 32) & ~*(v120 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1C6D7E630;
  v103 = v125;
  (*(v99 + 16))(v102 + v101, v28, v125);
  sub_1C6B68E34(v102);
  swift_setDeallocating();
  v104 = *(v99 + 8);
  v104(v102 + v101, v103);
  swift_deallocClassInstance();
  sub_1C6D78790();

  (*(v96 + 8))(v114, v111);
  return (v104)(v28, v103);
}

unint64_t sub_1C6C4FD80()
{
  result = qword_1EC1D8398;
  if (!qword_1EC1D8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8398);
  }

  return result;
}

void sub_1C6C4FDD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization035ComputeServiceRecipeDiversificationD0C6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

BOOL Com_Apple_News_Personalization_SessionEvent.hasTimestamp.getter()
{
  v1 = MEMORY[0x1E69AA900];
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6C68A94(v0 + *(v6 + 24), v5, &qword_1EDCE66F0, v1);
  v7 = sub_1C6D789A0();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6C68A24(v5, &qword_1EDCE66F0, v1);
  return v8;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AA900];
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6C68A94(v1 + *(v8 + 24), v7, &qword_1EDCE66F0, v3);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C68A24(v7, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6C50130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AA900];
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6C68A94(a1 + *(v9 + 24), v8, &qword_1EDCE66F0, v4);
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D78990();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6C68A24(v8, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6C502C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  sub_1C6C68A24(a2 + v10, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  sub_1C6C68A24(v1 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEvent.timestamp.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
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
  v10 = sub_1C6D789A0();
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
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6C68A94(v1 + v16, v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C68A24(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6C50734;
}

void sub_1C6C50734(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6C68A24(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6C68A24(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEvent.clearTimestamp()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  sub_1C6C68A24(v0 + v1, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void sub_1C6C50988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C50A14(uint64_t a1, uint64_t a2)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleSeen.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C6C68A94(v2, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t sub_1C6C50CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C6C68A94(a1, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleSeen.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6C68A94(v2, v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6C68A24(v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6C514C8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
      return sub_1C6C51200;
    }

    sub_1C6C51244(v10, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v17 = *(v11 + 20);
  v18 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
  v19 = *(v11 + 24);
  v20 = sub_1C6D78A00();
  (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
  return sub_1C6C51200;
}

uint64_t sub_1C6C51244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleVisited.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C6C68A94(v2, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C6C514C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C51530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C6C68A94(a1, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

uint64_t sub_1C6C51754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17 - v13;
  sub_1C6C68B78(a1, &v17 - v13, a6);
  sub_1C6C68A24(a2, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C514C8(v14, a2, a7);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_1C6C51890(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1C6C68A24(v2, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C514C8(a1, v2, a2);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleVisited.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6C68A94(v2, v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6C68A24(v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v17 = *(v11 + 20);
    v18 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v11 + 24);
    v20 = sub_1C6D78A00();
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    return sub_1C6C51C34;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C6C51244(v10, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  return sub_1C6C51C34;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleRead.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  sub_1C6C68A94(v2, &v16 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v11 = &a1[v10[5]];
  sub_1C6D78A30();
  v12 = v10[6];
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = v10[7];
  v15 = sub_1C6D78A00();
  return (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleRead.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v12 = *(*(v11 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 1) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6C68A94(v2, v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6C68A24(v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v14 = MEMORY[0x1E69E7CC0];
    v17 = &v14[v11[5]];
    sub_1C6D78A30();
    v18 = v11[6];
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    v20 = v11[7];
    v21 = sub_1C6D78A00();
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    return sub_1C6C521B8;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C6C51244(v10, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  return sub_1C6C521B8;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleShared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6C68A94(v2, &v14 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  v11 = a1 + *(v10 + 20);
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleShared.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 1;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    return sub_1C6C526B0;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  return sub_1C6C526B0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleLiked.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C528D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleLiked.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C52D60;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  return sub_1C6C52D60;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleDisliked.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C52F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleDisliked.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C53410;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  return sub_1C6C53410;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleSaved.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C53630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleSaved.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C53AC0;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  return sub_1C6C53AC0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagMuted.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6C68A94(v2, &v11 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v10 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C53CA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6C68A94(a1, &v11 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v10 = a2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted() + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Personalization_SessionEvent.tagMuted.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6C540C8;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  return sub_1C6C540C8;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagUnmuted.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6C68A94(v2, &v11 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v10 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C542B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6C68A94(a1, &v11 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v10 = a2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted() + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Personalization_SessionEvent.tagUnmuted.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6C546D0;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  return sub_1C6C546D0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagFollowed.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6C68A94(v2, &v11 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v10 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C548B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6C68A94(a1, &v11 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v10 = a2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed() + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Personalization_SessionEvent.tagFollowed.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6C54CD8;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  return sub_1C6C54CD8;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagUnfollowed.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6C68A94(v2, &v11 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v10 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C54EC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6C68A94(a1, &v11 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v10 = a2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed() + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Personalization_SessionEvent.tagUnfollowed.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6C552E0;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  return sub_1C6C552E0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagFeedView.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6C68A94(v2, &v14 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

void (*Com_Apple_News_Personalization_SessionEvent.tagFeedView.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = sub_1C6D78A00();
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6C557D0;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  return sub_1C6C557D0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.trackVisited.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C559F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.trackVisited.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C55E80;
  }

  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  return sub_1C6C55E80;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.trackListened.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C560A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.trackListened.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C56530;
  }

  if (swift_getEnumCaseMultiPayload() != 13)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  return sub_1C6C56530;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.trackFinished.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C56750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.trackFinished.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C56BE0;
  }

  if (swift_getEnumCaseMultiPayload() != 14)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  return sub_1C6C56BE0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleUnliked.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C56E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleUnliked.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C57290;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  return sub_1C6C57290;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleUndisliked.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C574B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleUndisliked.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C57940;
  }

  if (swift_getEnumCaseMultiPayload() != 16)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  return sub_1C6C57940;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.articleUnsaved.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(v2, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
}

uint64_t sub_1C6C57B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1C6C68A94(a1, &v12 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved() + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_News_Personalization_SessionEvent.articleUnsaved.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6C57FF0;
  }

  if (swift_getEnumCaseMultiPayload() != 17)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  return sub_1C6C57FF0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.sportsTagSeen.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1C6C68A94(v2, &v14 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  v11 = &a1[*(v10 + 20)];
  sub_1C6D78A30();
  v12 = *(v10 + 24);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

void (*Com_Apple_News_Personalization_SessionEvent.sportsTagSeen.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    v16 = &v13[*(v10 + 20)];
    sub_1C6D78A30();
    v17 = *(v10 + 24);
    v18 = sub_1C6D78A00();
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1C6C584E0;
  }

  if (swift_getEnumCaseMultiPayload() != 18)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  return sub_1C6C584E0;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.tagIgnore.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6C68A94(v2, &v11 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v10 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C586C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C6C68A94(a1, &v11 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v10 = a2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore() + 20);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Personalization_SessionEvent.tagIgnore.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
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
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore();
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6C68A94(v1, v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6C68A24(v9, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v16 = v13 + *(v10 + 20);
    sub_1C6D78A30();
    return sub_1C6C58AE8;
  }

  if (swift_getEnumCaseMultiPayload() != 19)
  {
    sub_1C6C51244(v9, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v9, v13, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  return sub_1C6C58AE8;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.notificationVended.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C6C68A94(v2, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      return sub_1C6C514C8(v7, a1, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v11 = *(v10 + 20);
  v12 = sub_1C6D789A0();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t sub_1C6C58D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1C6C68A94(a1, &v15 - v6, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6C68A24(v7, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      return sub_1C6C514C8(v7, a2, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    }

    sub_1C6C51244(v7, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  sub_1C6D78A30();
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v11 = *(v10 + 20);
  v12 = sub_1C6D789A0();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Com_Apple_News_Personalization_SessionEvent.notificationVended.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6C68A94(v2, v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6C68A24(v10, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_15:
    sub_1C6D78A30();
    v17 = *(v11 + 20);
    v18 = sub_1C6D789A0();
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v11 + 24);
    v20 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    return sub_1C6C59270;
  }

  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_1C6C51244(v10, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6C514C8(v10, v14, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  return sub_1C6C59270;
}

void sub_1C6C592B4(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_1C6C68B78((*a1)[3], v10, a5);
    sub_1C6C68A24(v13, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_1C6C51244(v11, a6);
  }

  else
  {
    sub_1C6C68A24(**a1, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Com_Apple_News_Personalization_SessionEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v4 = a1 + *(v3 + 20);
  sub_1C6D78A30();
  v5 = *(v3 + 24);
  v6 = sub_1C6D789A0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1C6C59650()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE55D8);
  __swift_project_value_buffer(v0, qword_1EDCE55D8);
  sub_1C6C50988(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C6D82CB0;
  v5 = v50 + v4;
  v6 = v50 + v4 + *(v2 + 56);
  *(v50 + v4) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v50 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "articleSeen";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v50 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "articleVisited";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v50 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "articleRead";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v50 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "articleShared";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v50 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "articleLiked";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v50 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "articleDisliked";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  v21 = (v50 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "articleSaved";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v9();
  v23 = v50 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "tagMuted";
  *(v23 + 8) = 8;
  *(v23 + 16) = 2;
  v9();
  v24 = (v50 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "tagUnmuted";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v9();
  v26 = (v50 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "tagFollowed";
  *(v27 + 1) = 11;
  v27[16] = 2;
  v9();
  v28 = (v50 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "tagUnfollowed";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v9();
  v30 = (v50 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "tagFeedView";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v9();
  v32 = (v50 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "trackVisited";
  *(v33 + 1) = 12;
  v33[16] = 2;
  v9();
  v34 = (v50 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 15;
  *v35 = "trackListened";
  *(v35 + 1) = 13;
  v35[16] = 2;
  v9();
  v36 = (v50 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 16;
  *v37 = "trackFinished";
  *(v37 + 1) = 13;
  v37[16] = 2;
  v9();
  v38 = v50 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 17;
  *v38 = "articleUnliked";
  *(v38 + 8) = 14;
  *(v38 + 16) = 2;
  v9();
  v39 = (v50 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 18;
  *v40 = "articleUndisliked";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v9();
  v41 = (v50 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 19;
  *v42 = "articleUnsaved";
  *(v42 + 1) = 14;
  v42[16] = 2;
  v9();
  v43 = (v50 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 20;
  *v44 = "sportsTagSeen";
  *(v44 + 1) = 13;
  v44[16] = 2;
  v9();
  v45 = (v50 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 21;
  *v46 = "tagIgnore";
  *(v46 + 1) = 9;
  v46[16] = 2;
  v9();
  v47 = (v50 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 22;
  *v48 = "notificationVended";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEvent._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE55D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE55D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C6C5A07C();
        break;
      case 2:
        sub_1C6C5A130(v5, a1, a2, a3);
        break;
      case 3:
        sub_1C6C5A764(v5, a1, a2, a3);
        break;
      case 4:
        sub_1C6C5ADB4(v5, a1, a2, a3);
        break;
      case 5:
        sub_1C6C5B404(v5, a1, a2, a3);
        break;
      case 6:
        sub_1C6C5BA54(v5, a1, a2, a3);
        break;
      case 7:
        sub_1C6C5C0A4(v5, a1, a2, a3);
        break;
      case 8:
        sub_1C6C5C6F4(v5, a1, a2, a3);
        break;
      case 9:
        sub_1C6C5CD44(v5, a1, a2, a3);
        break;
      case 10:
        sub_1C6C5D394(v5, a1, a2, a3);
        break;
      case 11:
        sub_1C6C5D9E4(v5, a1, a2, a3);
        break;
      case 12:
        sub_1C6C5E034(v5, a1, a2, a3);
        break;
      case 13:
        sub_1C6C5E684(v5, a1, a2, a3);
        break;
      case 14:
        sub_1C6C5ECD4(v5, a1, a2, a3);
        break;
      case 15:
        sub_1C6C5F324(v5, a1, a2, a3);
        break;
      case 16:
        sub_1C6C5F974(v5, a1, a2, a3);
        break;
      case 17:
        sub_1C6C5FFC4(v5, a1, a2, a3);
        break;
      case 18:
        sub_1C6C60614(v5, a1, a2, a3);
        break;
      case 19:
        sub_1C6C60C64(v5, a1, a2, a3);
        break;
      case 20:
        sub_1C6C612B4(v5, a1, a2, a3);
        break;
      case 21:
        sub_1C6C61904(v5, a1, a2, a3);
        break;
      case 22:
        sub_1C6C61F54(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C6C5A07C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  sub_1C6D789A0();
  sub_1C6C6851C(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6C5A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v39 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  sub_1C6C50988(0, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v39 - v28;
  v44 = v5;
  v30 = *(v5 + 56);
  v47 = v4;
  v41 = v30;
  (v30)(&v39 - v28, 1, 1, v4, v27);
  sub_1C6C68A94(v51, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v40 = v16;
  v31 = (*(v16 + 48))(v14, 1, v15);
  if (v31 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_5:
    v32 = v47;
    goto LABEL_6;
  }

  sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    goto LABEL_5;
  }

  sub_1C6C68A24(v29, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  v36 = v42;
  sub_1C6C514C8(v19, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  sub_1C6C514C8(v36, v29, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  v32 = v47;
  v41(v29, 0, 1, v47);
LABEL_6:
  v33 = v45;
  sub_1C6C6851C(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  v34 = v46;
  sub_1C6D78BB0();
  if (v34)
  {
    return sub_1C6C68A24(v29, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  }

  sub_1C6C68A94(v29, v33, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  if ((*(v44 + 48))(v33, 1, v32) == 1)
  {
    sub_1C6C68A24(v29, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    return sub_1C6C68A24(v33, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  }

  else
  {
    v37 = v43;
    sub_1C6C514C8(v33, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    if (v31 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v29, &qword_1EC1D83F8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    v38 = v51;
    sub_1C6C68A24(v51, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v37, v38, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v38, 0, 1, v15);
  }
}

uint64_t sub_1C6C5A764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    return sub_1C6C68A24(v35, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8400, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5ADB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    return sub_1C6C68A24(v35, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8408, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5B404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    return sub_1C6C68A24(v35, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8410, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5BA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    return sub_1C6C68A24(v35, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8418, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5C0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    return sub_1C6C68A24(v35, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8420, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5C6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    return sub_1C6C68A24(v35, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8428, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5CD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    return sub_1C6C68A24(v35, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8430, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5D394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    return sub_1C6C68A24(v35, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8438, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    return sub_1C6C68A24(v35, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8440, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5E034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    return sub_1C6C68A24(v35, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8448, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5E684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    return sub_1C6C68A24(v35, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8450, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5ECD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    return sub_1C6C68A24(v35, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8458, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    return sub_1C6C68A24(v35, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8460, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5F974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    return sub_1C6C68A24(v35, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8468, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C5FFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    return sub_1C6C68A24(v35, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8470, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C60614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    return sub_1C6C68A24(v35, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8478, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C60C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    return sub_1C6C68A24(v35, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8480, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C612B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    return sub_1C6C68A24(v35, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8488, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C61904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    return sub_1C6C68A24(v35, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8490, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t sub_1C6C61F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1C6C50988(0, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended, v10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v45 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v44 = v5;
  v28 = *(v5 + 56);
  v46 = &v40 - v29;
  v48 = v4;
  v28(v27);
  sub_1C6C68A94(v52, v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_1C6C68A24(v14, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
  }

  else
  {
    sub_1C6C514C8(v14, v22, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v22, v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v31 = v15;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      v32 = v46;
      sub_1C6C68A24(v46, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      v33 = v43;
      sub_1C6C514C8(v19, v43, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      sub_1C6C514C8(v33, v32, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
      v34 = v48;
      (v28)(v32, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C6C51244(v19, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  v34 = v48;
  v32 = v46;
LABEL_7:
  v35 = v45;
  sub_1C6C6851C(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  v36 = v47;
  sub_1C6D78BB0();
  if (v36)
  {
    return sub_1C6C68A24(v32, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  }

  sub_1C6C68A94(v32, v35, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  if ((*(v44 + 48))(v35, 1, v34) == 1)
  {
    sub_1C6C68A24(v32, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    return sub_1C6C68A24(v35, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  }

  else
  {
    v38 = v42;
    sub_1C6C514C8(v35, v42, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    if (v30 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6C68A24(v32, &qword_1EC1D8498, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    v39 = v52;
    sub_1C6C68A24(v52, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C514C8(v38, v39, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v39, 0, 1, v31);
  }
}

uint64_t Com_Apple_News_Personalization_SessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  result = sub_1C6C62A34(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6C68A94(v3, v11, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_1C6C62EE4(v3, a1, a2, a3);
          break;
        case 2u:
          sub_1C6C6314C(v3, a1, a2, a3);
          break;
        case 3u:
          sub_1C6C633B4(v3, a1, a2, a3);
          break;
        case 4u:
          sub_1C6C6361C(v3, a1, a2, a3);
          break;
        case 5u:
          sub_1C6C63884(v3, a1, a2, a3);
          break;
        case 6u:
          sub_1C6C63AEC(v3, a1, a2, a3);
          break;
        case 7u:
          sub_1C6C63D54(v3, a1, a2, a3);
          break;
        case 8u:
          sub_1C6C63FBC(v3, a1, a2, a3);
          break;
        case 9u:
          sub_1C6C64224(v3, a1, a2, a3);
          break;
        case 0xAu:
          sub_1C6C6448C(v3, a1, a2, a3);
          break;
        case 0xBu:
          sub_1C6C646F4(v3, a1, a2, a3);
          break;
        case 0xCu:
          sub_1C6C6495C(v3, a1, a2, a3);
          break;
        case 0xDu:
          sub_1C6C64BC4(v3, a1, a2, a3);
          break;
        case 0xEu:
          sub_1C6C64E2C(v3, a1, a2, a3);
          break;
        case 0xFu:
          sub_1C6C65094(v3, a1, a2, a3);
          break;
        case 0x10u:
          sub_1C6C652FC(v3, a1, a2, a3);
          break;
        case 0x11u:
          sub_1C6C65564(v3, a1, a2, a3);
          break;
        case 0x12u:
          sub_1C6C657CC(v3, a1, a2, a3);
          break;
        case 0x13u:
          sub_1C6C65A34(v3, a1, a2, a3);
          break;
        case 0x14u:
          sub_1C6C65C9C(v3, a1, a2, a3);
          break;
        default:
          sub_1C6C62C80(v3, a1, a2, a3);
          break;
      }

      sub_1C6C51244(v11, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    }

    v14 = v3 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6C62A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AA900];
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6C68A94(a1 + *(v15 + 24), v9, &qword_1EDCE66F0, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6C68A24(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6C6851C(&unk_1EDCDFD10, MEMORY[0x1E69AA900]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1C6C62C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    sub_1C6C6851C(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C62EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    sub_1C6C6851C(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C6314C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6C6851C(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C633B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    sub_1C6C6851C(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C6361C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    sub_1C6C6851C(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C63884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    sub_1C6C6851C(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C63AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    sub_1C6C6851C(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C63D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    sub_1C6C6851C(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C63FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    sub_1C6C6851C(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C64224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    sub_1C6C6851C(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C6448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    sub_1C6C6851C(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C646F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    sub_1C6C6851C(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C6495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    sub_1C6C6851C(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C64BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    sub_1C6C6851C(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C64E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    sub_1C6C6851C(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C65094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    sub_1C6C6851C(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C652FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    sub_1C6C6851C(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C65564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    sub_1C6C6851C(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C657CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    sub_1C6C6851C(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t sub_1C6C65A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    sub_1C6C6851C(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}