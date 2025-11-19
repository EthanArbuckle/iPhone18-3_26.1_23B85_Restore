uint64_t sub_1B4B14178@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v29 = a2;
  v32 = a1;
  v6 = sub_1B4D1794C();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = sub_1B4D1777C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.endOfDay.getter(v16);
  if (v4)
  {

    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_5:
    sub_1B4975024(v16, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    return swift_willThrow();
  }

  v28 = a4;
  (*(v18 + 56))(v16, 0, 1, v17);
  v26 = *(v18 + 32);
  v27 = v18 + 32;
  v26(v21, v16, v17);
  v22 = v30;
  v23 = v31;
  (*(v30 + 104))(v9, *v29, v31);
  sub_1B4D1790C();
  (*(v22 + 8))(v9, v23);
  (*(v18 + 8))(v21, v17);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    v16 = v13;
    goto LABEL_5;
  }

  return (v26)(v28, v13, v17);
}

uint64_t Date.endOfMonth(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v39 = a2;
  v41 = sub_1B4D1794C();
  v3 = *(v41 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = sub_1B4D1777C();
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  result = Date.beginningOfMonth()(&v30 - v19);
  if (!v2)
  {
    v37 = v10;
    v34 = 0;
    v22 = *MEMORY[0x1E6969A78];
    v23 = v41;
    v36 = v3[13];
    v36(v6, v22, v41);
    sub_1B4D1790C();
    v24 = v3[1];
    v38 = v3 + 1;
    v35 = v24;
    v24(v6, v23);
    v25 = v40;
    v26 = *(v40 + 48);
    if (v26(v13, 1, v14) == 1)
    {
      goto LABEL_4;
    }

    v31 = *(v25 + 32);
    v32 = v25 + 32;
    v31(v17, v13, v14);
    v27 = *MEMORY[0x1E6969A98];
    v33 = v14;
    v28 = v41;
    v36(v6, v27, v41);
    v13 = v37;
    v36 = v26;
    sub_1B4D1790C();
    v35(v6, v28);
    v29 = *(v25 + 8);
    v14 = v33;
    v29(v17, v33);
    if (v36(v13, 1, v14) == 1)
    {
LABEL_4:
      sub_1B4975024(v13, &qword_1EB8A6790, &qword_1B4D1BBC0);
      sub_1B4B15124();
      swift_allocError();
      swift_willThrow();
      return (*(v25 + 8))(v20, v14);
    }

    else
    {
      v29(v20, v14);
      return (v31)(v39, v13, v14);
    }
  }

  return result;
}

uint64_t sub_1B4B14928@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(double)@<X1>, uint64_t a3@<X8>)
{
  v22[0] = a3;
  v22[1] = a1;
  v5 = sub_1B4D1794C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v22 - v12;
  v14 = sub_1B4D1777C();
  v23 = *(v14 - 8);
  v15 = *(v23 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a2(v16);
  if (!v3)
  {
    v20 = v22[0];
    (*(v6 + 104))(v9, *MEMORY[0x1E6969A98], v5);
    sub_1B4D1790C();
    (*(v6 + 8))(v9, v5);
    v21 = v23;
    if ((*(v23 + 48))(v13, 1, v14) == 1)
    {
      sub_1B4975024(v13, &qword_1EB8A6790, &qword_1B4D1BBC0);
      sub_1B4B15124();
      swift_allocError();
      swift_willThrow();
      return (*(v21 + 8))(v18, v14);
    }

    else
    {
      (*(v21 + 8))(v18, v14);
      return (*(v21 + 32))(v20, v13, v14);
    }
  }

  return result;
}

BOOL Date.isAnniversary(of:calendar:)(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v55 = a1;
  v2 = sub_1B4D175FC();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v44 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v7 = sub_1B4D1794C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v51 = 3 * v9;
  v48 = v9;
  v46 = 2 * v9;
  v11 = swift_allocObject();
  v50 = xmmword_1B4D1BE00;
  *(v11 + 16) = xmmword_1B4D1BE00;
  v49 = *MEMORY[0x1E6969A68];
  v12 = *(v8 + 104);
  v12(v11 + v10);
  v47 = *MEMORY[0x1E6969A78];
  v12(v11 + v10 + v9);
  v45 = *MEMORY[0x1E6969A48];
  v12(v11 + v10 + 2 * v9);
  sub_1B49B56B4(v11);
  swift_setDeallocating();
  v13 = v58;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B4D1788C();

  v14 = swift_allocObject();
  *(v14 + 16) = v50;
  (v12)(v14 + v10, v49, v7);
  (v12)(v14 + v10 + v48, v47, v7);
  (v12)(v14 + v10 + v46, v45, v7);
  sub_1B49B56B4(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  v15 = v54;
  swift_deallocClassInstance();
  sub_1B4D1788C();

  v16 = sub_1B4D1759C();
  if (v17)
  {
    goto LABEL_7;
  }

  v18 = v16;
  v19 = sub_1B4D175AC();
  if (v20)
  {
    goto LABEL_7;
  }

  v21 = v19;
  v22 = sub_1B4D1757C();
  if (v23 & 1) != 0 || (v24 = v22, v25 = sub_1B4D1759C(), (v26) || (v27 = v25, v28 = sub_1B4D175AC(), (v29) || (v30 = v28, v31 = sub_1B4D1757C(), (v32))
  {
LABEL_7:
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    v33 = *(v56 + 8);
    v34 = v15;
    v35 = v57;
    v33(v34, v57);
    v33(v13, v35);
  }

  else
  {
    v38 = v31;
    v39 = v57;
    v40 = v15;
    v41 = *(v56 + 8);
    v41(v40, v57);
    v41(v58, v39);
    return v21 == v30 && v24 == v38 && v27 < v18;
  }

  return v36;
}

unint64_t sub_1B4B15124()
{
  result = qword_1EB8AA558;
  if (!qword_1EB8AA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA558);
  }

  return result;
}

unint64_t sub_1B4B1517C()
{
  result = qword_1EB8AA560;
  if (!qword_1EB8AA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA560);
  }

  return result;
}

unint64_t sub_1B4B151F4()
{
  result = qword_1EB8AA568;
  if (!qword_1EB8AA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA568);
  }

  return result;
}

unint64_t sub_1B4B1524C()
{
  result = qword_1EB8AA570;
  if (!qword_1EB8AA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA570);
  }

  return result;
}

uint64_t sub_1B4B152A0@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  result = sub_1B4B155D4(v10);
  if (!v2)
  {
    v27 = a1;
    v28 = 0;
    v20 = *(v12 + 48);
    if (v20(v10, 1, v11) == 1)
    {
      sub_1B4975024(v10, &qword_1EB8A8370, &unk_1B4D21F00);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
      return sub_1B4B17648(v1 + *(v21 + 32), v27);
    }

    else
    {
      sub_1B498B270(v10, v18, &qword_1EB8A6928, &qword_1B4D20480);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
      sub_1B4B17648(v1 + *(v22 + 32), v7);
      if (v20(v7, 1, v11) == 1)
      {
        sub_1B4975024(v7, &qword_1EB8A8370, &unk_1B4D21F00);
        v23 = v27;
        sub_1B498B270(v18, v27, &qword_1EB8A6928, &qword_1B4D20480);
        return (*(v12 + 56))(v23, 0, 1, v11);
      }

      else
      {
        sub_1B498B270(v7, v15, &qword_1EB8A6928, &qword_1B4D20480);
        v24 = v27;
        v25 = v28;
        sub_1B4CE22CC(v15, v18, v27);
        sub_1B4975024(v15, &qword_1EB8A6928, &qword_1B4D20480);
        result = sub_1B4975024(v18, &qword_1EB8A6928, &qword_1B4D20480);
        if (!v25)
        {
          return (*(v12 + 56))(v24, 0, 1, v11);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4B155D4@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v73 = *(v9 - 8);
  v10 = v73[8];
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v59 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v52 - v25;
  v27 = *(v1 + 8);
  v29 = *(v3 + 56);
  v28 = v3 + 56;
  v68 = v2;
  v56 = v29;
  (v29)(&v52 - v25, 1, 1, v2, v24);
  v53 = v26;
  sub_1B4B17648(v26, v22);
  v30 = v27 + 64;
  v31 = 1 << *(v27 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v27 + 64);
  v60 = (v31 + 63) >> 6;
  v61 = v27;
  v70 = v73 + 1;
  v71 = v73 + 2;
  v57 = v28;
  v58 = (v28 - 8);
  result = swift_bridgeObjectRetain_n();
  v35 = 0;
  v69 = v14;
  v64 = v22;
  v54 = v6;
  v55 = v27 + 64;
  while (v33)
  {
    v37 = v74;
LABEL_12:
    v39 = *(v61 + 56) + v73[9] * (__clz(__rbit64(v33)) | (v35 << 6));
    v40 = v73[2];
    v66 = v40;
    v40(v14, v39, v9);
    v40(v72, v14, v9);
    v67 = type metadata accessor for UnitCount();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = [ObjCClassFromMetadata baseUnit];
    v42 = v68;
    v43 = v68[11];
    sub_1B4D1745C();

    sub_1B4D1742C();
    *(v37 + v42[7]) = 1;
    v44 = v66;
    v66(v37, v37 + v43, v9);
    v45 = [ObjCClassFromMetadata baseUnit];
    v46 = v37 + v42[10];
    sub_1B4D1741C();
    v47 = v73[1];
    v47(v72, v9);
    v44(v37 + v42[9], v37 + v43, v9);
    v44(v37 + v42[8], v37 + v43, v9);
    v22 = v64;
    v48 = v59;
    sub_1B4B17648(v64, v59);
    if ((*v58)(v48, 1, v42) == 1)
    {
      v47(v69, v9);
      sub_1B4975024(v22, &qword_1EB8A8370, &unk_1B4D21F00);
      sub_1B4975024(v48, &qword_1EB8A8370, &unk_1B4D21F00);
      v36 = v63;
      sub_1B498B270(v74, v63, &qword_1EB8A6928, &qword_1B4D20480);
    }

    else
    {
      v49 = v48;
      v50 = v54;
      sub_1B498B270(v49, v54, &qword_1EB8A6928, &qword_1B4D20480);
      v51 = v62;
      sub_1B4CE22CC(v50, v74, v63);
      v62 = v51;
      if (v51)
      {

        sub_1B4975024(v50, &qword_1EB8A6928, &qword_1B4D20480);
        sub_1B4975024(v74, &qword_1EB8A6928, &qword_1B4D20480);
        v47(v69, v9);
        sub_1B4975024(v64, &qword_1EB8A8370, &unk_1B4D21F00);
        sub_1B4975024(v53, &qword_1EB8A8370, &unk_1B4D21F00);
      }

      sub_1B4975024(v50, &qword_1EB8A6928, &qword_1B4D20480);
      sub_1B4975024(v74, &qword_1EB8A6928, &qword_1B4D20480);
      v47(v69, v9);
      v22 = v64;
      sub_1B4975024(v64, &qword_1EB8A8370, &unk_1B4D21F00);
      v36 = v63;
    }

    v33 &= v33 - 1;
    v56(v36, 0, 1, v68);
    result = sub_1B498B270(v36, v22, &qword_1EB8A8370, &unk_1B4D21F00);
    v14 = v69;
    v30 = v55;
  }

  while (1)
  {
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v38 >= v60)
    {
      sub_1B4975024(v53, &qword_1EB8A8370, &unk_1B4D21F00);

      sub_1B498B270(v22, v52, &qword_1EB8A8370, &unk_1B4D21F00);
    }

    v33 = *(v30 + 8 * v38);
    ++v35;
    if (v33)
    {
      v37 = v74;
      v35 = v38;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4B15CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v70 = a2;
  v62 = sub_1B4D1777C();
  v68 = *(v62 - 8);
  v2 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v63 = v56 - v5;
  v67 = sub_1B4D175FC();
  v64 = *(v67 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v69 = *(v9 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v56 - v23;
  v25 = v71;
  result = sub_1B4B152A0(v16);
  if (v25)
  {
    return result;
  }

  v27 = v70;
  v60 = v12;
  v61 = v9;
  v58 = v21;
  v59 = v24;
  v57 = v8;
  v71 = 0;
  v28 = v17;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1B4975024(v16, &qword_1EB8A8370, &unk_1B4D21F00);
    return (*(v18 + 56))(v27, 1, 1, v17);
  }

  sub_1B498B270(v16, v59, &qword_1EB8A6928, &qword_1B4D20480);
  type metadata accessor for UnitCount();
  v29 = [swift_getObjCClassFromMetadata() baseUnit];
  v30 = v60;
  sub_1B4D1741C();
  v31 = *(v69 + 16);
  v32 = v58;
  v33 = v61;
  v31(v58, v30, v61);
  v31((v32 + v17[8]), v30, v33);
  v31((v32 + v17[9]), v30, v33);
  v31((v32 + v17[10]), v30, v33);
  v31((v32 + v17[11]), v30, v33);
  *(v32 + v17[7]) = 1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v34 = sub_1B4D1796C();
  v56[1] = __swift_project_value_buffer(v34, qword_1EDC3CE48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v35 = sub_1B4D1794C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B4D1A800;
  (*(v36 + 104))(v39 + v38, *MEMORY[0x1E6969A10], v35);
  sub_1B49B56B4(v39);
  swift_setDeallocating();
  (*(v36 + 8))(v39 + v38, v35);
  swift_deallocClassInstance();
  v40 = v63;
  sub_1B4D174DC();
  v41 = v65;
  sub_1B4D174BC();
  v42 = v57;
  sub_1B4D1787C();

  v43 = *(v68 + 8);
  v44 = v62;
  v43(v41, v62);
  v43(v40, v44);
  v45 = sub_1B4D1754C();
  LOBYTE(v44) = v46;
  result = (*(v64 + 8))(v42, v67);
  v47 = 0;
  if (v44)
  {
    goto LABEL_11;
  }

  v48 = v71;
  v49 = v69;
  v50 = v60;
  v51 = v61;
  if (v45)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_11:
      v48 = v71;
      v49 = v69;
      v50 = v60;
      v51 = v61;
    }
  }

  v52 = v59;
  v53 = *&v59[v28[7]];
  if (__OFSUB__(v47, v53))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v47 - v53 < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  v56[-2] = v32;
  sub_1B4983A34(v52, sub_1B4B1762C, 0, v54, v55);
  (*(v49 + 8))(v50, v51);
  sub_1B4975024(v52, &qword_1EB8A6928, &qword_1B4D20480);
  if (!v48)
  {
    (*(v18 + 56))(v70, 0, 1, v28);
  }

  return sub_1B4975024(v32, &qword_1EB8A6928, &qword_1B4D20480);
}

uint64_t sub_1B4B16430(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000002DLL;
  }

  else
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v3)
  {
    v5 = "elevation_milestone>.";
  }

  else
  {
    v5 = "lastFourWeeksWorkoutProperties";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000002DLL;
  }

  else
  {
    v7 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v8 = "lastFourWeeksWorkoutProperties";
  }

  else
  {
    v8 = "elevation_milestone>.";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4B164DC()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1655C()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4B165C8()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B16644@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

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

void sub_1B4B166A4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000002DLL;
  }

  else
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v1)
  {
    v3 = "lastFourWeeksWorkoutProperties";
  }

  else
  {
    v3 = "elevation_milestone>.";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_1B4B166E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49AA274;

  return sub_1B4B168D8(a1, a3);
}

unint64_t sub_1B4B167A8(uint64_t a1)
{
  *(a1 + 8) = sub_1B4B167D8();
  result = sub_1B4B1682C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4B167D8()
{
  result = qword_1EB8AA578;
  if (!qword_1EB8AA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA578);
  }

  return result;
}

unint64_t sub_1B4B1682C()
{
  result = qword_1EB8AA580;
  if (!qword_1EB8AA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA580);
  }

  return result;
}

unint64_t sub_1B4B16884()
{
  result = qword_1EB8AA588;
  if (!qword_1EB8AA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA588);
  }

  return result;
}

uint64_t sub_1B4B168D8(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79A8, &unk_1B4D1F310) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  v2[26] = v8;
  v9 = *(v8 - 8);
  v2[27] = v9;
  v10 = *(v9 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v11 = type metadata accessor for DateRangeDescriptor();
  v2[30] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v14 = sub_1B4D174EC();
  v2[33] = v14;
  v15 = *(v14 - 8);
  v2[34] = v15;
  v16 = *(v15 + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B16B70, 0, 0);
}

uint64_t sub_1B4B16B70()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 136);
  v5 = type metadata accessor for WorkoutState();
  v6 = *(v5 + 36);
  v7 = sub_1B4D1777C();
  (*(*(v7 - 8) + 16))(v2, v4 + v6, v7);
  swift_storeEnumTagMultiPayload();
  DateRangeDescriptor.dateInterval()(v1);
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  v10 = *(v0 + 256);
  sub_1B49CA284(*(v0 + 248));
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v0 + 256);
    v12 = &qword_1EB8A7728;
    v13 = &qword_1B4D1E9D0;
LABEL_3:
    sub_1B4975024(v11, v12, v13);
    goto LABEL_9;
  }

  v14 = *(v0 + 128);
  (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  *(v0 + 112) = &type metadata for ConsistentWorkoutTrendFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA590, &unk_1B4D2F358);
  v91 = sub_1B4D181CC();
  v93 = v17;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ELL, 0x80000001B4D4B380);

  (*(v16 + 8))(v91, v93, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v15, v16);

  v18 = *(v0 + 80);
  if (!v18)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    goto LABEL_9;
  }

  v19 = *(v0 + 72);
  v86 = *(v0 + 64);
  v21 = v14[3];
  v20 = v14[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 128), v21);
  *(v0 + 120) = &type metadata for ConsistentWorkoutTrendFactGenerator.QueryIdentifier;
  v92 = sub_1B4D181CC();
  v94 = v22;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000002DLL, 0x80000001B4D4B3A0);

  (*(v20 + 8))(v92, v94, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v21, v20);

  v23 = *(v0 + 104);
  if (!v23)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    goto LABEL_9;
  }

  v24 = *(v0 + 88);
  v25 = *(v0 + 96);
  v26 = *(v0 + 200);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  sub_1B4CE748C((v0 + 16), v18, v26);
  v39 = *(v0 + 208);
  v40 = *(v0 + 216);
  v41 = *(v0 + 200);

  v42 = *(v40 + 48);
  v43 = v42(v41, 1, v39);
  v44 = *(v0 + 280);
  v45 = *(v0 + 200);
  if (v43 == 1)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    v12 = &qword_1EB8A79A8;
    v13 = &unk_1B4D1F310;
LABEL_15:
    v11 = v45;
    goto LABEL_3;
  }

  v84 = v42;
  v46 = *(v0 + 152);
  sub_1B498B270(v45, *(v0 + 232), &qword_1EB8A79B0, &qword_1B4D20FC0);
  sub_1B4B15CE0(v44, v46);
  v45 = *(v0 + 152);
  v47 = *(*(v0 + 168) + 48);
  if (v47(v45, 1, *(v0 + 160)) == 1)
  {
    v49 = *(v0 + 272);
    v48 = *(v0 + 280);
    v50 = *(v0 + 264);
    v51 = *(v0 + 232);

    sub_1B4975024(v51, &qword_1EB8A79B0, &qword_1B4D20FC0);
    (*(v49 + 8))(v48, v50);
LABEL_18:
    v12 = &qword_1EB8A8370;
    v13 = &unk_1B4D21F00;
    goto LABEL_15;
  }

  v52 = *(v0 + 192);
  sub_1B498B270(v45, *(v0 + 184), &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4CE748C((v0 + 16), v23, v52);
  v53 = *(v0 + 208);
  v54 = *(v0 + 192);

  v55 = v84(v54, 1, v53);
  v56 = *(v0 + 280);
  if (v55 == 1)
  {
    v57 = *(v0 + 264);
    v58 = *(v0 + 272);
    v59 = *(v0 + 232);
    v60 = *(v0 + 192);
    sub_1B4975024(*(v0 + 184), &qword_1EB8A6928, &qword_1B4D20480);
    sub_1B4975024(v59, &qword_1EB8A79B0, &qword_1B4D20FC0);
    (*(v58 + 8))(v56, v57);
    v12 = &qword_1EB8A79A8;
    v13 = &unk_1B4D1F310;
    v11 = v60;
    goto LABEL_3;
  }

  v61 = *(v0 + 144);
  sub_1B498B270(*(v0 + 192), *(v0 + 224), &qword_1EB8A79B0, &qword_1B4D20FC0);
  sub_1B4B15CE0(v56, v61);
  v62 = *(v0 + 160);
  v45 = *(v0 + 144);
  if (v47(v45, 1, v62) == 1)
  {
    v64 = *(v0 + 272);
    v63 = *(v0 + 280);
    v65 = *(v0 + 264);
    v66 = *(v0 + 232);
    v67 = *(v0 + 184);
    sub_1B4975024(*(v0 + 224), &qword_1EB8A79B0, &qword_1B4D20FC0);
    sub_1B4975024(v67, &qword_1EB8A6928, &qword_1B4D20480);
    sub_1B4975024(v66, &qword_1EB8A79B0, &qword_1B4D20FC0);
    (*(v64 + 8))(v63, v65);
    goto LABEL_18;
  }

  v68 = *(v0 + 184);
  sub_1B498B270(v45, *(v0 + 176), &qword_1EB8A6928, &qword_1B4D20480);
  v69 = *(v62 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  result = sub_1B4D1742C();
  if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v70 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v90 = v70;
  if (v70 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v71 = *(v0 + 176) + *(v62 + 32);
  result = sub_1B4D1742C();
  if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v72 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v72 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v73 = v72;
  v74 = *(v0 + 272);
  v75 = *(v0 + 264);
  v85 = v75;
  v88 = *(v0 + 280);
  v77 = *(v0 + 224);
  v76 = *(v0 + 232);
  v79 = *(v0 + 176);
  v78 = *(v0 + 184);
  if (v90 > 2 || v73 >= 2)
  {
    v80 = *(v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA598, &unk_1B4D2F368);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1B4D1A800;
    v82 = *(v80 + *(v5 + 24));
    *(v81 + 32) = v82;
    *(v81 + 40) = v90;
    v89 = v81;
    *(v81 + 48) = v73;
    v83 = v82;
    sub_1B4975024(v79, &qword_1EB8A6928, &qword_1B4D20480);
    sub_1B4975024(v77, &qword_1EB8A79B0, &qword_1B4D20FC0);
    sub_1B4975024(v78, &qword_1EB8A6928, &qword_1B4D20480);
    sub_1B4975024(v76, &qword_1EB8A79B0, &qword_1B4D20FC0);
    (*(v74 + 8))(v88, v85);
    goto LABEL_10;
  }

  sub_1B4975024(*(v0 + 176), &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4975024(v77, &qword_1EB8A79B0, &qword_1B4D20FC0);
  sub_1B4975024(v78, &qword_1EB8A6928, &qword_1B4D20480);
  sub_1B4975024(v76, &qword_1EB8A79B0, &qword_1B4D20FC0);
  (*(v74 + 8))(v88, v85);
LABEL_9:
  v89 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v27 = *(v0 + 280);
  v29 = *(v0 + 248);
  v28 = *(v0 + 256);
  v31 = *(v0 + 224);
  v30 = *(v0 + 232);
  v33 = *(v0 + 192);
  v32 = *(v0 + 200);
  v35 = *(v0 + 176);
  v34 = *(v0 + 184);
  v36 = *(v0 + 152);
  v87 = *(v0 + 144);

  v37 = *(v0 + 8);

  return v37(v89);
}

uint64_t sub_1B4B17648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8370, &unk_1B4D21F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4B176B8(uint64_t a1)
{
  v27 = a1;
  v2 = type metadata accessor for DateRangeDescriptor();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5A0, &qword_1B4D2F378);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5A8, &unk_1B4D2F380);
  v6 = *(v5 - 8);
  v29 = *(v6 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v33 = v8;
  *(v8 + 16) = xmmword_1B4D1AA70;
  v9 = v8 + v7;
  v10 = *(v5 + 48);
  v30 = v5;
  v11 = v8 + v7 + v10;
  *(v8 + v7) = 0;
  v31 = type metadata accessor for WorkoutState();
  v12 = *(v31 + 36);
  v13 = sub_1B4D1777C();
  v14 = *(*(v13 - 8) + 16);
  v14(v11, a1 + v12, v13);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for WorkoutPropertiesQuery();
  v16 = (v11 + v15[5]);
  v17 = MEMORY[0x1E69E7CC0];
  *v16 = MEMORY[0x1E69E7CC0];
  v16[1] = v17;
  v16[2] = v17;
  v16[3] = v17;
  v16[4] = v17;
  v16[5] = v17;
  *(v11 + v15[6]) = v17;
  *(v11 + v15[7]) = &unk_1F2CB97E0;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v18 = v9 + v29 + *(v5 + 48);
  *(v9 + v29) = 1;
  v19 = v27;
  v20 = v27 + v12;
  v21 = v32;
  v14(v32, v20, v13);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B4D1A800;
  *(v22 + 32) = [*(v19 + *(v31 + 24)) effectiveTypeIdentifier];
  sub_1B4993450(v21, v18);
  v23 = (v18 + v15[5]);
  *v23 = v17;
  v23[1] = v17;
  v23[2] = v17;
  v23[3] = v22;
  v23[4] = v17;
  v23[5] = v17;
  *(v18 + v15[6]) = v17;
  *(v18 + v15[7]) = &unk_1F2CB9808;
  swift_storeEnumTagMultiPayload();
  v24 = sub_1B4C975B8(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v24;
}

unint64_t sub_1B4B17A04()
{
  result = qword_1EB8AA5B0;
  if (!qword_1EB8AA5B0)
  {
    type metadata accessor for RingStateFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA5B0);
  }

  return result;
}

unint64_t sub_1B4B17A60()
{
  result = qword_1EB8AA5B8;
  if (!qword_1EB8AA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA5B8);
  }

  return result;
}

uint64_t sub_1B4B17AB4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v56 - v14;
  v65 = type metadata accessor for HKActivitySummaryRepresentable();
  v15 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v56 - v20;
  v22 = type metadata accessor for RingProgressType();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v64 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v56 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v56 - v30;
  LOBYTE(a1) = *a1;
  v66 = a2;
  sub_1B4B191F4(a2, v17, type metadata accessor for HKActivitySummaryRepresentable);
  v68 = a1;
  sub_1B4B05EF8(v17, &v68, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1B4975024(v21, &qword_1EB8AA5C0, &unk_1B4D39040);
    v32 = type metadata accessor for RingStateFact();
    return (*(*(v32 - 8) + 56))(v67, 1, 1, v32);
  }

  else
  {
    sub_1B4B1925C(v21, v31, type metadata accessor for RingProgressType);
    sub_1B4B191F4(v31, v28, type metadata accessor for RingProgressType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
        v36 = v61;
        v37 = v57;
        (*(v61 + 32))(v57, &v28[*(v35 + 64)], v10);
        v38 = [objc_opt_self() minutes];
        v39 = v58;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v41 = v40;
        v42 = *(v36 + 8);
        v42(v39, v10);
        v42(v37, v10);
        v43 = v41 <= 30.0 && v41 >= 10.0;
        v42(&v28[*(v35 + 48)], v10);
        v42(v28, v10);
      }

      else
      {
        sub_1B4B192C4(v28, type metadata accessor for RingProgressType);
        v43 = 0;
      }

      v47 = v67;
    }

    else
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v45 = v62;
      v44 = v63;
      v46 = v59;
      (*(v62 + 32))(v59, &v28[*(v61 + 64)], v63);
      v47 = v67;
      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v48 = v60;
      sub_1B4D1745C();
      sub_1B4D1742C();
      v50 = v49;
      v51 = *(v45 + 8);
      v51(v48, v44);
      v51(v46, v44);
      v43 = v50 <= 100.0 && v50 >= 20.0;
      v51(&v28[*(v61 + 48)], v44);
      v51(v28, v44);
    }

    v53 = v65;
    v52 = v66;
    v54 = v64;
    sub_1B4B1925C(v31, v64, type metadata accessor for RingProgressType);
    LOBYTE(v52) = *(v52 + *(v53 + 76));
    sub_1B4B1925C(v54, v47, type metadata accessor for RingProgressType);
    v55 = type metadata accessor for RingStateFact();
    *(v47 + *(v55 + 20)) = v52 & 1;
    *(v47 + *(v55 + 24)) = v43;
    return (*(*(v55 - 8) + 56))(v47, 0, 1, v55);
  }
}

unint64_t sub_1B4B181B4(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = MEMORY[0x1E69E7CC0];

    return sub_1B4C96394(v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D0, &qword_1B4D2F400);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D8, &qword_1B4D2F408) - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B4D1A800;
    v10 = *(type metadata accessor for WorkoutState() + 36);
    v11 = sub_1B4D1777C();
    (*(*(v11 - 8) + 16))(v9 + v8, a1 + v10, v11);
    type metadata accessor for FitnessContextQueryDescriptor();
    swift_storeEnumTagMultiPayload();
    v12 = sub_1B4C96394(v9);
    swift_setDeallocating();
    sub_1B4975024(v9 + v8, &qword_1EB8AA5D8, &qword_1B4D2F408);
    swift_deallocClassInstance();
    return v12;
  }
}

uint64_t sub_1B4B1833C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49AA274;

  return sub_1B4B1886C(a1, a3);
}

uint64_t sub_1B4B183FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RingProgressType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B191F4(a2, v6, type metadata accessor for RingProgressType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v17 = *(v45 + 48);
      v18 = *(v45 + 64);
      v19 = &qword_1EB8A6850;
      v20 = &unk_1B4D1BC10;
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v17 = *(v16 + 48);
      v18 = *(v16 + 64);
      v19 = &qword_1EB8A6868;
      v20 = &unk_1B4D1AB80;
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    v47 = *(*(v46 - 8) + 8);
    v47(&v6[v18], v46);
    v47(&v6[v17], v46);
    v47(v6, v46);
    v48 = COERCE_DOUBLE(sub_1B4A612D4()) >= 1.0;
    if (v49)
    {
      return 2;
    }

    else
    {
      return v48;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = COERCE_DOUBLE(sub_1B4A61B14()) >= 1.0;
      if (v22)
      {
        v10 = 2;
      }

      else
      {
        v10 = v21;
      }

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v12 = *(v23 + 48);
      v13 = *(v23 + 64);
      v14 = &qword_1EB8A6850;
      v15 = &unk_1B4D1BC10;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = COERCE_DOUBLE(sub_1B4A61EE8()) >= 1.0;
      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = v8;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v12 = *(v11 + 48);
      v13 = *(v11 + 64);
      v14 = &qword_1EB8A6870;
      v15 = &unk_1B4D1C2C0;
LABEL_14:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
      v25 = *(*(v24 - 8) + 8);
      v25(&v6[v13], v24);
      v25(&v6[v12], v24);
      v25(v6, v24);
      return v10;
    }

    v26 = sub_1B4A612D4();
    if (v27 & 1) != 0 || (v28 = *&v26, v29 = sub_1B4A61B14(), (v30) || (v31 = *&v29, v32 = COERCE_DOUBLE(sub_1B4A61EE8()), (v33))
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
      if (v28 >= 1.0 && v31 >= 1.0)
      {
        v10 = v32 >= 1.0;
      }
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v35 = v34[12];
    v51 = v34[20];
    v52 = v35;
    v36 = v34[24];
    v37 = v34[32];
    v38 = v34[36];
    v39 = v34[44];
    v40 = v34[48];
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v42 = *(*(v41 - 8) + 8);
    v42(&v6[v40], v41);
    v42(&v6[v39], v41);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v44 = *(*(v43 - 8) + 8);
    v44(&v6[v38], v43);
    v44(&v6[v37], v43);
    sub_1B4975024(&v6[v36], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v6[v51], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v6[v52], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v6, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  return v10;
}

uint64_t sub_1B4B1886C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for RingStateFact();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for RingProgressType();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v10 = type metadata accessor for HKActivitySummaryRepresentable();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B18AC8, 0, 0);
}

uint64_t sub_1B4B18AC8()
{
  v70 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[3];
  v4 = type metadata accessor for ActivitySummaryContext();
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v0[2] = &type metadata for RingStateFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67D8, &unk_1B4D1AAF0);
  v66 = sub_1B4D181CC();
  v68 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  (*(v6 + 8))(v66, v68, v4, v4, v5, v6);

  sub_1B4974FBC(v2, v1, &qword_1EB8AA5C8, &qword_1B4D39050);
  v8 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v9 = v0[20];
  v10 = v0[18];
  v11 = v0[13];
  v12 = v0[14];
  if (v8 == 1)
  {
    sub_1B4975024(v0[20], &qword_1EB8AA5C8, &qword_1B4D39050);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  else
  {
    sub_1B4974FBC(v0[20], v0[18], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4B192C4(v9, type metadata accessor for ActivitySummaryContext);
    v13 = *(v12 + 48);
    if (v13(v10, 1, v11) != 1)
    {
      v20 = v0[19];
      v21 = v0[13];
      v22 = v0[14];
      sub_1B4B1925C(v0[18], v20, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v22 + 56))(v20, 0, 1, v21);
      goto LABEL_7;
    }
  }

  v14 = v0[18];
  v15 = v0[19];
  v16 = v0[13];
  v17 = v0[14];
  v18 = v0[4];
  v19 = type metadata accessor for WorkoutState();
  sub_1B4974FBC(v18 + *(v19 + 128), v15, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v13 = *(v17 + 48);
  if (v13(v14, 1, v16) != 1)
  {
    sub_1B4975024(v0[18], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

LABEL_7:
  v23 = v0[17];
  v24 = v0[13];
  sub_1B4974FBC(v0[19], v23, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v25 = v13(v23, 1, v24);
  v26 = v0[17];
  if (v25 == 1)
  {
    sub_1B4975024(v26, &qword_1EB8A6C98, &unk_1B4D2F3F0);
LABEL_11:
    v29 = v0[21];
    sub_1B4975024(v0[19], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4975024(v29, &qword_1EB8AA5C8, &qword_1B4D39050);
    v65 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v27 = v0[16];
  sub_1B4B1925C(v26, v27, type metadata accessor for HKActivitySummaryRepresentable);
  v28 = v0[16];
  if (*(v27 + 25))
  {
    sub_1B4B192C4(v28, type metadata accessor for HKActivitySummaryRepresentable);
    goto LABEL_11;
  }

  v30 = v0[15];
  v31 = v0[9];
  v32 = v0[10];
  v33 = v0[8];
  v67 = MEMORY[0x1E69E7CC0];
  sub_1B4B191F4(v28, v30, type metadata accessor for HKActivitySummaryRepresentable);
  v69[0] = 3;
  sub_1B4B05EF8(v30, v69, v33);
  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {
    sub_1B4975024(v0[8], &qword_1EB8AA5C0, &unk_1B4D39040);
  }

  else
  {
    v34 = v0[16];
    v35 = v0[12];
    sub_1B4B1925C(v0[8], v35, type metadata accessor for RingProgressType);
    v36 = sub_1B4B183FC(v34, v35);
    if (v36 == 2 || (v36 & 1) == 0)
    {
      sub_1B4B192C4(v0[12], type metadata accessor for RingProgressType);
    }

    else
    {
      v37 = v0[16];
      v38 = v0[13];
      v39 = v0[11];
      v40 = v0[7];
      v41 = v0[5];
      sub_1B4B191F4(v0[12], v39, type metadata accessor for RingProgressType);
      LOBYTE(v37) = *(v37 + *(v38 + 76));
      sub_1B4B1925C(v39, v40, type metadata accessor for RingProgressType);
      *(v40 + *(v41 + 20)) = v37 & 1;
      *(v40 + *(v41 + 24)) = 0;
      v42 = sub_1B4A1DA48(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v44 = v42[2];
      v43 = v42[3];
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1B4A1DA48(v43 > 1, v44 + 1, 1, v42);
      }

      v46 = v0[6];
      v45 = v0[7];
      sub_1B4B192C4(v0[12], type metadata accessor for RingProgressType);
      v42[2] = v44 + 1;
      sub_1B4B1925C(v45, v42 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v44, type metadata accessor for RingStateFact);
      v67 = v42;
    }
  }

  v47 = v0[21];
  v48 = v0[19];
  v49 = v0[16];
  v50 = swift_task_alloc();
  *(v50 + 16) = v49;
  v51 = sub_1B4AE0B18(sub_1B4B191D8, v50, &unk_1F2CB8A58);

  sub_1B4997618(v51);
  sub_1B4975024(v48, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  sub_1B4975024(v47, &qword_1EB8AA5C8, &qword_1B4D39050);
  v65 = v67;
  sub_1B4B192C4(v49, type metadata accessor for HKActivitySummaryRepresentable);
LABEL_21:
  v53 = v0[20];
  v52 = v0[21];
  v55 = v0[18];
  v54 = v0[19];
  v57 = v0[16];
  v56 = v0[17];
  v58 = v0[15];
  v60 = v0[11];
  v59 = v0[12];
  v61 = v0[8];
  v64 = v0[7];

  v62 = v0[1];

  return v62(v65);
}

uint64_t sub_1B4B191F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B1925C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B192C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B19334()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

int *ActivitySharingAnniversaryFact.init(friend:weekWorkoutCount:weekRingClosureCount:numberOfYearsActivitySharing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B4B193E4(a1, a5);
  result = type metadata accessor for ActivitySharingAnniversaryFact();
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_1B4B193E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriend();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ActivitySharingAnniversaryFact()
{
  result = qword_1EB8AA608;
  if (!qword_1EB8AA608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4B19498()
{
  v1 = 0x646E65697266;
  v2 = 0xD00000000000001CLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1B4B1951C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B19EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B19544(uint64_t a1)
{
  v2 = sub_1B4B19BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B19580(uint64_t a1)
{
  v2 = sub_1B4B19BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySharingAnniversaryFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5E0, &qword_1B4D2F470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B19BAC();
  sub_1B4D18EFC();
  v16[15] = 0;
  type metadata accessor for ActivitySharingFriend();
  sub_1B4B19C00(&qword_1EB8AA5F0);
  sub_1B4D18D0C();
  if (!v2)
  {
    v11 = type metadata accessor for ActivitySharingAnniversaryFact();
    v12 = *(v3 + v11[5]);
    v16[14] = 1;
    sub_1B4D18CEC();
    v13 = *(v3 + v11[6]);
    v16[13] = 2;
    sub_1B4D18CEC();
    v14 = *(v3 + v11[7]);
    v16[12] = 3;
    sub_1B4D18CEC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ActivitySharingAnniversaryFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for ActivitySharingFriend();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5F8, &qword_1B4D2F478);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ActivitySharingAnniversaryFact();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B4B19BAC();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  v18 = v24;
  v19 = v15;
  v30 = 0;
  sub_1B4B19C00(&qword_1EB8AA600);
  v20 = v25;
  sub_1B4D18C0C();
  sub_1B4B193E4(v7, v19);
  v29 = 1;
  *(v19 + v12[5]) = sub_1B4D18BEC();
  v28 = 2;
  *(v19 + v12[6]) = sub_1B4D18BEC();
  v27 = 3;
  v22 = sub_1B4D18BEC();
  (*(v18 + 8))(v11, v20);
  *(v19 + v12[7]) = v22;
  sub_1B4B19C44(v19, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return sub_1B4B19CA8(v19, type metadata accessor for ActivitySharingAnniversaryFact);
}

BOOL _s19FitnessIntelligence30ActivitySharingAnniversaryFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static ActivitySharingFriend.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for ActivitySharingAnniversaryFact(), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B4B19BAC()
{
  result = qword_1EB8AA5E8;
  if (!qword_1EB8AA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA5E8);
  }

  return result;
}

uint64_t sub_1B4B19C00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActivitySharingFriend();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B19C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingAnniversaryFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B19CA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B19D30()
{
  result = type metadata accessor for ActivitySharingFriend();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4B19DBC()
{
  result = qword_1EB8AA618;
  if (!qword_1EB8AA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA618);
  }

  return result;
}

unint64_t sub_1B4B19E14()
{
  result = qword_1EB8AA620;
  if (!qword_1EB8AA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA620);
  }

  return result;
}

unint64_t sub_1B4B19E6C()
{
  result = qword_1EB8AA628;
  if (!qword_1EB8AA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA628);
  }

  return result;
}

uint64_t sub_1B4B19EC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E65697266 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D61920 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D61940 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B4D61960 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t static RingGoalMilestonePropertyGenerator.from(_:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  sub_1B49A8448(a1, &v16);
  if (v17)
  {
    sub_1B49A24C4(&v16, v18);
    if ((v4 - 19) < 4u)
    {
      __swift_project_boxed_opaque_existential_1(v18, v19);
      LOBYTE(v16) = v4 - 19;
      v5.value = RingsRepresentable.hasClosedRing(for:)(&v16).value;
      if (v5.value != 2)
      {
        value = v5.value;
        v7 = v19;
        v8 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        if (((*(v8 + 24))(v7, v8) & 1) == 0 && value)
        {
          v10 = v19;
          v9 = v20;
          __swift_project_boxed_opaque_existential_1(v18, v19);
          (*(*(v9 + 8) + 8))(&v16, v10);
          v11 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C20, &qword_1B4D200C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1B4D1A800;
          *(inited + 32) = 1;
          *(inited + 40) = v11;
          v13 = sub_1B4C9864C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C18, &qword_1B4D2F640);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1B4D1A800;
          *(v14 + 32) = v11;
          *a3 = 1;
          a3[1] = v14;
          a3[2] = v13;
          return __swift_destroy_boxed_opaque_existential_1Tm(v18);
        }
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    result = sub_1B49A84B8(&v16);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

unint64_t sub_1B4B1A1E0(uint64_t a1)
{
  result = sub_1B4B1A208();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B1A208()
{
  result = qword_1EDC37DF0[0];
  if (!qword_1EDC37DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC37DF0);
  }

  return result;
}

unint64_t sub_1B4B1A260()
{
  result = qword_1EDC389B8;
  if (!qword_1EDC389B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC389B8);
  }

  return result;
}

uint64_t sub_1B4B1A328(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v7 = sub_1B4D175FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31[-v13];
  v15 = *a2;
  v33 = *a1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v16 = sub_1B4D1796C();
  __swift_project_value_buffer(v16, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v14);
  if (!v3)
  {
    v33 = v15;
    CacheIndex.dateComponents(for:)(v11);
    v19 = sub_1B4D1759C();
    v21 = v20;
    v22 = sub_1B4D1759C();
    if (v21)
    {
      if ((v23 & 1) == 0)
      {
LABEL_14:
        v30 = *(v8 + 8);
        v30(v11, v7);
        v30(v14, v7);
        v17 = 0;
        return v17 & 1;
      }
    }

    else if ((v23 & 1) != 0 || v19 != v22)
    {
      goto LABEL_14;
    }

    v24 = (a3)(v22);
    v32 = v25;
    v26 = a3();
    v28 = v27;
    v29 = *(v8 + 8);
    v29(v11, v7);
    v29(v14, v7);
    v17 = (v24 == v26) & ~v28;
    if (v32)
    {
      v17 = v28;
    }
  }

  return v17 & 1;
}

uint64_t static Calendar.hkGregorian.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4D1796C();
  v3 = __swift_project_value_buffer(v2, qword_1EDC3CE48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B4B1A638()
{
  v0 = sub_1B4D1796C();
  __swift_allocate_value_buffer(v0, qword_1EDC3CE48);
  __swift_project_value_buffer(v0, qword_1EDC3CE48);
  v1 = [objc_opt_self() hk_gregorianCalendar];
  sub_1B4D178DC();

  return sub_1B4D1784C();
}

uint64_t Calendar.isSameYear(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1B4D175FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-v11];
  v13 = *a2;
  v25 = *a1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4D1796C();
  __swift_project_value_buffer(v14, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v12);
  if (!v2)
  {
    v25 = v13;
    CacheIndex.dateComponents(for:)(v9);
    v17 = sub_1B4D1759C();
    v24 = v18;
    v19 = sub_1B4D1759C();
    v21 = v20;
    v22 = *(v6 + 8);
    v22(v9, v5);
    v22(v12, v5);
    v15 = (v17 == v19) & ~v21;
    if (v24)
    {
      v15 = v21;
    }
  }

  return v15 & 1;
}

uint64_t Calendar.isSameSemester(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1B4D175FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = *a2;
  v32 = *a1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4D1796C();
  __swift_project_value_buffer(v14, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v12);
  if (!v2)
  {
    v32 = v13;
    CacheIndex.dateComponents(for:)(v9);
    v17 = sub_1B4D175AC();
    if (v18 & 1) != 0 || (v19 = v17, v20 = sub_1B4D175AC(), (v21))
    {
      v22 = *(v6 + 8);
      v22(v9, v5);
      v22(v12, v5);
      v15 = 0;
      return v15 & 1;
    }

    v31 = v20;
    v30 = sub_1B4D1759C();
    v24 = v23;
    v29 = sub_1B4D1759C();
    v26 = v25;
    v27 = *(v6 + 8);
    v27(v9, v5);
    v27(v12, v5);
    if (v24)
    {
      if ((v26 & 1) == 0)
      {
        v15 = 0;
        return v15 & 1;
      }

LABEL_14:
      v15 = (v19 > 6) ^ (v31 < 7);
      return v15 & 1;
    }

    v15 = 0;
    if ((v26 & 1) == 0 && v30 == v29)
    {
      goto LABEL_14;
    }
  }

  return v15 & 1;
}

uint64_t Calendar.isSameDay(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1B4D175FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34[-v11];
  v13 = *a2;
  v36 = *a1;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4D1796C();
  __swift_project_value_buffer(v14, qword_1EDC3CE48);
  CacheIndex.dateComponents(for:)(v12);
  if (!v2)
  {
    v36 = v13;
    CacheIndex.dateComponents(for:)(v9);
    v17 = sub_1B4D1759C();
    v19 = v18;
    v20 = sub_1B4D1759C();
    if (v19)
    {
      if ((v21 & 1) == 0)
      {
LABEL_19:
        v33 = *(v6 + 8);
        v33(v9, v5);
        v33(v12, v5);
        v15 = 0;
        return v15 & 1;
      }
    }

    else if ((v21 & 1) != 0 || v17 != v20)
    {
      goto LABEL_19;
    }

    v22 = sub_1B4D175AC();
    v24 = v23;
    v25 = sub_1B4D175AC();
    if (v24)
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((v26 & 1) != 0 || v22 != v25)
    {
      goto LABEL_19;
    }

    v27 = sub_1B4D1757C();
    v35 = v28;
    v29 = sub_1B4D1757C();
    v31 = v30;
    v32 = *(v6 + 8);
    v32(v9, v5);
    v32(v12, v5);
    v15 = (v27 == v29) & ~v31;
    if (v35)
    {
      v15 = v31;
    }
  }

  return v15 & 1;
}

double InferenceRequest.init(_:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v100 = a2;
  v3 = sub_1B4D177CC();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v97 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v103 = *(v96 - 8);
  v6 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v95 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v94 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90 - v12;
  v102 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  *&v101 = *(v102 - 8);
  v14 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v90 - v22;
  v24 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v25 = v24[5];
  v107 = a1;
  v26 = (a1 + v25);
  v27 = v26[1];
  if (v27)
  {
    v28 = *v26;
  }

  else
  {
    v28 = 0;
  }

  if (v27)
  {
    v29 = v26[1];
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  v30 = sub_1B4D18B1C();

  if (v30)
  {
    sub_1B4B1B5D0();
    swift_allocError();
    *v31 = v28;
    v31[1] = v29;
    swift_willThrow();

    sub_1B4B1B624(v107, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    return result;
  }

  v91 = v20;
  *&v92 = v16;
  v93 = v13;
  v33 = v24[7];
  v34 = v107;
  sub_1B4974FBC(v107 + v33, v23, &qword_1EB8A8778, &qword_1B4D22438);
  v35 = v102;
  *&v101 = *(v101 + 48);
  v36 = (v101)(v23, 1, v102);
  sub_1B4975024(v23, &qword_1EB8A8778, &qword_1B4D22438);
  if (v36 == 1)
  {
    LODWORD(v102) = 0;
    v101 = xmmword_1B4D1A640;
    v92 = 0u;
    v37 = v34;
    v38 = v103;
    v39 = v93;
  }

  else
  {
    v40 = v34 + v33;
    v41 = v91;
    sub_1B4974FBC(v40, v91, &qword_1EB8A8778, &qword_1B4D22438);
    v42 = (v101)(v41, 1, v35);
    v37 = v34;
    v38 = v103;
    if (v42 == 1)
    {
      v43 = v92;
      *v92 = 0;
      v44 = v43 + *(v35 + 20);
      sub_1B4D17BBC();
      v45 = *(v35 + 24);
      v46 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
      (*(*(v46 - 8) + 56))(v43 + v45, 1, 1, v46);
      v47 = (v101)(v41, 1, v35);
      v39 = v93;
      if (v47 != 1)
      {
        sub_1B4975024(v41, &qword_1EB8A8778, &qword_1B4D22438);
      }
    }

    else
    {
      v43 = v92;
      sub_1B4B1B684(v41, v92, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      v39 = v93;
    }

    v48 = v104;
    AudioSynthesisSettings.init(_:)(v43, v105);
    if (v48)
    {
      sub_1B4B1B624(v34, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
      return result;
    }

    v104 = 0;
    v92 = v105[1];
    v101 = v105[0];
    LODWORD(v102) = v106;
  }

  v49 = v24;
  v50 = v24[9];
  sub_1B4974FBC(v37 + v50, v39, &qword_1EB8A8780, &qword_1B4D22440);
  v51 = *(v38 + 48);
  v52 = v96;
  v53 = v51(v39, 1, v96);
  v54 = v39;
  v55 = v53;
  sub_1B4975024(v54, &qword_1EB8A8780, &qword_1B4D22440);
  if (v55 == 1)
  {
    v107 = 0;
    v103 = 0;
    v95 = 0;
    v96 = 0;
    v93 = 0;
    v94 = 0;
    v57 = v98;
    v56 = v99;
    v58 = v97;
    v59 = v24;
  }

  else
  {
    v60 = v37 + v50;
    v61 = v94;
    sub_1B4974FBC(v60, v94, &qword_1EB8A8780, &qword_1B4D22440);
    v62 = v51(v61, 1, v52);
    v57 = v98;
    v56 = v99;
    if (v62 == 1)
    {
      v63 = v95;
      *v95 = 0;
      v63[1] = 0xE000000000000000;
      v63[2] = 0;
      v63[3] = 0xE000000000000000;
      v64 = v63 + *(v52 + 24);
      sub_1B4D17BBC();
      v65 = (v63 + *(v52 + 28));
      *v65 = 0;
      v65[1] = 0;
      v66 = v51(v61, 1, v52) == 1;
      v58 = v97;
      v67 = v61;
      v59 = v49;
      if (!v66)
      {
        sub_1B4975024(v67, &qword_1EB8A8780, &qword_1B4D22440);
      }
    }

    else
    {
      v63 = v95;
      sub_1B4B1B684(v61, v95, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      v58 = v97;
      v59 = v49;
    }

    v68 = v63[1];
    v107 = *v63;
    v69 = (v63 + *(v52 + 28));
    v70 = *v69;
    v95 = v69[1];
    v96 = v70;
    v71 = v63[3];
    v94 = v63[2];

    v93 = v71;

    v103 = v68;

    sub_1B4B1B624(v63, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  }

  v72 = (v37 + v59[10]);
  if (v72[1])
  {
    v73 = *v72;
    v74 = v72[1];
  }

  else
  {
    sub_1B4D177BC();
    v73 = sub_1B4D1779C();
    v74 = v75;
    (*(v57 + 8))(v58, v56);
  }

  v76 = *(v37 + v59[11]);
  v77 = v37;
  v78 = (v37 + v59[6]);
  if (v78[1])
  {
    v79 = *v78;
    v80 = v78[1];
  }

  else
  {
    v79 = 0;
    v80 = 0xE000000000000000;
  }

  v81 = (v77 + v59[8]);
  v82 = *v81;
  v83 = v81[1];
  v84 = v76 & 1;

  sub_1B4B1B624(v77, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  v85 = v100;
  *v100 = v79;
  v85[1] = v80;
  v86 = v92;
  result = *&v101;
  *(v85 + 1) = v101;
  *(v85 + 2) = v86;
  *(v85 + 48) = v102;
  v85[7] = v82;
  v85[8] = v83;
  v87 = v103;
  v85[9] = v107;
  v85[10] = v87;
  v88 = v95;
  v85[11] = v96;
  v85[12] = v88;
  v89 = v93;
  v85[13] = v94;
  v85[14] = v89;
  v85[15] = v73;
  v85[16] = v74;
  *(v85 + 136) = v84;
  return result;
}

unint64_t sub_1B4B1B5D0()
{
  result = qword_1EB8AA630;
  if (!qword_1EB8AA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA630);
  }

  return result;
}

uint64_t sub_1B4B1B624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B1B684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t InferenceRequest.protobuf()()
{
  v8 = v0[6];
  *v9 = v0[7];
  *&v9[9] = *(v0 + 121);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4B1BFC0(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B1B7BC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v49 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v41 = *(v49 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v13 = a1 + v12[5];
  v14 = *(v13 + 8);

  *v13 = xmmword_1B4D2F6B0;
  v15 = *a2;
  v16 = a2[1];
  v17 = (a1 + v12[6]);
  v18 = v17[1];

  *v17 = v15;
  v17[1] = v16;
  v20 = a2[3];
  if (v20 != 1)
  {
    v21 = *(a2 + 48);
    v46[0] = a2[2];
    v46[1] = v20;
    v47 = *(a2 + 2);
    v48 = v21;
    MEMORY[0x1EEE9AC00](v19);
    *(&v39 - 2) = v46;
    sub_1B4B1BFC0(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
    result = sub_1B4D17DAC();
    if (v3)
    {
      return result;
    }

    v23 = v12[7];
    sub_1B4975024(a1 + v23, &qword_1EB8A8778, &qword_1B4D22438);
    sub_1B4B1B684(v11, a1 + v23, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
    v19 = (*(v39 + 56))(a1 + v23, 0, 1, v8);
  }

  v24 = a2[8];
  if (v24)
  {
    v25 = a2[7];
    v26 = (a1 + v12[8]);
    v27 = v26[1];
    v28 = a2[8];

    *v26 = v25;
    v26[1] = v24;
  }

  v29 = a2[10];
  if (v29)
  {
    v31 = a2[13];
    v30 = a2[14];
    v42[0] = a2[9];
    v42[1] = v29;
    v43 = *(a2 + 11);
    v44 = v31;
    v45 = v30;
    MEMORY[0x1EEE9AC00](v19);
    *(&v39 - 2) = v42;
    sub_1B4B1BFC0(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
    v32 = v40;
    v33 = v49;
    sub_1B4D17DAC();
    v34 = v12[9];
    sub_1B4975024(a1 + v34, &qword_1EB8A8780, &qword_1B4D22440);
    sub_1B4B1B684(v32, a1 + v34, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
    (*(v41 + 56))(a1 + v34, 0, 1, v33);
  }

  v36 = a2[15];
  v35 = a2[16];
  v37 = (a1 + v12[10]);
  v38 = v37[1];

  *v37 = v36;
  v37[1] = v35;
  *(a1 + v12[11]) = *(a2 + 136);
  return result;
}

_OWORD *sub_1B4B1BC04(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[7];
  v15[6] = v1[6];
  v16[0] = v8;
  *(v16 + 9) = *(v1 + 121);
  v9 = v1[3];
  v15[2] = v1[2];
  v15[3] = v9;
  v10 = v1[5];
  v15[4] = v1[4];
  v15[5] = v10;
  v11 = v1[1];
  v15[0] = *v1;
  v15[1] = v11;
  v12 = sub_1B4B1BF50();
  v13 = v15;
  (*(v12 + 32))(a1, v12);
  if (!v2)
  {
    sub_1B4B1BFC0(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    v13 = sub_1B4D17D6C();
    sub_1B4B1B624(v7, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  }

  return v13;
}

__n128 sub_1B4B1BD6C@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B23028(a1, a2, v9);
  if (!v3)
  {
    v6 = v10[0];
    *(a3 + 96) = v9[6];
    *(a3 + 112) = v6;
    *(a3 + 121) = *(v10 + 9);
    v7 = v9[3];
    *(a3 + 32) = v9[2];
    *(a3 + 48) = v7;
    v8 = v9[5];
    *(a3 + 64) = v9[4];
    *(a3 + 80) = v8;
    result = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_1B4B1BE58()
{
  v8 = v0[6];
  *v9 = v0[7];
  *&v9[9] = *(v0 + 121);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4B1BFC0(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4B1BF50()
{
  result = qword_1EB8AA638;
  if (!qword_1EB8AA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA638);
  }

  return result;
}

uint64_t sub_1B4B1BFC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WorkoutPropertyDimensions.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v5 = (a1 + v4[5]);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v5[1];

    v9._countAndFlagsBits = v7;
    v9._object = v6;
    MonthOfYear.init(rawValue:)(v9);
    v10 = v37;
  }

  else
  {
    v10 = 12;
  }

  v34 = v10;
  v11 = (a1 + v4[6]);
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v14 = v11[1];

    v15._countAndFlagsBits = v13;
    v15._object = v12;
    DayOfWeek.init(rawValue:)(v15);
    v16 = v38;
  }

  else
  {
    v16 = 7;
  }

  v33 = v16;
  v17 = a1 + v4[7];
  if (*(v17 + 8))
  {
    v18 = 0;
    v19 = 1;
  }

  else
  {
    HourOfDay.init(rawValue:)(*v17, &v35);
    v18 = v35;
    v19 = v36;
  }

  v20 = a1 + v4[8];
  v21 = *(v20 + 8);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v20;
  }

  v23 = (a1 + v4[9]);
  v24 = v23[1];
  if (v24)
  {
    v25 = *v23;
    v26 = v23[1];

    v27._countAndFlagsBits = v25;
    v27._object = v24;
    WorkoutLocationType.init(rawValue:)(v27);
    v28 = v39;
  }

  else
  {
    v28 = 5;
  }

  v29 = (a1 + v4[10]);
  v31 = *v29;
  v30 = v29[1];

  result = sub_1B4B1C1C4(a1);
  *a2 = v34;
  *(a2 + 1) = v33;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v22;
  *(a2 + 32) = v21;
  *(a2 + 33) = v28;
  *(a2 + 40) = v31;
  *(a2 + 48) = v30;
  return result;
}

uint64_t sub_1B4B1C1C4(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutPropertyDimensions.protobuf()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  sub_1B4B1C70C(qword_1EDC3B440);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B1C2CC(uint64_t result, uint64_t a2)
{
  v2 = 0xE700000000000000;
  v3 = 0x797261756E616ALL;
  v5 = result;
  switch(*a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7972617572626566;
      goto LABEL_14;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x686372616DLL;
      goto LABEL_14;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x6C69727061;
      goto LABEL_14;
    case 4:
      v2 = 0xE300000000000000;
      v3 = 7954797;
      goto LABEL_14;
    case 5:
      v2 = 0xE400000000000000;
      v3 = 1701737834;
      goto LABEL_14;
    case 6:
      v2 = 0xE400000000000000;
      v3 = 2037151082;
      goto LABEL_14;
    case 7:
      v2 = 0xE600000000000000;
      v3 = 0x747375677561;
      goto LABEL_14;
    case 8:
      v2 = 0xE900000000000072;
      v3 = 0x65626D6574706573;
      goto LABEL_14;
    case 9:
      v3 = 0x7265626F74636FLL;
      goto LABEL_14;
    case 0xA:
      v2 = 0xE800000000000000;
      v6 = 1702260590;
      goto LABEL_6;
    case 0xB:
      v2 = 0xE800000000000000;
      v6 = 1701012836;
LABEL_6:
      v3 = v6 | 0x7265626D00000000;
      goto LABEL_14;
    case 0xC:
      goto LABEL_15;
    default:
LABEL_14:
      v7 = (result + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));
      v8 = v7[1];

      *v7 = v3;
      v7[1] = v2;
LABEL_15:
      v9 = 0x7961646E6F6DLL;
      v10 = *(a2 + 1);
      if (v10 <= 3)
      {
        v11 = 0xE600000000000000;
        v12 = 0xE900000000000079;
        v13 = 0x616473656E646577;
        if (v10 != 2)
        {
          v13 = 0x7961647372756874;
          v12 = 0xE800000000000000;
        }

        if (*(a2 + 1))
        {
          v9 = 0x79616473657574;
          v11 = 0xE700000000000000;
        }

        if (*(a2 + 1) <= 1u)
        {
          v14 = v9;
        }

        else
        {
          v14 = v13;
        }

        if (*(a2 + 1) <= 1u)
        {
          v15 = v11;
        }

        else
        {
          v15 = v12;
        }

LABEL_35:
        v16 = (v5 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));
        v17 = v16[1];

        *v16 = v14;
        v16[1] = v15;
        if ((*(a2 + 16) & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_39;
      }

      if (*(a2 + 1) <= 5u)
      {
        if (v10 == 4)
        {
          v14 = 0x796164697266;
        }

        else
        {
          v14 = 0x7961647275746173;
        }

        if (v10 == 4)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = 0xE800000000000000;
        }

        goto LABEL_35;
      }

      if (v10 == 6)
      {
        v14 = 0x7961646E7573;
        v15 = 0xE600000000000000;
        goto LABEL_35;
      }

      if ((*(a2 + 16) & 1) == 0)
      {
LABEL_36:
        v18 = *(a2 + 8);
        result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
        v19 = v5 + *(result + 28);
        *v19 = v18;
        *(v19 + 8) = 0;
        if (*(a2 + 32))
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

LABEL_39:
      if (*(a2 + 32))
      {
        goto LABEL_42;
      }

LABEL_40:
      v20 = *(a2 + 24);
      if (v20 < 0)
      {
        __break(1u);
        return result;
      }

      result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
      v21 = v5 + *(result + 32);
      *v21 = v20;
      *(v21 + 8) = 0;
LABEL_42:
      v22 = *(a2 + 33);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          v23 = 0xE900000000000072;
          v24 = 0x657461576E65706FLL;
        }

        else
        {
          if (v22 != 4)
          {
            goto LABEL_53;
          }

          v23 = 0xEC0000006C6F6F50;
          v24 = 0x676E696D6D697773;
        }
      }

      else if (*(a2 + 33))
      {
        if (v22 == 1)
        {
          v23 = 0xE600000000000000;
          v24 = 0x726F6F646E69;
        }

        else
        {
          v23 = 0xE700000000000000;
          v24 = 0x726F6F6474756FLL;
        }
      }

      else
      {
        v23 = 0xE700000000000000;
        v24 = 0x6E776F6E6B6E75;
      }

      v25 = (v5 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));
      v26 = v25[1];

      *v25 = v24;
      v25[1] = v23;
LABEL_53:
      v27 = *(a2 + 48);
      if (v27)
      {
        v28 = *(a2 + 40);
        v29 = (v5 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));
        v30 = v29[1];
        sub_1B498B0D4(a2, v31);

        *v29 = v28;
        v29[1] = v27;
      }

      return result;
  }
}

uint64_t sub_1B4B1C70C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4B1C750()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  sub_1B4B1C70C(qword_1EDC3B440);
  return sub_1B4D17DAC();
}

uint64_t WorkoutAlertFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 12;
  if (v2 < 0xC)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutAlertFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000050;
  v2 = *v0;
  if (v2 > 5)
  {
    v6 = 0xD000000000000060;
    v7 = 0xD00000000000005DLL;
    v8 = 0xD00000000000005BLL;
    if (v2 != 10)
    {
      v7 = 0xD00000000000005BLL;
    }

    if (v2 != 9)
    {
      v6 = v7;
    }

    if (v2 != 7)
    {
      v8 = 0xD00000000000005ALL;
    }

    if (v2 != 6)
    {
      v1 = v8;
    }

    if (*v0 <= 8u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD00000000000004FLL;
    if (v2 != 4)
    {
      v3 = 0xD000000000000052;
    }

    if (v2 == 3)
    {
      v3 = 0xD000000000000050;
    }

    v4 = 0xD000000000000038;
    if (v2 == 1)
    {
      v4 = 0xD000000000000039;
    }

    if (!*v0)
    {
      v4 = 0xD00000000000002ELL;
    }

    if (*v0 <= 2u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1B4B1C9E4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = WorkoutAlertFact.TemplateString.rawValue.getter();
  v4 = v3;
  if (v2 == WorkoutAlertFact.TemplateString.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B4D18DCC();
  }

  return v7 & 1;
}

uint64_t sub_1B4B1CA80()
{
  v1 = *v0;
  sub_1B4D18E8C();
  WorkoutAlertFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1CAE8()
{
  v2 = *v0;
  WorkoutAlertFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4B1CB4C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  WorkoutAlertFact.TemplateString.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1CBB0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WorkoutAlertFact.TemplateString.init(rawValue:)(a1);
}

unint64_t sub_1B4B1CBBC@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutAlertFact.TemplateString.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall WorkoutAlertFact.separator()()
{
  v0 = 10;
  v1 = 0xE100000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t WorkoutAlertFact.placeholders()()
{
  v1 = v0[1];
  v13[0] = *v0;
  v13[1] = v1;
  v13[2] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B4D1B2D0;
  v3 = swift_allocObject();
  v4 = v0[1];
  v3[1] = *v0;
  v3[2] = v4;
  v3[3] = v0[2];
  *(v2 + 32) = 0x657474616D726F66;
  *(v2 + 40) = 0xEF65756C61765F64;
  *(v2 + 48) = sub_1B4B1CE94;
  *(v2 + 56) = v3;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v5 = swift_allocObject();
  v6 = v0[1];
  v5[1] = *v0;
  v5[2] = v6;
  v5[3] = v0[2];
  strcpy((v2 + 80), "aggregate_type");
  *(v2 + 95) = -18;
  *(v2 + 96) = sub_1B4B1CE9C;
  *(v2 + 104) = v5;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  v7 = swift_allocObject();
  v8 = v0[1];
  v7[1] = *v0;
  v7[2] = v8;
  v7[3] = v0[2];
  *(v2 + 128) = 0xD000000000000015;
  *(v2 + 136) = 0x80000001B4D61980;
  *(v2 + 144) = sub_1B4B1CF7C;
  *(v2 + 152) = v7;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  v9 = swift_allocObject();
  v10 = v0[1];
  v9[1] = *v0;
  v9[2] = v10;
  v9[3] = v0[2];
  *(v2 + 176) = 0xD000000000000015;
  *(v2 + 184) = 0x80000001B4D619A0;
  *(v2 + 192) = sub_1B4B1CFE8;
  *(v2 + 200) = v9;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  sub_1B4B1CFF0(v13, v12);
  sub_1B4B1CFF0(v13, v12);
  sub_1B4B1CFF0(v13, v12);
  sub_1B4B1CFF0(v13, v12);
  return v2;
}

uint64_t sub_1B4B1CE08(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  v5 = *(a2 + 16);
  if (v4 & 1) != 0 || (*(a2 + 8))
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    else
    {
      v7 = *a2;
      v8 = v3;
      v9 = v4;
      return sub_1B4D1543C(&v7, *(a2 + 40), v5);
    }
  }

  else
  {
    v7 = *a2;
    return sub_1B4D18D5C();
  }
}

uint64_t sub_1B4B1CE9C()
{
  if (*(v0 + 26) > 1u)
  {
    if (*(v0 + 26) == 2)
    {
      return 0x20676E696C6C6F72;
    }

    else
    {
      return 0;
    }
  }

  else if (*(v0 + 26))
  {
    return 0x746E6572727563;
  }

  else
  {
    return 0x65676172657661;
  }
}

uint64_t sub_1B4B1CF18(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v4 = *(a2 + 16);
  v6 = *a2;
  v7 = *(a2 + 8);
  return sub_1B4D1543C(&v6, *(a2 + 40), v4);
}

uint64_t sub_1B4B1CF84(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v4 = *(a2 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  return sub_1B4D1543C(&v6, *(a2 + 40), v4);
}

void WorkoutAlertFact.selectTemplate(formatter:)(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 33);
  v2 = *(v1 + 5);
  WorkoutAlertFact.selectTemplate(formatter:isValueRange:)(*(v1 + 32) == 1, a1);
}

void WorkoutAlertFact.selectTemplate(formatter:isValueRange:)(char a1@<W1>, char *a2@<X8>)
{
  if (*(v2 + 9) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    if (*v2 <= 1)
    {
      if (v3 | *(v2 + 8))
      {
        if (a1)
        {
          v11 = 10;
        }

        else
        {
          v11 = 5;
        }
      }

      else
      {
        v12 = v2[5];
        v14 = a2;
        v15 = [v12 effectiveTypeIdentifier];
        a2 = v14;
        if (a1)
        {
          v11 = 8;
        }

        else
        {
          v11 = 4;
        }

        if (a1)
        {
          v16 = 7;
        }

        else
        {
          v16 = 3;
        }

        if (v15 == 13)
        {
          v11 = v16;
        }
      }
    }

    else
    {
      v5 = *(v2 + 8);
      v6 = v3 ^ 2 | v5;
      if (a1)
      {
        v7 = 11;
      }

      else
      {
        v7 = 6;
      }

      v8 = v3 ^ 3 | v5;
      if (a1)
      {
        v9 = 12;
      }

      else
      {
        v9 = 0;
      }

      if (a1)
      {
        v10 = 12;
      }

      else
      {
        v10 = 2;
      }

      if (v8)
      {
        v11 = v10;
      }

      else
      {
        v11 = v9;
      }

      if (!v6)
      {
        v11 = v7;
      }
    }
  }

  else if (a1)
  {
    v11 = 9;
  }

  else
  {
    v11 = 1;
  }

  *a2 = v11;
}

void sub_1B4B1D1BC(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 33);
  v2 = *(v1 + 5);
  WorkoutAlertFact.selectTemplate(formatter:isValueRange:)(*(v1 + 32) == 1, a1);
}

unint64_t sub_1B4B1D218()
{
  result = qword_1EB8AA640;
  if (!qword_1EB8AA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA640);
  }

  return result;
}

unint64_t sub_1B4B1D270()
{
  result = qword_1EB8AA648;
  if (!qword_1EB8AA648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA650, &qword_1B4D2F838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA648);
  }

  return result;
}

unint64_t sub_1B4B1D2D8()
{
  result = qword_1EB8AA658;
  if (!qword_1EB8AA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA658);
  }

  return result;
}

unint64_t sub_1B4B1D330()
{
  result = qword_1EB8AA660;
  if (!qword_1EB8AA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA660);
  }

  return result;
}

unint64_t sub_1B4B1D384(uint64_t a1)
{
  result = sub_1B4B1D3AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B1D3AC()
{
  result = qword_1EB8AA668;
  if (!qword_1EB8AA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA668);
  }

  return result;
}

void FitnessPlusPropertiesQuery.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD8, &unk_1B4D2F8E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = &v63 - v5;
  v69 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  *&v68 = *(v69 - 1);
  v6 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v8 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DateRangeDescriptor();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v66 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v63 - v22;
  v23 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v24 = *(v23 + 28);
  v73 = a1;
  sub_1B4974FBC(a1 + v24, v12, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v25 = *(v14 + 48);
  if (v25(v12, 1, v13) == 1)
  {
    *v17 = 0;
    v17[8] = -1;
    v26 = &v17[*(v13 + 20)];
    sub_1B4D17BBC();
    if (v25(v12, 1, v13) != 1)
    {
      sub_1B4975024(v12, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    }
  }

  else
  {
    sub_1B4B20684(v12, v17, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  }

  v27 = v70;
  v28 = v67;
  DateRangeDescriptor.init(_:)(v17);
  v29 = v69;
  v30 = v68;
  if (!v28)
  {
    v31 = v65;
    sub_1B4974FBC(v73 + *(v23 + 32), v65, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    v32 = *(v30 + 48);
    if (v32(v31, 1, v29) == 1)
    {
      v33 = MEMORY[0x1E69E7CC0];
      *v8 = MEMORY[0x1E69E7CC0];
      v8[1] = v33;
      v8[2] = v33;
      v8[3] = v33;
      v8[4] = v33;
      v34 = v8 + *(v29 + 9);
      sub_1B4D17BBC();
      if (v32(v31, 1, v29) != 1)
      {
        sub_1B4975024(v31, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
      }
    }

    else
    {
      sub_1B4B20684(v31, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    }

    FitnessPlusPropertyDimensionsFilters.init(_:)(v8, v71);
    v35 = 0;
    v67 = v71[1];
    v68 = v71[0];
    v65 = v72;
    v36 = *v73;
    v37 = *(*v73 + 16);
    v38 = v36 + 40;
    v69 = MEMORY[0x1E69E7CC0];
    v63 = v36 + 40;
LABEL_11:
    v39 = (v38 + 16 * v35);
    while (v37 != v35)
    {
      if (v35 >= *(v36 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      ++v35;
      v40 = v39 + 2;
      v42 = *(v39 - 1);
      v41 = *v39;

      v43 = sub_1B4D18B1C();

      v39 = v40;
      if (v43 < 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_1B4A1D1E4(0, *(v69 + 2) + 1, 1, v69);
        }

        v45 = *(v69 + 2);
        v44 = *(v69 + 3);
        if (v45 >= v44 >> 1)
        {
          v69 = sub_1B4A1D1E4((v44 > 1), v45 + 1, 1, v69);
        }

        v46 = v69;
        *(v69 + 2) = v45 + 1;
        v46[v45 + 32] = v43;
        v27 = v70;
        v38 = v63;
        goto LABEL_11;
      }
    }

    v47 = v73[1];
    sub_1B4B1FF0C(v27, v66, type metadata accessor for DateRangeDescriptor);
    v48 = 0;
    v49 = *(v47 + 16);
    v50 = v47 + 40;
    v51 = MEMORY[0x1E69E7CC0];
    v63 = v47 + 40;
LABEL_21:
    v52 = (v50 + 16 * v48);
    while (v49 != v48)
    {
      if (v48 >= *(v47 + 16))
      {
        goto LABEL_33;
      }

      ++v48;
      v53 = v52 + 2;
      v55 = *(v52 - 1);
      v54 = *v52;

      v56 = sub_1B4D18B1C();

      v52 = v53;
      if (v56 <= 5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1B4A1D1D0(0, *(v51 + 2) + 1, 1, v51);
        }

        v58 = *(v51 + 2);
        v57 = *(v51 + 3);
        if (v58 >= v57 >> 1)
        {
          v51 = sub_1B4A1D1D0((v57 > 1), v58 + 1, 1, v51);
        }

        *(v51 + 2) = v58 + 1;
        v51[v58 + 32] = v56;
        v50 = v63;
        goto LABEL_21;
      }
    }

    v59 = v64;
    sub_1B4B20684(v66, v64, type metadata accessor for DateRangeDescriptor);
    sub_1B4B1FF74(v70, type metadata accessor for DateRangeDescriptor);
    v60 = type metadata accessor for FitnessPlusPropertiesQuery();
    v61 = v59 + v60[5];
    v62 = v67;
    *v61 = v68;
    *(v61 + 16) = v62;
    *(v61 + 32) = v65;
    *(v59 + v60[6]) = v69;
    *(v59 + v60[7]) = v51;
  }

  sub_1B4B1FF74(v73, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
}

uint64_t FitnessPlusPropertiesQuery.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  sub_1B4B206EC(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  return sub_1B4D17DAC();
}

void static FitnessPlusPropertyDimensionsFilters.empty()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
}

void __swiftcall FitnessPlusPropertyDimensionsFilters.init(monthOfYear:dayOfWeek:hourOfDay:modalityKind:trainerIdentifiers:)(FitnessIntelligence::FitnessPlusPropertyDimensionsFilters *__return_ptr retstr, Swift::OpaquePointer monthOfYear, Swift::OpaquePointer dayOfWeek, Swift::OpaquePointer hourOfDay, Swift::OpaquePointer modalityKind, Swift::OpaquePointer trainerIdentifiers)
{
  retstr->monthOfYear = monthOfYear;
  retstr->dayOfWeek = dayOfWeek;
  retstr->hourOfDay = hourOfDay;
  retstr->modalityKind = modalityKind;
  retstr->trainerIdentifiers = trainerIdentifiers;
}

uint64_t FitnessPlusPropertyDimensionsFilters.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  sub_1B49C28E8(a1, *v2);
  sub_1B49C27B8(a1, v4);
  MEMORY[0x1B8C7D290](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = (v6 + 32);
    do
    {
      v10 = *v9++;
      MEMORY[0x1B8C7D2C0](v10);
      --v8;
    }

    while (v8);
  }

  sub_1B49C551C(a1, v5);

  return sub_1B49C5454(a1, v7);
}

uint64_t FitnessPlusPropertyDimensionsFilters.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v4);
  return sub_1B4D18EDC();
}

void sub_1B4B1DCBC(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
}

uint64_t sub_1B4B1DCD4()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v4);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1DD2C()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1B4D18E8C();
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v4);
  return sub_1B4D18EDC();
}

void FitnessPlusPropertyDimensionsFilters.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v77 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v76 = *(v3 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = 0;
  v81 = a1;
  v9 = *a1;
  v10 = *(*a1 + 16);
  v11 = *a1 + 40;
  v79 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = (v11 + 16 * v8);
  while (v10 != v8)
  {
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    ++v8;
    v13 = v12 + 2;
    v14 = *(v12 - 1);
    v15 = *v12;

    v16 = sub_1B4D18B1C();

    v12 = v13;
    if (v16 < 0xC)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_1B4A1CEE8(0, *(v79 + 2) + 1, 1, v79);
      }

      v18 = *(v79 + 2);
      v17 = *(v79 + 3);
      if (v18 >= v17 >> 1)
      {
        v79 = sub_1B4A1CEE8((v17 > 1), v18 + 1, 1, v79);
      }

      v19 = v79;
      *(v79 + 2) = v18 + 1;
      v19[v18 + 32] = v16;
      goto LABEL_2;
    }
  }

  v20 = 0;
  v21 = v81[1];
  v22 = *(v21 + 16);
  v78 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v23 = (v21 + 40 + 16 * v20);
  while (v22 != v20)
  {
    if (v20 >= *(v21 + 16))
    {
      goto LABEL_61;
    }

    ++v20;
    v24 = v23 + 2;
    v25 = *(v23 - 1);
    v26 = *v23;

    v27 = sub_1B4D18B1C();

    v23 = v24;
    if (v27 < 7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1B4A1CED4(0, *(v78 + 2) + 1, 1, v78);
      }

      v29 = *(v78 + 2);
      v28 = *(v78 + 3);
      if (v29 >= v28 >> 1)
      {
        v78 = sub_1B4A1CED4((v28 > 1), v29 + 1, 1, v78);
      }

      v30 = v78;
      *(v78 + 2) = v29 + 1;
      v30[v29 + 32] = v27;
      goto LABEL_12;
    }
  }

  v31 = v81[2];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = MEMORY[0x1E69E7CC0];
    v34 = (v31 + 32);
    v35 = &unk_1EDC3C000;
    v36 = qword_1EDC3CED0;
    *&v5 = 134217984;
    v80 = v5;
    do
    {
      while (1)
      {
        v38 = *v34;
        v34 += 8;
        v37 = v38;
        if (v38 < 0x18)
        {
          break;
        }

        if (v35[473] != -1)
        {
          swift_once();
        }

        v39 = sub_1B4D17F6C();
        __swift_project_value_buffer(v39, v36);
        v40 = sub_1B4D17F5C();
        v41 = sub_1B4D1871C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v82 = v34;
          v43 = v33;
          v44 = v7;
          v45 = v36;
          v46 = v35;
          v47 = v42;
          *v42 = v80;
          *(v42 + 4) = v37;
          _os_log_impl(&dword_1B4953000, v40, v41, "Invalid hourOfDay: %lld", v42, 0xCu);
          v48 = v47;
          v35 = v46;
          v36 = v45;
          v7 = v44;
          v33 = v43;
          v34 = v82;
          MEMORY[0x1B8C7DDA0](v48, -1, -1);
        }

        if (!--v32)
        {
          goto LABEL_36;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1B4A1CF84(0, *(v33 + 2) + 1, 1, v33);
      }

      v50 = *(v33 + 2);
      v49 = *(v33 + 3);
      if (v50 >= v49 >> 1)
      {
        v33 = sub_1B4A1CF84((v49 > 1), v50 + 1, 1, v33);
      }

      *(v33 + 2) = v50 + 1;
      *&v33[8 * v50 + 32] = v37;
      --v32;
    }

    while (v32);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

LABEL_36:
  v51 = v81[3];
  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = 0;
    v54 = v51 + 40;
    v75 = v52 - 1;
    v82 = MEMORY[0x1E69E7CC0];
    *&v80 = v51 + 40;
LABEL_38:
    v55 = (v54 + 16 * v53);
    v56 = v53;
    while (v56 < *(v51 + 16))
    {
      v53 = v56 + 1;
      v57 = *(v55 - 1);
      v58 = *v55;

      v59._countAndFlagsBits = v57;
      v59._object = v58;
      FitnessPlusModalityKind.init(rawValue:)(v59);
      v60 = v83;
      if (v83 != 15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1B4A1D1BC(0, *(v82 + 2) + 1, 1, v82);
        }

        v62 = *(v82 + 2);
        v61 = *(v82 + 3);
        if (v62 >= v61 >> 1)
        {
          v82 = sub_1B4A1D1BC((v61 > 1), v62 + 1, 1, v82);
        }

        v63 = v82;
        *(v82 + 2) = v62 + 1;
        v63[v62 + 32] = v60;
        v54 = v80;
        if (v75 != v56)
        {
          goto LABEL_38;
        }

        goto LABEL_50;
      }

      v55 += 2;
      ++v56;
      if (v52 == v53)
      {
        goto LABEL_50;
      }
    }

LABEL_62:
    __break(1u);
    return;
  }

  v82 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v64 = v81[4];
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = v64 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v67 = *(v76 + 72);
    v68 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B4B1FF0C(v66, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
      v69 = *v7;

      sub_1B4B1FF74(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_1B4A1D0B0(0, *(v68 + 2) + 1, 1, v68);
      }

      v71 = *(v68 + 2);
      v70 = *(v68 + 3);
      if (v71 >= v70 >> 1)
      {
        v68 = sub_1B4A1D0B0((v70 > 1), v71 + 1, 1, v68);
      }

      *(v68 + 2) = v71 + 1;
      *&v68[8 * v71 + 32] = v69;
      v66 += v67;
      --v65;
    }

    while (v65);
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  sub_1B4B1FF74(v81, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  v72 = v77;
  v73 = v78;
  *v77 = v79;
  v72[1] = v73;
  v74 = v82;
  v72[2] = v33;
  v72[3] = v74;
  v72[4] = v68;
}

uint64_t FitnessPlusPropertyDimensionsFilters.protobuf()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  sub_1B4B206EC(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B1E4C8(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = *(*a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v80 = a1;
  v81 = a2;
  if (v8)
  {
    v85 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v8, 0);
    v10 = (v7 + 32);
    v9 = v85;
    v11 = 0x797261756E616ALL;
    do
    {
      v13 = *v10++;
      v12 = v13;
      if (v13 > 5)
      {
        if (v12 == 10)
        {
          v20 = 0x7265626D65766F6ELL;
        }

        else
        {
          v20 = 0x7265626D65636564;
        }

        v21 = 0xE800000000000000;
        if (v12 == 9)
        {
          v20 = 0x7265626F74636FLL;
          v21 = 0xE700000000000000;
        }

        v22 = 0xE900000000000072;
        v23 = 0x747375677561;
        if (v12 == 7)
        {
          v22 = 0xE600000000000000;
        }

        else
        {
          v23 = 0x65626D6574706573;
        }

        if (v12 == 6)
        {
          v23 = 2037151082;
          v22 = 0xE400000000000000;
        }

        if (v12 <= 8)
        {
          v18 = v23;
        }

        else
        {
          v18 = v20;
        }

        if (v12 <= 8)
        {
          v19 = v22;
        }

        else
        {
          v19 = v21;
        }
      }

      else
      {
        if (v12 == 4)
        {
          v14 = 7954797;
        }

        else
        {
          v14 = 1701737834;
        }

        if (v12 == 4)
        {
          v15 = 0xE300000000000000;
        }

        else
        {
          v15 = 0xE400000000000000;
        }

        if (v12 == 3)
        {
          v14 = 0x6C69727061;
          v15 = 0xE500000000000000;
        }

        if (v12 == 1)
        {
          v16 = 0x7972617572626566;
        }

        else
        {
          v16 = 0x686372616DLL;
        }

        if (v12 == 1)
        {
          v17 = 0xE800000000000000;
        }

        else
        {
          v17 = 0xE500000000000000;
        }

        if (!v12)
        {
          v16 = v11;
          v17 = 0xE700000000000000;
        }

        if (v12 <= 2)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }

        if (v12 <= 2)
        {
          v19 = v17;
        }

        else
        {
          v19 = v15;
        }
      }

      v85 = v9;
      v25 = *(v9 + 16);
      v24 = *(v9 + 24);
      if (v25 >= v24 >> 1)
      {
        v27 = v11;
        sub_1B4BCF43C((v24 > 1), v25 + 1, 1);
        v11 = v27;
        v9 = v85;
      }

      *(v9 + 16) = v25 + 1;
      v26 = v9 + 16 * v25;
      *(v26 + 32) = v18;
      *(v26 + 40) = v19;
      --v8;
    }

    while (v8);
    a1 = v80;
    a2 = v81;
  }

  v28 = *a1;

  *a1 = v9;
  v29 = a2[1];
  v30 = *(v29 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v85 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v30, 0);
    v32 = (v29 + 32);
    v31 = v85;
    do
    {
      v34 = *v32++;
      v33 = v34;
      v35 = 0x7961646E7573;
      if (v34 == 5)
      {
        v35 = 0x7961647275746173;
        v36 = 0xE800000000000000;
      }

      else
      {
        v36 = 0xE600000000000000;
      }

      if (v33 == 3)
      {
        v37 = 0x7961647372756874;
      }

      else
      {
        v37 = 0x796164697266;
      }

      if (v33 == 3)
      {
        v38 = 0xE800000000000000;
      }

      else
      {
        v38 = 0xE600000000000000;
      }

      if (v33 <= 4)
      {
        v35 = v37;
        v36 = v38;
      }

      v39 = 0xE900000000000079;
      if (v33 == 1)
      {
        v40 = 0x79616473657574;
      }

      else
      {
        v40 = 0x616473656E646577;
      }

      if (v33 == 1)
      {
        v39 = 0xE700000000000000;
      }

      if (!v33)
      {
        v40 = 0x7961646E6F6DLL;
        v39 = 0xE600000000000000;
      }

      if (v33 <= 2)
      {
        v41 = v40;
      }

      else
      {
        v41 = v35;
      }

      if (v33 <= 2)
      {
        v42 = v39;
      }

      else
      {
        v42 = v36;
      }

      v85 = v31;
      v44 = *(v31 + 16);
      v43 = *(v31 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1B4BCF43C((v43 > 1), v44 + 1, 1);
        v31 = v85;
      }

      *(v31 + 16) = v44 + 1;
      v45 = v31 + 16 * v44;
      *(v45 + 32) = v41;
      *(v45 + 40) = v42;
      --v30;
    }

    while (v30);
    a1 = v80;
    a2 = v81;
  }

  v46 = a1[1];

  a1[1] = v31;
  v47 = a2[2];
  v48 = *(v47 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v85 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF5FC(0, v48, 0);
    v49 = v85;
    v50 = (v47 + 32);
    v51 = *(v85 + 16);
    do
    {
      v53 = *v50++;
      v52 = v53;
      v85 = v49;
      v54 = *(v49 + 24);
      if (v51 >= v54 >> 1)
      {
        sub_1B4BCF5FC((v54 > 1), v51 + 1, 1);
        v49 = v85;
      }

      *(v49 + 16) = v51 + 1;
      *(v49 + 8 * v51++ + 32) = v52;
      --v48;
    }

    while (v48);
  }

  v55 = a1[2];

  a1[2] = v49;
  v56 = a2[3];
  v57 = *(v56 + 16);
  v58 = MEMORY[0x1E69E7CC0];
  if (v57)
  {
    v85 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF43C(0, v57, 0);
    v59 = (v56 + 32);
    v58 = v85;
    do
    {
      v60 = *v59++;
      v61 = 0xE800000000000000;
      v62 = 0x6E776F646C6F6F63;
      switch(v60)
      {
        case 1:
          v61 = 0xE400000000000000;
          v62 = 1701998435;
          break;
        case 2:
          v61 = 0xE700000000000000;
          v62 = 0x676E696C637963;
          break;
        case 3:
          v61 = 0xE500000000000000;
          v62 = 0x65636E6164;
          break;
        case 4:
          v61 = 0xE90000000000006ELL;
          v62 = 0x7552646564697567;
          break;
        case 5:
          v61 = 0xEA00000000006B6CLL;
          v62 = 0x6157646564697567;
          break;
        case 6:
          v61 = 0xE400000000000000;
          v62 = 1953065320;
          break;
        case 7:
          v62 = 0x69786F626B63696BLL;
          v61 = 0xEA0000000000676ELL;
          break;
        case 8:
          v61 = 0xEA00000000006E6FLL;
          v62 = 0x697461746964656DLL;
          break;
        case 9:
          v61 = 0xE700000000000000;
          v62 = 0x736574616C6970;
          break;
        case 10:
          v61 = 0xE600000000000000;
          v62 = 0x676E69776F72;
          break;
        case 11:
          v62 = 0x6874676E65727473;
          break;
        case 12:
          v62 = 0x6C696D6461657274;
          v61 = 0xE90000000000006CLL;
          break;
        case 13:
          v61 = 0xE400000000000000;
          v62 = 1634168697;
          break;
        case 14:
          v61 = 0xE500000000000000;
          v62 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v85 = v58;
      v64 = *(v58 + 16);
      v63 = *(v58 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1B4BCF43C((v63 > 1), v64 + 1, 1);
        v58 = v85;
      }

      *(v58 + 16) = v64 + 1;
      v65 = v58 + 16 * v64;
      *(v65 + 32) = v62;
      *(v65 + 40) = v61;
      --v57;
    }

    while (v57);
    a2 = v81;
  }

  v66 = a1[3];

  a1[3] = v58;
  v67 = a2[4];
  v68 = *(v67 + 16);
  v69 = MEMORY[0x1E69E7CC0];
  if (v68)
  {
    v85 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF5DC(0, v68, 0);
    v69 = v85;
    v70 = (v67 + 32);
    v71 = sub_1B4B206EC(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    v72 = v79;
    do
    {
      v73 = *v70;
      MEMORY[0x1EEE9AC00](v71);
      *(&v79 - 2) = v73;

      v74 = v84;
      sub_1B4D17DAC();
      v84 = v74;

      v85 = v69;
      v76 = *(v69 + 16);
      v75 = *(v69 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1B4BCF5DC(v75 > 1, v76 + 1, 1);
        v69 = v85;
      }

      *(v69 + 16) = v76 + 1;
      v71 = sub_1B4B20684(v72, v69 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v76, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
      ++v70;
      --v68;
    }

    while (v68);
  }

  v77 = a1[4];

  a1[4] = v69;
  return result;
}

uint64_t sub_1B4B1EEA8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  sub_1B4B206EC(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  return sub_1B4D17DAC();
}

uint64_t FitnessPlusPropertiesQuery.filters.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FitnessPlusPropertiesQuery() + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

uint64_t FitnessPlusPropertiesQuery.groupBy.getter()
{
  v1 = *(v0 + *(type metadata accessor for FitnessPlusPropertiesQuery() + 24));
}

uint64_t FitnessPlusPropertiesQuery.propertyKinds.getter()
{
  v1 = *(v0 + *(type metadata accessor for FitnessPlusPropertiesQuery() + 28));
}

__n128 FitnessPlusPropertiesQuery.init(range:filters:groupBy:propertyKinds:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = *a2;
  v21 = *(a2 + 16);
  v9 = *(a2 + 32);
  sub_1B4B1FF0C(a1, a5, type metadata accessor for DateRangeDescriptor);
  v10.i64[0] = 0;
  v11 = v19.i64[0];
  v12 = vdupq_lane_s64(vceqq_s64(v19, v10).i64[0], 0);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
  v20 = vbslq_s8(v12, v14, v19);
  v22 = vbslq_s8(v12, v14, v21);
  sub_1B4B1FF74(a1, type metadata accessor for DateRangeDescriptor);
  if (v11)
  {
    v15 = v9;
  }

  else
  {
    v15 = v13;
  }

  v16 = type metadata accessor for FitnessPlusPropertiesQuery();
  v17 = (a5 + v16[5]);
  result = v20;
  *v17 = v20;
  v17[1] = v22;
  v17[2].i64[0] = v15;
  *(a5 + v16[6]) = a3;
  *(a5 + v16[7]) = a4;
  return result;
}

uint64_t FitnessPlusPropertiesQuery.hash(into:)(uint64_t a1)
{
  DateRangeDescriptor.hash(into:)();
  v3 = type metadata accessor for FitnessPlusPropertiesQuery();
  v4 = (v1 + v3[5]);
  v7 = *v4;
  v8 = v4[1];
  v9 = *(v4 + 4);
  FitnessPlusPropertyDimensionsFilters.hash(into:)(a1);
  sub_1B49C585C(a1, *(v1 + v3[6]));
  v5 = *(v1 + v3[7]);

  return sub_1B49C571C(a1, v5);
}

uint64_t FitnessPlusPropertiesQuery.hashValue.getter()
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  v1 = type metadata accessor for FitnessPlusPropertiesQuery();
  v2 = (v0 + v1[5]);
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v7);
  sub_1B49C585C(v7, *(v0 + v1[6]));
  sub_1B49C571C(v7, *(v0 + v1[7]));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1F30C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
}

uint64_t sub_1B4B1F384(int *a1)
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  v3 = (v1 + a1[5]);
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v8);
  sub_1B49C585C(v8, *(v1 + a1[6]));
  sub_1B49C571C(v8, *(v1 + a1[7]));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1F418(uint64_t a1, int *a2)
{
  DateRangeDescriptor.hash(into:)();
  v5 = (v2 + a2[5]);
  v8 = *v5;
  v9 = v5[1];
  v10 = *(v5 + 4);
  FitnessPlusPropertyDimensionsFilters.hash(into:)(a1);
  sub_1B49C585C(a1, *(v2 + a2[6]));
  v6 = *(v2 + a2[7]);

  return sub_1B49C571C(a1, v6);
}

uint64_t sub_1B4B1F4A4(uint64_t a1, int *a2)
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)();
  v4 = (v2 + a2[5]);
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 4);
  FitnessPlusPropertyDimensionsFilters.hash(into:)(v9);
  sub_1B49C585C(v9, *(v2 + a2[6]));
  sub_1B49C571C(v9, *(v2 + a2[7]));
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B1F534(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4B206EC(&qword_1EDC39A88, type metadata accessor for FitnessPlusPropertiesQuery);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B206EC(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    v1 = sub_1B4D17D6C();
    sub_1B4B1FF74(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  }

  return v1;
}

uint64_t sub_1B4B1F6B8(char *a1, unint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a2;
  sub_1B4B206EC(&qword_1EDC3C268, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v14 = a1;
  sub_1B4D17DAC();
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v16 = *(v15 + 28);
  sub_1B4975024(&v14[v16], &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4B20684(v13, &v14[v16], type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  (*(v10 + 56))(&v14[v16], 0, 1, v9);
  v17 = type metadata accessor for FitnessPlusPropertiesQuery();
  v18 = a2 + v17[5];
  v65 = *(v18 + 32);
  v19 = *(v18 + 16);
  v64[0] = *v18;
  v64[1] = v19;
  v62 = v64;
  sub_1B4B206EC(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    v61 = 0;
    v21 = *(v15 + 32);
    sub_1B4975024(&v14[v21], &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    sub_1B4B20684(v8, &v14[v21], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    (*(v60 + 56))(&v14[v21], 0, 1, v5);
    v22 = *(a2 + v17[6]);
    v23 = *(v22 + 16);
    v24 = MEMORY[0x1E69E7CC0];
    v59 = v14;
    if (v23)
    {
      v58 = v17;
      v60 = a2;
      v66 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF43C(0, v23, 0);
      v24 = v66;
      v25 = (v22 + 32);
      do
      {
        v27 = *v25++;
        v26 = v27;
        v28 = 0xE900000000000079;
        v29 = v27 == 3;
        if (v27 == 3)
        {
          v30 = 0x7974696C61646F6DLL;
        }

        else
        {
          v30 = 0xD000000000000012;
        }

        if (v29)
        {
          v31 = 0xEC000000646E694BLL;
        }

        else
        {
          v31 = 0x80000001B4D48DB0;
        }

        if (v26 == 2)
        {
          v30 = 0x6144664F72756F68;
        }

        else
        {
          v28 = v31;
        }

        if (v26)
        {
          v32 = 0x656557664F796164;
        }

        else
        {
          v32 = 0x59664F68746E6F6DLL;
        }

        if (v26)
        {
          v33 = 0xE90000000000006BLL;
        }

        else
        {
          v33 = 0xEB00000000726165;
        }

        if (v26 <= 1)
        {
          v34 = v32;
        }

        else
        {
          v34 = v30;
        }

        if (v26 <= 1)
        {
          v35 = v33;
        }

        else
        {
          v35 = v28;
        }

        v66 = v24;
        v37 = *(v24 + 16);
        v36 = *(v24 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1B4BCF43C((v36 > 1), v37 + 1, 1);
          v24 = v66;
        }

        *(v24 + 16) = v37 + 1;
        v38 = v24 + 16 * v37;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        --v23;
      }

      while (v23);
      v14 = v59;
      a2 = v60;
      v17 = v58;
    }

    v39 = *v14;

    *v14 = v24;
    v40 = *(a2 + v17[7]);
    v41 = *(v40 + 16);
    v42 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v66 = MEMORY[0x1E69E7CC0];
      sub_1B4BCF43C(0, v41, 0);
      v43 = (v40 + 32);
      v42 = v66;
      v44 = 0x80000001B4D48BA0;
      do
      {
        v46 = *v43++;
        v45 = v46;
        v47 = v46 == 4;
        if (v46 == 4)
        {
          v48 = 0x547942746E756F63;
        }

        else
        {
          v48 = 0x756F436C61746F74;
        }

        if (v47)
        {
          v49 = 0xEE0072656E696172;
        }

        else
        {
          v49 = 0xEA0000000000746ELL;
        }

        if (v45 == 3)
        {
          v48 = 0x6B726F5774736562;
          v49 = 0xEB0000000074756FLL;
        }

        v50 = 0xD00000000000001ALL;
        if (v45 == 1)
        {
          v51 = 0x80000001B4D48B80;
        }

        else
        {
          v51 = v44;
        }

        if (v45)
        {
          v50 = 0xD000000000000012;
        }

        else
        {
          v51 = 0x80000001B4D48B40;
        }

        if (v45 <= 2)
        {
          v52 = v50;
        }

        else
        {
          v52 = v48;
        }

        if (v45 <= 2)
        {
          v53 = v51;
        }

        else
        {
          v53 = v49;
        }

        v66 = v42;
        v55 = *(v42 + 16);
        v54 = *(v42 + 24);
        if (v55 >= v54 >> 1)
        {
          v60 = v44;
          sub_1B4BCF43C((v54 > 1), v55 + 1, 1);
          v44 = v60;
          v42 = v66;
        }

        *(v42 + 16) = v55 + 1;
        v56 = v42 + 16 * v55;
        *(v56 + 32) = v52;
        *(v56 + 40) = v53;
        --v41;
      }

      while (v41);
      v14 = v59;
    }

    v57 = *(v14 + 1);

    *(v14 + 1) = v42;
  }

  return result;
}

uint64_t sub_1B4B1FD40()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  sub_1B4B206EC(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  return sub_1B4D17DAC();
}

uint64_t type metadata accessor for FitnessPlusPropertiesQuery()
{
  result = qword_1EDC39A78;
  if (!qword_1EDC39A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s19FitnessIntelligence0A29PlusPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if ((sub_1B4A0A1C0(*a1, *a2) & 1) == 0 || (sub_1B4A0A568(v2, v6) & 1) == 0 || (sub_1B4A0A164(v4, v8) & 1) == 0 || (sub_1B4A0C9A8(v3, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1B4A0CDB8(v5, v9);
}

uint64_t sub_1B4B1FF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B1FF74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s19FitnessIntelligence0A19PlusPropertiesQueryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FitnessPlusPropertiesQuery();
  v5 = (a1 + *(v4 + 20));
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];
  v9 = v5[4];
  v22[0] = *v5;
  v22[1] = v6;
  v22[2] = v7;
  v22[3] = v8;
  v22[4] = v9;
  v19 = v4;
  v20 = a2;
  v10 = (a2 + *(v4 + 20));
  v11 = v10[1];
  v13 = v10[2];
  v12 = v10[3];
  v14 = v10[4];
  v21[0] = *v10;
  v21[1] = v11;
  v21[2] = v13;
  v21[3] = v12;
  v21[4] = v14;

  LOBYTE(v14) = _s19FitnessIntelligence0A29PlusPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(v22, v21);

  if ((v14 & 1) == 0 || (sub_1B4A0CEAC(*(a1 + *(v19 + 24)), *(v20 + *(v19 + 24))) & 1) == 0)
  {
    return 0;
  }

  v15 = *(v19 + 28);
  v16 = *(a1 + v15);
  v17 = *(v20 + v15);

  return sub_1B4A0D0D0(v16, v17);
}

unint64_t sub_1B4B201B4(uint64_t a1)
{
  result = sub_1B4B201DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4B201DC()
{
  result = qword_1EB8AA670;
  if (!qword_1EB8AA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA670);
  }

  return result;
}

unint64_t sub_1B4B20234()
{
  result = qword_1EB8AA678;
  if (!qword_1EB8AA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA678);
  }

  return result;
}

unint64_t sub_1B4B20320()
{
  result = qword_1EB8AA680;
  if (!qword_1EB8AA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA680);
  }

  return result;
}

uint64_t sub_1B4B20374(void *a1)
{
  a1[1] = sub_1B4B206EC(&qword_1EDC39AA0, type metadata accessor for FitnessPlusPropertiesQuery);
  a1[2] = sub_1B4B206EC(&qword_1EDC39A88, type metadata accessor for FitnessPlusPropertiesQuery);
  result = sub_1B4B206EC(&qword_1EDC39A98, type metadata accessor for FitnessPlusPropertiesQuery);
  a1[3] = result;
  return result;
}

uint64_t sub_1B4B204F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B4B20540(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1B4B205C0()
{
  type metadata accessor for DateRangeDescriptor();
  if (v0 <= 0x3F)
  {
    sub_1B4A1F54C(319, &qword_1EDC37910);
    if (v1 <= 0x3F)
    {
      sub_1B4A1F54C(319, &qword_1EDC37918);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B4B20684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B206EC(unint64_t *a1, void (*a2)(uint64_t))
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

FitnessIntelligence::WorkoutLocationType_optional __swiftcall WorkoutLocationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WorkoutLocationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x726F6F6474756FLL;
  v4 = 0x657461576E65706FLL;
  if (v1 != 3)
  {
    v4 = 0x676E696D6D697773;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F6F646E69;
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

FitnessIntelligence::WorkoutLocationType __swiftcall WorkoutLocationType.init(locationType:swimmingLocationType:)(HKWorkoutSessionLocationType locationType, HKWorkoutSwimmingLocationType swimmingLocationType)
{
  if (locationType != HKWorkoutSessionLocationTypeUnknown)
  {
    if (locationType == HKWorkoutSessionLocationTypeOutdoor)
    {
      if (swimmingLocationType == HKWorkoutSwimmingLocationTypeUnknown)
      {
        *v2 = 2;
        return locationType;
      }
    }

    else if (locationType == HKWorkoutSessionLocationTypeIndoor && swimmingLocationType == HKWorkoutSwimmingLocationTypeUnknown)
    {
      *v2 = 1;
      return locationType;
    }

    *v2 = 0;
    return locationType;
  }

  v3 = 4 * (swimmingLocationType == HKWorkoutSwimmingLocationTypePool);
  if (swimmingLocationType == HKWorkoutSwimmingLocationTypeOpenWater)
  {
    v3 = 3;
  }

  *v2 = v3;
  return locationType;
}

unint64_t sub_1B4B208E0()
{
  result = qword_1EB8AA690;
  if (!qword_1EB8AA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA690);
  }

  return result;
}

uint64_t sub_1B4B20934()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4B20A20()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4B20AF8()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4B20BEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x726F6F6474756FLL;
  v7 = 0xE900000000000072;
  v8 = 0x657461576E65706FLL;
  if (v2 != 3)
  {
    v8 = 0x676E696D6D697773;
    v7 = 0xEC0000006C6F6F50;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x726F6F646E69;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1B4B20C98()
{
  result = qword_1EB8AA698;
  if (!qword_1EB8AA698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA6A0, &qword_1B4D2FBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA698);
  }

  return result;
}

double static VoiceAssetSettings.readUserSelectedVoice()@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1B4D1817C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1B4D1817C();
    v6 = [v4 dataForKey_];

    if (v6)
    {
      v7 = sub_1B4D176BC();
      v9 = v8;

      sub_1B498FC0C(v7, v9);
      sub_1B4B28A48(v7, v9, &v21);

      sub_1B49DDD2C(v7, v9);
      result = *&v21;
      v19 = v22;
      v20 = v23;
      *a1 = v21;
      *(a1 + 16) = v19;
      *(a1 + 24) = v20;
      return result;
    }

    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v14 = sub_1B4D17F6C();
    __swift_project_value_buffer(v14, qword_1EDC3CED0);
    v15 = sub_1B4D17F5C();
    v16 = sub_1B4D1873C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B4953000, v15, v16, "No selected voice found in defaults", v17, 2u);
      MEMORY[0x1B8C7DDA0](v17, -1, -1);
    }
  }

  else
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B4D17F6C();
    __swift_project_value_buffer(v10, qword_1EDC3CED0);
    v11 = sub_1B4D17F5C();
    v12 = sub_1B4D1871C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B4953000, v11, v12, "Voice asset settings defaults unavailable", v13, 2u);
      MEMORY[0x1B8C7DDA0](v13, -1, -1);
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1B4B21148@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1B4D17B7C();
  v4 = sub_1B4D18B1C();

  if (v4 > 1)
  {
    sub_1B49BA334();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = sub_1B4D17B8C();
    return (*(*(v8 - 8) + 8))(a1, v8);
  }

  else
  {
    v5 = sub_1B4D17B8C();
    result = (*(*(v5 - 8) + 8))(a1, v5);
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1B4B21264@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, double *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
      InferenceResult.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B21494@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      AnnounceUtteranceResult.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B216C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v27 = a1;
    v28 = a2;
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      v19 = *v12;
      v18 = v12[1];
      v20 = (v12 + *(v9 + 28));
      v22 = *v20;
      v21 = v20[1];
      v24 = v12[2];
      v23 = v12[3];

      result = sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      *a3 = v19;
      a3[1] = v18;
      a3[2] = v22;
      a3[3] = v21;
      a3[4] = v24;
      a3[5] = v23;
    }
  }

  return result;
}

uint64_t sub_1B4B2191C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
      StreamingAudioData.init(_:)(v12, v18);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v18[0];
    }
  }

  return result;
}

uint64_t sub_1B4B21B68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
      WorkoutWeekContext.init(_:)(v12, v18);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v18[0];
    }
  }

  return result;
}

uint64_t sub_1B4B21DB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      WorkoutRecord.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B21FE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v24 = a1;
    v25 = a2;
    v23 = 0;
    memset(&v22[2], 0, 32);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
      StreamingAudioAvailable.init(_:)(v12, v21);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
      result = sub_1B4B29AE4(a1, a2);
      v18 = v22[0];
      a3[4] = v21[4];
      a3[5] = v18;
      *(a3 + 89) = *(v22 + 9);
      v19 = v21[1];
      *a3 = v21[0];
      a3[1] = v19;
      v20 = v21[3];
      a3[2] = v21[2];
      a3[3] = v20;
    }
  }

  return result;
}

uint64_t sub_1B4B22248@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      RingsPropertiesQuery.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B22478@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
      InferenceFeedback.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B226A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v23 = a2;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      WorkoutProperties.init(_:)(v12, &v19);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      result = sub_1B4B29AE4(a1, a2);
      v18 = v20;
      *a3 = v19;
      *(a3 + 16) = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B228FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
      ActivitySummaryContext.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B22B2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v21 = a1;
    v22 = a2;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
      v18 = *v12;
      if (*v12 >= 5)
      {
        sub_1B4B10B98();
        swift_allocError();
        swift_willThrow();
        sub_1B4B29AE4(a1, a2);
        sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
        return sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
      }

      else
      {
        sub_1B4B29AE4(a1, a2);
        sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
        result = sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
        *a3 = v18;
      }
    }
  }

  return result;
}

uint64_t sub_1B4B22DDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v10 = *(*(Context - 8) + 64);
  MEMORY[0x1EEE9AC00](Context);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
      TrainingLoadContext.init(_:)(v12, v18);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = v18[0];
    }
  }

  return result;
}

uint64_t sub_1B4B23028@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v25 = a1;
    v26 = a2;
    v24 = 0;
    memset(&v23[2], 0, 32);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
      InferenceRequest.init(_:)(v12, v22);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
      result = sub_1B4B29AE4(a1, a2);
      v18 = v23[0];
      a3[6] = v22[6];
      a3[7] = v18;
      *(a3 + 121) = *(v23 + 9);
      v19 = v22[3];
      a3[2] = v22[2];
      a3[3] = v19;
      v20 = v22[5];
      a3[4] = v22[4];
      a3[5] = v20;
      v21 = v22[1];
      *a3 = v22[0];
      a3[1] = v21;
    }
  }

  return result;
}

uint64_t sub_1B4B232A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      FitnessPlusPropertiesQuery.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B234D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int **a3@<X8>)
{
  v37 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B4D17BEC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - v20;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  else
  {
    v36 = v19;
    v42 = a1;
    v43 = a2;
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      v35 = a2;
      v24 = v36;
      sub_1B4B29F5C(v21, v36, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      sub_1B4974FBC(v24 + *(v16 + 28), v9, &qword_1EB8A7CB8, &unk_1B4D20170);
      v25 = *(v38 + 48);
      if (v25(v9, 1, v10) == 1)
      {
        *v13 = 0;
        v13[4] = 0;
        *(v13 + 2) = 0;
        v26 = &v13[*(v10 + 28)];
        sub_1B4D17BBC();
        if (v25(v9, 1, v10) != 1)
        {
          sub_1B4975024(v9, &qword_1EB8A7CB8, &unk_1B4D20170);
        }
      }

      else
      {
        sub_1B4B29EAC(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      }

      sub_1B4B29E60();
      v27 = FIWorkoutActivityType.init(_:)(v13);
      v28 = v36;
      v29 = *v36;
      v30 = type metadata accessor for ActivitySharingFriendWorkout();
      v31 = v37;
      v32 = v37 + *(v30 + 20);
      sub_1B4D176CC();
      v33 = v28[1];
      v34 = v31 + *(v30 + 24);
      sub_1B4D176CC();
      sub_1B4B29AE4(a1, v35);
      sub_1B4B29FC4(v28, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      result = sub_1B4B29FC4(v21, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      *v31 = v27;
    }
  }

  return result;
}

uint64_t sub_1B4B23948@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      ActivitySharingFriend.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B23B78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
      ActivitySharingContext.init(_:)(v12, v18);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v18[0];
    }
  }

  return result;
}

uint64_t sub_1B4B23DC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v23 = a2;
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8A70, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest);
      v19 = *v12;
      v18 = v12[1];

      result = sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest);
      *a3 = v19;
      a3[1] = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B23FF0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1B4D17B5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - v15;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  else
  {
    v23 = a1;
    v24 = a2;
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA728, MEMORY[0x1E69AA948]);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      (*(v10 + 16))(v13, v16, v9);
      v19 = sub_1B4D17B4C();
      sub_1B4B29AE4(a1, a2);
      v20 = *(v10 + 8);
      v20(v13, v9);
      result = (v20)(v16, v9);
      *a3 = v19;
    }
  }

  return result;
}

uint64_t sub_1B4B24270@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    memset(v19, 0, 40);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA720, type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch);
      SanityTaskMismatch.init(_:)(v12, v19);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch);
      result = sub_1B4B29AE4(a1, a2);
      v18 = v19[1];
      *a3 = v19[0];
      *(a3 + 16) = v18;
      *(a3 + 24) = *(&v19[1] + 8);
    }
  }

  return result;
}

uint64_t sub_1B4B244CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
      WeeklySummaryContext.init(_:)(v12, v18);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = v18[0];
    }
  }

  return result;
}

uint64_t sub_1B4B24718@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v23 = a2;
    v21 = 0;
    memset(&v20[2], 0, 32);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      AudioSynthesisVoiceAsset.init(_:)(v12, v19);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      result = sub_1B4B29AE4(a1, a2);
      v18 = v19[1];
      *a3 = v19[0];
      a3[1] = v18;
      a3[2] = v20[0];
      *(a3 + 42) = *(v20 + 10);
    }
  }

  return result;
}

uint64_t sub_1B4B24974@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      HKActivitySummaryRepresentable.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B24BA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v23 = a1;
    v24 = a2;
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8AA0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete);
      v19 = *v12;
      v18 = *(v12 + 1);
      v20 = *(v12 + 4);

      result = sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete);
      *a3 = v19;
      *(a3 + 8) = v18;
      *(a3 + 16) = v20;
    }
  }

  return result;
}

uint64_t sub_1B4B24DD8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v23 = a2;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      FitnessPlusProperties.init(_:)(v12, &v19);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      result = sub_1B4B29AE4(a1, a2);
      v18 = v20;
      *a3 = v19;
      *(a3 + 16) = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B2502C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v23 = a2;
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8A28, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);
      v19 = *v12;
      v18 = v12[1];

      result = sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);
      *a3 = v19;
      a3[1] = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B25258@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v10 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      FitnessContextQueryDescriptor.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B25488@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v10 = *(*(Metrics - 8) + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v23 = a1;
    v24 = a2;
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v18 = *v12;
      v19 = v12[1];
      v20 = *(v12 + 16);
      result = sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      *a3 = v18;
      *(a3 + 8) = v19;
      *(a3 + 16) = v20;
      *(a3 + 24) = v18 + v19;
    }
  }

  return result;
}

uint64_t sub_1B4B256C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
      WorkoutVoiceTranscript.init(_:)(v12, v18);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v18[0];
    }
  }

  return result;
}

uint64_t sub_1B4B25910@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      ActivityAchievementAward.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B25B40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
      AwardsContext.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B25D70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
      AudioSynthesisIntensity.init(_:)(v12, v18);
      sub_1B4B29AE4(a1, a2);
      result = sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
      *a3 = v18[0];
    }
  }

  return result;
}

uint64_t sub_1B4B25FB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v21 = a1;
    v22 = a2;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8A40, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult);
      v18 = *v12;
      result = sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult);
      *a3 = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B261D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      DeviceInferenceAvailability.ComponentAvailability.init(_:)(v12, v18);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v18[0];
    }
  }

  return result;
}

uint64_t sub_1B4B26420@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1B4D17B8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  v26 = a1;
  v27 = a2;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_1B4B29AF8(a1, a2);
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B4B29F14(&qword_1EDC37998, MEMORY[0x1E69AA9A0]);
  sub_1B4D17D7C();
  if (v3)
  {
    sub_1B4B29AE4(a1, a2);
    return sub_1B4B29AE4(a1, a2);
  }

  v28 = a3;
  (*(v10 + 16))(v13, v16, v9);
  sub_1B4D17B7C();
  v19 = sub_1B4D18B1C();

  if (v19 == 1)
  {
    v20 = v28;
  }

  else
  {
    v20 = v28;
    if (v19)
    {
      sub_1B49BA334();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
      sub_1B4B29AE4(a1, a2);
      sub_1B4B29AE4(a1, a2);
      v22 = *(v10 + 8);
      v22(v13, v9);
      return (v22)(v16, v9);
    }
  }

  sub_1B4B29AE4(a1, a2);
  sub_1B4B29AE4(a1, a2);
  v23 = *(v10 + 8);
  v23(v13, v9);
  result = (v23)(v16, v9);
  *v20 = v19;
  return result;
}

uint64_t sub_1B4B26778@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
      LocationContext.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B269A8(uint64_t a1, unint64_t a2)
{
  v6 = sub_1B4D17BEC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }

  else
  {
    v24 = v2;
    v22 = a1;
    v23 = a2;
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v14, v11, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      v17 = sub_1B4B29F14(&qword_1EB8AA6E8, type metadata accessor for LocationCoordinate);
      v18 = *(v17 + 40);
      v19 = type metadata accessor for LocationCoordinate();
      v18(v11, v19, v17);
      sub_1B4B29FC4(v14, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B26C48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v23 = a2;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
      DeviceInferenceAvailability.init(_:)(v12, &v19);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
      result = sub_1B4B29AE4(a1, a2);
      v18 = v20;
      *a3 = v19;
      a3[1] = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B26E94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v23 = a1;
    v24 = a2;
    v22 = 0;
    memset(&v21[2], 0, 32);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
      AnnounceUtteranceRequest.init(_:)(v12, v20);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
      result = sub_1B4B29AE4(a1, a2);
      v18 = v21[0];
      a3[2] = v20[2];
      a3[3] = v18;
      *(a3 + 58) = *(v21 + 10);
      v19 = v20[1];
      *a3 = v20[0];
      a3[1] = v19;
    }
  }

  return result;
}

uint64_t sub_1B4B270F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v29 = a1;
    v30 = a2;
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6A20, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
      v19 = *v12;
      v18 = *(v12 + 1);
      v31 = *(v12 + 4);
      v20 = *(v12 + 3);
      v21 = *(v12 + 4);
      v25 = *(v12 + 10);
      v22 = *(v12 + 6);
      v23 = *(v12 + 7);

      sub_1B498FC0C(v20, v21);
      sub_1B498FC0C(v22, v23);
      result = sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
      *a3 = v19;
      *(a3 + 8) = v18;
      *(a3 + 16) = v31;
      *(a3 + 24) = v20;
      *(a3 + 32) = v21;
      *(a3 + 40) = v25;
      *(a3 + 48) = v22;
      *(a3 + 56) = v23;
    }
  }

  return result;
}

uint64_t sub_1B4B2736C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v21 = a1;
    v22 = a2;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
      VitalsDay.init(_:)(v12, v19);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
      result = sub_1B4B29AE4(a1, a2);
      v18 = BYTE4(v19[0]);
      *a3 = v19[0];
      *(a3 + 4) = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B275C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4D17BEC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  else
  {
    v32 = a1;
    v33 = a2;
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
    v24 = v34;
    sub_1B4D17D7C();
    if (v24)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v21, v18, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
      sub_1B4974FBC(&v18[*(v15 + 20)], v8, &qword_1EB8AA6C8, &unk_1B4D2FC70);
      v34 = *(v29 + 48);
      if (v34(v8, 1, v9) == 1)
      {
        *v12 = 0;
        *(v12 + 1) = 0;
        *(v12 + 4) = 0;
        v25 = &v12[*(v9 + 36)];
        sub_1B4D17BBC();
        if (v34(v8, 1, v9) != 1)
        {
          sub_1B4975024(v8, &qword_1EB8AA6C8, &unk_1B4D2FC70);
        }
      }

      else
      {
        sub_1B4B29EAC(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
      }

      VitalsDay.init(_:)(v12, v30);
      sub_1B4B29AE4(a1, a2);
      sub_1B4B29FC4(v18, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
      result = sub_1B4B29FC4(v21, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
      v26 = BYTE4(v30[0]);
      v27 = v28;
      *v28 = v30[0];
      *(v27 + 4) = v26;
    }
  }

  return result;
}

uint64_t sub_1B4B279B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      WorkoutPropertiesQuery.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B27BE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v23 = a2;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
      RingsProperties.init(_:)(v12, &v19);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
      result = sub_1B4B29AE4(a1, a2);
      v18 = v20;
      *a3 = v19;
      *(a3 + 16) = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B27E34@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
      FitnessContextQueryResult.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B28064@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - v8;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v44 = *(Descriptor - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FitnessContextQueryDescriptor();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B4D17BEC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  Request = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
  v19 = *(*(Request - 8) + 64);
  MEMORY[0x1EEE9AC00](Request);
  v21 = (&v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - v23;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  else
  {
    v48 = a1;
    v49 = a2;
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    sub_1B4B29AF8(a1, a2);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6C0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
    v27 = v50;
    sub_1B4D17D7C();
    if (v27)
    {
      sub_1B4B29AE4(a1, a2);
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      v50 = a3;
      sub_1B4B29F5C(v24, v21, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
      v28 = *v21;

      v41 = sub_1B4A02DAC(v29);

      sub_1B4974FBC(v21 + *(Request + 24), v9, &qword_1EB8AA6B8, &qword_1B4D2FC68);
      v30 = v44 + 48;
      v31 = *(v44 + 48);
      if (v31(v9, 1, Descriptor) == 1)
      {
        v40 = v31;
        v44 = v30;
        v32 = v42;
        sub_1B4D17BBC();
        v33 = *(Descriptor + 20);
        if (qword_1EB8A64A8 != -1)
        {
          v38 = *(Descriptor + 20);
          swift_once();
          v33 = v38;
        }

        *(v32 + v33) = qword_1EB8AC728;
        v34 = v40(v9, 1, Descriptor);

        if (v34 != 1)
        {
          sub_1B4975024(v9, &qword_1EB8AA6B8, &qword_1B4D2FC68);
        }
      }

      else
      {
        v32 = v42;
        sub_1B4B29EAC(v9, v42, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      }

      v35 = v43;
      FitnessContextQueryDescriptor.init(_:)(v32, v43);
      v36 = v50;
      sub_1B4B29AE4(a1, a2);
      sub_1B4B29AE4(a1, a2);
      sub_1B4B29FC4(v21, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
      sub_1B4B29FC4(v24, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
      *v36 = v41;
      v37 = type metadata accessor for FitnessContextCoalescedQueryRequest();
      return sub_1B4B29EAC(v35, v36 + *(v37 + 20), type metadata accessor for FitnessContextQueryDescriptor);
    }
  }
}

uint64_t sub_1B4B285B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6A8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);
      FitnessContext.init(_:)(v12, v18);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v18[0];
    }
  }

  return result;
}

uint64_t sub_1B4B28800@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
      InferenceRecord.init(_:)(v12, a3);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B28A48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  v29 = a1;
  v30 = a2;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B4B29F14(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17D7C();
  if (!v3)
  {
    sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v18 = &v12[*(v9 + 20)];
    v19 = *(v18 + 1);
    if (v19)
    {
      v20 = &v12[*(v9 + 24)];
      v21 = *(v20 + 1);
      if (v21)
      {
        v31 = *v18;
        v25 = *v20;

        sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
        sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
        result = sub_1B4B29AE4(a1, a2);
        *a3 = v31;
        a3[1] = v19;
        a3[2] = v25;
        a3[3] = v21;
        return result;
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    sub_1B498C3D8();
    swift_allocError();
    *v23 = v22;
    swift_willThrow();
    sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  return sub_1B4B29AE4(a1, a2);
}

uint64_t sub_1B4B28D40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v23 = a1;
    v24 = a2;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      AudioSynthesisSettings.init(_:)(v12, &v20);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      result = sub_1B4B29AE4(a1, a2);
      v18 = v22;
      v19 = v21;
      *a3 = v20;
      *(a3 + 16) = v19;
      *(a3 + 32) = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B28F94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v23 = a2;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
      AudioSynthesisVoiceSelection.init(_:)(v12, &v19);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
      result = sub_1B4B29AE4(a1, a2);
      v18 = v20;
      *a3 = v19;
      a3[1] = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B291E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v23 = a2;
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      v18 = *v12;
      v19 = v12[1];
      result = sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      if (v19 < v18)
      {
        __break(1u);
      }

      else
      {
        sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
        result = sub_1B4B29AE4(a1, a2);
        *a3 = v18;
        a3[1] = v19;
      }
    }
  }

  return result;
}

uint64_t sub_1B4B2943C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v23 = a1;
    v24 = a2;
    v22 = 0;
    memset(&v21[1], 0, 32);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v15, v12, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
      v18 = *v12;
      v21[0] = *(v12 + 8);
      v19 = *(v12 + 3);
      v20 = *(v12 + 4);
      sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
      sub_1B4B29FC4(v15, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = v18;
      *(a3 + 8) = v21[0];
      *(a3 + 24) = v19;
      *(a3 + 32) = v20;
    }
  }

  return result;
}

void sub_1B4B296A8(uint64_t *a1)
{
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v31[0] = *a1;
  v31[1] = v7;
  v31[2] = v9;
  v31[3] = v10;
  v11 = sub_1B4B2A024();
  (*(v11 + 32))(&type metadata for AudioSynthesisVoice, v11);
  if (!v1)
  {
    sub_1B4B29F14(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v12 = sub_1B4D17D6C();
    v14 = v13;
    sub_1B4B29FC4(v6, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v31[5] = 0;
    v15 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v16 = sub_1B4D1817C();
    v17 = [v15 initWithSuiteName_];

    if (v17)
    {
      v18 = sub_1B4D176AC();
      v19 = sub_1B4D1817C();
      v30 = v17;
      [v17 setValue:v18 forKey:v19];

      v20 = sub_1B4D1817C();
      CFPreferencesAppSynchronize(v20);

      v21 = [objc_allocWithZone(NPSManagerBridge) init];
      v22 = sub_1B4D1817C();
      sub_1B49B554C(&unk_1F2CBB020);
      sub_1B497CBA8(&unk_1F2CBB040);
      v23 = sub_1B4D185FC();

      [v21 synchronizeUserDefaultsDomain:v22 keys:v23];

      if (qword_1EDC3CEC8 != -1)
      {
        swift_once();
      }

      v24 = sub_1B4D17F6C();
      __swift_project_value_buffer(v24, qword_1EDC3CED0);

      v25 = sub_1B4D17F5C();
      v26 = sub_1B4D1873C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v31[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1B49558AC(v8, v7, v31);
        _os_log_impl(&dword_1B4953000, v25, v26, "Wrote user selected voice to NPS: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1B8C7DDA0](v28, -1, -1);
        MEMORY[0x1B8C7DDA0](v27, -1, -1);
      }

      sub_1B49DDD2C(v12, v14);
    }

    else
    {
      sub_1B4B2A078();
      swift_allocError();
      swift_willThrow();
      sub_1B49DDD2C(v12, v14);
    }
  }
}

uint64_t sub_1B4B29AE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B49DDD2C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B4B29AF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B498FC0C(a1, a2);
  }

  return a1;
}

char *sub_1B4B29B0C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1B4D17BEC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    return v10;
  }

  v21 = a1;
  v22 = a2;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B4B29F14(qword_1EDC3BD10, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
  sub_1B4D17D7C();
  if (v2)
  {
LABEL_10:
    sub_1B4B29AE4(a1, a2);
    return v10;
  }

  sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
  if (v10[8] != 1)
  {
    sub_1B4B29E0C();
    swift_allocError();
    swift_willThrow();
    sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
    sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
    goto LABEL_10;
  }

  if (*v10)
  {
    v15 = &v10[*(v7 + 24)];
    v17 = *v15;
    v16 = *(v15 + 1);

    sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
    if (v16)
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
    v10 = 0;
  }

  sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
  sub_1B4B29AE4(a1, a2);
  return v10;
}

unint64_t sub_1B4B29E0C()
{
  result = qword_1EB8AA6F8;
  if (!qword_1EB8AA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA6F8);
  }

  return result;
}

unint64_t sub_1B4B29E60()
{
  result = qword_1EDC36DC8;
  if (!qword_1EDC36DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC36DC8);
  }

  return result;
}

uint64_t sub_1B4B29EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B29F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4B29F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B29FC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B4B2A024()
{
  result = qword_1EB8AA748;
  if (!qword_1EB8AA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA748);
  }

  return result;
}

unint64_t sub_1B4B2A078()
{
  result = qword_1EB8AA750;
  if (!qword_1EB8AA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA750);
  }

  return result;
}

unint64_t sub_1B4B2A0E0()
{
  result = qword_1EB8AA758[0];
  if (!qword_1EB8AA758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB8AA758);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQueryResult.query.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v7 + 20), v6, &qword_1EB8A6680, &unk_1B4D2FD90);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v10;
  v11 = &a1[v8[6]];
  sub_1B4D17BBC();
  v12 = v8[7];
  v13 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = v8[8];
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6680, &unk_1B4D2FD90);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQueryResult.properties.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A6678, &qword_1B4D3CE20);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(v8 + 28);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6678, &qword_1B4D3CE20);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult.query.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v7 + 20), v6, &qword_1EB8A6668, &qword_1B4D1A658);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v10;
  v11 = &a1[v8[6]];
  sub_1B4D17BBC();
  v12 = v8[7];
  v13 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = v8[8];
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6668, &qword_1B4D1A658);
  }

  return result;
}

BOOL sub_1B4B2A79C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  sub_1B4974FBC(v4 + *(v14 + 24), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_1B4975024(v13, a1, a2);
  return v16;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult.properties.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(v8 + 28);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6660, &unk_1B4D2FDB0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult.query.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v7 + 20), v6, &qword_1EB8A6658, &qword_1B4D1A650);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v10;
  v11 = &a1[v8[6]];
  sub_1B4D17BBC();
  v12 = v8[7];
  v13 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = v8[8];
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6658, &qword_1B4D1A650);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult.properties.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A6650, &unk_1B4D2FDC0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(v8 + 28);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6650, &unk_1B4D2FDC0);
  }

  return result;
}

uint64_t sub_1B4B2ADC0@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v15 - v8;
  v10 = a1(0, v7);
  sub_1B4974FBC(v2 + *(v10 + 28), v9, &qword_1EB8A6670, &unk_1B4D2FDA0);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v12 = *(*(Metrics - 8) + 48);
  if (v12(v9, 1, Metrics) != 1)
  {
    return sub_1B4B2C598(v9, a2, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v13 = a2 + *(Metrics + 28);
  sub_1B4D17BBC();
  result = (v12)(v9, 1, Metrics);
  if (result != 1)
  {
    return sub_1B4975024(v9, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQueryResult.query.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A6680, &unk_1B4D2FD90);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQueryResult.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A6678, &qword_1B4D3CE20);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult.query.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A6668, &qword_1B4D1A658);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A6660, &unk_1B4D2FDB0);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult.query.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A6658, &qword_1B4D1A650);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A6650, &unk_1B4D2FDC0);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1B4B2B3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  sub_1B4975024(v2 + v4, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4B2C598(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v6 = *(*(Metrics - 8) + 56);

  return v6(v2 + v4, 0, 1, Metrics);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQuery.filters.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE0, &qword_1B4D1FE90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4974FBC(v1 + *(v7 + 32), v6, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v10;
  a1[2] = v10;
  v11 = a1 + *(v8 + 28);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQuery.range.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQuery.filters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery.filters.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD8, &unk_1B4D2F8E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  sub_1B4974FBC(v1 + *(v7 + 32), v6, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v10;
  a1[2] = v10;
  a1[3] = v10;
  a1[4] = v10;
  v11 = a1 + *(v8 + 36);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery.range.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery.filters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_PropertyRecordCheckpoint.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0) + 28);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.steps.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.workoutQuery.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  sub_1B4974FBC(v1 + *(Plan + 20), v6, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v11 = &a1[v10[6]];
  sub_1B4D17BBC();
  v12 = v10[7];
  v13 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = v10[8];
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  return (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
}

void (*Apple_Fitness_Intelligence_QueryPlan.workoutQuery.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v10 = *(*(v9 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  *(v5 + 12) = v13;
  sub_1B4974FBC(v1 + v13, v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      return sub_1B4B2C1B0;
    }

    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  }

  v16 = MEMORY[0x1E69E7CC0];
  *v12 = MEMORY[0x1E69E7CC0];
  *(v12 + 1) = v16;
  v17 = &v12[v9[6]];
  sub_1B4D17BBC();
  v18 = v9[7];
  v19 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v19 - 8) + 56))(&v12[v18], 1, 1, v19);
  v20 = v9[8];
  v21 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  (*(*(v21 - 8) + 56))(&v12[v20], 1, 1, v21);
  return sub_1B4B2C1B0;
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.ringsQuery.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  sub_1B4974FBC(v1 + *(Plan + 20), v6, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v12 = &a1[v11[6]];
  sub_1B4D17BBC();
  v13 = v11[7];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v11[8];
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  return (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
}

uint64_t sub_1B4B2C448@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  *(a3 + 1) = v5;
  v6 = a1(0);
  v7 = &a3[v6[6]];
  sub_1B4D17BBC();
  v8 = v6[7];
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = v6[8];
  v11 = a2(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(&a3[v10], 1, 1, v11);
}

uint64_t sub_1B4B2C598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Apple_Fitness_Intelligence_QueryPlan.ringsQuery.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v10 = *(*(v9 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  *(v5 + 12) = v13;
  sub_1B4974FBC(v1 + v13, v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    *(v12 + 1) = v16;
    v17 = &v12[v9[6]];
    sub_1B4D17BBC();
    v18 = v9[7];
    v19 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v19 - 8) + 56))(&v12[v18], 1, 1, v19);
    v20 = v9[8];
    v21 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
    (*(*(v21 - 8) + 56))(&v12[v20], 1, 1, v21);
    return sub_1B4B2C8C0;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    goto LABEL_15;
  }

  sub_1B4B2C598(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  return sub_1B4B2C8C0;
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.fitnessPlusQuery.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  sub_1B4974FBC(v1 + *(Plan + 20), v6, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v12 = &a1[v11[6]];
  sub_1B4D17BBC();
  v13 = v11[7];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v11[8];
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  return (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
}

uint64_t sub_1B4B2CB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;
  sub_1B4B3281C(a1, &v18 - v13, a6);
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  sub_1B4975024(a2 + v15, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  sub_1B4B2C598(v14, a2 + v15, a7);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2 + v15, 0, 1, v16);
}

uint64_t sub_1B4B2CC4C(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  sub_1B4975024(v2 + v5, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  sub_1B4B2C598(a1, v2 + v5, a2);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

void (*Apple_Fitness_Intelligence_QueryPlan.fitnessPlusQuery.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v10 = *(*(v9 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  *(v5 + 12) = v13;
  sub_1B4974FBC(v1 + v13, v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    *(v12 + 1) = v16;
    v17 = &v12[v9[6]];
    sub_1B4D17BBC();
    v18 = v9[7];
    v19 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v19 - 8) + 56))(&v12[v18], 1, 1, v19);
    v20 = v9[8];
    v21 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
    (*(*(v21 - 8) + 56))(&v12[v20], 1, 1, v21);
    return sub_1B4B2D004;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    goto LABEL_15;
  }

  sub_1B4B2C598(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  return sub_1B4B2D004;
}

void sub_1B4B2D048(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C(v12, v11, a5);
    sub_1B4975024(v13 + v10, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    sub_1B4B2C598(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_1B4B327BC(v12, a6);
  }

  else
  {
    sub_1B4975024(v13 + v10, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    sub_1B4B2C598(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  v3 = *(Plan + 20);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(Plan + 24)];
  return sub_1B4D17BBC();
}

void Apple_Fitness_Intelligence_DateRangeDescriptor.dateRangeDescriptorType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Fitness_Intelligence_DateRangeDescriptor.dateRangeDescriptorType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.soFarToday.getter()
{
  result = *v0;
  if (*(v0 + 8))
  {
    return 0.0;
  }

  return result;
}

void *(*Apple_Fitness_Intelligence_DateRangeDescriptor.soFarToday.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D374;
}

void *sub_1B4B2D374(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.soFarThisWeek.getter()
{
  result = *v0;
  if (*(v0 + 8) != 1)
  {
    return 0.0;
  }

  return result;
}

void *(*Apple_Fitness_Intelligence_DateRangeDescriptor.soFarThisWeek.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 1)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D3E8;
}

void *sub_1B4B2D3E8(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.soFarThisMonth.getter()
{
  result = *v0;
  if (*(v0 + 8) != 2)
  {
    return 0.0;
  }

  return result;
}

void *(*Apple_Fitness_Intelligence_DateRangeDescriptor.soFarThisMonth.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 2)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D460;
}

void *sub_1B4B2D460(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 2;
  return result;
}