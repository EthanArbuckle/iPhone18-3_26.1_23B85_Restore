uint64_t sub_1B4B69444(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7470, &qword_1B4D1F290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t static TrainingLoadFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B69974(v3, v1, v2);
}

uint64_t static TrainingLoadFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49C016C;

  return sub_1B4B69C7C(a1);
}

uint64_t TrainingLoadFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4B69614()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B69688()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B696DC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

unint64_t TrainingLoadFact.makePrompt(promptFormatter:)()
{
  v1 = 0xD000000000000037;
  v2 = *v0;
  v3 = 0xD00000000000003BLL;
  v4 = 0xD000000000000032;
  if (v2 != 3)
  {
    v4 = 0xD000000000000037;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t sub_1B4B697E8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4B69974(v3, v1, v2);
}

uint64_t sub_1B4B69828(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49C0344;

  return sub_1B4B69C7C(a1);
}

unint64_t sub_1B4B698E8()
{
  v1 = 0xD000000000000037;
  v2 = *v0;
  v3 = 0xD00000000000003BLL;
  v4 = 0xD000000000000032;
  if (v2 != 3)
  {
    v4 = 0xD000000000000037;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t sub_1B4B69974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v7);
  v10 = (*(a3 + 56))(a2, a3);
  v11 = [v10 effectiveTypeIdentifier];

  if (qword_1F2CB8768 == v11 || unk_1F2CB8770 == v11)
  {
LABEL_12:
    v17 = sub_1B4C94F64(MEMORY[0x1E69E7CC0]);
    goto LABEL_13;
  }

  if ((FIShouldTrackTrainingLoad() & 1) == 0)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v18 = sub_1B4D17F6C();
    __swift_project_value_buffer(v18, qword_1EDC36F00);
    v19 = sub_1B4D17F5C();
    v20 = sub_1B4D1873C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B4953000, v19, v20, "Effort Reminder turned off, skipping training load query", v21, 2u);
      MEMORY[0x1B8C7DDA0](v21, -1, -1);
    }

    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E98, &qword_1B4D1C2A0);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EA0, &qword_1B4D1C2A8) - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B4D1A800;
  (*(a3 + 80))(a2, a3);
  type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v17 = sub_1B4C94F64(v16);
  swift_setDeallocating();
  sub_1B49AA81C(v16 + v15);
  swift_deallocClassInstance();
LABEL_13:
  (*(v5 + 8))(v9, a2);
  return v17;
}

uint64_t sub_1B4B69C9C()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  *(v0 + 16) = &type metadata for TrainingLoadFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67E8, &qword_1B4D1AB00);
  v9 = sub_1B4D181CC();
  v10 = v4;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000013, 0x80000001B4D4BEF0);
  (*(v3 + 8))(v9, v10, &type metadata for TrainingLoadContext, &type metadata for TrainingLoadContext, v2, v3);

  v5 = *(v0 + 32);
  if (v5 == 5)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6E90, &qword_1B4D1C298);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B4D1A800;
    *(v6 + 32) = v5;
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

unint64_t sub_1B4B69E10()
{
  result = qword_1EB8AB218;
  if (!qword_1EB8AB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB218);
  }

  return result;
}

unint64_t sub_1B4B69E90()
{
  result = qword_1EB8AB220;
  if (!qword_1EB8AB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB220);
  }

  return result;
}

unint64_t sub_1B4B69EE4()
{
  result = qword_1EB8AB228;
  if (!qword_1EB8AB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB228);
  }

  return result;
}

uint64_t sub_1B4B69F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B69FA0()
{
  result = qword_1EB8AB230;
  if (!qword_1EB8AB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB230);
  }

  return result;
}

unint64_t sub_1B4B69FF4()
{
  result = qword_1EB8AB238;
  if (!qword_1EB8AB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB238);
  }

  return result;
}

__n128 LegacySnapshot.init(cacheIndex:ringsContainer:workoutContainer:)@<Q0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = (a4 + 264);
  sub_1B496F4FC(v23);
  v9 = v23[5];
  v8[4] = v23[4];
  v8[5] = v9;
  v10 = v23[7];
  v8[6] = v23[6];
  v8[7] = v10;
  v11 = v23[1];
  *v8 = v23[0];
  v8[1] = v11;
  v12 = v23[3];
  v8[2] = v23[2];
  v8[3] = v12;
  *a4 = v7;
  v13 = a2[6];
  *(a4 + 120) = a2[7];
  *(a4 + 104) = v13;
  v14 = a2[4];
  *(a4 + 88) = a2[5];
  *(a4 + 72) = v14;
  v15 = a2[2];
  *(a4 + 56) = a2[3];
  *(a4 + 40) = v15;
  v16 = *a2;
  *(a4 + 24) = a2[1];
  *(a4 + 8) = v16;
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[2];
  *(a4 + 184) = a3[3];
  *(a4 + 168) = v19;
  *(a4 + 152) = v18;
  *(a4 + 136) = v17;
  result = a3[4];
  v21 = a3[5];
  v22 = a3[6];
  *(a4 + 248) = a3[7];
  *(a4 + 232) = v22;
  *(a4 + 216) = v21;
  *(a4 + 200) = result;
  return result;
}

uint64_t sub_1B4B6A12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v77 = a1;
  v78 = a2;
  v79 = a3;
  v74 = a4;
  v75 = a5;
  v76 = a6;
  sub_1B4B6F3AC();
  KeyPath = swift_getKeyPath();

  v12 = sub_1B4B80D88(a3, sub_1B4B6F474, KeyPath);

  v13 = swift_getKeyPath();

  v14 = sub_1B4B80D88(a6, sub_1B4B6F2C4, v13);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v65 = v12;
  sub_1B4B6E7FC(v14, sub_1B4B6F168, 0, isUniquelyReferenced_nonNull_native, sub_1B4B6F400);
  if (v7)
  {
  }

  v17 = v65 + 64;
  v18 = 1 << *(v65 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v65 + 64);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v57 = result;
  v58 = a7;
  while (v20)
  {
LABEL_13:
    v25 = __clz(__rbit64(v20)) | (v22 << 6);
    v26 = *(result + 56);
    v27 = *(result + 48) + 56 * v25;
    v29 = *(v27 + 16);
    v28 = *(v27 + 32);
    v30 = *v27;
    *&v62 = *(v27 + 48);
    v60 = v29;
    v61 = v28;
    v59 = v30;
    v31 = *(v26 + 8 * v25);
    v32 = *(v27 + 32);
    v33 = *(v27 + 48);
    v34 = *v27;
    v66 = *(v27 + 16);
    v67 = v32;
    v65 = v34;
    *&v68 = v33;
    *(&v68 + 1) = v31;
    swift_bridgeObjectRetain_n();
    sub_1B498B0D4(&v59, &v70);
    result = sub_1B4975024(&v65, &qword_1EB8AB268, &qword_1B4D33738);
    v35 = *(v31 + 16);
    v36 = *(v23 + 16);
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
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

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v38 = *(v23 + 24) >> 1, v38 >= v37))
    {
      if (!*(v31 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      result = sub_1B4A1DD0C(result, v39, 1, v23);
      v23 = result;
      v38 = *(result + 24) >> 1;
      if (!*(v31 + 16))
      {
LABEL_6:

        if (v35)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }
    }

    if (v38 - *(v23 + 16) < v35)
    {
      goto LABEL_38;
    }

    swift_arrayInitWithCopy();

    if (v35)
    {
      v40 = *(v23 + 16);
      v41 = __OFADD__(v40, v35);
      v42 = v40 + v35;
      if (v41)
      {
        goto LABEL_39;
      }

      *(v23 + 16) = v42;
    }

LABEL_7:
    v20 &= v20 - 1;
    result = v57;
    a7 = v58;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v24);
    ++v22;
    if (v20)
    {
      v22 = v24;
      goto LABEL_13;
    }
  }

  v43 = v77;
  v44 = v75;
  v45 = *(v23 + 16);
  if (v45)
  {
    v80 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, v45, 0);
    v46 = v23 + 32;
    v47 = v80;
    for (i = v45 - 1; ; --i)
    {
      sub_1B498ADFC(v46, &v59);
      v70 = v60;
      v71 = v61;
      v72 = v62;
      v73 = v63;
      sub_1B496F398(&v64, v69 + 8);
      *&v65 = v43;
      *(&v65 + 1) = v44;
      v66 = v70;
      v67 = v71;
      v68 = v72;
      *&v69[0] = v73;
      v80 = v47;
      v50 = *(v47 + 16);
      v49 = *(v47 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1B4BCECFC((v49 > 1), v50 + 1, 1);
        v47 = v80;
      }

      *(v47 + 16) = v50 + 1;
      v51 = (v47 + 112 * v50);
      v52 = v65;
      v53 = v67;
      v51[3] = v66;
      v51[4] = v53;
      v51[2] = v52;
      v54 = v68;
      v55 = v69[0];
      v56 = v69[2];
      v51[7] = v69[1];
      v51[8] = v56;
      v51[5] = v54;
      v51[6] = v55;
      if (!i)
      {
        break;
      }

      v46 += 112;
    }

    a7 = v58;
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  *a7 = v43;
  a7[1] = v44;
  a7[2] = v47;
  return result;
}

uint64_t sub_1B4B6A5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  sub_1B4B6F270();
  swift_getKeyPath();

  v9 = sub_1B4B80A54(a2, sub_1B4B6F474);

  swift_getKeyPath();

  v10 = sub_1B4B80A54(a4, sub_1B4B6F2C4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v9;
  sub_1B4B6ED10(v10, sub_1B4B6F218, 0, isUniquelyReferenced_nonNull_native, sub_1B4B6F2CC);
  if (v5)
  {
  }

  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v30 = result;
  while (v15)
  {
LABEL_12:
    v20 = (v17 << 9) | (8 * __clz(__rbit64(v15)));
    v21 = *(*(result + 56) + v20);
    v22 = *(v21 + 16);
    v23 = *(v18 + 16);
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      goto LABEL_27;
    }

    v25 = *(*(result + 56) + v20);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v24 > *(v18 + 24) >> 1)
    {
      if (v23 <= v24)
      {
        v26 = v23 + v22;
      }

      else
      {
        v26 = v23;
      }

      result = sub_1B4A1DC00(result, v26, 1, v18);
      v18 = result;
    }

    v15 &= v15 - 1;
    if (*(v21 + 16))
    {
      if ((*(v18 + 24) >> 1) - *(v18 + 16) < v22)
      {
        goto LABEL_29;
      }

      swift_arrayInitWithCopy();

      result = v30;
      if (v22)
      {
        v27 = *(v18 + 16);
        v28 = __OFADD__(v27, v22);
        v29 = v27 + v22;
        if (v28)
        {
          goto LABEL_30;
        }

        *(v18 + 16) = v29;
      }
    }

    else
    {

      result = v30;
      if (v22)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      *a5 = a1;
      a5[1] = a3;
      a5[2] = v18;
      return result;
    }

    v15 = *(v33 + 64 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t static LegacySnapshot.make(from:snapshot:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v121 = &v53 - v9;
  v10 = sub_1B4D1777C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v120, a2, 0x188uLL);
  sub_1B4974FBC(a1, &v99, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  if (!v100)
  {
    sub_1B4975024(&v99, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
    memcpy(a3, v120, 0x188uLL);
    return sub_1B4B6AF78(v120, &v91);
  }

  v54 = a3;
  v55 = v3;
  sub_1B496F398(&v99, v101);
  v15 = v102;
  v16 = v103;
  __swift_project_boxed_opaque_existential_1(v101, v102);
  (*(v16 + 80))(v15, v16);
  v17 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v18 = sub_1B4D1796C();
  __swift_project_value_buffer(v18, qword_1EDC3CE48);
  v19 = sub_1B4D178CC();
  v20 = _HKCacheIndexFromDate();

  (*(v11 + 8))(v14, v10);
  v95 = *&v120[9];
  v96 = *&v120[11];
  v97 = *&v120[13];
  v98 = *&v120[15];
  v91 = *&v120[1];
  v92 = *&v120[3];
  v93 = *&v120[5];
  v94 = *&v120[7];
  if (sub_1B4966184(&v91) == 1)
  {
    v87 = *&v120[9];
    v88 = *&v120[11];
    v89 = *&v120[13];
    v90 = *&v120[15];
    v83 = *&v120[1];
    v84 = *&v120[3];
    v85 = *&v120[5];
    v86 = *&v120[7];
    v21 = v55;
  }

  else
  {
    v116 = v95;
    v117 = v96;
    v118 = v97;
    v119 = v98;
    v112 = v91;
    v113 = v92;
    v114 = v93;
    v115 = v94;
    v23 = v102;
    v24 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    v25 = v121;
    (*(v24 + 248))(v23, v24);
    v26 = type metadata accessor for HKActivitySummaryRepresentable();
    v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
    v28 = v55;
    if (v27 == 1)
    {
      sub_1B4975024(v25, &qword_1EB8A6C98, &unk_1B4D2F3F0);
      v66 = 0u;
      v67 = 0u;
      *&v68 = 0;
    }

    else
    {
      *(&v67 + 1) = v26;
      *&v68 = &protocol witness table for HKActivitySummaryRepresentable;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
      sub_1B4B6D7EC(v25, boxed_opaque_existential_1);
    }

    sub_1B4B6B130(&v66, v82);
    v21 = v28;
    v30 = &v66;
    if (v28)
    {
      goto LABEL_16;
    }

    sub_1B4975024(&v66, &qword_1EB8AA378, &unk_1B4D2E760);
    v78 = v82[4];
    v79 = v82[5];
    v80 = v82[6];
    v81 = v82[7];
    v74 = v82[0];
    v75 = v82[1];
    v76 = v82[2];
    v77 = v82[3];
    nullsub_1(&v74);
    v87 = v78;
    v88 = v79;
    v89 = v80;
    v90 = v81;
    v83 = v74;
    v84 = v75;
    v85 = v76;
    v86 = v77;
  }

  v78 = *&v120[25];
  v79 = *&v120[27];
  v80 = *&v120[29];
  v81 = *&v120[31];
  v74 = *&v120[17];
  v75 = *&v120[19];
  v76 = *&v120[21];
  v77 = *&v120[23];
  if (sub_1B4966184(&v74) == 1)
  {
    v70 = *&v120[25];
    v71 = *&v120[27];
    v72 = *&v120[29];
    v73 = *&v120[31];
    v66 = *&v120[17];
    v67 = *&v120[19];
    v31 = *&v120[21];
    v32 = *&v120[23];
LABEL_18:
    v68 = v31;
    v69 = v32;
    v37 = v54;
    v38 = v54 + 264;
    sub_1B496F4FC(&v57);
    v39 = v62;
    *(v37 + 328) = v61;
    *(v37 + 344) = v39;
    v40 = v64;
    *(v37 + 360) = v63;
    *(v37 + 376) = v40;
    v41 = v58;
    *v38 = v57;
    *(v37 + 280) = v41;
    v42 = v60;
    *(v37 + 296) = v59;
    *(v37 + 312) = v42;
    *v37 = v20;
    v43 = v89;
    *(v37 + 120) = v90;
    *(v37 + 104) = v43;
    v44 = v87;
    *(v37 + 88) = v88;
    *(v37 + 72) = v44;
    v45 = v85;
    *(v37 + 56) = v86;
    *(v37 + 40) = v45;
    v46 = v83;
    *(v37 + 24) = v84;
    *(v37 + 8) = v46;
    v47 = v66;
    v48 = v67;
    v49 = v68;
    *(v37 + 184) = v69;
    *(v37 + 168) = v49;
    *(v37 + 152) = v48;
    *(v37 + 136) = v47;
    v50 = v70;
    v51 = v71;
    v52 = v72;
    *(v37 + 248) = v73;
    *(v37 + 232) = v52;
    *(v37 + 216) = v51;
    *(v37 + 200) = v50;
    return __swift_destroy_boxed_opaque_existential_1Tm(v101);
  }

  v108 = v78;
  v109 = v79;
  v110 = v80;
  v111 = v81;
  v104 = v74;
  v105 = v75;
  v106 = v76;
  v107 = v77;
  v33 = v102;
  v34 = v103;
  v35 = __swift_project_boxed_opaque_existential_1(v101, v102);
  v56[3] = v33;
  v56[4] = *(v34 + 16);
  v36 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(v33 - 8) + 16))(v36, v35, v33);
  sub_1B4B6BD78(v56, v65);
  if (!v21)
  {
    sub_1B4975024(v56, &qword_1EB8AA378, &unk_1B4D2E760);
    v61 = v65[4];
    v62 = v65[5];
    v63 = v65[6];
    v64 = v65[7];
    v57 = v65[0];
    v58 = v65[1];
    v59 = v65[2];
    v60 = v65[3];
    nullsub_1(&v57);
    v70 = v61;
    v71 = v62;
    v72 = v63;
    v73 = v64;
    v66 = v57;
    v67 = v58;
    v31 = v59;
    v32 = v60;
    goto LABEL_18;
  }

  sub_1B4975024(&v83, &qword_1EB8AB240, &unk_1B4D33590);
  v30 = v56;
LABEL_16:
  sub_1B4975024(v30, &qword_1EB8AA378, &unk_1B4D2E760);
  return __swift_destroy_boxed_opaque_existential_1Tm(v101);
}

uint64_t LegacySnapshot.ringsContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 88);
  v14 = *(v1 + 72);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 120);
  v16 = *(v1 + 104);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 24);
  v11[0] = *(v1 + 8);
  v11[1] = v6;
  v8 = *(v1 + 56);
  v12 = *(v1 + 40);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_1B4974FBC(v11, &v10, &qword_1EB8AB240, &unk_1B4D33590);
}

uint64_t LegacySnapshot.workoutContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 216);
  v14 = *(v1 + 200);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 248);
  v16 = *(v1 + 232);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 152);
  v11[0] = *(v1 + 136);
  v11[1] = v6;
  v8 = *(v1 + 184);
  v12 = *(v1 + 168);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_1B4974FBC(v11, &v10, &qword_1EB8AB248, &qword_1B4D335A0);
}

uint64_t LegacySnapshot.fitnessPlusContainer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 344);
  v14 = *(v1 + 328);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 376);
  v16 = *(v1 + 360);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 280);
  v11[0] = *(v1 + 264);
  v11[1] = v6;
  v8 = *(v1 + 312);
  v12 = *(v1 + 296);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_1B4974FBC(v11, &v10, &qword_1EB8AB250, &unk_1B4D335A8);
}

uint64_t sub_1B4B6B130@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2;
  sub_1B4974FBC(a1, &v127, &qword_1EB8AA378, &unk_1B4D2E760);
  if (!v128)
  {
    sub_1B4975024(&v127, &qword_1EB8AA378, &unk_1B4D2E760);
    v18 = *(v4 + 80);
    a2[4] = *(v4 + 64);
    a2[5] = v18;
    v19 = *(v4 + 112);
    a2[6] = *(v4 + 96);
    a2[7] = v19;
    v20 = *(v4 + 16);
    *a2 = *v4;
    a2[1] = v20;
    v21 = *(v4 + 48);
    a2[2] = *(v4 + 32);
    a2[3] = v21;
    return sub_1B4974FBC(v4, v124, &qword_1EB8A7AE0, &qword_1B4D1F850);
  }

  v104 = a2;
  v6 = v3;
  sub_1B496F398(&v127, v124);
  v7 = v125;
  v8 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  (*(v8 + 8))(&v123, v7, v8);
  v9 = v123;
  v10 = *(v4 + 16);
  v129 = *(v4 + 8);
  v107 = *(v4 + 24);
  v11 = v125;
  v12 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  (*(v12 + 8))(&v115, v11, v12);
  v13 = v115;
  sub_1B497558C(v124, v120);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BB8, &unk_1B4D2B4C0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB258, &unk_1B4D336D8);
  v106 = v14;
  if (swift_dynamicCast())
  {
    v103 = v9;
    v15 = MEMORY[0x1E69E7CC0];
    sub_1B496F398(&v117, &v127);
    v16 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v16);
    v96 = &v127;
    v97 = v15;
    v98 = v15;
    v99 = v15;
    v100 = 0;
    v101 = v13;
    v17 = sub_1B4CB404C(sub_1B4B6F444, v95, v16);
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v127);
LABEL_14:
      swift_bridgeObjectRelease_n();
      return __swift_destroy_boxed_opaque_existential_1Tm(v124);
    }

    v23 = v17;
    v6 = 0;

    v26 = v125;
    v25 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v25 + 8))(v120, v26, v25);
    v27 = v125;
    v28 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v28 + 8))(&v117, v27, v28);
    v29 = v117;
    __swift_destroy_boxed_opaque_existential_1Tm(&v127);
    v24 = v29;
    v9 = v103;
  }

  else
  {
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    sub_1B4975024(&v117, &qword_1EB8A6E58, &qword_1B4D1C110);
    v23 = MEMORY[0x1E69E7CC0];
    v24 = v13;
  }

  sub_1B4B6A5C0(v129, v107, v24, v23, &v121);
  if (v6)
  {

    goto LABEL_14;
  }

  v103 = v9;
  v30 = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRelease_n();

  v31 = *(v4 + 32);
  v129 = *(v4 + 40);
  v107 = *(v4 + 48);
  v32 = v125;
  v33 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  (*(v33 + 8))(&v113, v32, v33);
  v34 = v113;
  sub_1B497558C(v124, v120);
  if (swift_dynamicCast())
  {
    v102 = v31;
    sub_1B496F398(&v117, &v127);
    v35 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v35);
    v96 = &v127;
    v97 = v30;
    v98 = v30;
    v99 = v30;
    v100 = 0;
    v101 = v34;
    v36 = sub_1B4CB404C(sub_1B4B6F444, v95, v35);

    v37 = v125;
    v38 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v38 + 8))(v120, v37, v38);
    v39 = v125;
    v40 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v40 + 8))(&v117, v39, v40);
    v41 = v117;
    __swift_destroy_boxed_opaque_existential_1Tm(&v127);
    v42 = v41;
    v31 = v102;
  }

  else
  {
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    sub_1B4975024(&v117, &qword_1EB8A6E58, &qword_1B4D1C110);
    v36 = MEMORY[0x1E69E7CC0];
    v42 = v34;
  }

  sub_1B4B6A5C0(v31, v107, v42, v36, &v115);
  v129 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRelease_n();

  v44 = *(v4 + 64);
  v107 = *(v4 + 56);
  v45 = *(v4 + 72);
  v46 = v125;
  v47 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  (*(v47 + 8))(&v111, v46, v47);
  v48 = v111;
  sub_1B497558C(v124, v120);
  v49 = swift_dynamicCast();
  if (v49)
  {
    sub_1B496F398(&v117, &v127);
    v50 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v50);
    v96 = &v127;
    v97 = v43;
    v98 = v43;
    v99 = v43;
    v100 = 0;
    v101 = v48;
    v51 = v129;
    v52 = sub_1B4CB404C(sub_1B4B6F444, v95, v50);
    v129 = v51;
    if (v51)
    {
      goto LABEL_30;
    }

    v43 = v52;

    v53 = v125;
    v54 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v54 + 8))(v120, v53, v54);
    v55 = v125;
    v56 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v56 + 8))(&v117, v55, v56);
    v48 = v117;
    __swift_destroy_boxed_opaque_existential_1Tm(&v127);
  }

  else
  {
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    sub_1B4975024(&v117, &qword_1EB8A6E58, &qword_1B4D1C110);
  }

  v57 = v129;
  sub_1B4B6A5C0(v107, v45, v48, v43, &v113);
  v129 = v57;
  if (v57)
  {
LABEL_36:

    goto LABEL_14;
  }

  v58 = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRelease_n();

  v59 = *(v4 + 88);
  v107 = *(v4 + 80);
  v60 = *(v4 + 96);
  v61 = v125;
  v62 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  (*(v62 + 8))(&v109, v61, v62);
  v63 = v109;
  sub_1B497558C(v124, v120);
  if (swift_dynamicCast())
  {
    sub_1B496F398(&v117, &v127);
    v64 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v64);
    v96 = &v127;
    v97 = v58;
    v98 = v58;
    v99 = v58;
    v100 = 0;
    v101 = v63;
    v65 = v129;
    v66 = sub_1B4CB404C(sub_1B4B6F444, v95, v64);
    v129 = v65;
    if (v65)
    {

LABEL_30:

      __swift_destroy_boxed_opaque_existential_1Tm(&v127);
      goto LABEL_14;
    }

    v67 = v66;

    v68 = v125;
    v69 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v69 + 8))(v120, v68, v69);
    v70 = v125;
    v71 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v71 + 8))(&v117, v70, v71);
    v63 = v117;
    __swift_destroy_boxed_opaque_existential_1Tm(&v127);
  }

  else
  {
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    sub_1B4975024(&v117, &qword_1EB8A6E58, &qword_1B4D1C110);
    v67 = MEMORY[0x1E69E7CC0];
  }

  v72 = v129;
  sub_1B4B6A5C0(v107, v60, v63, v67, &v111);
  v129 = v72;
  if (v72)
  {
LABEL_35:

    goto LABEL_36;
  }

  v73 = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRelease_n();

  v74 = *(v4 + 104);
  v75 = *(v4 + 112);
  v76 = *(v4 + 120);
  v77 = v125;
  v78 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  (*(v78 + 8))(&v108, v77, v78);
  v79 = v108;
  sub_1B497558C(v124, v120);
  if (swift_dynamicCast())
  {
    sub_1B496F398(&v117, &v127);
    v80 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v80);
    v96 = &v127;
    v97 = v73;
    v98 = v73;
    v99 = v73;
    v100 = 0;
    v101 = v79;
    v81 = v129;
    v82 = sub_1B4CB404C(sub_1B4B6F234, v95, v80);
    v129 = v81;
    if (v81)
    {

      goto LABEL_30;
    }

    v83 = v82;

    v84 = v125;
    v85 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v85 + 8))(v120, v84, v85);
    v86 = v125;
    v87 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v87 + 8))(&v117, v86, v87);
    v79 = v117;
    __swift_destroy_boxed_opaque_existential_1Tm(&v127);
  }

  else
  {
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    sub_1B4975024(&v117, &qword_1EB8A6E58, &qword_1B4D1C110);
    v83 = MEMORY[0x1E69E7CC0];
  }

  v88 = v129;
  sub_1B4B6A5C0(v74, v76, v79, v83, &v109);
  v129 = v88;
  if (v88)
  {

    goto LABEL_35;
  }

  swift_bridgeObjectRelease_n();

  v89 = v122;
  v90 = v116;
  v91 = v114;
  v92 = v112;
  v93 = v110;
  v94 = v104;
  *(v104 + 8) = v121;
  *(v94 + 3) = v89;
  v94[2] = v115;
  *(v94 + 6) = v90;
  *(v94 + 56) = v113;
  *(v94 + 9) = v91;
  v94[5] = v111;
  *(v94 + 12) = v92;
  *(v94 + 104) = v109;
  *(v94 + 15) = v93;
  *v94 = v103;
  return __swift_destroy_boxed_opaque_existential_1Tm(v124);
}

uint64_t sub_1B4B6BD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  sub_1B4974FBC(a1, &v193, &qword_1EB8AA378, &unk_1B4D2E760);
  if (!*(&v194 + 1))
  {
    sub_1B4975024(&v193, &qword_1EB8AA378, &unk_1B4D2E760);
    v18 = *(v2 + 80);
    *(a2 + 64) = *(v2 + 64);
    *(a2 + 80) = v18;
    v19 = *(v2 + 112);
    *(a2 + 96) = *(v2 + 96);
    *(a2 + 112) = v19;
    v20 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v20;
    v21 = *(v2 + 48);
    *(a2 + 32) = *(v2 + 32);
    *(a2 + 48) = v21;
    return sub_1B4974FBC(v2, &v193, &qword_1EB8AB260, &qword_1B4D33728);
  }

  sub_1B496F398(&v193, v200);
  v7 = v201;
  v8 = v202;
  __swift_project_boxed_opaque_existential_1(v200, v201);
  (*(v8 + 8))(&v192, v7, v8);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = v192;
  v207[0] = MEMORY[0x1E69E7CC0];
  v207[1] = MEMORY[0x1E69E7CC0];
  v207[2] = MEMORY[0x1E69E7CC0];
  v207[3] = MEMORY[0x1E69E7CC0];
  v207[4] = MEMORY[0x1E69E7CC0];
  v207[5] = MEMORY[0x1E69E7CC0];
  v11 = *(v2 + 8);
  v165 = *(v2 + 16);
  v166 = v11;
  v164 = *(v2 + 24);
  v12 = v201;
  v13 = v202;
  __swift_project_boxed_opaque_existential_1(v200, v201);
  (*(v13 + 8))(&v187, v12, v13);
  v14 = v187;
  sub_1B497558C(v200, &v193);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BB8, &unk_1B4D2B4C0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BC0, &qword_1B4D33730);
  v163 = v15;
  if (swift_dynamicCast())
  {
    sub_1B496F398(&v167, v189);
    v16 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    MEMORY[0x1EEE9AC00](v16);
    v153 = v189;
    v154 = v207;
    v155 = 0;
    v156 = v14;
    v17 = sub_1B4AE13D0(sub_1B4B6F45C, v152, v16);
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      goto LABEL_74;
    }

    v25 = v17;
    v161 = v5;
    v159 = v10;

    v26 = v201;
    v27 = v202;
    __swift_project_boxed_opaque_existential_1(v200, v201);
    (*(v27 + 8))(&v185, v26, v27);
    v14 = v185;
    v28 = v201;
    v160 = v25;
    v29 = v202;
    __swift_project_boxed_opaque_existential_1(v200, v201);
    v30 = v160;
    (*(v29 + 8))(&v183, v28, v29);
    v31 = v183;
    v32 = *(v30 + 2);
    if (v32)
    {
      v208 = v183;
      v157 = a2;
      v158 = 0;
      *&v181 = MEMORY[0x1E69E7CC0];
      sub_1B4BCECFC(0, v32, 0);
      v33 = (v30 + 32);
      v23 = v181;
      for (i = v32 - 1; ; --i)
      {
        sub_1B498ADFC(v33, &v167);
        v173 = v168;
        v174 = v169;
        v175 = v170;
        v176 = v171;
        sub_1B496F398(v172, &v197 + 8);
        v35 = v14;
        *&v193 = v14;
        *(&v193 + 1) = v208;
        v194 = v173;
        v195 = v174;
        v196 = v175;
        *&v197 = v176;
        *&v181 = v23;
        v37 = *(v23 + 16);
        v36 = *(v23 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1B4BCECFC((v36 > 1), v37 + 1, 1);
          v23 = v181;
        }

        *(v23 + 16) = v37 + 1;
        v38 = (v23 + 112 * v37);
        v39 = v193;
        v40 = v195;
        v38[3] = v194;
        v38[4] = v40;
        v38[2] = v39;
        v41 = v196;
        v42 = v197;
        v43 = v199;
        v38[7] = v198;
        v38[8] = v43;
        v38[5] = v41;
        v38[6] = v42;
        if (!i)
        {
          break;
        }

        v33 += 112;
        v14 = v35;
      }

      a2 = v157;
      v4 = v158;
      v10 = v159;
      v9 = MEMORY[0x1E69E7CC0];
      v14 = v35;
      v31 = v208;
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
      v10 = v159;
      v9 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v189);
    v24 = v31;
  }

  else
  {
    v161 = v5;
    *&v169 = 0;
    v167 = 0u;
    v168 = 0u;
    sub_1B4975024(&v167, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
    v23 = MEMORY[0x1E69E7CC0];
    v24 = v14;
  }

  sub_1B4B6A12C(v166, v165, v164, v14, v24, v23, &v190);
  if (!v4)
  {
    swift_bridgeObjectRelease_n();

    v206[0] = v9;
    v206[1] = v9;
    v206[2] = v9;
    v206[3] = v9;
    v206[4] = v9;
    v206[5] = v9;
    v44 = v161;
    v45 = v161[4];
    v165 = v161[5];
    v166 = v45;
    v164 = v161[6];
    v46 = v201;
    v47 = v202;
    __swift_project_boxed_opaque_existential_1(v200, v201);
    (*(v47 + 8))(&v185, v46, v47);
    v48 = v185;
    sub_1B497558C(v200, &v193);
    if (swift_dynamicCast())
    {
      sub_1B496F398(&v167, v189);
      v49 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
      MEMORY[0x1EEE9AC00](v49);
      v153 = v189;
      v154 = v206;
      v155 = 0;
      v156 = v50;
      v53 = sub_1B4AE13D0(sub_1B4B6F45C, v152, v49);

      v54 = v201;
      v55 = v202;
      __swift_project_boxed_opaque_existential_1(v200, v201);
      (*(v55 + 8))(&v183, v54, v55);
      v208 = v183;
      v56 = v201;
      v57 = v202;
      __swift_project_boxed_opaque_existential_1(v200, v201);
      (*(v57 + 8))(&v181, v56, v57);
      v52 = v181;
      v58 = v53;
      v59 = *(v53 + 2);
      if (v59)
      {
        v161 = v44;
        v158 = 0;
        v159 = v10;
        v157 = a2;
        v180 = MEMORY[0x1E69E7CC0];
        sub_1B4BCECFC(0, v59, 0);
        v160 = v58;
        v60 = (v58 + 32);
        v51 = v180;
        for (j = v59 - 1; ; --j)
        {
          sub_1B498ADFC(v60, &v167);
          v173 = v168;
          v174 = v169;
          v175 = v170;
          v176 = v171;
          sub_1B496F398(v172, &v197 + 8);
          *&v193 = v208;
          *(&v193 + 1) = v52;
          v194 = v173;
          v195 = v174;
          v196 = v175;
          *&v197 = v176;
          v180 = v51;
          v63 = *(v51 + 16);
          v62 = *(v51 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_1B4BCECFC((v62 > 1), v63 + 1, 1);
            v51 = v180;
          }

          *(v51 + 16) = v63 + 1;
          v64 = (v51 + 112 * v63);
          v65 = v193;
          v66 = v195;
          v64[3] = v194;
          v64[4] = v66;
          v64[2] = v65;
          v67 = v196;
          v68 = v197;
          v69 = v199;
          v64[7] = v198;
          v64[8] = v69;
          v64[5] = v67;
          v64[6] = v68;
          if (!j)
          {
            break;
          }

          v60 += 112;
        }

        a2 = v157;
        v4 = v158;
        v10 = v159;
        v44 = v161;
      }

      else
      {

        v51 = MEMORY[0x1E69E7CC0];
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      v9 = MEMORY[0x1E69E7CC0];
      v48 = v208;
    }

    else
    {
      *&v169 = 0;
      v167 = 0u;
      v168 = 0u;
      sub_1B4975024(&v167, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
      v51 = MEMORY[0x1E69E7CC0];
      v52 = v48;
    }

    sub_1B4B6A12C(v166, v165, v164, v48, v52, v51, &v187);
    if (v4)
    {
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v205[0] = v9;
      v205[1] = v9;
      v205[2] = v9;
      v205[3] = v9;
      v205[4] = v9;
      v205[5] = v9;
      v70 = v44[7];
      v165 = v44[8];
      v166 = v70;
      v164 = v44[9];
      v71 = v201;
      v72 = v202;
      __swift_project_boxed_opaque_existential_1(v200, v201);
      (*(v72 + 8))(&v183, v71, v72);
      v73 = v183;
      sub_1B497558C(v200, &v193);
      if (swift_dynamicCast())
      {
        sub_1B496F398(&v167, v189);
        v74 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
        MEMORY[0x1EEE9AC00](v74);
        v153 = v189;
        v154 = v205;
        v155 = 0;
        v156 = v73;
        v77 = sub_1B4AE13D0(sub_1B4B6F45C, v152, v74);

        v78 = v201;
        v160 = v77;
        v79 = v202;
        __swift_project_boxed_opaque_existential_1(v200, v201);
        (*(v79 + 8))(&v181, v78, v79);
        v208 = v181;
        v80 = v201;
        v81 = v202;
        __swift_project_boxed_opaque_existential_1(v200, v201);
        v82 = *(v81 + 8);
        v83 = v81;
        v84 = v160;
        v82(&v180, v80, v83);
        v76 = v180;
        v85 = *(v84 + 2);
        if (v85)
        {
          v161 = v44;
          v158 = 0;
          v159 = v10;
          v157 = a2;
          v179 = MEMORY[0x1E69E7CC0];
          sub_1B4BCECFC(0, v85, 0);
          v86 = (v84 + 32);
          v75 = v179;
          for (k = v85 - 1; ; --k)
          {
            sub_1B498ADFC(v86, &v167);
            v173 = v168;
            v174 = v169;
            v175 = v170;
            v176 = v171;
            sub_1B496F398(v172, &v197 + 8);
            *&v193 = v208;
            *(&v193 + 1) = v76;
            v194 = v173;
            v195 = v174;
            v196 = v175;
            *&v197 = v176;
            v179 = v75;
            v89 = *(v75 + 16);
            v88 = *(v75 + 24);
            if (v89 >= v88 >> 1)
            {
              sub_1B4BCECFC((v88 > 1), v89 + 1, 1);
              v75 = v179;
            }

            *(v75 + 16) = v89 + 1;
            v90 = (v75 + 112 * v89);
            v91 = v193;
            v92 = v195;
            v90[3] = v194;
            v90[4] = v92;
            v90[2] = v91;
            v93 = v196;
            v94 = v197;
            v95 = v199;
            v90[7] = v198;
            v90[8] = v95;
            v90[5] = v93;
            v90[6] = v94;
            if (!k)
            {
              break;
            }

            v86 += 112;
          }

          a2 = v157;
          v4 = v158;
          v10 = v159;
          v44 = v161;
        }

        else
        {

          v75 = MEMORY[0x1E69E7CC0];
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v189);
        v9 = MEMORY[0x1E69E7CC0];
        v73 = v208;
      }

      else
      {
        *&v169 = 0;
        v167 = 0u;
        v168 = 0u;
        sub_1B4975024(&v167, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
        v75 = MEMORY[0x1E69E7CC0];
        v76 = v73;
      }

      sub_1B4B6A12C(v166, v165, v164, v73, v76, v75, &v185);
      if (!v4)
      {
        swift_bridgeObjectRelease_n();

        v204[0] = v9;
        v204[1] = v9;
        v204[2] = v9;
        v204[3] = v9;
        v204[4] = v9;
        v204[5] = v9;
        v96 = v44[10];
        v165 = v44[11];
        v166 = v96;
        v164 = v44[12];
        v97 = v201;
        v98 = v202;
        __swift_project_boxed_opaque_existential_1(v200, v201);
        (*(v98 + 8))(&v181, v97, v98);
        v99 = v181;
        sub_1B497558C(v200, &v193);
        if (swift_dynamicCast())
        {
          sub_1B496F398(&v167, v189);
          v100 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
          MEMORY[0x1EEE9AC00](v100);
          v153 = v189;
          v154 = v204;
          v155 = 0;
          v156 = v99;
          v103 = sub_1B4AE13D0(sub_1B4B6F45C, v152, v100);

          v104 = v201;
          v160 = v103;
          v105 = v202;
          __swift_project_boxed_opaque_existential_1(v200, v201);
          (*(v105 + 8))(&v180, v104, v105);
          v208 = v180;
          v106 = v201;
          v107 = v202;
          __swift_project_boxed_opaque_existential_1(v200, v201);
          v108 = *(v107 + 8);
          v109 = v107;
          v110 = v160;
          v108(&v179, v106, v109);
          v102 = v179;
          v111 = *(v110 + 2);
          if (v111)
          {
            v161 = v44;
            v158 = 0;
            v159 = v10;
            v157 = a2;
            v178 = MEMORY[0x1E69E7CC0];
            sub_1B4BCECFC(0, v111, 0);
            v112 = (v110 + 32);
            v101 = v178;
            for (m = v111 - 1; ; --m)
            {
              sub_1B498ADFC(v112, &v167);
              v173 = v168;
              v174 = v169;
              v175 = v170;
              v176 = v171;
              sub_1B496F398(v172, &v197 + 8);
              *&v193 = v208;
              *(&v193 + 1) = v102;
              v194 = v173;
              v195 = v174;
              v196 = v175;
              *&v197 = v176;
              v178 = v101;
              v115 = *(v101 + 16);
              v114 = *(v101 + 24);
              if (v115 >= v114 >> 1)
              {
                sub_1B4BCECFC((v114 > 1), v115 + 1, 1);
                v101 = v178;
              }

              *(v101 + 16) = v115 + 1;
              v116 = (v101 + 112 * v115);
              v117 = v193;
              v118 = v195;
              v116[3] = v194;
              v116[4] = v118;
              v116[2] = v117;
              v119 = v196;
              v120 = v197;
              v121 = v199;
              v116[7] = v198;
              v116[8] = v121;
              v116[5] = v119;
              v116[6] = v120;
              if (!m)
              {
                break;
              }

              v112 += 112;
            }

            a2 = v157;
            v4 = v158;
            v10 = v159;
            v44 = v161;
          }

          else
          {

            v101 = MEMORY[0x1E69E7CC0];
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v189);
          v9 = MEMORY[0x1E69E7CC0];
          v99 = v208;
        }

        else
        {
          *&v169 = 0;
          v167 = 0u;
          v168 = 0u;
          sub_1B4975024(&v167, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
          v101 = MEMORY[0x1E69E7CC0];
          v102 = v99;
        }

        sub_1B4B6A12C(v166, v165, v164, v99, v102, v101, &v183);
        if (!v4)
        {
          swift_bridgeObjectRelease_n();

          v203[0] = v9;
          v203[1] = v9;
          v203[2] = v9;
          v203[3] = v9;
          v203[4] = v9;
          v203[5] = v9;
          v122 = v44[13];
          v165 = v44[14];
          v166 = v122;
          v123 = v44[15];
          v124 = v201;
          v125 = v202;
          __swift_project_boxed_opaque_existential_1(v200, v201);
          (*(v125 + 8))(&v180, v124, v125);
          v126 = v180;
          sub_1B497558C(v200, &v193);
          if (swift_dynamicCast())
          {
            v164 = v123;
            sub_1B496F398(&v167, v189);
            v127 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
            MEMORY[0x1EEE9AC00](v127);
            v153 = v189;
            v154 = v203;
            v155 = 0;
            v156 = v126;
            v130 = sub_1B4AE13D0(sub_1B4AE54CC, v152, v127);

            v131 = v201;
            v132 = v202;
            __swift_project_boxed_opaque_existential_1(v200, v201);
            (*(v132 + 8))(&v179, v131, v132);
            v208 = v179;
            v133 = v201;
            v134 = v202;
            __swift_project_boxed_opaque_existential_1(v200, v201);
            (*(v134 + 8))(&v178, v133, v134);
            v129 = v178;
            v135 = *(v130 + 2);
            if (v135)
            {
              v158 = 0;
              v159 = v10;
              v157 = a2;
              v177 = v9;
              sub_1B4BCECFC(0, v135, 0);
              v163 = v130;
              v136 = (v130 + 32);
              v128 = v177;
              for (n = v135 - 1; ; --n)
              {
                v138 = v208;
                sub_1B498ADFC(v136, &v167);
                v173 = v168;
                v174 = v169;
                v175 = v170;
                v176 = v171;
                sub_1B496F398(v172, &v197 + 8);
                *&v193 = v138;
                *(&v193 + 1) = v129;
                v194 = v173;
                v195 = v174;
                v196 = v175;
                *&v197 = v176;
                v177 = v128;
                v140 = *(v128 + 16);
                v139 = *(v128 + 24);
                if (v140 >= v139 >> 1)
                {
                  sub_1B4BCECFC((v139 > 1), v140 + 1, 1);
                  v128 = v177;
                }

                *(v128 + 16) = v140 + 1;
                v141 = (v128 + 112 * v140);
                v142 = v193;
                v143 = v195;
                v141[3] = v194;
                v141[4] = v143;
                v141[2] = v142;
                v144 = v196;
                v145 = v197;
                v146 = v199;
                v141[7] = v198;
                v141[8] = v146;
                v141[5] = v144;
                v141[6] = v145;
                if (!n)
                {
                  break;
                }

                v136 += 112;
              }

              a2 = v157;
              v4 = v158;
              v10 = v159;
              v123 = v164;
              v126 = v208;
            }

            else
            {

              v128 = MEMORY[0x1E69E7CC0];
              v126 = v208;
              v123 = v164;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v189);
          }

          else
          {
            *&v169 = 0;
            v167 = 0u;
            v168 = 0u;
            sub_1B4975024(&v167, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
            v128 = MEMORY[0x1E69E7CC0];
            v129 = v126;
          }

          sub_1B4B6A12C(v166, v165, v123, v126, v129, v128, &v181);
          if (!v4)
          {
            swift_bridgeObjectRelease_n();

            v147 = v191;
            v148 = v188;
            v149 = v186;
            v150 = v184;
            v151 = v182;
            *(a2 + 8) = v190;
            *(a2 + 24) = v147;
            *(a2 + 32) = v187;
            *(a2 + 48) = v148;
            *(a2 + 56) = v185;
            *(a2 + 72) = v149;
            *(a2 + 80) = v183;
            *(a2 + 96) = v150;
            *(a2 + 104) = v181;
            *(a2 + 120) = v151;
            *a2 = v10;
            return __swift_destroy_boxed_opaque_existential_1Tm(v200);
          }
        }
      }
    }
  }

LABEL_74:
  swift_bridgeObjectRelease_n();
  return __swift_destroy_boxed_opaque_existential_1Tm(v200);
}

void *static LegacySnapshot.make(from:beforeWorkoutSnapshot:)@<X0>(void *a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v29 - v7;
  v9 = sub_1B4D1777C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v76, a2, sizeof(v76));
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 80))(v14, v15);
  v16 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v17 = sub_1B4D1796C();
  __swift_project_value_buffer(v17, qword_1EDC3CE48);
  v18 = sub_1B4D178CC();
  v19 = _HKCacheIndexFromDate();

  (*(v10 + 8))(v13, v9);
  memcpy(v77, v76, 0x188uLL);
  if (sub_1B4B6D850(v77) == 1)
  {
    goto LABEL_5;
  }

  v50[4] = *&v77[9];
  v50[5] = *&v77[11];
  v50[6] = *&v77[13];
  v50[7] = *&v77[15];
  v50[0] = *&v77[1];
  v50[1] = *&v77[3];
  v50[2] = *&v77[5];
  v50[3] = *&v77[7];
  if (sub_1B4966184(v50) == 1)
  {
LABEL_5:
    sub_1B496F4FC(&v68);
  }

  else
  {
    v64 = v50[4];
    v65 = v50[5];
    v66 = v50[6];
    v67 = v50[7];
    v60 = v50[0];
    v61 = v50[1];
    v62 = v50[2];
    v63 = v50[3];
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    (*(v21 + 248))(v20, v21);
    v22 = type metadata accessor for HKActivitySummaryRepresentable();
    if ((*(*(v22 - 8) + 48))(v8, 1, v22) == 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6C98, &unk_1B4D2F3F0);
      v52 = 0u;
      v53 = 0u;
      *&v54 = 0;
    }

    else
    {
      *(&v53 + 1) = v22;
      *&v54 = &protocol witness table for HKActivitySummaryRepresentable;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
      sub_1B4B6D7EC(v8, boxed_opaque_existential_1);
    }

    sub_1B4B6B130(&v52, v51);
    sub_1B4975024(&v52, &qword_1EB8AA378, &unk_1B4D2E760);
    v40[4] = v51[4];
    v40[5] = v51[5];
    v40[6] = v51[6];
    v40[7] = v51[7];
    v40[0] = v51[0];
    v40[1] = v51[1];
    v40[2] = v51[2];
    v40[3] = v51[3];
    nullsub_1(v40);
    v72 = v40[4];
    v73 = v40[5];
    v74 = v40[6];
    v75 = v40[7];
    v68 = v40[0];
    v69 = v40[1];
    v70 = v40[2];
    v71 = v40[3];
  }

  memcpy(v50, v76, 0x188uLL);
  if (sub_1B4B6D850(v50) == 1)
  {
    goto LABEL_8;
  }

  v40[4] = *(&v50[12] + 8);
  v40[5] = *(&v50[13] + 8);
  v40[6] = *(&v50[14] + 8);
  v40[7] = *(&v50[15] + 8);
  v40[0] = *(&v50[8] + 8);
  v40[1] = *(&v50[9] + 8);
  v40[2] = *(&v50[10] + 8);
  v40[3] = *(&v50[11] + 8);
  if (sub_1B4966184(v40) == 1)
  {
LABEL_8:
    sub_1B496F4FC(&v42);
  }

  else
  {
    v56 = v40[4];
    v57 = v40[5];
    v58 = v40[6];
    v59 = v40[7];
    v52 = v40[0];
    v53 = v40[1];
    v54 = v40[2];
    v55 = v40[3];
    v23 = a1[3];
    v24 = a1[4];
    v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
    v31[3] = v23;
    v31[4] = *(v24 + 16);
    v26 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(*(v23 - 8) + 16))(v26, v25, v23);
    sub_1B4B6BD78(v31, v41);
    sub_1B4975024(v31, &qword_1EB8AA378, &unk_1B4D2E760);
    v36 = v41[4];
    v37 = v41[5];
    v38 = v41[6];
    v39 = v41[7];
    v32 = v41[0];
    v33 = v41[1];
    v34 = v41[2];
    v35 = v41[3];
    nullsub_1(&v32);
    v46 = v36;
    v47 = v37;
    v48 = v38;
    v49 = v39;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v45 = v35;
  }

  sub_1B496F4FC(&v32);
  *(&v40[20] + 8) = v36;
  *(&v40[21] + 8) = v37;
  *(&v40[22] + 8) = v38;
  *(&v40[23] + 8) = v39;
  *(&v40[16] + 8) = v32;
  *(&v40[17] + 8) = v33;
  *(&v40[18] + 8) = v34;
  *(&v40[19] + 8) = v35;
  *(&v40[3] + 8) = v71;
  *(&v40[2] + 8) = v70;
  *(&v40[1] + 8) = v69;
  *(v40 + 8) = v68;
  *(&v40[7] + 8) = v75;
  *(&v40[6] + 8) = v74;
  *(&v40[5] + 8) = v73;
  *(&v40[4] + 8) = v72;
  *&v40[0] = v19;
  *(&v40[11] + 8) = v45;
  *(&v40[10] + 8) = v44;
  *(&v40[9] + 8) = v43;
  *(&v40[8] + 8) = v42;
  *(&v40[15] + 8) = v49;
  *(&v40[14] + 8) = v48;
  *(&v40[13] + 8) = v47;
  *(&v40[12] + 8) = v46;
  nullsub_1(v40);
  return memcpy(v30, v40, 0x188uLL);
}

uint64_t sub_1B4B6D7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B6D850(uint64_t a1)
{
  v1 = *(a1 + 32);
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

_OWORD *sub_1B4B6D874(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 40) = 0u;
  result = (a1 + 40);
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  return result;
}

uint64_t sub_1B4B6D8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(&v50 + 1) = a7;
  *&v50 = a3;
  if (*(a1 + 16))
  {
    v9 = v7;
    v10 = a1 + 32;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return MEMORY[0x1E69E7CC0];
    }

    v9 = v7;
    v10 = a2 + 32;
  }

  sub_1B498ADFC(v10, &v62);
  v59 = v63;
  *v60 = v64;
  *&v60[16] = v65;
  v61 = *&v66[0];
  sub_1B498B0D4(&v59, v58);
  sub_1B498AE58(&v62);
  v53 = *v60;
  v52 = v59;
  v55 = *&v60[24];
  v56 = *&v60[16];
  v54 = v61;
  *&v62 = a1;

  sub_1B4997760(v11);

  v12 = v9;
  sub_1B4AE42D0(&v62);
  if (!v9)
  {
    v67 = 0;

    v13 = v62;
    v14 = *(v62 + 16);
    if (v14)
    {
      v58[0] = MEMORY[0x1E69E7CC0];
      sub_1B4BCF35C(0, v14, 0);
      v15 = v58[0];
      v16 = v13 + 32;
      do
      {
        sub_1B498ADFC(v16, &v62);
        sub_1B497558C(v66 + 8, &v59);
        sub_1B498AE58(&v62);
        v58[0] = v15;
        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1B4BCF35C((v17 > 1), v18 + 1, 1);
          v15 = v58[0];
        }

        *(v15 + 16) = v18 + 1;
        sub_1B496F398(&v59, v15 + 40 * v18 + 32);
        v16 += 112;
        --v14;
      }

      while (v14);
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    v19 = _s19FitnessIntelligence17WorkoutPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    v20 = v19;
    v21 = MEMORY[0x1E69E7CC0];
    v49 = *(v19 + 16);
    if (v49)
    {
      v22 = 0;
      v48 = v19;
      while (v22 < *(v20 + 16))
      {
        v57 = v21;
        v51 = *(v20 + 16 * v22 + 32);
        v24 = *(&v51 + 1);
        v23 = v51;
        sub_1B4AE3C7C(v51, v15, v51, *(&v51 + 1));
        v25 = *(v24 + 8);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
        sub_1B4D18A7C();

        v26 = sub_1B4D1880C();
        v27 = *(v26 - 8);
        v28 = *(v27 + 64);
        MEMORY[0x1EEE9AC00](v26);
        v30 = &v48 - v29;
        v12 = v67;
        static SnapshotProperty.reduce(_:)(v23, v25, &v48 - v29);
        v67 = v12;
        if (v12)
        {

          sub_1B4AE5ED4(v52, *(&v52 + 1), v53, *(&v53 + 1), v56, v55, v54);

          return v23;
        }

        v31 = *(v23 - 8);
        if ((*(v31 + 48))(v30, 1, v23) == 1)
        {
          (*(v27 + 8))(v30, v26);
          v21 = v57;
          v20 = v48;
        }

        else
        {
          *&v60[8] = v51;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v59);
          (*(v31 + 32))(boxed_opaque_existential_1, v30, v23);
          sub_1B496F398(&v59, &v62);
          sub_1B496F398(&v62, &v59);
          v21 = v57;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1B4A1DE34(0, v21[2] + 1, 1, v21);
          }

          v20 = v48;
          v34 = v21[2];
          v33 = v21[3];
          if (v34 >= v33 >> 1)
          {
            v21 = sub_1B4A1DE34((v33 > 1), v34 + 1, 1, v21);
          }

          v21[2] = v34 + 1;
          sub_1B496F398(&v59, &v21[5 * v34 + 4]);
        }

        if (v49 == ++v22)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_25:

    v35 = v21[2];
    if (v35)
    {
      *&v59 = MEMORY[0x1E69E7CC0];
      sub_1B4BCECFC(0, v35, 0);
      v23 = v59;
      v57 = v21;
      v36 = (v21 + 4);
      *&v51 = *(&v52 + 1);
      v37 = v52;
      v38 = v53;
      do
      {
        sub_1B497558C(v36, v66 + 8);
        v62 = v50;
        v63 = v52;
        v64 = v53;
        *&v65 = v56;
        *(&v65 + 1) = v55;
        *&v66[0] = v54;
        sub_1B4B6F430(v37, v51, v38, *(&v38 + 1), v56, v55, v54);
        *&v59 = v23;
        v40 = *(v23 + 16);
        v39 = *(v23 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1B4BCECFC((v39 > 1), v40 + 1, 1);
          v23 = v59;
        }

        *(v23 + 16) = v40 + 1;
        v41 = (v23 + 112 * v40);
        v42 = v62;
        v43 = v64;
        v41[3] = v63;
        v41[4] = v43;
        v41[2] = v42;
        v44 = v65;
        v45 = v66[0];
        v46 = v66[2];
        v41[7] = v66[1];
        v41[8] = v46;
        v41[5] = v44;
        v41[6] = v45;
        v36 += 40;
        --v35;
      }

      while (v35);
      sub_1B4AE5ED4(v37, v51, v38, *(&v38 + 1), v56, v55, v54);
    }

    else
    {

      sub_1B4AE5ED4(v52, *(&v52 + 1), v53, *(&v53 + 1), v56, v55, v54);
      return MEMORY[0x1E69E7CC0];
    }

    return v23;
  }

LABEL_36:

  __break(1u);
  return result;
}

uint64_t sub_1B4B6E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v52 = a3;
  if (*(a1 + 16))
  {
    v11 = a1 + 32;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return MEMORY[0x1E69E7CC0];
    }

    v11 = a2 + 32;
  }

  sub_1B4B6F2FC(v11, &v57);
  v50 = BYTE1(v58[0]);
  v51 = LOBYTE(v58[0]);
  v49 = BYTE2(v58[0]);
  sub_1B4B6F358(&v57);
  v46 = a7;
  *&v57 = a1;

  sub_1B499766C(v12);

  sub_1B4CB8494(&v57);
  if (!v7)
  {

    v13 = v57;
    v14 = *(v57 + 16);
    if (v14)
    {
      v55 = 0;
      v59 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF37C(0, v14, 0);
      v15 = v59;
      v16 = v13 + 32;
      do
      {
        sub_1B4B6F2FC(v16, &v57);
        sub_1B496F398((v58 + 8), v56);
        v59 = v15;
        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1B4BCF37C((v17 > 1), v18 + 1, 1);
          v15 = v59;
        }

        *(v15 + 16) = v18 + 1;
        sub_1B496F398(v56, v15 + 40 * v18 + 32);
        v16 += 64;
        --v14;
      }

      while (v14);

      v8 = v55;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    v19 = _s19FitnessIntelligence15RingsPropertiesV16allPropertyTypesSayAA0cF0_pXpGvgZ_0();
    v20 = v19;
    v21 = MEMORY[0x1E69E7CC0];
    v48 = *(v19 + 16);
    if (v48)
    {
      v22 = 0;
      v47 = v19;
      while (v22 < *(v20 + 16))
      {
        v54 = v21;
        v53 = *(v20 + 16 * v22 + 32);
        v24 = *(&v53 + 1);
        v23 = v53;
        sub_1B4CB6490(v53, v15, v53, *(&v53 + 1));
        v55 = v8;
        v25 = *(v24 + 8);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
        sub_1B4D18A7C();

        v26 = sub_1B4D1880C();
        v27 = *(v26 - 8);
        v28 = *(v27 + 64);
        MEMORY[0x1EEE9AC00](v26);
        v30 = &v46 - v29;
        v31 = v55;
        static SnapshotProperty.reduce(_:)(v23, v25, &v46 - v29);
        v8 = v31;
        if (v31)
        {

          return v23;
        }

        v32 = *(v23 - 8);
        if ((*(v32 + 48))(v30, 1, v23) == 1)
        {
          (*(v27 + 8))(v30, v26);
          v21 = v54;
          v20 = v47;
        }

        else
        {
          *&v56[3] = v53;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
          (*(v32 + 32))(boxed_opaque_existential_1, v30, v23);
          sub_1B496F398(v56, &v57);
          sub_1B496F398(&v57, v56);
          v21 = v54;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1B4A1DE58(0, v21[2] + 1, 1, v21);
          }

          v20 = v47;
          v35 = v21[2];
          v34 = v21[3];
          if (v35 >= v34 >> 1)
          {
            v21 = sub_1B4A1DE58((v34 > 1), v35 + 1, 1, v21);
          }

          v21[2] = v35 + 1;
          sub_1B496F398(v56, &v21[5 * v35 + 4]);
        }

        if (v48 == ++v22)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_25:

    v36 = v21[2];
    if (v36)
    {
      v56[0] = MEMORY[0x1E69E7CC0];
      sub_1B4BCEB88(0, v36, 0);
      v23 = v56[0];
      v37 = (v21 + 4);
      v38 = v46;
      do
      {
        sub_1B497558C(v37, v58 + 8);
        *&v57 = v52;
        *(&v57 + 1) = v38;
        LOBYTE(v58[0]) = v51;
        BYTE1(v58[0]) = v50;
        BYTE2(v58[0]) = v49;
        v56[0] = v23;
        v40 = *(v23 + 16);
        v39 = *(v23 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1B4BCEB88((v39 > 1), v40 + 1, 1);
          v23 = v56[0];
        }

        *(v23 + 16) = v40 + 1;
        v41 = (v23 + (v40 << 6));
        v42 = v57;
        v43 = v58[0];
        v44 = v58[2];
        v41[4] = v58[1];
        v41[5] = v44;
        v41[2] = v42;
        v41[3] = v43;
        v37 += 40;
        --v36;
      }

      while (v36);

      return v23;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_36:

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_19FitnessIntelligence23LegacySnapshotContainerVyAA15RingsPropertiesVGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B4B6E6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 392))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B4B6E734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 392) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 392) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_1B4B6E7FC(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, char a4, void (*a5)(id *__return_ptr, uint64_t *, _OWORD *))
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = v6; ; v6 = i)
  {
    if (!v9)
    {
      v22 = v11;
      while (1)
      {
        v21 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v21 >= v10)
        {
          goto LABEL_26;
        }

        v20 = *(v6 + 8 * v21);
        ++v22;
        if (v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      sub_1B4D18E1C();
      __break(1u);
      goto LABEL_33;
    }

    v20 = v9;
    v21 = v11;
LABEL_14:
    v23 = __clz(__rbit64(v20)) | (v21 << 6);
    v24 = *(a1 + 56);
    v25 = *(a1 + 48) + 56 * v23;
    v27 = *(v25 + 16);
    v26 = *(v25 + 32);
    v28 = *v25;
    v58 = *(v25 + 48);
    v57[1] = v27;
    v57[2] = v26;
    v57[0] = v28;
    v29 = *(v24 + 8 * v23);
    v53 = *v25;
    v54 = *(v25 + 16);
    v55 = *(v25 + 32);
    *&v56 = *(v25 + 48);
    *(&v56 + 1) = v29;
    sub_1B498B0D4(v57, &v59);

    a2(&v63, &v53);
    v59 = v53;
    v60 = v54;
    v61 = v55;
    v62 = v56;
    sub_1B4975024(&v59, &qword_1EB8AB268, &qword_1B4D33738);
    v30 = v67;
    if (!v67)
    {
LABEL_26:
      sub_1B49B75FC();

      return;
    }

    v59 = v63;
    v60 = v64;
    v61 = v65;
    *&v62 = v66;
    *&v57[0] = v67;
    v31 = *v51;
    v71 = v66;
    v70[1] = v64;
    v70[2] = v65;
    v70[0] = v63;
    v33 = sub_1B49EA514(v70);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_30;
    }

    v37 = v32;
    if (v31[3] < v36)
    {
      break;
    }

    if (a4)
    {
      if (v32)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B4989F4C();
      if (v37)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    v12 = *v51;
    *(*v51 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v13 = v12[6] + 56 * v33;
    v14 = v59;
    v15 = v60;
    v16 = v61;
    *(v13 + 48) = v62;
    *(v13 + 16) = v15;
    *(v13 + 32) = v16;
    *v13 = v14;
    *(v12[7] + 8 * v33) = v30;
    v17 = v12[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_31;
    }

    v12[2] = v19;
LABEL_7:
    v9 = (v20 - 1) & v20;
    a4 = 1;
    v11 = v21;
  }

  sub_1B4986BB8(v36, a4 & 1);
  v38 = *v51;
  v68[0] = v59;
  v68[1] = v60;
  v68[2] = v61;
  v69 = v62;
  v39 = sub_1B49EA514(v68);
  if ((v37 & 1) != (v40 & 1))
  {
    goto LABEL_32;
  }

  v33 = v39;
  if ((v37 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v41 = *v51;
  v52 = *(*(*v51 + 56) + 8 * v33);

  a5(&v72, &v52, v57);
  if (!v49)
  {

    v53 = v59;
    v54 = v60;
    v55 = v61;
    *&v56 = v62;
    sub_1B498AD54(&v53);
    v42 = v41[7];
    v43 = *(v42 + 8 * v33);
    *(v42 + 8 * v33) = v72;

    goto LABEL_7;
  }

  v72 = v49;
  v44 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B49B75FC();

    v53 = v59;
    v54 = v60;
    v55 = v61;
    *&v56 = v62;
    sub_1B498AD54(&v53);

    return;
  }

LABEL_33:
  *&v53 = 0;
  *(&v53 + 1) = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

void sub_1B4B6ED10(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void (*a5)(uint64_t *__return_ptr, id *, uint64_t *))
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v10;
  for (i = v6; ; v6 = i)
  {
    if (!v9)
    {
      v19 = v11;
      while (1)
      {
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v18 >= v10)
        {
          goto LABEL_26;
        }

        v17 = *(v6 + 8 * v18);
        ++v19;
        if (v17)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_1B4D18E1C();
      __break(1u);
      goto LABEL_34;
    }

    v17 = v9;
    v18 = v11;
LABEL_14:
    v20 = __clz(__rbit64(v17)) | (v18 << 6);
    v21 = *(a1 + 48) + 3 * v20;
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 2);
    v23 = *(*(a1 + 56) + 8 * v20);
    LOWORD(v52) = v22;
    BYTE2(v52) = v21;
    v53 = v23;

    a2(&v54, &v52);

    if (!v55)
    {
LABEL_26:
      sub_1B49B75FC();

      return;
    }

    v24 = v54;
    v25 = BYTE2(v54);
    v57 = v54;
    v58 = BYTE2(v54);
    v48 = v55;
    v51 = v55;
    v26 = *v49;
    v56 = BYTE1(v54);
    v27 = v54 | (BYTE1(v54) << 8) | (BYTE2(v54) << 16);
    v29 = sub_1B49EA598(v27);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_31;
    }

    v33 = v28;
    if (v26[3] < v32)
    {
      break;
    }

    if (a4)
    {
      if (v28)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1B498A0FC();
      if (v33)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    v12 = *v49;
    *(*v49 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    v13 = (v12[6] + 3 * v29);
    *v13 = v24;
    v13[1] = v56;
    v13[2] = v25;
    *(v12[7] + 8 * v29) = v48;
    v14 = v12[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_32;
    }

    v12[2] = v16;
LABEL_7:
    v9 = (v17 - 1) & v17;
    a4 = 1;
    v11 = v18;
    v10 = v43;
  }

  sub_1B4986EEC(v32, a4 & 1);
  v34 = *v49;
  v35 = sub_1B49EA598(v27);
  if ((v33 & 1) != (v36 & 1))
  {
    goto LABEL_33;
  }

  v29 = v35;
  if ((v33 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v37 = *v49;
  v50 = *(*(*v49 + 56) + 8 * v29);

  a5(&v52, &v50, &v51);
  if (!v46)
  {

    v38 = v37[7];
    v39 = *(v38 + 8 * v29);
    *(v38 + 8 * v29) = v52;

    goto LABEL_7;
  }

  v50 = v46;
  v40 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B49B75FC();

    return;
  }

LABEL_34:
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](39, 0xE100000000000000);
  sub_1B4D18A9C();
  __break(1u);
}

uint64_t sub_1B4B6F168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v9 = *(a1 + 32);
  v3 = v9;
  v5 = *(a1 + 56);
  v10 = *(a1 + 48);
  v4 = v10;
  *a2 = v8[0];
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  sub_1B498B0D4(v8, v7);
}

uint64_t sub_1B4B6F1C4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t (*a5)(void, void, void, void, void, void, void, void)@<X4>, uint64_t *a6@<X8>)
{
  result = a5(*a1, *a2, *a3, a3[1], a3[2], *a4, a4[1], a4[2]);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1B4B6F218@<X0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 2) = v3;
  *(a2 + 8) = v4;
}

unint64_t sub_1B4B6F270()
{
  result = qword_1EDC37358[0];
  if (!qword_1EDC37358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC37358);
  }

  return result;
}

unint64_t sub_1B4B6F3AC()
{
  result = qword_1EDC37288;
  if (!qword_1EDC37288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37288);
  }

  return result;
}

uint64_t sub_1B4B6F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

uint64_t StreamingAudioRequest.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_1B4B6F4C8(a1);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B4B6F4C8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StreamingAudioRequest.protobuf()()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(0);
  sub_1B4B6F79C(&qword_1EB8A8A70);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B6F5D8(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v11[0] = *v1;
  v11[1] = v8;
  v9 = sub_1B4B6F914();
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4B6F79C(&qword_1EB8A8A70);
    v4 = sub_1B4D17D6C();
    sub_1B4B6F4C8(v7);
  }

  return v4;
}

uint64_t sub_1B4B6F6F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B23DC4(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1B4B6F79C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B6F7E0()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(0);
  sub_1B4B6F79C(&qword_1EB8A8A70);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B6F87C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_1B4B6F4C8(a1);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B4B6F8C8(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1[1];

  *a1 = v4;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B4B6F914()
{
  result = qword_1EB8AB270;
  if (!qword_1EB8AB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB270);
  }

  return result;
}

uint64_t sub_1B4B6F980()
{
  v1 = sub_1B4D17B5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1B4D17B6C();
  sub_1B4B6FFD8(&qword_1EB8AA728, MEMORY[0x1E69AA948]);
  v7 = sub_1B4D17D6C();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_1B4B6FABC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B23FF0(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t ClosedRange<>.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1B4B6FE50(a1);
  if (v4 < v3)
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

uint64_t ClosedRange<>.protobuf()()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  sub_1B4B6FFD8(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B6FBE8()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  sub_1B4B6FFD8(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B6FC98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1B4B6FE50(a1);
  if (v4 < v3)
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_1B4B6FCE0(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v8 = sub_1B4B70020();
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B6FFD8(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    v4 = sub_1B4D17D6C();
    sub_1B4B6FE50(v7);
  }

  return v4;
}

double sub_1B4B6FE14@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B4B291E0(a1, a2, &v6);
  if (!v3)
  {
    result = *&v6;
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4B6FE50(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1B4B6FEAC(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_1B4B6FFD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4B70020()
{
  result = qword_1EB8AB280;
  if (!qword_1EB8AB280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AB288, &qword_1B4D33858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB280);
  }

  return result;
}

uint64_t SanityTaskMismatch.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[2];
  v4 = a1[3];

  v6 = sub_1B4D18B1C();

  if (v6 >= 3)
  {
    sub_1B4B7017C();
    swift_allocError();
    *v12 = v5;
    v12[1] = v4;
    swift_willThrow();

    return sub_1B4B701D0(a1);
  }

  else
  {
    v8 = *a1;
    v9 = a1[1];
    if (v9 < *a1)
    {
      __break(1u);
    }

    else
    {
      v10 = a1[4];
      v11 = a1[5];
      result = sub_1B4B701D0(a1);
      *a2 = v8;
      *(a2 + 8) = v9;
      *(a2 + 16) = v6;
      *(a2 + 24) = v10;
      *(a2 + 32) = v11;
    }
  }

  return result;
}

unint64_t sub_1B4B7017C()
{
  result = qword_1EB8AB290;
  if (!qword_1EB8AB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB290);
  }

  return result;
}

uint64_t sub_1B4B701D0(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SanityTaskMismatch.protobuf()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  sub_1B4B70640(&qword_1EB8AA720);
  return sub_1B4D17DAC();
}

__n128 sub_1B4B702D0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = 0xE700000000000000;
  v3 = 0x74756F6B726F77;
  if (*(a2 + 16) != 1)
  {
    v3 = 0x507373656E746966;
    v2 = 0xEB0000000073756CLL;
  }

  if (*(a2 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x73676E6972;
  }

  if (*(a2 + 16))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v8 = *(a1 + 24);

  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  result = *(a2 + 24);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B4B70384(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(v1 + 16);
  v10 = *v1;
  v11 = v6;
  v12 = *(v1 + 24);
  v8 = sub_1B4B70694();
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B70640(&qword_1EB8AA720);
    v4 = sub_1B4D17D6C();
    sub_1B4B701D0(v7);
  }

  return v4;
}

double sub_1B4B704B4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B24270(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    *a3 = v7;
    *(a3 + 16) = v6;
    result = v9[0];
    *(a3 + 24) = *v9;
  }

  return result;
}

uint64_t sub_1B4B70500()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  sub_1B4B70640(&qword_1EB8AA720);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B70640(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4B70694()
{
  result = qword_1EB8AB298;
  if (!qword_1EB8AB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB298);
  }

  return result;
}

uint64_t static SnapshotProperty.reduce(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = sub_1B4D18B0C();
  if (!v6)
  {
    v6 = sub_1B4D1843C();
  }

  static SnapshotProperty.reduce(_:)(v6, a1, a2, a3);
}

uint64_t static SnapshotProperty.from(representable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v40 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v39 = AssociatedTypeWitness;
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v35 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1B4D1880C();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v16 = *(v11 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v35 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  v23 = swift_checkMetadataState();
  v24 = *(a3 + 56);
  v42 = a2;
  v25 = a2;
  v26 = a3;
  v24(v25, a3);
  (*(AssociatedConformanceWitness + 48))(v40, v10, v23, AssociatedConformanceWitness);
  (*(v38 + 8))(v10, v39);
  if ((*(v16 + 48))(v15, 1, v11) == 1)
  {
    (*(v36 + 8))(v15, v37);
    v27 = 1;
    v28 = v41;
    v29 = v42;
  }

  else
  {
    (*(v16 + 32))(v22, v15, v11);
    v30 = v35;
    (*(v16 + 16))(v35, v22, v11);
    v31 = v41;
    v32 = v30;
    v33 = v42;
    (*(v26 + 72))(v32, v42, v26);
    (*(v16 + 8))(v22, v11);
    v27 = 0;
    v29 = v33;
    v28 = v31;
  }

  return (*(*(v29 - 8) + 56))(v28, v27, 1);
}

uint64_t static SnapshotProperty.reduce(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a4;
  v20 = sub_1B4D1880C();
  v18 = *(v20 - 8);
  v8 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v17 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(AssociatedConformanceWitness + 32))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v4)
  {
    v14 = v18;
    v17 = result;
    v21 = result;
    v15 = (*(*(a2 - 8) + 56))(v10, 1, 1, a2);
    MEMORY[0x1EEE9AC00](v15);
    *(&v17 - 2) = a2;
    *(&v17 - 1) = a3;
    sub_1B4D184BC();
    swift_getWitnessTable();
    v16 = v20;
    sub_1B4D182DC();
    (*(v14 + 8))(v10, v16);
  }

  return result;
}

uint64_t sub_1B4B70E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a2;
  v26 = a5;
  v9 = sub_1B4D1880C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v20 - v13;
  (*(v10 + 16))(v20 - v13, a1, v9, v12);
  v15 = *(a3 - 8);
  if ((*(v15 + 48))(v14, 1, a3) == 1)
  {
    (*(v10 + 8))(v14, v9);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
  }

  else
  {
    v20[1] = v5;
    v20[0] = *(a4 + 64);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(&v24 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = AssociatedConformanceWitness;
    __swift_allocate_boxed_opaque_existential_1(&v23);
    (v20[0])(a3, a4);
    (*(v15 + 8))(v14, a3);
  }

  v22[3] = AssociatedTypeWitness;
  v22[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, v21, AssociatedTypeWitness);
  static SnapshotProperty.add(_:_:)(&v23, v22, a3, a4, v26);
  sub_1B4B71AF4(v22);
  return sub_1B4B71AF4(&v23);
}

uint64_t static SnapshotProperty.add(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a2;
  v48 = a4;
  v41 = a5;
  v42 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = sub_1B4D1880C();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v39 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  sub_1B4B71A20(a1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
  v24 = swift_dynamicCast();
  v40 = v17;
  v25 = *(v17 + 56);
  v25(v13, v24 ^ 1u, 1, AssociatedTypeWitness);
  sub_1B4B71A20(v43, v46);
  v26 = swift_dynamicCast();
  v25(v10, v26 ^ 1u, 1, AssociatedTypeWitness);
  v27 = v42;
  v28 = v45;
  sub_1B4B71634(v13, v10, v16);
  if (v28)
  {
    v29 = *(v7 + 8);
    v30 = v44;
    v29(v10, v44);
    return (v29)(v13, v30);
  }

  else
  {
    v32 = *(v7 + 8);
    v33 = v10;
    v34 = v44;
    v32(v33, v44);
    v32(v13, v34);
    v35 = v40;
    if ((*(v40 + 48))(v16, 1, AssociatedTypeWitness) == 1)
    {
      v32(v16, v34);
      v36 = 1;
      v37 = v41;
    }

    else
    {
      (*(v35 + 32))(v23, v16, AssociatedTypeWitness);
      v38 = v39;
      (*(v35 + 16))(v39, v23, AssociatedTypeWitness);
      v37 = v41;
      (*(v48 + 72))(v38, v27);
      (*(v35 + 8))(v23, AssociatedTypeWitness);
      v36 = 0;
    }

    return (*(*(v27 - 8) + 56))(v37, v36, 1, v27);
  }
}

uint64_t sub_1B4B71634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v36 = a3;
  swift_getAssociatedTypeWitness();
  v32[1] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v33 = v32 - v9;
  v10 = sub_1B4D1880C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(*(TupleTypeMetadata2 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v15 = v32 - v14;
  v17 = *(v16 + 56);
  v18 = *(*(v10 - 8) + 16);
  v18(v32 - v14, v34, v10, v13);
  (v18)(&v15[v17], v35, v10);
  v19 = *(v4 + 48);
  LODWORD(v10) = v19(v15, 1, AssociatedTypeWitness);
  v20 = v19(&v15[v17], 1, AssociatedTypeWitness);
  if (v10 == 1)
  {
    if (v20 == 1)
    {
      v21 = 1;
      v22 = v36;
      return (*(v4 + 56))(v22, v21, 1, AssociatedTypeWitness);
    }

    v22 = v36;
    (*(v4 + 32))(v36, &v15[v17], AssociatedTypeWitness);
LABEL_7:
    v21 = 0;
    return (*(v4 + 56))(v22, v21, 1, AssociatedTypeWitness);
  }

  v23 = *(v4 + 32);
  if (v20 == 1)
  {
    v22 = v36;
    v23(v36, v15, AssociatedTypeWitness);
    goto LABEL_7;
  }

  v25 = v33;
  v23(v33, v15, AssociatedTypeWitness);
  v26 = &v15[v17];
  v27 = v25;
  v23(v7, v26, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = v36;
  v29 = v37;
  (*(AssociatedConformanceWitness + 24))(v27, v7, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v29)
  {
    v30 = *(v4 + 8);
    v30(v7, AssociatedTypeWitness);
    return (v30)(v27, AssociatedTypeWitness);
  }

  v31 = *(v4 + 8);
  v31(v7, AssociatedTypeWitness);
  v31(v27, AssociatedTypeWitness);
  v21 = 0;
  return (*(v4 + 56))(v22, v21, 1, AssociatedTypeWitness);
}

uint64_t sub_1B4B71A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B71AF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A0, &unk_1B4D360A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MomentGenerationResult.moment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t sub_1B4B71B90()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 0x746E656D6F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B4B71BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E656D6F6DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B4B71CA0(uint64_t a1)
{
  v2 = sub_1B4B71EC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B71CDC(uint64_t a1)
{
  v2 = sub_1B4B71EC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MomentGenerationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2A8, &qword_1B4D33960);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B71EC0();

  sub_1B4D18EFC();
  v16 = v8;
  v17 = v9;
  v15 = 0;
  sub_1B4B71F14();
  v12 = v14;
  sub_1B4D18D0C();

  if (!v12)
  {
    v16 = 1;
    sub_1B4D18CDC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B4B71EC0()
{
  result = qword_1EDC370B8[0];
  if (!qword_1EDC370B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC370B8);
  }

  return result;
}

unint64_t sub_1B4B71F14()
{
  result = qword_1EB8AB2B0;
  if (!qword_1EB8AB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB2B0);
  }

  return result;
}

uint64_t MomentGenerationResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2B8, &qword_1B4D33968);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B71EC0();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16[15] = 0;
  sub_1B4B72150();
  sub_1B4D18C0C();
  v11 = v17;
  v12 = v18;
  v17 = 1;
  sub_1B4D18BDC();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B4B72150()
{
  result = qword_1EDC36EB8;
  if (!qword_1EDC36EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36EB8);
  }

  return result;
}

unint64_t sub_1B4B721F8()
{
  result = qword_1EB8AB2C0;
  if (!qword_1EB8AB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB2C0);
  }

  return result;
}

unint64_t sub_1B4B72250()
{
  result = qword_1EDC370A8;
  if (!qword_1EDC370A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC370A8);
  }

  return result;
}

unint64_t sub_1B4B722A8()
{
  result = qword_1EDC370B0;
  if (!qword_1EDC370B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC370B0);
  }

  return result;
}

uint64_t WorkoutRecordFactType.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v11[-v5];
  v7 = *v0;
  if (v7 > 0x11)
  {
    if (v7 != 18)
    {
      if (v7 == 19)
      {
        return 1701011824;
      }

      goto LABEL_8;
    }

    return 0x6F69746176656C65;
  }

  else
  {
    if (v7 != 16)
    {
      if (v7 == 17)
      {
        return 0x65636E6174736964;
      }

LABEL_8:
      v12 = 0x2874736574736166;
      v13 = 0xE800000000000000;
      v11[15] = v7;
      v9 = v4;
      DistanceReference.rawValue.getter();
      sub_1B4B5A0C0(&qword_1EB8AB2C8);
      v10 = sub_1B4D18D5C();
      MEMORY[0x1B8C7C620](v10);

      (*(v2 + 8))(v6, v9);
      MEMORY[0x1B8C7C620](41, 0xE100000000000000);
      return v12;
    }

    return 0x736569726F6C6163;
  }
}

uint64_t sub_1B4B724D0(uint64_t a1)
{
  v2 = sub_1B4B73AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B7250C(uint64_t a1)
{
  v2 = sub_1B4B73AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B72548()
{
  v1 = *v0;
  v2 = 0x736569726F6C6163;
  v3 = 0x6F69746176656C65;
  v4 = 0x74736574736166;
  if (v1 != 3)
  {
    v4 = 1701011824;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65636E6174736964;
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

uint64_t sub_1B4B725E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B741D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B72608(uint64_t a1)
{
  v2 = sub_1B4B73924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B72644(uint64_t a1)
{
  v2 = sub_1B4B73924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B72680(uint64_t a1)
{
  v2 = sub_1B4B73A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B726BC(uint64_t a1)
{
  v2 = sub_1B4B73A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B726F8(uint64_t a1)
{
  v2 = sub_1B4B73A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B72734(uint64_t a1)
{
  v2 = sub_1B4B73A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B72788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B4B72810(uint64_t a1)
{
  v2 = sub_1B4B739CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B7284C(uint64_t a1)
{
  v2 = sub_1B4B739CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B72888(uint64_t a1)
{
  v2 = sub_1B4B73978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B728C4(uint64_t a1)
{
  v2 = sub_1B4B73978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutRecordFactType.encode(to:)(void *a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2D0, &qword_1B4D33B28);
  v41 = *(v43 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v32 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2D8, &qword_1B4D33B30);
  v42 = *(v44 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2E0, &qword_1B4D33B38);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2E8, &qword_1B4D33B40);
  v34 = *(v10 - 8);
  v35 = v10;
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2F0, &qword_1B4D33B48);
  v33 = *(v14 - 8);
  v15 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB2F8, &qword_1B4D33B50);
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - v20;
  v22 = *v1;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B73924();
  sub_1B4D18EFC();
  if (v22 > 17)
  {
    if (v22 == 18)
    {
      v49 = 2;
      sub_1B4B73A20();
      v31 = v36;
      v24 = v46;
      sub_1B4D18C5C();
      (*(v37 + 8))(v31, v38);
      return (*(v45 + 8))(v21, v24);
    }

    if (v22 == 19)
    {
      v52 = 4;
      sub_1B4B73978();
      v25 = v39;
      v24 = v46;
      sub_1B4D18C5C();
      (*(v41 + 8))(v25, v43);
      return (*(v45 + 8))(v21, v24);
    }

LABEL_8:
    v51 = 3;
    sub_1B4B739CC();
    v26 = v40;
    v27 = v46;
    sub_1B4D18C5C();
    v50 = v22;
    sub_1B4AE95E4();
    v28 = v44;
    sub_1B4D18D0C();
    (*(v42 + 8))(v26, v28);
    return (*(v45 + 8))(v21, v27);
  }

  if (v22 == 16)
  {
    v47 = 0;
    sub_1B4B73AC8();
    v30 = v46;
    sub_1B4D18C5C();
    (*(v33 + 8))(v17, v14);
    return (*(v45 + 8))(v21, v30);
  }

  if (v22 != 17)
  {
    goto LABEL_8;
  }

  v48 = 1;
  sub_1B4B73A74();
  v24 = v46;
  sub_1B4D18C5C();
  (*(v34 + 8))(v13, v35);
  return (*(v45 + 8))(v21, v24);
}

uint64_t WorkoutRecordFactType.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB330, &qword_1B4D33B58);
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v51 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB338, &qword_1B4D33B60);
  v61 = *(v57 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v62 = &v51 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB340, &qword_1B4D33B68);
  v58 = *(v56 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v63 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB348, &qword_1B4D33B70);
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB350, &qword_1B4D33B78);
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB358, &unk_1B4D33B80);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v51 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1B4B73924();
  v26 = v67;
  sub_1B4D18EEC();
  if (v26)
  {
    goto LABEL_9;
  }

  v27 = v18;
  v52 = v15;
  v28 = v63;
  v29 = v64;
  v67 = v20;
  v30 = v65;
  v31 = sub_1B4D18C2C();
  v32 = (2 * *(v31 + 16)) | 1;
  v68 = v31;
  v69 = v31 + 32;
  v70 = 0;
  v71 = v32;
  v33 = sub_1B49C8ABC();
  if (v33 == 5 || v70 != v71 >> 1)
  {
    v38 = sub_1B4D189BC();
    swift_allocError();
    v40 = v39;
    v41 = v23;
    v42 = v19;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820) + 48);
    *v40 = &type metadata for WorkoutRecordFactType;
    sub_1B4D18B5C();
    sub_1B4D189AC();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v67 + 8))(v41, v42);
    swift_unknownObjectRelease();
LABEL_9:
    v50 = v66;
    return __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  if (v33 <= 1u)
  {
    if (v33)
    {
      v72 = 1;
      sub_1B4B73A74();
      sub_1B4D18B4C();
      v48 = v67;
      (*(v55 + 8))(v14, v54);
      (*(v48 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v49 = 17;
    }

    else
    {
      v72 = 0;
      sub_1B4B73AC8();
      v45 = v27;
      sub_1B4D18B4C();
      v46 = v67;
      (*(v53 + 8))(v45, v52);
      (*(v46 + 8))(v23, v19);
      swift_unknownObjectRelease();
      v49 = 16;
    }

    v50 = v66;
  }

  else if (v33 == 2)
  {
    v72 = 2;
    sub_1B4B73A20();
    sub_1B4D18B4C();
    (*(v58 + 8))(v28, v56);
    (*(v67 + 8))(v23, v19);
    swift_unknownObjectRelease();
    v49 = 18;
    v50 = v66;
  }

  else if (v33 == 3)
  {
    v72 = 3;
    sub_1B4B739CC();
    v34 = v62;
    sub_1B4D18B4C();
    v35 = v67;
    v36 = v30;
    sub_1B4AE9638();
    v37 = v57;
    sub_1B4D18C0C();
    (*(v61 + 8))(v34, v37);
    (*(v35 + 8))(v23, v19);
    swift_unknownObjectRelease();
    v49 = v72;
    v50 = v66;
    v30 = v36;
  }

  else
  {
    v72 = 4;
    sub_1B4B73978();
    sub_1B4D18B4C();
    v47 = v67;
    (*(v59 + 8))(v29, v60);
    (*(v47 + 8))(v23, v19);
    swift_unknownObjectRelease();
    v49 = 19;
    v50 = v66;
  }

  *v30 = v49;
  return __swift_destroy_boxed_opaque_existential_1Tm(v50);
}

uint64_t _s19FitnessIntelligence21WorkoutRecordFactTypeO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-v11];
  v13 = *a1;
  v14 = *a2;
  if (v13 > 0x11)
  {
    if (v13 == 18)
    {
      if (v14 != 18)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 != 19)
      {
        goto LABEL_10;
      }

      if (v14 != 19)
      {
        goto LABEL_15;
      }
    }

LABEL_13:
    v16 = 1;
    return v16 & 1;
  }

  if (v13 == 16)
  {
    if (v14 != 16)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v13 == 17)
  {
    if (v14 == 17)
    {
      goto LABEL_13;
    }

LABEL_15:
    v16 = 0;
    return v16 & 1;
  }

LABEL_10:
  if ((v14 & 0xFC) == 0x10)
  {
    goto LABEL_15;
  }

  v19[15] = v13;
  v19[14] = v14;
  v15 = v10;
  DistanceReference.rawValue.getter();
  DistanceReference.rawValue.getter();
  sub_1B4B5A0C0(&qword_1EDC3CB38);
  v16 = sub_1B4D1816C();
  v17 = *(v5 + 8);
  v17(v8, v15);
  v17(v12, v15);
  return v16 & 1;
}

unint64_t sub_1B4B73924()
{
  result = qword_1EB8AB300;
  if (!qword_1EB8AB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB300);
  }

  return result;
}

unint64_t sub_1B4B73978()
{
  result = qword_1EB8AB308;
  if (!qword_1EB8AB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB308);
  }

  return result;
}

unint64_t sub_1B4B739CC()
{
  result = qword_1EB8AB310;
  if (!qword_1EB8AB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB310);
  }

  return result;
}

unint64_t sub_1B4B73A20()
{
  result = qword_1EB8AB318;
  if (!qword_1EB8AB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB318);
  }

  return result;
}

unint64_t sub_1B4B73A74()
{
  result = qword_1EB8AB320;
  if (!qword_1EB8AB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB320);
  }

  return result;
}

unint64_t sub_1B4B73AC8()
{
  result = qword_1EB8AB328;
  if (!qword_1EB8AB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutRecordFactType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_20;
  }

  v2 = a2 + 19;
  if (a2 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 19;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 19;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x10)
  {
    v8 = v7 - 15;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutRecordFactType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 19;
  if (a3 + 19 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xED)
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B4B73C74(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x10)
  {
    return v1 - 15;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B4B73C88(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 15;
  }

  return result;
}

unint64_t sub_1B4B73D0C()
{
  result = qword_1EB8AB360;
  if (!qword_1EB8AB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB360);
  }

  return result;
}

unint64_t sub_1B4B73D64()
{
  result = qword_1EB8AB368;
  if (!qword_1EB8AB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB368);
  }

  return result;
}

unint64_t sub_1B4B73DBC()
{
  result = qword_1EB8AB370;
  if (!qword_1EB8AB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB370);
  }

  return result;
}

unint64_t sub_1B4B73E14()
{
  result = qword_1EB8AB378;
  if (!qword_1EB8AB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB378);
  }

  return result;
}

unint64_t sub_1B4B73E6C()
{
  result = qword_1EB8AB380;
  if (!qword_1EB8AB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB380);
  }

  return result;
}

unint64_t sub_1B4B73EC4()
{
  result = qword_1EB8AB388;
  if (!qword_1EB8AB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB388);
  }

  return result;
}

unint64_t sub_1B4B73F1C()
{
  result = qword_1EB8AB390;
  if (!qword_1EB8AB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB390);
  }

  return result;
}

unint64_t sub_1B4B73F74()
{
  result = qword_1EB8AB398;
  if (!qword_1EB8AB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB398);
  }

  return result;
}

unint64_t sub_1B4B73FCC()
{
  result = qword_1EB8AB3A0;
  if (!qword_1EB8AB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3A0);
  }

  return result;
}

unint64_t sub_1B4B74024()
{
  result = qword_1EB8AB3A8;
  if (!qword_1EB8AB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3A8);
  }

  return result;
}

unint64_t sub_1B4B7407C()
{
  result = qword_1EB8AB3B0;
  if (!qword_1EB8AB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3B0);
  }

  return result;
}

unint64_t sub_1B4B740D4()
{
  result = qword_1EB8AB3B8;
  if (!qword_1EB8AB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3B8);
  }

  return result;
}

unint64_t sub_1B4B7412C()
{
  result = qword_1EB8AB3C0;
  if (!qword_1EB8AB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3C0);
  }

  return result;
}

unint64_t sub_1B4B74184()
{
  result = qword_1EB8AB3C8;
  if (!qword_1EB8AB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3C8);
  }

  return result;
}

uint64_t sub_1B4B741D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736569726F6C6163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746176656C65 && a2 == 0xE90000000000006ELL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736574736166 && a2 == 0xE700000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701011824 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

__n128 WorkoutVoiceAlert.init(type:valueType:value:)@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *a2;
  v7 = a3[1].n128_u8[0];
  a4->n128_u64[0] = *a1;
  a4->n128_u8[8] = v4;
  a4->n128_u8[9] = v5;
  a4->n128_u8[10] = v6;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v7;
  return result;
}

uint64_t WorkoutVoiceAlert.ValueType.rawValue.getter()
{
  v1 = 0x746E6572727563;
  if (*v0 != 1)
  {
    v1 = 0x20676E696C6C6F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65676172657661;
  }
}

uint64_t sub_1B4B74430()
{
  v1 = 0x70795465756C6176;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1B4B74484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B789D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B744AC(uint64_t a1)
{
  v2 = sub_1B4B774D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B744E8(uint64_t a1)
{
  v2 = sub_1B4B774D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceAlert.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB3D0, &qword_1B4D341A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v30 = *(v1 + 10);
  v11 = v1[2];
  v24 = v1[3];
  v25 = v11;
  v23 = *(v1 + 32);
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_1B4B774D8();
  sub_1B4D18EFC();
  v27 = v8;
  LOBYTE(v28) = v9;
  BYTE1(v28) = v10;
  v31 = 0;
  sub_1B4B7752C();
  v17 = v26;
  sub_1B4D18D0C();
  if (!v17)
  {
    v18 = v23;
    v20 = v24;
    v19 = v25;
    LOBYTE(v27) = v30;
    v31 = 1;
    sub_1B4B77580();
    sub_1B4D18CAC();
    v27 = v19;
    v28 = v20;
    v29 = v18;
    v31 = 2;
    sub_1B4B775D4();
    sub_1B4D18D0C();
  }

  return (*(v4 + 8))(v7, v16);
}

uint64_t WorkoutVoiceAlert.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB3F8, &qword_1B4D341A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B774D8();
  sub_1B4D18EEC();
  if (!v2)
  {
    v21 = 0;
    sub_1B4B77628();
    sub_1B4D18C0C();
    v17 = v18;
    v11 = BYTE8(v18);
    v12 = BYTE9(v18);
    v21 = 1;
    sub_1B4B7767C();
    sub_1B4D18BAC();
    HIDWORD(v16) = v11;
    v20 = v12;
    LOBYTE(v12) = v18;
    v21 = 2;
    sub_1B4B776D0();
    sub_1B4D18C0C();
    (*(v6 + 8))(v9, v5);
    v14 = v19;
    v15 = v18;
    *a2 = v17;
    *(a2 + 8) = BYTE4(v16);
    *(a2 + 9) = v20;
    *(a2 + 10) = v12;
    *(a2 + 16) = v15;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t WorkoutVoiceAlert.AlertType.description(activityType:)(void *a1)
{
  if (*(v1 + 9) != 1)
  {
    return 0x6172207472616568;
  }

  v2 = *v1;
  v3 = *(v1 + 8);
  if (*v1 <= 1)
  {
    if (v2 | *(v1 + 8))
    {
      return 0x65636E65646163;
    }

    else if ([a1 effectiveTypeIdentifier] == 13)
    {
      return 0x6465657073;
    }

    else
    {
      return 1701011824;
    }
  }

  else
  {
    v4 = *(v1 + 8);
    v5 = v2 ^ 2 | v4;
    if (v2 ^ 3 | v4)
    {
      v6 = 0x74696C7073;
    }

    else
    {
      v6 = 1701669236;
    }

    if (v5)
    {
      return v6;
    }

    else
    {
      return 0x7265776F70;
    }
  }
}

uint64_t sub_1B4B74AC8(uint64_t a1)
{
  v2 = sub_1B4B77974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74B04(uint64_t a1)
{
  v2 = sub_1B4B77974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74B40()
{
  v1 = *v0;
  v2 = 1701011824;
  v3 = 0x7265776F70;
  v4 = 1701669236;
  if (v1 != 4)
  {
    v4 = 0x73694474696C7073;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7461527472616568;
  if (v1 != 1)
  {
    v5 = 0x65636E65646163;
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

uint64_t sub_1B4B74BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B78AF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B74C20(uint64_t a1)
{
  v2 = sub_1B4B77824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74C5C(uint64_t a1)
{
  v2 = sub_1B4B77824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701736314 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B4B74D30(uint64_t a1)
{
  v2 = sub_1B4B779C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74D6C(uint64_t a1)
{
  v2 = sub_1B4B779C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74DA8(uint64_t a1)
{
  v2 = sub_1B4B77A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74DE4(uint64_t a1)
{
  v2 = sub_1B4B77A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74E20(uint64_t a1)
{
  v2 = sub_1B4B77920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74E5C(uint64_t a1)
{
  v2 = sub_1B4B77920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74E98(uint64_t a1)
{
  v2 = sub_1B4B77878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74ED4(uint64_t a1)
{
  v2 = sub_1B4B77878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B74F10(uint64_t a1)
{
  v2 = sub_1B4B778CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B74F4C(uint64_t a1)
{
  v2 = sub_1B4B778CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceAlert.AlertType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB418, &qword_1B4D341B0);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB420, &qword_1B4D341B8);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB428, &qword_1B4D341C0);
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB430, &qword_1B4D341C8);
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v36 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB438, &qword_1B4D341D0);
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v36 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB440, &qword_1B4D341D8);
  v38 = *(v18 - 8);
  v39 = v18;
  v19 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v37 = &v36 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB448, &qword_1B4D341E0);
  v55 = *(v21 - 8);
  v22 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v36 - v23;
  v25 = *v1;
  v26 = *(v1 + 8);
  v27 = *(v1 + 9);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B77824();
  sub_1B4D18EFC();
  if (v27 == 1)
  {
    v29 = (v55 + 8);
    if (v25 <= 1)
    {
      if (v25 | v26)
      {
        v58 = 2;
        sub_1B4B77974();
        v30 = v40;
        sub_1B4D18C5C();
        v32 = v41;
        v31 = v42;
      }

      else
      {
        v56 = 0;
        sub_1B4B77A1C();
        v30 = v37;
        sub_1B4D18C5C();
        v32 = v38;
        v31 = v39;
      }
    }

    else if (v25 ^ 2 | v26)
    {
      if (v25 ^ 3 | v26)
      {
        v61 = 5;
        sub_1B4B77878();
        v30 = v49;
        sub_1B4D18C5C();
        v32 = v50;
        v31 = v51;
      }

      else
      {
        v60 = 4;
        sub_1B4B778CC();
        v30 = v46;
        sub_1B4D18C5C();
        v32 = v47;
        v31 = v48;
      }
    }

    else
    {
      v59 = 3;
      sub_1B4B77920();
      v30 = v43;
      sub_1B4D18C5C();
      v32 = v44;
      v31 = v45;
    }

    (*(v32 + 8))(v30, v31);
    return (*v29)(v24, v21);
  }

  else
  {
    v57 = 1;
    sub_1B4B779C8();
    v33 = v52;
    sub_1B4D18C5C();
    v34 = v54;
    sub_1B4D18C9C();
    (*(v53 + 8))(v33, v34);
    return (*(v55 + 8))(v24, v21);
  }
}

uint64_t WorkoutVoiceAlert.AlertType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB488, &qword_1B4D341E8);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB490, &qword_1B4D341F0);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v52 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB498, &qword_1B4D341F8);
  v61 = *(v56 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v68 = &v52 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4A0, &qword_1B4D34200);
  v58 = *(v60 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v66 = &v52 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4A8, &qword_1B4D34208);
  v57 = *(v59 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4B0, &qword_1B4D34210);
  v55 = *(v17 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4B8, &unk_1B4D34218);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v52 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1B4B77824();
  v28 = v71;
  sub_1B4D18EEC();
  if (!v28)
  {
    v29 = v20;
    v53 = v17;
    v54 = v16;
    v31 = v68;
    v30 = v69;
    v32 = v70;
    v71 = v22;
    v33 = v21;
    v34 = sub_1B4D18C2C();
    v35 = (2 * *(v34 + 16)) | 1;
    v73 = v34;
    v74 = v34 + 32;
    v75 = 0;
    v76 = v35;
    v36 = sub_1B49C7FAC();
    if (v36 != 6 && v75 == v76 >> 1)
    {
      if (v36 <= 2u)
      {
        if (v36)
        {
          if (v36 == 1)
          {
            v77 = 1;
            sub_1B4B779C8();
            v37 = v54;
            sub_1B4D18B4C();
            v46 = v59;
            v47 = sub_1B4D18B9C();
            v49 = v48;
            (*(v57 + 8))(v37, v46);
            (*(v71 + 8))(v25, v21);
            swift_unknownObjectRelease();
            v50 = 0;
            v51 = v49 & 1;
            goto LABEL_17;
          }

          v77 = 2;
          sub_1B4B77974();
          v45 = v66;
          sub_1B4D18B4C();
          (*(v58 + 8))(v45, v60);
          (*(v71 + 8))(v25, v21);
          swift_unknownObjectRelease();
          v51 = 0;
          v47 = 1;
        }

        else
        {
          v77 = 0;
          sub_1B4B77A1C();
          sub_1B4D18B4C();
          (*(v55 + 8))(v29, v53);
          (*(v71 + 8))(v25, v21);
          swift_unknownObjectRelease();
          v47 = 0;
          v51 = 0;
        }

        v50 = 1;
        goto LABEL_17;
      }

      v43 = v71;
      if (v36 != 3)
      {
        v44 = v67;
        if (v36 == 4)
        {
          v77 = 4;
          sub_1B4B778CC();
          sub_1B4D18B4C();
          (*(v63 + 8))(v30, v62);
          (*(v43 + 8))(v25, v33);
          swift_unknownObjectRelease();
          v51 = 0;
          v50 = 1;
          v47 = 3;
        }

        else
        {
          v77 = 5;
          sub_1B4B77878();
          sub_1B4D18B4C();
          (*(v64 + 8))(v32, v65);
          (*(v43 + 8))(v25, v33);
          swift_unknownObjectRelease();
          v51 = 0;
          v50 = 1;
          v47 = 4;
        }

        goto LABEL_19;
      }

      v77 = 3;
      sub_1B4B77920();
      sub_1B4D18B4C();
      (*(v61 + 8))(v31, v56);
      (*(v43 + 8))(v25, v33);
      swift_unknownObjectRelease();
      v51 = 0;
      v50 = 1;
      v47 = 2;
LABEL_17:
      v44 = v67;
LABEL_19:
      *v44 = v47;
      *(v44 + 8) = v51;
      *(v44 + 9) = v50;
      return __swift_destroy_boxed_opaque_existential_1Tm(v72);
    }

    v38 = sub_1B4D189BC();
    swift_allocError();
    v40 = v39;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820) + 48);
    *v40 = &type metadata for WorkoutVoiceAlert.AlertType;
    sub_1B4D18B5C();
    sub_1B4D189AC();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v71 + 8))(v25, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v72);
}

FitnessIntelligence::WorkoutVoiceAlert::ValueType_optional __swiftcall WorkoutVoiceAlert.ValueType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B4B75FF0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B760A0()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4B7613C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4B761F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746E6572727563;
  if (v2 != 1)
  {
    v5 = 0x20676E696C6C6F72;
    v4 = 0xEF65676172657661;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65676172657661;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B4B76310(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746E6572727563;
  if (v2 != 1)
  {
    v5 = 0x20676E696C6C6F72;
    v4 = 0xEF65676172657661;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x65676172657661;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x746E6572727563;
  if (*a2 != 1)
  {
    v8 = 0x20676E696C6C6F72;
    v3 = 0xEF65676172657661;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65676172657661;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4B7642C()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6E615265756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1B4B76480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B78CFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B764A8(uint64_t a1)
{
  v2 = sub_1B4B77AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B764E4(uint64_t a1)
{
  v2 = sub_1B4B77AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B76520(uint64_t a1)
{
  v2 = sub_1B4B77BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B7655C(uint64_t a1)
{
  v2 = sub_1B4B77BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B76598(uint64_t a1)
{
  v2 = sub_1B4B77B98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B765D4(uint64_t a1)
{
  v2 = sub_1B4B77B98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B76610()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B4B7662C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B4B766F8(uint64_t a1)
{
  v2 = sub_1B4B77B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B76734(uint64_t a1)
{
  v2 = sub_1B4B77B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceAlert.Value.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4C0, &qword_1B4D34228);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4C8, &qword_1B4D34230);
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4D0, &qword_1B4D34238);
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB4D8, &qword_1B4D34240);
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = *v1;
  v19 = v1[1];
  v20 = *(v1 + 16);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B77AF0();
  sub_1B4D18EFC();
  if (v20)
  {
    if (v20 != 1)
    {
      v39 = 0;
      sub_1B4B77BEC();
      v27 = v37;
      sub_1B4D18C5C();
      (*(v29 + 8))(v13, v30);
      return (*(v36 + 8))(v17, v27);
    }

    v43 = 2;
    sub_1B4B77B44();
    v22 = v33;
    v23 = v37;
    sub_1B4D18C5C();
    v42 = 0;
    v24 = v35;
    v25 = v38;
    sub_1B4D18CDC();
    if (!v25)
    {
      v41 = 1;
      sub_1B4D18CDC();
    }

    (*(v34 + 8))(v22, v24);
  }

  else
  {
    v40 = 1;
    sub_1B4B77B98();
    v23 = v37;
    sub_1B4D18C5C();
    v26 = v32;
    sub_1B4D18CDC();
    (*(v31 + 8))(v9, v26);
  }

  return (*(v36 + 8))(v17, v23);
}

uint64_t WorkoutVoiceAlert.Value.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB500, &qword_1B4D34248);
  v50 = *(v47 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v53 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB508, &qword_1B4D34250);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB510, &qword_1B4D34258);
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB518, &qword_1B4D34260);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1B4B77AF0();
  v21 = v54;
  sub_1B4D18EEC();
  if (!v21)
  {
    v54 = 0;
    v23 = v52;
    v22 = v53;
    v24 = sub_1B4D18C2C();
    v25 = (2 * *(v24 + 16)) | 1;
    v56 = v24;
    v57 = v24 + 32;
    v58 = 0;
    v59 = v25;
    v26 = sub_1B49C7FE0();
    if (v26 == 3 || v58 != v59 >> 1)
    {
      v35 = sub_1B4D189BC();
      swift_allocError();
      v36 = v18;
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820) + 48);
      *v38 = &type metadata for WorkoutVoiceAlert.Value;
      sub_1B4D18B5C();
      sub_1B4D189AC();
      (*(*(v35 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v15 + 8))(v36, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v55);
    }

    if (v26)
    {
      if (v26 == 1)
      {
        v60 = 1;
        sub_1B4B77B98();
        v27 = v9;
        v28 = v54;
        sub_1B4D18B4C();
        v29 = v51;
        if (!v28)
        {
          v30 = v48;
          sub_1B4D18BDC();
          v32 = v31;
          (*(v49 + 8))(v27, v30);
          (*(v15 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v33 = 0;
          v34 = 0;
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      v60 = 2;
      sub_1B4B77B44();
      v42 = v54;
      sub_1B4D18B4C();
      v29 = v51;
      if (v42)
      {
LABEL_16:
        (*(v15 + 8))(v18, v14);
        goto LABEL_10;
      }

      v54 = v18;
      v60 = 0;
      v43 = v47;
      sub_1B4D18BDC();
      v32 = v44;
      v60 = 1;
      sub_1B4D18BDC();
      v34 = v45;
      (*(v50 + 8))(v22, v43);
      (*(v15 + 8))(v54, v14);
      swift_unknownObjectRelease();
      v33 = 1;
    }

    else
    {
      v60 = 0;
      sub_1B4B77BEC();
      v41 = v54;
      sub_1B4D18B4C();
      if (v41)
      {
        goto LABEL_16;
      }

      (*(v23 + 8))(v13, v10);
      (*(v15 + 8))(v18, v14);
      swift_unknownObjectRelease();
      v33 = 2;
      v32 = 0;
      v34 = 0;
      v29 = v51;
    }

LABEL_14:
    *v29 = v32;
    *(v29 + 8) = v34;
    *(v29 + 16) = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v55);
}

uint64_t _s19FitnessIntelligence17WorkoutVoiceAlertV2eeoiySbAC_ACtFZ_0(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 10);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 10);
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  v13 = *(a2 + 32);
  if (*(a1 + 9) == 1)
  {
    v14 = *(a1 + 8);
    if (v2 <= 1)
    {
      if (v2 | v14)
      {
        if (!*(a2 + 9) || v8 ^ 1 | v9)
        {
          return 0;
        }

        goto LABEL_27;
      }

      if (!*(a2 + 9))
      {
        return 0;
      }
    }

    else
    {
      if (v2 ^ 2 | v14)
      {
        if (v2 ^ 3 | v14)
        {
          if (!*(a2 + 9) || __PAIR128__(v9, v8) < 4)
          {
            return 0;
          }
        }

        else if (!*(a2 + 9) || v8 ^ 3 | v9)
        {
          return 0;
        }

        goto LABEL_27;
      }

      if (!*(a2 + 9))
      {
        return 0;
      }

      v8 ^= 2uLL;
    }

    if (v8 | v9)
    {
      return 0;
    }

    goto LABEL_27;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_27;
  }

  result = 0;
  if ((v9 & 1) == 0 && v2 == v8)
  {
LABEL_27:
    if (v4 == 3)
    {
      if (v10 == 3)
      {
        goto LABEL_29;
      }
    }

    else if (v10 != 3)
    {
      v16 = 0xE700000000000000;
      v17 = 0xE700000000000000;
      v18 = 0x746E6572727563;
      if (v4 != 1)
      {
        v18 = 0x20676E696C6C6F72;
        v17 = 0xEF65676172657661;
      }

      if (v4)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0x65676172657661;
      }

      if (v4)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      v21 = 0x746E6572727563;
      if (v10 != 1)
      {
        v21 = 0x20676E696C6C6F72;
        v16 = 0xEF65676172657661;
      }

      if (*(a2 + 10))
      {
        v22 = v21;
      }

      else
      {
        v22 = 0x65676172657661;
      }

      if (*(a2 + 10))
      {
        v23 = v16;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      if (v19 == v22 && v20 == v23)
      {

        if (v7)
        {
LABEL_30:
          if (v7 == 1)
          {
            if (v13 != 1 || v5 != v11 || v6 != v12)
            {
              return 0;
            }
          }

          else if (v13 != 2 || *&v12 | *&v11)
          {
            return 0;
          }

          return 1;
        }

        return !v13 && v5 == v11;
      }

      v24 = sub_1B4D18DCC();

      if (v24)
      {
LABEL_29:
        if (v7)
        {
          goto LABEL_30;
        }

        return !v13 && v5 == v11;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1B4B774D8()
{
  result = qword_1EB8AB3D8;
  if (!qword_1EB8AB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3D8);
  }

  return result;
}

unint64_t sub_1B4B7752C()
{
  result = qword_1EB8AB3E0;
  if (!qword_1EB8AB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3E0);
  }

  return result;
}

unint64_t sub_1B4B77580()
{
  result = qword_1EB8AB3E8;
  if (!qword_1EB8AB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3E8);
  }

  return result;
}

unint64_t sub_1B4B775D4()
{
  result = qword_1EB8AB3F0;
  if (!qword_1EB8AB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB3F0);
  }

  return result;
}

unint64_t sub_1B4B77628()
{
  result = qword_1EB8AB400;
  if (!qword_1EB8AB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB400);
  }

  return result;
}

unint64_t sub_1B4B7767C()
{
  result = qword_1EB8AB408;
  if (!qword_1EB8AB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB408);
  }

  return result;
}

unint64_t sub_1B4B776D0()
{
  result = qword_1EB8AB410;
  if (!qword_1EB8AB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB410);
  }

  return result;
}

BOOL _s19FitnessIntelligence17WorkoutVoiceAlertV0E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) != 1)
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      if (*(a1 + 8))
      {
        if (v5)
        {
          return 1;
        }
      }

      else if ((v5 & 1) == 0 && v2 == v4)
      {
        return 1;
      }
    }

    return 0;
  }

  v6 = *(a1 + 8);
  if (v2 > 1)
  {
    if (v2 ^ 2 | v6)
    {
      if (!(v2 ^ 3 | v6))
      {
        return *(a2 + 9) && !(v4 ^ 3 | v5);
      }

      if (*(a2 + 9) && v4 > 3)
      {
        return 1;
      }
    }

    else if (*(a2 + 9) && !(v4 ^ 2 | v5))
    {
      return 1;
    }

    return 0;
  }

  if (!(v2 | v6))
  {
    return *(a2 + 9) && !(v4 | v5);
  }

  return *(a2 + 9) && !(v4 ^ 1 | v5);
}

unint64_t sub_1B4B77824()
{
  result = qword_1EB8AB450;
  if (!qword_1EB8AB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB450);
  }

  return result;
}

unint64_t sub_1B4B77878()
{
  result = qword_1EB8AB458;
  if (!qword_1EB8AB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB458);
  }

  return result;
}

unint64_t sub_1B4B778CC()
{
  result = qword_1EB8AB460;
  if (!qword_1EB8AB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB460);
  }

  return result;
}

unint64_t sub_1B4B77920()
{
  result = qword_1EB8AB468;
  if (!qword_1EB8AB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB468);
  }

  return result;
}

unint64_t sub_1B4B77974()
{
  result = qword_1EB8AB470;
  if (!qword_1EB8AB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB470);
  }

  return result;
}

unint64_t sub_1B4B779C8()
{
  result = qword_1EB8AB478;
  if (!qword_1EB8AB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB478);
  }

  return result;
}

unint64_t sub_1B4B77A1C()
{
  result = qword_1EB8AB480;
  if (!qword_1EB8AB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB480);
  }

  return result;
}

BOOL _s19FitnessIntelligence17WorkoutVoiceAlertV5ValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v10 = *a1;
    v11 = *a2;
    return v2 == v3;
  }

  v5 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (v4 == 1)
    {
      v6 = *a1;
      v7 = *a2;
      if (v2 == v3)
      {
        v8 = *(a2 + 8);
        return *(a1 + 8) == v5;
      }
    }

    return 0;
  }

  v12 = *&v5 | *&v3;
  return v4 == 2 && v12 == 0;
}

unint64_t sub_1B4B77AF0()
{
  result = qword_1EB8AB4E0;
  if (!qword_1EB8AB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB4E0);
  }

  return result;
}

unint64_t sub_1B4B77B44()
{
  result = qword_1EB8AB4E8;
  if (!qword_1EB8AB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB4E8);
  }

  return result;
}

unint64_t sub_1B4B77B98()
{
  result = qword_1EB8AB4F0;
  if (!qword_1EB8AB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB4F0);
  }

  return result;
}

unint64_t sub_1B4B77BEC()
{
  result = qword_1EB8AB4F8;
  if (!qword_1EB8AB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB4F8);
  }

  return result;
}

unint64_t sub_1B4B77C44()
{
  result = qword_1EB8AB520;
  if (!qword_1EB8AB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB520);
  }

  return result;
}

uint64_t sub_1B4B77C98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B4B77CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceAlert.AlertType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutVoiceAlert.AlertType(uint64_t result, int a2, int a3)
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1B4B77D9C(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4B77DB8(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceAlert.Value(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutVoiceAlert.Value(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B4B77E88(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B4B77EA0(uint64_t result, unsigned int a2)
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

unint64_t sub_1B4B77F8C()
{
  result = qword_1EB8AB528;
  if (!qword_1EB8AB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB528);
  }

  return result;
}

unint64_t sub_1B4B77FE4()
{
  result = qword_1EB8AB530;
  if (!qword_1EB8AB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB530);
  }

  return result;
}

unint64_t sub_1B4B7803C()
{
  result = qword_1EB8AB538;
  if (!qword_1EB8AB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB538);
  }

  return result;
}

unint64_t sub_1B4B78094()
{
  result = qword_1EB8AB540;
  if (!qword_1EB8AB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB540);
  }

  return result;
}

unint64_t sub_1B4B780EC()
{
  result = qword_1EB8AB548;
  if (!qword_1EB8AB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB548);
  }

  return result;
}

unint64_t sub_1B4B78144()
{
  result = qword_1EB8AB550;
  if (!qword_1EB8AB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB550);
  }

  return result;
}

unint64_t sub_1B4B7819C()
{
  result = qword_1EB8AB558;
  if (!qword_1EB8AB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB558);
  }

  return result;
}

unint64_t sub_1B4B781F4()
{
  result = qword_1EB8AB560;
  if (!qword_1EB8AB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB560);
  }

  return result;
}

unint64_t sub_1B4B7824C()
{
  result = qword_1EB8AB568;
  if (!qword_1EB8AB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB568);
  }

  return result;
}

unint64_t sub_1B4B782A4()
{
  result = qword_1EB8AB570;
  if (!qword_1EB8AB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB570);
  }

  return result;
}

unint64_t sub_1B4B782FC()
{
  result = qword_1EB8AB578;
  if (!qword_1EB8AB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB578);
  }

  return result;
}

unint64_t sub_1B4B78354()
{
  result = qword_1EB8AB580;
  if (!qword_1EB8AB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB580);
  }

  return result;
}

unint64_t sub_1B4B783AC()
{
  result = qword_1EB8AB588;
  if (!qword_1EB8AB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB588);
  }

  return result;
}

unint64_t sub_1B4B78404()
{
  result = qword_1EB8AB590;
  if (!qword_1EB8AB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB590);
  }

  return result;
}

unint64_t sub_1B4B7845C()
{
  result = qword_1EB8AB598;
  if (!qword_1EB8AB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB598);
  }

  return result;
}

unint64_t sub_1B4B784B4()
{
  result = qword_1EB8AB5A0;
  if (!qword_1EB8AB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5A0);
  }

  return result;
}

unint64_t sub_1B4B7850C()
{
  result = qword_1EB8AB5A8;
  if (!qword_1EB8AB5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5A8);
  }

  return result;
}

unint64_t sub_1B4B78564()
{
  result = qword_1EB8AB5B0;
  if (!qword_1EB8AB5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5B0);
  }

  return result;
}

unint64_t sub_1B4B785BC()
{
  result = qword_1EB8AB5B8;
  if (!qword_1EB8AB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5B8);
  }

  return result;
}

unint64_t sub_1B4B78614()
{
  result = qword_1EB8AB5C0;
  if (!qword_1EB8AB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5C0);
  }

  return result;
}

unint64_t sub_1B4B7866C()
{
  result = qword_1EB8AB5C8;
  if (!qword_1EB8AB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5C8);
  }

  return result;
}

unint64_t sub_1B4B786C4()
{
  result = qword_1EB8AB5D0;
  if (!qword_1EB8AB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5D0);
  }

  return result;
}

unint64_t sub_1B4B7871C()
{
  result = qword_1EB8AB5D8;
  if (!qword_1EB8AB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5D8);
  }

  return result;
}

unint64_t sub_1B4B78774()
{
  result = qword_1EB8AB5E0;
  if (!qword_1EB8AB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5E0);
  }

  return result;
}

unint64_t sub_1B4B787CC()
{
  result = qword_1EB8AB5E8;
  if (!qword_1EB8AB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5E8);
  }

  return result;
}

unint64_t sub_1B4B78824()
{
  result = qword_1EB8AB5F0;
  if (!qword_1EB8AB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5F0);
  }

  return result;
}

unint64_t sub_1B4B7887C()
{
  result = qword_1EB8AB5F8;
  if (!qword_1EB8AB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB5F8);
  }

  return result;
}

unint64_t sub_1B4B788D4()
{
  result = qword_1EB8AB600;
  if (!qword_1EB8AB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB600);
  }

  return result;
}

unint64_t sub_1B4B7892C()
{
  result = qword_1EB8AB608;
  if (!qword_1EB8AB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB608);
  }

  return result;
}

unint64_t sub_1B4B78984()
{
  result = qword_1EB8AB610;
  if (!qword_1EB8AB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB610);
  }

  return result;
}

uint64_t sub_1B4B789D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70795465756C6176 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t sub_1B4B78AF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701011824 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461527472616568 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E65646163 && a2 == 0xE700000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265776F70 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73694474696C7073 && a2 == 0xED000065636E6174)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t sub_1B4B78CFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E615265756C6176 && a2 == 0xEA00000000006567)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

unint64_t sub_1B4B78E18()
{
  result = qword_1EB8AB618;
  if (!qword_1EB8AB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB618);
  }

  return result;
}

uint64_t WeeklySummaryContext.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for HKActivitySummaryRepresentable();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v47 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v40 - v19);
  v21 = *a1;
  v22 = *(*a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  v49 = v5;
  v41 = a1;
  if (v22)
  {
    v50 = MEMORY[0x1E69E7CC0];
    v44 = v22;
    result = sub_1B4BCED7C(0, v22, 0);
    v25 = 0;
    v26 = v50;
    v45 = v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (1)
    {
      if (v25 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_1B4B79CAC(v45 + *(v5 + 72) * v25, v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v27 = v46;
      sub_1B4B79CAC(v14, v46, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      HKActivitySummaryRepresentable.init(_:)(v27, v20);
      if (v2)
      {
        break;
      }

      sub_1B4B79D5C(v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v50 = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1B4BCED7C(v28 > 1, v29 + 1, 1);
        v26 = v50;
      }

      ++v25;
      *(v26 + 16) = v29 + 1;
      result = sub_1B4B79DBC(v20, v26 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v29, type metadata accessor for HKActivitySummaryRepresentable);
      v5 = v49;
      if (v44 == v25)
      {
        a1 = v41;
        v23 = MEMORY[0x1E69E7CC0];
        goto LABEL_11;
      }
    }

    sub_1B4B79D5C(v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
    sub_1B4B79D5C(v41, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v30 = a1[1];
    v31 = *(v30 + 16);
    if (v31)
    {
      v50 = v23;
      result = sub_1B4BCED7C(0, v31, 0);
      v32 = 0;
      v33 = v50;
      v46 = v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      while (v32 < *(v30 + 16))
      {
        v34 = v46 + *(v5 + 72) * v32;
        v35 = v43;
        sub_1B4B79CAC(v34, v43, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        v36 = v42;
        sub_1B4B79CAC(v35, v42, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        HKActivitySummaryRepresentable.init(_:)(v36, v47);
        if (v2)
        {

          sub_1B4B79D5C(v35, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
          sub_1B4B79D5C(v41, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
        }

        sub_1B4B79D5C(v35, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
        v50 = v33;
        v38 = *(v33 + 16);
        v37 = *(v33 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1B4BCED7C(v37 > 1, v38 + 1, 1);
          v33 = v50;
        }

        ++v32;
        *(v33 + 16) = v38 + 1;
        result = sub_1B4B79DBC(v47, v33 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v38, type metadata accessor for HKActivitySummaryRepresentable);
        v5 = v49;
        if (v31 == v32)
        {
          result = sub_1B4B79D5C(v41, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
          goto LABEL_22;
        }
      }

LABEL_24:
      __break(1u);
    }

    else
    {
      result = sub_1B4B79D5C(a1, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
      v33 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v39 = v40;
      *v40 = v26;
      v39[1] = v33;
    }
  }

  return result;
}

uint64_t WeeklySummaryContext.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v2 = *v0;
  sub_1B4B79D14(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B7948C(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v5 = type metadata accessor for HKActivitySummaryRepresentable();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = a2;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v40 = a1;
  v38 = v6;
  if (v18)
  {
    v37 = v13;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF65C(0, v18, 0);
    v19 = v44;
    v20 = v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v41 = *(v6 + 72);
    do
    {
      v21 = sub_1B4B79CAC(v20, v9, type metadata accessor for HKActivitySummaryRepresentable);
      MEMORY[0x1EEE9AC00](v21);
      *(&v36 - 2) = v9;
      sub_1B4B79D14(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      sub_1B4D17DAC();
      sub_1B4B79D5C(v9, type metadata accessor for HKActivitySummaryRepresentable);
      v44 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B4BCF65C(v22 > 1, v23 + 1, 1);
        v19 = v44;
      }

      *(v19 + 16) = v23 + 1;
      sub_1B4B79DBC(v16, v19 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v23, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v20 += v41;
      --v18;
    }

    while (v18);
    a1 = v40;
    v13 = v37;
  }

  v24 = v39;
  v25 = *a1;

  *a1 = v19;
  v26 = *(v24 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v28 = v38;
  if (v26)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF65C(0, v26, 0);
    v27 = v44;
    v29 = v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v41 = *(v28 + 72);
    do
    {
      v30 = sub_1B4B79CAC(v29, v9, type metadata accessor for HKActivitySummaryRepresentable);
      v31 = v13;
      MEMORY[0x1EEE9AC00](v30);
      *(&v36 - 2) = v9;
      sub_1B4B79D14(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      sub_1B4D17DAC();
      sub_1B4B79D5C(v9, type metadata accessor for HKActivitySummaryRepresentable);
      v44 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B4BCF65C(v32 > 1, v33 + 1, 1);
        v27 = v44;
      }

      *(v27 + 16) = v33 + 1;
      sub_1B4B79DBC(v31, v27 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v33, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      v29 += v41;
      --v26;
      v13 = v31;
    }

    while (v26);
    a1 = v40;
  }

  v34 = a1[1];

  a1[1] = v27;
  return result;
}

__int128 *sub_1B4B79964(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v8 = sub_1B4B79C58();
  v9 = &v11;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B79D14(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    v9 = sub_1B4D17D6C();
    sub_1B4B79D5C(v7, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  return v9;
}

double sub_1B4B79AAC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B4B244CC(a1, a2, &v6);
  if (!v3)
  {
    result = *&v6;
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4B79AE8()
{
  type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v2 = *v0;
  sub_1B4B79D14(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4B79C58()
{
  result = qword_1EB8AB628;
  if (!qword_1EB8AB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB628);
  }

  return result;
}

uint64_t sub_1B4B79CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B79D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4B79D5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B79DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static WorkoutGoalAchievementStatusFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49C016C;

  return sub_1B4B7A120(a1, a3);
}

uint64_t WorkoutGoalAchievementStatusFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4B79F94@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t WorkoutGoalAchievementStatusFact.makePrompt(promptFormatter:)()
{
  sub_1B4D1491C(v0);

  return 0;
}

uint64_t sub_1B4B7A024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49C0344;

  return sub_1B4B7A120(a1, a3);
}

uint64_t sub_1B4B7A0E4()
{
  sub_1B4D1491C(v0);

  return 0;
}

uint64_t sub_1B4B7A120(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = sub_1B4D179EC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v2[20] = v14;
  v15 = *(v14 - 8);
  v2[21] = v15;
  v16 = *(v15 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v18 = type metadata accessor for WorkoutState();
  v2[27] = v18;
  v19 = *(v18 - 8);
  v2[28] = v19;
  v20 = *(v19 + 64) + 15;
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B7A470, 0, 0);
}

uint64_t sub_1B4B7A470()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  sub_1B4974FBC(v0[4], v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = v0[29];
    v5 = v0[27];
    v6 = v0[20];
    v7 = v0[21];
    v8 = v0[19];
    sub_1B49B46E0(v0[26], v4);
    sub_1B4974FBC(v4 + *(v5 + 60), v8, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v9 = *(v7 + 48);
    v10 = v9(v8, 1, v6);
    v11 = v0[25];
    if (v10 == 1)
    {
      v13 = v0[19];
      v12 = v0[20];
      v14 = [objc_opt_self() miles];
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      sub_1B4D1741C();
      if (v9(v13, 1, v12) != 1)
      {
        sub_1B4975024(v0[19], &qword_1EB8A6CC0, &unk_1B4D1BC00);
      }
    }

    else
    {
      (*(v0[21] + 32))(v0[25], v0[19], v0[20]);
    }

    v15 = v0[15];
    v16 = v0[16];
    v17 = v0[14];
    sub_1B4974FBC(v0[29] + *(v0[27] + 72), v17, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v18 = *(v16 + 48);
    if (v18(v17, 1, v15) == 1)
    {
      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v19 = v0[18];
      v21 = v0[14];
      v20 = v0[15];
      v22 = qword_1EDC36DF8;
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      v23 = v22;
      sub_1B4D1741C();
      if (v18(v21, 1, v20) != 1)
      {
        sub_1B4975024(v0[14], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      }
    }

    else
    {
      (*(v0[16] + 32))(v0[18], v0[14], v0[15]);
    }

    v24 = v0[29];
    v25 = v0[27];
    v26 = v0[13];
    v28 = v0[6];
    v27 = v0[7];
    v29 = v0[5];
    v30 = *(v24 + *(v25 + 48));
    v31 = [objc_opt_self() seconds];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    v32 = *(v25 + 28);
    v33 = *(v28 + 16);
    v33(v27, v24 + v32, v29);
    v34 = (*(v28 + 88))(v27, v29);
    if (v34 == *MEMORY[0x1E6985B50])
    {
      v35 = v0[24];
      v36 = v0[25];
      v37 = v0[20];
      v38 = v0[21];
    }

    else if (v34 == *MEMORY[0x1E6985B40])
    {
      v35 = v0[12];
      v39 = v0[13];
      v37 = v0[8];
      v38 = v0[9];
    }

    else
    {
      if (v34 != *MEMORY[0x1E6985B48])
      {
        if (v34 != *MEMORY[0x1E6985B30])
        {
          if (v34 != *MEMORY[0x1E6985B38])
          {
            v67 = v0[5];
            sub_1B4D1896C();
            v0[2] = 0;
            v0[3] = 0xE000000000000000;
            MEMORY[0x1B8C7C620](0xD00000000000002ALL, 0x80000001B4D62600);
            sub_1B4D18A8C();
            v68 = v0[2];
            v69 = v0[3];
            return sub_1B4D18A9C();
          }

          goto LABEL_20;
        }

        v121 = v33;
        v125 = v32;
        v54 = v0[22];
        v53 = v0[23];
        v55 = v0[20];
        v56 = v0[21];
        v112 = v0[13];
        v116 = v24;
        v57 = v0[11];
        v107 = v0[25];
        v109 = v0[10];
        v58 = v0[8];
        v59 = v0[9];
        v60 = v0[7];
        (*(v0[6] + 96))(v60, v0[5]);
        v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7F68, &qword_1B4D204A0) + 48);
        (*(v56 + 32))(v53, v60, v55);
        (*(v59 + 32))(v57, v60 + v61, v58);
        v62 = sub_1B4D1740C();
        sub_1B4D1745C();

        v63 = sub_1B4D1740C();
        sub_1B4D1745C();

        sub_1B4D1742C();
        v65 = v64;
        sub_1B4D1742C();
        if (v66 <= v65)
        {
          v72 = v0[10];
          v71 = v0[11];
          v73 = v0[8];
          sub_1B4D1742C();
          v75 = v74;
          sub_1B4D1742C();
          v113 = v76 <= v75;
        }

        else
        {
          v113 = 0;
        }

        v77 = v0[22];
        v78 = v0[23];
        v79 = v0[20];
        v80 = v0[21];
        v81 = v0[11];
        v82 = v0[8];
        v83 = *(v0[9] + 8);
        v83(v0[10], v82);
        v84 = *(v80 + 8);
        v84(v77, v79);
        v83(v81, v82);
        v84(v78, v79);
        v24 = v116;
        v33 = v121;
        v32 = v125;
        if (!v113)
        {
LABEL_20:
          v46 = v0[29];
          v47 = v0[25];
          v48 = v0[20];
          v49 = v0[21];
          v50 = v0[18];
          v51 = v0[15];
          v52 = v0[16];
          (*(v0[9] + 8))(v0[13], v0[8]);
          (*(v52 + 8))(v50, v51);
          (*(v49 + 8))(v47, v48);
          sub_1B49AA7C0(v46);
          goto LABEL_21;
        }

LABEL_29:
        v119 = v0[29];
        v122 = v33;
        v85 = v0[21];
        v114 = v0[20];
        v117 = v0[25];
        v86 = v0[16];
        v108 = v0[15];
        v110 = v0[18];
        v87 = v0[9];
        v105 = v0[8];
        v106 = v0[13];
        v88 = v0[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8AB658, &qword_1B4D35168);
        v89 = *(type metadata accessor for WorkoutGoalAchievementStatusFact() - 8);
        v90 = *(v89 + 72);
        v91 = v32;
        v92 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1B4D1A800;
        v124 = v93;
        v122(v93 + v92, v24 + v91, v88);
        (*(v87 + 8))(v106, v105);
        (*(v86 + 8))(v110, v108);
        (*(v85 + 8))(v117, v114);
        sub_1B49AA7C0(v119);
        goto LABEL_30;
      }

      v35 = v0[17];
      v40 = v0[18];
      v37 = v0[15];
      v38 = v0[16];
    }

    v41 = v0[7];
    (*(v0[6] + 96))(v41, v0[5]);
    v42 = *v41;
    v43 = *(v41 + 8);
    sub_1B4D1745C();
    sub_1B4D1742C();
    v45 = v44;

    (*(v38 + 8))(v35, v37);
    if (v42 > v45)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  sub_1B4975024(v0[26], &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_21:
  v124 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v94 = v0[29];
  v96 = v0[25];
  v95 = v0[26];
  v98 = v0[23];
  v97 = v0[24];
  v99 = v0[22];
  v101 = v0[18];
  v100 = v0[19];
  v102 = v0[17];
  v103 = v0[14];
  v111 = v0[13];
  v115 = v0[12];
  v118 = v0[11];
  v120 = v0[10];
  v123 = v0[7];

  v104 = v0[1];

  return v104(v124);
}

unint64_t sub_1B4B7ADB4()
{
  result = qword_1EB8AB630;
  if (!qword_1EB8AB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB630);
  }

  return result;
}

unint64_t sub_1B4B7AE08(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B7AE38();
  result = sub_1B4B7AE8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B7AE38()
{
  result = qword_1EB8AB638;
  if (!qword_1EB8AB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB638);
  }

  return result;
}

unint64_t sub_1B4B7AE8C()
{
  result = qword_1EB8AB640;
  if (!qword_1EB8AB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB640);
  }

  return result;
}

uint64_t sub_1B4B7AEE0(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B7AF48(&qword_1EB8AB648);
  result = sub_1B4B7AF48(&qword_1EB8AB650);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B7AF48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutGoalAchievementStatusFact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.__deallocating_deinit()
{
  MEMORY[0x1B8C7DDA0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

void sub_1B4B7B098(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t FitnessPlusDictionaryPropertyValue.dictionary.getter()
{
  sub_1B4959850();
}

uint64_t FitnessPlusDictionaryPropertyValue.init(dictionary:missed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static FitnessPlusDictionaryPropertyValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v10 = *(*(a6 + 16) + 8);
  return sub_1B4D1803C() & (v7 == v9);
}

uint64_t FitnessPlusDictionaryPropertyValue.hash(into:)(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *(a2[5] + 16);
  sub_1B4D1802C();
  return MEMORY[0x1B8C7D290](v4);
}

uint64_t FitnessPlusDictionaryPropertyValue.hashValue.getter(void *a1)
{
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  sub_1B4D18E8C();
  FitnessPlusDictionaryPropertyValue.hash(into:)(v5, a1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B7B320(uint64_t a1, void *a2)
{
  sub_1B4D18E8C();
  FitnessPlusDictionaryPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B7B374(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B7B3B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B7B3EC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B7B468()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static RingsDeltaStatisticsPropertyGenerator.from(_:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4D1746C();
  v9 = sub_1B4D1880C();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = *(v8 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  v21 = *a2;
  sub_1B49A8448(a1, &v31);
  if (v32)
  {
    v30 = a4;
    sub_1B49A24C4(&v31, v33);
    v22 = v21 - 15;
    if ((v21 - 15) < 4u)
    {
      v23 = v34;
      v24 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      LOBYTE(v31) = v22;
      RingsRepresentable.delta<A>(for:)(&v31, v23, a3, v24, v13);
      if ((*(v14 + 48))(v13, 1, v8) != 1)
      {
        (*(v14 + 32))(v20, v13, v8);
        (*(v14 + 16))(v18, v20, v8);
        v27 = v30;
        StatisticsPropertyValue.init(measurement:)(v18, v30);
        (*(v14 + 8))(v20, v8);
        v28 = type metadata accessor for StatisticsPropertyValue();
        (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
        return __swift_destroy_boxed_opaque_existential_1Tm(v33);
      }

      (*(v29 + 8))(v13, v9);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    a4 = v30;
  }

  else
  {
    sub_1B49A84B8(&v31);
  }

  v25 = type metadata accessor for StatisticsPropertyValue();
  return (*(*(v25 - 8) + 56))(a4, 1, 1, v25);
}

uint64_t sub_1B4B7B7EC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t Sequence.asyncFlatMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = *(*(sub_1B4D1880C() - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(a3 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = swift_getAssociatedTypeWitness();
  v6[15] = v14;
  v15 = *(v14 - 8);
  v6[16] = v15;
  v16 = *(v15 + 64) + 15;
  v6[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B7BA30, 0, 0);
}

uint64_t sub_1B4B7BA30()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_1B4D17F8C();
  (*(v3 + 16))(v2, v4, v7);
  sub_1B4D182AC();
  v8 = v0[17];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[14];
    v17 = v0[11];
    v16 = v0[12];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v18 = v0[2];

    v19 = v0[1];

    return v19(v18);
  }

  else
  {
    v21 = v0[3];
    (*(v0[10] + 32))(v0[11], v0[12], v0[9]);
    v26 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    v0[18] = v23;
    *v23 = v0;
    v23[1] = sub_1B4B7BC8C;
    v24 = v0[11];
    v25 = v0[4];

    return v26(v24);
  }
}

uint64_t sub_1B4B7BC8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v8 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = v3[2];

    v6 = sub_1B4B7BFE4;
  }

  else
  {
    v6 = sub_1B4B7BDA8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B4B7BDA8()
{
  if (v0[19])
  {
    v1 = v0[6];
    v2 = v0[19];
    sub_1B4D1846C();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v10 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v13 = v0[2];

    v14 = v0[1];

    return v14(v13);
  }

  else
  {
    v16 = v0[3];
    (*(v0[10] + 32))(v0[11], v0[12], v0[9]);
    v21 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_1B4B7BC8C;
    v19 = v0[11];
    v20 = v0[4];

    return v21(v19);
  }
}

uint64_t sub_1B4B7BFE4()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];
  v7 = v0[20];

  return v6();
}

uint64_t static Array<A>.allCases.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1B4D1897C();
  sub_1B4D184BC();
  swift_dynamicCast();
  return v3;
}

uint64_t Sequence.asyncMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = *(*(a4 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(*(sub_1B4D1880C() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = *(a3 - 8);
  v6[14] = v13;
  v14 = *(v13 + 64) + 15;
  v6[15] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v17 = *(v16 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B7C388, 0, 0);
}

uint64_t sub_1B4B7C388()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_1B4D17F8C();
  (*(v3 + 16))(v2, v4, v7);
  sub_1B4D182AC();
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[7];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v19 = v0[2];

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v22 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v28 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[19] = v24;
    *v24 = v0;
    v24[1] = sub_1B4B7C5F4;
    v25 = v0[12];
    v26 = v0[9];
    v27 = v0[4];

    return v28(v26, v25);
  }
}

uint64_t sub_1B4B7C5F4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1B4B7C968;
  }

  else
  {
    v5 = sub_1B4B7C710;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4B7C710()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  sub_1B4D184BC();
  sub_1B4D1848C();
  (*(v2 + 8))(v1, v3);
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[7];
  v12 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v17 = v0[2];

    v18 = v0[1];

    return v18(v17);
  }

  else
  {
    v20 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v26 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_1B4B7C5F4;
    v23 = v0[12];
    v24 = v0[9];
    v25 = v0[4];

    return v26(v24, v23);
  }
}

uint64_t sub_1B4B7C968()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t Sequence.asyncCompactMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = sub_1B4D1880C();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc();
  v12 = *(a4 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[16] = v15;
  v16 = *(v15 + 64) + 15;
  v6[17] = swift_task_alloc();
  v17 = *(*(sub_1B4D1880C() - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v18 = *(a3 - 8);
  v6[19] = v18;
  v19 = *(v18 + 64) + 15;
  v6[20] = swift_task_alloc();
  v20 = swift_getAssociatedTypeWitness();
  v6[21] = v20;
  v21 = *(v20 - 8);
  v6[22] = v21;
  v22 = *(v21 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B7CCF4, 0, 0);
}

uint64_t sub_1B4B7CCF4()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_1B4D17F8C();
  (*(v3 + 16))(v2, v4, v7);
  sub_1B4D182AC();
  v8 = v0[23];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[7];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[20];
    v17 = v0[17];
    v16 = v0[18];
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[11];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v21 = v0[2];

    v22 = v0[1];

    return v22(v21);
  }

  else
  {
    v24 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v30 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    v0[24] = v26;
    *v26 = v0;
    v26[1] = sub_1B4B7CF7C;
    v27 = v0[17];
    v28 = v0[11];
    v29 = v0[4];

    return v30(v28, v27);
  }
}

uint64_t sub_1B4B7CF7C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1B4B7D3D4;
  }

  else
  {
    v5 = sub_1B4B7D098;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4B7D098()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    sub_1B4D184BC();
    sub_1B4D1848C();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[7];
  v18 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = v0[20];
    v21 = v0[17];
    v20 = v0[18];
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[11];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v25 = v0[2];

    v26 = v0[1];

    return v26(v25);
  }

  else
  {
    v28 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v34 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    v0[24] = v30;
    *v30 = v0;
    v30[1] = sub_1B4B7CF7C;
    v31 = v0[17];
    v32 = v0[11];
    v33 = v0[4];

    return v34(v32, v31);
  }
}

uint64_t sub_1B4B7D3D4()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[25];

  return v9();
}

uint64_t Sequence.asyncReduce<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v10 = *(a6 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[12] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();
  v15 = *(*(sub_1B4D1880C() - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v16 = *(a5 - 8);
  v8[16] = v16;
  v17 = *(v16 + 64) + 15;
  v8[17] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v8[18] = v18;
  v19 = *(v18 - 8);
  v8[19] = v19;
  v20 = *(v19 + 64) + 15;
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B7D710, 0, 0);
}

uint64_t sub_1B4B7D710()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[9];
  v5 = v0[8];
  v6 = v0[6];
  (*(v0[10] + 16))(v0[2], v0[3], v0[7]);
  (*(v3 + 16))(v2, v4, v6);
  sub_1B4D182AC();
  v7 = v0[20];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[8];
  v13 = v0[6];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v14 = v0[17];
    v16 = v0[14];
    v15 = v0[15];
    v17 = v0[11];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[4];
    (*(v0[13] + 32))(v0[14], v0[15], v0[12]);
    v27 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[21] = v22;
    *v22 = v0;
    v22[1] = sub_1B4B7D980;
    v23 = v0[14];
    v24 = v0[11];
    v25 = v0[5];
    v26 = v0[2];

    return v27(v24, v26, v23);
  }
}

uint64_t sub_1B4B7D980()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1B4B7DD00;
  }

  else
  {
    v3 = sub_1B4B7DA94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4B7DA94()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v4, v3);
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[8];
  v11 = v0[6];
  swift_getAssociatedConformanceWitness();
  sub_1B4D1882C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v12 = v0[17];
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[11];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[4];
    (*(v0[13] + 32))(v0[14], v0[15], v0[12]);
    v25 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[21] = v20;
    *v20 = v0;
    v20[1] = sub_1B4B7D980;
    v21 = v0[14];
    v22 = v0[11];
    v23 = v0[5];
    v24 = v0[2];

    return v25(v22, v24, v21);
  }
}

uint64_t sub_1B4B7DD00()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[10];
  v12 = v0[11];
  v7 = v0[7];
  v8 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v8, v7);

  v9 = v0[1];
  v10 = v0[22];

  return v9();
}

uint64_t Sequence.groupBy<A>(key:)(void (*a1)(char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a1;
  v82 = a2;
  v70 = sub_1B4D1880C();
  v67 = *(v70 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v80 = &v58 - v11;
  v75 = *(a4 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v58 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v58 - v18;
  v78 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  v20 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v25 = sub_1B4D1880C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v58 - v27;
  v77 = a3;
  v79 = *(a3 - 1);
  v29 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = swift_getAssociatedTypeWitness();
  v58 = *(v71 - 8);
  v33 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v35 = &v58 - v34;
  v36 = sub_1B4D184BC();
  swift_getTupleTypeMetadata2();
  v37 = sub_1B4D1843C();
  v69 = v36;
  v64 = a6;
  v38 = sub_1B49BD4DC(v37, a4, v36, a6);

  v86 = v38;
  v39 = v71;
  (*(v79 + 16))(v32, v84, v77);
  sub_1B4D182AC();
  v40 = v62;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = v35;
  v79 = AssociatedConformanceWitness;
  sub_1B4D1882C();
  v77 = *(v40 + 48);
  v78 = v40 + 48;
  if (v77(v28, 1, AssociatedTypeWitness) == 1)
  {
LABEL_2:
    (*(v58 + 8))(v84, v39);
    return v86;
  }

  else
  {
    v74 = *(v40 + 32);
    v72 = (v75 + 48);
    v68 = (v75 + 32);
    v66 = (v75 + 16);
    v63 = (v40 + 16);
    v65 = (v75 + 8);
    v75 = v40 + 32;
    v73 = (v40 + 8);
    v67 += 8;
    v43 = v83;
    v74(v24, v28, AssociatedTypeWitness);
    while (1)
    {
      v44 = v80;
      v81(v24);
      if (v43)
      {
        break;
      }

      if ((*v72)(v44, 1, a4) == 1)
      {
        (*v73)(v24, AssociatedTypeWitness);
        (*v67)(v44, v70);
      }

      else
      {
        v83 = 0;
        v45 = v76;
        (*v68)(v76, v44, a4);
        sub_1B4D1805C();
        if (v85[0])
        {

          v46 = v61;
          (*v66)(v61, v45, a4);
          sub_1B4D1801C();
          v47 = sub_1B4D1804C();
          if (*v48)
          {
            (*v63)(v60, v24, AssociatedTypeWitness);
            v39 = v71;
            sub_1B4D1848C();
          }

          v47(v85, 0);
          v49 = *v65;
          (*v65)(v46, a4);
          v49(v76, a4);
          (*v73)(v24, AssociatedTypeWitness);
          v43 = v83;
        }

        else
        {
          (*v66)(v59, v45, a4);
          v50 = sub_1B4B05BD4(AssociatedTypeWitness, AssociatedTypeWitness);
          v51 = *(v50 + 52);
          v52 = v62;
          v53 = *(v62 + 72);
          v54 = (*(v62 + 80) + *(v50 + 48)) & ~*(v62 + 80);
          swift_allocObject();
          v55 = sub_1B4D1841C();
          (*(v52 + 16))(v56, v24, AssociatedTypeWitness);
          v85[0] = sub_1B49BA6A8(v55);
          sub_1B4D1801C();
          sub_1B4D1806C();
          (*v65)(v76, a4);
          v57 = *(v52 + 8);
          v39 = v71;
          v57(v24, AssociatedTypeWitness);
          v43 = v83;
        }
      }

      sub_1B4D1882C();
      if (v77(v28, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_2;
      }

      v74(v24, v28, AssociatedTypeWitness);
    }

    (*v73)(v24, AssociatedTypeWitness);
    (*(v58 + 8))(v84, v39);
  }
}

uint64_t (*sub_1B4B7E70C(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B4B7FE04(v4, a2);
  return sub_1B4B81254;
}

uint64_t (*sub_1B4B7E784(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B4B7FEA8(v4, a2);
  return sub_1B4B81254;
}

uint64_t (*sub_1B4B7E7FC(uint64_t **a1, int a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B4B7FF4C(v4, a2 & 0xFFFFFF);
  return sub_1B4B7E874;
}

void sub_1B4B7E878(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t Sequence.chunked(by:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v28 - v6;
  v8 = sub_1B4D1880C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  v34 = a1;
  if (a1 < 1)
  {
    sub_1B4D184BC();
    return sub_1B4D1843C();
  }

  else
  {
    v29 = v19;
    sub_1B4D184BC();
    v37 = sub_1B4D1843C();
    v36 = sub_1B4D1843C();
    (*(v12 + 16))(v16, AssociatedConformanceWitness, a2);
    sub_1B4D182AC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1B4D1882C();
    v22 = v30;
    v32 = *(v30 + 48);
    v23 = v17;
    if (v32(v11, 1, AssociatedTypeWitness) != 1)
    {
      v26 = *(v22 + 32);
      v31 = v11;
      v26(v7, v11, AssociatedTypeWitness);
      while (1)
      {
        sub_1B4D1848C();
        v27 = v36;
        if (sub_1B4D1847C() == v34)
        {
          v35 = v27;
          sub_1B4D184BC();

          v11 = v31;
          sub_1B4D1848C();
          sub_1B4D184AC();
        }

        sub_1B4D1882C();
        if (v32(v11, 1, AssociatedTypeWitness) == 1)
        {
          break;
        }

        v26(v7, v11, AssociatedTypeWitness);
      }
    }

    (*(v29 + 8))(v21, v23);
    v24 = v36;
    v35 = v36;
    swift_getWitnessTable();
    if (sub_1B4D186AC())
    {
    }

    else
    {
      v35 = v24;
      sub_1B4D184BC();
      sub_1B4D1848C();
    }

    return v37;
  }
}

void sub_1B4B7ED64(unint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v4 = *(Descriptor - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v30 = &Descriptor - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1B4D188EC() + 1) & ~v8;
    v12 = *(v4 + 72);
    v29 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      v15 = a1;
      v16 = v30;
      sub_1B4B81124(*(a2 + 48) + v12 * v9, v30, type metadata accessor for FitnessContextQueryDescriptor);
      v17 = *(a2 + 40);
      sub_1B4D18E8C();
      FitnessContextQueryDescriptor.hash(into:)(v31);
      v18 = sub_1B4D18EDC();
      v19 = v16;
      a1 = v15;
      sub_1B4B8118C(v19, type metadata accessor for FitnessContextQueryDescriptor);
      v20 = v18 & v10;
      if (v15 >= v11)
      {
        if (v20 < v11)
        {
          v7 = v29;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (v15 >= v20)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v20 >= v11 || v15 >= v20)
        {
LABEL_11:
          v21 = v12 * v15;
          if (v12 * v15 < v14 || *(a2 + 48) + v12 * v15 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v29;
          }

          else
          {
            v7 = v29;
            if (v21 != v14)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v22 = *(a2 + 56);
          v23 = (v22 + 8 * a1);
          v24 = (v22 + 8 * v9);
          if (a1 != v9 || v23 >= v24 + 1)
          {
            *v23 = *v24;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v29;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}